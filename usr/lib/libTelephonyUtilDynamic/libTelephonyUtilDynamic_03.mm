uint64_t _ZZZN16MockTimerService22createOneShotTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEEEUb0_EN3__2D1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void MockTimerService::createPeriodicTimerImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1174405120;
  v22[2] = ___ZN16MockTimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS0_8functionIFvvEEE_block_invoke;
  v22[3] = &__block_descriptor_tmp_24_0;
  v22[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v24 = a3;
  v25 = a4;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v26, a5);
  v13 = v22;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIU13block_pointerFNSt3__110unique_ptrINS_5TimerENS4_14default_deleteIS6_EEEEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
  v14[3] = &__block_descriptor_tmp_58;
  v14[4] = a1 + 8;
  v14[5] = &v13;
  v15 = v14;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a6 = 0;
    block = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v19 = &__block_descriptor_tmp_60;
    v20 = a6;
    v21 = &v15;
    dispatch_async_and_wait(v11, &block);
  }

  else
  {
    *a6 = 0;
    block = MEMORY[0x1E69E9820];
    v17 = 0x40000000;
    v18 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v19 = &__block_descriptor_tmp_59;
    v20 = a6;
    v21 = &v15;
    dispatch_sync(v11, &block);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ___ZN16MockTimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tNS0_8functionIFvvEEE_block_invoke(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  std::mutex::lock(v5);
  if (!*(v4 + 248))
  {
    v6 = operator new(0x58uLL);
    v6[10] = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100]((v4 + 248), v6);
  }

  std::condition_variable::notify_one((v4 + 200));
  ctu::IMockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>::call<std::string const&,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>(*(v4 + 248), (a1 + 40), (a1 + 64));
  std::mutex::unlock(v5);
  v7 = *(v4 + 256);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v12, a1 + 80);
  MockTimerServiceState::createPeriodicTimer(a2, v7, &__p, v8, v9, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void MockTimerService::createPeriodicTimerImpl(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject **a5@<X5>, void **a6@<X6>, void *a7@<X8>)
{
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1174405120;
  v16[2] = ___ZN16MockTimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_27_0;
  v16[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v18 = a3;
  v19 = a4;
  v13 = *a5;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a6;
  if (*a6)
  {
    v14 = _Block_copy(v14);
  }

  aBlock = v14;
  v22 = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIU13block_pointerFNSt3__110unique_ptrINS_5TimerENS4_14default_deleteIS6_EEEEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSC__block_invoke;
  v23[3] = &__block_descriptor_tmp_58;
  v23[4] = a1 + 8;
  v23[5] = &v22;
  v24 = v23;
  v15 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a7 = 0;
    block = MEMORY[0x1E69E9820];
    v26 = 0x40000000;
    v27 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v28 = &__block_descriptor_tmp_60;
    v29 = a7;
    v30 = &v24;
    dispatch_async_and_wait(v15, &block);
  }

  else
  {
    *a7 = 0;
    block = MEMORY[0x1E69E9820];
    v26 = 0x40000000;
    v27 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v28 = &__block_descriptor_tmp_59;
    v29 = a7;
    v30 = &v24;
    dispatch_sync(v15, &block);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN16MockTimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  std::mutex::lock(v5);
  if (!*(v4 + 248))
  {
    v6 = operator new(0x58uLL);
    v6[10] = 0;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100]((v4 + 248), v6);
  }

  std::condition_variable::notify_one((v4 + 200));
  ctu::IMockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>::call<std::string const&,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>(*(v4 + 248), (a1 + 40), (a1 + 64));
  std::mutex::unlock(v5);
  v7 = *(v4 + 256);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v15 = *(a1 + 40);
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *(a1 + 88);
  if (v11)
  {
    v12 = _Block_copy(v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = 0;
  v16[0] = &unk_1F1CB95A0;
  v16[1] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  v16[2] = v13;
  v17 = v16;
  MockTimerServiceState::createPeriodicTimer(a2, v7, &v15, v8, v9, v16);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v16);
  if (v12)
  {
    _Block_release(v12);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t _ZZZN16MockTimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEEEUb1_EN3__3D1Ev(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

uint64_t MockTimerService::now(MockTimerService *this)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN16MockTimerService3nowEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_29;
  v4[4] = this;
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIU13block_pointerFNSt3__16chrono10time_pointINS5_12steady_clockENS5_8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSF__block_invoke;
  v6[3] = &__block_descriptor_tmp_61;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16chrono10time_pointINS2_12steady_clockENS2_8durationIxNS1_5ratioILl1ELl1000000000EEEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_63;
    v12 = &v14;
    v13 = &v7;
    v14 = 0;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16chrono10time_pointINS2_12steady_clockENS2_8durationIxNS1_5ratioILl1ELl1000000000EEEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_62;
    v12 = &v14;
    v13 = &v7;
    v14 = 0;
    dispatch_sync(v1, &block);
  }

  return v14;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::shared_ptr<MockTimerServiceState::ScheduledThing> const&,std::shared_ptr<MockTimerServiceState::ScheduledThing> const&),std::__wrap_iter<std::shared_ptr<MockTimerServiceState::ScheduledThing>*>>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(v8, (a2 - 16)))
    {
      v15 = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v12 = *(v9 + 1);
        *v9 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, &v15) & 1) != 0);
      v13 = v15;
      v15 = 0uLL;
      v14 = *(v10 + 1);
      *v10 = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }
    }
  }
}

void sub_1A910CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<ctu::MockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::reset[abi:ne200100](void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      v4 = v2[9];
      v5 = v2[8];
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = v2[8];
      }

      v2[9] = v3;
      operator delete(v5);
    }

    v7 = v2[7];
    if (v7 == v2 + 4)
    {
      (*(*v7 + 32))(v7);
    }

    else if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v2[1];
    if (v8)
    {
      v9 = v2[2];
      v10 = v2[1];
      if (v9 != v8)
      {
        do
        {
          v11 = *(v9 - 17);
          v9 -= 5;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = v2[1];
      }

      v2[2] = v8;
      operator delete(v10);
    }

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::allocate_shared[abi:ne200100]<MockTimerServiceState::ScheduledThing,std::allocator<MockTimerServiceState::ScheduledThing>,std::string,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>> &,std::function<void ()(void)>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = operator new(0x68uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_1F1CB93B0;
  v9 = *a2;
  v16[0] = a2[1];
  *(v16 + 7) = *(a2 + 15);
  v10 = *(a2 + 23);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v11 = *a3;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v15, a4);
  *(v8 + 24) = 0;
  v12 = v16[0];
  v8[4] = v9;
  v8[5] = v12;
  *(v8 + 47) = *(v16 + 7);
  *(v8 + 55) = v10;
  v8[7] = v11;
  v8[8] = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((v8 + 9), v15);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15);
  *a1 = v8 + 3;
  a1[1] = v8;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__shared_ptr_emplace<MockTimerServiceState::ScheduledThing>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB93B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<MockTimerServiceState::ScheduledThing>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 72);
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::shared_ptr<MockTimerService>::shared_ptr[abi:ne200100]<MockTimerService,std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService*)#1},0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4->__vftable = &unk_1F1CB9400;
  v4->__shared_owners_ = 0;
  v4->__shared_weak_owners_ = 0;
  v4[1].__vftable = a2;
  a1[1] = v4;
  if (a2)
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      goto LABEL_6;
    }

    if (v5->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      std::__shared_weak_count::__release_weak(v5);
LABEL_6:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return a1;
}

void sub_1A910D000(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService*)#1}::operator() const(MockTimerService*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<MockTimerService *,std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService *)#1},std::allocator<MockTimerService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<MockTimerService *,std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService *)#1},std::allocator<MockTimerService>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<MockTimerService> ctu::SharedSynchronizable<MockTimerService>::make_shared_ptr<MockTimerService>(MockTimerService*)::{lambda(MockTimerService*)#1}::operator() const(MockTimerService*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void __copy_helper_block_e8_32b40c45_ZTSNSt3__110shared_ptrIK16MockTimerServiceEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 48);
  a1[5] = *(a2 + 40);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32b40c45_ZTSNSt3__110shared_ptrIK16MockTimerServiceEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFmvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFmvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

