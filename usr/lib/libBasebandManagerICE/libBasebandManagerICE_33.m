const char *CMHandDetectionDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown Hand Detection";
  }

  else
  {
    return off_29EE6C670[a1];
  }
}

void std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CMHandDetectionHandler *,std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler *)#1},std::allocator<CMHandDetectionHandler>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<CMHandDetectionHandler> ctu::SharedSynchronizable<CMHandDetectionHandler>::make_shared_ptr<CMHandDetectionHandler>(CMHandDetectionHandler*)::{lambda(CMHandDetectionHandler*)#1}::operator() const(CMHandDetectionHandler*)::{lambda(void *)#1}::__invoke(void *__p)
{
  if (__p)
  {
    v2 = __p[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = __p[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = __p[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = __p[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(__p);
  }
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::start(void)::{lambda(void)#1}>(CMHandDetectionHandler::start(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::start(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::start(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && (*(v3 + 56) & 1) == 0)
  {
    [v4 startCallHandednessUpdates];
    *(v3 + 56) = 1;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297610B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>(CMHandDetectionHandler::stop(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::stop(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::stop(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4 && *(v3 + 56) == 1)
  {
    [v4 stopCallHandednessUpdates];
    *(v3 + 56) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297610D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = *a2;
  *(a2 + 8) = 0;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>(CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v2 = *a1;
  v14 = *a1;
  v3 = **a1;
  if (!v3[4] || !v2[1])
  {
    goto LABEL_17;
  }

  v4 = v3[1];
  if (!v4 || (v5 = *v3, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = v2[1];
  if (v8)
  {
LABEL_9:
    v8 = _Block_copy(v8);
  }

LABEL_10:
  v9 = v3[6];
  v3[6] = v8;
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = objc_alloc_init(CMHandDetectionDelegateInternal);
  v3[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE_e8_v16__0q8l;
  aBlock[4] = v3;
  aBlock[5] = v5;
  v16 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = _Block_copy(aBlock);
  [(CMHandDetectionDelegateInternal *)v10 registerHandler:&v17, a1, v14];
  if (v17)
  {
    _Block_release(v17);
  }

  [v3[4] setDelegate:v3[5]];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v7);
LABEL_17:
  v11 = v2[1];
  if (v11)
  {
    _Block_release(v11);
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

void sub_29761107C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v17);
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2976110D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN22CMHandDetectionHandler16registerCallbackEN8dispatch5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
        goto LABEL_16;
      }

      v8 = v5[1];
      if (!v8 || (v9 = *v5, (v10 = std::__shared_weak_count::lock(v8)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v10;
      v12 = operator new(0x10uLL);
      *v12 = v5;
      v12[1] = a2;
      v13 = v5[2];
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = operator new(0x18uLL);
      *v14 = v12;
      v14[1] = v9;
      v14[2] = v11;
      dispatch_async_f(v13, v14, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22CMHandDetectionHandlerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI22CMHandDetectionHandlerE15execute_wrappedIZZZNS3_16registerCallbackENS_5blockIU13block_pointerFvN23CMHandDetectionDelegate21CMHandDetectionResultEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISE_NSJ_14default_deleteISE_EEEEENUlPvE_8__invokeESO_(void *a1)
{
  v2 = *a1;
  *(*a1 + 8);
  (*(*(**a1 + 48) + 16))();
  operator delete(v2);
  v3 = a1[2];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_297611374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1},std::default_delete<CMHandDetectionHandler::registerCallback(dispatch::block<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(8uLL);
  *v8 = *a2;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<CMHandDetectionHandler>::execute_wrapped<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>(CMHandDetectionHandler::shutdown(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<CMHandDetectionHandler::shutdown(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 32);
  if (v4)
  {

    *(v3 + 32) = 0;
  }

  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297611594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void std::shared_ptr<Capabilities>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = off_2A18CAF70;
  unk_2A18CAF68 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4C718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<CMHandDetectionDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void CellularCertModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  if (capabilities::abs::supportsCellularCert(a1) & 1) != 0 && ((TelephonyUtilIsInternalBuild() & 1) != 0 || (TelephonyUtilIsCarrierBuild()))
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    a2[1] = 0xAAAAAAAAAAAAAAAALL;
    v4 = operator new(0x90uLL);
    v5 = v4;
    v6 = *a1;
    v7 = a1[1];
    v10[0] = v6;
    v10[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    CellularCertModule::CellularCertModule(v4, v10);
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    a2[1] = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<CellularCertModule>::shared_ptr[abi:ne200100]<CellularCertModule,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1},0>(a2, v5);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *a2 + 72;
    v11 = *a2;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI18CellularCertModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
    block[3] = &__block_descriptor_tmp_29;
    block[4] = v8;
    block[5] = &v11;
    v9 = *(v11 + 88);
    if (*(v11 + 96))
    {
      dispatch_async_and_wait(v9, block);
    }

    else
    {
      dispatch_sync(v9, block);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_2976118A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void CellularCertModule::init(CellularCertModule *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18CellularCertModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = this + 72;
  block[5] = &v3;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void CellularCertModule::~CellularCertModule(CellularCertModule *this)
{
  *this = &unk_2A1E4C768;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 17);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 15);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C270D60](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  CellularCertModule::~CellularCertModule(this);

  operator delete(v1);
}

uint64_t CellularCertModule::CellularCertModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E4C768;
  ctu::OsLogContext::OsLogContext(&v18, "com.apple.telephony.abm", "cellularcert.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("cellularcert.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, &v17);
  MEMORY[0x29C270D60](&v17);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = &unk_2A1E4C768;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v18, v7);
    v9 = v18;
    v18 = 0uLL;
    v10 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v18 + 1);
    if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CADD8;
  }

  v16 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 144))(&v17, v8);
  v12 = v17;
  v17 = 0uLL;
  v13 = *(a1 + 120);
  *(a1 + 112) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return a1;
}

void sub_297611F28(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C270D60](v1 + 104);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

_WORD *CellularCertModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *CellularCertModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void CellularCertModule::shutdownWithStage(void *a1, uint64_t a2, dispatch_object_t *a3)
{
  v4 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v4);
  }

  v5 = a1[10];
  if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x10uLL);
  *v9 = a1;
  v9[1] = v4;
  v10 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void CellularCertModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void CellularCertModule::registerCommandHandlers_sync(CellularCertModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = abm::kCommandCellularCertBootstrap[0];
  v8 = strlen(abm::kCommandCellularCertBootstrap[0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v11);
    v35 = v9;
    v36 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v36) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_40;
  aBlock[4] = this;
  aBlock[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v33 = v12;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  v13 = abm::kCommandCellularCertShutdown[0];
  v14 = strlen(abm::kCommandCellularCertShutdown[0]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    v35 = v15;
    v36 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v36) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_4;
  v28[3] = &__block_descriptor_tmp_7_4;
  v28[4] = this;
  v28[5] = v4;
  v29 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v28);
  v30 = v18;
  Service::registerCommandHandler(this, &__dst, &v30);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  v19 = abm::kCommandCellularCertConfigure[0];
  v20 = strlen(abm::kCommandCellularCertConfigure[0]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v35 = v21;
    v36 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v36) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_8;
  v25[3] = &__block_descriptor_tmp_11_4;
  v25[4] = this;
  v25[5] = v4;
  v26 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v25);
  v27 = v24;
  Service::registerCommandHandler(this, &__dst, &v27);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297612770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (v32)
  {
    _Block_release(v32);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v33 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v35 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
          std::__shared_weak_count::__release_weak(v31);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v31);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v35);
      goto LABEL_10;
    }
  }

  else if ((*(v33 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v33 - 128));
  v35 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (!v9)
      {
        goto LABEL_19;
      }

      if (*a3)
      {
        v10 = _Block_copy(*a3);
        v11 = v9[10];
        if (!v11)
        {
LABEL_16:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = 0;
        v11 = v9[10];
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v12 = v9[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v13;
      v15 = operator new(0x10uLL);
      *v15 = v6;
      v15[1] = v10;
      v16 = v9[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = operator new(0x18uLL);
      *v17 = v15;
      v17[1] = v12;
      v17[2] = v14;
      dispatch_async_f(v16, v17, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_19:
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v8->__on_zero_shared)(v8);

      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18CellularCertModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18CellularCertModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (!v9)
      {
        goto LABEL_19;
      }

      if (*a3)
      {
        v10 = _Block_copy(*a3);
        v11 = v9[10];
        if (!v11)
        {
LABEL_16:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = 0;
        v11 = v9[10];
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      v12 = v9[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = v13;
      v15 = operator new(0x10uLL);
      *v15 = v6;
      v15[1] = v10;
      v16 = v9[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = operator new(0x18uLL);
      *v17 = v15;
      v17[1] = v12;
      v17[2] = v14;
      dispatch_async_f(v16, v17, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_19:
        if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v8->__on_zero_shared)(v8);

      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void ___ZN18CellularCertModule28registerCommandHandlers_syncEv_block_invoke_8(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = *a2;
    if (v11)
    {
      xpc_retain(v11);
      v12 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = xpc_null_create();
      v12 = *a3;
      if (*a3)
      {
LABEL_6:
        v13 = _Block_copy(v12);
        v14 = v10[10];
        if (!v14)
        {
LABEL_19:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_10;
      }
    }

    v13 = 0;
    v14 = v10[10];
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_10:
    v15 = v10[9];
    v16 = std::__shared_weak_count::lock(v14);
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = v16;
    v18 = operator new(0x18uLL);
    *v18 = v7;
    v18[1] = v11;
    v19 = xpc_null_create();
    v18[2] = v13;
    v20 = v10[11];
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = operator new(0x18uLL);
    *v21 = v18;
    v21[1] = v15;
    v21[2] = v17;
    dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    xpc_release(v19);
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void CellularCertModule::registerEventHandlers_sync(CellularCertModule *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF460];
  v8 = strlen(*MEMORY[0x29EDBF460]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v27 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v27) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4C998;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v33 = v12;
  Service::registerEventHandler(this, &__p, v32);
  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

  if (v33)
  {
    (*(*v33 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_47:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBF278];
  v14 = strlen(*MEMORY[0x29EDBF278]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v27 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v27) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E4CA18;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v31 = v18;
  Service::registerEventHandler(this, &__p, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_49:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBEFF0];
  v20 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v27 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v27) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E4CA98;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v29 = v24;
  Service::registerEventHandler(this, &__p, v28);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_51:
    operator delete(__p);
    goto LABEL_45;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_51;
  }

LABEL_45:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v25 = *MEMORY[0x29EDCA608];
}

void CellularCertModule::sleep(void *a1, dispatch_object_t *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = a1[10];
  if (!v9 || (v10 = a1[9], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v8;
  v13[2] = v5;
  v13[3] = v7;
  v14 = a1[11];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::sleep(dispatch::group_session)::$_0>(CellularCertModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void CellularCertModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
  }

  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = a1[10];
  if (!v9 || (v10 = a1[9], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = v8;
  v13[2] = v5;
  v13[3] = v7;
  v14 = a1[11];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::wake(dispatch::group_session)::$_0>(CellularCertModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void CellularCertModule::bootstrapTest_sync(CellularCertModule *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to initialize test", v5, 2u);
  }

  CellularCertClient::bootstrapTest(*(this + 16), a2);
}

void CellularCertModule::shutdownTest_sync(CellularCertModule *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", v5, 2u);
  }

  CellularCertClient::shutdownTest(*(this + 16), a2);
}

void CellularCertModule::configureTest_sync(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Send request to configure test", buf, 2u);
  }

  v7 = *(a1 + 128);
  v8 = *a2;
  v9 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v8 = xpc_null_create();
    v9 = v8;
  }

  CellularCertClient::configureTest(v7, &v9, a3);
  xpc_release(v8);
}

atomic_ullong *std::shared_ptr<CellularCertModule>::shared_ptr[abi:ne200100]<CellularCertModule,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E4C918;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_29761396C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1}::operator() const(CellularCertModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<CellularCertModule *,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule *)#1},std::allocator<CellularCertModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CellularCertModule *,std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule *)#1},std::allocator<CellularCertModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI18CellularCertModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CellularCertModule> ctu::SharedSynchronizable<CellularCertModule>::make_shared_ptr<CellularCertModule>(CellularCertModule*)::{lambda(CellularCertModule*)#1}::operator() const(CellularCertModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI18CellularCertModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x18uLL);
  ctu::OsLogLogger::OsLogLogger(v2, "com.apple.telephony.abm", "cellularcert.client");
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  std::shared_ptr<CellularCertClient>::shared_ptr[abi:ne200100]<CellularCertClient,0>(&v13, v2);
  v3 = v13;
  v13 = 0uLL;
  v4 = *(v1 + 136);
  *(v1 + 128) = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(&v13 + 1);
  if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(v1 + 80);
  if (!v6 || (v7 = *(v1 + 72), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = MEMORY[0x29EDCA5F8];
  *(&v13 + 1) = 1174405120;
  v14 = ___ZZN18CellularCertModule4initEvENK3__0clEv_block_invoke;
  v15 = &__block_descriptor_tmp_33_2;
  v16 = v1;
  v17 = v7;
  v18 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(&v13);
  v12 = *(v1 + 88);
  if (v12)
  {
    dispatch_retain(*(v1 + 88));
  }

  v19 = v11;
  v20 = v12;
  (*(**(v1 + 112) + 16))(*(v1 + 112), &v19);
  if (v20)
  {
    dispatch_release(v20);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_297613CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  dispatch::callback<void({block_pointer})(char const*,xpc::dict)>::~callback(v16 - 48);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void ___ZZN18CellularCertModule4initEvENK3__0clEv_block_invoke(void *a1, const char *a2, xpc_object_t *a3)
{
  v4 = a1[4];
  v70 = 0;
  v71 = 0;
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_102;
  }

  v71 = std::__shared_weak_count::lock(v5);
  if (!v71)
  {
    return;
  }

  v70 = a1[5];
  if (!v70)
  {
    goto LABEL_102;
  }

  v8 = strlen(a2);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v11);
    object = v9;
    v69 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_12;
  }

  HIBYTE(v69) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_12:
    memcpy(p_dst, a2, v9);
  }

  *(v9 + p_dst) = 0;
  v12 = abm::kCommandCellularCertBootstrap[0];
  v13 = strlen(abm::kCommandCellularCertBootstrap[0]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
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
    v65 = v14;
    v66 = v16 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_21;
  }

  HIBYTE(v66) = v13;
  v15 = buf;
  if (v13)
  {
LABEL_21:
    memmove(v15, v12, v14);
  }

  *(v15 + v14) = 0;
  v17 = SHIBYTE(v69);
  v18 = __dst;
  if (v69 >= 0)
  {
    v19 = &__dst;
  }

  else
  {
    v19 = __dst;
  }

  v20 = SHIBYTE(v66);
  v21 = *buf;
  if (v66 >= 0)
  {
    v22 = buf;
  }

  else
  {
    v22 = *buf;
  }

  v23 = strcasecmp(v19, v22);
  if (v20 < 0)
  {
    operator delete(v21);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_30:
      if (v23)
      {
        goto LABEL_31;
      }

LABEL_37:
      __dst = 0xAAAAAAAAAAAAAAAALL;
      object = 0xAAAAAAAAAAAAAAAALL;
      v27 = v70;
      v28 = *(v70 + 104);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v28, OS_LOG_TYPE_DEFAULT, "#I Send request to initialize test", buf, 2u);
      }

      CellularCertClient::bootstrapTest(*(v27 + 128), &__dst);
      (*(**(v4 + 112) + 24))(*(v4 + 112), __dst);
      xpc_release(object);
      goto LABEL_102;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v18);
  if (!v23)
  {
    goto LABEL_37;
  }

LABEL_31:
  v24 = strlen(a2);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v24 | 7) + 1;
    }

    v26 = operator new(v29);
    object = v25;
    v69 = v29 | 0x8000000000000000;
    __dst = v26;
    goto LABEL_44;
  }

  HIBYTE(v69) = v24;
  v26 = &__dst;
  if (v24)
  {
LABEL_44:
    memcpy(v26, a2, v25);
  }

  *(v25 + v26) = 0;
  v30 = abm::kCommandCellularCertShutdown[0];
  v31 = strlen(abm::kCommandCellularCertShutdown[0]);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    v65 = v32;
    v66 = v34 | 0x8000000000000000;
    *buf = v33;
    goto LABEL_53;
  }

  HIBYTE(v66) = v31;
  v33 = buf;
  if (v31)
  {
LABEL_53:
    memmove(v33, v30, v32);
  }

  *(v33 + v32) = 0;
  v35 = SHIBYTE(v69);
  v36 = __dst;
  if (v69 >= 0)
  {
    v37 = &__dst;
  }

  else
  {
    v37 = __dst;
  }

  v38 = SHIBYTE(v66);
  v39 = *buf;
  if (v66 >= 0)
  {
    v40 = buf;
  }

  else
  {
    v40 = *buf;
  }

  v41 = strcasecmp(v37, v40);
  if (v38 < 0)
  {
    operator delete(v39);
    if ((v35 & 0x80000000) == 0)
    {
LABEL_62:
      if (v41)
      {
        goto LABEL_63;
      }

LABEL_69:
      __dst = 0xAAAAAAAAAAAAAAAALL;
      object = 0xAAAAAAAAAAAAAAAALL;
      v45 = v70;
      v46 = *(v70 + 104);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v46, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", buf, 2u);
      }

      CellularCertClient::shutdownTest(*(v45 + 128), &__dst);
      (*(**(v4 + 112) + 24))(*(v4 + 112), __dst);
      xpc_release(object);
      goto LABEL_102;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v36);
  if (!v41)
  {
    goto LABEL_69;
  }

LABEL_63:
  v42 = strlen(a2);
  if (v42 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    if ((v42 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v42 | 7) + 1;
    }

    v44 = operator new(v47);
    object = v43;
    v69 = v47 | 0x8000000000000000;
    __dst = v44;
    goto LABEL_76;
  }

  HIBYTE(v69) = v42;
  v44 = &__dst;
  if (v42)
  {
LABEL_76:
    memcpy(v44, a2, v43);
  }

  *(v43 + v44) = 0;
  v48 = abm::kCommandCellularCertConfigure[0];
  v49 = strlen(abm::kCommandCellularCertConfigure[0]);
  if (v49 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v50 = v49;
  if (v49 >= 0x17)
  {
    if ((v49 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v49 | 7) + 1;
    }

    v51 = operator new(v52);
    v65 = v50;
    v66 = v52 | 0x8000000000000000;
    *buf = v51;
    goto LABEL_85;
  }

  HIBYTE(v66) = v49;
  v51 = buf;
  if (v49)
  {
LABEL_85:
    memmove(v51, v48, v50);
  }

  *(v51 + v50) = 0;
  v53 = SHIBYTE(v69);
  v54 = __dst;
  if (v69 >= 0)
  {
    v55 = &__dst;
  }

  else
  {
    v55 = __dst;
  }

  v56 = SHIBYTE(v66);
  v57 = *buf;
  if (v66 >= 0)
  {
    v58 = buf;
  }

  else
  {
    v58 = *buf;
  }

  v59 = strcasecmp(v55, v58);
  if (v56 < 0)
  {
    operator delete(v57);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_94:
      if (!v59)
      {
        goto LABEL_98;
      }

      goto LABEL_102;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_94;
  }

  operator delete(v54);
  if (!v59)
  {
LABEL_98:
    __dst = 0xAAAAAAAAAAAAAAAALL;
    object = 0xAAAAAAAAAAAAAAAALL;
    v60 = v70;
    v61 = *a3;
    v63 = v61;
    if (v61)
    {
      xpc_retain(v61);
    }

    else
    {
      v61 = xpc_null_create();
      v63 = v61;
    }

    CellularCertModule::configureTest_sync(v60, &v63, &__dst);
    xpc_release(v61);
    v63 = 0;
    (*(**(v4 + 112) + 32))(*(v4 + 112), __dst);
    xpc_release(object);
  }

LABEL_102:
  v62 = v71;
  if (v71)
  {
    if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v62->__on_zero_shared)(v62);
      std::__shared_weak_count::__release_weak(v62);
    }
  }
}

void sub_29761432C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, xpc_object_t object, int a16, __int16 a17, char a18, char a19, char a20)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(char const*,xpc::dict)>::~callback(uint64_t a1)
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

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", buf, 2u);
  }

  CellularCertClient::shutdownTest(*(v3 + 128), buf);
  xpc_release(object);
  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297614560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  CellularCertModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297614658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CellularCertModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  CellularCertModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297614750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to initialize test", buf, 2u);
  }

  CellularCertClient::bootstrapTest(*(v3 + 128), &v9);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = -534716416;
  }

  *buf = v5;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v2 + 1, buf, &object);
  xpc_release(object);
  v6 = v2[1];
  if (v6)
  {
    _Block_release(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_2976148A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Send request to shutdown test", buf, 2u);
  }

  CellularCertClient::shutdownTest(*(v3 + 128), &v9);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = -534716416;
  }

  *buf = v5;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v2 + 1, buf, &object);
  xpc_release(object);
  v6 = v2[1];
  if (v6)
  {
    _Block_release(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297614A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI18CellularCertModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  object = 0xAAAAAAAAAAAAAAAALL;
  v4 = v2[1];
  v9 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v9 = v4;
  }

  CellularCertModule::configureTest_sync(v3, &v9, &v10);
  xpc_release(v4);
  v9 = 0;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = -534716416;
  }

  v8 = v5;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v2 + 2, &v8, &object);
  xpc_release(object);
  v6 = v2[2];
  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297614BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN18CellularCertModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4C998;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4C998;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4C998;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4C998;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_297615068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_0,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18CellularCertModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  object[3] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v5 = *(v3 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v6 = __p[0];
    }

    LODWORD(object[0]) = 136315138;
    *(object + 4) = v6;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Boot state is %s", object, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v7 = v2[1];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v2[1];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
  v10 = *MEMORY[0x29EDCA608];
}

void sub_2976152C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CA18;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CA18;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CA18;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CA18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_1,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18CellularCertModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Reset Detected", v7, 2u);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CA98;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CA98;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CA98;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CA98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<CellularCertModule::registerEventHandlers_sync(void)::$_2,std::allocator<CellularCertModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN18CellularCertModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CellularCertModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Dump state begin", v7, 2u);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::sleep(dispatch::group_session)::$_0>(CellularCertModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[3];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[2])
      {
        v7 = *(v4 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Sleep", v12, 2u);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v8 = v2[3];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CellularCertModule>::execute_wrapped<CellularCertModule::wake(dispatch::group_session)::$_0>(CellularCertModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CellularCertModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CellularCertModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[3];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[2])
      {
        v7 = *(v4 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Wake", v12, 2u);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v8 = v2[3];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t IOKitAccessoriesDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v6 = operator new(0xB8uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v20 = v7;
    goto LABEL_6;
  }

  v20 = v19;
  (*(*v7 + 24))(v7, v19);
LABEL_6:
  v8 = *a2;
  v16 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  IOKitAccessoriesDelegate::IOKitAccessoriesDelegate(v6, v19, &v16);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E4CBE0;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v17 = v6;
  v18 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297616274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t IOKitAccessoriesDelegate::IOKitAccessoriesDelegate(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v20 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E4CB18;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v19 = v18;
      (*(*v5 + 24))(v5, v18);
    }

    else
    {
      v19 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v19 = 0;
  }

  v6 = *a3;
  v16 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v18, &v16, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  *a1 = &unk_2A1E4CB18;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v17);
    v9 = v17;
    v17 = 0uLL;
    v10 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CAD88;
  }

  v12 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::iokit::Controller::create(*(*v8 + 144), v13);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  v14 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29761662C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  AccessoriesDelegateBase::~AccessoriesDelegateBase(v1);
  _Unwind_Resume(a1);
}

void sub_29761668C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    dispatch_release(v16);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(&a16);
  _Unwind_Resume(a1);
}

void IOKitAccessoriesDelegate::~IOKitAccessoriesDelegate(IOKitAccessoriesDelegate *this)
{
  *this = &unk_2A1E4CB18;
  v2 = *(this + 20);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 12);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = this;
  }

  else
  {
    v9 = this;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(v9);
}

{
  IOKitAccessoriesDelegate::~IOKitAccessoriesDelegate(this);

  operator delete(v1);
}

void IOKitAccessoriesDelegate::init(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_17;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

double ___ZN24IOKitAccessoriesDelegate4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 2;
  v2 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 2u, &v7);
  *(v2 + 20) = 0x2000000000004;
  *(v2 + 7) = 0x10000;
  v7 = 8;
  v3 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 8u, &v7);
  *(v3 + 20) = 0x3000000000000;
  *(v3 + 7) = 0;
  v7 = 4;
  v4 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 4u, &v7);
  *(v4 + 20) = 0x300000000000FLL;
  *(v4 + 7) = 0;
  v7 = 32;
  v5 = std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(v1 + 104, 0x20u, &v7);
  *&result = 0x3000000000010;
  *(v5 + 20) = 0x3000000000010;
  *(v5 + 7) = 0;
  return result;
}