__n128 ___ZNK3ctu20SharedSynchronizableI16MockTimerServiceE20execute_wrapped_syncIZNS1_14popTimersFiredEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(**(a1 + 40) + 256);
  result = *(v2 + 56);
  *a2 = result;
  a2[1].n128_u64[0] = *(v2 + 72);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  return result;
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  std::vector<std::string>::__vdeallocate(v2);
  *&v2->__begin_ = v3;
  v2->__end_cap_.__value_ = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  std::vector<std::string>::__vdeallocate(v2);
  *&v2->__begin_ = v3;
  v2->__end_cap_.__value_ = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void *_ZNSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_ED1Ev(void *a1)
{
  *a1 = &unk_1F1CB9490;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_ED0Ev(void *__p)
{
  *__p = &unk_1F1CB9490;
  v2 = __p[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_E7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F1CB9490;
  v2[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v2[2] = v4;
  return v2;
}

void *_ZNKSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F1CB9490;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a1 + 16);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_E7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_E18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZZN16MockTimerService17scheduleAfterImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSI_5blockIU13block_pointerFvvEEEEUb_E3__1NS6_ISO_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN16MockTimerService17scheduleAfterImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEEN8dispatch5queueENSG_5blockIU13block_pointerFvvEEEEUb_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ctu::IMockMethodHandler<void,std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>::call<std::string const&,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>> const&>(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  ++*a1;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v7 >= v6)
  {
    v9 = *(a1 + 8);
    v10 = v7 - v9;
    v11 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3) + 1;
    if (v11 > 0x666666666666666)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    v39 = a1 + 8;
    if (v13)
    {
      if (v13 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v14 = operator new(40 * v13);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * (v10 >> 3)];
    v35 = v14;
    v36 = v16;
    v17 = &v14[40 * v13];
    v37 = v16;
    v38 = v17;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14[8 * (v10 >> 3)], *a2, *(a2 + 1));
      v18 = v36;
      v19 = v37;
      v17 = v38;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16) - v9;
    }

    else
    {
      *v16 = *a2;
      *(v16 + 2) = *(a2 + 2);
      v18 = &v14[8 * (v10 >> 3)];
      v19 = v18;
    }

    *(v16 + 24) = *a3;
    v15 = v19 + 40;
    v20 = &v18[-v10];
    memcpy(&v18[-v10], v9, v10);
    v21 = *(a1 + 8);
    *(a1 + 8) = v20;
    *(a1 + 16) = v15;
    v22 = *(a1 + 24);
    *(a1 + 24) = v17;
    v37 = v21;
    v38 = v22;
    v35 = v21;
    v36 = v21;
    std::__split_buffer<std::tuple<std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::~__split_buffer(&v35);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 16), *a2, *(a2 + 1));
    }

    else
    {
      v8 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v8;
    }

    *(v7 + 24) = *a3;
    v15 = (v7 + 40);
    *(a1 + 16) = v7 + 40;
  }

  *(a1 + 16) = v15;
  v23 = *(a1 + 64);
  while (v23 != *(a1 + 72))
  {
    v24 = *v23;
    v25 = v23[1];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = (*(*v24 + 32))(v24, *(a1 + 16) - 40);
    if (v26)
    {
      v27 = *(a1 + 72);
      if (v23 + 2 == v27)
      {
        v31 = v23;
      }

      else
      {
        v28 = v23;
        do
        {
          v29 = *(v28 + 1);
          v28[2] = 0;
          v28[3] = 0;
          v30 = v28[1];
          *v28 = v29;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          v31 = v28 + 2;
          v32 = v28 + 4;
          v28 += 2;
        }

        while (v32 != v27);
        v27 = *(a1 + 72);
      }

      while (v27 != v31)
      {
        v33 = *(v27 - 1);
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        v27 -= 2;
      }

      *(a1 + 72) = v31;
      if (!v25)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v23 += 2;
      if (!v25)
      {
        goto LABEL_40;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_40:
    if (v26)
    {
      break;
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result, *(a1 + 16) - 40);
  }

  return result;
}

void sub_1A910D96C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::tuple<std::string,std::tuple<ctu::TimeType,std::chrono::duration<long long,std::ratio<1l,1000000l>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110unique_ptrIN3ctu5TimerENS1_14default_deleteIS4_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZNSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_ED1Ev(void *a1)
{
  *a1 = &unk_1F1CB9520;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_ED0Ev(void *__p)
{
  *__p = &unk_1F1CB9520;
  v2 = __p[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_E7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F1CB9520;
  v2[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v2[2] = v4;
  return v2;
}

void *_ZNKSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F1CB9520;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a1 + 16);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_E7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_E18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZZN16MockTimerService22createOneShotTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb0_E3__2NS6_ISP_EESM_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN16MockTimerService22createOneShotTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEEEUb0_E3__2))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_ED1Ev(void *a1)
{
  *a1 = &unk_1F1CB95A0;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_ED0Ev(void *__p)
{
  *__p = &unk_1F1CB95A0;
  v2 = __p[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_E7__cloneEv(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F1CB95A0;
  v2[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v2[2] = v4;
  return v2;
}

void *_ZNKSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F1CB95A0;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a1 + 16);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_E7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void _ZNSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_E18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZZN16MockTimerService23createPeriodicTimerImplENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_5tupleIJN3ctu8TimeTypeENS_6chrono8durationIxNS_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSJ_5blockIU13block_pointerFvvEEEEUb1_E3__3NS6_ISP_EESM_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN16MockTimerService23createPeriodicTimerImplENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_5tupleIJN3ctu8TimeTypeENS0_6chrono8durationIxNS0_5ratioILl1ELl1000000EEEEEEEE11qos_class_tN8dispatch5queueENSH_5blockIU13block_pointerFvvEEEEUb1_E3__3))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__16chrono10time_pointINS2_12steady_clockENS2_8durationIxNS1_5ratioILl1ELl1000000000EEEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__16chrono10time_pointINS2_12steady_clockENS2_8durationIxNS1_5ratioILl1ELl1000000000EEEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

os_log_t ___ZN3ctu16sGetResXpcLoggerEv_block_invoke()
{
  result = os_log_create("com.apple.commcenter", "rest.xpc");
  _MergedGlobals_3 = result;
  return result;
}

std::string *ctu::RestXpcListener::Configuration::Configuration(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

uint64_t ctu::RestXpcListener::Configuration::isEntitled(const char *a1, void *a2)
{
  if (MEMORY[0x1AC581B70](*a2) != MEMORY[0x1E69E9E68])
  {
    return 0;
  }

  if ((a1[23] & 0x8000000000000000) != 0)
  {
    if (*(a1 + 1))
    {
LABEL_5:
      memset(v13, 0, sizeof(v13));
      v5 = *a2;
      xpc_connection_get_audit_token();
      v6 = xpc_copy_entitlement_for_token();
      v7 = MEMORY[0x1E69E9E80];
      if (v6 || (v6 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x1AC581B70](v6) == v7)
        {
          xpc_retain(v6);
          v8 = v6;
        }

        else
        {
          v8 = xpc_null_create();
        }
      }

      else
      {
        v8 = xpc_null_create();
        v6 = 0;
      }

      xpc_release(v6);
      if (MEMORY[0x1AC581B70](v8) != v7)
      {
        goto LABEL_18;
      }

      if (a1[23] < 0)
      {
        a1 = *a1;
      }

      if (xpc_dictionary_get_value(v8, a1) && (v11 = xpc_dictionary_get_value(v8, a1), MEMORY[0x1AC581B70](v11) == MEMORY[0x1E69E9E58]))
      {
        value = xpc_dictionary_get_value(v8, a1);
        v4 = xpc_BOOL_get_value(value);
      }

      else
      {
LABEL_18:
        v4 = 0;
      }

      xpc_release(v8);
      return v4;
    }
  }

  else if (a1[23])
  {
    goto LABEL_5;
  }

  if (qword_1EB3828C8 != -1)
  {
    dispatch_once(&qword_1EB3828C8, &__block_literal_global_3);
  }

  v9 = _MergedGlobals_3;
  if (os_log_type_enabled(_MergedGlobals_3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13[0]) = 0;
    _os_log_debug_impl(&dword_1A90E3000, v9, OS_LOG_TYPE_DEBUG, "Entitlement policy not used by RestXpcListener. Clients always allowed", v13, 2u);
  }

  return 1;
}

void ctu::RestXpcListener::create(xpc_object_t *a1@<X0>, dispatch_object_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x68uLL);
  v13 = *a1;
  *a1 = xpc_null_create();
  object = *a2;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  ctu::RestXpcListener::RestXpcListener(v8, &v13, &object, &__p);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  v9->__vftable = &unk_1F1CB4D30;
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v8;
  a4[1] = v9;
  v10 = *(v8 + 2);
  if (v10)
  {
    if (v10->__shared_owners_ != -1)
    {
      goto LABEL_9;
    }

    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_9:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v13);
}

void sub_1A910E550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, dispatch_object_t object, xpc_object_t a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a17);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t ctu::RestXpcListener::RestXpcListener(uint64_t a1, xpc_object_t *a2, void *a3, __int128 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1CB7150;
  *(a1 + 24) = *a2;
  *a2 = xpc_null_create();
  *(a1 + 32) = *a3;
  *a3 = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v7;
  }

  *(a1 + 64) = 0;
  v8 = xpc_null_create();
  v10 = v8;
  ctu::XpcServerHelper::XpcServerHelper((a1 + 72), &v10);
  xpc_release(v8);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1A910E6F0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc::connection::~connection(v2);
  v5 = *(v1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void ctu::RestXpcListener::weak_from_this(ctu::RestXpcListener *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *a2 = v5;
  a2[1] = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void ctu::RestXpcListener::createConnector(xpc_connection_t *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::RestXpcListener::createPeerConnection(this, &object);
  ctu::rest::RestXpcConnector::create(&object, a2);
  xpc_release(object);
}

void ctu::RestXpcListener::createPeerConnection(xpc_connection_t *this@<X0>, void *a2@<X8>)
{
  ctu::RestXpcListener::getXpcEndpoint(this, &v7);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v3 = xpc_null_create();
  *a2 = v3;
  v4 = v7;
  if (MEMORY[0x1AC581B70](v7) == MEMORY[0x1E69E9E90])
  {
    v5 = xpc_connection_create_from_endpoint(v4);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v6 = xpc_null_create();
    *a2 = v5;
    xpc_release(v3);
    xpc_release(v6);
  }

  xpc_release(v4);
}

void ctu::RestXpcListener::startListening(ctu::RestXpcListener *this)
{
  v2 = *(this + 3);
  v9 = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v9 = v2;
  }

  v3 = (this + 72);
  ctu::XpcServerHelper::setListener(this + 9, &v9);
  xpc_release(v2);
  v4 = *(this + 4);
  if (v4)
  {
    dispatch_retain(*(this + 4));
  }

  ctu::RestXpcListener::weak_from_this(this, &v7);
  if (MEMORY[0x1AC581B70](*v3) == MEMORY[0x1E69E9E68])
  {
    v6 = *v3;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcServerHelper13startListenerINS_15RestXpcListenerEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp_18_2;
    v5 = v8;
    handler[4] = v3;
    handler[5] = v7;
    v11 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_set_target_queue(*v3, v4);
    xpc_connection_resume(*v3);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
    dispatch_release(v4);
  }
}

void sub_1A910EA04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    if (!v20)
    {
LABEL_3:
      if (!v19)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      dispatch_release(v19);
      goto LABEL_8;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v20);
  if (!v19)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *ctu::RestXpcListener::getXpcEndpoint@<X0>(xpc_connection_t *this@<X0>, void *a2@<X8>)
{
  result = xpc_endpoint_create(this[3]);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void *ctu::RestXpcListener::getOrCreateResourceConnection_sync(void *a1, void **a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a1[11];
  v6 = (a1 + 10);
  v7 = *a2;
  if (v5)
  {
    v8 = a1[10];
    v9 = a1[11];
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[3 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 3;
      v9 += ~(v9 >> 1);
      if (v13 >= v7)
      {
        v9 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    while (v9);
  }

  else
  {
    v8 = a1[10];
  }

  v14 = a1[10] + 24 * v5;
  if (v8 != v14 && *v8 > v7)
  {
    v8 = (a1[10] + 24 * v5);
  }

  if (v8 != v14)
  {
    v15 = v8 + 1;
    goto LABEL_65;
  }

  std::allocate_shared[abi:ne200100]<ctu::XpcRestResourceConnection,std::allocator<ctu::XpcRestResourceConnection>,xpc::connection const&,std::string,0>(a2, a3, &v45);
  v16 = *a2;
  v17 = a1[11];
  if (v17)
  {
    v18 = a1[10];
    v19 = a1[11];
    do
    {
      v20 = v19 >> 1;
      v21 = (v18 + 24 * (v19 >> 1));
      v23 = *v21;
      v22 = v21 + 3;
      v19 += ~(v19 >> 1);
      if (v23 >= v16)
      {
        v19 = v20;
      }

      else
      {
        v18 = v22;
      }
    }

    while (v19);
  }

  else
  {
    v18 = a1[10];
  }

  if (v18 == a1[10] + 24 * v17 || *v18 > v16)
  {
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v16 = xpc_null_create();
    }

    v53 = 0xAAAAAAAAAAAAAAAALL;
    v54 = 0xAAAAAAAAAAAAAAAALL;
    object = v16;
    v47 = xpc_null_create();
    v53 = 0;
    v54 = 0;
    v48 = 0;
    v49 = 0;
    p_object = &object;
    v51 = v6;
    v25 = a1[10];
    v24 = a1[11];
    v26 = v25 + 24 * v24;
    if (v26 == v18 || (v27 = object, object < *v18))
    {
      if (v25 != v18)
      {
        v28 = v18 - 24;
        v29 = *(v18 - 24);
        v27 = object;
        if (v29 >= object)
        {
          v18 -= 24;
          if (object >= v29)
          {
            goto LABEL_55;
          }

          if (v28 == v25)
          {
            v18 = a1[10];
          }

          else
          {
            v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v25) >> 3);
            v18 = a1[10];
            do
            {
              v31 = v30 >> 1;
              v32 = (v18 + 24 * (v30 >> 1));
              v34 = *v32;
              v33 = v32 + 3;
              v30 += ~(v30 >> 1);
              if (v34 >= object)
              {
                v30 = v31;
              }

              else
              {
                v18 = v33;
              }
            }

            while (v30);
          }

          if (v18 != v28)
          {
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v18) >> 3);
      do
      {
        v36 = v35 >> 1;
        v37 = (v18 + 24 * (v35 >> 1));
        v39 = *v37;
        v38 = v37 + 3;
        v35 += ~(v35 >> 1);
        if (v39 >= object)
        {
          v35 = v36;
        }

        else
        {
          v18 = v38;
        }
      }

      while (v35);
      if (v18 != v26)
      {
LABEL_48:
        if (*v18 <= v27)
        {
          goto LABEL_55;
        }
      }
    }

    if (a1[12] == v24)
    {
      boost::container::vector<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>,boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>*,boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>>(&v46, v6, v18, &object);
      goto LABEL_56;
    }

    if (v26 == v18)
    {
      boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::pair(v26, &object);
      ++a1[11];
    }

    else
    {
      v40 = v26 - 24;
      boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::pair(v26, v26 - 24);
      ++a1[11];
      for (; v40 != v18; v40 -= 24)
      {
        boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::operator=(v40, (v40 - 24));
      }

      boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::operator=(v18, &object);
    }

LABEL_55:
    v46 = v18;
LABEL_56:
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    xpc_release(object);
    v18 = v46;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    xpc_release(v47);
  }

  v41 = v45;
  v42 = *(v18 + 16);
  v45 = 0uLL;
  *(v18 + 8) = v41;
  v15 = (v18 + 8);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (*(&v45 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v45 + 1));
  }

LABEL_65:
  v43 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1A910EE24(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>,boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>::~value_destructor(va1);
  boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::~pair(va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

unint64_t ctu::RestXpcListener::getResourceConnection_sync@<X0>(unint64_t this@<X0>, const xpc::connection *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(this + 80);
  v4 = *(this + 88);
  v5 = *a2;
  if (v4)
  {
    v6 = *(this + 80);
    v7 = *(this + 88);
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[3 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 3;
      this = v11;
      v7 += ~(v7 >> 1);
      if (v11 >= v5)
      {
        v7 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    while (v7);
  }

  else
  {
    v6 = *(this + 80);
  }

  v12 = (v3 + 24 * v4);
  if (v6 != v12 && *v6 > v5)
  {
    v6 = v12;
  }

  if (v6 == v12)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v14 = v6[1];
    v13 = v6[2];
    *a3 = v14;
    a3[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

BOOL ctu::RestXpcListener::handleNewClient(uint64_t a1, xpc_connection_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1AC581B70](*a2) == MEMORY[0x1E69E9E68])
  {
    pid = xpc_connection_get_pid(*a2);
    v7 = *a2;
    v16 = v7;
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      v7 = xpc_null_create();
      v16 = v7;
    }

    isEntitled = ctu::RestXpcListener::Configuration::isEntitled((a1 + 40), &v16);
    xpc_release(v7);
    v16 = 0;
    if (isEntitled)
    {
      v9 = *a2;
      if (*a2)
      {
        xpc_retain(*a2);
      }

      else
      {
        v9 = xpc_null_create();
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        dispatch_retain(*(a1 + 32));
      }

      ctu::RestXpcListener::weak_from_this(a1, &v14);
      *buf = MEMORY[0x1E69E9820];
      v18 = 1174405120;
      v19 = ___ZNK3ctu15XpcServerHelper12acceptClientINS_15RestXpcListenerEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
      v20 = &__block_descriptor_tmp_27_1;
      v12 = v15;
      v21 = v14;
      v22 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = v9;
      xpc_connection_set_event_handler(v9, buf);
      xpc_connection_set_target_queue(v9, v11);
      xpc_connection_resume(v9);
      if (v22)
      {
        std::__shared_weak_count::__release_weak(v22);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v11)
      {
        dispatch_release(v11);
      }

      xpc_release(v9);
      result = 1;
    }

    else
    {
      if (qword_1EB3828C8 != -1)
      {
        dispatch_once(&qword_1EB3828C8, &__block_literal_global_3);
      }

      v10 = _MergedGlobals_3;
      result = os_log_type_enabled(_MergedGlobals_3, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 67109120;
        *&buf[4] = pid;
        _os_log_impl(&dword_1A90E3000, v10, OS_LOG_TYPE_INFO, "Client [%d] is not entitled and thus is rejected", buf, 8u);
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_1EB3828C8 != -1)
    {
      dispatch_once(&qword_1EB3828C8, &__block_literal_global_3);
    }

    v4 = _MergedGlobals_3;
    result = os_log_type_enabled(_MergedGlobals_3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A90E3000, v4, OS_LOG_TYPE_ERROR, "New REST XPC client has no valid connection", buf, 2u);
LABEL_16:
      result = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A910F1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::RestXpcListener::handleClientMessage(ctu::RestXpcListener *this, void **a2, xpc_object_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (xpc_dictionary_get_value(*a3, "r"))
  {
    v18[0] = a3;
    v18[1] = "a";
    xpc::dict::object_proxy::operator xpc::object(v18, &object);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    xpc::dyn_cast_or_default(&object, &v21, &__p);
    ResourceConnection_sync = ctu::RestXpcListener::getOrCreateResourceConnection_sync(this, a2, &__p);
    v8 = *ResourceConnection_sync;
    v7 = ResourceConnection_sync[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_release(object);
    v18[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::rest::createReply(a3, v18);
    v9 = MEMORY[0x1AC581B70](v18[0]);
    v10 = *(this + 8);
    if (v9 == MEMORY[0x1E69E9E80])
    {
      v21 = v8;
      v22 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      v16 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v16 = xpc_null_create();
      }

      v13 = v18[0];
      if (v18[0])
      {
        xpc_retain(v18[0]);
      }

      else
      {
        v13 = xpc_null_create();
      }

      v25 = 0;
      v24[0] = &unk_1F1CB5660;
      v24[1] = v13;
      v14 = xpc_null_create();
      v25 = v24;
      (*(*v10 + 24))(v10, &v21, &v16, v24);
      std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v24);
      xpc_release(v14);
      xpc_release(v16);
      v16 = 0;
    }

    else
    {
      v21 = v8;
      v22 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *a3;
      v17 = v11;
      if (v11)
      {
        xpc_retain(v11);
      }

      else
      {
        v17 = xpc_null_create();
      }

      (*(*v10 + 16))(v10, &v21, &v17);
      xpc_release(v17);
      v17 = 0;
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    xpc_release(v18[0]);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A910F4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestXpcListener::handleClientError(void *a1, const xpc::connection *a2, xpc_object_t *a3)
{
  v6 = a1[8];
  ctu::RestXpcListener::getResourceConnection_sync(a1, a2, &v20);
  v21 = v20;
  v20 = 0uLL;
  object = *a3;
  *a3 = xpc_null_create();
  (*(*v6 + 32))(v6, &v21, &object);
  xpc_release(object);
  object = 0;
  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
  }

  v7 = *a2;
  v8 = a1[11];
  if (v8)
  {
    v9 = a1[10];
    v10 = a1[11];
    do
    {
      v11 = v10 >> 1;
      v12 = (v9 + 24 * (v10 >> 1));
      v14 = *v12;
      v13 = v12 + 3;
      v10 += ~(v10 >> 1);
      if (v14 >= v7)
      {
        v10 = v11;
      }

      else
      {
        v9 = v13;
      }
    }

    while (v10);
  }

  else
  {
    v9 = a1[10];
  }

  v15 = a1[10] + 24 * v8;
  if (v9 != v15 && *v9 <= v7)
  {
    v16 = v9 + 24;
    while (v16 != v15)
    {
      v17 = v9 + 24;
      v16 = boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::operator=(v9, (v9 + 24)) + 48;
      v9 = v17;
    }

    v18 = *(v15 - 8);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    xpc_release(*(v15 - 24));
    *(v15 - 24) = 0;
    --a1[11];
  }
}

void sub_1A910F6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  xpc_release(object);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void ctu::RestDispatchListener::create(NSObject **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  v5 = *a1;
  v8 = *a1;
  *a1 = 0;
  *a2 = ctu::RestDispatchListener::RestDispatchListener(v4, &v8);
  v6 = operator new(0x20uLL);
  v6->__vftable = &unk_1F1CB4C88;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v4;
  a2[1] = v6;
  v7 = *(v4 + 2);
  if (!v7)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v6;
    goto LABEL_9;
  }

  if (v7->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v6;
    std::__shared_weak_count::__release_weak(v7);
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (!v5)
    {
      return;
    }

    goto LABEL_4;
  }

  if (!v5)
  {
    return;
  }

LABEL_4:

  dispatch_release(v5);
}

void sub_1A910F814(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::RestDispatchListener::RestDispatchListener(uint64_t a1, NSObject **a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1CB7460;
  v3 = *a2;
  *(a1 + 24) = *a2;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *a1 = &unk_1F1CB6C08;
  *(a1 + 32) = 0;
  *(a1 + 40) = &unk_1F1CB6C48;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

uint64_t ctu::RestDispatchListener::createConnector@<X0>(ctu::RestDispatchListener *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::rest::RestDispatchConnector::create(a2);
  v4 = *(this + 2);
  if (!v4 || (v5 = *a2, v6 = *(this + 1), (v7 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = operator new(0x18uLL);
  *v10 = &unk_1F1CB6138;
  v10[1] = v6;
  v10[2] = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_weak(v8);
  result = *(v5 + 64);
  *(v5 + 64) = v10;
  if (result)
  {
    v12 = *(*result + 8);

    return v12();
  }

  return result;
}

void sub_1A910F9F4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

unint64_t ctu::RestDispatchListener::getResourceConnection_sync@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(result + 56);
  v4 = *(result + 64);
  if (v4)
  {
    v5 = *(result + 56);
    v6 = *(result + 64);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[3 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 3;
      result = ~(v6 >> 1);
      v6 += result;
      if (v10 >= a2)
      {
        v6 = v7;
      }

      else
      {
        v5 = v9;
      }
    }

    while (v6);
  }

  else
  {
    v5 = *(result + 56);
  }

  v11 = (v3 + 24 * v4);
  if (v5 != v11 && *v5 > a2)
  {
    v5 = v11;
  }

  if (v5 == v11)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v13 = v5[1];
    v12 = v5[2];
    *a3 = v13;
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void ctu::RestDispatchListener::handleClientError(void *a1, uint64_t a2, xpc_object_t *a3)
{
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = v5;
  v11 = xpc_null_create();
  v12 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  v14 = 0;
  v15 = 0;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<ctu::RestDispatchListener>::execute_wrapped<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>(ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0,dispatch_queue_s *::default_delete<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v14);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v15);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  xpc_release(v11);
}

void ctu::RestXpcListener::~RestXpcListener(ctu::RestXpcListener *this)
{
  ctu::RestXpcListener::~RestXpcListener(this);

  operator delete(v1);
}

{
  *this = &unk_1F1CB7150;
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 10);
    do
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      xpc_release(*v3);
      *v3 = 0;
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  if (*(this + 12))
  {
    operator delete(*(this + 10));
  }

  ctu::XpcServerHelper::~XpcServerHelper(this + 9);
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(*(this + 3));
  *(this + 3) = 0;
  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void non-virtual thunk toctu::RestDispatchListener::~RestDispatchListener(ctu::RestDispatchListener *this)
{
  *(this - 5) = &unk_1F1CB6C08;
  *this = &unk_1F1CB6C48;
  boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::~vector(this + 2);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this - 4);
}

{
  v2 = this - 40;
  *(this - 5) = &unk_1F1CB6C08;
  *this = &unk_1F1CB6C48;
  boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::~vector(this + 2);
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(this - 4);

  operator delete(v2);
}

uint64_t boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void std::__shared_ptr_pointer<ctu::RestXpcListener *,std::shared_ptr<ctu::RestXpcListener>::__shared_ptr_default_delete<ctu::RestXpcListener,ctu::RestXpcListener>,std::allocator<ctu::RestXpcListener>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::RestXpcListener *,std::shared_ptr<ctu::RestXpcListener>::__shared_ptr_default_delete<ctu::RestXpcListener,ctu::RestXpcListener>,std::allocator<ctu::RestXpcListener>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::RestXpcListener *,std::shared_ptr<ctu::RestXpcListener>::__shared_ptr_default_delete<ctu::RestXpcListener,ctu::RestXpcListener>,std::allocator<ctu::RestXpcListener>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ___ZN3ctu15XpcServerHelper13startListenerINS_15RestXpcListenerEEEvN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = a1[5];
  if (v8)
  {
    v9 = MEMORY[0x1AC581B70](a2);
    v10 = MEMORY[0x1E69E9E68];
    if (v9 != MEMORY[0x1E69E9E68])
    {
      if (v9 == MEMORY[0x1E69E9E98] && *v5 == a1[7])
      {
        if (a2)
        {
          xpc_retain(a2);
        }

        else
        {
          a2 = xpc_null_create();
        }

        xpc_release(a2);
      }

      goto LABEL_22;
    }

    if (a2)
    {
      xpc_retain(a2);
      v14 = a2;
      v11 = a2;
    }

    else
    {
      v11 = xpc_null_create();
      v14 = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_17;
      }
    }

    if (MEMORY[0x1AC581B70](v11) == v10)
    {
      xpc_retain(v11);
      v12 = v11;
      goto LABEL_18;
    }

    v12 = xpc_null_create();
LABEL_17:
    v14 = v12;
LABEL_18:
    v13 = ctu::RestXpcListener::handleNewClient(v8, &v14);
    xpc_release(v12);
    v14 = 0;
    xpc_release(v11);
    if (!v13)
    {
      xpc_connection_cancel(a2);
    }
  }

LABEL_22:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3ctu15RestXpcListenerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3ctu15RestXpcListenerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::pair(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = xpc_null_create();
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

void boost::container::vector<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>,boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>*,boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>>(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 1) + 1;
  if (0x555555555555555 - v4 < v5 - v4)
  {
    goto LABEL_26;
  }

  v6 = v4 >> 61;
  v7 = 8 * v4;
  if (v6 > 4)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 / 5;
  if (v6)
  {
    v9 = v8;
  }

  if (v9 >= 0x555555555555555)
  {
    v9 = 0x555555555555555;
  }

  v10 = v5 <= v9 ? v9 : *(a2 + 1) + 1;
  v11 = *(a2 + 1) - 0x555555555555554 < 0;
  if (v5 > 0x555555555555555)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(24 * v10);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 24 * *(a2 + 1);
  if (*a2 != a3)
  {
    v21 = *a2;
    do
    {
      v22 = boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::pair(v17, v21);
      v21 += 24;
      v17 = (v22 + 24);
    }

    while (v21 != a3);
  }

  v23 = boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::pair(v17, a4);
  if (v20 != a3)
  {
    v24 = v23 + 24;
    v25 = a3;
    do
    {
      v26 = boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::pair(v24, v25);
      v25 += 24;
      v24 = v26 + 24;
    }

    while (v25 != v20);
  }

  if (v19)
  {
    for (i = *(a2 + 1); i; --i)
    {
      v28 = *(v19 + 16);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      xpc_release(*v19);
      *v19 = 0;
      v19 += 24;
    }

    operator delete(*a2);
  }

  v29 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v29;
  *(a2 + 2) = v10;
  *a1 = &v18[a3 - v16];
}

uint64_t boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>::operator=(uint64_t a1, xpc_object_t *a2)
{
  v4 = *a2;
  *a2 = xpc_null_create();
  v5 = *a1;
  *a1 = v4;
  xpc_release(v5);
  v6 = *(a2 + 1);
  a2[1] = 0;
  a2[2] = 0;
  v7 = *(a1 + 16);
  *(a1 + 8) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

xpc_object_t **boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>,boost::container::dtl::pair<xpc::connection,std::shared_ptr<ctu::XpcRestResourceConnection>>>::~value_destructor(xpc_object_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  xpc_release(*v2);
  *v2 = 0;
  return a1;
}

void *std::allocate_shared[abi:ne200100]<ctu::XpcRestResourceConnection,std::allocator<ctu::XpcRestResourceConnection>,xpc::connection const&,std::string,0>@<X0>(void **a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  result = std::__shared_ptr_emplace<ctu::XpcRestResourceConnection>::__shared_ptr_emplace[abi:ne200100]<xpc::connection const&,std::string,std::allocator<ctu::XpcRestResourceConnection>,0>(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *std::__shared_ptr_emplace<ctu::XpcRestResourceConnection>::__shared_ptr_emplace[abi:ne200100]<xpc::connection const&,std::string,std::allocator<ctu::XpcRestResourceConnection>,0>(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1CB5040;
  std::construct_at[abi:ne200100]<ctu::XpcRestResourceConnection,xpc::connection const&,std::string,ctu::XpcRestResourceConnection*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ctu::XpcRestResourceConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB5040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::construct_at[abi:ne200100]<ctu::XpcRestResourceConnection,xpc::connection const&,std::string,ctu::XpcRestResourceConnection*>(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  *__p = *a3;
  v8 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  ctu::XpcRestResourceConnection::XpcRestResourceConnection(a1, &object, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  return a1;
}

void sub_1A911060C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t ctu::XpcRestResourceConnection::XpcRestResourceConnection(uint64_t a1, xpc_object_t *a2, __int128 *a3)
{
  *a1 = &unk_1F1CB6A78;
  v4 = *a3;
  *(a1 + 24) = *(a3 + 2);
  *(a1 + 8) = v4;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *a1 = &unk_1F1CB6918;
  *(a1 + 32) = *a2;
  *a2 = xpc_null_create();
  return a1;
}

void ___ZNK3ctu15XpcServerHelper12acceptClientINS_15RestXpcListenerEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[4];
      if (!v7)
      {
LABEL_24:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return;
      }

      v8 = MEMORY[0x1AC581B70](a2);
      v9 = MEMORY[0x1E69E9E80];
      if (v8 != MEMORY[0x1E69E9E80])
      {
        if (v8 == MEMORY[0x1E69E9E98])
        {
          v10 = a1[6];
          v14 = v10;
          if (v10)
          {
            xpc_retain(v10);
          }

          else
          {
            v10 = xpc_null_create();
            v14 = v10;
          }

          object = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            object = xpc_null_create();
          }

          ctu::RestXpcListener::handleClientError(v7, &v14, &object);
          xpc_release(object);
          xpc_release(v10);
        }

        goto LABEL_24;
      }

      v11 = a1[6];
      v16 = v11;
      if (v11)
      {
        xpc_retain(v11);
        if (a2)
        {
LABEL_10:
          xpc_retain(a2);
          v15 = a2;
          goto LABEL_13;
        }
      }

      else
      {
        v16 = xpc_null_create();
        if (a2)
        {
          goto LABEL_10;
        }
      }

      a2 = xpc_null_create();
      v15 = a2;
      if (!a2)
      {
        v12 = xpc_null_create();
        a2 = 0;
        goto LABEL_22;
      }

LABEL_13:
      if (MEMORY[0x1AC581B70](a2) == v9)
      {
        xpc_retain(a2);
LABEL_23:
        ctu::RestXpcListener::handleClientMessage(v7, &v16, &v15);
        xpc_release(v15);
        v15 = 0;
        xpc_release(a2);
        xpc_release(v16);
        goto LABEL_24;
      }

      v12 = xpc_null_create();
LABEL_22:
      v15 = v12;
      goto LABEL_23;
    }
  }
}

void sub_1A9110854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3ctu15RestXpcListenerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3ctu15RestXpcListenerEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F1CB5660;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

void std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::~__func(xpc_object_t *a1)
{
  *a1 = &unk_1F1CB5660;
  xpc_release(a1[1]);

  operator delete(a1);
}

void *std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *v2 = &unk_1F1CB5660;
  v2[1] = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v2[1] = xpc_null_create();
  }

  return v2;
}

xpc_object_t std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F1CB5660;
  a2[1] = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  a2[1] = result;
  return result;
}

void std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::destroy_deallocate(xpc_object_t *a1)
{
  std::__function::__alloc_func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  remote_connection = xpc_dictionary_get_remote_connection(*(a1 + 8));
  if (remote_connection)
  {
    v9 = v3;
    v5 = MEMORY[0x1E69E9E80];
    if (v3 && MEMORY[0x1AC581B70](v3) == v5)
    {
      xpc_retain(v3);
      v6 = v3;
    }

    else
    {
      v6 = xpc_null_create();
      v9 = v6;
    }

    if (MEMORY[0x1AC581B70](v6) == v5)
    {
      v7[0] = &v9;
      v7[1] = "v";
      xpc::dict::object_proxy::operator xpc::object(v7, &object);
      ctu::rest::updateReplyValue(a1 + 8, &object);
      xpc_release(object);
      v6 = v9;
    }

    xpc_release(v6);
    xpc_connection_send_message(remote_connection, *(a1 + 8));
  }

  xpc_release(v3);
}

void sub_1A9110BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0,std::allocator<ctu::RestXpcListener::handleClientMessage(xpc::connection const&,xpc::dict const&)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<ctu::RestDispatchListener *,std::shared_ptr<ctu::RestDispatchListener>::__shared_ptr_default_delete<ctu::RestDispatchListener,ctu::RestDispatchListener>,std::allocator<ctu::RestDispatchListener>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::RestDispatchListener *,std::shared_ptr<ctu::RestDispatchListener>::__shared_ptr_default_delete<ctu::RestDispatchListener,ctu::RestDispatchListener>,std::allocator<ctu::RestDispatchListener>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ctu::RestDispatchListener *,std::shared_ptr<ctu::RestDispatchListener>::__shared_ptr_default_delete<ctu::RestDispatchListener,ctu::RestDispatchListener>,std::allocator<ctu::RestDispatchListener>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *ctu::rest::RestConnectorSink<ctu::RestDispatchListener>::~RestConnectorSink(void *a1)
{
  *a1 = &unk_1F1CB6138;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void ctu::rest::RestConnectorSink<ctu::RestDispatchListener>::~RestConnectorSink(void *__p)
{
  *__p = &unk_1F1CB6138;
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void ctu::rest::RestConnectorSink<ctu::RestDispatchListener>::handleClientError(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        object = *a3;
        *a3 = xpc_null_create();
        (*(*v9 + 40))(v9, a2, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1A9110E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void boost::container::vector<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>,boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>,boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>*,boost::container::dtl::pair<ctu::rest::RestConnectorSourceBase const*,std::shared_ptr<ctu::DispatchRestResourceConnection>>>>(void *a1, char *a2, void *a3, uint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 1) + 1;
  if (0x555555555555555 - v4 < v5 - v4)
  {
    goto LABEL_27;
  }

  v6 = v4 >> 61;
  v7 = 8 * v4;
  if (v6 > 4)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 / 5;
  if (v6)
  {
    v9 = v8;
  }

  if (v9 >= 0x555555555555555)
  {
    v9 = 0x555555555555555;
  }

  v10 = v5 <= v9 ? v9 : *(a2 + 1) + 1;
  v11 = *(a2 + 1) - 0x555555555555554 < 0;
  if (v5 > 0x555555555555555)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(24 * v10);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 24 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      *v21 = *v22;
      *(v21 + 2) = v22[2];
      v22[1] = 0;
      v22[2] = 0;
      v22 += 3;
      v21 += 24;
    }

    while (v22 != a3);
  }

  *v21 = *a4;
  *(v21 + 2) = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v20 != a3)
  {
    v23 = v21 + 40;
    v24 = a3;
    do
    {
      *(v23 - 1) = *v24;
      *v23 = v24[2];
      v23 += 3;
      v24[1] = 0;
      v24[2] = 0;
      v24 += 3;
    }

    while (v24 != v20);
  }

  if (v19)
  {
    v25 = *(a2 + 1);
    if (v25)
    {
      v26 = (v19 + 16);
      do
      {
        if (*v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*v26);
        }

        v26 += 3;
        --v25;
      }

      while (v25);
    }

    operator delete(*a2);
  }

  v27 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v27;
  *(a2 + 2) = v10;
  *a1 = &v18[a3 - v16];
}

void std::__shared_ptr_emplace<ctu::DispatchRestResourceConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB5008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *std::__function::__func<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1},std::allocator<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB9620;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1},std::allocator<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB9620;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

void *std::__function::__func<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1},std::allocator<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F1CB9620;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 1), a1 + 8);
  return v2;
}

uint64_t std::__function::__func<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1},std::allocator<ctu::RestDispatchListener::handleClientMessageWithReply(std::shared_ptr<ctu::rest::RestConnectorSourceBase const>,xpc::dict,std::function<void ()(xpc::object)>)::$_0::operator() const(void)::{lambda(xpc::object)#1}>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::RestDispatchListener>::execute_wrapped<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>(ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0,dispatch_queue_s *::default_delete<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  ctu::RestDispatchListener::getResourceConnection_sync(*v1, *(v1 + 8), &v23);
  v24 = v23;
  v23 = 0uLL;
  v4 = *(v1 + 16);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v3 + 32))(v3, &v24, &object);
  xpc_release(object);
  object = 0;
  if (*(&v24 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v24 + 1));
  }

  v5 = *(v1 + 8);
  v6 = v2[8];
  if (v6)
  {
    v7 = v2[7];
    v8 = v2[8];
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[3 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 3;
      v8 += ~(v8 >> 1);
      if (v12 >= v5)
      {
        v8 = v9;
      }

      else
      {
        v7 = v11;
      }
    }

    while (v8);
  }

  else
  {
    v7 = v2[7];
  }

  v13 = v2[7] + 24 * v6;
  if (v7 != v13 && *v7 <= v5)
  {
    if (v7 + 3 != v13)
    {
      v14 = v7 + 4;
      do
      {
        v15 = *(v14 - 2);
        *(v14 - 4) = *(v14 - 1);
        v16 = *v14;
        *v14 = 0;
        v14[1] = 0;
        *(v14 - 3) = v16;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        v17 = v14 + 2;
        v14 += 3;
      }

      while (v17 != v13);
    }

    v18 = *(v13 - 8);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    --v2[8];
  }

  std::unique_ptr<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>>::~unique_ptr[abi:ne200100](&v21);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v20);
}