void IOKitAccessoriesDelegate::start(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_12_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already started", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
    }

    *(v1 + 80) = 1;
    v5 = *(v1 + 16);
    if (!v5 || (v6 = *(v1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    p_shared_weak_owners = &v7->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v8);
    }

    v10 = *(v1 + 88);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_5_12;
    aBlock[4] = v1;
    aBlock[5] = v6;
    v22 = v8;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v11 = _Block_copy(aBlock);
    v12 = *(v1 + 24);
    if (v12)
    {
      dispatch_retain(*(v1 + 24));
    }

    v23 = v11;
    v24 = v12;
    ctu::iokit::Controller::setPowerSourceCallback();
    if (v24)
    {
      dispatch_release(v24);
    }

    v13 = v23;
    if (v23)
    {
      _Block_release(v23);
    }

    if (capabilities::abs::supportsDisplayCoverAccessory(v13))
    {
      v14 = *(v1 + 88);
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 1174405120;
      v17[2] = ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_6;
      v17[3] = &__block_descriptor_tmp_11_5;
      v17[4] = v1;
      v17[5] = v6;
      v18 = v8;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = _Block_copy(v17);
      v16 = *(v1 + 24);
      if (v16)
      {
        dispatch_retain(*(v1 + 24));
      }

      v19 = v15;
      object = v16;
      ctu::iokit::Controller::registerForDisplayCoverStateChanged();
      if (object)
      {
        dispatch_release(object);
      }

      if (v19)
      {
        _Block_release(v19);
      }

      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_297616C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayCoverState)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v26 = a24;
    if (!a24)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v24);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = a24;
    if (!a24)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v26);
  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_2(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_274;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v139 = v6;
  if (!v6)
  {
    goto LABEL_274;
  }

  if (!a1[5])
  {
    goto LABEL_272;
  }

  v137 = 0;
  v7 = *(v5 + 120);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v110 = 0;
    v11 = 0;
    v108 = (v5 + 160);
    v12 = -1;
    while (1)
    {
      v13 = *(v7 + 4);
      if ((v13 & a2) != 0)
      {
        break;
      }

LABEL_7:
      v7 = *v7;
      if (!v7)
      {
        goto LABEL_104;
      }
    }

    v14 = *(v5 + 152);
    if (v14)
    {
      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = *(v7 + 4);
        if (*&v14 <= v13)
        {
          v16 = v13 % v14.i32[0];
        }
      }

      else
      {
        v16 = (v14.i32[0] - 1) & v13;
      }

      v17 = *(*(v5 + 144) + 8 * v16);
      if (v17)
      {
        v18 = *v17;
        if (v18)
        {
          if (v15.u32[0] < 2uLL)
          {
            v19 = *&v14 - 1;
            while (1)
            {
              v20 = v18[1];
              if (v20 == v13)
              {
                if (*(v18 + 4) == v13)
                {
                  goto LABEL_6;
                }
              }

              else if ((v20 & v19) != v16)
              {
                goto LABEL_30;
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_30;
              }
            }
          }

          do
          {
            v21 = v18[1];
            if (v21 == v13)
            {
              if (*(v18 + 4) == v13)
              {
                goto LABEL_6;
              }
            }

            else
            {
              if (v21 >= *&v14)
              {
                v21 %= *&v14;
              }

              if (v21 != v16)
              {
                break;
              }
            }

            v18 = *v18;
          }

          while (v18);
        }
      }
    }

LABEL_30:
    v22 = *(v5 + 40);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      ctu::iokit::asString();
      v24 = __p;
      if (SBYTE7(v117) < 0)
      {
        v24 = __p[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v24;
      _os_log_impl(&dword_297476000, v22, OS_LOG_TYPE_DEFAULT, "#I Power Source attached: %s", &buf, 0xCu);
      if (SBYTE7(v117) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = *(v7 + 10);
    v10 = *(v7 + 12);
    LOWORD(v110) = *(v7 + 13);
    WORD2(v110) = *(v7 + 14);
    capabilities::abs::supportedSARFeatures(v23);
    if (capabilities::abs::operator&())
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = *(v7 + 4);
    v27 = *(v5 + 152);
    if (v27)
    {
      v28 = vcnt_s8(v27);
      v28.i16[0] = vaddlv_u8(v28);
      if (v28.u32[0] > 1uLL)
      {
        v29 = *(v7 + 4);
        if (v27 <= v26)
        {
          v29 = v26 % v27;
        }
      }

      else
      {
        v29 = (v27 - 1) & v26;
      }

      v30 = *(*(v5 + 144) + 8 * v29);
      if (v30)
      {
        v31 = *v30;
        if (*v30)
        {
          if (v28.u32[0] < 2uLL)
          {
            while (1)
            {
              v33 = v31[1];
              if (v33 == v26)
              {
                if (*(v31 + 4) == v26)
                {
                  goto LABEL_91;
                }
              }

              else if ((v33 & (v27 - 1)) != v29)
              {
                goto LABEL_59;
              }

              v31 = *v31;
              if (!v31)
              {
                goto LABEL_59;
              }
            }
          }

          do
          {
            v32 = v31[1];
            if (v32 == v26)
            {
              if (*(v31 + 4) == v26)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v32 >= v27)
              {
                v32 %= v27;
              }

              if (v32 != v29)
              {
                break;
              }
            }

            v31 = *v31;
          }

          while (v31);
        }
      }
    }

    else
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
    }

LABEL_59:
    v31 = operator new(0x20uLL);
    *v31 = 0;
    v31[1] = v26;
    *(v31 + 4) = *(v7 + 4);
    *(v31 + 10) = -1;
    *(v31 + 22) = 0;
    *(v31 + 15) = 0;
    v34 = (*(v5 + 168) + 1);
    v35 = *(v5 + 176);
    if (v27 && (v35 * v27) >= v34)
    {
      v26 = v29;
    }

    else
    {
      v36 = (v27 & (v27 - 1)) != 0;
      if (v27 < 3)
      {
        v36 = 1;
      }

      v37 = v36 | (2 * v27);
      v38 = vcvtps_u32_f32(v34 / v35);
      if (v37 <= v38)
      {
        prime = v38;
      }

      else
      {
        prime = v37;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v27 = *(v5 + 152);
      }

      if (prime > v27)
      {
        goto LABEL_72;
      }

      if (prime < v27)
      {
        v40 = vcvtps_u32_f32(*(v5 + 168) / *(v5 + 176));
        if (v27 < 3 || (v41 = vcnt_s8(v27), v41.i16[0] = vaddlv_u8(v41), v41.u32[0] > 1uLL))
        {
          v40 = std::__next_prime(v40);
        }

        else
        {
          v42 = 1 << -__clz(v40 - 1);
          if (v40 >= 2)
          {
            v40 = v42;
          }
        }

        if (prime <= v40)
        {
          prime = v40;
        }

        if (prime < v27)
        {
LABEL_72:
          std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(v5 + 144, prime);
        }
      }

      v27 = *(v5 + 152);
      if ((v27 & (v27 - 1)) != 0)
      {
        if (v27 <= v26)
        {
          v26 %= v27;
        }
      }

      else
      {
        v26 = (v27 - 1) & v26;
      }
    }

    v43 = *(v5 + 144);
    v44 = *(v43 + 8 * v26);
    if (v44)
    {
      *v31 = *v44;
    }

    else
    {
      *v31 = *v108;
      *v108 = v31;
      *(v43 + 8 * v26) = v108;
      if (!*v31)
      {
        goto LABEL_90;
      }

      v47 = *(*v31 + 8);
      if ((v27 & (v27 - 1)) != 0)
      {
        if (v47 >= v27)
        {
          v47 %= v27;
        }

        v44 = (v43 + 8 * v47);
      }

      else
      {
        v44 = (v43 + 8 * (v47 & (v27 - 1)));
      }
    }

    *v44 = v31;
LABEL_90:
    ++*(v5 + 168);
LABEL_91:
    *(v31 + 10) = v12;
    v9 = 2;
    *(v31 + 11) = 2;
    *(v31 + 12) = v10;
    *(v31 + 13) = v110;
    *(v31 + 14) = WORD2(v110);
    v11 = v25;
    *(v31 + 15) = v25;
    v45 = *(v5 + 72);
    if (v45)
    {
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v46 = operator new(0xCuLL);
      v134 = v46 + 6;
      v135 = v46 + 6;
      *v46 = v12;
      v46[1] = 2;
      v46[2] = v10;
      v46[3] = v110;
      v46[4] = WORD2(v110);
      v46[5] = v25;
      v133 = v46;
      (*(*v45 + 48))(v45, &v136, &v133);
      if (v133)
      {
        v134 = v133;
        operator delete(v133);
      }

      if (v136)
      {
        CFRelease(v136);
      }

      v8 = 1;
      v9 = 2;
    }

    else
    {
LABEL_6:
      v8 = 1;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v110 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v12 = -1;
LABEL_104:
  v107 = v9;
  v48 = *(v5 + 160);
  v109 = (v5 + 160);
  if (!v48)
  {
    v51 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v106 = v11;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  do
  {
    if ((v48[2] & a2) == 0)
    {
      v52 = *(v5 + 40);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v53)
      {
        ctu::iokit::asString();
        v54 = __p;
        if (SBYTE7(v117) < 0)
        {
          v54 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v54;
        _os_log_impl(&dword_297476000, v52, OS_LOG_TYPE_DEFAULT, "#I Power Source detached: %s", &buf, 0xCu);
        if (SBYTE7(v117) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v48 + 11) = 1;
      capabilities::abs::supportedSARFeatures(v53);
      if (capabilities::abs::operator&())
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      *(v48 + 15) = v55;
      if (v50 >= v49)
      {
        v56 = v50 - v51;
        v57 = (v50 - v51) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        if ((v49 - v51) >> 1 > v58)
        {
          v58 = (v49 - v51) >> 1;
        }

        if ((v49 - v51) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v58;
        }

        if (v59)
        {
          if (v59 >> 62)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v60 = operator new(4 * v59);
        }

        else
        {
          v60 = 0;
        }

        v61 = &v60[4 * v57];
        v49 = &v60[4 * v59];
        *v61 = *(v48 + 4);
        v50 = v61 + 4;
        memcpy(v60, v51, v56);
        if (v51)
        {
          operator delete(v51);
        }

        v51 = v60;
        if (!*(v5 + 72))
        {
          goto LABEL_106;
        }
      }

      else
      {
        *v50 = *(v48 + 4);
        v50 += 4;
        if (!*(v5 + 72))
        {
LABEL_106:
          v8 = 1;
          goto LABEL_107;
        }
      }

      v132 = v137;
      if (v137)
      {
        CFRetain(v137);
      }

      __p[0] = *(v48 + 20);
      LODWORD(__p[1]) = *(v48 + 7);
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v62 = operator new(0xCuLL);
      v130 = (v62 + 12);
      v131 = v62 + 12;
      *(v62 + 2) = __p[1];
      *v62 = __p[0];
      v129 = v62;
      v63 = *(v5 + 72);
      if (!v63)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v63 + 48))(v63, &v132, &v129);
      if (v129)
      {
        v130 = v129;
        operator delete(v129);
      }

      if (v132)
      {
        CFRelease(v132);
      }

      goto LABEL_106;
    }

LABEL_107:
    v48 = *v48;
  }

  while (v48);
  if (v51 == v50)
  {
    v11 = v106;
    if ((a2 & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  v64 = *(v5 + 152);
  v11 = v106;
  if (v64)
  {
    v65 = v51;
LABEL_144:
    v66 = *v65;
    v67 = vcnt_s8(v64);
    v67.i16[0] = vaddlv_u8(v67);
    if (v67.u32[0] > 1uLL)
    {
      v68 = *v65;
      if (*&v64 <= v66)
      {
        v68 = v66 % v64.i32[0];
      }
    }

    else
    {
      v68 = (v64.i32[0] - 1) & v66;
    }

    v69 = *(v5 + 144);
    v70 = *(v69 + 8 * v68);
    if (v70)
    {
      v71 = *v70;
      if (*v70)
      {
        v72 = *&v64 - 1;
        if (v67.u32[0] < 2uLL)
        {
          while (1)
          {
            v73 = *(v71 + 1);
            if (v73 == v66)
            {
              if (v71[4] == v66)
              {
                goto LABEL_164;
              }
            }

            else if ((v73 & v72) != v68)
            {
              goto LABEL_191;
            }

            v71 = *v71;
            if (!v71)
            {
              goto LABEL_191;
            }
          }
        }

        do
        {
          v74 = *(v71 + 1);
          if (v74 == v66)
          {
            if (v71[4] == v66)
            {
LABEL_164:
              if (v67.u32[0] > 1uLL)
              {
                if (*&v64 <= v66)
                {
                  v66 %= *&v64;
                }
              }

              else
              {
                v66 &= v72;
              }

              v75 = *(v69 + 8 * v66);
              do
              {
                v76 = v75;
                v75 = *v75;
              }

              while (v75 != v71);
              if (v76 == v109)
              {
                goto LABEL_181;
              }

              v77 = v76[1];
              if (v67.u32[0] > 1uLL)
              {
                if (v77 >= *&v64)
                {
                  v77 %= *&v64;
                }
              }

              else
              {
                v77 &= v72;
              }

              if (v77 != v66)
              {
LABEL_181:
                if (!*v71)
                {
                  goto LABEL_182;
                }

                v78 = *(*v71 + 8);
                if (v67.u32[0] > 1uLL)
                {
                  if (v78 >= *&v64)
                  {
                    v78 %= *&v64;
                  }
                }

                else
                {
                  v78 &= v72;
                }

                if (v78 != v66)
                {
LABEL_182:
                  *(v69 + 8 * v66) = 0;
                }
              }

              v79 = *v71;
              if (*v71)
              {
                v80 = *(v79 + 8);
                if (v67.u32[0] > 1uLL)
                {
                  if (v80 >= *&v64)
                  {
                    v80 %= *&v64;
                  }
                }

                else
                {
                  v80 &= v72;
                }

                if (v80 != v66)
                {
                  *(v69 + 8 * v80) = v76;
                  v79 = *v71;
                }
              }

              *v76 = v79;
              *v71 = 0;
              --*(v5 + 168);
              operator delete(v71);
              break;
            }
          }

          else
          {
            if (v74 >= *&v64)
            {
              v74 %= *&v64;
            }

            if (v74 != v68)
            {
              break;
            }
          }

          v71 = *v71;
        }

        while (v71);
      }
    }

LABEL_191:
    while (1)
    {
      v65 += 4;
      if (v65 == v50)
      {
        break;
      }

      v64 = *(v5 + 152);
      if (v64)
      {
        goto LABEL_144;
      }
    }
  }

  if (a2)
  {
LABEL_198:
    if (*(v5 + 168))
    {
      v85 = *(v5 + 40);
      v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
      if (v86)
      {
        ctu::iokit::asString();
        v87 = (SBYTE7(v117) & 0x80u) == 0 ? __p : __p[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v87;
        _os_log_impl(&dword_297476000, v85, OS_LOG_TYPE_DEFAULT, "#I Power Source: %s", &buf, 0xCu);
        if (SBYTE7(v117) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v88 = *v109;
      if (*v109)
      {
        do
        {
          while ((v88[2] & a2) != 0)
          {
            v88 = *v88;
            if (!v88)
            {
              goto LABEL_194;
            }
          }

          *(v88 + 11) = 1;
          capabilities::abs::supportedSARFeatures(v86);
          v86 = capabilities::abs::operator&();
          if (v86)
          {
            v89 = 2;
          }

          else
          {
            v89 = 1;
          }

          *(v88 + 15) = v89;
          if (*(v5 + 72))
          {
            v128 = v137;
            if (v137)
            {
              CFRetain(v137);
            }

            __p[0] = *(v88 + 20);
            LODWORD(__p[1]) = *(v88 + 7);
            v125 = 0;
            v126 = 0;
            v127 = 0;
            v90 = operator new(0xCuLL);
            v126 = v90 + 12;
            v127 = v90 + 12;
            *(v90 + 2) = __p[1];
            *v90 = __p[0];
            v125 = v90;
            v91 = *(v5 + 72);
            if (!v91)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v91 + 48))(v91, &v128, &v125);
            if (v125)
            {
              v126 = v125;
              operator delete(v125);
            }

            v86 = v128;
            if (v128)
            {
              CFRelease(v128);
            }
          }

          v88 = *v88;
        }

        while (v88);
      }

      if (*(v5 + 168))
      {
        v92 = *v109;
        if (*v109)
        {
          do
          {
            v93 = *v92;
            operator delete(v92);
            v92 = v93;
          }

          while (v93);
        }

        *(v5 + 160) = 0;
        v94 = *(v5 + 152);
        if (v94)
        {
          bzero(*(v5 + 144), 8 * v94);
        }

        *(v5 + 168) = 0;
      }
    }

    goto LABEL_267;
  }

LABEL_193:
  if (v8)
  {
    goto LABEL_267;
  }

LABEL_194:
  v124 = 0xAAAAAAAAAAAAAAAALL;
  *&v81 = 0xAAAAAAAAAAAAAAAALL;
  *(&v81 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v123[7] = v81;
  v123[8] = v81;
  v123[5] = v81;
  v123[6] = v81;
  v123[3] = v81;
  v123[4] = v81;
  v123[1] = v81;
  v123[2] = v81;
  v122 = v81;
  v123[0] = v81;
  *v120 = v81;
  v121 = v81;
  v118 = v81;
  v119 = v81;
  *__p = v81;
  v117 = v81;
  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unexpected Power Source event: ", 31);
  MEMORY[0x29C271B70](v82, a2);
  memset(&buf, 170, sizeof(buf));
  if ((BYTE8(v122) & 0x10) != 0)
  {
    v95 = v122;
    if (v122 < *(&v119 + 1))
    {
      *&v122 = *(&v119 + 1);
      v95 = *(&v119 + 1);
    }

    v96 = v119;
    v83 = v95 - v119;
    if ((v95 - v119) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_244;
    }
  }

  else
  {
    if ((BYTE8(v122) & 8) == 0)
    {
      v83 = 0;
      *(&buf.__r_.__value_.__s + 23) = 0;
      p_buf = &buf;
      goto LABEL_240;
    }

    v96 = *(&v117 + 1);
    v83 = *(&v118 + 1) - *(&v117 + 1);
    if (*(&v118 + 1) - *(&v117 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_244:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v83 >= 0x17)
  {
    if ((v83 | 7) == 0x17)
    {
      v97 = 25;
    }

    else
    {
      v97 = (v83 | 7) + 1;
    }

    p_buf = operator new(v97);
    buf.__r_.__value_.__l.__size_ = v83;
    buf.__r_.__value_.__r.__words[2] = v97 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
    goto LABEL_239;
  }

  *(&buf.__r_.__value_.__s + 23) = v83;
  p_buf = &buf;
  if (v83)
  {
LABEL_239:
    memmove(p_buf, v96, v83);
  }

LABEL_240:
  p_buf->__r_.__value_.__s.__data_[v83] = 0;
  v98 = *(v5 + 40);
  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
  {
    v99 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v99 = buf.__r_.__value_.__r.__words[0];
    }

    *v140 = 136315138;
    *&v140[4] = v99;
    _os_log_error_impl(&dword_297476000, v98, OS_LOG_TYPE_ERROR, "%s", v140, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_248;
    }

LABEL_242:
    v115 = buf;
  }

  else
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_248:
    std::string::__init_copy_ctor_external(&v115, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  (*(*v5 + 48))(v140, v5, &v115, 5);
  v100 = v137;
  v101 = *v140;
  v137 = *v140;
  *v140 = 0;
  if (v100)
  {
    CFRelease(v100);
    if (*v140)
    {
      CFRelease(*v140);
    }
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  if (*(v5 + 72))
  {
    cf = v101;
    if (v101)
    {
      CFRetain(v101);
    }

    v102 = operator new(0xCuLL);
    v112 = v102 + 6;
    v113 = v102 + 6;
    *v102 = v12;
    v102[1] = v107;
    v102[2] = v10;
    v102[3] = v110;
    v102[4] = WORD2(v110);
    v102[5] = v11;
    v111 = v102;
    v103 = *(v5 + 72);
    if (!v103)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v103 + 48))(v103, &cf, &v111);
    if (v111)
    {
      v112 = v111;
      operator delete(v111);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  __p[0] = *MEMORY[0x29EDC9538];
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9538] + 24);
  __p[1] = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120[1]);
  }

  __p[1] = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v117);
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](v123);
LABEL_267:
  if (v51)
  {
    operator delete(v51);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  v6 = v139;
  if (v139)
  {
LABEL_272:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v104 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v104);
    }
  }

LABEL_274:
  v105 = *MEMORY[0x29EDCA608];
}

void sub_297617CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  std::ostringstream::~ostringstream(&a26);
  if (v60)
  {
    operator delete(v60);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v61 - 168));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v61 - 160);
  _Unwind_Resume(a1);
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
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](a1 + 112);
  return a1;
}