void sub_1A91113CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  xpc_release(object);
  object = 0;
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::unique_ptr<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0,std::default_delete<ctu::RestDispatchListener::handleClientError(ctu::rest::RestConnectorSourceBase const*,xpc::object)::$_0>>::~unique_ptr[abi:ne200100](xpc_object_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(v2[2]);
    operator delete(v2);
  }

  return a1;
}

void __TUAssertTrigger(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, a1);
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

__int128 *__TUAssertGetReason()
{
  if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_4))
  {
    v1 = getprogname();
    *(&__p.__r_.__value_.__s + 23) = 8;
    strcpy(&__p, " crashed");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1EB3828D8, &dword_1A90E3000);
    __cxa_guard_release(&_MergedGlobals_4);
  }

  if (byte_1EB3828EF >= 0)
  {
    return &xmmword_1EB3828D8;
  }

  else
  {
    return xmmword_1EB3828D8;
  }
}

void sub_1A9111570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&_MergedGlobals_4);
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(const char *a1, std::string *a2)
{
  v4 = strlen(a1);
  v5 = std::string::insert(a2, 0, a1, v4);
  v6 = v5[1].n128_u64[0];
  result = *v5;
  xmmword_1EB3828D8 = *v5;
  unk_1EB3828E8 = v6;
  v5->n128_u64[1] = 0;
  v5[1].n128_u64[0] = 0;
  v5->n128_u64[0] = 0;
  return result;
}

void TelephonyBasebandWatchdogStart(NSObject **a1, unsigned int a2, void *a3)
{
  global_queue = dispatch_get_global_queue(-2, 0);
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, global_queue);
  v8 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_event_handler(v7, a3);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 500000 * a2);
  dispatch_activate(v7);
  *a1 = v7;
}

void TelephonyBasebandWatchdogStop(dispatch_object_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    __TUAssertTrigger("context->source");
  }

  dispatch_source_cancel(v2);
  dispatch_release(*a1);
  *a1 = 0;
}

void TelephonyBasebandWatchdogStartWithStackshot(NSObject **a1, unsigned int a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __TelephonyBasebandWatchdogStartWithStackshot_block_invoke;
  v3[3] = &__block_descriptor_tmp_2;
  v3[4] = a3;
  v4 = a2;
  TelephonyBasebandWatchdogStart(a1, a2, v3);
}

void __TelephonyBasebandWatchdogStartWithStackshot_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v1;
  v26 = v1;
  v23 = v1;
  v24 = v1;
  v21 = v1;
  v22 = v1;
  v19 = v1;
  v20 = v1;
  v17 = v1;
  v18 = v1;
  v15 = v1;
  v16 = v1;
  v13 = v1;
  v14 = v1;
  *__str = v1;
  v12 = v1;
  snprintf(__str, 0x100uLL, "Telephony operation timeout at '%s', timeout %u\n", *(a1 + 32), *(a1 + 40));
  _TelephonyUtilDebugPrint("TelephonyBasebandWatchdogStartWithStackshot_block_invoke", "Telephony watchdog fired: %s\n", v2, v3, v4, v5, v6, v7, __str);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = __str;
    _os_log_error_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Telephony watchdog fired: %s\n", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

const void **ctu::Http::HttpResponse::getResponseData@<X0>(ctu::Http::HttpResponse *this@<X0>, void *a2@<X8>)
{
  theData = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 40))(&theData);
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (Length)
    {
      std::vector<unsigned char>::__vallocate[abi:ne200100](a2, Length);
      v5 = a2[1];
      do
      {
        v6 = *BytePtr++;
        *v5++ = v6;
        --Length;
      }

      while (Length);
      a2[1] = v5;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&theData);
}

void sub_1A9111944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void *ctu::Http::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 5)
  {
    v2 = "????";
  }

  else
  {
    v2 = off_1E786B9F0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

std::string *ctu::Http::asString@<X0>(uint64_t __val@<X1>, int a2@<W0>, std::string *a3@<X8>)
{
  if (!a2)
  {
    return std::to_string(a3, __val);
  }

  if (__val > -1102)
  {
    switch(__val)
    {
      case -1022:
        v3 = "App Transport Security Requires Secure Connection";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1021:
        v3 = "Request Body Stream Exhausted";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1020:
        v3 = "Data Not Allowed";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1019:
        v3 = "Call Is Active";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1018:
        v3 = "International Roaming Off";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1017:
        v3 = "Cannot Parse Response";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1016:
        v3 = "Cannot Decode Content Data";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1015:
        v3 = "Cannot Decode Raw Data";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1014:
        v3 = "Zero Byte Resource";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1013:
        v3 = "User Authentication Required";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1012:
        v3 = "User Cancelled Authentication";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1011:
        v3 = "Bad Server Response";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1010:
        v3 = "Redirect To Non Existent Location";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1009:
        v3 = "Not Connected To Internet";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1008:
      case -1005:
      case -999:
      case -998:
        return std::to_string(a3, __val);
      case -1007:
        v3 = "HTTP Too Many Redirects";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1006:
        v3 = "DNS Lookup Failed";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1004:
        v3 = "Cannot Connect To Host";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1003:
        v3 = "Cannot Find Host";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1002:
        v3 = "Unsupported URL";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1001:
        v3 = "Timeout";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -1000:
        v3 = "Bad URL";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -997:
        v3 = "Background Session Was Disconnected";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -996:
        v3 = "Background Session In Use By Another Process";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      case -995:
        v3 = "Background Session Requires Shared Container";
        return std::string::basic_string[abi:ne200100]<0>(a3, v3);
      default:
        if (__val == -1101)
        {
          v3 = "File Is Directory";
        }

        else
        {
          if (__val != -1100)
          {
            return std::to_string(a3, __val);
          }

          v3 = "File Does Not Exist";
        }

        break;
    }

    return std::string::basic_string[abi:ne200100]<0>(a3, v3);
  }

  if (__val > -1207)
  {
    if (__val <= -1202)
    {
      if (__val <= -1205)
      {
        if (__val == -1206)
        {
          v3 = "Client Certificate Required";
        }

        else
        {
          v3 = "Client Certificate Rejected";
        }
      }

      else if (__val == -1204)
      {
        v3 = "Server Certificate Not Yet Valid";
      }

      else if (__val == -1203)
      {
        v3 = "Server Certificate Has Unknown Root";
      }

      else
      {
        v3 = "Server Certificate Untrusted";
      }

      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val > -1105)
    {
      if (__val == -1104)
      {
        v3 = "File Outside Safe Area";
      }

      else if (__val == -1103)
      {
        v3 = "Data Length Exceeds Maximum";
      }

      else
      {
        v3 = "No Permissions To Read File";
      }

      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val == -1201)
    {
      v3 = "Server Certificate Has Bad Date";
      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val == -1200)
    {
      v3 = "Secure Connection Failed";
      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    return std::to_string(a3, __val);
  }

  if (__val <= -3004)
  {
    if (__val > -3006)
    {
      if (__val == -3005)
      {
        v3 = "Cannot Move File";
      }

      else
      {
        v3 = "Cannot Remove File";
      }

      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val == -3007)
    {
      v3 = "Download Decoding Failed To Complete";
      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val != -3006)
    {
      return std::to_string(a3, __val);
    }

    v3 = "Download Decoding Failed Mid Stream";
  }

  else
  {
    if (__val <= -3002)
    {
      if (__val == -3003)
      {
        v3 = "Cannot Write To File";
      }

      else
      {
        v3 = "Cannot Close File";
      }

      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val == -3001)
    {
      v3 = "Cannot Open File";
      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val == -3000)
    {
      v3 = "Cannot Create File";
      return std::string::basic_string[abi:ne200100]<0>(a3, v3);
    }

    if (__val != -2000)
    {
      return std::to_string(a3, __val);
    }

    v3 = "Cannot Load From Network";
  }

  return std::string::basic_string[abi:ne200100]<0>(a3, v3);
}

void ctu::Http::asString(ctu::Http *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  v4 = objc_autoreleasePoolPush();
  memset(&v5, 0, sizeof(v5));
  ctu::cf::assign(&v5, [MEMORY[0x1E696AC68] localizedStringForStatusCode:v2]);
  *a2 = v5;
  objc_autoreleasePoolPop(v4);
}

void sub_1A9111D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::runtime_error *ctu::ResultIsEmptyError::ResultIsEmptyError(std::runtime_error *this)
{
  result = std::runtime_error::runtime_error(this, "ResultIsEmptyError: the result was never set with a success or error value");
  result->__vftable = &unk_1F1CB7018;
  return result;
}

{
  result = std::runtime_error::runtime_error(this, "ResultIsEmptyError: the result was never set with a success or error value");
  result->__vftable = &unk_1F1CB7018;
  return result;
}

void ctu::ResultIsEmptyError::~ResultIsEmptyError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

std::runtime_error *ctu::ResultIsNotError::ResultIsNotError(std::runtime_error *this)
{
  result = std::runtime_error::runtime_error(this, "ResultIsNotError: cannot return an error unless it was an error");
  result->__vftable = &unk_1F1CB70D8;
  return result;
}

{
  result = std::runtime_error::runtime_error(this, "ResultIsNotError: cannot return an error unless it was an error");
  result->__vftable = &unk_1F1CB70D8;
  return result;
}

void ctu::ResultIsNotError::~ResultIsNotError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

std::runtime_error *ctu::ResultIsError::ResultIsError(std::runtime_error *this)
{
  result = std::runtime_error::runtime_error(this, "ResultIsError: cannot return a result because the operation was an error");
  result->__vftable = &unk_1F1CB72A0;
  return result;
}

{
  result = std::runtime_error::runtime_error(this, "ResultIsError: cannot return a result because the operation was an error");
  result->__vftable = &unk_1F1CB72A0;
  return result;
}

void ctu::ResultIsError::~ResultIsError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void ___ZN3ctu5Clock18now_in_nanosecondsEv_block_invoke()
{
  v0 = MEMORY[0x1AC5813D0]();
  clock_service = host_get_clock_service(v0, 1, &ctu::Clock::now_in_nanoseconds(void)::server);
  ctu::Clock::now_in_nanoseconds(void)::sKern = clock_service;
  if (clock_service)
  {
    syslog(3, "Failed to get clock service (error = %d)\n", clock_service);
  }
}

uint64_t ctu::rest::WatchableRestResourceHelper::hasActiveWatchers(ctu::rest::WatchableRestResourceHelper *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = 16 * v1;
  for (i = *this + 8; !*i || *(*i + 8) == -1; i += 16)
  {
    v2 -= 16;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void ctu::rest::WatchableRestResourceHelper::cleanupExpired(ctu::rest::WatchableRestResourceHelper *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *this;
    v4 = *this;
    do
    {
      v5 = *(v4 + 8);
      if (!v5 || *(v5 + 8) == -1)
      {
        v7 = v4;
        boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(this, &v7, &v6);
        v4 = v6;
        v3 = *this;
        v1 = *(this + 1);
      }

      else
      {
        v4 += 16;
      }
    }

    while (v4 != v3 + 16 * v1);
  }
}

void ctu::rest::WatchableRestResourceHelper::getWatcherNames(ctu::rest::WatchableRestResourceHelper *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 1);
  if (v7)
  {
    v8 = 16 * v7;
    v9 = (*this + 8);
    do
    {
      if (*v9)
      {
        v10 = std::__shared_weak_count::lock(*v9);
        if (v10)
        {
          v11 = v10;
          v12 = *(v9 - 1);
          if (v12)
          {
            v13 = (v12 + 8);
            if (*(v12 + 31) < 0)
            {
              v13 = *v13;
            }

            v14 = xpc_string_create(v13);
            if (!v14)
            {
              v14 = xpc_null_create();
            }

            xpc_array_append_value(*a2, v14);
            xpc_release(v14);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      v9 += 2;
      v8 -= 16;
    }

    while (v8);
  }
}

void sub_1A91121C8(_Unwind_Exception *a1)
{
  xpc_release(v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  xpc::array::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t ctu::rest::WatchableRestResourceHelper::addWatcher(uint64_t *a1, unint64_t *a2)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(a1, a2, &v3);
  return v4;
}

uint64_t ctu::rest::WatchableRestResourceHelper::removeWatcher(void *a1, void *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v5 = *a1;
  v6 = 16 * v2;
  while (1)
  {
    v7 = v5[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = std::__shared_weak_count::lock(v7);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v8;
    if (*v5)
    {
      if (*v5 == *a2)
      {
        break;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_8:
    v5 += 2;
    v6 -= 16;
    if (!v6)
    {
      return 0;
    }
  }

  v12 = v5;
  boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(a1, &v12, &v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  return 1;
}

void ctu::rest::WatchableRestResourceHelper::removeWatchers(ctu::rest::WatchableRestResourceHelper *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(this + 1);
  if (v4)
  {
    v5 = 16 * v4;
    v6 = (*this + 8);
    do
    {
      if (*v6)
      {
        v7 = std::__shared_weak_count::lock(*v6);
        if (v7)
        {
          v8 = v7;
          v9 = *(v6 - 1);
          if (v9)
          {
            v10 = *(a2 + 8);
            v11 = *(a2 + 16);
            if (v10 >= v11)
            {
              v13 = (v10 - *a2) >> 4;
              v14 = v13 + 1;
              if ((v13 + 1) >> 60)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v15 = v11 - *a2;
              if (v15 >> 3 > v14)
              {
                v14 = v15 >> 3;
              }

              if (v15 >= 0x7FFFFFFFFFFFFFF0)
              {
                v16 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v16 = v14;
              }

              v28 = a2;
              if (v16)
              {
                v17 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestResourceConnection>>>(a2, v16);
              }

              else
              {
                v17 = 0;
              }

              v26 = 0u;
              v27 = 0u;
              v18 = &v17[16 * v13];
              *v18 = v9;
              *(v18 + 1) = v8;
              atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = &v17[16 * v16];
              v12 = v18 + 16;
              v20 = *(a2 + 8) - *a2;
              v21 = &v18[-v20];
              memcpy(&v18[-v20], *a2, v20);
              v22 = *a2;
              *a2 = v21;
              *(a2 + 8) = v12;
              v23 = *(a2 + 16);
              *(a2 + 16) = v19;
              *&v27 = v22;
              *(&v27 + 1) = v23;
              *&v26 = v22;
              *(&v26 + 1) = v22;
              std::__split_buffer<std::shared_ptr<ctu::RestResourceConnection>>::~__split_buffer(&v26);
            }

            else
            {
              *v10 = v9;
              v10[1] = v7;
              atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
              v12 = v10 + 2;
            }

            *(a2 + 8) = v12;
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      v6 += 2;
      v5 -= 16;
    }

    while (v5);
    v24 = *(this + 1);
    if (v24)
    {
      v25 = (*this + 8);
      do
      {
        if (*v25)
        {
          std::__shared_weak_count::__release_weak(*v25);
        }

        v25 += 2;
        --v24;
      }

      while (v24);
    }
  }

  *(this + 1) = 0;
}

void sub_1A9112480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestResourceConnection>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

void **std::__split_buffer<std::shared_ptr<ctu::RestResourceConnection>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<ctu::RestResourceConnection>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<ctu::RestResourceConnection>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<ctu::RestResourceConnection>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ctu::RestResourceConnection>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<ctu::RestResourceConnection>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::emplace_unique<std::shared_ptr<ctu::RestResourceConnection>>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, __n128 **a3@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2[1];
  v5.n128_u64[0] = *a2;
  v5.n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::insert_unique(a1, &v5, a3);
  if (v5.n128_u64[1])
  {
    std::__shared_weak_count::__release_weak(v5.n128_u64[1]);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A91126B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _TelephonyRadiosDetermineRadio(uint64_t a1)
{
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  result = __strlcpy_chk();
  sTelephonyHardwareConfig = *(a1 + 8);
  switch(*a1)
  {
    case 0x5500000063:
      *&_MergedGlobals = 0;
LABEL_214:
      sTelephonyRadioVendor = 0;
      return result;
    case 0x4A00000063:
      v2 = 33;
LABEL_216:
      v14 = v2 & 0xFFFF0000FFFFFFFFLL | 0x100000000;
      goto LABEL_217;
    case 0x4A00000080:
      v2 = 38;
      goto LABEL_216;
    case 0x4A00000079:
      v3 = 52;
LABEL_215:
      v14 = v3 & 0xFFFF0000FFFFFFFFLL | 0x300000000;
      goto LABEL_217;
    case 0x4A000000D0:
      v3 = 53;
      goto LABEL_215;
    case 0x4A00000048:
      v2 = 57;
      goto LABEL_216;
  }

  switch(*a1)
  {
    case 0x4E0000008DLL:
      v6 = 60;
LABEL_218:
      v7 = v6 & 0xFFFF0000FFFFFFFFLL | 0x400000000;
LABEL_222:
      *&_MergedGlobals = v7;
      v4 = 0x1ED40D000uLL;
      v5 = 2;
      goto LABEL_223;
    case 0x4400000014:
      v8 = 62;
LABEL_219:
      v14 = v8 & 0xFFFF0000FFFFFFFFLL | 0x500000000;
      goto LABEL_217;
    case 0x4400000015:
      v8 = 63;
      goto LABEL_219;
    case 0x4400000016:
      v8 = 64;
      goto LABEL_219;
    case 0x44000000C9:
      v9 = 65;
LABEL_220:
      v7 = v9 & 0xFFFF0000FFFFFFFFLL | 0x600000000;
      goto LABEL_222;
    case 0x44000000D3:
      v9 = 66;
      goto LABEL_220;
    case 0x44000000DDLL:
      v9 = 67;
      goto LABEL_220;
    case 0x4A00000048:
      v2 = 68;
      goto LABEL_216;
    case 0x4400000141:
      v10 = 79;
LABEL_221:
      v7 = v10 & 0xFFFF0000FFFFFFFFLL | 0x700000000;
      goto LABEL_222;
    case 0x440000014BLL:
      v10 = 80;
      goto LABEL_221;
    case 0x4A0000013ELL:
      v10 = 82;
      goto LABEL_221;
    case 0x4A00000141:
      v10 = 83;
      goto LABEL_221;
    case 0x4E00000349:
      v10 = 84;
      goto LABEL_221;
    case 0x4E00000092:
      v6 = 87;
      goto LABEL_218;
    case 0x4A000000D3:
      v10 = 89;
      goto LABEL_221;
    case 0x4A000000DALL:
      v10 = 90;
      goto LABEL_221;
    case 0x4E00000068:
      v11 = 91;
LABEL_224:
      v7 = v11 & 0xFFFF0000FFFFFFFFLL | 0x800000000;
      goto LABEL_222;
    case 0x44000001A5:
      v11 = 92;
      goto LABEL_224;
    case 0x44000001AFLL:
      v11 = 93;
      goto LABEL_224;
    case 0x4A000000ACLL:
      v10 = 94;
      goto LABEL_221;
  }

  switch(*a1)
  {
    case 0x4A000001A5:
      v11 = 95;
      goto LABEL_224;
    case 0x4A000001A2:
      v11 = 96;
      goto LABEL_224;
    case 0x440000004FLL:
      v11 = 97;
      goto LABEL_224;
    case 0x4400000034:
      v12 = 99;
LABEL_225:
      v14 = v12 & 0xFFFF0000FFFFFFFFLL | 0x900000000;
      goto LABEL_217;
    case 0x4400000035:
      v12 = 100;
      goto LABEL_225;
    case 0x4400000036:
      v12 = 102;
      goto LABEL_225;
    case 0x4E0000008ELL:
      v6 = 103;
      goto LABEL_218;
    case 0x4E0000009ELL:
      v6 = 105;
      goto LABEL_218;
    case 0x4A00000134:
      v11 = 107;
      goto LABEL_224;
    case 0x4A00000206:
      v12 = 108;
      goto LABEL_225;
    case 0x4A0000020BLL:
      v12 = 110;
      goto LABEL_225;
    case 0x4A000000ACLL:
      v10 = 112;
      goto LABEL_221;
    case 0x4400000010:
      v13 = 114;
LABEL_226:
      v14 = v13 & 0xFFFF0000FFFFFFFFLL | 0xA00000000;
      goto LABEL_217;
    case 0x4400000011:
      v13 = 115;
      goto LABEL_226;
    case 0x440000003FLL:
      v13 = 116;
      goto LABEL_226;
    case 0x4400000040:
      v13 = 117;
      goto LABEL_226;
    case 0x4E000000BCLL:
      v6 = 118;
      goto LABEL_218;
    case 0x4A00000137:
      v13 = 120;
      goto LABEL_226;
    case 0x4A000000B6:
      v10 = 122;
      goto LABEL_221;
    case 0x4A00000198:
      v13 = 123;
      goto LABEL_226;
  }

  if (*a1 != 0x4400000031)
  {
    if (*a1 == 0x4A0000026ALL)
    {
      v15 = 125;
LABEL_227:
      v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0xC00000000;
      goto LABEL_217;
    }

    if (*a1 == 0x4A0000026DLL)
    {
      v15 = 126;
      goto LABEL_227;
    }

    if (*a1 == 0x4E00000095)
    {
      v6 = 127;
      goto LABEL_218;
    }

    if (*a1 == 0x4E000000C6)
    {
      v6 = 129;
      goto LABEL_218;
    }

    if (*a1 == 0x4E000000C7)
    {
      v6 = 131;
      goto LABEL_218;
    }

    if (*a1 == 0x440000001BLL)
    {
      v15 = 132;
      goto LABEL_227;
    }

    if (*a1 == 0x440000001CLL)
    {
      v15 = 133;
      goto LABEL_227;
    }

    if (*a1 == 0x4400000049)
    {
      v15 = 134;
      goto LABEL_227;
    }

    if (*a1 == 0x440000004ALL)
    {
      v15 = 135;
      goto LABEL_227;
    }

    if (*a1 == 0x4A00000110)
    {
      v13 = 136;
      goto LABEL_226;
    }

    if (*a1 == 0x4A000001FCLL)
    {
      v16 = 137;
LABEL_228:
      v14 = v16 & 0xFFFF0000FFFFFFFFLL | 0xD00000000;
      goto LABEL_217;
    }

    if (*a1 == 0x4A0000021ALL)
    {
      v16 = 138;
      goto LABEL_228;
    }

    if (*a1 == 0x4E000000D0)
    {
      v6 = 139;
      goto LABEL_218;
    }

    if (*a1 == 0x4E000000D2)
    {
      v6 = 141;
      goto LABEL_218;
    }

    if (*a1 == 0x4400000025)
    {
      v16 = 142;
      goto LABEL_228;
    }

    if (*a1 == 0x4400000026)
    {
      v16 = 143;
      goto LABEL_228;
    }

    if (*a1 == 0x4400000053)
    {
      v16 = 144;
      goto LABEL_228;
    }

    if (*a1 == 0x4400000054)
    {
      v16 = 145;
      goto LABEL_228;
    }

    if (*a1 == 0x4A0000019BLL)
    {
      v16 = 146;
      goto LABEL_228;
    }

    if (*a1 == 0x4A000002CELL)
    {
      v16 = 147;
      goto LABEL_228;
    }

    if (*a1 == 0x4A000002D1)
    {
      v16 = 148;
      goto LABEL_228;
    }

    if (*a1 == 0x440000002FLL)
    {
      v17 = 149;
LABEL_229:
      v14 = v17 & 0xFFFF0000FFFFFFFFLL | 0x1100000000;
      goto LABEL_217;
    }

    if (*a1 == 0x4400000030)
    {
      v17 = 150;
      goto LABEL_229;
    }

    if (*a1 == 0x440000005DLL)
    {
      v17 = 151;
      goto LABEL_229;
    }

    if (*a1 == 0x440000005ELL)
    {
      v17 = 152;
      goto LABEL_229;
    }

    if (*a1 == 0x4E000000DALL)
    {
      v6 = 153;
      goto LABEL_218;
    }

    if (*a1 == 0x4E000000E6)
    {
      v18 = 155;
LABEL_230:
      *&_MergedGlobals = v18 & 0xFFFF0000FFFFFFFFLL | 0x1000000000;
      v4 = 0x1ED40D000;
      v5 = 4;
      goto LABEL_223;
    }

    if (*a1 == 0x560000003BLL)
    {
      v19 = 156;
      goto LABEL_232;
    }

    if (*a1 == 0x4A000001E2)
    {
      v16 = 157;
      goto LABEL_228;
    }

    if (*a1 == 0x4A00000260)
    {
      v16 = 158;
      goto LABEL_228;
    }

    if (*a1 == 0x4A0000027ELL)
    {
      v16 = 159;
      goto LABEL_228;
    }

    if (*a1 == 0x4A00000332)
    {
      v19 = 160;
      goto LABEL_232;
    }

    if (*a1 == 0x4A00000335)
    {
      v19 = 161;
      goto LABEL_232;
    }

    if (*a1 == 0x4E000000F4)
    {
      v18 = 162;
      goto LABEL_230;
    }

    if (*a1 == 0x5600000035)
    {
      v20 = 164;
    }

    else if (*a1 == 0x5600000036)
    {
      v20 = 165;
    }

    else
    {
      if (*a1 != 0x5600000039)
      {
        if (*a1 == 0x4400000017)
        {
          v19 = 167;
        }

        else
        {
          if (*a1 == 0x4E000000E4)
          {
            v18 = 168;
            goto LABEL_230;
          }

          if (*a1 == 0x4A00000246)
          {
            v19 = 170;
          }

          else if (*a1 == 0x4A000002C4)
          {
            v19 = 171;
          }

          else if (*a1 == 0x4A000002E2)
          {
            v19 = 172;
          }

          else if (*a1 == 0x560000009FLL)
          {
            v19 = 173;
          }

          else if (*a1 == 0x5400001FAELL)
          {
            v19 = 200;
          }

          else if (*a1 == 0x4300000FA0)
          {
            v19 = 201;
          }

          else if (*a1 == 0x54000002E6)
          {
            v19 = 202;
          }

          else
          {
            if (*a1 != 0x4300000FA0)
            {
              if (*a1 == 0x5400001FB8)
              {
                v22 = 207;
              }

              else if (*a1 == 0x4300000FB4)
              {
                v22 = 208;
              }

              else
              {
                switch(*a1)
                {
                  case 0x5400000481:
                    v6 = 209;
                    goto LABEL_218;
                  case 0x54000004D0:
                    v18 = 211;
                    goto LABEL_230;
                  case 0x54000007EELL:
                    v16 = 212;
                    goto LABEL_228;
                }

                if (*a1 != 0x43000002E7)
                {
                  switch(*a1)
                  {
                    case 0x5400001FCCLL:
                      v23 = 214;
                      break;
                    case 0x4300000FBELL:
                      v23 = 215;
                      break;
                    case 0x54000121DBLL:
                      v23 = 216;
                      break;
                    default:
                      switch(*a1)
                      {
                        case 0x5700000063:
                          v24 = 0x8000;
                          break;
                        case 0x5000000063:
                          v24 = 32769;
                          break;
                        case 0x4D00000040:
                          v24 = 32770;
                          break;
                        default:
                          *&_MergedGlobals = 0;
                          sTelephonyRadioVendor = 0;
                          sTelephonyHardwareConfig = 0;
                          return result;
                      }

                      *&_MergedGlobals = v24;
                      goto LABEL_214;
                  }

                  v21 = v23 & 0xFFFF0000FFFFFFFFLL | 0x1300000000;
                  goto LABEL_233;
                }

                v22 = 213;
              }

              v21 = v22 & 0xFFFF0000FFFFFFFFLL | 0xF00000000;
LABEL_233:
              *&_MergedGlobals = v21;
              v4 = 0x1ED40D000;
              v5 = 3;
              goto LABEL_223;
            }

            v19 = 204;
          }
        }

LABEL_232:
        v21 = v19 & 0xFFFF0000FFFFFFFFLL | 0xE00000000;
        goto LABEL_233;
      }

      v20 = 166;
    }

    v14 = v20 & 0xFFFF0000FFFFFFFFLL | 0x1200000000;
    goto LABEL_217;
  }

  v14 = 0xB0000007CLL;
LABEL_217:
  *&_MergedGlobals = v14;
  v4 = 0x1ED40D000;
  v5 = 1;
LABEL_223:
  *(v4 + 3288) = v5;
  return result;
}

uint64_t TelephonyRadiosGetProduct()
{
  if (_TelephonyRadiosGetRadioInternal_sOnce != -1)
  {
    dispatch_once(&_TelephonyRadiosGetRadioInternal_sOnce, &__block_literal_global_5);
  }

  return _MergedGlobals;
}

uint64_t TelephonyRadiosGetHardwareConfig()
{
  if (_TelephonyRadiosGetRadioInternal_sOnce != -1)
  {
    dispatch_once(&_TelephonyRadiosGetRadioInternal_sOnce, &__block_literal_global_5);
  }

  return sTelephonyHardwareConfig;
}

uint64_t ctu::llvm::StringRef::compare_lower(uint64_t a1, const char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 < a3)
  {
    a3 = *(a1 + 8);
  }

  LODWORD(result) = ascii_strncasecmp(*a1, a2, a3);
  if (v5 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v5 == v3)
  {
    v7 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v7;
  }
}

uint64_t ascii_strncasecmp(const char *a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1++;
    v3 = v4;
    v5 = v4 | 0x20;
    v6 = v4 - 65 >= 0x1A;
    v8 = *a2++;
    v7 = v8;
    if (!v6)
    {
      v3 = v5;
    }

    if (v7 - 65 < 0x1A)
    {
      v7 |= 0x20u;
    }

    if (v3 != v7)
    {
      break;
    }

    if (!--a3)
    {
      return 0;
    }
  }

  if (v3 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t ctu::llvm::StringRef::compare_numeric(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[1];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1[1];
  }

  if (v6)
  {
    v8 = 0;
    v9 = v6 + 1;
    v10 = *a1;
    v11 = -v6;
    v12 = *a1 + 1;
    do
    {
      v13 = *(v10 + v8);
      v14 = *(a2 + v8);
      if (v13 - 48 > 9 || v14 - 48 > 9)
      {
        v16 = v8;
        if (v13 != v14)
        {
          if (v13 < v14)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = v12;
        v19 = a2 + 1;
        do
        {
          if (!(v11 + v8 + v17))
          {
            v16 = v6;
            v29 = v9;
            goto LABEL_35;
          }

          v20 = v8 + v17 + 1;
          v21 = v20 < v5 && *(v18 + v8) - 48 < 0xA;
          if (v20 >= a3)
          {
            v24 = 0;
            v26 = 5;
            v25 = 1;
          }

          else
          {
            v22 = (*(v19 + v8) - 48);
            v23 = v22 >= 0xA;
            v24 = v22 < 0xA;
            if (v23)
            {
              v25 = 1;
            }

            else
            {
              v25 = -1;
            }

            if (v23)
            {
              v26 = 5;
            }

            else
            {
              v26 = 0;
            }
          }

          v27 = v21 == v24;
          if (v21 == v24)
          {
            v28 = v26;
          }

          else
          {
            v28 = 1;
          }

          if (v27)
          {
            v3 = v3;
          }

          else
          {
            v3 = v25;
          }

          ++v17;
          ++v19;
          ++v18;
        }

        while (!v28);
        if (v28 != 5)
        {
          return v3;
        }

        v29 = v8 + v17;
        v16 = v29 - 1;
LABEL_35:
        if (v29 != v8)
        {
          v35 = v11;
          v30 = v10;
          v31 = v6;
          v32 = memcmp((v10 + v8), (a2 + v8), v29 - v8);
          v6 = v31;
          v10 = v30;
          v11 = v35;
          if (v32)
          {
            return (v32 >> 31) | 1u;
          }
        }
      }

      v8 = v16 + 1;
    }

    while (v16 + 1 != v6);
  }

  if (v5 < a3)
  {
    v33 = -1;
  }

  else
  {
    v33 = 1;
  }

  if (v5 == a3)
  {
    return 0;
  }

  else
  {
    return v33;
  }
}

void *ctu::llvm::StringRef::lower@<X0>(ctu::llvm::StringRef *this@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100](a2, *(this + 1), 0);
  v4 = *(this + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(*this + i);
      if ((v6 - 65) < 0x1A)
      {
        LOBYTE(v6) = v6 | 0x20;
      }

      if (*(result + 23) >= 0)
      {
        v7 = result;
      }

      else
      {
        v7 = *result;
      }

      *(v7 + i) = v6;
    }
  }

  return result;
}

void *std::string::basic_string[abi:ne200100](void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __b[1] = __len;
    __b[2] = v7 | 0x8000000000000000;
    *__b = v6;
  }

  else
  {
    *(__b + 23) = __len;
    v6 = __b;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memset(v6, __c, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __b;
}

void *ctu::llvm::StringRef::upper@<X0>(ctu::llvm::StringRef *this@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100](a2, *(this + 1), 0);
  v4 = *(this + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(*this + i);
      if ((v6 - 97) < 0x1A)
      {
        LOBYTE(v6) = v6 - 32;
      }

      if (*(result + 23) >= 0)
      {
        v7 = result;
      }

      else
      {
        v7 = *result;
      }

      *(v7 + i) = v6;
    }
  }

  return result;
}

unint64_t ctu::llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = v4 - a3;
  if (v4 < a3)
  {
    goto LABEL_2;
  }

  v6 = a4;
  if (a3 - 256 < 0xFFFFFFFFFFFFFF01 || v4 <= 0xF)
  {
    v21 = v5 + 1;
    if (v5 + 1 <= a4)
    {
LABEL_2:
      v6 = -1;
      goto LABEL_3;
    }

    v22 = *a1;
    while (1)
    {
      v23 = v6 >= v4 ? v4 : v6;
      if (a3 <= v4 - v23 && (!a3 || !memcmp((v22 + v23), a2, a3)))
      {
        break;
      }

      if (v21 == ++v6)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    v11 = v4 - a4;
    if (v4 <= a4)
    {
      goto LABEL_2;
    }

    v25 = vdupq_n_s8(a3);
    v26 = v25;
    v24[12] = v25;
    v24[13] = v25;
    v24[10] = v25;
    v24[11] = v25;
    v24[8] = v25;
    v24[9] = v25;
    v24[6] = v25;
    v24[7] = v25;
    v24[4] = v25;
    v24[5] = v25;
    v24[2] = v25;
    v24[3] = v25;
    v24[0] = v25;
    v24[1] = v25;
    if (a3 != 1)
    {
      v12 = 1;
      v13 = a3 - 1;
      v14 = a2;
      do
      {
        v15 = *v14++;
        *(v24 + v15) = v13--;
      }

      while (a3 - 1 != v12++);
    }

    if (v11 < a3)
    {
      goto LABEL_2;
    }

    v17 = *a1;
    v18 = *a1 + a3 - 1;
    while (1)
    {
      v19 = v6 >= v4 ? v4 : v6;
      if (a3 <= v4 - v19 && !memcmp((v17 + v19), a2, a3))
      {
        break;
      }

      v20 = *(v24 + *(v18 + v6));
      v11 -= v20;
      v6 += v20;
      if (v11 < a3)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

size_t ctu::llvm::StringRef::rfind(uint64_t *a1, void *__s2, size_t __n)
{
  v3 = a1[1];
  v4 = v3 - __n;
  if (v3 < __n)
  {
    return -1;
  }

  v5 = v4 + 1;
  if (v4 == -1)
  {
    return -1;
  }

  v9 = *a1;
  while (1)
  {
    --v5;
    v10 = v4 >= v3 ? v3 : v4;
    if (__n <= v3 - v10)
    {
      if (!__n)
      {
        return v4;
      }

      if (!memcmp((v9 + v10), __s2, __n))
      {
        break;
      }
    }

    if (--v4 == -1)
    {
      return v4;
    }
  }

  return v5;
}

uint64_t ctu::llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t ctu::llvm::StringRef::find_first_not_of(ctu::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 1);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*this + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t ctu::llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t ctu::llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a4 >= a1[1])
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a4;
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

unint64_t ctu::llvm::StringRef::find_last_not_of(ctu::llvm::StringRef *this, unsigned __int8 a2, unint64_t a3)
{
  if (a3 >= *(this + 1))
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = a3;
  }

  while (v3)
  {
    v4 = v3 - 1;
    v5 = *(*this + v3-- - 1);
    if (v5 != a2)
    {
      return v4;
    }
  }

  return -1;
}

uint64_t ctu::llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a4 >= a1[1])
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a4;
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void ctu::llvm::StringRef::split(__int128 *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, int a6)
{
  v20 = *a1;
  v6 = v20;
  if (!v20)
  {
    return;
  }

  for (i = 0; a5 < 0 || i < a5; ++i)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v13;
    v19 = v13;
    v14 = ctu::llvm::StringRef::find(&v20, a3, a4, 0);
    if (v14 == -1)
    {
      v19 = 0uLL;
      v18 = v20;
      v15 = *(&v20 + 1);
      if (a6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 >= *(&v20 + 1))
      {
        v15 = *(&v20 + 1);
      }

      else
      {
        v15 = v14;
      }

      v16 = v14 + a4;
      if (v14 + a4 >= *(&v20 + 1))
      {
        v16 = *(&v20 + 1);
      }

      *&v18 = v6;
      *(&v18 + 1) = v15;
      *&v19 = v6 + v16;
      *(&v19 + 1) = *(&v20 + 1) - v16;
      if (a6)
      {
LABEL_15:
        std::vector<ctu::llvm::StringRef>::push_back[abi:ne200100](a2, &v18);
        goto LABEL_16;
      }
    }

    if (v15)
    {
      goto LABEL_15;
    }

LABEL_16:
    v20 = v19;
    v6 = v19;
    if (!v19)
    {
      return;
    }
  }

  if (*(&v20 + 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = a6 == 0;
  }

  if (!v17)
  {
    std::vector<ctu::llvm::StringRef>::push_back[abi:ne200100](a2, &v20);
  }
}

void std::vector<ctu::llvm::StringRef>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestResourceConnection>>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v13 = &v11[16 * v10];
    *v12 = *a2;
    v6 = v12 + 16;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t ctu::llvm::StringRef::count(uint64_t *a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 < a3 || v4 == -1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = *a1;
  v10 = v4 + 1;
  do
  {
    if (v8 >= v3)
    {
      v11 = v3;
    }

    else
    {
      v11 = v8;
    }

    if (a3 <= v3 - v11 && (!a3 || !memcmp((v9 + v11), a2, a3)))
    {
      ++v7;
    }

    ++v8;
  }

  while (v10 != v8);
  return v7;
}

uint64_t ctu::llvm::getAsUnsignedInteger(_WORD *a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  if (a3)
  {
LABEL_2:
    if (!a2)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (a2 < 2)
  {
    if (!a2)
    {
      return 1;
    }

    goto LABEL_10;
  }

  switch(*a1)
  {
    case 0x7830:
      ++a1;
      a3 = 16;
LABEL_29:
      a2 -= 2;
      goto LABEL_2;
    case 0x6230:
      ++a1;
      a3 = 2;
      goto LABEL_29;
    case 0x6F30:
      ++a1;
      a3 = 8;
      goto LABEL_29;
  }

LABEL_10:
  if (*a1 == 48)
  {
    a3 = 8;
  }

  else
  {
    a3 = 10;
  }

LABEL_13:
  v5 = 0;
  *a4 = 0;
  while (*a1 >= 48)
  {
    v6 = *a1;
    if (v6 >= 0x3A)
    {
      if (v6 < 0x61)
      {
        if (v6 - 65 > 0x19)
        {
          return 1;
        }

        v7 = -55;
      }

      else
      {
        if (v6 >= 0x7B)
        {
          return 1;
        }

        v7 = -87;
      }
    }

    else
    {
      v7 = -48;
    }

    v8 = v7 + v6;
    if (v8 >= a3)
    {
      break;
    }

    v9 = v5 * a3 + v8;
    *a4 = v9;
    if (v9 / a3 < v5)
    {
      break;
    }

    a1 = (a1 + 1);
    v5 = v9;
    if (!--a2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ctu::llvm::getAsSignedInteger(_WORD *a1, unint64_t a2, unsigned int a3, uint64_t *a4)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (a2 && *a1 == 45)
  {
    if (ctu::llvm::getAsUnsignedInteger((a1 + 1), a2 - 1, a3, &v8))
    {
      return 1;
    }

    v5 = -v8;
    if (-v8 >= 0 && v8 != 0)
    {
      return 1;
    }

    goto LABEL_8;
  }

  AsUnsignedInteger = ctu::llvm::getAsUnsignedInteger(a1, a2, a3, &v8);
  result = 1;
  if ((AsUnsignedInteger & 1) == 0)
  {
    v5 = v8;
    if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_8:
      result = 0;
      *a4 = v5;
    }
  }

  return result;
}

void *ctu::llvm::operator<<(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    __dst = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_13;
  }

  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v4 | 7) + 1;
    }

    p_dst = operator new(v9);
    v15 = v4;
    v16 = v9 | 0x8000000000000000;
    __dst = p_dst;
  }

  else
  {
    HIBYTE(v16) = *(a2 + 8);
    p_dst = &__dst;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, v3, v4);
LABEL_12:
  *(p_dst + v4) = 0;
  v8 = HIBYTE(v16);
  v7 = __dst;
  v6 = v15;
LABEL_13:
  if ((v8 & 0x80u) == 0)
  {
    v10 = &__dst;
  }

  else
  {
    v10 = v7;
  }

  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v10, v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }

  return v12;
}

void sub_1A9117284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::asChronoString@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[7] = v4;
  v21[8] = v4;
  v21[5] = v4;
  v21[6] = v4;
  v21[3] = v4;
  v21[4] = v4;
  v21[1] = v4;
  v21[2] = v4;
  v20 = v4;
  v21[0] = v4;
  *__p = v4;
  v19 = v4;
  v17[1] = v4;
  v17[2] = v4;
  v16 = v4;
  v17[0] = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  if (a1 >= 86400)
  {
    v5 = MEMORY[0x1AC580AF0](&v16, a1 / 86400);
    v23 = 100;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v23, 1);
    v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, 32);
    *(v7 + *(*v7 - 24) + 24) = 2;
    a1 %= 86400;
LABEL_4:
    v8 = MEMORY[0x1AC580AF0](&v16, a1 / 3600);
    v23 = 104;
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v23, 1);
    v10 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, 32);
    *(v10 + *(*v10 - 24) + 24) = 2;
    a1 %= 3600;
LABEL_5:
    v11 = MEMORY[0x1AC580AF0](&v16, a1 / 60);
    v23 = 109;
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v23, 1);
    v13 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, 32);
    *(v13 + *(*v13 - 24) + 24) = 2;
    a1 %= 60;
    goto LABEL_6;
  }

  if (a1 >= 3600)
  {
    goto LABEL_4;
  }

  if (a1 >= 60)
  {
    goto LABEL_5;
  }

LABEL_6:
  v14 = MEMORY[0x1AC580B10](&v16, a1);
  v23 = 115;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v23, 1);
  std::ostringstream::str[abi:ne200100](&v16, a2);
  *&v16 = *MEMORY[0x1E69E54E8];
  *(&v17[-1] + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1AC580CE0](v21);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

double ctu::asChronoString@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 % 1000000000;
  memset(v27, 170, sizeof(v27));
  ctu::asChronoString(a1 / 1000000000, v27);
  if (!v3)
  {
    result = *v27;
    *a2 = *v27;
    a2[2] = *&v27[16];
    return result;
  }

  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[7] = v4;
  v25[8] = v4;
  v25[5] = v4;
  v25[6] = v4;
  v25[3] = v4;
  v25[4] = v4;
  v25[1] = v4;
  v25[2] = v4;
  v24 = v4;
  v25[0] = v4;
  *__p = v4;
  v23 = v4;
  v21[1] = v4;
  v21[2] = v4;
  v20 = v4;
  v21[0] = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  if (v27[23] >= 0)
  {
    v5 = v27;
  }

  else
  {
    v5 = *v27;
  }

  if (v27[23] >= 0)
  {
    v6 = v27[23];
  }

  else
  {
    v6 = *&v27[8];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v5, v6);
  v7 = v3 % 1000000 % 1000;
  v8 = v3 % 1000000 + 999;
  if ((v3 + 999999) <= 0x1E847E && (v8 <= 0x7CE ? (v9 = v7 == 0) : (v9 = 0), v9) || ((v28 = 46, v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, &v28, 1), v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, 48), *(v11 + *(*v11 - 24) + 24) = 3, MEMORY[0x1AC580B10](), v8 <= 0x7CE) ? (v12 = v7 == 0) : (v12 = 0), v12))
  {
    v18 = "ms";
LABEL_20:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v18, 2);
    goto LABEL_21;
  }

  v28 = 95;
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, &v28, 1);
  v14 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, 48);
  *(v14 + *(*v14 - 24) + 24) = 3;
  MEMORY[0x1AC580B10]();
  if (!v7)
  {
    v18 = "us";
    goto LABEL_20;
  }

  v28 = 95;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, &v28, 1);
  v16 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, 48);
  *(v16 + *(*v16 - 24) + 24) = 3;
  v17 = MEMORY[0x1AC580B10]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "ns", 2);