void ___ZN24IOKitAccessoriesDelegate5startEv_block_invoke_6(void *a1, unsigned int a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_54;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v34 = v6;
  if (!v6)
  {
    goto LABEL_54;
  }

  if (!a1[5])
  {
    goto LABEL_52;
  }

  cf = 0;
  if (a2 < 4)
  {
    v7 = 0x4000300010002uLL >> (16 * a2);
    v8 = v5[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = ctu::iokit::asString();
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Display Cover event: %s", buf, 0xCu);
    }

    v9 = 0;
    if (!v5[9])
    {
      goto LABEL_49;
    }

LABEL_42:
    v29 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v22 = operator new(0xCuLL);
    v27 = v22 + 12;
    v28 = v22 + 12;
    *v22 = 13;
    *(v22 + 1) = v7;
    *(v22 + 4) = 0;
    v26 = v22;
    v23 = v5[9];
    if (!v23)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v23 + 48))(v23, &v29, &v26);
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    goto LABEL_49;
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[7] = v10;
  v43[8] = v10;
  v43[5] = v10;
  v43[6] = v10;
  v43[3] = v10;
  v43[4] = v10;
  v43[1] = v10;
  v43[2] = v10;
  v42 = v10;
  v43[0] = v10;
  *__p = v10;
  v41 = v10;
  v38 = v10;
  v39 = v10;
  *buf = v10;
  v37 = v10;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Unexpected Display Cover event: ", 32);
  v12 = ctu::iokit::asString();
  v13 = strlen(v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  memset(&__dst, 170, sizeof(__dst));
  if ((BYTE8(v42) & 0x10) != 0)
  {
    v16 = v42;
    if (v42 < *(&v39 + 1))
    {
      *&v42 = *(&v39 + 1);
      v16 = *(&v39 + 1);
    }

    v17 = v39;
    v14 = v16 - v39;
    if ((v16 - v39) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if ((BYTE8(v42) & 8) == 0)
    {
      v14 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      p_dst = &__dst;
      goto LABEL_23;
    }

    v17 = *(&v37 + 1);
    v14 = *(&v38 + 1) - *(&v37 + 1);
    if (*(&v38 + 1) - *(&v37 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_27:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_dst = operator new(v18);
    __dst.__r_.__value_.__l.__size_ = v14;
    __dst.__r_.__value_.__r.__words[2] = v18 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_22;
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  p_dst = &__dst;
  if (v14)
  {
LABEL_22:
    memmove(p_dst, v17, v14);
  }

LABEL_23:
  p_dst->__r_.__value_.__s.__data_[v14] = 0;
  v19 = v5[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __dst.__r_.__value_.__r.__words[0];
    }

    *v35 = 136315138;
    *&v35[4] = v20;
    _os_log_error_impl(&dword_297476000, v19, OS_LOG_TYPE_ERROR, "%s", v35, 0xCu);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    std::string::__init_copy_ctor_external(&v30, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    goto LABEL_32;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v30 = __dst;
LABEL_32:
  (*(*v5 + 48))(v35, v5, &v30, 5);
  v21 = cf;
  v9 = *v35;
  cf = *v35;
  *v35 = 0;
  if (v21)
  {
    CFRelease(v21);
    if (*v35)
    {
      CFRelease(*v35);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *buf = *MEMORY[0x29EDC9538];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
  *&buf[8] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[1]);
  }

  *&buf[8] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v37);
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](v43);
  LOWORD(v7) = 0;
  if (v5[9])
  {
    goto LABEL_42;
  }

LABEL_49:
  if (v9)
  {
    CFRelease(v9);
  }

  v6 = v34;
  if (v34)
  {
LABEL_52:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v24);
    }
  }

LABEL_54:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_297618498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a33);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a26);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void IOKitAccessoriesDelegate::stop(IOKitAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN24IOKitAccessoriesDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_13_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN24IOKitAccessoriesDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    *(v1 + 80) = 0;
    v5 = ctu::iokit::Controller::stopPowerSourceNotifications(*(v1 + 88));
    if (*(v1 + 168))
    {
      v5 = *(v1 + 160);
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *(v1 + 160) = 0;
      v7 = *(v1 + 152);
      if (v7)
      {
        bzero(*(v1 + 144), 8 * v7);
      }

      *(v1 + 168) = 0;
    }

    if (capabilities::abs::supportsDisplayCoverAccessory(v5))
    {
      ctu::iokit::Controller::stopDisplayCoverStateNotifications(*(v1 + 88));
    }
  }

  else if (v4)
  {
    *v8 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v8, 2u);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayCoverState)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<IOKitAccessoriesDelegate *,std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate *)#1},std::allocator<IOKitAccessoriesDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<IOKitAccessoriesDelegate *,std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate *)#1},std::allocator<IOKitAccessoriesDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI24IOKitAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<IOKitAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOKitAccessoriesDelegate>(IOKitAccessoriesDelegate*)::{lambda(IOKitAccessoriesDelegate*)#1}::operator() const(IOKitAccessoriesDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__emplace_unique_key_args<ctu::iokit::TelephonyIOKitPowerSource,std::piecewise_construct_t const&,std::tuple<ctu::iokit::TelephonyIOKitPowerSource&&>,std::tuple<>>(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        if (v7.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v10[1];
            if (v11 == a2)
            {
              if (*(v10 + 4) == a2)
              {
                return v10;
              }
            }

            else if ((v11 & (v6 - 1)) != v8)
            {
              goto LABEL_22;
            }

            v10 = *v10;
            if (!v10)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_22:
  v10 = operator new(0x20uLL);
  *v10 = 0;
  v10[1] = v5;
  *(v10 + 4) = *a3;
  *(v10 + 10) = -1;
  *(v10 + 22) = 0;
  *(v10 + 15) = 0;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
  }

  else
  {
    v15 = 1;
    if (v6 >= 3)
    {
      v15 = (v6 & (v6 - 1)) != 0;
    }

    v16 = v15 | (2 * v6);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      prime = v17;
    }

    else
    {
      prime = v16;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_35;
    }

    if (prime < v6)
    {
      v19 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v20 = vcnt_s8(v6), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
      {
        v19 = std::__next_prime(v19);
      }

      else
      {
        v21 = 1 << -__clz(v19 - 1);
        if (v19 >= 2)
        {
          v19 = v21;
        }
      }

      if (prime <= v19)
      {
        prime = v19;
      }

      if (prime < v6)
      {
LABEL_35:
        std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(a1, prime);
      }
    }

    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v6 <= v5)
      {
        v5 %= v6;
      }
    }

    else
    {
      v5 = (v6 - 1) & v5;
    }
  }

  v22 = *a1;
  v23 = *(*a1 + 8 * v5);
  if (v23)
  {
    *v10 = *v23;
  }

  else
  {
    *v10 = *(a1 + 16);
    *(a1 + 16) = v10;
    *(v22 + 8 * v5) = a1 + 16;
    if (!*v10)
    {
      goto LABEL_53;
    }

    v25 = *(*v10 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v25 >= v6)
      {
        v25 %= v6;
      }

      v23 = (v22 + 8 * v25);
    }

    else
    {
      v23 = (v22 + 8 * (v25 & (v6 - 1)));
    }
  }

  *v23 = v10;
LABEL_53:
  ++*(a1 + 24);
  return v10;
}

void std::__hash_table<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::__unordered_map_hasher<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::__unordered_map_equal<ctu::iokit::TelephonyIOKitPowerSource,std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>,std::equal_to<ctu::iokit::TelephonyIOKitPowerSource>,std::hash<ctu::iokit::TelephonyIOKitPowerSource>,true>,std::allocator<std::__hash_value_type<ctu::iokit::TelephonyIOKitPowerSource,abm::AccessoryInfo>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v14 = *a1;
    *a1 = 0;
    if (v14)
    {
      operator delete(v14);
    }

    *(a1 + 8) = 0;
    return;
  }

  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v4 = operator new(8 * a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
    v4 = *a1;
  }

  *(a1 + 8) = a2;
  bzero(v4, 8 * a2);
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  if (v8)
  {
    v9 = v6[1];
    v10 = a2 - 1;
    if ((a2 & (a2 - 1)) == 0)
    {
      v11 = v9 & v10;
      *(v4 + v11) = v7;
      while (1)
      {
        v12 = *v6;
        if (!*v6)
        {
          break;
        }

        v13 = v12[1] & v10;
        if (v13 == v11)
        {
          v6 = *v6;
        }

        else if (*(v4 + v13))
        {
          *v6 = *v12;
          *v12 = **(v4 + v13);
          **(v4 + v13) = v12;
        }

        else
        {
          *(v4 + v13) = v6;
          v6 = v12;
          v11 = v13;
        }
      }

      return;
    }

    if (v9 >= a2)
    {
      v9 %= a2;
    }

    *(v4 + v9) = v7;
    v15 = *v6;
    if (*v6)
    {
      while (1)
      {
        v16 = v15[1];
        if (v16 >= a2)
        {
          v16 %= a2;
        }

        if (v16 == v9)
        {
          goto LABEL_23;
        }

        if (*(v4 + v16))
        {
          *v6 = *v15;
          *v15 = **(v4 + v16);
          **(v4 + v16) = v15;
          v15 = v6;
LABEL_23:
          v6 = v15;
          v15 = *v15;
          if (!v15)
          {
            return;
          }
        }

        else
        {
          *(v4 + v16) = v6;
          v6 = v15;
          v15 = *v15;
          v9 = v16;
          if (!v15)
          {
            return;
          }
        }
      }
    }
  }
}

void AntennaModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = dispatch_workloop_create("antenna.wl");
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x88uLL);
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  AntennaModule::AntennaModule(v5, v9, &v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AntennaModule>::shared_ptr[abi:ne200100]<AntennaModule,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1},0>(a2, v5);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  AntennaModule::init(*a2);
  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_297618D94(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  dispatch_release(v1);
  _Unwind_Resume(exception_object);
}

void AntennaModule::init(NSObject **this)
{
  v4 = this;
  if (this[12])
  {
    if (dispatch_workloop_is_current())
    {
      AntennaModule::init(void)::$_0::operator()(this);
      return;
    }

    v2 = this[12] == 0;
  }

  else
  {
    v2 = 1;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI13AntennaModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_45;
  block[4] = this + 9;
  block[5] = &v4;
  v3 = this[11];
  if (v2)
  {
    dispatch_sync(v3, block);
  }

  else
  {
    dispatch_async_and_wait(v3, block);
  }
}

void *AntennaModule::AntennaModule(void *a1, uint64_t *a2, NSObject **a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  a1[1] = v5;
  a1[2] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v6);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E4CC30;
    *a1 = &unk_2A1E4CC30;
    v8 = a1 + 9;
    v9 = *a3;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = 0;
  a1[6] = a1 + 7;
  *a1 = &unk_2A1E42AA8;
  v7 = &unk_2A1E4CC30;
  *a1 = &unk_2A1E4CC30;
  v8 = a1 + 9;
  v9 = *a3;
  if (*a3)
  {
LABEL_5:
    dispatch_retain(v9);
    v7 = *a1;
  }

LABEL_6:
  v10 = v7[2](a1);
  ctu::OsLogContext::OsLogContext(v14, "com.apple.telephony.abm", v10);
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v12 = dispatch_queue_create_with_target_V2("antenna.mod", initially_inactive, v9);
  dispatch_set_qos_class_floor(v12, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v12);
  *v8 = 0;
  v8[1] = 0;
  a1[11] = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[12] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 13, v15);
  MEMORY[0x29C270D60](v15);
  ctu::OsLogContext::~OsLogContext(v14);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E4CC30;
  a1[15] = 0;
  a1[16] = 0;
  a1[14] = 0;
  return a1;
}

void AntennaModule::~AntennaModule(AntennaModule *this)
{
  *this = &unk_2A1E4CC30;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v4 = *(this + 16);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    do
    {
      v12 = *v5;
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
      }

      operator delete(v5);
      v5 = v12;
    }

    while (v12);
  }

  *(this + 14) = 0;
  MEMORY[0x29C270D60](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 1);
        v10 -= 3;
        if (v13 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

{
  AntennaModule::~AntennaModule(this);

  operator delete(v1);
}

_WORD *AntennaModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_WORD *AntennaModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 770;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AntennaModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return;
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
    v9[3] = &__block_descriptor_tmp_41;
    v4 = *a3;
    v9[4] = a1;
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<AntennaModule>::execute_wrapped((a1 + 72), v9);
    if (!group)
    {
      return;
    }

    dispatch_group_leave(group);
    v5 = group;
    if (!group)
    {
      return;
    }

LABEL_12:
    dispatch_release(v5);
    return;
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_5;
  v7[3] = &__block_descriptor_tmp_6_7;
  v6 = *a3;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(object);
  }

  ctu::SharedSynchronizable<AntennaModule>::execute_wrapped((a1 + 72), v7);
  if (object)
  {
    dispatch_group_leave(object);
    v5 = object;
    if (object)
    {
      goto LABEL_12;
    }
  }
}

void ___ZN13AntennaModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = **(*(a1 + 32) + 120);
  if (v1)
  {
    antenna::Service::Internal::shutdown(v1);
  }
}

void AntennaModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AntennaModule::registerCommandHandlers_sync(AntennaModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEAB0];
  v8 = strlen(*MEMORY[0x29EDBEAB0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_dst = operator new(v11);
    v44 = v9;
    v45 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v45) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_8_2;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBE730];
  v14 = strlen(*MEMORY[0x29EDBE730]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    v44 = v15;
    v45 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v45) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_9;
  v37[3] = &__block_descriptor_tmp_12_5;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBF128];
  v20 = strlen(*MEMORY[0x29EDBF128]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v44 = v21;
    v45 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v45) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_13;
  v34[3] = &__block_descriptor_tmp_16_4;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBF118];
  v26 = strlen(*MEMORY[0x29EDBF118]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    v44 = v27;
    v45 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v45) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_17;
  v31[3] = &__block_descriptor_tmp_20;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297619C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13AntennaModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13AntennaModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_9(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_13(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void ___ZN13AntennaModule28registerCommandHandlers_syncEv_block_invoke_17(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v11 = *a2;
  if (v11)
  {
    xpc_retain(v11);
    v12 = *a3;
    if (*a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = xpc_null_create();
    v12 = *a3;
    if (*a3)
    {
LABEL_9:
      v13 = _Block_copy(v12);
      v14 = v7[10];
      if (!v14)
      {
LABEL_18:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
  v14 = v7[10];
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_13:
  v15 = v7[9];
  v16 = std::__shared_weak_count::lock(v14);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = operator new(0x18uLL);
  *v18 = v7;
  v18[1] = v11;
  v19 = xpc_null_create();
  v18[2] = v13;
  v20 = v7[11];
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x18uLL);
  *v21 = v18;
  v21[1] = v15;
  v21[2] = v17;
  dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v19);
}

void AntennaModule::registerEventHandlers_sync(AntennaModule *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEFF0];
  v8 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
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

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v33 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v33) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4CF78;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v41 = v12;
  Service::registerEventHandler(this, &__p, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

  if (v41)
  {
    (*(*v41 + 40))(v41);
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_60:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBEFF8];
  v14 = strlen(*MEMORY[0x29EDBEFF8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v33 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v33) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E4CFF8;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v39 = v18;
  Service::registerEventHandler(this, &__p, v38);
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_62;
  }

  if (v39)
  {
    (*(*v39 + 40))();
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_62:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBF460];
  v20 = strlen(*MEMORY[0x29EDBF460]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v33 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v33) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E4D078;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v37 = v24;
  Service::registerEventHandler(this, &__p, v36);
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_64;
  }

  if (v37)
  {
    (*(*v37 + 40))();
  }

  if (SHIBYTE(v33) < 0)
  {
LABEL_64:
    operator delete(__p);
  }

LABEL_45:
  v25 = *MEMORY[0x29EDBE618];
  v26 = strlen(*MEMORY[0x29EDBE618]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&__p + 1) = v27;
    v33 = v29 | 0x8000000000000000;
    *&__p = v28;
    goto LABEL_53;
  }

  HIBYTE(v33) = v26;
  v28 = &__p;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v35 = 0;
  v30 = operator new(0x20uLL);
  *v30 = &unk_2A1E4D0F8;
  v30[1] = this;
  v30[2] = v4;
  v30[3] = v6;
  v35 = v30;
  Service::registerEventHandler(this, &__p, v34);
  if (v35 == v34)
  {
    (*(*v35 + 32))(v35);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_66:
    operator delete(__p);
    goto LABEL_58;
  }

  if (v35)
  {
    (*(*v35 + 40))();
  }

  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_66;
  }

LABEL_58:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v31 = *MEMORY[0x29EDCA608];
}

void AntennaModule::sleep(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::sleep(dispatch::group_session)::$_0>(AntennaModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void AntennaModule::wake(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::wake(dispatch::group_session)::$_0>(AntennaModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void AntennaModule::setProperty_sync(AntennaModule *this, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C272BA0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00])
  {
    v6 = *(this + 13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "Failed to get input!", &buf, 2u);
    }

    return;
  }

  memset(&buf, 170, sizeof(buf));
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED18]);
  v99.__r_.__value_.__r.__words[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v99.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&buf, &v99, "", v8);
  xpc_release(v99.__r_.__value_.__l.__data_);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size && MEMORY[0x29C272BA0](*a2) == v5)
  {
    v10 = *MEMORY[0x29EDBEFD0];
    v11 = strlen(*MEMORY[0x29EDBEFD0]);
    v12 = v11;
    v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v11 != -1)
      {
        v14 = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ >= v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = buf.__r_.__value_.__l.__size_;
        }

        if (memcmp(buf.__r_.__value_.__l.__data_, v10, v16))
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v11 != -1)
    {
      v14 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      if (memcmp(&buf, v10, v15))
      {
        goto LABEL_27;
      }

LABEL_23:
      if (v14 == v12)
      {
        xdict.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        v17 = *MEMORY[0x29EDBEA98];
        v99.__r_.__value_.__r.__words[0] = a2;
        v99.__r_.__value_.__l.__size_ = v17;
        xpc::dict::object_proxy::operator xpc::dict(&v99, &xdict);
        if (MEMORY[0x29C272BA0](xdict.__r_.__value_.__r.__words[0]) == v5)
        {
          memset(&v99, 170, sizeof(v99));
          v18 = xpc_dictionary_get_value(xdict.__r_.__value_.__l.__data_, *MEMORY[0x29EDBF838]);
          object = v18;
          if (v18)
          {
            xpc_retain(v18);
          }

          else
          {
            object = xpc_null_create();
          }

          xpc::dyn_cast_or_default(&v99, &object, "", v19);
          xpc_release(object);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v98, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
          }

          else
          {
            v98 = v99;
          }

          AntennaModule::setPreference_sync<std::string>(this, &buf, &v98);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }
        }

        xpc_release(xdict.__r_.__value_.__l.__data_);
        goto LABEL_73;
      }

LABEL_27:
      v20 = strlen(*MEMORY[0x29EDBE978]);
      v21 = v20;
      if ((v13 & 0x80000000) != 0)
      {
        if (v20 != -1)
        {
          v23 = buf.__r_.__value_.__l.__size_;
          v22 = buf.__r_.__value_.__r.__words[0];
LABEL_32:
          if (v23 >= v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v23;
          }

          if (!memcmp(v22, *MEMORY[0x29EDBE978], v24) && v23 == v21)
          {
            memset(&v99, 170, sizeof(v99));
            v25 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEA98]);
            xdict.__r_.__value_.__r.__words[0] = v25;
            if (v25)
            {
              xpc_retain(v25);
            }

            else
            {
              xdict.__r_.__value_.__r.__words[0] = xpc_null_create();
            }

            xpc::dyn_cast_or_default(&v99, &xdict, "", v26);
            xpc_release(xdict.__r_.__value_.__l.__data_);
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v97, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
            }

            else
            {
              v97 = v99;
            }

            AntennaModule::setPreference_sync<std::string>(this, &buf, &v97);
            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              v38 = v97.__r_.__value_.__r.__words[0];
LABEL_61:
              operator delete(v38);
            }

LABEL_62:
            if ((SHIBYTE(v99.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_63;
          }

          v27 = strlen(*MEMORY[0x29EDBEBA0]);
          v28 = v27;
          if ((v13 & 0x80000000) != 0)
          {
            if (v27 != -1)
            {
              v30 = buf.__r_.__value_.__l.__size_;
              v29 = buf.__r_.__value_.__r.__words[0];
LABEL_44:
              if (v30 >= v28)
              {
                v31 = v28;
              }

              else
              {
                v31 = v30;
              }

              if (!memcmp(v29, *MEMORY[0x29EDBEBA0], v31) && v30 == v28)
              {
                object = 0xAAAAAAAAAAAAAAAALL;
                v32 = *MEMORY[0x29EDBEA98];
                v99.__r_.__value_.__r.__words[0] = a2;
                v99.__r_.__value_.__l.__size_ = v32;
                xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                if (MEMORY[0x29C272BA0](object) == v5)
                {
                  memset(&v99, 170, sizeof(v99));
                  v33 = *MEMORY[0x29EDBF670];
                  xdict.__r_.__value_.__r.__words[0] = &object;
                  xdict.__r_.__value_.__l.__size_ = v33;
                  xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                  xpc::dyn_cast_or_default(&v99, &v96, "", v34);
                  xpc_release(v96);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v95, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v95 = v99;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &buf, &v95);
                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v95.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v99.__r_.__value_.__l.__data_);
                  }
                }

LABEL_141:
                xpc_release(object);
                goto LABEL_73;
              }

              v35 = strlen(*MEMORY[0x29EDBED08]);
              v36 = v35;
              if ((v13 & 0x80000000) != 0)
              {
                if (v35 != -1)
                {
                  v13 = buf.__r_.__value_.__l.__size_;
                  p_buf = buf.__r_.__value_.__r.__words[0];
LABEL_78:
                  if (v13 >= v36)
                  {
                    v39 = v36;
                  }

                  else
                  {
                    v39 = v13;
                  }

                  if (!memcmp(p_buf, *MEMORY[0x29EDBED08], v39) && v13 == v36)
                  {
                    object = 0xAAAAAAAAAAAAAAAALL;
                    v40 = *MEMORY[0x29EDBEA98];
                    v99.__r_.__value_.__r.__words[0] = a2;
                    v99.__r_.__value_.__l.__size_ = v40;
                    xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                    if (MEMORY[0x29C272BA0](object) == v5)
                    {
                      memset(&v99, 170, sizeof(v99));
                      v41 = *MEMORY[0x29EDBF6E8];
                      xdict.__r_.__value_.__r.__words[0] = &object;
                      xdict.__r_.__value_.__l.__size_ = v41;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                      xpc::dyn_cast_or_default(&v99, &v96, "", v42);
                      xpc_release(v96);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v94, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v94 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v94);
                      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v94.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v99.__r_.__value_.__l.__data_);
                      }
                    }

                    goto LABEL_141;
                  }

                  if (!std::string::compare(&buf, *MEMORY[0x29EDBF530]))
                  {
                    object = 0xAAAAAAAAAAAAAAAALL;
                    v43 = *MEMORY[0x29EDBEA98];
                    v99.__r_.__value_.__r.__words[0] = a2;
                    v99.__r_.__value_.__l.__size_ = v43;
                    xpc::dict::object_proxy::operator xpc::dict(&v99, &object);
                    if (MEMORY[0x29C272BA0](object) == v5)
                    {
                      memset(&v99, 170, sizeof(v99));
                      v44 = *MEMORY[0x29EDBF818];
                      xdict.__r_.__value_.__r.__words[0] = &object;
                      xdict.__r_.__value_.__l.__size_ = v44;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                      xpc::dyn_cast_or_default(&v99, &v96, "", v45);
                      xpc_release(v96);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v93, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v93 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v93);
                      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v93.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v99.__r_.__value_.__l.__data_);
                      }
                    }

                    goto LABEL_141;
                  }

                  if (std::string::compare(&buf, *MEMORY[0x29EDBF558]))
                  {
                    if (!std::string::compare(&buf, *MEMORY[0x29EDBECA0]))
                    {
                      memset(&v99, 170, sizeof(v99));
                      v50 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v50;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v51);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v86, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v86 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v86);
                      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v86.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    else if (!std::string::compare(&buf, *MEMORY[0x29EDBF528]))
                    {
                      memset(&v99, 170, sizeof(v99));
                      v52 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v52;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v53);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v85, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v85 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v85);
                      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v85.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                      if (std::string::compare(&buf, *MEMORY[0x29EDBF510]))
                      {
                        if (std::string::compare(&buf, *MEMORY[0x29EDBF5A8]))
                        {
                          if (!std::string::compare(&buf, *MEMORY[0x29EDBE4F0]))
                          {
                            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                            {
                              std::string::__init_copy_ctor_external(&v82, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                            }

                            else
                            {
                              v82 = buf;
                            }

                            AntennaModule::setPreference_sync<std::string>(this, &buf, &v82);
                            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v82.__r_.__value_.__l.__data_);
                            }

                            object = 0xAAAAAAAAAAAAAAAALL;
                            v69 = *MEMORY[0x29EDBEA98];
                            v99.__r_.__value_.__r.__words[0] = a2;
                            v99.__r_.__value_.__l.__size_ = v69;
                            xpc::dict::object_proxy::operator xpc::object(&v99, &xdict);
                            v70 = xpc_null_create();
                            v71 = xdict.__r_.__value_.__r.__words[0];
                            object = xdict.__r_.__value_.__r.__words[0];
                            if (xdict.__r_.__value_.__r.__words[0] && MEMORY[0x29C272BA0](xdict.__r_.__value_.__r.__words[0]) == v5)
                            {
                              xpc_retain(v71);
                            }

                            else
                            {
                              object = xpc_null_create();
                            }

                            if (MEMORY[0x29C272BA0]() != v5)
                            {
                              xpc::dict::operator=(&object, v70);
                            }

                            xpc_release(v70);
                            xpc_release(xdict.__r_.__value_.__l.__data_);
                            v72 = *MEMORY[0x29EDBF1D8];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBF1D8]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v72;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            xpc::dyn_cast_or_default(__p, &v96, "", v73);
                            AntennaModule::setPreference_sync<std::string>(this, &v99, __p);
                            if (v81 < 0)
                            {
                              operator delete(__p[0]);
                            }

                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v74 = *MEMORY[0x29EDBE8B8];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBE8B8]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v74;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v75 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99, v75);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v76 = *MEMORY[0x29EDBEA90];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBEA90]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v76;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v77 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99, v77);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            v78 = *MEMORY[0x29EDBE698];
                            std::string::basic_string[abi:ne200100]<0>(&v99, *MEMORY[0x29EDBE698]);
                            xdict.__r_.__value_.__r.__words[0] = &object;
                            xdict.__r_.__value_.__l.__size_ = v78;
                            xpc::dict::object_proxy::operator xpc::object(&xdict, &v96);
                            v79 = xpc::dyn_cast_or_default(&v96, 0x7FFF);
                            AntennaModule::setPreference_sync<unsigned int>(this, &v99, v79);
                            xpc_release(v96);
                            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v99.__r_.__value_.__l.__data_);
                            }

                            xpc_release(object);
                          }

                          goto LABEL_73;
                        }

                        memset(&v99, 170, sizeof(v99));
                        v56 = *MEMORY[0x29EDBEA98];
                        xdict.__r_.__value_.__r.__words[0] = a2;
                        xdict.__r_.__value_.__l.__size_ = v56;
                        xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                        xpc::dyn_cast_or_default(&v99, &object, "", v57);
                        xpc_release(object);
                        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&v83, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v83 = v99;
                        }

                        AntennaModule::setPreference_sync<std::string>(this, &buf, &v83);
                        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v83.__r_.__value_.__l.__data_);
                        }

                        v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
                        if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v59 = &v99;
                        }

                        else
                        {
                          v59 = v99.__r_.__value_.__r.__words[0];
                        }

                        v60 = strlen(*MEMORY[0x29EDBF878]);
                        if (strncasecmp(v59, *MEMORY[0x29EDBF878], v60))
                        {
                          v61 = *MEMORY[0x29EDBF820];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF820]);
                          object = a2;
                          v90 = v61;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v62 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v62);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v63 = *MEMORY[0x29EDBF7D8];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF7D8]);
                          object = a2;
                          v90 = v63;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v64 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v64);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v65 = *MEMORY[0x29EDBF610];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF610]);
                          object = a2;
                          v90 = v65;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v66 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v66);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v67 = *MEMORY[0x29EDBF608];
                          std::string::basic_string[abi:ne200100]<0>(&xdict, *MEMORY[0x29EDBF608]);
                          object = a2;
                          v90 = v67;
                          xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                          v68 = xpc::dyn_cast_or_default(&v96, 0);
                          AntennaModule::setPreference_sync<int>(this, &xdict, v68);
                          xpc_release(v96);
                          if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(xdict.__r_.__value_.__l.__data_);
                          }

                          v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
                        }

                        if ((v58 & 0x80) == 0)
                        {
                          goto LABEL_73;
                        }

LABEL_63:
                        operator delete(v99.__r_.__value_.__l.__data_);
                        goto LABEL_73;
                      }

                      memset(&v99, 170, sizeof(v99));
                      v54 = *MEMORY[0x29EDBEA98];
                      xdict.__r_.__value_.__r.__words[0] = a2;
                      xdict.__r_.__value_.__l.__size_ = v54;
                      xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                      xpc::dyn_cast_or_default(&v99, &object, "", v55);
                      xpc_release(object);
                      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v84, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v84 = v99;
                      }

                      AntennaModule::setPreference_sync<std::string>(this, &buf, &v84);
                      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
                      {
                        v38 = v84.__r_.__value_.__r.__words[0];
                        goto LABEL_61;
                      }
                    }

                    goto LABEL_62;
                  }

                  memset(&v99, 170, sizeof(v99));
                  v46 = *MEMORY[0x29EDBE720];
                  xdict.__r_.__value_.__r.__words[0] = a2;
                  xdict.__r_.__value_.__l.__size_ = v46;
                  xpc::dict::object_proxy::operator xpc::object(&xdict, &object);
                  xpc::dyn_cast_or_default(&v99, &object, "", v47);
                  xpc_release(object);
                  memset(&xdict, 170, sizeof(xdict));
                  v48 = *MEMORY[0x29EDBE960];
                  object = a2;
                  v90 = v48;
                  xpc::dict::object_proxy::operator xpc::object(&object, &v96);
                  xpc::dyn_cast_or_default(&xdict, &v96, "", v49);
                  xpc_release(v96);
                  std::string::basic_string[abi:ne200100]<0>(&object, v46);
                  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v88, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v88 = v99;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &object, &v88);
                  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v88.__r_.__value_.__l.__data_);
                  }

                  if (v91 < 0)
                  {
                    operator delete(object);
                  }

                  std::string::basic_string[abi:ne200100]<0>(&object, v48);
                  if (SHIBYTE(xdict.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v87, xdict.__r_.__value_.__l.__data_, xdict.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v87 = xdict;
                  }

                  AntennaModule::setPreference_sync<std::string>(this, &object, &v87);
                  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v87.__r_.__value_.__l.__data_);
                    if ((v91 & 0x80000000) == 0)
                    {
LABEL_126:
                      if ((SHIBYTE(xdict.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_130;
                    }
                  }

                  else if ((v91 & 0x80000000) == 0)
                  {
                    goto LABEL_126;
                  }

                  operator delete(object);
                  if ((SHIBYTE(xdict.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_62;
                  }

LABEL_130:
                  v38 = xdict.__r_.__value_.__r.__words[0];
                  goto LABEL_61;
                }
              }

              else if (v35 != -1)
              {
                p_buf = &buf;
                goto LABEL_78;
              }

              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else if (v27 != -1)
          {
            v29 = &buf;
            v30 = v13;
            goto LABEL_44;
          }

          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else if (v20 != -1)
      {
        v22 = &buf;
        v23 = v13;
        goto LABEL_32;
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_73:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_29761BD48(_Unwind_Exception *a1)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<std::string>(uint64_t a1, char *a2, uint64_t a3)
{
  v27 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v25.__r_.__value_.__r.__words[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E43EE0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v7;
    *(&xmmword_2A18CAF18 + 1) = v6;
    if (!v8)
    {
      *&v24 = v7;
      *(&v24 + 1) = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18CAF18 + 1);
  LODWORD(v7) = xmmword_2A18CAF18;
  v24 = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &buf[16];
    *&buf[16] = 0;
    buf[23] = v10 + 16;
    *buf = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    *&buf[8] = v10 + 16;
    *&buf[16] = v12 | 0x8000000000000000;
    *buf = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 1;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  v14[v10] = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = __p;
  }

  if (buf[23] >= 0)
  {
    v17 = buf;
  }

  else
  {
    v17 = *buf;
  }

  v18 = ctu::cf::plist_adapter::set<std::string>(v7, &v25, v17);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      operator delete(*buf);
      v19 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v19 = *(&v24 + 1);
  if (!*(&v24 + 1))
  {
LABEL_41:
    if (v18)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_40:
  if (atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_41;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    goto LABEL_43;
  }

LABEL_42:
  v20 = *(a1 + 104);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *&v25.__r_.__value_.__l.__data_ = *"AntennaSetting::";
    v25.__r_.__value_.__r.__words[2] = 0x1000000000000000;
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = &v25;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29761C674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
      _Unwind_Resume(a1);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a25);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_29761C748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AntennaModule::setPreference_sync<int>(uint64_t a1, char *a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E43EE0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v7;
    *(&xmmword_2A18CAF18 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18CAF18 + 1);
  v7 = xmmword_2A18CAF18;
  *buf = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &v28;
    v28 = 0;
    HIBYTE(v28) = v10 + 16;
    *__p = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    __p[1] = (v10 + 16);
    v28 = v12 | 0x8000000000000000;
    __p[0] = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 2;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  *(v14 + v10) = 0;
  if (v28 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v29, v17);
  v18 = v29[0];
  v19 = *MEMORY[0x29EDB8ED8];
  valuePtr = a3;
  v20 = CFNumberCreate(v19, kCFNumberIntType, &valuePtr);
  v29[1] = v20;
  if (v20)
  {
    v21 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v18, v20, v7[1], v7[2], *MEMORY[0x29EDB8FA8]);
    v22 = CFPreferencesSynchronize(v7[1], v7[2], v21) != 0;
    CFRelease(v20);
    MEMORY[0x29C270E70](v29);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    operator delete(__p[0]);
    v23 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v22 = 0;
  MEMORY[0x29C270E70](v29);
  if (SHIBYTE(v28) < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v23 = *&buf[8];
  if (!*&buf[8])
  {
LABEL_33:
    if (v22)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_32:
  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (v22)
  {
    goto LABEL_35;
  }

LABEL_34:
  v24 = *(a1 + 104);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *__p = *"AntennaSetting::";
    v28 = 0x1000000000000000;
    if (a2[23] >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = __p;
    *&buf[12] = 2080;
    *&buf[14] = v26;
    _os_log_error_impl(&dword_297476000, v24, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_35:
  v25 = *MEMORY[0x29EDCA608];
}

void sub_29761CB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29761CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  JUMPOUT(0x29761CB78);
}

void AntennaModule::setPreference_sync<unsigned int>(uint64_t a1, char *a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18CAF18)
  {
    v7 = operator new(0x18uLL);
    MEMORY[0x29C270EE0](v7, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v7;
    v6 = operator new(0x20uLL);
    *v6 = &unk_2A1E43EE0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = *(&xmmword_2A18CAF18 + 1);
    *&xmmword_2A18CAF18 = v7;
    *(&xmmword_2A18CAF18 + 1) = v6;
    if (!v8)
    {
      *buf = v7;
      *&buf[8] = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v6 = *(&xmmword_2A18CAF18 + 1);
  v7 = xmmword_2A18CAF18;
  *buf = xmmword_2A18CAF18;
  if (*(&xmmword_2A18CAF18 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  v11 = v10 + 16;
  if (v10 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v11 < 0x17)
  {
    v14 = &v24;
    v24 = 0;
    HIBYTE(v24) = v10 + 16;
    *__p = *"AntennaSetting::";
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = operator new(v12);
    __p[1] = (v10 + 16);
    v24 = v12 | 0x8000000000000000;
    __p[0] = v13;
    *v13 = *"AntennaSetting::";
    v14 = v13 + 2;
  }

  v15 = *a2;
  if (v9 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  memmove(v14, v16, v10);
LABEL_23:
  *(v14 + v10) = 0;
  if (v24 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v25, v17);
  v18 = ctu::cf::plist_adapter::set<unsigned int>(v7, a3, v25, 1);
  MEMORY[0x29C270E70](&v25);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v18)
    {
      goto LABEL_32;
    }
  }

  else if (v18)
  {
    goto LABEL_32;
  }

  v20 = *(a1 + 104);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *__p = *"AntennaSetting::";
    v24 = 0x1000000000000000;
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = __p;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "Failed to set property with %s%s", buf, 0x16u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  v21 = *MEMORY[0x29EDCA608];
}

void sub_29761CEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void AntennaModule::initializeProperty(AntennaModule *this)
{
  for (i = *(this + 14); i; i = *i)
  {
    memset(&v13, 170, sizeof(v13));
    if (*(i + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, i[1], i[2]);
      v11 = this;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_8:
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(i + 1);
      v13.__r_.__value_.__r.__words[2] = i[3];
      *&v13.__r_.__value_.__l.__data_ = v3;
      v11 = this;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_8;
      }
    }

    __p = v13;
LABEL_9:
    v4 = *(this + 10);
    if (!v4 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    v8 = operator new(0x20uLL);
    *v8 = v11;
    *(v8 + 8) = __p;
    memset(&__p, 0, sizeof(__p));
    v9 = *(this + 11);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = operator new(0x18uLL);
    *v10 = v8;
    v10[1] = v5;
    v10[2] = v7;
    dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::initializeProperty(void)::$_0>(AntennaModule::initializeProperty(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,dispatch_queue_s *::default_delete<AntennaModule::initializeProperty(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

        continue;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_17:
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29761D14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AntennaModule::initializeProperty_sync(uint64_t a1, uint64_t a2)
{
  v351[0] = xpc_null_create();
  v4 = *MEMORY[0x29EDBEFD0];
  v5 = strlen(*MEMORY[0x29EDBEFD0]);
  v6 = v5;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (v5 == -1)
    {
      goto LABEL_685;
    }

    v9 = *a2;
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
    v9 = a2;
    if (v6 == -1)
    {
LABEL_685:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = !memcmp(v9, v4, v10) && v8 == v6;
  v12 = MEMORY[0x29EDCAA00];
  if (v11)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_2A18CAF18)
    {
      v19 = operator new(0x18uLL);
      MEMORY[0x29C270EE0](v19, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v347[0] = v19;
      v18 = operator new(0x20uLL);
      *v18 = &unk_2A1E43EE0;
      v18[1] = 0;
      v18[2] = 0;
      v18[3] = v19;
      v29 = *(&xmmword_2A18CAF18 + 1);
      *&xmmword_2A18CAF18 = v19;
      *(&xmmword_2A18CAF18 + 1) = v18;
      if (!v29)
      {
        *&__p = v19;
        *(&__p + 1) = v18;
        goto LABEL_61;
      }

      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }
    }

    v18 = *(&xmmword_2A18CAF18 + 1);
    v19 = xmmword_2A18CAF18;
    __p = xmmword_2A18CAF18;
    if (!*(&xmmword_2A18CAF18 + 1))
    {
LABEL_62:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      v39 = *(a2 + 23);
      if (v39 >= 0)
      {
        v40 = *(a2 + 23);
      }

      else
      {
        v40 = *(a2 + 8);
      }

      v41 = v40 + 16;
      if (v40 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v41 < 0x17)
      {
        v44 = &v347[1];
        *&v347[1] = 0;
        BYTE7(v347[1]) = v40 + 16;
        v347[0] = *"AntennaSetting::";
        if (!v40)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if ((v41 | 7) == 0x17)
        {
          v42 = 25;
        }

        else
        {
          v42 = (v41 | 7) + 1;
        }

        v43 = operator new(v42);
        *(&v347[0] + 1) = v40 + 16;
        *&v347[1] = v42 | 0x8000000000000000;
        *&v347[0] = v43;
        *v43 = *"AntennaSetting::";
        v44 = v43 + 1;
      }

      v45 = *a2;
      if (v39 >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = *a2;
      }

      memmove(v44, v46, v40);
LABEL_76:
      *(v44 + v40) = 0;
      if ((SBYTE7(v347[1]) & 0x80u) == 0)
      {
        v47 = v347;
      }

      else
      {
        v47 = *&v347[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&value, v47);
      v48 = (**v19)(v19, value);
      if (v48)
      {
        v49 = ctu::cf::assign();
        CFRelease(v48);
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v49 = 0;
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
LABEL_81:
          v50 = *(&__p + 1);
          if (!*(&__p + 1))
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }
      }

      operator delete(*&v347[0]);
      v50 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_86;
      }

LABEL_85:
      if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
        if (!v49)
        {
          goto LABEL_569;
        }

LABEL_87:
        v51 = xpc_dictionary_create(0, 0, 0);
        if (v51 || (v51 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v51) == v12)
          {
            xpc_retain(v51);
            v52 = v51;
          }

          else
          {
            v52 = xpc_null_create();
          }
        }

        else
        {
          v52 = xpc_null_create();
          v51 = 0;
        }

        xpc_release(v51);
        v76 = xpc_null_create();
        v77 = v351[0];
        v351[0] = v52;
        xpc_release(v77);
        xpc_release(v76);
        v78 = xpc_string_create(v4);
        if (!v78)
        {
          v78 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v78);
        v79 = xpc_null_create();
        xpc_release(v78);
        xpc_release(v79);
        v80 = xpc_dictionary_create(0, 0, 0);
        if (v80 || (v80 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v80) == v12)
          {
            xpc_retain(v80);
            v81 = v80;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v80 = 0;
        }

        xpc_release(v80);
        if (v350 >= 0)
        {
          v82 = &v348;
        }

        else
        {
          v82 = v348;
        }

        v83 = xpc_string_create(v82);
        if (!v83)
        {
          v83 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF838], v83);
        v84 = xpc_null_create();
        xpc_release(v83);
        xpc_release(v84);
        if (v81)
        {
LABEL_476:
          xpc_retain(v81);
          v232 = v81;
LABEL_478:
          xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBEA98], v232);
          v233 = xpc_null_create();
          xpc_release(v232);
          xpc_release(v233);
          xpc_release(v81);
          goto LABEL_569;
        }

LABEL_477:
        v232 = xpc_null_create();
        goto LABEL_478;
      }

LABEL_86:
      if (!v49)
      {
        goto LABEL_569;
      }

      goto LABEL_87;
    }

LABEL_61:
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_62;
  }

  v13 = *MEMORY[0x29EDBE978];
  v14 = strlen(*MEMORY[0x29EDBE978]);
  v15 = v14;
  if ((v7 & 0x80000000) != 0)
  {
    if (v14 == -1)
    {
      goto LABEL_686;
    }

    v17 = *a2;
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = v7;
    v17 = a2;
    if (v15 == -1)
    {
LABEL_686:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v16 >= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = v16;
  }

  if (!memcmp(v17, v13, v20) && v16 == v15)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    if (!xmmword_2A18CAF18)
    {
      v28 = operator new(0x18uLL);
      MEMORY[0x29C270EE0](v28, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
      *&v347[0] = v28;
      v27 = operator new(0x20uLL);
      *v27 = &unk_2A1E43EE0;
      v27[1] = 0;
      v27[2] = 0;
      v27[3] = v28;
      v38 = *(&xmmword_2A18CAF18 + 1);
      *&xmmword_2A18CAF18 = v28;
      *(&xmmword_2A18CAF18 + 1) = v27;
      if (!v38)
      {
        *&__p = v28;
        *(&__p + 1) = v27;
        goto LABEL_114;
      }

      if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }
    }

    v27 = *(&xmmword_2A18CAF18 + 1);
    v28 = xmmword_2A18CAF18;
    __p = xmmword_2A18CAF18;
    if (!*(&xmmword_2A18CAF18 + 1))
    {
LABEL_115:
      pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      v62 = *(a2 + 23);
      if (v62 >= 0)
      {
        v63 = *(a2 + 23);
      }

      else
      {
        v63 = *(a2 + 8);
      }

      v64 = v63 + 16;
      if (v63 + 16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v64 < 0x17)
      {
        v67 = &v347[1];
        *&v347[1] = 0;
        BYTE7(v347[1]) = v63 + 16;
        v347[0] = *"AntennaSetting::";
        if (!v63)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if ((v64 | 7) == 0x17)
        {
          v65 = 25;
        }

        else
        {
          v65 = (v64 | 7) + 1;
        }

        v66 = operator new(v65);
        *(&v347[0] + 1) = v63 + 16;
        *&v347[1] = v65 | 0x8000000000000000;
        *&v347[0] = v66;
        *v66 = *"AntennaSetting::";
        v67 = v66 + 1;
      }

      v68 = *a2;
      if (v62 >= 0)
      {
        v69 = a2;
      }

      else
      {
        v69 = *a2;
      }

      memmove(v67, v69, v63);
LABEL_129:
      *(v67 + v63) = 0;
      if ((SBYTE7(v347[1]) & 0x80u) == 0)
      {
        v70 = v347;
      }

      else
      {
        v70 = *&v347[0];
      }

      ctu::cf::MakeCFString::MakeCFString(&value, v70);
      v71 = (**v28)(v28, value);
      if (v71)
      {
        v72 = ctu::cf::assign();
        CFRelease(v71);
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v72 = 0;
        MEMORY[0x29C270E70](&value);
        if ((SBYTE7(v347[1]) & 0x80000000) == 0)
        {
LABEL_134:
          v73 = *(&__p + 1);
          if (!*(&__p + 1))
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }
      }

      operator delete(*&v347[0]);
      v73 = *(&__p + 1);
      if (!*(&__p + 1))
      {
        goto LABEL_139;
      }

LABEL_138:
      if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v73->__on_zero_shared)(v73);
        std::__shared_weak_count::__release_weak(v73);
        if (!v72)
        {
          goto LABEL_569;
        }

LABEL_140:
        v74 = xpc_dictionary_create(0, 0, 0);
        if (v74 || (v74 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v74) == v12)
          {
            xpc_retain(v74);
            v75 = v74;
          }

          else
          {
            v75 = xpc_null_create();
          }
        }

        else
        {
          v75 = xpc_null_create();
          v74 = 0;
        }

        xpc_release(v74);
        v108 = xpc_null_create();
        v109 = v351[0];
        v351[0] = v75;
        xpc_release(v109);
        xpc_release(v108);
        v110 = xpc_string_create(v13);
        if (!v110)
        {
          v110 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v110);
        v111 = xpc_null_create();
        xpc_release(v110);
        xpc_release(v111);
        if (v350 >= 0)
        {
          v112 = &v348;
        }

        else
        {
          v112 = v348;
        }

        v113 = xpc_string_create(v112);
        if (!v113)
        {
          v113 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBEA98], v113);
        v114 = xpc_null_create();
        xpc_release(v113);
        xpc_release(v114);
        goto LABEL_569;
      }

LABEL_139:
      if (!v72)
      {
        goto LABEL_569;
      }

      goto LABEL_140;
    }

LABEL_114:
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_115;
  }

  v22 = *MEMORY[0x29EDBEBA0];
  v23 = strlen(*MEMORY[0x29EDBEBA0]);
  v24 = v23;
  if ((v7 & 0x80000000) == 0)
  {
    v25 = v7;
    if (v23 != -1)
    {
      if (v7 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = v7;
      }

      if (memcmp(a2, v22, v26))
      {
        goto LABEL_50;
      }

LABEL_46:
      if (v25 != v24)
      {
        goto LABEL_50;
      }

      v348 = 0;
      v349 = 0;
      v350 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18CAF18)
      {
        v32 = operator new(0x18uLL);
        MEMORY[0x29C270EE0](v32, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v347[0] = v32;
        v31 = operator new(0x20uLL);
        *v31 = &unk_2A1E43EE0;
        v31[1] = 0;
        v31[2] = 0;
        v31[3] = v32;
        v61 = *(&xmmword_2A18CAF18 + 1);
        *&xmmword_2A18CAF18 = v32;
        *(&xmmword_2A18CAF18 + 1) = v31;
        if (!v61)
        {
          *&__p = v32;
          *(&__p + 1) = v31;
          goto LABEL_179;
        }

        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }
      }

      v31 = *(&xmmword_2A18CAF18 + 1);
      v32 = xmmword_2A18CAF18;
      __p = xmmword_2A18CAF18;
      if (!*(&xmmword_2A18CAF18 + 1))
      {
LABEL_180:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v94 = *(a2 + 23);
        if (v94 >= 0)
        {
          v95 = *(a2 + 23);
        }

        else
        {
          v95 = *(a2 + 8);
        }

        v96 = v95 + 16;
        if (v95 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v96 < 0x17)
        {
          v99 = &v347[1];
          *&v347[1] = 0;
          BYTE7(v347[1]) = v95 + 16;
          v347[0] = *"AntennaSetting::";
          if (!v95)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if ((v96 | 7) == 0x17)
          {
            v97 = 25;
          }

          else
          {
            v97 = (v96 | 7) + 1;
          }

          v98 = operator new(v97);
          *(&v347[0] + 1) = v95 + 16;
          *&v347[1] = v97 | 0x8000000000000000;
          *&v347[0] = v98;
          *v98 = *"AntennaSetting::";
          v99 = v98 + 1;
        }

        v100 = *a2;
        if (v94 >= 0)
        {
          v101 = a2;
        }

        else
        {
          v101 = *a2;
        }

        memmove(v99, v101, v95);
LABEL_194:
        *(v99 + v95) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v102 = v347;
        }

        else
        {
          v102 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v102);
        v103 = (**v32)(v32, value);
        if (v103)
        {
          v104 = ctu::cf::assign();
          CFRelease(v103);
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }
        }

        else
        {
          v104 = 0;
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
LABEL_199:
            v105 = *(&__p + 1);
            if (!*(&__p + 1))
            {
              goto LABEL_205;
            }

            goto LABEL_203;
          }
        }

        operator delete(*&v347[0]);
        v105 = *(&__p + 1);
        if (!*(&__p + 1))
        {
          goto LABEL_205;
        }

LABEL_203:
        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

LABEL_205:
        if (!v104)
        {
          goto LABEL_569;
        }

        v106 = xpc_dictionary_create(0, 0, 0);
        if (v106 || (v106 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v106) == v12)
          {
            xpc_retain(v106);
            v107 = v106;
          }

          else
          {
            v107 = xpc_null_create();
          }
        }

        else
        {
          v107 = xpc_null_create();
          v106 = 0;
        }

        xpc_release(v106);
        v137 = xpc_null_create();
        v138 = v351[0];
        v351[0] = v107;
        xpc_release(v138);
        xpc_release(v137);
        v139 = xpc_string_create(v22);
        if (!v139)
        {
          v139 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v139);
        v140 = xpc_null_create();
        xpc_release(v139);
        xpc_release(v140);
        v141 = xpc_dictionary_create(0, 0, 0);
        if (v141 || (v141 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v141) == v12)
          {
            xpc_retain(v141);
            v81 = v141;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v141 = 0;
        }

        xpc_release(v141);
        if (v350 >= 0)
        {
          v142 = &v348;
        }

        else
        {
          v142 = v348;
        }

        v143 = xpc_string_create(v142);
        if (!v143)
        {
          v143 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF670], v143);
        v144 = xpc_null_create();
        xpc_release(v143);
        xpc_release(v144);
        if (v81)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_179:
      atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_180;
    }

LABEL_688:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v23 == -1)
  {
    goto LABEL_688;
  }

  v25 = *(a2 + 8);
  if (v25 >= v23)
  {
    v30 = v23;
  }

  else
  {
    v30 = *(a2 + 8);
  }

  if (!memcmp(*a2, v22, v30))
  {
    goto LABEL_46;
  }