LABEL_21:
  std::ostringstream::str[abi:ne200100](&v20, a2);
  *&v20 = *MEMORY[0x1E69E54E8];
  *(&v21[-1] + *(v20 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v20 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v20 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  MEMORY[0x1AC580CE0](v25);
  if ((v27[23] & 0x80000000) != 0)
  {
    operator delete(*v27);
  }

  return result;
}

void sub_1A9117A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9);
  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t TelephonyCapabilitiesSetHardwareModelFromString(_BYTE *a1)
{
  v2 = 0xAAAAAAAAAAAAAAAALL;
  v3 = -1431655766;
  result = TelephonyUtilParseHardwareModel(a1, &v2);
  if (result)
  {
    sTelephonyCapabilitiesHardwareModelInfo = v2;
    dword_1ED40DDB0 = v3;
  }

  else
  {
    dword_1ED40DDB0 = 0;
    sTelephonyCapabilitiesHardwareModelInfo = 0;
  }

  return result;
}

uint64_t TelephonyCapabilitiesSetHardwareModelFromTelephonyProduct(int a1)
{
  if (a1 < 0x8000)
  {
    switch(a1)
    {
      case 33:
        v1 = 97;
        v2 = 74;
        goto LABEL_155;
      case 38:
        v1 = 0;
        v2 = 74;
        v3 = 128;
        goto LABEL_158;
      case 52:
        v1 = 0;
        v2 = 74;
        v3 = 121;
        goto LABEL_158;
      case 53:
        v1 = 0;
        v2 = 74;
        goto LABEL_61;
      case 57:
        v1 = 115;
        goto LABEL_95;
      case 60:
        v1 = 98;
        goto LABEL_76;
      case 61:
        v1 = 115;
LABEL_76:
        v2 = 78;
        v3 = 141;
        goto LABEL_158;
      case 62:
        v1 = 0;
        v2 = 68;
        v3 = 20;
        goto LABEL_158;
      case 63:
        v1 = 0;
        v2 = 68;
        v3 = 21;
        goto LABEL_158;
      case 64:
        v1 = 0;
        v2 = 68;
        v3 = 22;
        goto LABEL_158;
      case 65:
        v1 = 0;
        v2 = 68;
        v3 = 201;
        goto LABEL_158;
      case 66:
        v1 = 0;
        v2 = 68;
        goto LABEL_80;
      case 67:
        v1 = 0;
        v2 = 68;
        v3 = 221;
        goto LABEL_158;
      case 68:
        v1 = 116;
        goto LABEL_95;
      case 73:
        v1 = 98;
LABEL_95:
        v2 = 74;
        v3 = 72;
        goto LABEL_158;
      case 79:
        v1 = 0;
        v2 = 68;
        goto LABEL_92;
      case 80:
        v1 = 0;
        goto LABEL_85;
      case 81:
        v1 = 112;
LABEL_85:
        v2 = 68;
        v3 = 331;
        goto LABEL_158;
      case 82:
        v1 = 0;
        v2 = 74;
        v3 = 318;
        goto LABEL_158;
      case 83:
        v1 = 0;
        v2 = 74;
LABEL_92:
        v3 = 321;
        goto LABEL_158;
      case 84:
        v1 = 0;
        v2 = 78;
        v3 = 841;
        goto LABEL_158;
      case 87:
        v1 = 115;
        goto LABEL_97;
      case 88:
        v1 = 98;
LABEL_97:
        v2 = 78;
        v3 = 146;
        goto LABEL_158;
      case 89:
        v1 = 0;
        v2 = 74;
LABEL_80:
        v3 = 211;
        goto LABEL_158;
      case 90:
        v1 = 0;
        v2 = 74;
        goto LABEL_141;
      case 91:
        v1 = 0;
        v2 = 78;
        v3 = 104;
        goto LABEL_158;
      case 92:
        v1 = 0;
        v2 = 68;
        goto LABEL_88;
      case 93:
        v1 = 0;
        v2 = 68;
        v3 = 431;
        goto LABEL_158;
      case 94:
        v1 = 0;
        goto LABEL_117;
      case 95:
        v1 = 0;
        v2 = 74;
LABEL_88:
        v3 = 421;
        goto LABEL_158;
      case 96:
        v1 = 0;
        v2 = 74;
        v3 = 418;
        goto LABEL_158;
      case 97:
        v1 = 0;
        v2 = 68;
        v3 = 79;
        goto LABEL_158;
      case 99:
        v1 = 103;
        v2 = 68;
        v3 = 52;
        goto LABEL_158;
      case 100:
        v1 = 103;
        goto LABEL_122;
      case 101:
        v1 = 112;
LABEL_122:
        v2 = 68;
        goto LABEL_145;
      case 102:
        v1 = 112;
        v2 = 68;
        goto LABEL_105;
      case 103:
        v1 = 115;
        goto LABEL_103;
      case 104:
        v1 = 98;
LABEL_103:
        v2 = 78;
        v3 = 142;
        goto LABEL_158;
      case 105:
        v1 = 115;
        goto LABEL_107;
      case 106:
        v1 = 98;
LABEL_107:
        v2 = 78;
        v3 = 158;
        goto LABEL_158;
      case 107:
        v1 = 0;
        v2 = 74;
        v3 = 308;
        goto LABEL_158;
      case 108:
        v1 = 0;
        goto LABEL_120;
      case 109:
        v1 = 120;
LABEL_120:
        v2 = 74;
        v3 = 518;
        goto LABEL_158;
      case 110:
        v1 = 0;
        goto LABEL_109;
      case 111:
        v1 = 120;
LABEL_109:
        v2 = 74;
        v3 = 523;
        goto LABEL_158;
      case 112:
        v1 = 97;
LABEL_117:
        v2 = 74;
        v3 = 172;
        goto LABEL_158;
      case 114:
        v1 = 0;
        v2 = 68;
        v3 = 16;
        goto LABEL_158;
      case 115:
        v1 = 0;
        v2 = 68;
        v3 = 17;
        goto LABEL_158;
      case 116:
        v1 = 0;
        v2 = 68;
        v3 = 63;
        goto LABEL_158;
      case 117:
        v1 = 0;
        v2 = 68;
        goto LABEL_157;
      case 118:
        v1 = 115;
        goto LABEL_101;
      case 119:
        v1 = 98;
LABEL_101:
        v2 = 78;
        v3 = 188;
        goto LABEL_158;
      case 120:
        v1 = 0;
        v2 = 74;
        v3 = 311;
        goto LABEL_158;
      case 122:
        v1 = 0;
        v2 = 74;
        v3 = 182;
        goto LABEL_158;
      case 123:
        v1 = 0;
        v2 = 74;
        v3 = 408;
        goto LABEL_158;
      case 124:
        v1 = 0;
        v2 = 68;
        v3 = 49;
        goto LABEL_158;
      case 125:
        v1 = 0;
        v2 = 74;
        v3 = 618;
        goto LABEL_158;
      case 126:
        v1 = 0;
        v2 = 74;
        v3 = 621;
        goto LABEL_158;
      case 127:
        v1 = 115;
        goto LABEL_137;
      case 128:
        v1 = 98;
LABEL_137:
        v2 = 78;
        v3 = 149;
        goto LABEL_158;
      case 129:
        v1 = 115;
        goto LABEL_133;
      case 130:
        v1 = 98;
LABEL_133:
        v2 = 78;
        v3 = 198;
        goto LABEL_158;
      case 131:
        v1 = 0;
        v2 = 78;
        v3 = 199;
        goto LABEL_158;
      case 132:
        v1 = 0;
        v2 = 68;
        v3 = 27;
        goto LABEL_158;
      case 133:
        v1 = 0;
        v2 = 68;
        v3 = 28;
        goto LABEL_158;
      case 134:
        v1 = 0;
        v2 = 68;
        v3 = 73;
        goto LABEL_158;
      case 135:
        v1 = 0;
        v2 = 68;
        v3 = 74;
        goto LABEL_158;
      case 136:
        v1 = 0;
        v2 = 74;
        v3 = 272;
        goto LABEL_158;
      case 137:
        v1 = 0;
        v2 = 74;
        v3 = 508;
        goto LABEL_158;
      case 138:
        v1 = 0;
        v2 = 74;
        v3 = 538;
        goto LABEL_158;
      case 139:
        v1 = 115;
        goto LABEL_26;
      case 140:
        v1 = 98;
LABEL_26:
        v2 = 78;
LABEL_61:
        v3 = 208;
        goto LABEL_158;
      case 141:
        v1 = 0;
        v2 = 78;
        v3 = 210;
        goto LABEL_158;
      case 142:
        v1 = 0;
        v2 = 68;
        v3 = 37;
        goto LABEL_158;
      case 143:
        v1 = 0;
        v2 = 68;
        v3 = 38;
        goto LABEL_158;
      case 144:
        v1 = 0;
        v2 = 68;
        v3 = 83;
        goto LABEL_158;
      case 145:
        v1 = 0;
        v2 = 68;
        v3 = 84;
        goto LABEL_158;
      case 146:
        v1 = 0;
        v2 = 74;
        v3 = 411;
        goto LABEL_158;
      case 147:
        v1 = 0;
        v2 = 74;
        v3 = 718;
        goto LABEL_158;
      case 148:
        v1 = 0;
        v2 = 74;
        v3 = 721;
        goto LABEL_158;
      case 149:
        v1 = 0;
        v2 = 68;
        v3 = 47;
        goto LABEL_158;
      case 150:
        v1 = 0;
        v2 = 68;
        v3 = 48;
        goto LABEL_158;
      case 151:
        v1 = 0;
        v2 = 68;
        v3 = 93;
        goto LABEL_158;
      case 152:
        v1 = 0;
        v2 = 68;
        v3 = 94;
        goto LABEL_158;
      case 153:
        v1 = 115;
        goto LABEL_140;
      case 154:
        v1 = 98;
LABEL_140:
        v2 = 78;
LABEL_141:
        v3 = 218;
        goto LABEL_158;
      case 155:
        v1 = 0;
        v2 = 78;
        v3 = 230;
        goto LABEL_158;
      case 156:
        v1 = 0;
        v2 = 86;
        v3 = 59;
        goto LABEL_158;
      case 157:
        v1 = 0;
        v2 = 74;
        v3 = 482;
        goto LABEL_158;
      case 158:
        v1 = 0;
        v2 = 74;
        v3 = 608;
        goto LABEL_158;
      case 159:
        v1 = 0;
        v2 = 74;
        v3 = 638;
        goto LABEL_158;
      case 160:
        v1 = 0;
        v2 = 74;
        v3 = 818;
        goto LABEL_158;
      case 161:
        v1 = 0;
        v2 = 74;
        v3 = 821;
        goto LABEL_158;
      case 162:
        v1 = 115;
        goto LABEL_148;
      case 163:
        v1 = 98;
LABEL_148:
        v2 = 78;
        v3 = 244;
        goto LABEL_158;
      case 164:
        v1 = 0;
        v2 = 86;
LABEL_145:
        v3 = 53;
        goto LABEL_158;
      case 165:
        v1 = 0;
        v2 = 86;
LABEL_105:
        v3 = 54;
        goto LABEL_158;
      case 166:
        v1 = 0;
        v2 = 86;
        v3 = 57;
        goto LABEL_158;
      case 167:
        v1 = 0;
        v2 = 68;
        v3 = 23;
        goto LABEL_158;
      case 168:
        v1 = 115;
        goto LABEL_151;
      case 169:
        v1 = 98;
LABEL_151:
        v2 = 78;
        v3 = 228;
        goto LABEL_158;
      case 170:
        v1 = 0;
        v2 = 74;
        v3 = 582;
        goto LABEL_158;
      case 171:
        v1 = 0;
        v2 = 74;
        v3 = 708;
        goto LABEL_158;
      case 172:
        v1 = 0;
        v2 = 74;
        v3 = 738;
        goto LABEL_158;
      case 173:
        v1 = 0;
        v2 = 86;
        v3 = 159;
        goto LABEL_158;
      case 200:
        v1 = 120;
        v2 = 84;
        v3 = 8110;
        goto LABEL_158;
      case 201:
        v1 = 0;
        goto LABEL_114;
      case 202:
        v1 = 0;
        goto LABEL_153;
      case 203:
        v1 = 120;
LABEL_153:
        v2 = 84;
        v3 = 742;
        goto LABEL_158;
      case 204:
        v1 = 98;
        goto LABEL_114;
      case 205:
        v1 = 107;
        goto LABEL_114;
      case 206:
        v1 = 118;
LABEL_114:
        v2 = 67;
        v3 = 4000;
        break;
      case 207:
        v1 = 120;
        v2 = 84;
        v3 = 8120;
        goto LABEL_158;
      case 208:
        v1 = 0;
        v2 = 67;
        v3 = 4020;
        goto LABEL_158;
      case 209:
        v1 = 0;
        v2 = 84;
        v3 = 1153;
        goto LABEL_158;
      case 211:
        v1 = 0;
        v2 = 84;
        v3 = 1232;
        goto LABEL_158;
      case 212:
        v1 = 0;
        v2 = 84;
        v3 = 2030;
        goto LABEL_158;
      case 213:
        v1 = 0;
        v2 = 67;
        v3 = 743;
        goto LABEL_158;
      case 214:
        v1 = 120;
        v2 = 84;
        v3 = 8140;
        goto LABEL_158;
      case 215:
        v1 = 0;
        v2 = 67;
        v3 = 4030;
        goto LABEL_158;
      case 216:
        v1 = 0;
        v2 = 84;
        v3 = 74203;
        goto LABEL_158;
      default:
        goto LABEL_159;
    }

    goto LABEL_158;
  }

  switch(a1)
  {
    case 32768:
      v1 = 104;
      v2 = 87;
      goto LABEL_155;
    case 32770:
      v1 = 100;
      v2 = 77;
LABEL_157:
      v3 = 64;
      goto LABEL_158;
    case 32769:
      v1 = 100;
      v2 = 80;
LABEL_155:
      v3 = 99;
LABEL_158:
      LODWORD(sTelephonyCapabilitiesHardwareModelInfo) = v3;
      BYTE4(sTelephonyCapabilitiesHardwareModelInfo) = v2;
      BYTE5(sTelephonyCapabilitiesHardwareModelInfo) = v1;
      HIWORD(sTelephonyCapabilitiesHardwareModelInfo) = 0;
      dword_1ED40DDB0 = 0;
      return 1;
  }

LABEL_159:
  result = 0;
  dword_1ED40DDB0 = 0;
  sTelephonyCapabilitiesHardwareModelInfo = 0;
  return result;
}