LABEL_50:
  v33 = *MEMORY[0x29EDBED08];
  v34 = strlen(*MEMORY[0x29EDBED08]);
  v35 = v34;
  if ((v7 & 0x80000000) == 0)
  {
    v36 = v7;
    if (v34 != -1)
    {
      if (v7 >= v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v7;
      }

      if (memcmp(a2, v33, v37))
      {
        goto LABEL_103;
      }

LABEL_99:
      if (v36 != v35)
      {
        goto LABEL_103;
      }

      v348 = 0;
      v349 = 0;
      v350 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18CAF18)
      {
        v55 = operator new(0x18uLL);
        MEMORY[0x29C270EE0](v55, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v347[0] = v55;
        v54 = operator new(0x20uLL);
        *v54 = &unk_2A1E43EE0;
        v54[1] = 0;
        v54[2] = 0;
        v54[3] = v55;
        v93 = *(&xmmword_2A18CAF18 + 1);
        *&xmmword_2A18CAF18 = v55;
        *(&xmmword_2A18CAF18 + 1) = v54;
        if (!v93)
        {
          *&__p = v55;
          *(&__p + 1) = v54;
          goto LABEL_238;
        }

        if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v93->__on_zero_shared)(v93);
          std::__shared_weak_count::__release_weak(v93);
        }
      }

      v54 = *(&xmmword_2A18CAF18 + 1);
      v55 = xmmword_2A18CAF18;
      __p = xmmword_2A18CAF18;
      if (!*(&xmmword_2A18CAF18 + 1))
      {
LABEL_239:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v123 = *(a2 + 23);
        if (v123 >= 0)
        {
          v124 = *(a2 + 23);
        }

        else
        {
          v124 = *(a2 + 8);
        }

        v125 = v124 + 16;
        if (v124 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v125 < 0x17)
        {
          v128 = &v347[1];
          *&v347[1] = 0;
          BYTE7(v347[1]) = v124 + 16;
          v347[0] = *"AntennaSetting::";
          if (!v124)
          {
            goto LABEL_253;
          }
        }

        else
        {
          if ((v125 | 7) == 0x17)
          {
            v126 = 25;
          }

          else
          {
            v126 = (v125 | 7) + 1;
          }

          v127 = operator new(v126);
          *(&v347[0] + 1) = v124 + 16;
          *&v347[1] = v126 | 0x8000000000000000;
          *&v347[0] = v127;
          *v127 = *"AntennaSetting::";
          v128 = v127 + 1;
        }

        v129 = *a2;
        if (v123 >= 0)
        {
          v130 = a2;
        }

        else
        {
          v130 = *a2;
        }

        memmove(v128, v130, v124);
LABEL_253:
        *(v128 + v124) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v131 = v347;
        }

        else
        {
          v131 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v131);
        v132 = (**v55)(v55, value);
        if (v132)
        {
          v133 = ctu::cf::assign();
          CFRelease(v132);
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v133 = 0;
          MEMORY[0x29C270E70](&value);
          if ((SBYTE7(v347[1]) & 0x80000000) == 0)
          {
LABEL_258:
            v134 = *(&__p + 1);
            if (!*(&__p + 1))
            {
              goto LABEL_264;
            }

            goto LABEL_262;
          }
        }

        operator delete(*&v347[0]);
        v134 = *(&__p + 1);
        if (!*(&__p + 1))
        {
          goto LABEL_264;
        }

LABEL_262:
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }

LABEL_264:
        if (!v133)
        {
          goto LABEL_569;
        }

        v135 = xpc_dictionary_create(0, 0, 0);
        if (v135 || (v135 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v135) == v12)
          {
            xpc_retain(v135);
            v136 = v135;
          }

          else
          {
            v136 = xpc_null_create();
          }
        }

        else
        {
          v136 = xpc_null_create();
          v135 = 0;
        }

        xpc_release(v135);
        v171 = xpc_null_create();
        v172 = v351[0];
        v351[0] = v136;
        xpc_release(v172);
        xpc_release(v171);
        v173 = xpc_string_create(v33);
        if (!v173)
        {
          v173 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v173);
        v174 = xpc_null_create();
        xpc_release(v173);
        xpc_release(v174);
        v175 = xpc_dictionary_create(0, 0, 0);
        if (v175 || (v175 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v175) == v12)
          {
            xpc_retain(v175);
            v81 = v175;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v175 = 0;
        }

        xpc_release(v175);
        if (v350 >= 0)
        {
          v176 = &v348;
        }

        else
        {
          v176 = v348;
        }

        v177 = xpc_string_create(v176);
        if (!v177)
        {
          v177 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF6E8], v177);
        v178 = xpc_null_create();
        xpc_release(v177);
        xpc_release(v178);
        if (v81)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_238:
      atomic_fetch_add_explicit(v54 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_239;
    }

LABEL_690:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v34 == -1)
  {
    goto LABEL_690;
  }

  v36 = *(a2 + 8);
  if (v36 >= v34)
  {
    v53 = v34;
  }

  else
  {
    v53 = *(a2 + 8);
  }

  if (!memcmp(*a2, v33, v53))
  {
    goto LABEL_99;
  }

LABEL_103:
  v56 = *MEMORY[0x29EDBF530];
  v57 = strlen(*MEMORY[0x29EDBF530]);
  v58 = v57;
  if ((v7 & 0x80000000) == 0)
  {
    v59 = v7;
    if (v57 != -1)
    {
      if (v7 >= v57)
      {
        v60 = v57;
      }

      else
      {
        v60 = v7;
      }

      if (memcmp(a2, v56, v60))
      {
        goto LABEL_172;
      }

LABEL_168:
      if (v59 != v58)
      {
        goto LABEL_172;
      }

      v348 = 0;
      v349 = 0;
      v350 = 0;
      pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
      if (!xmmword_2A18CAF18)
      {
        v87 = operator new(0x18uLL);
        MEMORY[0x29C270EE0](v87, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
        *&v347[0] = v87;
        v86 = operator new(0x20uLL);
        *v86 = &unk_2A1E43EE0;
        v86[1] = 0;
        v86[2] = 0;
        v86[3] = v87;
        v122 = *(&xmmword_2A18CAF18 + 1);
        *&xmmword_2A18CAF18 = v87;
        *(&xmmword_2A18CAF18 + 1) = v86;
        if (!v122)
        {
          *&__p = v87;
          *(&__p + 1) = v86;
          goto LABEL_311;
        }

        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
        }
      }

      v86 = *(&xmmword_2A18CAF18 + 1);
      v87 = xmmword_2A18CAF18;
      __p = xmmword_2A18CAF18;
      if (!*(&xmmword_2A18CAF18 + 1))
      {
LABEL_312:
        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v158 = *(a2 + 23);
        if (v158 >= 0)
        {
          v159 = *(a2 + 23);
        }

        else
        {
          v159 = *(a2 + 8);
        }

        v160 = v159 + 16;
        if (v159 + 16 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v160 < 0x17)
        {
          v163 = &v347[1];
          *&v347[1] = 0;
          BYTE7(v347[1]) = v159 + 16;
          v347[0] = *"AntennaSetting::";
          if (!v159)
          {
            goto LABEL_326;
          }
        }

        else
        {
          if ((v160 | 7) == 0x17)
          {
            v161 = 25;
          }

          else
          {
            v161 = (v160 | 7) + 1;
          }

          v162 = operator new(v161);
          *(&v347[0] + 1) = v159 + 16;
          *&v347[1] = v161 | 0x8000000000000000;
          *&v347[0] = v162;
          *v162 = *"AntennaSetting::";
          v163 = v162 + 1;
        }

        v164 = *a2;
        if (v158 >= 0)
        {
          v165 = a2;
        }

        else
        {
          v165 = *a2;
        }

        memmove(v163, v165, v159);
LABEL_326:
        *(v163 + v159) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v166 = v347;
        }

        else
        {
          v166 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v166);
        v167 = (**v87)(v87, value);
        if (v167)
        {
          v168 = ctu::cf::assign();
          CFRelease(v167);
        }

        else
        {
          v168 = 0;
        }

        MEMORY[0x29C270E70](&value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        if (*(&__p + 1) && !atomic_fetch_add((*(&__p + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&__p + 1) + 16))(*(&__p + 1));
          std::__shared_weak_count::__release_weak(*(&__p + 1));
        }

        if (!v168)
        {
          goto LABEL_569;
        }

        v169 = xpc_dictionary_create(0, 0, 0);
        if (v169 || (v169 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v169) == v12)
          {
            xpc_retain(v169);
            v170 = v169;
          }

          else
          {
            v170 = xpc_null_create();
          }
        }

        else
        {
          v170 = xpc_null_create();
          v169 = 0;
        }

        xpc_release(v169);
        v224 = xpc_null_create();
        v225 = v351[0];
        v351[0] = v170;
        xpc_release(v225);
        xpc_release(v224);
        v226 = xpc_string_create(v56);
        if (!v226)
        {
          v226 = xpc_null_create();
        }

        xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v226);
        v227 = xpc_null_create();
        xpc_release(v226);
        xpc_release(v227);
        v228 = xpc_dictionary_create(0, 0, 0);
        if (v228 || (v228 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v228) == v12)
          {
            xpc_retain(v228);
            v81 = v228;
          }

          else
          {
            v81 = xpc_null_create();
          }
        }

        else
        {
          v81 = xpc_null_create();
          v228 = 0;
        }

        xpc_release(v228);
        if (v350 >= 0)
        {
          v229 = &v348;
        }

        else
        {
          v229 = v348;
        }

        v230 = xpc_string_create(v229);
        if (!v230)
        {
          v230 = xpc_null_create();
        }

        xpc_dictionary_set_value(v81, *MEMORY[0x29EDBF818], v230);
        v231 = xpc_null_create();
        xpc_release(v230);
        xpc_release(v231);
        if (v81)
        {
          goto LABEL_476;
        }

        goto LABEL_477;
      }

LABEL_311:
      atomic_fetch_add_explicit(v86 + 1, 1uLL, memory_order_relaxed);
      goto LABEL_312;
    }

LABEL_692:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v57 == -1)
  {
    goto LABEL_692;
  }

  v59 = *(a2 + 8);
  if (v59 >= v57)
  {
    v85 = v57;
  }

  else
  {
    v85 = *(a2 + 8);
  }

  if (!memcmp(*a2, v56, v85))
  {
    goto LABEL_168;
  }

LABEL_172:
  v88 = *MEMORY[0x29EDBF558];
  v89 = strlen(*MEMORY[0x29EDBF558]);
  v90 = v89;
  if ((v7 & 0x80000000) != 0)
  {
    if (v89 == -1)
    {
      goto LABEL_694;
    }

    v92 = *a2;
    v91 = *(a2 + 8);
  }

  else
  {
    v91 = v7;
    v92 = a2;
    if (v90 == -1)
    {
LABEL_694:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v91 >= v90)
  {
    v115 = v90;
  }

  else
  {
    v115 = v91;
  }

  if (!memcmp(v92, v88, v115) && v91 == v90)
  {
    v116 = xpc_dictionary_create(0, 0, 0);
    if (v116 || (v116 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v116) == v12)
      {
        xpc_retain(v116);
        v117 = v116;
      }

      else
      {
        v117 = xpc_null_create();
      }
    }

    else
    {
      v117 = xpc_null_create();
      v116 = 0;
    }

    xpc_release(v116);
    v194 = xpc_null_create();
    v195 = v351[0];
    v351[0] = v117;
    xpc_release(v195);
    xpc_release(v194);
    v348 = 0;
    v349 = 0;
    v350 = 0;
    v196 = xpc_string_create(v88);
    if (!v196)
    {
      v196 = xpc_null_create();
    }

    xpc_dictionary_set_value(v351[0], *MEMORY[0x29EDBED18], v196);
    v197 = xpc_null_create();
    xpc_release(v196);
    xpc_release(v197);
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v198 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v198 = xmmword_2A18CAF18;
    }

    v199 = *(&xmmword_2A18CAF18 + 1);
    *&__p = v198;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v200 = *MEMORY[0x29EDBE720];
    v201 = strlen(*MEMORY[0x29EDBE720]);
    v202 = v201 + 16;
    if (v201 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v203 = v201;
    if (v202 < 0x17)
    {
      v206 = &v347[1];
      *&v347[1] = 0;
      BYTE7(v347[1]) = v201 + 16;
      v347[0] = *"AntennaSetting::";
      if (!v201)
      {
        goto LABEL_413;
      }
    }

    else
    {
      if ((v202 | 7) == 0x17)
      {
        v204 = 25;
      }

      else
      {
        v204 = (v202 | 7) + 1;
      }

      v205 = operator new(v204);
      *(&v347[0] + 1) = v202;
      *&v347[1] = v204 | 0x8000000000000000;
      *&v347[0] = v205;
      *v205 = *"AntennaSetting::";
      v206 = v205 + 1;
    }

    memmove(v206, v200, v203);
LABEL_413:
    *(v206 + v203) = 0;
    if ((SBYTE7(v347[1]) & 0x80u) == 0)
    {
      v207 = v347;
    }

    else
    {
      v207 = *&v347[0];
    }

    ctu::cf::MakeCFString::MakeCFString(&value, v207);
    v208 = (**v198)(v198, value);
    if (v208)
    {
      v209 = ctu::cf::assign();
      CFRelease(v208);
    }

    else
    {
      v209 = 0;
    }

    MEMORY[0x29C270E70](&value);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    if (v199 && !atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v199->__on_zero_shared)(v199);
      std::__shared_weak_count::__release_weak(v199);
    }

    if (v209)
    {
      if (v350 >= 0)
      {
        v210 = &v348;
      }

      else
      {
        v210 = v348;
      }

      v345 = xpc_string_create(v210);
      if (!v345)
      {
        v345 = xpc_null_create();
      }

      *&v347[0] = v351;
      *(&v347[0] + 1) = v200;
      xpc::dict::object_proxy::operator=(v347, &v345, &v346);
      xpc_release(v346);
      v346 = 0;
      xpc_release(v345);
      v345 = 0;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v211 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v211 = xmmword_2A18CAF18;
    }

    v212 = *(&xmmword_2A18CAF18 + 1);
    *&__p = v211;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v213 = *MEMORY[0x29EDBE960];
    v214 = strlen(*MEMORY[0x29EDBE960]);
    v215 = v214 + 16;
    if (v214 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v216 = v214;
    if (v215 < 0x17)
    {
      v219 = &v347[1];
      *&v347[1] = 0;
      BYTE7(v347[1]) = v214 + 16;
      v347[0] = *"AntennaSetting::";
      if (!v214)
      {
LABEL_443:
        *(v219 + v216) = 0;
        if ((SBYTE7(v347[1]) & 0x80u) == 0)
        {
          v220 = v347;
        }

        else
        {
          v220 = *&v347[0];
        }

        ctu::cf::MakeCFString::MakeCFString(&value, v220);
        v221 = (**v211)(v211, value);
        if (v221)
        {
          v222 = ctu::cf::assign();
          CFRelease(v221);
        }

        else
        {
          v222 = 0;
        }

        MEMORY[0x29C270E70](&value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        if (v212 && !atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        if (v222)
        {
          if (v350 >= 0)
          {
            v223 = &v348;
          }

          else
          {
            v223 = v348;
          }

          v343 = xpc_string_create(v223);
          if (!v343)
          {
            v343 = xpc_null_create();
          }

          *&v347[0] = v351;
          *(&v347[0] + 1) = v213;
          xpc::dict::object_proxy::operator=(v347, &v343, &v344);
          xpc_release(v344);
          v344 = 0;
          xpc_release(v343);
          v343 = 0;
        }

        goto LABEL_569;
      }
    }

    else
    {
      if ((v215 | 7) == 0x17)
      {
        v217 = 25;
      }

      else
      {
        v217 = (v215 | 7) + 1;
      }

      v218 = operator new(v217);
      *(&v347[0] + 1) = v215;
      *&v347[1] = v217 | 0x8000000000000000;
      *&v347[0] = v218;
      *v218 = *"AntennaSetting::";
      v219 = v218 + 1;
    }

    memmove(v219, v213, v216);
    goto LABEL_443;
  }

  v118 = strlen(*MEMORY[0x29EDBECA0]);
  v119 = v118;
  if ((v7 & 0x80000000) != 0)
  {
    if (v118 == -1)
    {
      goto LABEL_696;
    }

    v121 = *a2;
    v120 = *(a2 + 8);
  }

  else
  {
    v120 = v7;
    v121 = a2;
    if (v119 == -1)
    {
LABEL_696:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v120 >= v119)
  {
    v145 = v119;
  }

  else
  {
    v145 = v120;
  }

  if (!memcmp(v121, *MEMORY[0x29EDBECA0], v145) && v120 == v119)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v146 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v146 = xmmword_2A18CAF18;
    }

    v147 = *(&xmmword_2A18CAF18 + 1);
    *&__p = v146;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v148 = *(a2 + 23);
    if (v148 >= 0)
    {
      v149 = *(a2 + 23);
    }

    else
    {
      v149 = *(a2 + 8);
    }

    v150 = v149 + 16;
    if (v149 + 16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v150 < 0x17)
    {
      v153 = &v347[1];
      *&v347[1] = 0;
      BYTE7(v347[1]) = v149 + 16;
      v347[0] = *"AntennaSetting::";
      if (!v149)
      {
        goto LABEL_365;
      }
    }

    else
    {
      if ((v150 | 7) == 0x17)
      {
        v151 = 25;
      }

      else
      {
        v151 = (v150 | 7) + 1;
      }

      v152 = operator new(v151);
      *(&v347[0] + 1) = v149 + 16;
      *&v347[1] = v151 | 0x8000000000000000;
      *&v347[0] = v152;
      *v152 = *"AntennaSetting::";
      v153 = v152 + 1;
    }

    v179 = *a2;
    if (v148 >= 0)
    {
      v180 = a2;
    }

    else
    {
      v180 = *a2;
    }

    memmove(v153, v180, v149);
LABEL_365:
    *(v153 + v149) = 0;
    if ((SBYTE7(v347[1]) & 0x80u) == 0)
    {
      v181 = v347;
    }

    else
    {
      v181 = *&v347[0];
    }

    ctu::cf::MakeCFString::MakeCFString(&value, v181);
    v182 = (**v146)(v146, value);
    if (v182)
    {
      v183 = ctu::cf::assign();
      CFRelease(v182);
    }

    else
    {
      v183 = 0;
    }

    MEMORY[0x29C270E70](&value);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    if (v147 && !atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v147->__on_zero_shared)(v147);
      std::__shared_weak_count::__release_weak(v147);
    }

    if (!v183)
    {
      goto LABEL_569;
    }

    v192 = xpc_dictionary_create(0, 0, 0);
    v193 = v192;
    if (v192)
    {
      *&v347[0] = v192;
    }

    else
    {
      v193 = xpc_null_create();
      *&v347[0] = v193;
      if (!v193)
      {
        v243 = xpc_null_create();
        v193 = 0;
        goto LABEL_524;
      }
    }

    if (MEMORY[0x29C272BA0](v193) == v12)
    {
      xpc_retain(v193);
LABEL_525:
      xpc_release(v193);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v249 = a2;
      }

      else
      {
        v249 = *a2;
      }

      v341 = xpc_string_create(v249);
      if (!v341)
      {
        v341 = xpc_null_create();
      }

      v250 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v250;
      xpc::dict::object_proxy::operator=(v347, &v341, &v342);
      xpc_release(v342);
      v342 = 0;
      xpc_release(v341);
      v341 = 0;
      if (v350 >= 0)
      {
        v251 = &v348;
      }

      else
      {
        v251 = v348;
      }

      v339 = xpc_string_create(v251);
      if (!v339)
      {
        v339 = xpc_null_create();
      }

      v252 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v252;
      xpc::dict::object_proxy::operator=(v347, &v339, &v340);
      xpc_release(v340);
      v340 = 0;
      xpc_release(v339);
      v339 = 0;
      goto LABEL_569;
    }

    v243 = xpc_null_create();
LABEL_524:
    *&v347[0] = v243;
    goto LABEL_525;
  }

  v154 = strlen(*MEMORY[0x29EDBF528]);
  v155 = v154;
  if ((v7 & 0x80000000) != 0)
  {
    if (v154 == -1)
    {
      goto LABEL_699;
    }

    v157 = *a2;
    v156 = *(a2 + 8);
  }

  else
  {
    v156 = v7;
    v157 = a2;
    if (v155 == -1)
    {
LABEL_699:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v156 >= v155)
  {
    v184 = v155;
  }

  else
  {
    v184 = v156;
  }

  if (!memcmp(v157, *MEMORY[0x29EDBF528], v184) && v156 == v155)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v185 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v185 = xmmword_2A18CAF18;
    }

    *&__p = v185;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
    v186 = Preferences::getPreference<std::string>(__p, v347);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v186)
    {
      goto LABEL_569;
    }

    v187 = xpc_dictionary_create(0, 0, 0);
    v188 = v187;
    if (v187)
    {
      *&v347[0] = v187;
    }

    else
    {
      v188 = xpc_null_create();
      *&v347[0] = v188;
      if (!v188)
      {
        v248 = xpc_null_create();
        v188 = 0;
        goto LABEL_541;
      }
    }

    if (MEMORY[0x29C272BA0](v188) == v12)
    {
      xpc_retain(v188);
LABEL_542:
      xpc_release(v188);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v254 = a2;
      }

      else
      {
        v254 = *a2;
      }

      v337 = xpc_string_create(v254);
      if (!v337)
      {
        v337 = xpc_null_create();
      }

      v255 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v255;
      xpc::dict::object_proxy::operator=(v347, &v337, &v338);
      xpc_release(v338);
      v338 = 0;
      xpc_release(v337);
      v337 = 0;
      if (v350 >= 0)
      {
        v256 = &v348;
      }

      else
      {
        v256 = v348;
      }

      v335 = xpc_string_create(v256);
      if (!v335)
      {
        v335 = xpc_null_create();
      }

      v257 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v257;
      xpc::dict::object_proxy::operator=(v347, &v335, &v336);
      xpc_release(v336);
      v336 = 0;
      xpc_release(v335);
      v335 = 0;
      goto LABEL_569;
    }

    v248 = xpc_null_create();
LABEL_541:
    *&v347[0] = v248;
    goto LABEL_542;
  }

  v189 = strlen(*MEMORY[0x29EDBF510]);
  v190 = v189;
  if ((v7 & 0x80000000) != 0)
  {
    if (v189 == -1)
    {
      goto LABEL_701;
    }

    v191 = *a2;
    v7 = *(a2 + 8);
  }

  else
  {
    v191 = a2;
    if (v190 == -1)
    {
LABEL_701:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  if (v7 >= v190)
  {
    v234 = v190;
  }

  else
  {
    v234 = v7;
  }

  if (!memcmp(v191, *MEMORY[0x29EDBF510], v234) && v7 == v190)
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v235 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v235 = xmmword_2A18CAF18;
    }

    *&__p = v235;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
    v236 = Preferences::getPreference<std::string>(__p, v347);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v236)
    {
      goto LABEL_569;
    }

    v237 = xpc_dictionary_create(0, 0, 0);
    v238 = v237;
    if (v237)
    {
      *&v347[0] = v237;
    }

    else
    {
      v238 = xpc_null_create();
      *&v347[0] = v238;
      if (!v238)
      {
        v253 = xpc_null_create();
        v238 = 0;
        goto LABEL_557;
      }
    }

    if (MEMORY[0x29C272BA0](v238) == v12)
    {
      xpc_retain(v238);
LABEL_558:
      xpc_release(v238);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v259 = a2;
      }

      else
      {
        v259 = *a2;
      }

      v333 = xpc_string_create(v259);
      if (!v333)
      {
        v333 = xpc_null_create();
      }

      v260 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v260;
      xpc::dict::object_proxy::operator=(v347, &v333, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v333);
      v333 = 0;
      if (v350 >= 0)
      {
        v261 = &v348;
      }

      else
      {
        v261 = v348;
      }

      v331 = xpc_string_create(v261);
      if (!v331)
      {
        v331 = xpc_null_create();
      }

      v262 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v262;
      xpc::dict::object_proxy::operator=(v347, &v331, &v332);
      xpc_release(v332);
      v332 = 0;
      xpc_release(v331);
      v331 = 0;
      goto LABEL_569;
    }

    v253 = xpc_null_create();
LABEL_557:
    *&v347[0] = v253;
    goto LABEL_558;
  }

  if (!std::string::compare(a2, *MEMORY[0x29EDBF5A8]))
  {
    v348 = 0;
    v349 = 0;
    v350 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v244 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(v347);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
      v244 = xmmword_2A18CAF18;
    }

    *&__p = v244;
    *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
    v245 = Preferences::getPreference<std::string>(__p, v347);
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
    if (!v245)
    {
      goto LABEL_569;
    }

    v246 = xpc_dictionary_create(0, 0, 0);
    v247 = v246;
    if (v246)
    {
      *&v347[0] = v246;
    }

    else
    {
      v247 = xpc_null_create();
      *&v347[0] = v247;
      if (!v247)
      {
        v258 = xpc_null_create();
        v247 = 0;
        goto LABEL_581;
      }
    }

    if (MEMORY[0x29C272BA0](v247) == v12)
    {
      xpc_retain(v247);
LABEL_582:
      xpc_release(v247);
      xpc::dict::operator=(v351, v347);
      xpc_release(*&v347[0]);
      if (*(a2 + 23) >= 0)
      {
        v265 = a2;
      }

      else
      {
        v265 = *a2;
      }

      v329 = xpc_string_create(v265);
      if (!v329)
      {
        v329 = xpc_null_create();
      }

      v266 = *MEMORY[0x29EDBED18];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v266;
      xpc::dict::object_proxy::operator=(v347, &v329, &v330);
      xpc_release(v330);
      v330 = 0;
      xpc_release(v329);
      v329 = 0;
      if (v350 >= 0)
      {
        v267 = &v348;
      }

      else
      {
        v267 = v348;
      }

      v327 = xpc_string_create(v267);
      if (!v327)
      {
        v327 = xpc_null_create();
      }

      v268 = *MEMORY[0x29EDBEA98];
      *&v347[0] = v351;
      *(&v347[0] + 1) = v268;
      xpc::dict::object_proxy::operator=(v347, &v327, &v328);
      xpc_release(v328);
      v328 = 0;
      xpc_release(v327);
      v327 = 0;
      if (v350 >= 0)
      {
        v269 = &v348;
      }

      else
      {
        v269 = v348;
      }

      v270 = strlen(*MEMORY[0x29EDBEFE0]);
      if (!strncasecmp(v269, *MEMORY[0x29EDBEFE0], v270))
      {
        LODWORD(value) = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v271 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v271 = xmmword_2A18CAF18;
        }

        *&__p = v271;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v272 = __p;
        v273 = *MEMORY[0x29EDBF820];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF820]);
        Preferences::getPreference<unsigned int>(v272, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v325 = xpc_int64_create(value);
        if (!v325)
        {
          v325 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v273;
        xpc::dict::object_proxy::operator=(v347, &v325, &v326);
        xpc_release(v326);
        v326 = 0;
        xpc_release(v325);
        v325 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v274 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v274 = xmmword_2A18CAF18;
        }

        *&__p = v274;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v275 = __p;
        v276 = *MEMORY[0x29EDBF7D8];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF7D8]);
        Preferences::getPreference<unsigned int>(v275, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v323 = xpc_int64_create(value);
        if (!v323)
        {
          v323 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v276;
        xpc::dict::object_proxy::operator=(v347, &v323, &v324);
        xpc_release(v324);
        v324 = 0;
        xpc_release(v323);
        v323 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v277 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v277 = xmmword_2A18CAF18;
        }

        *&__p = v277;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v278 = __p;
        v279 = *MEMORY[0x29EDBF610];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF610]);
        Preferences::getPreference<unsigned int>(v278, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v321 = xpc_int64_create(value);
        if (!v321)
        {
          v321 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v279;
        xpc::dict::object_proxy::operator=(v347, &v321, &v322);
        xpc_release(v322);
        v322 = 0;
        xpc_release(v321);
        v321 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v280 = xmmword_2A18CAF18;
        if (!xmmword_2A18CAF18)
        {
          ABMProperties::create_default_global(v347);
          std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
          std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
          v280 = xmmword_2A18CAF18;
        }

        *&__p = v280;
        *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
        if (*(&xmmword_2A18CAF18 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        v281 = __p;
        v282 = *MEMORY[0x29EDBF608];
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", *MEMORY[0x29EDBF608]);
        Preferences::getPreference<unsigned int>(v281, v347, &value);
        if (SBYTE7(v347[1]) < 0)
        {
          operator delete(*&v347[0]);
        }

        std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
        v319 = xpc_int64_create(value);
        if (!v319)
        {
          v319 = xpc_null_create();
        }

        *&v347[0] = v351;
        *(&v347[0] + 1) = v282;
        xpc::dict::object_proxy::operator=(v347, &v319, &v320);
        xpc_release(v320);
        v320 = 0;
        xpc_release(v319);
        v319 = 0;
      }

      goto LABEL_569;
    }

    v258 = xpc_null_create();
LABEL_581:
    *&v347[0] = v258;
    goto LABEL_582;
  }

  if (std::string::compare(a2, *MEMORY[0x29EDBE4F0]))
  {
    goto LABEL_571;
  }

  v348 = 0;
  v349 = 0;
  v350 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v239 = xmmword_2A18CAF18;
  if (!xmmword_2A18CAF18)
  {
    ABMProperties::create_default_global(v347);
    std::shared_ptr<ABMProperties>::operator=[abi:ne200100](v347);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v347);
    v239 = xmmword_2A18CAF18;
  }

  *&__p = v239;
  *(&__p + 1) = *(&xmmword_2A18CAF18 + 1);
  if (*(&xmmword_2A18CAF18 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v347, "AntennaSetting::", a2);
  v240 = Preferences::getPreference<std::string>(__p, v347);
  if (SBYTE7(v347[1]) < 0)
  {
    operator delete(*&v347[0]);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
  if (v240)
  {
    v241 = xpc_dictionary_create(0, 0, 0);
    v242 = v241;
    if (v241)
    {
      *&v347[0] = v241;
    }

    else
    {
      v242 = xpc_null_create();
      *&v347[0] = v242;
      if (!v242)
      {
        v264 = xpc_null_create();
        v242 = 0;
        goto LABEL_630;
      }
    }

    if (MEMORY[0x29C272BA0](v242) == v12)
    {
      xpc_retain(v242);
      goto LABEL_631;
    }

    v264 = xpc_null_create();
LABEL_630:
    *&v347[0] = v264;
LABEL_631:
    xpc_release(v242);
    xpc::dict::operator=(v351, v347);
    xpc_release(*&v347[0]);
    v318 = 0xAAAAAAAAAAAAAAAALL;
    v283 = xpc_dictionary_create(0, 0, 0);
    v284 = v283;
    if (v283)
    {
      v318 = v283;
    }

    else
    {
      v284 = xpc_null_create();
      v318 = v284;
      if (!v284)
      {
        v285 = xpc_null_create();
        v284 = 0;
        goto LABEL_638;
      }
    }

    if (MEMORY[0x29C272BA0](v284) == v12)
    {
      xpc_retain(v284);
      goto LABEL_639;
    }

    v285 = xpc_null_create();
LABEL_638:
    v318 = v285;
LABEL_639:
    xpc_release(v284);
    if (*(a2 + 23) >= 0)
    {
      v286 = a2;
    }

    else
    {
      v286 = *a2;
    }

    *&v316[1] = xpc_string_create(v286);
    if (!*&v316[1])
    {
      *&v316[1] = xpc_null_create();
    }

    v287 = *MEMORY[0x29EDBED18];
    *&v347[0] = v351;
    *(&v347[0] + 1) = v287;
    xpc::dict::object_proxy::operator=(v347, &v316[1], &v317);
    xpc_release(v317);
    v317 = 0;
    xpc_release(*&v316[1]);
    *&v316[1] = 0;
    memset(v347, 170, 24);
    std::string::basic_string[abi:ne200100]<0>(v347, "");
    v316[0] = 0x7FFF;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v288 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v288 = xmmword_2A18CAF18;
    }

    value = v288;
    v315 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v289 = value;
    v290 = *MEMORY[0x29EDBF1D8];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBF1D8]);
    Preferences::getPreference<std::string>(v289, &__p);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    if (SBYTE7(v347[1]) < 0)
    {
      if (*(&v347[0] + 1))
      {
        v291 = *&v347[0];
        goto LABEL_655;
      }
    }

    else if (BYTE7(v347[1]))
    {
      v291 = v347;
LABEL_655:
      v310 = xpc_string_create(v291);
      if (!v310)
      {
        v310 = xpc_null_create();
      }

      *&__p = &v318;
      *(&__p + 1) = v290;
      xpc::dict::object_proxy::operator=(&__p, &v310, &v311);
      xpc_release(v311);
      v311 = 0;
      xpc_release(v310);
      v310 = 0;
    }

    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v292 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v292 = xmmword_2A18CAF18;
    }

    value = v292;
    v315 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v293 = value;
    v294 = *MEMORY[0x29EDBE8B8];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBE8B8]);
    Preferences::getPreference<unsigned int>(v293, &__p, v316);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v308 = xpc_int64_create(v316[0]);
    if (!v308)
    {
      v308 = xpc_null_create();
    }

    *&__p = &v318;
    *(&__p + 1) = v294;
    xpc::dict::object_proxy::operator=(&__p, &v308, &v309);
    xpc_release(v309);
    v309 = 0;
    xpc_release(v308);
    v308 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v295 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v295 = xmmword_2A18CAF18;
    }

    value = v295;
    v315 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v296 = value;
    v297 = *MEMORY[0x29EDBEA90];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBEA90]);
    Preferences::getPreference<unsigned int>(v296, &__p, v316);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v306 = xpc_int64_create(v316[0]);
    if (!v306)
    {
      v306 = xpc_null_create();
    }

    *&__p = &v318;
    *(&__p + 1) = v297;
    xpc::dict::object_proxy::operator=(&__p, &v306, &v307);
    xpc_release(v307);
    v307 = 0;
    xpc_release(v306);
    v306 = 0;
    pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v298 = xmmword_2A18CAF18;
    if (!xmmword_2A18CAF18)
    {
      ABMProperties::create_default_global(&__p);
      std::shared_ptr<ABMProperties>::operator=[abi:ne200100](&__p);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&__p);
      v298 = xmmword_2A18CAF18;
    }

    value = v298;
    v315 = *(&xmmword_2A18CAF18 + 1);
    if (*(&xmmword_2A18CAF18 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A18CAF18 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
    v299 = value;
    v300 = *MEMORY[0x29EDBE698];
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "AntennaSetting::", *MEMORY[0x29EDBE698]);
    Preferences::getPreference<unsigned int>(v299, &__p, v316);
    if (v313 < 0)
    {
      operator delete(__p);
    }

    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&value);
    v304 = xpc_int64_create(v316[0]);
    if (!v304)
    {
      v304 = xpc_null_create();
    }

    *&__p = &v318;
    *(&__p + 1) = v300;
    xpc::dict::object_proxy::operator=(&__p, &v304, &v305);
    xpc_release(v305);
    v305 = 0;
    xpc_release(v304);
    v304 = 0;
    xpc::dict::dict(&v302, &v318);
    v301 = *MEMORY[0x29EDBEA98];
    *&__p = v351;
    *(&__p + 1) = v301;
    xpc::dict::object_proxy::operator=(&__p, &v302, &v303);
    xpc_release(v303);
    v303 = 0;
    xpc_release(v302);
    v302 = 0;
    if (SBYTE7(v347[1]) < 0)
    {
      operator delete(*&v347[0]);
    }

    xpc_release(v318);
  }