uint64_t *TelephonyCapabilitiesGetHardwareModel()
{
  if (TelephonyCapabilitiesGetHardwareModel_sOnce != -1)
  {
    dispatch_once(&TelephonyCapabilitiesGetHardwareModel_sOnce, &__block_literal_global_6);
  }

  return &sTelephonyCapabilitiesHardwareModelInfo;
}

void __TelephonyCapabilitiesGetHardwareModel_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  v0 = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (!v0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "Failed to load MobileGestalt library";
    goto LABEL_13;
  }

  v1 = dlsym(v0, "MGCopyAnswer");
  if (!v1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "Unable to find MGCopyAnswer function";
    goto LABEL_13;
  }

  v2 = v1;
  v3 = v1(@"IsVirtualDevice", 0);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Unable to determine whether this is a virtual device", buf, 2u);
    }

    goto LABEL_47;
  }

  v4 = v3;
  if (CFBooleanGetValue(v3) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Detected virtual device, so treating it as unknown Telephony product", buf, 2u);
    }

    dword_1ED40DDB0 = 0;
    sTelephonyCapabilitiesHardwareModelInfo = 0;
    v5 = v4;
    goto LABEL_8;
  }

  CFRelease(v4);
  v9 = v2(@"HasBaseband", 0);
  if (!v9)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "Unable to determine whether device has baseband";
    goto LABEL_13;
  }

  v10 = v9;
  Value = CFBooleanGetValue(v9);
  CFRelease(v10);
  if (!Value)
  {
    v15 = v2(@"DeviceName", 0);
    if (v15)
    {
      v13 = v15;
      v16 = CFGetTypeID(v15);
      if (v16 != CFStringGetTypeID())
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *buf = 0;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "Detected unexpected type in the MobileGestalt device name";
        goto LABEL_45;
      }

      if (CFStringCompare(@"iPad", v13, 0))
      {
        if (CFStringCompare(@"Apple Watch", v13, 0))
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *buf = 0;
          v17 = MEMORY[0x1E69E9C10];
          v18 = "Detected an unsupported non-baseband device";
LABEL_45:
          _os_log_error_impl(&dword_1A90E3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
          goto LABEL_46;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Detected a WiFi Watch", buf, 2u);
        }

        v20 = 104;
        v21 = 87;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Detected a WiFi iPad", buf, 2u);
        }

        v20 = 100;
        v21 = 80;
      }

      LODWORD(sTelephonyCapabilitiesHardwareModelInfo) = 99;
      BYTE4(sTelephonyCapabilitiesHardwareModelInfo) = v21;
      BYTE5(sTelephonyCapabilitiesHardwareModelInfo) = v20;
      HIWORD(sTelephonyCapabilitiesHardwareModelInfo) = 0;
      dword_1ED40DDB0 = 0;
      v5 = v13;
LABEL_8:
      CFRelease(v5);
      goto LABEL_50;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "Unable to determine the device name";
LABEL_13:
    v8 = 2;
LABEL_14:
    _os_log_error_impl(&dword_1A90E3000, v6, OS_LOG_TYPE_ERROR, v7, buf, v8);
    goto LABEL_47;
  }

  v12 = v2(@"HWModelStr", 0);
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "Unable to determine the hardware model string";
    goto LABEL_13;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFStringGetTypeID())
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "Detected unexpected type in the MobileGestalt hardware model string";
    goto LABEL_45;
  }

  if (!CFStringGetCString(v13, v22, 32, 0x600u))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "Unable to copy MobileGestalt hardware model string into local buffer";
      goto LABEL_45;
    }

LABEL_46:
    CFRelease(v13);
    goto LABEL_47;
  }

  CFRelease(v13);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = v22;
    _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Detected a baseband device with hardware model string '%s'", buf, 0xCu);
  }

  memset(buf, 170, 12);
  if (TelephonyUtilParseHardwareModel(v22, buf))
  {
    sTelephonyCapabilitiesHardwareModelInfo = *buf;
    dword_1ED40DDB0 = *&buf[8];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Successfully set the hardware model info", buf, 2u);
    }

    goto LABEL_50;
  }

  dword_1ED40DDB0 = 0;
  sTelephonyCapabilitiesHardwareModelInfo = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = v22;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "Failed to set hardware model info based on hardware model string '%s'";
    v8 = 12;
    goto LABEL_14;
  }

LABEL_47:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22[0]) = 0;
    _os_log_error_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Treating device as unknown Telephony product due error determining hardware model info from MobileGestalt query", v22, 2u);
  }

  dword_1ED40DDB0 = 0;
  sTelephonyCapabilitiesHardwareModelInfo = 0;
LABEL_50:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t TelephonyCapabilitiesSetHardwareModel(uint64_t result)
{
  v1 = *result;
  dword_1ED40DDB0 = *(result + 8);
  sTelephonyCapabilitiesHardwareModelInfo = v1;
  return result;
}

BOOL ctu::fs::file_exists(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  return stat(a1, &v3) == 0;
}

BOOL ctu::fs::is_directory(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v4.st_blksize = v1;
  *v4.st_qspare = v1;
  v4.st_birthtimespec = v1;
  *&v4.st_size = v1;
  v4.st_mtimespec = v1;
  v4.st_ctimespec = v1;
  *&v4.st_uid = v1;
  v4.st_atimespec = v1;
  *&v4.st_dev = v1;
  return !stat(a1, &v4) && (v4.st_mode & 0xF000) == 0x4000;
}

BOOL ctu::fs::create_directory(const void *a1, const void *a2, mode_t a3, int a4)
{
  v28[0] = a1;
  v28[1] = a2;
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v29.st_blksize = v8;
  *v29.st_qspare = v8;
  v29.st_birthtimespec = v8;
  *&v29.st_size = v8;
  v29.st_mtimespec = v8;
  v29.st_ctimespec = v8;
  *&v29.st_uid = v8;
  v29.st_atimespec = v8;
  *&v29.st_dev = v8;
  if (!stat(a1, &v29) && (v29.st_mode & 0xF000) == 0x4000)
  {
    return 1;
  }

  if (!a4)
  {
    return ctu::fs::_create_directory(a1, a2, a3);
  }

  memset(&__str, 170, sizeof(__str));
  std::string::basic_string[abi:ne200100]<0>(&__str, "/");
  memset(v26, 170, sizeof(v26));
  ctu::llvm::StringRef::operator std::string(v28, &v29);
  ctu::tokenize(&v29, 47, 0, v26);
  if (SHIBYTE(v29.st_gid) < 0)
  {
    operator delete(*&v29.st_dev);
  }

  memset(&v25, 0, sizeof(v25));
  if (*v28[0] == 47)
  {
    std::string::operator=(&v25, &__str);
  }

  v10 = v26[0];
  if (v26[1] == v26[0])
  {
LABEL_38:
    v9 = 1;
  }

  else
  {
    v11 = 0;
    v12 = 1;
    while (1)
    {
      if (v12 != 1)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        std::string::append(&v25, p_str, size);
        v10 = v26[0];
      }

      v15 = v10 + 24 * v11;
      v16 = *(v15 + 23);
      v17 = v16 >= 0 ? v15 : *v15;
      v18 = v16 >= 0 ? *(v15 + 23) : *(v15 + 8);
      std::string::append(&v25, v17, v18);
      v19 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
      v20.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v20.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v29.st_blksize = v20;
      *v29.st_qspare = v20;
      v29.st_birthtimespec = v20;
      *&v29.st_size = v20;
      v29.st_mtimespec = v20;
      v29.st_ctimespec = v20;
      *&v29.st_uid = v20;
      v29.st_atimespec = v20;
      *&v29.st_dev = v20;
      if (stat(v19, &v29) || (v29.st_mode & 0xF000) != 0x4000)
      {
        v21 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
        v22 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(v25.__r_.__value_.__r.__words[2]) : v25.__r_.__value_.__l.__size_;
        if (!ctu::fs::_create_directory(v21, v22, a3))
        {
          break;
        }
      }

      v11 = v12;
      v10 = v26[0];
      if (0xAAAAAAAAAAAAAAABLL * ((v26[1] - v26[0]) >> 3) <= v12++)
      {
        goto LABEL_38;
      }
    }

    v9 = 0;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  *&v29.st_dev = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1A9118C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

BOOL ctu::fs::_create_directory(const char *a1, uint64_t a2, mode_t a3)
{
  v4 = mkdir(a1, a3);
  if (v4)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    strerror(*v7);
    _TelephonyUtilDebugPrintError("_create_directory", "Failed to make directory %s with mode 0x%x (error: %d(0x%x) (%s))", v8, v9, v10, v11, v12, v13, a1);
  }

  return v4 == 0;
}