LABEL_569:
  if (SHIBYTE(v350) < 0)
  {
    operator delete(v348);
  }

LABEL_571:
  if (MEMORY[0x29C272BA0](v351[0]) == v12)
  {
    v263 = **(a1 + 120);
    if (v263)
    {
      antenna::Service::Internal::antennaSetProperty(v263, v351);
    }
  }

  xpc_release(v351[0]);
}

void sub_297620374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  xpc_release(*(v31 - 104));
  _Unwind_Resume(a1);
}

uint64_t Preferences::getPreference<std::string>(uint64_t (***a1)(void, uint64_t), const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, a2);
  v3 = (**a1)(a1, v6);
  if (v3)
  {
    v4 = ctu::cf::assign();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x29C270E70](&v6);
  return v4;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *result, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = *(a3 + 23);
  if (v5 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = v6 + v4;
  if (v6 + v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (v7 <= 0x16)
  {
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(result + 23) = v7;
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v7 | 7) == 0x17)
  {
    v11 = 25;
  }

  else
  {
    v11 = (v7 | 7) + 1;
  }

  result = operator new(v11);
  v10[1] = v7;
  v10[2] = v11 | 0x8000000000000000;
  *v10 = result;
  v10 = result;
  if (v4)
  {
LABEL_15:
    v12 = *a2;
    if (v3 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    result = memmove(v10, v13, v4);
  }

LABEL_19:
  v14 = v10 + v4;
  if (v6)
  {
    v15 = *a3;
    if (v5 >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    result = memmove(v14, v16, v6);
  }

  v14[v6] = 0;
  return result;
}

void *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, const void **a2, char *__s)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  result = strlen(__s);
  v9 = result + v7;
  if (result + v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (v9 > 0x16)
  {
    if ((v9 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v9 | 7) + 1;
    }

    result = operator new(v11);
    a1[1] = v9;
    a1[2] = v11 | 0x8000000000000000;
    *a1 = result;
    a1 = result;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  *(a1 + 23) = v9;
  if (v7)
  {
LABEL_12:
    v12 = *a2;
    if (v6 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    result = memmove(a1, v13, v7);
  }

LABEL_16:
  v14 = a1 + v7;
  if (v10)
  {
    result = memmove(v14, __s, v10);
  }

  v14[v10] = 0;
  return result;
}

void AntennaModule::reportTransmitState(AntennaModule *this, void **a2)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *a2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&cf, &object, v4);
  v5 = cf;
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    v21 = 0;
    v7 = 1;
    v8 = cf;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = v5;
  CFRetain(v5);
  v7 = 0;
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object);
  if (v7)
  {
    return;
  }

  v9 = *MEMORY[0x29EDBF348];
  v10 = strlen(*MEMORY[0x29EDBF348]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v12 = operator new(v14);
    __dst[1] = v11;
    v18 = v14 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_20:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = v21;
    v16 = v21;
    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  HIBYTE(v18) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = v21;
  v16 = v21;
  if (v21)
  {
LABEL_21:
    CFRetain(v13);
  }

LABEL_22:
  aBlock = 0;
  Service::broadcastEvent(this, __dst, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
    if (!v13)
    {
      return;
    }
  }

  else if (!v13)
  {
    return;
  }

  CFRelease(v13);
}

void sub_297621154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a19);
  _Unwind_Resume(a1);
}

void AntennaModule::processCallback(AntennaModule *this, xpc_object_t *a2)
{
  v4 = *MEMORY[0x29EDBEC68];
  if (xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEC68]))
  {
    memset(__s1, 170, sizeof(__s1));
    value = xpc_dictionary_get_value(*a2, v4);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(__s1, object, "", v6);
    xpc_release(object[0]);
    v7 = strlen(*MEMORY[0x29EDBEBE8]);
    v8 = v7;
    v9 = HIBYTE(__s1[2]);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != -1)
      {
        v10 = __s1[0];
        v11 = __s1[1];
LABEL_10:
        if (v11 >= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        if (!memcmp(v10, *MEMORY[0x29EDBEBE8], v12) && v11 == v8)
        {
          AntennaModule::reportTransmitState(this, a2);
          v9 = HIBYTE(__s1[2]);
        }

        v14 = *MEMORY[0x29EDBE728];
        v15 = strlen(*MEMORY[0x29EDBE728]);
        v16 = v15;
        if ((v9 & 0x80) != 0)
        {
          if (v15 != -1)
          {
            v17 = __s1[1];
            if (__s1[1] >= v15)
            {
              v19 = v15;
            }

            else
            {
              v19 = __s1[1];
            }

            if (memcmp(__s1[0], v14, v19))
            {
              goto LABEL_44;
            }

            goto LABEL_31;
          }
        }

        else if (v15 != -1)
        {
          v17 = v9;
          if (v9 >= v15)
          {
            v18 = v15;
          }

          else
          {
            v18 = v9;
          }

          if (memcmp(__s1, v14, v18))
          {
            goto LABEL_44;
          }

LABEL_31:
          if (v17 != v16)
          {
LABEL_44:
            if ((v9 & 0x80) != 0)
            {
              operator delete(__s1[0]);
            }

            return;
          }

          v20 = *MEMORY[0x29EDBEBD0];
          v21 = strlen(*MEMORY[0x29EDBEBD0]);
          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v22 = v21;
          if (v21 >= 0x17)
          {
            if ((v21 | 7) == 0x17)
            {
              v24 = 25;
            }

            else
            {
              v24 = (v21 | 7) + 1;
            }

            v23 = operator new(v24);
            object[1] = v22;
            v30 = v24 | 0x8000000000000000;
            object[0] = v23;
          }

          else
          {
            HIBYTE(v30) = v21;
            v23 = object;
            if (!v21)
            {
              goto LABEL_41;
            }
          }

          memmove(v23, v20, v22);
LABEL_41:
          *(v22 + v23) = 0;
          v25 = *MEMORY[0x29EDBE750];
          v27[0] = a2;
          v27[1] = v25;
          xpc::dict::object_proxy::operator xpc::dict(v27, &v28);
          v26 = 0;
          Service::runCommand(this, object, &v28, &v26);
          xpc_release(v28);
          v28 = 0;
          if (SHIBYTE(v30) < 0)
          {
            operator delete(object[0]);
          }

          v9 = HIBYTE(__s1[2]);
          goto LABEL_44;
        }

        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else if (v7 != -1)
    {
      v10 = __s1;
      v11 = SHIBYTE(__s1[2]);
      goto LABEL_10;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }
}

void sub_297621450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void **xpc::dict::operator=(void **a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

atomic_ullong *std::shared_ptr<AntennaModule>::shared_ptr[abi:ne200100]<AntennaModule,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E4CE70;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_29762163C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1}::operator() const(AntennaModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AntennaModule *,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule *)#1},std::allocator<AntennaModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AntennaModule *,std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule *)#1},std::allocator<AntennaModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI13AntennaModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AntennaModule> ctu::SharedSynchronizable<AntennaModule>::make_shared_ptr<AntennaModule>(AntennaModule*)::{lambda(AntennaModule*)#1}::operator() const(AntennaModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void AntennaModule::init(void)::$_0::operator()(uint64_t a1)
{
  v131 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(a1 + 80);
  if (!v3 || (v4 = *(a1 + 72), (v5 = std::__shared_weak_count::lock(v3)) == 0))
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

  v106 = 0xAAAAAAAAAAAAAAAALL;
  v107 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZN13AntennaModule4initEvENK3__0clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_44_4;
  aBlock[4] = a1;
  aBlock[5] = v4;
  v105 = v6;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 88);
  if (v9)
  {
    dispatch_retain(*(a1 + 88));
  }

  v106 = v8;
  v107 = v9;
  v10 = operator new(0x10uLL);
  if (v8)
  {
    v102 = _Block_copy(v8);
    v103 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v102 = 0;
  v103 = v9;
  if (v9)
  {
LABEL_11:
    dispatch_retain(v9);
  }

LABEL_12:
  v11 = *(a1 + 96);
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  antenna::Service::Service(v10, &v102, &object);
  *buf = v10;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4CEF0;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v10;
  v13 = *(a1 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v103)
  {
    dispatch_release(v103);
  }

  if (v102)
  {
    _Block_release(v102);
  }

  v14 = *MEMORY[0x29EDBEFD0];
  v15 = strlen(*MEMORY[0x29EDBEFD0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v17 = operator new(v18);
    v109 = v16;
    v110 = v18 | 0x8000000000000000;
    *buf = v17;
    goto LABEL_31;
  }

  HIBYTE(v110) = v15;
  v17 = buf;
  if (v15)
  {
LABEL_31:
    memmove(v17, v14, v16);
  }

  *(v17 + v16) = 0;
  v19 = v111;
  v20 = *MEMORY[0x29EDBE978];
  v21 = strlen(*MEMORY[0x29EDBE978]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v21 | 7) + 1;
    }

    v24 = operator new(v23);
    v111[1] = v22;
    v112 = v23 | 0x8000000000000000;
    v111[0] = v24;
    v19 = v24;
    goto LABEL_40;
  }

  HIBYTE(v112) = v21;
  if (v21)
  {
LABEL_40:
    memmove(v19, v20, v22);
  }

  *(v22 + v19) = 0;
  v25 = v113;
  v26 = *MEMORY[0x29EDBEBA0];
  v27 = strlen(*MEMORY[0x29EDBEBA0]);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v27 | 7) + 1;
    }

    v30 = operator new(v29);
    v113[1] = v28;
    v114 = v29 | 0x8000000000000000;
    v113[0] = v30;
    v25 = v30;
    goto LABEL_49;
  }

  HIBYTE(v114) = v27;
  if (v27)
  {
LABEL_49:
    memmove(v25, v26, v28);
  }

  *(v28 + v25) = 0;
  v31 = v115;
  v32 = *MEMORY[0x29EDBED08];
  v33 = strlen(*MEMORY[0x29EDBED08]);
  if (v33 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v33 | 7) + 1;
    }

    v36 = operator new(v35);
    v115[1] = v34;
    v116 = v35 | 0x8000000000000000;
    v115[0] = v36;
    v31 = v36;
    goto LABEL_58;
  }

  HIBYTE(v116) = v33;
  if (v33)
  {
LABEL_58:
    memmove(v31, v32, v34);
  }

  *(v34 + v31) = 0;
  v37 = v117;
  v38 = *MEMORY[0x29EDBF530];
  v39 = strlen(*MEMORY[0x29EDBF530]);
  if (v39 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v40 = v39;
  if (v39 >= 0x17)
  {
    if ((v39 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v39 | 7) + 1;
    }

    v42 = operator new(v41);
    v117[1] = v40;
    v118 = v41 | 0x8000000000000000;
    v117[0] = v42;
    v37 = v42;
    goto LABEL_67;
  }

  HIBYTE(v118) = v39;
  if (v39)
  {
LABEL_67:
    memmove(v37, v38, v40);
  }

  *(v40 + v37) = 0;
  v43 = v119;
  v44 = *MEMORY[0x29EDBF558];
  v45 = strlen(*MEMORY[0x29EDBF558]);
  if (v45 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v46 = v45;
  if (v45 >= 0x17)
  {
    if ((v45 | 7) == 0x17)
    {
      v47 = 25;
    }

    else
    {
      v47 = (v45 | 7) + 1;
    }

    v48 = operator new(v47);
    v119[1] = v46;
    v120 = v47 | 0x8000000000000000;
    v119[0] = v48;
    v43 = v48;
    goto LABEL_76;
  }

  HIBYTE(v120) = v45;
  if (v45)
  {
LABEL_76:
    memmove(v43, v44, v46);
  }

  *(v46 + v43) = 0;
  v49 = v121;
  v50 = *MEMORY[0x29EDBECA0];
  v51 = strlen(*MEMORY[0x29EDBECA0]);
  if (v51 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v52 = v51;
  if (v51 >= 0x17)
  {
    if ((v51 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v51 | 7) + 1;
    }

    v54 = operator new(v53);
    v121[1] = v52;
    v122 = v53 | 0x8000000000000000;
    v121[0] = v54;
    v49 = v54;
    goto LABEL_85;
  }

  HIBYTE(v122) = v51;
  if (v51)
  {
LABEL_85:
    memmove(v49, v50, v52);
  }

  *(v52 + v49) = 0;
  v55 = v123;
  v56 = *MEMORY[0x29EDBF528];
  v57 = strlen(*MEMORY[0x29EDBF528]);
  if (v57 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v58 = v57;
  if (v57 >= 0x17)
  {
    if ((v57 | 7) == 0x17)
    {
      v59 = 25;
    }

    else
    {
      v59 = (v57 | 7) + 1;
    }

    v60 = operator new(v59);
    v123[1] = v58;
    v124 = v59 | 0x8000000000000000;
    v123[0] = v60;
    v55 = v60;
    goto LABEL_94;
  }

  HIBYTE(v124) = v57;
  if (v57)
  {
LABEL_94:
    memmove(v55, v56, v58);
  }

  *(v58 + v55) = 0;
  v61 = v125;
  v62 = *MEMORY[0x29EDBF510];
  v63 = strlen(*MEMORY[0x29EDBF510]);
  if (v63 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v64 = v63;
  if (v63 >= 0x17)
  {
    if ((v63 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v63 | 7) + 1;
    }

    v66 = operator new(v65);
    v125[1] = v64;
    v126 = v65 | 0x8000000000000000;
    v125[0] = v66;
    v61 = v66;
    goto LABEL_103;
  }

  HIBYTE(v126) = v63;
  if (v63)
  {
LABEL_103:
    memmove(v61, v62, v64);
  }

  *(v64 + v61) = 0;
  v67 = v127;
  v68 = *MEMORY[0x29EDBF5A8];
  v69 = strlen(*MEMORY[0x29EDBF5A8]);
  if (v69 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v70 = v69;
  if (v69 >= 0x17)
  {
    if ((v69 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v69 | 7) + 1;
    }

    v72 = operator new(v71);
    v127[1] = v70;
    v128 = v71 | 0x8000000000000000;
    v127[0] = v72;
    v67 = v72;
    goto LABEL_112;
  }

  HIBYTE(v128) = v69;
  if (v69)
  {
LABEL_112:
    memmove(v67, v68, v70);
  }

  *(v70 + v67) = 0;
  v73 = __p;
  v74 = *MEMORY[0x29EDBE4F0];
  v75 = strlen(*MEMORY[0x29EDBE4F0]);
  if (v75 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v76 = v75;
  if (v75 >= 0x17)
  {
    if ((v75 | 7) == 0x17)
    {
      v90 = 25;
    }

    else
    {
      v90 = (v75 | 7) + 1;
    }

    v91 = operator new(v90);
    __p[1] = v76;
    v130 = v90 | 0x8000000000000000;
    __p[0] = v91;
    v73 = v91;
  }

  else
  {
    HIBYTE(v130) = v75;
    if (!v75)
    {
      LOBYTE(__p[0]) = 0;
      v78 = (a1 + 112);
      v77 = *(a1 + 112);
      if (v77)
      {
        goto LABEL_117;
      }

LABEL_145:
      v86 = 0;
      goto LABEL_149;
    }
  }

  memmove(v73, v74, v76);
  *(v76 + v73) = 0;
  v78 = (a1 + 112);
  v77 = *(a1 + 112);
  if (!v77)
  {
    goto LABEL_145;
  }

LABEL_117:
  v79 = 0;
  do
  {
    v80 = &buf[v79];
    v81 = (v77 + 1);
    if (&buf[v79] != (v77 + 1))
    {
      v82 = v80[23];
      if (*(v77 + 31) < 0)
      {
        if (v82 >= 0)
        {
          v84 = &buf[v79];
        }

        else
        {
          v84 = *&buf[v79];
        }

        if (v82 >= 0)
        {
          v85 = v80[23];
        }

        else
        {
          v85 = *&buf[v79 + 8];
        }

        std::string::__assign_no_alias<false>(v81, v84, v85);
      }

      else if ((v80[23] & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v81, *&buf[v79], *&buf[v79 + 8]);
      }

      else
      {
        v83 = *v80;
        v77[3] = *(v80 + 2);
        *v81 = v83;
      }
    }

    v78 = *v78;
    v77 = *v77;
    v86 = v79 + 24;
    if (!v77)
    {
      break;
    }

    v87 = v79 == 240;
    v79 += 24;
  }

  while (!v87);
  if (v77)
  {
    if (v78)
    {
      v88 = *v78;
      if (*v78)
      {
        *v78 = 0;
        do
        {
          v89 = *v88;
          if (*(v88 + 31) < 0)
          {
            operator delete(v88[1]);
          }

          operator delete(v88);
          v88 = v89;
        }

        while (v89);
      }
    }

    goto LABEL_154;
  }

  if (v86 == 264)
  {
    goto LABEL_154;
  }

LABEL_149:
  v92 = operator new(0x20uLL);
  v93 = &buf[v86];
  *v92 = 0;
  v94 = (v92 + 1);
  if (*(&v110 + v86 + 7) < 0)
  {
    std::string::__init_copy_ctor_external(v94, *v93, *(v93 + 1));
  }

  else
  {
    *&v94->__r_.__value_.__l.__data_ = *v93;
    v92[3] = *(v93 + 2);
  }

  v95 = v92;
  if (v86 != 240)
  {
    v97 = &buf[v86 + 24];
    v98 = v86 - 240;
    v99 = v92;
    do
    {
      v95 = operator new(0x20uLL);
      *v95 = 0;
      v100 = (v95 + 1);
      if (v97[23] < 0)
      {
        std::string::__init_copy_ctor_external(v100, *v97, *(v97 + 1));
      }

      else
      {
        *&v100->__r_.__value_.__l.__data_ = *v97;
        v95[3] = *(v97 + 2);
      }

      *v99 = v95;
      v97 += 24;
      v99 = v95;
      v98 += 24;
    }

    while (v98);
  }

  *v95 = *v78;
  *v78 = v92;
LABEL_154:
  if (SHIBYTE(v130) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v128) & 0x80000000) == 0)
    {
LABEL_156:
      if ((SHIBYTE(v126) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_174;
    }
  }

  else if ((SHIBYTE(v128) & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

  operator delete(v127[0]);
  if ((SHIBYTE(v126) & 0x80000000) == 0)
  {
LABEL_157:
    if ((SHIBYTE(v124) & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_175;
  }

LABEL_174:
  operator delete(v125[0]);
  if ((SHIBYTE(v124) & 0x80000000) == 0)
  {
LABEL_158:
    if ((SHIBYTE(v122) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_176;
  }

LABEL_175:
  operator delete(v123[0]);
  if ((SHIBYTE(v122) & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(v120) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_177;
  }

LABEL_176:
  operator delete(v121[0]);
  if ((SHIBYTE(v120) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v118) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_178;
  }

LABEL_177:
  operator delete(v119[0]);
  if ((SHIBYTE(v118) & 0x80000000) == 0)
  {
LABEL_161:
    if ((SHIBYTE(v116) & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_179;
  }

LABEL_178:
  operator delete(v117[0]);
  if ((SHIBYTE(v116) & 0x80000000) == 0)
  {
LABEL_162:
    if ((SHIBYTE(v114) & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_180;
  }

LABEL_179:
  operator delete(v115[0]);
  if ((SHIBYTE(v114) & 0x80000000) == 0)
  {
LABEL_163:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_181:
    operator delete(v111[0]);
    if ((SHIBYTE(v110) & 0x80000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_182;
  }

LABEL_180:
  operator delete(v113[0]);
  if (SHIBYTE(v112) < 0)
  {
    goto LABEL_181;
  }

LABEL_164:
  if ((SHIBYTE(v110) & 0x80000000) == 0)
  {
    goto LABEL_165;
  }

LABEL_182:
  operator delete(*buf);
LABEL_165:
  AntennaModule::initializeProperty(a1);
  if (v107)
  {
    dispatch_release(v107);
  }

  if (v106)
  {
    _Block_release(v106);
  }

  if (v105)
  {
    std::__shared_weak_count::__release_weak(v105);
  }

  std::__shared_weak_count::__release_weak(v6);
  v96 = *MEMORY[0x29EDCA608];
}

void sub_297622238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  operator delete(v77);
  if (a76 < 0)
  {
    operator delete(__p);
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a74 & 0x80000000) == 0)
  {
LABEL_3:
    if (a72 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  operator delete(a73);
  if (a72 < 0)
  {
LABEL_4:
    operator delete(a69);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if (a62 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a63);
  if (a62 < 0)
  {
LABEL_6:
    operator delete(a57);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if (a50 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if (a50 < 0)
  {
LABEL_8:
    operator delete(a45);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if (a38 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if (a38 < 0)
  {
LABEL_10:
    operator delete(a33);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a26 & 0x80000000) == 0)
    {
LABEL_24:
      dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a19);
      if (a18)
      {
        std::__shared_weak_count::__release_weak(a18);
      }

      std::__shared_weak_count::__release_weak(v76);
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a21);
    goto LABEL_24;
  }

LABEL_22:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_297622248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a76 < 0)
  {
    operator delete(a75);
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a74 & 0x80000000) == 0)
  {
LABEL_3:
    if (a72 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  operator delete(a73);
  if (a72 < 0)
  {
LABEL_4:
    operator delete(a69);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if (a62 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a63);
  if (a62 < 0)
  {
LABEL_6:
    operator delete(a57);
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if (a50 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if (a50 < 0)
  {
LABEL_8:
    operator delete(a45);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if (a38 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if (a38 < 0)
  {
LABEL_10:
    operator delete(a33);
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a26 & 0x80000000) == 0)
    {
LABEL_24:
      dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(&a19);
      if (a18)
      {
        std::__shared_weak_count::__release_weak(a18);
      }

      std::__shared_weak_count::__release_weak(v76);
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a21);
    goto LABEL_24;
  }

LABEL_22:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_2976222C8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2976222D0);
  }

  JUMPOUT(0x297622444);
}

void sub_297622454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  while (1)
  {
    v22 = *(v21 - 1);
    v21 -= 3;
    if (v22 < 0)
    {
      operator delete(*v21);
    }

    if (v21 == &a21)
    {
      JUMPOUT(0x297622418);
    }
  }
}

void ___ZZN13AntennaModule4initEvENK3__0clEv_block_invoke(void *a1, xpc_object_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          return;
        }
      }

      AntennaModule::processCallback(v5, a2);
    }
  }
}

void std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[1];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v3 = v1;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v1 = v3;
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<antenna::Service *,std::shared_ptr<antenna::Service>::__shared_ptr_default_delete<antenna::Service,antenna::Service>,std::allocator<antenna::Service>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A6057)
  {
    if (((v2 & 0x80000002976A6057 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A6057))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A6057 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E4CF38;
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

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIK13AntennaModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIK13AntennaModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297622964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AntennaModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297622A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1 + 1);
  v5 = 3760250880;
  if (MEMORY[0x29C272BA0](*v4) == MEMORY[0x29EDCAA00])
  {
    v6 = *(v3 + 120);
    if (v6)
    {
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        xpc::object::to_string(__p, (v2 + 1));
        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136315138;
        v19 = v10;
        _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Received Audio State: %s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        v6 = *(v3 + 120);
        v8 = *v4;
        if (*v4)
        {
LABEL_5:
          xpc_retain(v8);
          v9 = *v6;
          if (!*v6)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v8 = *v4;
        if (*v4)
        {
          goto LABEL_5;
        }
      }

      v8 = xpc_null_create();
      v9 = *v6;
      if (!*v6)
      {
LABEL_18:
        xpc_release(v8);
        v5 = 0;
        goto LABEL_19;
      }

LABEL_14:
      __p[0] = v8;
      if (v8)
      {
        xpc_retain(v8);
        v11 = v8;
      }

      else
      {
        v11 = xpc_null_create();
        __p[0] = v11;
      }

      antenna::Service::Internal::setAudioState(v9, __p);
      xpc_release(v11);
      goto LABEL_18;
    }
  }

LABEL_19:
  v12 = v2[2];
  __p[0] = xpc_null_create();
  (*(v12 + 16))(v12, v5, __p);
  xpc_release(__p[0]);
  v13 = v2[2];
  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(*v4);
  operator delete(v2);
  v14 = a1[2];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
  v15 = *MEMORY[0x29EDCA608];
}

void sub_297622CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250880;
  if (MEMORY[0x29C272BA0]((*a1)[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      v6 = v2[1];
      v10 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        v6 = xpc_null_create();
        v10 = v6;
      }

      antenna::Service::setMotionThresholds(v5, &v10);
      xpc_release(v6);
      v4 = 0;
      v10 = 0;
    }
  }

  v7 = v2[2];
  object = xpc_null_create();
  (*(v7 + 16))(v7, v4, &object);
  xpc_release(object);
  v8 = v2[2];
  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297622E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(v12);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(xpc_object_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *a1 + 1;
  v5 = 3760250880;
  if (MEMORY[0x29C272BA0](*v4) == MEMORY[0x29EDCAA00])
  {
    v6 = *(v3 + 15);
    if (v6)
    {
      if (*v6)
      {
        antenna::Service::Internal::antennaSetProperty(*v6, v2 + 1);
      }

      AntennaModule::setProperty_sync(v3, v2 + 1);
      v5 = 0;
    }
  }

  v7 = v2[2];
  object = xpc_null_create();
  v7[2](v7, v5, &object);
  xpc_release(object);
  v8 = v2[2];
  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(*v4);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_297623084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13AntennaModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v11 = -534716416;
  v4 = xpc_null_create();
  v10 = v4;
  if (MEMORY[0x29C272BA0](v2[1]) == MEMORY[0x29EDCAA00])
  {
    v5 = *(v3 + 120);
    if (v5)
    {
      antenna::Service::antennaGetProperty(v5, v2 + 1, &object);
      v6 = object;
      object = xpc_null_create();
      v10 = v6;
      xpc_release(v4);
      xpc_release(object);
      v11 = 0;
    }
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>(v2 + 2, &v11, &v10);
  xpc_release(v10);
  v7 = v2[2];
  if (v7)
  {
    _Block_release(v7);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_297623250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  xpc_release(v13);
  _ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13AntennaModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CF78;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CF78;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CF78;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CF78;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_0,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::dumpState(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4CFF8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4CFF8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4CFF8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4CFF8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_1,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::dumpState(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4D078;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4D078;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4D078;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4D078;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_297624054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_2,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (!*(v3 + 120))
  {
    goto LABEL_46;
  }

  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v5 = *MEMORY[0x29EDBEFB8];
  v6 = strlen(*MEMORY[0x29EDBEFB8]);
  v7 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 == __s1[1])
    {
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v5, v6))
      {
        goto LABEL_37;
      }
    }
  }

  else if (v6 == SHIBYTE(__s1[2]) && !memcmp(__s1, v5, v6))
  {
LABEL_37:
    v16 = **(v3 + 120);
    if (v16)
    {
      antenna::Service::Internal::startService(v16);
    }

    goto LABEL_44;
  }

  v8 = *MEMORY[0x29EDBF210];
  v9 = strlen(*MEMORY[0x29EDBF210]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v8, v9))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v9 == v7 && !memcmp(__s1, v8, v9))
  {
    goto LABEL_42;
  }

  v10 = *MEMORY[0x29EDBF420];
  v11 = strlen(*MEMORY[0x29EDBF420]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v11 == __s1[1])
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v10, v11))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v11 == v7 && !memcmp(__s1, v10, v11))
  {
    goto LABEL_42;
  }

  v12 = *MEMORY[0x29EDBEB58];
  v13 = strlen(*MEMORY[0x29EDBEB58]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v13 == __s1[1])
    {
      if (v13 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v12, v13))
      {
        goto LABEL_42;
      }
    }
  }

  else if (v13 == v7 && !memcmp(__s1, v12, v13))
  {
    goto LABEL_42;
  }

  v14 = *MEMORY[0x29EDBEFC0];
  v15 = strlen(*MEMORY[0x29EDBEFC0]);
  if ((v7 & 0x80000000) != 0)
  {
    if (v15 != __s1[1])
    {
      goto LABEL_44;
    }

    if (v15 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(__s1[0], v14, v15))
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v15 == v7 && !memcmp(__s1, v14, v15))
  {
LABEL_42:
    v17 = **(v3 + 120);
    if (v17)
    {
      antenna::Service::Internal::stopService(v17);
    }
  }

LABEL_44:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

LABEL_46:
  xpc_release(v2[2]);
  v2[2] = 0;
  v18 = v2[1];
  if (v18)
  {
    dispatch_group_leave(v18);
    v19 = v2[1];
    if (v19)
    {
      dispatch_release(v19);
    }
  }

  operator delete(v2);
  v20 = a1[2];
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

void sub_297624470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4D0F8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4D0F8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4D0F8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4D0F8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v10 = v5;
          v11 = v7[10];
          if (!v11)
          {
LABEL_21:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v11 = v7[10];
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v12 = v7[9];
        v13 = std::__shared_weak_count::lock(v11);
        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = v13;
        v15 = operator new(0x18uLL);
        *v15 = v7;
        v15[1] = v4;
        v15[2] = v10;
        v16 = xpc_null_create();
        v17 = v7[11];
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v15;
        v18[1] = v12;
        v18[2] = v14;
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        xpc_release(v16);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<AntennaModule::registerEventHandlers_sync(void)::$_3,std::allocator<AntennaModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN13AntennaModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN13AntennaModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 120))
  {
    if (MEMORY[0x29C272BA0](v2[2]) == MEMORY[0x29EDCAA00])
    {
      value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBE5A8]);
      *buf = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v7 = xpc::dyn_cast_or_default(buf, 0);
      xpc_release(*buf);
      v8 = *(v3 + 120);
      if (v7)
      {
        antenna::Service::callActive(v8);
      }

      else
      {
        antenna::Service::callInactive(v8);
      }
    }

    else
    {
      v4 = *(v3 + 104);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v5 = "No input is given for voice call active state";
LABEL_7:
        _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, v5, buf, 2u);
      }
    }
  }

  else
  {
    v4 = *(v3 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Antenna Service has not created yet.";
      goto LABEL_7;
    }
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v9 = v2[1];
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = v2[1];
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_297624AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<AntennaModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::sleep(dispatch::group_session)::$_0>(AntennaModule::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::enterLowPower(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::wake(dispatch::group_session)::$_0>(AntennaModule::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AntennaModule::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 120);
  if (v3 && *v3)
  {
    antenna::Service::Internal::exitLowPower(*v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void dispatch::async<void ctu::SharedSynchronizable<AntennaModule>::execute_wrapped<AntennaModule::initializeProperty(void)::$_0>(AntennaModule::initializeProperty(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,dispatch_queue_s *::default_delete<AntennaModule::initializeProperty(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AntennaModule::initializeProperty_sync(**a1, *a1 + 8);
  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_297624DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  _ZNSt3__110unique_ptrIZZN11FSModuleICE26registerEventHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *ABMProperties::create_default_global(ABMProperties *this)
{
  v2 = operator new(0x18uLL);
  MEMORY[0x29C270EE0](v2, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E43EE0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_297624E84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::shared_ptr<ABMProperties>::operator=[abi:ne200100](uint64_t a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(&xmmword_2A18CAF18 + 1);
  xmmword_2A18CAF18 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __cxx_global_var_init_22()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_23()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297476000);
  }

  return result;
}

void LogTracker::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xA8uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LogTracker::LogTracker(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<LogTracker>::shared_ptr[abi:ne200100]<LogTracker,std::shared_ptr<LogTracker> ctu::SharedSynchronizable<LogTracker>::make_shared_ptr<LogTracker>(LogTracker*)::{lambda(LogTracker*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_297625070(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void *LogTracker::LogTracker(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E4A9F0;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E4A9F0;
  }

  *a1 = &unk_2A1E4D178;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "logtracker.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("logtracker.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 13, v9);
  MEMORY[0x29C270D60](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E4D178;
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[18] = 0;
  a1[19] = 0;
  return a1;
}

void LogTracker::~LogTracker(LogTracker *this)
{
  *this = &unk_2A1E4D178;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 19);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(*(this + 15));
  MEMORY[0x29C270D60](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  LogTracker::~LogTracker(this);

  operator delete(v1);
}

_WORD *LogTracker::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void LogTracker::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void LogTracker::registerCommandHandlers_sync(uint64_t a1, NSObject **a2)
{
  v148 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &buf, 2u);
    v5 = *(a1 + 80);
    if (!v5)
    {
LABEL_239:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_239;
    }
  }

  v6 = *(a1 + 72);
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_239;
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  LogTracker::checkLoggingVersion_sync(a1);
  v9 = dispatch_group_create();
  v10 = *(a1 + 136);
  *(a1 + 136) = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v12 = dispatch_group_create();
  v13 = *(a1 + 152);
  *(a1 + 152) = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 160) = 0;
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], v11) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v14) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v14))
  {
    v144 = 0xAAAAAAAAAAAAAAAALL;
    v145 = 0xAAAAAAAAAAAAAAAALL;
    abm::HelperClient::create(&v144, "tracing.helper", v14);
    v15 = *(a1 + 104);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I ABM is initializing; reinit traces in helper", &buf, 2u);
    }

    v142 = 0xAAAAAAAAAAAAAAAALL;
    v143 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
    v16 = *a2;
    aBlock[4] = a1;
    v139 = v16;
    if (v16)
    {
      dispatch_retain(v16);
      dispatch_group_enter(v139);
    }

    v140 = v144;
    v141 = v145;
    if (v145)
    {
      atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    v18 = *(a1 + 88);
    if (v18)
    {
      dispatch_retain(*(a1 + 88));
    }

    v142 = v17;
    v143 = v18;
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v19) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v19);
        v20 = v19;
      }

      else
      {
        v20 = xpc_null_create();
      }
    }

    else
    {
      v20 = xpc_null_create();
      v19 = 0;
    }

    xpc_release(v19);
    v21 = xpc_int64_create(5000);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, *MEMORY[0x29EDBD2D8], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = *MEMORY[0x29EDBE590];
    v24 = strlen(*MEMORY[0x29EDBE590]);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v24 | 7) + 1;
      }

      p_dst = operator new(v27);
      v137 = v27 | 0x8000000000000000;
      __dst = p_dst;
      v136 = v25;
    }

    else
    {
      HIBYTE(v137) = v24;
      p_dst = &__dst;
      if (!v24)
      {
LABEL_38:
        *(p_dst + v25) = 0;
        memset(&buf, 0, sizeof(buf));
        if (prop::bbtrace::get(&__dst, &buf))
        {
          v146 = -1431655766;
          v28 = util::convert<int>(&buf, &v146, 0);
          if (v146 == 4)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_46:
            if (SHIBYTE(v137) < 0)
            {
              operator delete(__dst);
            }

            v30 = *MEMORY[0x29EDBE880];
            v31 = strlen(*MEMORY[0x29EDBE880]);
            if (v31 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v32 = v31;
            if (v31 >= 0x17)
            {
              if ((v31 | 7) == 0x17)
              {
                v34 = 25;
              }

              else
              {
                v34 = (v31 | 7) + 1;
              }

              v33 = operator new(v34);
              v137 = v34 | 0x8000000000000000;
              __dst = v33;
              v136 = v32;
            }

            else
            {
              HIBYTE(v137) = v31;
              v33 = &__dst;
              if (!v31)
              {
LABEL_57:
                *(v33 + v32) = 0;
                memset(&buf, 0, sizeof(buf));
                if (prop::bbtrace::get(&__dst, &buf))
                {
                  v146 = -1431655766;
                  v35 = util::convert<int>(&buf, &v146, 0);
                  if (v146 == 1)
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_70:
                    operator delete(buf.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v137) < 0)
                    {
LABEL_71:
                      operator delete(__dst);
                      if ((v29 & v36) != 1)
                      {
LABEL_72:
                        v126 = v20;
                        if (v20)
                        {
                          xpc_retain(v20);
                          v38 = v142;
                          if (!v142)
                          {
                            goto LABEL_83;
                          }
                        }

                        else
                        {
                          v126 = xpc_null_create();
                          v38 = v142;
                          if (!v142)
                          {
LABEL_83:
                            v40 = *MEMORY[0x29EDBD390];
                            v124 = v38;
                            object = v143;
                            if (v143)
                            {
                              dispatch_retain(v143);
                            }

                            abm::HelperClient::perform();
                            if (object)
                            {
                              dispatch_release(object);
                            }

                            if (v124)
                            {
                              _Block_release(v124);
                            }

                            xpc_release(v126);
                            v126 = 0;
LABEL_107:
                            xpc_release(v20);
                            if (v143)
                            {
                              dispatch_release(v143);
                            }

                            if (v142)
                            {
                              _Block_release(v142);
                            }

                            v45 = v141;
                            if (v141 && !atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v45->__on_zero_shared)(v45);
                              std::__shared_weak_count::__release_weak(v45);
                            }

                            if (v139)
                            {
                              dispatch_group_leave(v139);
                              if (v139)
                              {
                                dispatch_release(v139);
                              }
                            }

                            v46 = v145;
                            if (v145 && !atomic_fetch_add((v145 + 8), 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v46->__on_zero_shared)(v46);
                              std::__shared_weak_count::__release_weak(v46);
                            }

                            goto LABEL_120;
                          }
                        }

                        v38 = _Block_copy(v38);
                        goto LABEL_83;
                      }

LABEL_66:
                      v37 = *(a1 + 104);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                        _os_log_impl(&dword_297476000, v37, OS_LOG_TYPE_DEFAULT, "#N Cellular Logging was detected before initiating LogTracker. The service needs to be paused in boot-up.", &buf, 2u);
                      }

                      v134 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                      }

                      else
                      {
                        v134 = xpc_null_create();
                      }

                      v127[0] = MEMORY[0x29EDCA5F8];
                      v127[1] = 3321888768;
                      v127[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke_4;
                      v127[3] = &__block_descriptor_72_e8_32c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE48c15_ZTSN3xpc4dictE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
                      v127[4] = v144;
                      v128 = v145;
                      if (v145)
                      {
                        atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
                      }

                      v129 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                        v39 = v142;
                        if (!v142)
                        {
                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v129 = xpc_null_create();
                        v39 = v142;
                        if (!v142)
                        {
LABEL_92:
                          v130 = v39;
                          v131 = v143;
                          if (v143)
                          {
                            dispatch_retain(v143);
                          }

                          v41 = _Block_copy(v127);
                          v42 = *MEMORY[0x29EDBD470];
                          v43 = *(a1 + 88);
                          if (v43)
                          {
                            dispatch_retain(*(a1 + 88));
                          }

                          v132 = v41;
                          v133 = v43;
                          abm::HelperClient::perform();
                          if (v133)
                          {
                            dispatch_release(v133);
                          }

                          if (v132)
                          {
                            _Block_release(v132);
                          }

                          xpc_release(v134);
                          v134 = 0;
                          if (v131)
                          {
                            dispatch_release(v131);
                          }

                          if (v130)
                          {
                            _Block_release(v130);
                          }

                          xpc_release(v129);
                          v129 = 0;
                          v44 = v128;
                          if (v128 && !atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v44->__on_zero_shared)(v44);
                            std::__shared_weak_count::__release_weak(v44);
                          }

                          goto LABEL_107;
                        }
                      }

                      v39 = _Block_copy(v39);
                      goto LABEL_92;
                    }

LABEL_65:
                    if ((v29 & v36) != 1)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_66;
                  }
                }

                else
                {
                  v36 = 0;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_70;
                  }
                }

                if (SHIBYTE(v137) < 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_65;
              }
            }

            memmove(v33, v30, v32);
            goto LABEL_57;
          }
        }

        else
        {
          v29 = 0;
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        operator delete(buf.__r_.__value_.__l.__data_);
        goto LABEL_46;
      }
    }

    memmove(p_dst, v23, v25);
    goto LABEL_38;
  }

LABEL_120:
  v47 = MEMORY[0x29EDBFC08];
  strlen(*MEMORY[0x29EDBFC08]);
  ctu::fs::create_directory();
  v48 = MEMORY[0x29EDBFC20];
  v49 = *MEMORY[0x29EDBFC20];
  v50 = strlen(*MEMORY[0x29EDBFC20]);
  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;
  if (v50 >= 0x17)
  {
    if ((v50 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v50 | 7) + 1;
    }

    v52 = operator new(v53);
    v123 = v53 | 0x8000000000000000;
    v122[0] = v52;
    v122[1] = v51;
    goto LABEL_128;
  }

  HIBYTE(v123) = v50;
  v52 = v122;
  if (v50)
  {
LABEL_128:
    memmove(v52, v49, v51);
  }

  *(v51 + v52) = 0;
  v54 = *v47;
  v55 = strlen(*v47);
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v56 = v55;
  if (v55 >= 0x17)
  {
    if ((v55 | 7) == 0x17)
    {
      v58 = 25;
    }

    else
    {
      v58 = (v55 | 7) + 1;
    }

    v57 = operator new(v58);
    v121 = v58 | 0x8000000000000000;
    __p[0] = v57;
    __p[1] = v56;
  }

  else
  {
    HIBYTE(v121) = v55;
    v57 = __p;
    if (!v55)
    {
      goto LABEL_138;
    }
  }

  memmove(v57, v54, v56);
LABEL_138:
  *(v56 + v57) = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v118, "[^\\.].*", 0);
  util::moveDirContent(v122, __p, 1u, 1, &v118);
  v59 = v119;
  if (!v119 || atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v118);
    if ((SHIBYTE(v121) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_236:
    operator delete(__p[0]);
    if ((SHIBYTE(v123) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_237;
  }

  (v59->__on_zero_shared)(v59);
  std::__shared_weak_count::__release_weak(v59);
  std::locale::~locale(&v118);
  if (SHIBYTE(v121) < 0)
  {
    goto LABEL_236;
  }

LABEL_141:
  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_237:
  operator delete(v122[0]);
LABEL_142:
  strlen(*v48);
  ctu::fs::create_directory();
  v60 = *(a1 + 104);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *v48;
    v62 = *v47;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v61;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v62;