BOOL ctu::fs::iterate_folder(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = opendir(a1);
  v6 = v5;
  if (!v5)
  {
    v9 = "Failed to open directory %s (error: %d(0x%x) (%s))";
    goto LABEL_8;
  }

  v7 = readdir(v5);
  if (v7)
  {
    v8 = v7;
    do
    {
      (*(a3 + 16))(a3, v8);
      v8 = readdir(v6);
    }

    while (v8);
  }

  if (closedir(v6))
  {
    v9 = "Failed to close directory %s (error: %d(0x%x) (%s))";
LABEL_8:
    v10 = *__error();
    v11 = *__error();
    v12 = __error();
    strerror(*v12);
    _TelephonyUtilDebugPrintError("iterate_folder", v9, v13, v14, v15, v16, v17, v18, a1);
  }

  return v6 != 0;
}

BOOL ctu::fs::read_folder(const char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN3ctu2fs11read_folderENS_4llvm9StringRefERNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEEb_block_invoke;
  v5[3] = &__block_descriptor_tmp_6;
  v6 = a4;
  v5[4] = a3;
  return ctu::fs::iterate_folder(a1, a2, v5);
}

void ___ZN3ctu2fs11read_folderENS_4llvm9StringRefERNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEEb_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) != 4 || *(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 21));
    std::vector<std::string>::push_back[abi:ne200100](v2, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1A9118EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v20.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  *(a1 + 8) = v7;
}

uint64_t ctu::fs::memory_mapped_file::memory_mapped_file(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 0xFFFFFFFFLL;
  *(a1 + 40) = 0;
  ctu::fs::memory_mapped_file::load(a1);
  return a1;
}

{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 28) = 0xFFFFFFFFLL;
  *(a1 + 40) = 0;
  ctu::fs::memory_mapped_file::load(a1);
  return a1;
}

uint64_t ctu::fs::memory_mapped_file::load(ctu::fs::memory_mapped_file *this)
{
  v2 = *(this + 6);
  if (v2 == 3)
  {
    v3 = open(*(this + 1), 2);
  }

  else
  {
    v3 = open(*(this + 1), v2 == 2);
  }

  if (v3 < 0)
  {
    v28 = *(this + 1);
    v29 = *__error();
    v30 = *__error();
    v31 = __error();
    strerror(*v31);
    return _TelephonyUtilDebugPrintError("load", "Failed to open file %s (error: %d(0x%x) (%s))", v32, v33, v34, v35, v36, v37, v28);
  }

  else
  {
    v4 = v3;
    v5 = lseek(v3, 0, 2);
    if (v5 >= 1)
    {
      *(this + 8) = v5;
      if (!lseek(v4, 0, 0))
      {
        *__error() = 0;
        result = mmap(0, *(this + 8), *(this + 6) & 3, 2, v4, 0);
        *(this + 5) = result;
        if (result != 0xFFFFFFFFLL && result != 0)
        {
          *(this + 7) = v4;
          return result;
        }

        v8 = *(this + 1);
        v9 = *__error();
        v10 = *__error();
        v11 = __error();
        strerror(*v11);
        _TelephonyUtilDebugPrintError("load", "Failed to map file %s (error: %d(0x%x) (%s))", v12, v13, v14, v15, v16, v17, v8);
      }
    }

    result = close(v4);
    if (result)
    {
      v18 = *(this + 1);
      v19 = *__error();
      v20 = *__error();
      v21 = __error();
      strerror(*v21);
      return _TelephonyUtilDebugPrintError("load", "Failed to close file %s (error: %d(0x%x) (%s))", v22, v23, v24, v25, v26, v27, v18);
    }
  }

  return result;
}

void ctu::fs::memory_mapped_file::~memory_mapped_file(ctu::fs::memory_mapped_file *this)
{
  ctu::fs::memory_mapped_file::unload(this);
}

{
  ctu::fs::memory_mapped_file::unload(this);
}

uint64_t ctu::fs::memory_mapped_file::unload(ctu::fs::memory_mapped_file *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = v2 == 0xFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && munmap(v2, *(this + 8)))
  {
    v4 = *(this + 1);
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    strerror(*v7);
    _TelephonyUtilDebugPrintError("unload", "Failed to unmap file %s (error: %d(0x%x) (%s))", v8, v9, v10, v11, v12, v13, v4);
  }

  result = *(this + 7);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      v15 = *(this + 1);
      v16 = *__error();
      v17 = *__error();
      v18 = __error();
      strerror(*v18);
      result = _TelephonyUtilDebugPrintError("unload", "Failed to close file %s (error: %d(0x%x) (%s))", v19, v20, v21, v22, v23, v24, v15);
    }

    *(this + 7) = -1;
  }

  return result;
}

uint64_t ctu::fs::memory_mapped_file::getIOFlags(ctu::fs::memory_mapped_file *this)
{
  v1 = *(this + 6);
  if (v1 == 3)
  {
    return 2;
  }

  else
  {
    return v1 == 2;
  }
}

uint64_t ctu::fs::write_to_completion(ctu::fs *this, char *__buf, size_t __nbyte)
{
  if (!__nbyte)
  {
    return 1;
  }

  v3 = __nbyte;
  while (1)
  {
    v6 = write(this, __buf, v3);
    if (v6 < 0)
    {
      break;
    }

    __buf += v6;
    v3 -= v6;
    if (!v3)
    {
      return 1;
    }
  }

  v8 = *__error();
  v9 = *__error();
  v10 = __error();
  strerror(*v10);
  _TelephonyUtilDebugPrintError("write_to_completion", "Failed to write to file descriptor %d (error: %d(0x%x) (%s))", v11, v12, v13, v14, v15, v16, this);
  return 0;
}

uint64_t ctu::fs::open_file(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = open(a1, a3, a4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *__error();
    v7 = *__error();
    v8 = __error();
    strerror(*v8);
    _TelephonyUtilDebugPrintError("open_file", "Failed to open file %s (error: %d(0x%x) (%s))", v9, v10, v11, v12, v13, v14, a1);
  }

  return v5;
}

BOOL ctu::fs::close_file(ctu::fs *this)
{
  do
  {
    v2 = close(this);
    if (!v2)
    {
      break;
    }

    v3 = *__error();
    v4 = *__error();
    v5 = __error();
    strerror(*v5);
    _TelephonyUtilDebugPrintError("close_file", "Failed to close file descriptor %d (error: %d(0x%x)) (%s)", v6, v7, v8, v9, v10, v11, this);
  }

  while (*__error() == 4);
  return v2 == 0;
}

uint64_t ctu::fs::copy_file(const char *a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = strlen(a1);
  v9 = ctu::fs::open_file(a1, v8, 0, 420);
  if ((v9 & 0x80000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    v10 = v9;
    v11 = strlen(a3);
    v12 = ctu::fs::open_file(a3, v11, 514, 420);
    if ((v12 & 0x80000000) != 0)
    {
      v15 = 0;
    }

    else
    {
      v13 = v12;
      while (1)
      {
        memset(__b, 170, sizeof(__b));
        v14 = read(v10, __b, 0x400uLL);
        if (v14 < 0)
        {
          v16 = *__error();
          v17 = *__error();
          v18 = __error();
          strerror(*v18);
          _TelephonyUtilDebugPrintError("copy_file", "Failed to read source file %s (error: %d(0x%x) (%s))", v19, v20, v21, v22, v23, v24, a1);
LABEL_16:
          v15 = 0;
          goto LABEL_17;
        }

        if (!v14)
        {
          break;
        }

        if ((ctu::fs::write_to_completion(v13, __b, v14) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (a5)
      {
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__b[112] = v25;
        *&__b[128] = v25;
        *&__b[80] = v25;
        *&__b[96] = v25;
        *&__b[48] = v25;
        *&__b[64] = v25;
        *&__b[16] = v25;
        *&__b[32] = v25;
        *__b = v25;
        if (fstat(v10, __b))
        {
          v26 = *__error();
          v27 = *__error();
          v28 = __error();
          strerror(*v28);
          _TelephonyUtilDebugPrintError("copy_file", "Failed to get status of source file %s (error: %d(0x%x) (%s))", v29, v30, v31, v32, v33, v34, a1);
          goto LABEL_16;
        }

        if (fchmod(v13, *&__b[4]))
        {
          v35 = *__error();
          v36 = *__error();
          v37 = __error();
          strerror(*v37);
          _TelephonyUtilDebugPrintError("copy_file", "Failed to change mode of destination file %s (error: %d(0x%x) (%s))", v38, v39, v40, v41, v42, v43, a3);
          goto LABEL_16;
        }
      }

      v15 = 1;
LABEL_17:
      ctu::fs::close_file(v13);
    }

    ctu::fs::close_file(v10);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL ctu::fs::load_file(const void *a1, const void *a2, char **a3)
{
  v29[72] = *MEMORY[0x1E69E9840];
  v28[0] = a1;
  v28[1] = a2;
  memset(&v29[1], 170, 0x238uLL);
  ctu::llvm::StringRef::operator std::string(v28, __p);
  v29[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  v29[53] = MEMORY[0x1E69E5528] + 64;
  v5 = MEMORY[0x1E69E54C8];
  v6 = *(MEMORY[0x1E69E54C8] + 16);
  v29[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v29 + *(v29[0] - 24)) = v6;
  v29[1] = 0;
  v7 = (v29 + *(v29[0] - 24));
  std::ios_base::init(v7, &v29[2]);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v29[0] = v8;
  v29[53] = v4;
  MEMORY[0x1AC5809E0](&v29[2]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v29 + *(v29[0] - 24)), *(&v29[4] + *(v29[0] - 24)) | 4);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  if (v29[17] && ((file_size = ctu::fs::get_file_size(v29, __p), (v10 = __p[0]) != 0) ? (v11 = file_size) : (v11 = 0), v11 && !*(&v29[4] + *(v29[0] - 24))))
  {
    v16 = *a3;
    v15 = a3[1];
    v17 = (v15 - *a3);
    v18 = (__p[0] - v17);
    if (__p[0] <= v17)
    {
      if (__p[0] < v17)
      {
        a3[1] = &v16[__p[0]];
      }
    }

    else
    {
      v19 = a3[2];
      if (v19 - v15 >= v18)
      {
        v24 = &v18[v15];
        bzero(v15, __p[0] - v17);
        a3[1] = v24;
      }

      else
      {
        if ((__p[0] & 0x8000000000000000) != 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v20 = v19 - v16;
        v21 = (2 * v20);
        if ((2 * v20) <= __p[0])
        {
          v21 = __p[0];
        }

        if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v23 = operator new(v22);
        bzero(&v17[v23], v10 - v17);
        memcpy(v23, v16, v17);
        *a3 = v23;
        a3[1] = &v10[v23];
        a3[2] = v23 + v22;
        if (v16)
        {
          operator delete(v16);
        }
      }

      v25 = *a3;
    }

    std::istream::read();
    v12 = v29[1] == v10;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v29 + *(v29[0] - 24)), *(&v29[4] + *(v29[0] - 24)) | 4);
    }
  }

  else
  {
    v12 = 0;
  }

  v29[0] = *v5;
  *(v29 + *(v29[0] - 24)) = v5[3];
  MEMORY[0x1AC5809F0](&v29[2]);
  std::istream::~istream();
  MEMORY[0x1AC580CE0](&v29[53]);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL ctu::fs::get_file_size(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v6;
    std::istream::seekg();
  }

  result = v2 != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1AC5809F0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1AC580CE0](a1 + 53);
  return a1;
}

BOOL ctu::fs::get_file_size(uint64_t a1, uint64_t a2, void *a3)
{
  v12[72] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    memset(&v12[1], 170, 0x238uLL);
    v12[59] = 0;
    v4 = MEMORY[0x1E69E5528] + 64;
    v12[53] = MEMORY[0x1E69E5528] + 64;
    v5 = MEMORY[0x1E69E54C8];
    v6 = *(MEMORY[0x1E69E54C8] + 16);
    v12[0] = *(MEMORY[0x1E69E54C8] + 8);
    *(v12 + *(v12[0] - 24)) = v6;
    v12[1] = 0;
    v7 = (v12 + *(v12[0] - 24));
    std::ios_base::init(v7, &v12[2]);
    v8 = MEMORY[0x1E69E5528] + 24;
    v7[1].__vftable = 0;
    v7[1].__fmtflags_ = -1;
    v12[0] = v8;
    v12[53] = v4;
    MEMORY[0x1AC5809E0](&v12[2]);
    if (!std::filebuf::open())
    {
      std::ios_base::clear((v12 + *(v12[0] - 24)), *(&v12[4] + *(v12[0] - 24)) | 4);
    }

    if (v12[17])
    {
      file_size = ctu::fs::get_file_size(v12, a3);
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v12 + *(v12[0] - 24)), *(&v12[4] + *(v12[0] - 24)) | 4);
      }
    }

    else
    {
      file_size = 0;
    }

    v12[0] = *v5;
    *(v12 + *(v12[0] - 24)) = v5[3];
    MEMORY[0x1AC5809F0](&v12[2]);
    std::istream::~istream();
    MEMORY[0x1AC580CE0](&v12[53]);
  }

  else
  {
    file_size = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return file_size;
}

void sub_1A9119FF4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC580CE0](v1);
  _Unwind_Resume(a1);
}

void ctu::fs::get_base_name(const void *a1@<X0>, const void *a2@<X1>, std::string *a3@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  memset(v6, 170, sizeof(v6));
  ctu::llvm::StringRef::operator std::string(v7, &__p);
  ctu::tokenize(&__p, 47, 0, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v6[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v6[1] - 24), *(v6[1] - 16));
  }

  else
  {
    v4 = *(v6[1] - 24);
    a3->__r_.__value_.__r.__words[2] = *(v6[1] - 8);
    *&a3->__r_.__value_.__l.__data_ = v4;
  }

  __p.__r_.__value_.__r.__words[0] = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A911A0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ctu::fs::get_unique_filename(const void *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v81[16] = v6;
  *&v81[32] = v6;
  v80 = v6;
  *v81 = v6;
  std::regex_traits<char>::regex_traits(&v80);
  memset(&v81[8], 0, 40);
  if (std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v80, "^([/_\\-[:alnum:]]*)(.*)", "") != "")
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  memset(v79, 170, sizeof(v79));
  ctu::fs::get_dir_name(a1, a2, v79);
  memset(&v78, 170, sizeof(v78));
  ctu::fs::get_base_name(a1, a2, &v78);
  memset(&v77, 170, sizeof(v77));
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v78;
  }

  v70 = a3;
  i = 0;
  while (1)
  {
    if (SHIBYTE(v79[2]) >= 0)
    {
      v8 = HIBYTE(v79[2]);
    }

    else
    {
      v8 = v79[1];
    }

    memset(v84, 170, 24);
    std::string::basic_string[abi:ne200100](v84, v8 + 1);
    if ((v84[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = v84;
    }

    else
    {
      v9 = v84[0].__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (SHIBYTE(v79[2]) >= 0)
      {
        v10 = v79;
      }

      else
      {
        v10 = v79[0];
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 47;
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v77;
    }

    else
    {
      v11 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v77.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(v84, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    __p.__pregex_ = v13->__r_.__value_.__r.__words[2];
    *&__p.__begin_.__i_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__pregex_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__begin_.__i_;
    }

    v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v83.st_blksize = v16;
    *v83.st_qspare = v16;
    v83.st_birthtimespec = v16;
    *&v83.st_size = v16;
    v83.st_mtimespec = v16;
    v83.st_ctimespec = v16;
    *&v83.st_uid = v16;
    v83.st_atimespec = v16;
    *&v83.st_dev = v16;
    v17 = stat(p_p, &v83);
    if (SHIBYTE(__p.__pregex_) < 0)
    {
      operator delete(__p.__begin_.__i_);
    }

    if (SHIBYTE(v84[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84[0].__r_.__value_.__l.__data_);
    }

    if (v17)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v79, &v77.__r_.__value_.__l.__data_, v70);
      goto LABEL_133;
    }

    v18 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v77;
    }

    else
    {
      v19 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v77.__r_.__value_.__l.__size_;
    }

    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v83.st_birthtimespec.tv_nsec = v20;
    v83.st_ctimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v83.st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    memset(&v83.st_mtimespec, 0, 17);
    memset(&v83.st_ctimespec.tv_nsec, 0, 17);
    LOBYTE(v83.st_size) = 0;
    v83.st_blocks = 0;
    memset(&v83, 0, 40);
    v21 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v19, (v19 + v18), &v83, &v80);
    if (*&v83.st_dev)
    {
      operator delete(*&v83.st_dev);
    }

    if (!v21)
    {
      break;
    }

    ++i;
    memset(v76, 170, 24);
    std::to_string(&__p, i);
    v22 = std::string::insert(&__p, 0, "$1-", 3uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    *&v83.st_uid = *(&v22->__r_.__value_.__l + 2);
    *&v83.st_dev = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v83, "$2", 2uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v76[2] = v24->__r_.__value_.__r.__words[2];
    *v76 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v83.st_gid) < 0)
    {
      operator delete(*&v83.st_dev);
    }

    if (SHIBYTE(__p.__pregex_) < 0)
    {
      operator delete(__p.__begin_.__i_);
    }

    memset(&v75, 0, sizeof(v75));
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v78;
    }

    else
    {
      v26 = v78.__r_.__value_.__r.__words[0];
    }

    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v78.__r_.__value_.__l.__size_;
    }

    v28 = v76;
    if (SHIBYTE(v76[2]) < 0)
    {
      v28 = v76[0];
    }

    __s = v28;
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v83.st_gen = v29;
    v83.st_size = 0xAAAAAAAAAAAAAAAALL;
    v83.st_ctimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *(&v83.st_rdev + 1) = -1431655766;
    *&v83.st_dev = v26;
    v83.st_ino = v26 + v27;
    *&v83.st_uid = &v80;
    v83.st_rdev = 0;
    memset(&v83.st_birthtimespec, 0, 17);
    memset(&v83.st_blocks, 0, 17);
    LOBYTE(v83.st_qspare[0]) = 0;
    v83.st_qspare[1] = 0;
    memset(&v83.st_atimespec, 0, 40);
    *&__p.__match_.__prefix_.second.__i_ = v29;
    __p.__match_.__unmatched_.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
    __p.__match_.__matches_.__end_ = 0xAAAAAAAAAAAAAAAALL;
    memset(&__p.__match_.__matches_.__end_cap_, 0, 17);
    memset(&__p.__match_.__unmatched_.matched, 0, 17);
    __p.__match_.__prefix_.matched = 0;
    __p.__match_.__suffix_.first.__i_ = 0;
    memset(&__p, 0, 40);
    std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v80, v26, (v26 + v27), &__p, 0);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v83.st_atimespec, v26, v26 + v27, &__p, 0);
    if (__p.__begin_.__i_)
    {
      operator delete(__p.__begin_.__i_);
    }

    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__p.__match_.__suffix_.matched = v30;
    *&__p.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
    *&__p.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
    *(&__p.__flags_ + 1) = -1431655766;
    memset(&__p.__match_.__prefix_, 0, 17);
    memset(&__p.__match_.__suffix_, 0, 17);
    __p.__match_.__ready_ = 0;
    __p.__match_.__position_start_.__i_ = 0;
    memset(&__p.__match_, 0, 40);
    memset(&__p, 0, 28);
    if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v83, &__p))
    {
      for (; v27; --v27)
      {
        std::string::push_back(&v75, v26->__r_.__value_.__s.__data_[0]);
        v26 = (v26 + 1);
      }

      goto LABEL_125;
    }

    v71 = i;
    v31 = 0;
    st_blocks = 0;
    v73 = strlen(__s);
    v33 = &__s[v73];
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v83, &__p))
    {
      tv_sec = v83.st_birthtimespec.tv_sec;
      tv_nsec = v83.st_birthtimespec.tv_nsec;
      if (v83.st_birthtimespec.tv_sec != v83.st_birthtimespec.tv_nsec)
      {
        v36 = v83.st_birthtimespec.tv_sec;
        do
        {
          std::string::push_back(&v75, *v36++);
        }

        while (v36 != tv_nsec);
      }

      v37 = v83.st_atimespec.tv_sec;
      if (v73)
      {
        st_blocks = v83.st_blocks;
        v31 = *&v83.st_blksize;
        v38 = v83.st_atimespec.tv_nsec;
        v74 = 0xAAAAAAAAAAAAAAABLL * ((v83.st_atimespec.tv_nsec - v83.st_atimespec.tv_sec) >> 3);
        v39 = __s;
        while (1)
        {
          v40 = *v39;
          v41 = (v39 + 1);
          if (v40 == 36 && v41 != v33)
          {
            v43 = *v41;
            if (v43 > 0x26)
            {
              if (v43 == 39)
              {
                if (st_blocks != v31)
                {
                  v57 = st_blocks;
                  do
                  {
                    std::string::push_back(&v75, *v57++);
                  }

                  while (v57 != v31);
                }

                goto LABEL_70;
              }

              if (v43 == 96)
              {
                if (tv_sec != tv_nsec)
                {
                  v46 = tv_sec;
                  do
                  {
                    std::string::push_back(&v75, *v46++);
                  }

                  while (v46 != tv_nsec);
                }

                goto LABEL_70;
              }

LABEL_84:
              LODWORD(v47) = v43 - 48;
              if (v47 <= 9)
              {
                v47 = v47;
                if (v39 + 2 != v33)
                {
                  v48 = v39[2];
                  v49 = v48 - 48;
                  v50 = v48 + 10 * v47 - 48;
                  if (v49 > 9)
                  {
                    v41 = (v39 + 1);
                  }

                  else
                  {
                    v47 = v50;
                    v41 = (v39 + 2);
                  }
                }

                v51 = v37 + 24 * v47;
                v52 = v74 > v47;
                p_tv_nsec = &v83.st_mtimespec.tv_nsec;
                if (v52)
                {
                  p_tv_nsec = v51;
                }

                v54 = *p_tv_nsec;
                p_st_ctimespec = (v51 + 8);
                if (!v52)
                {
                  p_st_ctimespec = &v83.st_ctimespec;
                }

                v56 = p_st_ctimespec->tv_sec;
                while (v54 != v56)
                {
                  std::string::push_back(&v75, *v54++);
                }

                goto LABEL_70;
              }

              goto LABEL_69;
            }

            if (v43 != 36)
            {
              if (v43 == 38)
              {
                v44 = *v37;
                v45 = *(v37 + 8);
                while (v44 != v45)
                {
                  std::string::push_back(&v75, *v44++);
                }

                goto LABEL_70;
              }

              goto LABEL_84;
            }

            ++v39;
          }

LABEL_69:
          std::string::push_back(&v75, v40);
          v41 = v39;
LABEL_70:
          v39 = (v41 + 1);
          if (v41 + 1 == v33)
          {
            goto LABEL_102;
          }
        }
      }

      st_blocks = v83.st_blocks;
      v31 = *&v83.st_blksize;
      v38 = v83.st_atimespec.tv_nsec;
LABEL_102:
      st_rdev = v83.st_rdev;
      v59 = v83.st_rdev | 0x800;
      v83.st_rdev |= 0x800u;
      v60 = &v83.st_mtimespec.tv_nsec;
      if (v38 != v37)
      {
        v60 = v37;
      }

      v61 = (v37 + 8);
      if (v38 == v37)
      {
        v61 = &v83.st_ctimespec;
      }

      v62 = v61->tv_sec;
      st_ino = v83.st_ino;
      if (*v60 == v61->tv_sec)
      {
        if (v83.st_ino == v62)
        {
          if (!v37)
          {
            goto LABEL_122;
          }

          v69 = v37;
LABEL_121:
          operator delete(v69);
          goto LABEL_122;
        }

        *&v67 = 0xAAAAAAAAAAAAAAAALL;
        *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v90 = v67;
        v87 = 0xAAAAAAAAAAAAAA00;
        v84[1].__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
        v85 = 0;
        v86 = 0;
        v88 = 0;
        v89 = 0;
        LOBYTE(v90) = 0;
        BYTE8(v90) = 0;
        v91 = 0;
        memset(v84, 0, 40);
        v68 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&v83.st_uid, v62, v83.st_ino, v84, st_rdev | 0x860u);
        std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v83.st_atimespec, v62, st_ino, v84, 1);
        if (v84[0].__r_.__value_.__r.__words[0])
        {
          operator delete(v84[0].__r_.__value_.__l.__data_);
        }

        if ((v68 & 1) == 0)
        {
          v64 = (&v62->first + 1);
          v59 = v83.st_rdev;
          st_ino = v83.st_ino;
          goto LABEL_108;
        }
      }

      else
      {
        v64 = v61->tv_sec;
LABEL_108:
        v83.st_rdev = v59 | 0x80;
        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v90 = v65;
        v87 = 0xAAAAAAAAAAAAAA00;
        v84[1].__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
        v85 = 0;
        v86 = 0;
        v88 = 0;
        v89 = 0;
        LOBYTE(v90) = 0;
        BYTE8(v90) = 0;
        v91 = 0;
        memset(v84, 0, 40);
        v66 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(*&v83.st_uid, v64, st_ino, v84, v59 | 0x80u);
        std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v83.st_atimespec, v64, st_ino, v84, (v59 & 0x800) != 0);
        if (v84[0].__r_.__value_.__r.__words[0])
        {
          operator delete(v84[0].__r_.__value_.__l.__data_);
        }

        if (v66)
        {
          v83.st_birthtimespec.tv_sec = v62;
          LOBYTE(v83.st_size) = v83.st_birthtimespec.tv_nsec != v62;
        }

        else
        {
          v69 = v83.st_atimespec.tv_sec;
          if (v83.st_atimespec.tv_sec)
          {
            goto LABEL_121;
          }

LABEL_122:
          LOBYTE(v83.st_qspare[0]) = 0;
          memset(&v83.st_atimespec, 0, 41);
          memset(&v83.st_birthtimespec, 0, 17);
          memset(&v83.st_blocks, 0, 17);
          v83.st_qspare[1] = 0;
        }
      }
    }

    for (i = v71; st_blocks != v31; ++st_blocks)
    {
      std::string::push_back(&v75, *st_blocks);
    }

LABEL_125:
    if (v83.st_atimespec.tv_sec)
    {
      operator delete(v83.st_atimespec.tv_sec);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    v77 = v75;
    if (SHIBYTE(v76[2]) < 0)
    {
      operator delete(v76[0]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v70, "");
LABEL_133:
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79[2]) < 0)
  {
    operator delete(v79[0]);
  }

  if (*&v81[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v81[32]);
  }

  std::locale::~locale(&v80);
}

void sub_1A911AA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, std::locale a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a39);
  _Unwind_Resume(a1);
}

void ctu::fs::get_dir_name(const void *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  if (a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    memset(&__p, 170, sizeof(__p));
    ctu::fs::get_base_name(a1, a2, &__p);
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = ctu::llvm::StringRef::rfind(v15, p_p, size);
    if (v9 != -1)
    {
      if (v9 >= a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = v9;
      }

      v11[0] = a1;
      v11[1] = v10;
      ctu::llvm::StringRef::operator std::string(v11, &v12);
      *a3 = v12;
      a3[2] = v13;
      v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v6 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    ctu::llvm::StringRef::operator std::string(v15, a3);
  }
}

void sub_1A911AC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

const void **ctu::fs::get_unique_pathname@<X0>(const void *a1@<X0>, const void *a2@<X1>, _OWORD *a3@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v17[0] = a1;
  v17[1] = a2;
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v4;
  *v19.st_qspare = v4;
  v19.st_birthtimespec = v4;
  *&v19.st_size = v4;
  v19.st_mtimespec = v4;
  v19.st_ctimespec = v4;
  *&v19.st_uid = v4;
  v19.st_atimespec = v4;
  *&v19.st_dev = v4;
  if (stat(a1, &v19))
  {
    result = ctu::llvm::StringRef::operator std::string(v17, a3);
  }

  else
  {
    for (i = 1; ; ++i)
    {
      v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v25 = v8;
      v26 = v8;
      v23 = v8;
      v24 = v8;
      v21 = v8;
      v22 = v8;
      *v19.st_qspare = v8;
      v20 = v8;
      *&v19.st_size = v8;
      *&v19.st_blksize = v8;
      v19.st_ctimespec = v8;
      v19.st_birthtimespec = v8;
      v19.st_atimespec = v8;
      v19.st_mtimespec = v8;
      *&v19.st_dev = v8;
      *&v19.st_uid = v8;
      snprintf(&v19, 0x100uLL, "-%u", i);
      memset(a3, 170, 24);
      ctu::llvm::StringRef::operator std::string(v17, &v18);
      std::string::basic_string[abi:ne200100]<0>(__p, &v19);
      if ((v16 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v10 = v16;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = std::string::append(&v18, v9, v10);
      v12 = *&v11->__r_.__value_.__l.__data_;
      *(a3 + 2) = *(&v11->__r_.__value_.__l + 2);
      *a3 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v18.st_gid) < 0)
      {
        operator delete(*&v18.st_dev);
      }

      v13 = *(a3 + 23) >= 0 ? a3 : *a3;
      v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v14.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v18.st_blksize = v14;
      *v18.st_qspare = v14;
      *&v18.st_size = v14;
      v18.st_ctimespec = v14;
      v18.st_birthtimespec = v14;
      v18.st_atimespec = v14;
      v18.st_mtimespec = v14;
      *&v18.st_dev = v14;
      *&v18.st_uid = v14;
      result = stat(v13, &v18);
      if (result)
      {
        break;
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A911AEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::fs::remove_file(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  if (!remove(a1, a2))
  {
    return 1;
  }

  v3 = *__error();
  v4 = *__error();
  v5 = __error();
  strerror(*v5);
  _TelephonyUtilDebugPrintError("remove_file", "Failed to remove file %s (error: %d(0x%x) (%s))", v6, v7, v8, v9, v10, v11, a1);
  if (!unlink(a1))
  {
    return 1;
  }

  v12 = *__error();
  v13 = *__error();
  v14 = __error();
  strerror(*v14);
  _TelephonyUtilDebugPrintError("remove_file", "Failed to unlink file %s (error: %d(0x%x) (%s))", v15, v16, v17, v18, v19, v20, a1);
  return 0;
}

uint64_t ctu::fs::remove_dir(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v4;
  *v6.st_qspare = v4;
  v6.st_birthtimespec = v4;
  *&v6.st_size = v4;
  v6.st_mtimespec = v4;
  v6.st_ctimespec = v4;
  *&v6.st_uid = v4;
  v6.st_atimespec = v4;
  *&v6.st_dev = v4;
  if (stat(a1, &v6))
  {
    return 1;
  }

  result = ctu::fs::remove_directory_contents(a1, a2);
  if (result)
  {
    return ctu::fs::remove_file(a1, a2);
  }

  return result;
}

uint64_t ctu::fs::remove_directory_contents(const void *a1, const void *a2)
{
  v37[0] = a1;
  v37[1] = a2;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *&v38.st_dev = MEMORY[0x1E69E9820];
  v38.st_ino = 0x40000000;
  *&v38.st_uid = ___ZN3ctu2fs11read_folderENS_4llvm9StringRefERNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEEb_block_invoke;
  *&v38.st_rdev = &__block_descriptor_tmp_6;
  LOBYTE(v38.st_atimespec.tv_nsec) = 1;
  v38.st_atimespec.tv_sec = &v34;
  ctu::fs::iterate_folder(a1, a2, &v38);
  v2 = v35;
  if (v34 != v35)
  {
    v3 = v34 + 24;
    v4 = 1;
    while (1)
    {
      memset(&v33, 170, sizeof(v33));
      if (*(v3 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, *(v3 - 24), *(v3 - 16));
      }

      else
      {
        v5 = *(v3 - 24);
        v33.__r_.__value_.__r.__words[2] = *(v3 - 8);
        *&v33.__r_.__value_.__l.__data_ = v5;
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v33.__r_.__value_.__l.__size_ == 1)
        {
          v7 = *v33.__r_.__value_.__l.__data_;
LABEL_17:
          if (v7 == 46)
          {
            goto LABEL_62;
          }

          goto LABEL_18;
        }

        if (v33.__r_.__value_.__l.__size_ == 2)
        {
          v6 = v33.__r_.__value_.__r.__words[0];
LABEL_13:
          if (LOWORD(v6->__r_.__value_.__l.__data_) == 11822)
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        if (HIBYTE(v33.__r_.__value_.__r.__words[2]) == 1)
        {
          v7 = v33.__r_.__value_.__s.__data_[0];
          goto LABEL_17;
        }

        if (HIBYTE(v33.__r_.__value_.__r.__words[2]) == 2)
        {
          v6 = &v33;
          goto LABEL_13;
        }
      }

LABEL_18:
      memset(__p, 170, 24);
      ctu::llvm::StringRef::operator std::string(v37, &v31);
      v8 = std::string::append(&v31, "/", 1uLL);
      v9 = *&v8->__r_.__value_.__l.__data_;
      *&v38.st_uid = *(&v8->__r_.__value_.__l + 2);
      *&v38.st_dev = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v33;
      }

      else
      {
        v10 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      v12 = std::string::append(&v38, v10, size);
      v13 = *&v12->__r_.__value_.__l.__data_;
      __p[2] = v12->__r_.__value_.__r.__words[2];
      *__p = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v38.st_gid) < 0)
      {
        operator delete(*&v38.st_dev);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v38.st_blksize = v15;
      *v38.st_qspare = v15;
      v38.st_birthtimespec = v15;
      *&v38.st_size = v15;
      v38.st_mtimespec = v15;
      v38.st_ctimespec = v15;
      *&v38.st_uid = v15;
      v38.st_atimespec = v15;
      *&v38.st_dev = v15;
      if (stat(v14, &v38) || (v38.st_mode & 0xF000) != 0x4000)
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v26 = SHIBYTE(__p[2]);
        }

        else
        {
          v26 = __p[1];
        }

        v24 = ctu::fs::remove_file(v25, v26);
      }

      else
      {
        ctu::llvm::StringRef::operator std::string(v37, &v30);
        v16 = std::string::append(&v30, "/", 1uLL);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v33;
        }

        else
        {
          v18 = v33.__r_.__value_.__r.__words[0];
        }

        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v33.__r_.__value_.__l.__size_;
        }

        v20 = std::string::append(&v31, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        *&v38.st_uid = *(&v20->__r_.__value_.__l + 2);
        *&v38.st_dev = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        if ((v38.st_gid & 0x80000000) == 0)
        {
          v22 = &v38;
        }

        else
        {
          v22 = *&v38.st_dev;
        }

        if ((v38.st_gid & 0x80000000) == 0)
        {
          st_gid_high = SHIBYTE(v38.st_gid);
        }

        else
        {
          st_gid_high = v38.st_ino;
        }

        v24 = ctu::fs::remove_dir(v22, st_gid_high);
        if (SHIBYTE(v38.st_gid) < 0)
        {
          operator delete(*&v38.st_dev);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v27 = 1;
      if ((v24 & 1) == 0)
      {
        v4 = 0;
        goto LABEL_64;
      }

      v4 = 1;
LABEL_62:
      v27 = 0;
LABEL_64:
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (v3 == v2)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      v3 += 24;
      if (v28)
      {
        goto LABEL_72;
      }
    }
  }

  v4 = 1;
LABEL_72:
  *&v38.st_dev = &v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
  return v4 & 1;
}

void sub_1A911B3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  a30 = &a36;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

uint64_t ctu::fs::rename(const std::__fs::filesystem::path *a1, uint64_t a2, std::__fs::filesystem::path *a3, size_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    if (LOWORD(a1->__pn_.__r_.__value_.__l.__data_) != 11822 && a4 != 0)
    {
      if (a4 == 2)
      {
LABEL_17:
        v7 = "..";
LABEL_18:
        result = memcmp(a3, v7, a4);
        if (!result)
        {
          return result;
        }

        goto LABEL_19;
      }

      if (a4 != 1)
      {
LABEL_19:
        rename(a1, a3, a3);
        if (!v9)
        {
          return 1;
        }

        v10 = *__error();
        v11 = *__error();
        v12 = __error();
        strerror(*v12);
        _TelephonyUtilDebugPrintError("rename", "Failed to rename %s -> %s (error: %d(0x%x) (%s))", v13, v14, v15, v16, v17, v18, a1);
        return 0;
      }

LABEL_15:
      v7 = ".";
      goto LABEL_18;
    }
  }

  else if ((a2 != 1 || a1->__pn_.__r_.__value_.__s.__data_[0] != 46) && a4)
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  return 0;
}

const void **ctu::fs::rename_directory_unique@<X0>(const std::__fs::filesystem::path *a1@<X0>, const void *a2@<X2>, const void *a3@<X3>, void *a4@<X8>)
{
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v24.st_blksize = v8;
  *v24.st_qspare = v8;
  v24.st_birthtimespec = v8;
  *&v24.st_size = v8;
  v24.st_mtimespec = v8;
  v24.st_ctimespec = v8;
  *&v24.st_uid = v8;
  v24.st_atimespec = v8;
  *&v24.st_dev = v8;
  if (!stat(a1, &v24) && (v24.st_mode & 0xF000) == 0x4000)
  {
    ctu::fs::get_unique_pathname(a2, a3, &v24);
    st_ino = v24.st_ino;
    if ((v24.st_gid & 0x80000000) == 0)
    {
      v11 = &v24;
    }

    else
    {
      v11 = *&v24.st_dev;
    }

    if ((v24.st_gid & 0x80000000) == 0)
    {
      st_ino = SHIBYTE(v24.st_gid);
    }

    v23[0] = v11;
    v23[1] = st_ino;
    if ((SHIBYTE(v24.st_gid) & 0x8000000000000000) != 0)
    {
      operator delete(*&v24.st_dev);
    }

    rename(a1, v11, v9);
    if (!v12)
    {
      return ctu::llvm::StringRef::operator std::string(v23, a4);
    }

    v13 = *__error();
    v14 = *__error();
    v15 = __error();
    strerror(*v15);
    _TelephonyUtilDebugPrintError("rename_directory_unique", "Failed to rename %s -> %s (error: %d(0x%x) (%s))", v16, v17, v18, v19, v20, v21, a1);
  }

  return std::string::basic_string[abi:ne200100]<0>(a4, "");
}