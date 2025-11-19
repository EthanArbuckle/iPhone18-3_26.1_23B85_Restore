QMIServiceMsg *QMIServiceMsg::create(QMIServiceMsg *this, const qmi::MutableMessageBase *a2)
{
  memset(__p, 170, sizeof(__p));
  qmi::MutableMessageBase::serialize(__p, this);
  v2 = __p[0];
  v3 = __p[1];
  v4 = operator new(0x58uLL);
  QMIServiceMsg::QMIServiceMsg(v4, v2, (v3 - v2), 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2962DDA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void QMIServiceMsg::QMIServiceMsg(QMIServiceMsg *this, unsigned __int16 *a2, char *a3, int a4)
{
  v4 = this;
  *(this + 2) = 0;
  *this = &unk_2A1D49040;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 36) = 0x100000000;
  *(this + 22) = 4;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  if (a3 <= 3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x5F, "buf_length", ">=", "4", a3, 4);
    return;
  }

  *(this + 6) = *a2;
  v5 = a2[1];
  *(this + 7) = v5;
  v6 = (v5 + 4);
  if (v6 == a3)
  {
    goto LABEL_44;
  }

  v7 = a3;
  v8 = a4;
  v9 = a2;
  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x68, "(4 + fMsgLength)", "==", "buf_length", v6, a3);
  a2 = v9;
  LODWORD(a3) = v7;
  a4 = v8;
  v5 = *(v4 + 7);
  if (v5 + 4 == v7)
  {
LABEL_44:
    v37 = a3;
    v35 = a4;
    v36 = a2;
    v10 = (a2 + 2);
    if (v5)
    {
      v11 = 0;
      do
      {
        v14 = *v10;
        v15 = *(v10 + 1);
        v16 = operator new(0x18uLL);
        *v16 = v14;
        v16[1] = v15;
        v17 = operator new[](v15);
        *(v16 + 1) = v17;
        v16[8] = 0;
        memcpy(v17, v10 + 3, v15);
        v4 = this;
        v19 = *(this + 3);
        v18 = *(this + 4);
        if (v19 < v18)
        {
          *v19 = v16;
          v12 = v19 + 8;
        }

        else
        {
          v20 = *(this + 2);
          v21 = v19 - v20;
          v22 = (v19 - v20) >> 3;
          v23 = v22 + 1;
          if ((v22 + 1) >> 61)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v24 = v18 - v20;
          if (v24 >> 2 > v23)
          {
            v23 = v24 >> 2;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF8)
          {
            v25 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (v25 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v26 = operator new(8 * v25);
          }

          else
          {
            v26 = 0;
          }

          v27 = &v26[8 * v22];
          *v27 = v16;
          v12 = v27 + 8;
          memcpy(v26, v20, v21);
          v4 = this;
          *(this + 2) = v26;
          *(this + 3) = v12;
          *(this + 4) = &v26[8 * v25];
          if (v20)
          {
            operator delete(v20);
            v5 = *(this + 7);
          }
        }

        *(v4 + 3) = v12;
        v13 = (v15 + 3);
        v11 += v13;
        v10 += v13;
      }

      while (v11 < v5);
    }

    v28 = v36 + v37;
    if (v10 != v28)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x77, "buf_ptr", "==", "reinterpret_cast<const char *>(buf) + buf_length", v10, v28);
      return;
    }

    *(v4 + 10) = 0;
    *(v4 + 22) = -1;
    if (v35)
    {
      v29 = *(v4 + 2);
      v30 = *(v4 + 3);
      v39[0] = MEMORY[0x29EDCA5F8];
      v39[1] = 0x40000000;
      v40 = ___ZNK13QMIServiceMsg6getTlvEh_block_invoke;
      v41 = &__block_descriptor_tmp_11_0;
      v42 = 2;
      if (v29 != v30)
      {
        while (((v40)(v39, *v29) & 1) == 0)
        {
          if (++v29 == v30)
          {
            v29 = v30;
            break;
          }
        }

        v30 = *(v4 + 3);
      }

      if (v29 == v30 || (v31 = *v29, *(v31 + 16) = 0, *(v31 + 2) != 4))
      {
        v34 = 3;
      }

      else
      {
        *(v4 + 10) = 0;
        v32 = *(v31 + 8);
        if (!*v32)
        {
          v34 = 0;
          goto LABEL_37;
        }

        v33 = v32[1];
        *(v4 + 22) = v33;
        if (v33)
        {
          return;
        }

        v34 = 4;
      }

      *(v4 + 10) = 1;
LABEL_37:
      *(v4 + 22) = v34;
    }
  }
}

void sub_2962DDE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ATCSCounted *a13)
{
  v14 = *(a13 + 7);
  if (v14)
  {
    *(a13 + 8) = v14;
    operator delete(v14);
    v15 = *(a13 + 2);
    if (!v15)
    {
LABEL_3:
      ATCSCounted::~ATCSCounted(a13);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v15 = *(a13 + 2);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(a13 + 3) = v15;
  operator delete(v15);
  ATCSCounted::~ATCSCounted(a13);
  _Unwind_Resume(a1);
}

void QMIServiceMsg::serialize(QMIServiceMsg *this@<X0>, char **a2@<X8>)
{
  v4 = *(this + 7);
  a2[1] = 0;
  a2[2] = 0;
  v5 = (v4 + 4);
  *a2 = 0;
  if (v4 == -4)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x178, "buffer", "!=", "NULL", 0, 0);
    v7 = 0;
    v6 = 0;
    v4 = *(this + 7);
  }

  else
  {
    v6 = operator new((v4 + 4));
    *a2 = v6;
    v7 = &v6[v5];
    a2[2] = &v6[v5];
    bzero(v6, (v4 + 4));
    a2[1] = &v6[v5];
  }

  *v6 = *(this + 6);
  *(v6 + 1) = v4;
  v8 = v6 + 4;
  v9 = *(this + 2);
  for (i = *(this + 3); v9 != i; v8 = &v13[v12])
  {
    v11 = *v9++;
    v12 = *(v11 + 2);
    *v8 = *v11;
    *(v8 + 1) = v12;
    v13 = v8 + 3;
    memcpy(v8 + 3, *(v11 + 8), v12);
  }

  if (v8 > &v6[v5])
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIServiceMsg.cpp", 0x192, "buffer", "<=", "(uint8_t*)bufferPtr + bufferLen", v8, v7);
  }
}

void sub_2962DE040(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void QMIServiceMsg::~QMIServiceMsg(QMIServiceMsg *this)
{
  *this = &unk_2A1D49040;
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = v4[1];
      if (v5)
      {
        operator delete[](v5);
      }

      operator delete(v4);
    }

    ++v2;
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }

  *this = &unk_2A1D49F00;
  if (atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x29, "atomicAdd(&fRefCount, (int) 0xa5a5a5a5)", "==", "0", atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed), 0);
  }

  operator delete(this);
}

{
  *this = &unk_2A1D49040;
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = v4[1];
      if (v5)
      {
        operator delete[](v5);
      }

      operator delete(v4);
    }

    ++v2;
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }

  *this = &unk_2A1D49F00;
  if (atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x29, "atomicAdd(&fRefCount, (int) 0xa5a5a5a5)", "==", "0", atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed), 0);
  }
}

{
  *this = &unk_2A1D49040;
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = v4[1];
      if (v5)
      {
        operator delete[](v5);
      }

      operator delete(v4);
    }

    ++v2;
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }

  *this = &unk_2A1D49F00;
  if (atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x29, "atomicAdd(&fRefCount, (int) 0xa5a5a5a5)", "==", "0", atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed), 0);
  }
}

uint64_t QMux::State::handleReadData(QMux::State *this, const unsigned __int8 *a2, int a3)
{
  v8 = a2;
  v7 = a3;
  if (a3 < 0)
  {
    return 0;
  }

  v6[0] = &v7;
  v6[1] = this;
  v6[2] = &v8;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_14handleReadDataEPKhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v9[3] = &__block_descriptor_tmp_99;
  v9[4] = this + 8;
  v9[5] = v6;
  v10 = v9;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v17 = -1431655766;
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v14 = &__block_descriptor_tmp_101;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = -1431655766;
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v14 = &__block_descriptor_tmp_100;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17;
}

uint64_t ___ZN19ATCSRouterIPCDriver13handleReceiveEP24mav_router_context_tag_t20mav_router_channel_tPvS3__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 64) + 8 * *(a1 + 64));
  if (result)
  {
    return (*(*result + 16))(result, **(a1 + 48), *(*(a1 + 48) + 8) - **(a1 + 48));
  }

  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_14handleReadDataEPKhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **v1;
  if (!v2)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = *(v1 + 8);
  do
  {
    v3 = QMux::State::handleReadData_sync(v4, (**(v1 + 16) + v3), v2 - v3) + v3;
    v2 = **v1;
  }

  while (v3 < v2);
  return v3;
}

uint64_t ATCSRouterIPCDriver::handleReceive(uint64_t a1, int a2, NSObject *a3)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    __cxa_atexit(std::weak_ptr<ATCSRouterIPCDriver>::~weak_ptr, &qword_2A1899AA0, &dword_2962DD000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  if (qword_2A1899AA8)
  {
    v5 = std::__shared_weak_count::lock(qword_2A1899AA8);
    v27 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = qword_2A1899AA0;
      v26 = qword_2A1899AA0;
      if (!qword_2A1899AA0)
      {
        goto LABEL_27;
      }

      size = dispatch_data_get_size(a3);
      v9 = operator new(0x30uLL);
      v9->__shared_owners_ = 0;
      v9->__shared_weak_owners_ = 0;
      v9->__vftable = &unk_2A1D49EB0;
      v9[1].__vftable = 0;
      v9[1].__shared_owners_ = 0;
      v9[1].__shared_weak_owners_ = 0;
      v10 = size;
      if (size)
      {
        v11 = operator new(size);
        v9[1].__vftable = v11;
        v9[1].__shared_weak_owners_ = v11 + v10;
        bzero(v11, v10);
        v9[1].__shared_owners_ = v11 + v10;
      }

      else
      {
        v11 = 0;
      }

      v24 = &v9[1].__vftable;
      v25 = v9;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2000000000;
      v32[3] = v11;
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x2000000000;
      v31 = -1431655766;
      v23 = 0;
      v31 = dispatch_data_get_size(a3);
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 1107296256;
      applier[2] = ___ZL19mav_buffer_copy_rawPvS_jjPj_block_invoke;
      applier[3] = &__block_descriptor_tmp_20_1;
      v29 = 0;
      applier[4] = v30;
      applier[5] = v32;
      applier[6] = &v23;
      v12 = dispatch_data_apply(a3, applier);
      _Block_object_dispose(v30, 8);
      _Block_object_dispose(v32, 8);
      if (!v12)
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x73, "result", "==", "MAV_BUFFER_SUCCESS", 0x67, 0);
      }

      v13 = *(v7 + 32);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN19ATCSRouterIPCDriver13handleReceiveEP24mav_router_context_tag_t20mav_router_channel_tPvS3__block_invoke;
      block[3] = &__block_descriptor_tmp_7;
      block[4] = v7;
      v19 = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = a2;
      v20 = &v9[1].__vftable;
      v21 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      dispatch_async(v13, block);
      dispatch_release(a3);
      v14 = v21;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v15 = v19;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v25;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v6 = v27;
      if (v27)
      {
LABEL_27:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }
  }

  return 0;
}

void sub_2962DE7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_2962DE804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v23);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_2962DE824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZL19mav_buffer_copy_rawPvS_jjPj_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1 + 56) - a3;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    v7 = v5 < a5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (v6 >= a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = v6;
  }

  memcpy(*(*(*(a1 + 40) + 8) + 24), (a4 + (v5 & ~(v5 >> 31))), v9);
  *(*(*(a1 + 32) + 8) + 24) -= v9;
  v11 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v9;
  *v11 += v9;
  return 1;
}

void *__copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19ATCSRouterIPCDriverEE48c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      if (v6)
      {
        qmi::ClientProxy::State::handleMessage_sync(v6, &object);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  xpc_release(object);
}

void qmi::ClientProxy::State::handleMessage_sync(uint64_t a1, void **a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3002000000;
  v6[3] = __Block_byref_object_copy_;
  v3 = *a2;
  v6[4] = __Block_byref_object_dispose_;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = *(a1 + 24);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v5[2] = ___ZN3qmi11ClientProxy5State18handleMessage_syncERKN3xpc4dictE_block_invoke;
  v5[3] = &__block_descriptor_tmp_14_0;
  v5[4] = v6;
  v5[5] = a1;
  dispatch_async(v4, v5);
  _Block_object_dispose(v6, 8);
  xpc_release(object);
}

void qmi::Client::State::send(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C259C10](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  memset(__p, 170, sizeof(__p));
  QMIServiceMsg::serialize(*(a2 + 8), __p);
  v6 = xpc_data_create(__p[0], __p[1] - __p[0]);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "send_qmi_message", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_int64_create(*(a2 + 16));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, "send_timeout_ms", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = *(a2 + 8);
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = _Block_copy(v11);
    if (*(a2 + 24))
    {
      goto LABEL_13;
    }

LABEL_19:
    v13 = 0;
    add_explicit = atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    if ((add_explicit & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v12 = 0;
  if (!*(a2 + 24))
  {
    goto LABEL_19;
  }

LABEL_13:
  v27 = a1;
  if (*(a1 + 280) == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v13 = *(v27 + 146);
    if (((v13 + 1) & 0xFFFE) != 0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    *(v27 + 146) = v14;
  }

  else
  {
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 0x40000000;
    v29[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi6Client5StateEE20execute_wrapped_syncIZNS3_4sendERNS2_9SendProxyEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    v29[3] = &__block_descriptor_tmp_45;
    v29[4] = a1 + 8;
    v29[5] = &v27;
    v30 = v29;
    v16 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v37 = -21846;
      block = MEMORY[0x29EDCA5F8];
      v32 = 0x40000000;
      v33 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFtvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
      v34 = &__block_descriptor_tmp_47;
      v35 = &v37;
      v36 = &v30;
      dispatch_async_and_wait(v16, &block);
    }

    else
    {
      v37 = -21846;
      block = MEMORY[0x29EDCA5F8];
      v32 = 0x40000000;
      v33 = ___ZN8dispatch9sync_implIRU13block_pointerFtvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
      v34 = &__block_descriptor_tmp_46;
      v35 = &v37;
      v36 = &v30;
      dispatch_sync(v16, &block);
    }

    v13 = v37;
  }

  **(a2 + 24) = v13;
  add_explicit = atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  if (add_explicit < 0)
  {
LABEL_26:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
  }

LABEL_27:
  if (v5)
  {
    xpc_retain(v5);
    v17 = v5;
    if (v12)
    {
      goto LABEL_29;
    }

LABEL_32:
    v18 = 0;
    v19 = *(a1 + 16);
    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v17 = xpc_null_create();
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_29:
  v18 = _Block_copy(v12);
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_41:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_33:
  v20 = *(a1 + 8);
  v21 = std::__shared_weak_count::lock(v19);
  if (!v21)
  {
    goto LABEL_41;
  }

  v22 = v21;
  v23 = operator new(0x28uLL);
  *v23 = a1;
  v23[1] = v17;
  v24 = xpc_null_create();
  v23[2] = v10;
  v23[3] = v18;
  *(v23 + 16) = v13;
  v25 = *(a1 + 24);
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v26 = operator new(0x18uLL);
  *v26 = v23;
  v26[1] = v20;
  v26[2] = v22;
  dispatch_async_f(v25, v26, dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1>(qmi::Client::State::send(qmi::Client::SendProxy &)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1,dispatch_queue_s *::default_delete<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  xpc_release(v24);
  if (v12)
  {
    _Block_release(v12);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  xpc_release(v5);
}

void sub_2962DEF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v11)
  {
    _Block_release(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  xpc_release(v10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::Client::State>::execute_wrapped<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1>(qmi::Client::State::send(qmi::Client::SendProxy &)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1,dispatch_queue_s *::default_delete<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v2 + 16))
  {
    qmi::Client::State::send_sync(v3, v2 + 1, *(v2 + 16), v2[2], v2 + 3);
  }

  else
  {
    v4 = *(v3 + 146);
    if (((v4 + 1) & 0xFFFE) != 0)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 1;
    }

    *(v3 + 146) = v5;
    qmi::Client::State::send_sync(v3, v2 + 1, v4, v2[2], v2 + 3);
  }

  v6 = v2[2];
  add = atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
  if (add <= 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
  }

  else
  {
    if (v6)
    {
      v8 = add == 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v9 = v2[3];
  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = a1;
  }

  else
  {
    v11 = a1;
  }

  operator delete(v11);
}

void sub_2962DF144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1,std::default_delete<qmi::Client::State::send(qmi::Client::SendProxy &)::$_1>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void qmi::Client::State::send_sync(void *a1, xpc_object_t *a2, int a3, uint64_t a4, const void **a5)
{
  v10 = xpc_int64_create(a3);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "txid", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  if ((*(*a1 + 48))(a1, a2))
  {
    if (!*a5)
    {
      return;
    }

    v46 = a4;
    v12 = _Block_copy(*a5);
    add_explicit = atomic_fetch_add_explicit((a4 + 8), 1u, memory_order_relaxed);
    if (add_explicit < 0)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
    }

    v15 = a1[20];
    v14 = a1[21];
    if (v15 < v14)
    {
      *v15 = a3;
      *(v15 + 8) = a4;
      if (v12)
      {
        v16 = _Block_copy(v12);
        v17 = *(v15 + 8);
        *(v15 + 16) = v16;
        if (!v17)
        {
          goto LABEL_26;
        }

        v18 = atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        *(v15 + 16) = 0;
        v18 = atomic_fetch_add_explicit((a4 + 8), 1u, memory_order_relaxed);
        if ((v18 & 0x80000000) == 0)
        {
LABEL_26:
          a1[20] = v15 + 24;
LABEL_55:
          add = atomic_fetch_add((a4 + 8), 0xFFFFFFFF);
          if (add <= 0)
          {
            _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
          }

          else if (add == 1)
          {
            (*(*a4 + 8))(a4);
          }

LABEL_59:
          if (v12)
          {
            _Block_release(v12);
          }

          return;
        }
      }

      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", v18, 0);
      goto LABEL_26;
    }

    v21 = a1[19];
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v21) >> 3);
    if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v21) >> 3);
    v24 = 2 * v23;
    if (2 * v23 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    if (v23 >= 0x555555555555555)
    {
      v25 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      if (v25 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v26 = operator new(24 * v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = &v26[24 * v22];
    v28 = &v26[24 * v25];
    *v27 = a3;
    *(v27 + 1) = a4;
    if (v12)
    {
      v29 = _Block_copy(v12);
      v30 = *(v27 + 1);
      *(v27 + 2) = v29;
      if (!v30 || (v31 = atomic_fetch_add_explicit((v30 + 8), 1u, memory_order_relaxed), (v31 & 0x80000000) == 0))
      {
LABEL_34:
        v32 = v27 + 24;
        v33 = a1[19];
        v34 = a1[20];
        v35 = &v27[v33 - v34];
        v47 = v35;
        if (v33 != v34)
        {
          v45 = &v27[v33 - v34];
          v36 = v45;
          v37 = a1[19];
          do
          {
            *v36 = *v37;
            v39 = *(v37 + 1);
            v38 = *(v37 + 2);
            *(v36 + 1) = v39;
            if (v38)
            {
              v38 = _Block_copy(v38);
              v39 = *(v36 + 1);
            }

            *(v36 + 2) = v38;
            if (v39)
            {
              v40 = atomic_fetch_add_explicit((v39 + 8), 1u, memory_order_relaxed);
              if (v40 < 0)
              {
                _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", v40, 0);
              }
            }

            v37 += 24;
            v36 = v47 + 24;
            v47 += 24;
          }

          while (v37 != v34);
          do
          {
            v41 = *(v33 + 1);
            if (v41)
            {
              v42 = atomic_fetch_add(v41 + 2, 0xFFFFFFFF);
              if (v42 <= 0)
              {
                _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", v42, 0);
              }

              else if (v42 == 1)
              {
                (*(*v41 + 8))(v41);
              }
            }

            v43 = *(v33 + 2);
            if (v43)
            {
              _Block_release(v43);
            }

            v33 += 24;
          }

          while (v33 != v34);
          v33 = a1[19];
          v32 = v27 + 24;
          v35 = v45;
        }

        a1[19] = v35;
        a1[20] = v32;
        a1[21] = v28;
        if (v33)
        {
          operator delete(v33);
        }

        a4 = v46;
        a1[20] = v32;
        if (!v46)
        {
          goto LABEL_59;
        }

        goto LABEL_55;
      }
    }

    else
    {
      *(v27 + 2) = 0;
      v31 = atomic_fetch_add_explicit((a4 + 8), 1u, memory_order_relaxed);
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", v31, 0);
    goto LABEL_34;
  }

  v19 = *(a4 + 12);
  v20 = operator new(0x58uLL);
  *(v20 + 2) = 0;
  *v20 = &unk_2A1D49040;
  *(v20 + 6) = v19;
  *(v20 + 14) = 0;
  *(v20 + 30) = 0;
  *(v20 + 22) = 0;
  *(v20 + 19) = 0;
  *(v20 + 10) = 1;
  *(v20 + 22) = 5;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;

  qmi::Client::State::postResponseToClient_sync(a1, v20, a5);
}

void sub_2962DF700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v5 = *(v3 + 16);
  if (v5)
  {
    _Block_release(v5);
  }

  std::__split_buffer<qmi::Client::State::Transaction>::~__split_buffer(va1);
  qmi::Client::State::Transaction::~Transaction(va);
  _Unwind_Resume(a1);
}

BOOL qmi::Client::LocalState::sendOrQueue_sync(uint64_t a1, void **a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v40 = 0;
  v41 = 0;
  v4 = *(a1 + 360);
  if (!v4 || (v41 = std::__shared_weak_count::lock(v4)) == 0 || (v5 = *(a1 + 352), (v40 = v5) == 0))
  {
    v12 = *(a1 + 40);
    v13 = 0;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    v14 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v14 = *v14;
    }

    v15 = MEMORY[0x29C259B40](*a2);
    memset(__dst, 170, sizeof(__dst));
    v16 = strlen(v15);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      if ((v16 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v16 | 7) + 1;
      }

      v18 = operator new(v19);
      __dst[1] = v17;
      __dst[2] = (v19 | 0x8000000000000000);
      __dst[0] = v18;
    }

    else
    {
      HIBYTE(__dst[2]) = v16;
      v18 = __dst;
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    memcpy(v18, v15, v17);
LABEL_24:
    *(v17 + v18) = 0;
    free(v15);
    v20 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v20 = __dst[0];
    }

    *buf = 136315394;
    v43 = v14;
    v44 = 2080;
    v45 = v20;
    _os_log_impl(&dword_2962DD000, v12, OS_LOG_TYPE_DEFAULT, "#E [%s] ****** Client message DROPPED (not queued) because of invalid local connection. Message: %s", buf, 0x16u);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    v13 = 0;
    goto LABEL_63;
  }

  v6 = *(v5 + 112);
  v37 = 0;
  v38 = 0;
  v7 = *(a1 + 328);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    v38 = v8;
    if (v8)
    {
      v9 = *(a1 + 320);
      v37 = v9;
      if (v6 && v9 != 0)
      {
        v11 = *a2;
        object = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          object = xpc_null_create();
        }

        v32 = *(v9 + 24);
        if (!v32)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v32 + 48))(v32, &object);
        xpc_release(object);
        object = 0;
        v13 = 1;
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v21 = *(a1 + 368);
  v13 = v21 != 0;
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22 >= *(v21 + 24))
    {
      *(v21 + 16) = std::vector<xpc::dict>::__emplace_back_slow_path<xpc::dict const&>((v21 + 8), *a2);
      if (!v8)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = *a2;
      *v22 = *a2;
      if (v23)
      {
        xpc_retain(v23);
        *(v21 + 16) = v22 + 1;
        if (!v8)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *v22 = xpc_null_create();
        *(v21 + 16) = v22 + 1;
        if (!v8)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_43;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v25 = *v25;
    }

    v26 = MEMORY[0x29C259B40](*a2);
    memset(__dst, 170, sizeof(__dst));
    v27 = strlen(v26);
    if (v27 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v28 = v27;
    if (v27 >= 0x17)
    {
      if ((v27 | 7) == 0x17)
      {
        v30 = 25;
      }

      else
      {
        v30 = (v27 | 7) + 1;
      }

      v29 = operator new(v30);
      __dst[1] = v28;
      __dst[2] = (v30 | 0x8000000000000000);
      __dst[0] = v29;
    }

    else
    {
      HIBYTE(__dst[2]) = v27;
      v29 = __dst;
      if (!v27)
      {
        goto LABEL_52;
      }
    }

    memcpy(v29, v26, v28);
LABEL_52:
    *(v28 + v29) = 0;
    free(v26);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v31 = __dst[0];
    }

    *buf = 136315394;
    v43 = v25;
    v44 = 2080;
    v45 = v31;
    _os_log_impl(&dword_2962DD000, v24, OS_LOG_TYPE_DEFAULT, "#E [%s] ****** Client message DROPPED because local connect message not yet sent. Message: %s", buf, 0x16u);
    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    v8 = v38;
  }

  if (!v8)
  {
    goto LABEL_63;
  }

LABEL_43:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_62:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_63:
  v33 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v34 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_2962DFC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

void qmi::ClientProxy::State::handleMessage(uint64_t a1, xpc_object_t *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  xint = xpc_null_create();
  value = xpc_dictionary_get_value(*a2, "sim");
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    v6 = v5;
  }

  else
  {
    v6 = xpc_null_create();
  }

  v7 = xint;
  xint = v6;
  v8 = MEMORY[0x29C259C10]();
  xpc_release(v7);
  v9 = MEMORY[0x29EDCAA40];
  if (v8 != MEMORY[0x29EDCAA40])
  {
    v10 = xpc::dyn_cast_or_default();
    v11 = *(a1 + 40);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 - 1 > 1)
    {
      if (v12)
      {
        v15 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v15 = *v15;
        }

        *buf = 136315394;
        v65 = v15;
        v66 = 1024;
        v67 = v10;
        _os_log_impl(&dword_2962DD000, v11, OS_LOG_TYPE_DEFAULT, "#E [%s]: SimSlot not changed due to illegal value of %d", buf, 0x12u);
      }
    }

    else
    {
      if (v12)
      {
        v13 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v13 = *v13;
        }

        v14 = *(a1 + 184);
        *buf = 136315650;
        v65 = v13;
        v66 = 1024;
        v67 = v14;
        v68 = 1024;
        v69 = v10;
        _os_log_impl(&dword_2962DD000, v11, OS_LOG_TYPE_DEFAULT, "#I [%s]: Changing sim slot from %d to %d", buf, 0x18u);
      }

      *(a1 + 184) = v10;
    }
  }

  v16 = xpc_dictionary_get_value(*a2, "send_qmi_message");
  if (v16)
  {
    v17 = v16;
    xpc_retain(v16);
    v18 = v17;
  }

  else
  {
    v18 = xpc_null_create();
  }

  v19 = xint;
  xint = v18;
  v20 = MEMORY[0x29C259C10]();
  xpc_release(v19);
  if (v20 == v9)
  {
    v22 = xpc_dictionary_get_value(*a2, "low_power");
    if (v22)
    {
      v23 = v22;
      xpc_retain(v22);
      v24 = v23;
    }

    else
    {
      v24 = xpc_null_create();
    }

    v25 = xint;
    xint = v24;
    v26 = MEMORY[0x29C259C10]();
    xpc_release(v25);
    if (v26 != v9)
    {
      v27 = *(a1 + 81);
      *(a1 + 81) = xpc::dyn_cast_or_default();
    }

    v28 = xpc_dictionary_get_value(*a2, "low_power_reply");
    if (v28)
    {
      v29 = v28;
      xpc_retain(v28);
      v30 = v29;
    }

    else
    {
      v30 = xpc_null_create();
    }

    v31 = xint;
    xint = v30;
    v32 = MEMORY[0x29C259C10]();
    xpc_release(v31);
    if (v32 != v9 && *(a1 + 76) == 4)
    {
      *(a1 + 76) = 5;
      qmi::ClientProxy::State::checkIfLowPower_sync(a1);
    }

    v33 = xpc_dictionary_get_value(*a2, "exit_low_power");
    if (v33)
    {
      v34 = v33;
      xpc_retain(v33);
      v35 = v34;
    }

    else
    {
      v35 = xpc_null_create();
    }

    v36 = xint;
    xint = v35;
    v37 = MEMORY[0x29C259C10]();
    xpc_release(v36);
    if (v37 != v9)
    {
      v38 = *(a1 + 80);
      *(a1 + 80) = xpc::dyn_cast_or_default();
    }

    v39 = xpc_dictionary_get_value(*a2, "status");
    if (v39)
    {
      v40 = v39;
      xpc_retain(v39);
      v41 = v40;
    }

    else
    {
      v41 = xpc_null_create();
    }

    v42 = xint;
    xint = v41;
    v43 = MEMORY[0x29C259C10]();
    xpc_release(v42);
    if (v43 != v9)
    {
      v44 = xpc_int64_get_value(xint);
      qmi::ClientProxy::State::handleStatus_sync(a1, v44);
    }

    v45 = xpc_dictionary_get_value(*a2, "send_window");
    if (v45)
    {
      v46 = v45;
      xpc_retain(v45);
      v47 = v46;
    }

    else
    {
      v47 = xpc_null_create();
    }

    v48 = xint;
    xint = v47;
    v49 = MEMORY[0x29C259C10]();
    xpc_release(v48);
    if (v49 != v9)
    {
      v50 = xpc::dyn_cast_or_default();
      v51 = *(a1 + 40);
      v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
      if ((v50 - 1) > 4)
      {
        if (v52)
        {
          v55 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v55 = *v55;
          }

          *buf = 136315394;
          v65 = v55;
          v66 = 1024;
          v67 = v50;
          _os_log_impl(&dword_2962DD000, v51, OS_LOG_TYPE_DEFAULT, "#E [%s]: Send window not changed due to illegal value of %d", buf, 0x12u);
        }
      }

      else
      {
        if (v52)
        {
          v53 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v53 = *v53;
          }

          v54 = *(a1 + 84);
          *buf = 136315650;
          v65 = v53;
          v66 = 1024;
          v67 = v54;
          v68 = 1024;
          v69 = v50;
          _os_log_impl(&dword_2962DD000, v51, OS_LOG_TYPE_DEFAULT, "#I [%s]: Changing send window from %d to %d", buf, 0x18u);
        }

        *(a1 + 84) = v50;
      }
    }

    v56 = xpc_dictionary_get_value(*a2, "remote_log_bytes");
    if (v56)
    {
      v57 = v56;
      xpc_retain(v56);
      v58 = v57;
    }

    else
    {
      v58 = xpc_null_create();
    }

    v59 = xint;
    xint = v58;
    v60 = MEMORY[0x29C259C10]();
    xpc_release(v59);
    if (v60 != v9)
    {
      v61 = xpc::dyn_cast_or_default();
      (*(*a1 + 72))(a1, v61);
    }

    qmi::ClientProxy::State::handleIndWakeChange_sync(a1, a2);
  }

  else
  {
    v21 = *(a1 + 76);
    if (v21 <= 7)
    {
      if (((1 << v21) & 0xF1) != 0)
      {
        qmi::ClientProxy::State::handleSend_sync(a1, a2, &xint);
      }

      else
      {
        qmi::ClientProxy::State::handleSendNotReady_sync(a1, a2);
      }
    }
  }

  xpc_release(xint);
  v62 = *MEMORY[0x29EDCA608];
}

void qmi::ClientProxy::State::handleSend_sync(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  xpc_data_get_bytes_ptr(*a3);
  xpc_data_get_length(*a3);
  v6 = *(a1 + 72);
  qmi::createRequest();
  v8 = *object;
  v7 = *&object[8];
  value = xpc_dictionary_get_value(*a2, "txid");
  *object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *object = xpc_null_create();
  }

  v10 = xpc::dyn_cast_or_default();
  xpc_release(*object);
  *(v8 + 26) = v10;
  v11 = xpc_dictionary_get_value(*a2, "send_timeout_ms");
  *object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *object = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default();
  xpc_release(*object);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  v15 = *(a1 + 144);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 16 * (v14 - v15) - 1;
  }

  v17 = *(a1 + 176);
  v18 = v17 + *(a1 + 168);
  if (v16 == v18)
  {
    std::deque<qmi::ClientProxy::State::Transaction>::__add_back_capacity(a1 + 136);
    v15 = *(a1 + 144);
    v17 = *(a1 + 176);
    v18 = v17 + *(a1 + 168);
  }

  v19 = *(v15 + ((v18 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v18 & 0x7F);
  *v19 = v12;
  *(v19 + 8) = 0;
  *(v19 + 16) = v8;
  *(v19 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *(a1 + 176);
  }

  *(a1 + 176) = v17 + 1;
  qmi::ClientProxy::State::sendIfPossible_sync(a1);
  v20 = *(a1 + 176);
  if (!v20 || (v21 = *(a1 + 40), !os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG)))
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v23 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v23 = *v23;
  }

  v24 = *(a1 + 72);
  v25 = *(v8 + 26);
  v26 = *(v8 + 24);
  *object = 136316162;
  *&object[4] = v23;
  *&object[12] = 1024;
  *&object[14] = v24;
  v28 = 1024;
  v29 = v25;
  v30 = 1024;
  v31 = v26;
  v32 = 2048;
  v33 = v20;
  _os_log_debug_impl(&dword_2962DD000, v21, OS_LOG_TYPE_DEBUG, "#D [%s]: Message pended for svc=0x%x (txid=%u, msgId=0x%04x); pending=%zu", object, 0x28u);
  if (v7)
  {
LABEL_17:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_19:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_2962E0658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMux::State::handleReadData_sync(QMux::State *this, const unsigned __int8 *a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(this + 52);
  if (v4 == 5)
  {
    goto LABEL_22;
  }

  if (v4)
  {
    v12 = qmi::parse();
    if ((v12 & 0x80000000) != 0)
    {
      v16 = *(this + 5);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = (this + 48);
        if (*(this + 71) < 0)
        {
          v22 = *v22;
        }

        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 1024;
        *&buf[14] = a3;
        _os_log_error_impl(&dword_2962DD000, v16, OS_LOG_TYPE_ERROR, "[%s] Irrecoverable parsing error (available=%d), resetting QMux", buf, 0x12u);
      }

      *buf = operator new(0x20uLL);
      *&buf[8] = xmmword_296336A60;
      strcpy(*buf, "Irrecoverable parsing error");
      QMux::State::invokeReset_sync(this, buf);
    }

    else
    {
      if (v12)
      {
        if (v12 < a3)
        {
          v13 = v12;
          v14 = *(this + 5);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            a3 = v13;
            v21 = *MEMORY[0x29EDCA608];
            return a3;
          }

          v15 = (this + 48);
          if (*(this + 71) < 0)
          {
            v15 = *v15;
          }

          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          v8 = "#I [%s] More bytes in the buffer, expecting %d, but %d available; continuing";
          a3 = v13;
          v9 = v14;
          v10 = 24;
          goto LABEL_7;
        }

        a3 = v12;
LABEL_22:
        v19 = *MEMORY[0x29EDCA608];
        return a3;
      }

      v17 = *(this + 5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v23 = (this + 48);
        if (*(this + 71) < 0)
        {
          v23 = *v23;
        }

        *buf = 136315650;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = 8;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        _os_log_error_impl(&dword_2962DD000, v17, OS_LOG_TYPE_ERROR, "[%s] Not enough bytes for even the header (needs at least %u bytes), only %u available", buf, 0x18u);
      }

      *buf = operator new(0x40uLL);
      *&buf[8] = xmmword_296336A50;
      strcpy(*buf, "QMux read parsing error: buffer underrun for incomplete frame");
      QMux::State::invokeReset_sync(this, buf);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      v18 = *MEMORY[0x29EDCA608];
      return a3;
    }

    goto LABEL_22;
  }

  v6 = *(this + 5);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_22;
  }

  v7 = (this + 48);
  if (*(this + 71) < 0)
  {
    v7 = *v7;
  }

  *buf = 136315394;
  *&buf[4] = v7;
  *&buf[12] = 1024;
  *&buf[14] = a3;
  v8 = "#I [%s] QMux is kStopped; dropping incoming %u bytes";
  v9 = v6;
  v10 = 18;
LABEL_7:
  _os_log_impl(&dword_2962DD000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
  v11 = *MEMORY[0x29EDCA608];
  return a3;
}

void sub_2962E0A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4QMux5State19handleReadData_syncEPKhj_block_invoke(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  v39 = *MEMORY[0x29EDCA608];
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 32);
  v6 = *a2;
  if (v6 != 1)
  {
    v15 = *(v5 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = (v5 + 48);
      if (*(v5 + 71) < 0)
      {
        v25 = *v25;
      }

      v26 = *(a1 + 48);
      *buf = 136315650;
      v34 = v25;
      v35 = 1024;
      v36 = v6;
      v37 = 1024;
      v38 = v26;
      _os_log_error_impl(&dword_2962DD000, v15, OS_LOG_TYPE_ERROR, "[%s] Invalid interface type byte (got 0x%02x, available=%d); stream is corrupt; resetting QMux", buf, 0x18u);
    }

    v16 = operator new(0x28uLL);
    v31 = v16;
    v32 = xmmword_296336A70;
    strcpy(v16, "QMux read parsing error: bad I/F type");
    QMux::State::invokeReset(v5, &v31);
    goto LABEL_13;
  }

  v7 = a2[4];
  if (v7 != 128)
  {
    v18 = *(v5 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = (v5 + 48);
      if (*(v5 + 71) < 0)
      {
        v27 = *v27;
      }

      v28 = *(a1 + 48);
      *buf = 136315650;
      v34 = v27;
      v35 = 1024;
      v36 = v7;
      v37 = 1024;
      v38 = v28;
      _os_log_error_impl(&dword_2962DD000, v18, OS_LOG_TYPE_ERROR, "[%s] Invalid control flags (got 0x%02x, available=%d); stream is corrupt; resetting QMux", buf, 0x18u);
    }

    v16 = operator new(0x30uLL);
    v29 = v16;
    v30 = xmmword_296336A80;
    strcpy(v16, "QMux read parsing error: bad control flags");
    QMux::State::invokeReset(v5, &v29);
LABEL_13:
    operator delete(v16);
LABEL_14:
    v19 = *MEMORY[0x29EDCA608];
    return;
  }

  if (a5 < a4)
  {
    v8 = *(v5 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = (v5 + 48);
      if (*(v5 + 71) < 0)
      {
        v11 = *v11;
      }

      v12 = *(a2 + 1) + 1;
      v13 = *(a1 + 48);
      *buf = 136315650;
      v34 = v11;
      v35 = 1024;
      v36 = v12;
      v37 = 1024;
      v38 = v13;
      _os_log_error_impl(&dword_2962DD000, v8, OS_LOG_TYPE_ERROR, "[%s] Not enough bytes in the buffer: expecting %d, only %d available", buf, 0x18u);
    }

    goto LABEL_14;
  }

  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *MEMORY[0x29EDCA608];
  v24 = *(a1 + 32);

  QMux::State::handleMessage_sync(v24, a2, v21, v22, a3, a4);
}

void QMux::State::handleMessage_sync(uint64_t a1, uint64_t a2, const void *a3, size_t a4, unsigned __int16 *a5, unint64_t a6)
{
  v88 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) == 1)
  {
    if (!atomic_fetch_add((a1 + 352), 0xFFFFFFFF))
    {
      atomic_store(0, (a1 + 352));
    }

    v12 = *(a1 + 176);
    if (v12 && *(a1 + 352) < *(a1 + 344))
    {
      (*(*v12 + 56))(v12, a1, *(a1 + 200));
    }
  }

  v13 = *(a2 + 6);
  if (v13 != 255)
  {
    if (a6 < 2)
    {
      v15 = 0;
      v16 = *(a2 + 5);
      v17 = a1 + 112;
      v18 = *(a1 + 112);
      if (!v18)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v15 = *a5;
      v16 = *(a2 + 5);
      v17 = a1 + 112;
      v18 = *(a1 + 112);
      if (!v18)
      {
LABEL_49:
        v39 = *(a2 + 8);
        if (v39 == 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2 * (v39 != 0);
        }

        sLogBinaryToOsLog(*(a1 + 40), *(a1 + 192), v40, v16, v15, 0, a3, a4);
        v41 = *(a1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v48 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v48 = *v48;
          }

          v49 = *(a2 + 5);
          v50 = *(a2 + 6);
          v51 = *(a2 + 12);
          *buf = 136316162;
          v81 = v48;
          v82 = 1024;
          *v83 = v49;
          *&v83[4] = 1024;
          *&v83[6] = v50;
          LOWORD(v84) = 1024;
          *(&v84 + 2) = v51;
          WORD3(v84) = 1024;
          DWORD2(v84) = v15;
          _os_log_error_impl(&dword_2962DD000, v41, OS_LOG_TYPE_ERROR, "[%s] handleReadData: Cannot find QMI client, dropping (svc=%d client=%d txid=%d msgid=0x%x)", buf, 0x24u);
        }

        goto LABEL_53;
      }
    }

    v19 = v17;
    do
    {
      v22 = *(v18 + 32);
      v23 = v22 == v16;
      if (v22 >= v16)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v23)
      {
        v25 = *(v18 + 33);
        v26 = v25 == v13;
        v24 = v25 >= v13 ? 1 : -1;
        if (v26)
        {
          v24 = 0;
        }
      }

      v20 = v24 & 0x80;
      v23 = v20 == 0;
      v21 = v20 >> 4;
      if (v23)
      {
        v19 = v18;
      }

      v18 = *(v18 + v21);
    }

    while (v18);
    if (v19 == v17)
    {
      goto LABEL_49;
    }

    v27 = *(v19 + 32);
    v28 = v16 == v27;
    if (v16 >= v27)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    if (v28)
    {
      v30 = *(v19 + 33);
      v31 = v13 >= v30;
      v32 = v13 == v30;
      v33 = -1;
      if (v31)
      {
        v33 = 1;
      }

      if (v32)
      {
        v29 = 0;
      }

      else
      {
        v29 = v33;
      }
    }

    if (v29 < 0)
    {
      goto LABEL_49;
    }

    v34 = *(v19 + 48);
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      v36 = v35;
      if (v35)
      {
        v37 = *(v19 + 40);
        if (v37)
        {
          v77 = (*(*v37 + 104))(v37);
          v79 = v36;
          v38 = *(a1 + 192);
          if (v38 < 2 || *(v37 + 40) < 2)
          {
            goto LABEL_73;
          }

          goto LABEL_65;
        }

        v38 = *(a1 + 192);
        if (v38 > 1)
        {
          v79 = v35;
          v77 = 0;
LABEL_65:
          v52 = *(v37 + 36);
          v53 = *(a2 + 8);
          if (v53 == 1)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2 * (v53 != 0);
          }

          sLogBinaryToOsLog(*(a1 + 40), v38, v54, *(a2 + 5), v15, v77, a3, a4);
          if (a4 > v52)
          {
            v55 = *(a1 + 40);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v56 = (a1 + 48);
              if (*(a1 + 71) < 0)
              {
                v56 = *v56;
              }

              v57 = *(a2 + 5);
              v58 = *(a2 + 6);
              *buf = 136316162;
              v81 = v56;
              v82 = 2048;
              *v83 = a4;
              *&v83[8] = 2048;
              *&v84 = v52;
              WORD4(v84) = 1024;
              *(&v84 + 10) = v57;
              HIWORD(v84) = 1024;
              *v85 = v58;
              _os_log_impl(&dword_2962DD000, v55, OS_LOG_TYPE_DEFAULT, "#I [%s] recv: Truncated binary from %zd bytes to %zu bytes for QMI client(svc=%d client=%d)", buf, 0x2Cu);
            }
          }

LABEL_73:
          v78 = v37;
          if (*(a1 + 208) == 4)
          {
            v59 = *(a2 + 5);
            if (*(a2 + 5) || v15 != 42)
            {
              v60 = *(a1 + 288);
              if (v60)
              {
                while (1)
                {
                  v62 = v60;
                  v63 = *(v60 + 26);
                  if (v59 == v63)
                  {
                    v64 = *(v62 + 28);
                    if (v15 >= v64)
                    {
                      v65 = v64 == v15;
                      if (v64 >= v15)
                      {
                        v66 = 1;
                      }

                      else
                      {
                        v66 = -1;
                      }

                      if (v65)
                      {
                        v66 = 0;
                      }

                      goto LABEL_91;
                    }

LABEL_78:
                    v60 = *v62;
                    v61 = v62;
                    if (!*v62)
                    {
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    if (v59 < v63)
                    {
                      goto LABEL_78;
                    }

                    if (v63 >= v59)
                    {
                      v66 = 1;
                    }

                    else
                    {
                      v66 = -1;
                    }

LABEL_91:
                    if ((v66 & 0x80) == 0)
                    {
                      goto LABEL_98;
                    }

                    v60 = *(v62 + 8);
                    if (!v60)
                    {
                      v61 = (v62 + 8);
                      goto LABEL_95;
                    }
                  }
                }
              }

              v61 = (a1 + 288);
              v62 = a1 + 288;
LABEL_95:
              v67 = operator new(0x20uLL);
              *(v67 + 26) = v59 | (v15 << 16) | 0xAA00;
              *v67 = 0;
              *(v67 + 1) = 0;
              *(v67 + 2) = v62;
              *v61 = v67;
              v68 = **(a1 + 280);
              if (v68)
              {
                *(a1 + 280) = v68;
              }

              std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 288), v67);
              ++*(a1 + 296);
            }
          }

LABEL_98:
          v69 = *(a2 + 8);
          if (v69 == 2)
          {
            (*(*v78 + 40))(v78, a5, a6);
            v36 = v79;
            if (*(a1 + 312) == *(a1 + 320) && QMIControl::getPowerModeForMsg_sync(*(a1 + 72), *(a2 + 5), v15) == 1)
            {
              v70 = mach_absolute_time();
              QMIWakeReason::set(a1 + 312, a3, a4, v70);
            }
          }

          else
          {
            v36 = v79;
            if (v69 == 1)
            {
              (*(*v78 + 32))(v78, *(a2 + 12), a5, a6);
            }

            else
            {
              v71 = *(a1 + 40);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                v72 = (a1 + 48);
                if (*(a1 + 71) < 0)
                {
                  v72 = *v72;
                }

                v73 = qmi::asString();
                v74 = *(a2 + 5);
                v75 = *(a2 + 6);
                v76 = *(a2 + 12);
                *buf = 136316674;
                v81 = v72;
                v82 = 2080;
                *v83 = v73;
                *&v83[8] = 1024;
                LODWORD(v84) = v74;
                WORD2(v84) = 1024;
                *(&v84 + 6) = v75;
                WORD5(v84) = 1024;
                HIDWORD(v84) = v76;
                *v85 = 1024;
                *&v85[2] = v15;
                v86 = 256;
                v87 = v77;
                _os_log_error_impl(&dword_2962DD000, v71, OS_LOG_TYPE_ERROR, "[%s] handleReadData: Unknown message type %s; dropping (svc=%d client=%d txid=%d msgid=0x%x sim=%hhu)", buf, 0x31u);
                if (!v79)
                {
                  goto LABEL_53;
                }

                goto LABEL_106;
              }
            }
          }

          goto LABEL_105;
        }
      }
    }

    else
    {
      v36 = 0;
    }

    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v44 = *v44;
      }

      v45 = *(a2 + 5);
      v46 = *(a2 + 6);
      v47 = *(a2 + 12);
      *buf = 136316162;
      v81 = v44;
      v82 = 1024;
      *v83 = v45;
      *&v83[4] = 1024;
      *&v83[6] = v46;
      LOWORD(v84) = 1024;
      *(&v84 + 2) = v47;
      WORD3(v84) = 1024;
      DWORD2(v84) = v15;
      _os_log_impl(&dword_2962DD000, v43, OS_LOG_TYPE_DEFAULT, "#I [%s] handleReadData: Client did exist, but is now dead; dropping (svc=%d client=%d txid=%d msgid=0x%x)", buf, 0x24u);
      if (!v36)
      {
        goto LABEL_53;
      }

      goto LABEL_106;
    }

LABEL_105:
    if (!v36)
    {
LABEL_53:
      v42 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_106:
    if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
    }

    goto LABEL_53;
  }

  v14 = *MEMORY[0x29EDCA608];

  QMux::State::handleBroadcastMessage_sync(a1, a2, a3, a4, a5, a6);
}

void sub_2962E14C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962E14DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962E14F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962E1504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sLogBinaryToOsLog(capabilities::ct *a1, int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  *&v59[7] = *MEMORY[0x29EDCA608];
  if (a2 < 2)
  {
    goto LABEL_13;
  }

  if (!capabilities::ct::supportsGemini(a1))
  {
    a6 = 0;
  }

  switch(a4)
  {
    case 0:
    case 2:
    case 4:
    case 8:
    case 9:
    case 10:
    case 12:
    case 26:
    case 34:
    case 36:
    case 40:
    case 42:
    case 43:
    case 44:
    case 48:
    case 82:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 234:
    case 237:
      goto LABEL_5;
    case 1:
      if ((a3 != 2 || a5 != 1) && (a3 || a5 != 32))
      {
        v27 = a3 == 2 && a5 == 34;
        v28 = v27;
        v29 = a5 == 32 && a3 == 1;
        if (!v29 && !v28)
        {
          v30 = a5 == 45 || a5 == 107;
          v31 = !v30 || a3 >= 2;
          v32 = !v31;
          if (a5 != 198 || a3 != 2)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_85;
    case 3:
      if (a3 != 2 || a5 != 81)
      {
        goto LABEL_5;
      }

      goto LABEL_85;
    case 5:
      if (a3)
      {
        v24 = 0;
      }

      else
      {
        v24 = a5 == 32;
      }

      v25 = v24;
      v26 = a5 == 1 && a3 == 2;
      if (v26 || (v25 & 1) != 0)
      {
        goto LABEL_64;
      }

      goto LABEL_5;
    case 11:
      if (a3 > 1 || a5 != 52)
      {
        goto LABEL_5;
      }

      goto LABEL_64;
    case 225:
      if (a3 == 2 && a5 == 45)
      {
        goto LABEL_85;
      }

      v39 = a3 != 2 || (a5 - 53) >= 3;
      v32 = !v39;
      if (a5 == 51 && a3 == 0)
      {
        goto LABEL_85;
      }

LABEL_84:
      if (!v32)
      {
        goto LABEL_5;
      }

LABEL_85:
      v41 = os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
      if (a6)
      {
        if (!v41)
        {
          goto LABEL_13;
        }

        v42 = qmi::asShortString();
        v43 = off_29EE318A0[a3];
        v48 = 67110658;
        v49 = a4;
        v50 = 2080;
        v51 = v42;
        v52 = 2080;
        v53 = v43;
        v54 = 1024;
        v55 = a5;
        v56 = 1024;
        v57 = a6;
        v58 = 1040;
        *v59 = a8;
        v59[2] = 2098;
        *&v59[3] = a7;
        v18 = "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x Sim=%d Bin=[%{public,libTelephonyDecoder:QMI}.*P]";
        goto LABEL_8;
      }

      if (!v41)
      {
        goto LABEL_13;
      }

      v44 = qmi::asShortString();
      v45 = off_29EE318A0[a3];
      v48 = 67110402;
      v49 = a4;
      v50 = 2080;
      v51 = v44;
      v52 = 2080;
      v53 = v45;
      v54 = 1024;
      v55 = a5;
      v56 = 1040;
      v57 = a8;
      v58 = 2098;
      *v59 = a7;
      v18 = "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x Bin=[%{public,libTelephonyDecoder:QMI}.*P]";
      goto LABEL_11;
    case 226:
      if (a3 != 1 || a5 != 53268)
      {
        goto LABEL_5;
      }

      goto LABEL_64;
    case 233:
      if (a3 != 1 || (a5 & 0xFFFE) != 0xD00C)
      {
LABEL_5:
        v15 = os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
        if (a6)
        {
          if (!v15)
          {
            goto LABEL_13;
          }

          v16 = qmi::asShortString();
          v17 = off_29EE318A0[a3];
          v48 = 67110658;
          v49 = a4;
          v50 = 2080;
          v51 = v16;
          v52 = 2080;
          v53 = v17;
          v54 = 1024;
          v55 = a5;
          v56 = 1024;
          v57 = a6;
          v58 = 1040;
          *v59 = a8;
          v59[2] = 2096;
          *&v59[3] = a7;
          v18 = "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x Sim=%d Bin=[%{libTelephonyDecoder:QMI}.*P]";
          goto LABEL_8;
        }

        if (!v15)
        {
          goto LABEL_13;
        }

        v21 = qmi::asShortString();
        v22 = off_29EE318A0[a3];
        v48 = 67110402;
        v49 = a4;
        v50 = 2080;
        v51 = v21;
        v52 = 2080;
        v53 = v22;
        v54 = 1024;
        v55 = a5;
        v56 = 1040;
        v57 = a8;
        v58 = 2096;
        *v59 = a7;
        v18 = "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x Bin=[%{libTelephonyDecoder:QMI}.*P]";
        goto LABEL_11;
      }

LABEL_64:
      v34 = os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
      if (!a6)
      {
        if (!v34)
        {
          goto LABEL_13;
        }

        v46 = qmi::asShortString();
        v47 = off_29EE318A0[a3];
        v48 = 67110403;
        v49 = a4;
        v50 = 2080;
        v51 = v46;
        v52 = 2080;
        v53 = v47;
        v54 = 1024;
        v55 = a5;
        v56 = 1040;
        v57 = a8;
        v58 = 2101;
        *v59 = a7;
        v18 = "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x Bin=[%{sensitive,libTelephonyDecoder:QMI}.*P]";
LABEL_11:
        v19 = a1;
        v20 = 50;
        goto LABEL_12;
      }

      if (v34)
      {
        v35 = qmi::asShortString();
        v36 = off_29EE318A0[a3];
        v48 = 67110659;
        v49 = a4;
        v50 = 2080;
        v51 = v35;
        v52 = 2080;
        v53 = v36;
        v54 = 1024;
        v55 = a5;
        v56 = 1024;
        v57 = a6;
        v58 = 1040;
        *v59 = a8;
        v59[2] = 2101;
        *&v59[3] = a7;
        v18 = "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x Sim=%d Bin=[%{sensitive,libTelephonyDecoder:QMI}.*P]";
LABEL_8:
        v19 = a1;
        v20 = 56;
LABEL_12:
        _os_log_impl(&dword_2962DD000, v19, OS_LOG_TYPE_DEFAULT, v18, &v48, v20);
      }

LABEL_13:
      v23 = *MEMORY[0x29EDCA608];
      return;
    default:
      if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        v37 = qmi::asShortString();
        v38 = off_29EE318A0[a3];
        v48 = 67109890;
        v49 = a4;
        v50 = 2080;
        v51 = v37;
        v52 = 2080;
        v53 = v38;
        v54 = 1024;
        v55 = a5;
        _os_log_debug_impl(&dword_2962DD000, a1, OS_LOG_TYPE_DEBUG, "QMI: Svc=0x%02x(%s) %s MsgId=0x%04x", &v48, 0x22u);
      }

      goto LABEL_13;
  }
}

void qmi::ClientProxy::State::handleIndication_sync(uint64_t a1, const void *a2, size_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 232);
  if (v4)
  {
    if ((*(*v4 + 16))(v4))
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7 || (v7 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C259C10](v7) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v7);
          v8 = v7;
        }

        else
        {
          v8 = xpc_null_create();
        }
      }

      else
      {
        v8 = xpc_null_create();
        v7 = 0;
      }

      xpc_release(v7);
      v11 = xpc_data_create(a2, a3);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, "ind_qmi_message", v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      v13 = *(a1 + 232);
      object = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v13 + 24))(v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v8);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315138;
      v17 = v10;
      _os_log_error_impl(&dword_2962DD000, v9, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when handling indication", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2962E2074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

const char *qmi::asShortString()
{
  result = "CTL";
  switch("CTL")
  {
    case 0u:
      return result;
    case 1u:
      result = "WDS";
      break;
    case 2u:
      result = "DMS";
      break;
    case 3u:
      result = "NAS";
      break;
    case 4u:
      result = "QOS";
      break;
    case 5u:
      result = "WMS";
      break;
    case 6u:
      result = "PDS";
      break;
    case 8u:
      result = "AT";
      break;
    case 9u:
      result = "VS";
      break;
    case 0xAu:
      result = "CAT";
      break;
    case 0xBu:
      result = "UIM";
      break;
    case 0xCu:
      result = "PBM";
      break;
    case 0x1Au:
      result = "WDA";
      break;
    case 0x22u:
      result = "COEX";
      break;
    case 0x24u:
      result = "PDC";
      break;
    case 0x28u:
      result = "787";
      break;
    case 0x2Au:
      result = "DSD";
      break;
    case 0x2Bu:
      result = "SSCTL";
      break;
    case 0x2Cu:
      result = "MFSE";
      break;
    case 0x30u:
      result = "DFS";
      break;
    case 0x52u:
      result = "MS";
      break;
    case 0xE1u:
      result = "AUDIO";
      break;
    case 0xE2u:
      result = "BSP";
      break;
    case 0xE3u:
      result = "CIQ";
      break;
    case 0xE4u:
      result = "AWD";
      break;
    case 0xE5u:
      result = "VINYL";
      break;
    case 0xE6u:
      result = "MAVIMS";
      break;
    case 0xE7u:
      result = "ELQM";
      break;
    case 0xE8u:
      result = "P2P";
      break;
    case 0xE9u:
      result = "APPS";
      break;
    case 0xEAu:
      result = "SFT";
      break;
    case 0xEDu:
      result = "MAVL1";
      break;
    default:
      result = "???";
      break;
  }

  return result;
}

void dispatch::async<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = xpc_null_create();
  qmi::Client::State::handleClientMessage(v2, v4, a1 + 1);
  xpc_release(v3);
  xpc_release(*(a1 + 1));

  operator delete(a1);
}

void sub_2962E26C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t *a10)
{
  xpc_release(v10);
  std::unique_ptr<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZN3qmi6Client5State21handleIndication_syncERKN3xpc4dictEPv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 64) == 1 && *(a1 + 32) == 0)
      {
LABEL_14:
        v6 = *(a1 + 48);
        add = atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
        if (add <= 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    else if (*(a1 + 64) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if (*(a1 + 64) == 1)
    {
      goto LABEL_14;
    }
  }

  v5 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v6 = *(a1 + 48);
  add = atomic_fetch_add(v6 + 2, 0xFFFFFFFF);
  if (add <= 0)
  {
LABEL_15:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
    goto LABEL_16;
  }

LABEL_10:
  if (v6 && add == 1)
  {
    (*(*v6 + 8))(v6);
  }

LABEL_16:
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_e8_32c24_ZTSNSt3__18weak_ptrIvEE56c60_ZTSKN8dispatch5blockIU13block_pointerFvRK13QMIServiceMsgEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19ATCSRouterIPCDriverEE48c57_ZTSNSt3__110shared_ptrINS_6vectorIhNS_9allocatorIhEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void __destroy_helper_block_e8_32c24_ZTSNSt3__18weak_ptrIvEE56c60_ZTSKN8dispatch5blockIU13block_pointerFvRK13QMIServiceMsgEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void qmi::Client::State::handleIndication_sync(uint64_t a1, int a2, xpc_object_t xdata)
{
  length = xpc_data_get_length(xdata);
  if (length >> 16)
  {
    return;
  }

  v6 = length;
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  v8 = operator new(0x58uLL);
  QMIServiceMsg::QMIServiceMsg(v8, bytes_ptr, v6, 0);
  add_explicit = atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
  if (add_explicit < 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
    v10 = a1 + 208;
    v11 = *(a1 + 208);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = a1 + 208;
    v11 = *(a1 + 208);
    if (!v11)
    {
LABEL_13:
      add = atomic_fetch_add(v8 + 2, 0xFFFFFFFF);
      if (add <= 0)
      {

        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
      }

      else if (add == 1)
      {
        v18 = *(*v8 + 8);

        v18(v8);
      }

      return;
    }
  }

  v12 = *(v8 + 6);
  v13 = v10;
  do
  {
    v14 = *(v11 + 32);
    v15 = v14 >= v12;
    v16 = v14 < v12;
    if (v15)
    {
      v13 = v11;
    }

    v11 = *(v11 + 8 * v16);
  }

  while (v11);
  if (v13 == v10 || v12 < *(v13 + 32))
  {
    goto LABEL_13;
  }

  v19 = *(v13 + 40);
  if (v19)
  {
    v20 = _Block_copy(v19);
    v21 = *(a1 + 264);
    v22 = *(a1 + 272);
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = 0;
  v21 = *(a1 + 264);
  v22 = *(a1 + 272);
  if (v22)
  {
LABEL_23:
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_24:
  v23 = *(a1 + 256);
  v24 = *(a1 + 136);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3qmi6Client5State21handleIndication_syncERKN3xpc4dictEPv_block_invoke;
  block[3] = &__block_descriptor_tmp_16;
  block[4] = v21;
  v27 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = v23;
  v28 = v8;
  if (v20)
  {
    aBlock = _Block_copy(v20);
    dispatch_async(v24, block);
    v25 = aBlock;
    if (!aBlock)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  aBlock = 0;
  dispatch_async(v24, block);
  v25 = aBlock;
  if (aBlock)
  {
LABEL_32:
    _Block_release(v25);
  }

LABEL_33:
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v20)
  {
    _Block_release(v20);
  }
}

void qmi::Client::State::handleClientMessage(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_2;
  }

  v11 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v11 = *v11;
  }

  v12 = MEMORY[0x29C259B40](*a3);
  memset(__dst, 170, sizeof(__dst));
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
    __dst[1] = v14;
    __dst[2] = (v16 | 0x8000000000000000);
    __dst[0] = v15;
  }

  else
  {
    HIBYTE(__dst[2]) = v13;
    v15 = __dst;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  memcpy(v15, v12, v14);
LABEL_24:
  *(v14 + v15) = 0;
  free(v12);
  v17 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v17 = __dst[0];
  }

  *buf = 136315394;
  v20 = v11;
  v21 = 2080;
  v22 = v17;
  _os_log_debug_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEBUG, "#D [%s] *** Client got message: %s", buf, 0x16u);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_2:
  int64 = xpc_dictionary_get_int64(*a3, "status");
  if (int64)
  {
    qmi::Client::State::handleStatus_sync(a1, a3, int64);
  }

  value = xpc_dictionary_get_value(*a3, "resp_qmi_message");
  if (value)
  {
    qmi::Client::State::handleResponse_sync(a1, a3, value);
  }

  v9 = xpc_dictionary_get_value(*a3, "ind_qmi_message");
  if (v9)
  {
    qmi::Client::State::handleIndication_sync(a1, v8, v9);
  }

  if (xpc_dictionary_get_BOOL(*a3, "low_power"))
  {
    (*(*a1 + 32))(a1, a3);
  }

  if (xpc_dictionary_get_BOOL(*a3, "exit_low_power"))
  {
    qmi::Client::State::handleExitLowPower_sync(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t QMIControl::getPowerModeForMsg_sync(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = (a1 + 208);
  v3 = *(a1 + 208);
  if (!v3)
  {
    return 2;
  }

  v7 = a1 + 208;
  v8 = *(a1 + 208);
  do
  {
    v9 = *(v8 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v7 = v8;
    }

    v8 = *(v8 + 8 * v11);
  }

  while (v8);
  if (v7 == v4 || *(v7 + 32) > a2)
  {
    return 2;
  }

  do
  {
    while (1)
    {
      v13 = v3;
      v14 = *(v3 + 32);
      if (v14 > a2)
      {
        break;
      }

      if (v14 >= a2)
      {
        v20 = (v13 + 6);
        v19 = v13[6];
        if (v19)
        {
          goto LABEL_21;
        }

LABEL_28:
        v22 = v20;
        goto LABEL_29;
      }

      v3 = v13[1];
      if (!v3)
      {
        v15 = a3;
        v16 = v13 + 1;
        goto LABEL_16;
      }
    }

    v3 = *v13;
  }

  while (*v13);
  v15 = a3;
  v16 = v13;
LABEL_16:
  v17 = operator new(0x40uLL);
  v17[32] = a2;
  *(v17 + 7) = 0;
  *(v17 + 6) = 0;
  *(v17 + 5) = v17 + 48;
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = v13;
  *v16 = v17;
  v18 = **(a1 + 200);
  if (v18)
  {
    *(a1 + 200) = v18;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 208), v17);
  ++*(a1 + 216);
  a3 = v15;
  v21 = *(v17 + 6);
  v20 = (v17 + 48);
  v19 = v21;
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_21:
  v22 = v20;
  do
  {
    v23 = v19[13];
    v10 = v23 >= a3;
    v24 = v23 < a3;
    if (v10)
    {
      v22 = v19;
    }

    v19 = *&v19[4 * v24];
  }

  while (v19);
  if (v22 == v20 || v22[13] > a3)
  {
    goto LABEL_28;
  }

LABEL_29:
  v25 = *v4;
  v26 = v4;
  if (*v4)
  {
    while (1)
    {
      while (1)
      {
        v26 = v25;
        v27 = *(v25 + 32);
        if (v27 <= a2)
        {
          break;
        }

        v25 = *v26;
        v4 = v26;
        if (!*v26)
        {
          goto LABEL_36;
        }
      }

      if (v27 >= a2)
      {
        break;
      }

      v25 = v26[1];
      if (!v25)
      {
        v4 = v26 + 1;
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    v28 = v26;
    v26 = operator new(0x40uLL);
    *(v26 + 32) = a2;
    v26[7] = 0;
    v26[6] = 0;
    v26[5] = (v26 + 6);
    *v26 = 0;
    v26[1] = 0;
    v26[2] = v28;
    *v4 = v26;
    v29 = **(a1 + 200);
    if (v29)
    {
      *(a1 + 200) = v29;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 208), v26);
    ++*(a1 + 216);
  }

  if (v22 == (v26 + 6))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

std::__shared_weak_count *qmi::EurTransportLocal::isValid(qmi::EurTransportLocal *this)
{
  result = *(this + 13);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = (*(this + 12) != 0);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void qmi::EurTransportLocal::sendMessage(uint64_t a1, void **a2)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    object[2] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 96);
      object[1] = v7;
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = *a2;
      object[0] = v8;
      if (v8)
      {
        xpc_retain(v8);
        v9 = v7[3];
        if (v9)
        {
LABEL_6:
          (*(*v9 + 48))(v9, object);
          xpc_release(object[0]);
          object[0] = 0;
LABEL_7:
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          return;
        }
      }

      else
      {
        object[0] = xpc_null_create();
        v9 = v7[3];
        if (v9)
        {
          goto LABEL_6;
        }
      }

      std::__throw_bad_function_call[abi:ne200100]();
    }
  }
}

void sub_2962E331C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::__function::__func<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<qmi::Client::LocalState::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      if (v6)
      {
        qmi::Client::State::handleClientMessage_sync(v6, &object);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  xpc_release(object);
}

void qmi::Client::State::handleClientMessage_sync(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(a1 + 24);
  v5 = operator new(0x10uLL);
  *v5 = a1;
  v5[1] = v3;
  v6 = xpc_null_create();
  dispatch_async_f(v4, v5, dispatch::async<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0,std::default_delete<qmi::Client::State::handleClientMessage_sync(xpc::dict const&)::$_0>>)::{lambda(void *)#1}::__invoke);
  xpc_release(v6);
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_12getWriteDataEPhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if (*(*v1 + 208) == 5 || (result = QMux::State::getWriteDataInternal_sync(v2, **(v1 + 8), **(v1 + 16)), !result))
  {
    result = *(v2 + 22);
    if (result)
    {
      (*(*result + 64))(result, v2, *(v2 + 25));
      return 0;
    }
  }

  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFivEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t QMux::State::getWriteDataInternal_sync(QMux::State *this, unsigned __int8 *a2, unsigned int a3)
{
  v76 = *MEMORY[0x29EDCA608];
  if (!*(this + 21) || *(this + 88) >= *(this + 86))
  {
    v24 = 0;
    goto LABEL_29;
  }

  LOWORD(v4) = 0;
  v5 = (*(*(this + 17) + 8 * (*(this + 20) / 0xAAuLL)) + 24 * (*(this + 20) % 0xAAuLL));
  v6 = *(v5 + 1);
  v7 = *v6;
  v8 = v6[1] - *v6;
  if (a3)
  {
    v9 = *(this + 152);
    if (v8 > v9)
    {
      if (a3 >= 0xFFFF)
      {
        v10 = 0xFFFFLL;
      }

      else
      {
        v10 = a3;
      }

      if (v8 - v9 >= v10)
      {
        v4 = v10;
      }

      else
      {
        v4 = v8 - v9;
      }

      memmove(a2, (v7 + v9), v4);
      v6 = *(v5 + 1);
      v8 = v6[1] - *v6;
    }
  }

  v11 = *v5;
  v12 = v5[1];
  v13 = *(v6 + 13);
  v14 = *(v6 + 12);
  v15 = *(this + 14);
  if (!v15)
  {
    goto LABEL_46;
  }

  v16 = this + 112;
  do
  {
    v19 = v15[32];
    v20 = v19 == v11;
    if (v19 >= v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v20)
    {
      v22 = v15[33];
      v23 = v22 == v12;
      v21 = v22 >= v12 ? 1 : -1;
      if (v23)
      {
        v21 = 0;
      }
    }

    v17 = v21 & 0x80;
    v20 = v17 == 0;
    v18 = v17 >> 4;
    if (v20)
    {
      v16 = v15;
    }

    v15 = *&v15[v18];
  }

  while (v15);
  if (v16 == this + 112)
  {
    goto LABEL_46;
  }

  v27 = v16[32];
  v28 = v11 == v27;
  if (v11 >= v27)
  {
    v29 = 1;
  }

  else
  {
    v29 = -1;
  }

  if (v28)
  {
    v30 = v16[33];
    v31 = v12 >= v30;
    v32 = v12 == v30;
    v29 = -1;
    if (v31)
    {
      v29 = 1;
    }

    if (v32)
    {
      v29 = 0;
    }
  }

  if (v29 < 0)
  {
LABEL_46:
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v65 = 0;
    v37 = 1;
    goto LABEL_47;
  }

  v65 = 0;
  v33 = *(v16 + 6);
  if (!v33)
  {
    v35 = 0;
    v36 = 0;
    v37 = 1;
    v38 = 1;
    goto LABEL_47;
  }

  v34 = v14;
  v65 = std::__shared_weak_count::lock(v33);
  if (!v65)
  {
    v35 = 0;
    goto LABEL_83;
  }

  v35 = *(v16 + 5);
  if (!v35)
  {
LABEL_83:
    v36 = 0;
    v37 = 1;
    goto LABEL_84;
  }

  v36 = (*(*v35 + 104))(v35);
  v37 = 0;
LABEL_84:
  v38 = 1;
  v14 = v34;
LABEL_47:
  v24 = v4;
  v39 = (*(this + 152) + v4);
  *(this + 152) += v4;
  if (v39 != v8)
  {
    goto LABEL_64;
  }

  *(this + 152) = 0;
  v40 = *(this + 20);
  v41 = *(this + 17);
  v42 = (v41 + 8 * (v40 / 0xAA));
  v62 = v13;
  if (*(this + 18) == v41)
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v43 = *v42 + 24 * (v40 % 0xAA);
    v44 = v43;
  }

  v45 = v36;
  v63 = v14;
  v46 = v44 - *v42;
  v47 = 0xAAAAAAAAAAAAAAABLL * (v46 >> 3);
  if (v46 < -23)
  {
    v51 = 168 - v47;
    v49 = &v42[-(v51 / 0xAA)];
    v50 = *v49 + 24 * (170 * (v51 / 0xAA) - v51) + 4056;
  }

  else
  {
    v48 = v47 + 1;
    v49 = &v42[v48 / 0xAA];
    v50 = *v49 + 24 * (v48 % 0xAA);
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,0>(buf, v42, v44, v42, v44, v49, v50);
  v52 = *(v43 + 16);
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

  v53 = vaddq_s64(*(this + 10), xmmword_296335BF0);
  *(this + 10) = v53;
  if (v53.i64[0] >= 0x154uLL)
  {
    operator delete(**(this + 17));
    *(this + 17) += 8;
    *(this + 20) -= 170;
  }

  atomic_fetch_add_explicit(this + 87, 0xFFFFFFFF, memory_order_relaxed);
  atomic_fetch_add_explicit(this + 88, 1u, memory_order_relaxed);
  if (!v38)
  {
    v56 = *(this + 5);
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    v14 = v63;
    v36 = v45;
    if (v57)
    {
      v61 = (this + 48);
      if (*(this + 71) < 0)
      {
        v61 = *v61;
      }

      *buf = 136315650;
      v67 = v61;
      v68 = 1024;
      v69 = v11;
      v70 = 1024;
      v71 = v12;
      _os_log_error_impl(&dword_2962DD000, v56, OS_LOG_TYPE_ERROR, "[%s] Cannot call handleSentData, QMI client(svc=%d client=%d) not found", buf, 0x18u);
      v14 = v63;
      v36 = v45;
      v54 = *(this + 48);
      if (v54 <= 1)
      {
        goto LABEL_78;
      }

LABEL_65:
      v55 = v24;
      if (v37)
      {
        goto LABEL_70;
      }

LABEL_68:
      if (v35[10] >= 2)
      {
        v55 = v35[9];
        goto LABEL_70;
      }

      goto LABEL_78;
    }

LABEL_64:
    v54 = *(this + 48);
    if (v54 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_65;
  }

  if (v37)
  {
    v54 = *(this + 48);
    v55 = v24;
    v14 = v63;
    v36 = v45;
    if (v54 <= 1)
    {
      goto LABEL_78;
    }

LABEL_70:
    if (v55 >= v24)
    {
      v58 = v24;
    }

    else
    {
      v58 = v55;
    }

    sLogBinaryToOsLog(*(this + 5), v54, 0, v11, v14, v36, a2, v58);
    if (v55 < v24)
    {
      v59 = *(this + 5);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = (this + 48);
        if (*(this + 71) < 0)
        {
          v60 = *v60;
        }

        *buf = 136316162;
        v67 = v60;
        v68 = 1024;
        v69 = v24;
        v70 = 1024;
        v71 = v55;
        v72 = 1024;
        v73 = v11;
        v74 = 1024;
        v75 = v12;
        _os_log_impl(&dword_2962DD000, v59, OS_LOG_TYPE_DEFAULT, "#I [%s] send: Truncated binary from %d bytes to %u bytes for QMI client(svc=%d client=%d)", buf, 0x24u);
      }
    }

    goto LABEL_78;
  }

  (*(*v35 + 56))(v35, v62);
  v36 = v45;
  v54 = *(this + 48);
  v14 = v63;
  if (v54 > 1)
  {
    goto LABEL_68;
  }

LABEL_78:
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
  }

LABEL_29:
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_2962E3B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962E3B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2962E3B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void qmi::ClientProxy::State::checkIfLowPower_sync(qmi::ClientProxy::State *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(this + 24);
  if (v1 && !*(this + 16) && *(this + 19) != 4)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_debug_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEBUG, "#D [%s]: Nothing further to send: low-power hold is complete", &v7, 0xCu);
      v4 = this;
      v1 = *(this + 24);
      *(this + 24) = 0;
      if (!v1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *(this + 24) = 0;
    }

    dispatch_group_leave(v1);
    dispatch_release(v1);
    v4 = this;
LABEL_7:
    *(v4 + 19) = 6;
  }

  v5 = *MEMORY[0x29EDCA608];
}

void qmi::ClientProxy::State::Transaction::~Transaction(qmi::ClientProxy::State::Transaction *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

void ___ZN19ATCSRouterIPCDriver16handleWriteReadyEP22ATCSDispatcherCallbackPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    v5 = malloc(v4);
    v6 = (*(*v1 + 24))(v1, v5, v4);
    if (v6 >= 1)
    {
      v7 = *MEMORY[0x29EDCA558];
      while (!dispatch_data_create(v5, v6, *(v3 + 32), v7))
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0xCD, "data", "!=", "NULL", 0, 0);
        v11 = *(*(v3 + 40) + 16);
        v10 = mav_router_service_transmit();
        if (v10)
        {
          goto LABEL_9;
        }

LABEL_4:
        v8 = *(v3 + 56);
        v5 = malloc(v8);
        v6 = (*(*v1 + 24))(v1, v5, v8);
        if (v6 < 1)
        {
          goto LABEL_10;
        }
      }

      v9 = *(*(v3 + 40) + 16);
      v10 = mav_router_service_transmit();
      if (!v10)
      {
        goto LABEL_4;
      }

LABEL_9:
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0xD3, "result", "==", "MAV_ROUTER_SUCCESS", v10, 0);
      goto LABEL_4;
    }

LABEL_10:
    free(v5);
  }

  else
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0xBC, "callback", "!=", "NULL", 0, 0);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>(QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0,std::default_delete<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = *a1;
  QMux::State::send_sync(*v8, v8 + 2, v8 + 4, a4, a5, a6);
  std::unique_ptr<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0,std::default_delete<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>>::~unique_ptr[abi:ne200100](&v8);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    operator delete(a1);
  }

  else
  {
    operator delete(a1);
  }
}

void sub_2962E404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0,std::default_delete<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0,std::default_delete<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[5];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v2[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v2[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void QMux::State::send_sync(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v125 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v9 = *(*a2 + 33);
  v10 = *(*a2 + 32);
  v11 = *(a1 + 208);
  v12 = v11 == 5 || v11 == 0;
  if (v12)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v14 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v14 = *v14;
    }

    if ((v11 - 1) > 4)
    {
      v15 = "kStopped";
    }

    else
    {
      v15 = off_29EE318B8[v11 - 1];
    }

    v45 = *(*a3 + 26);
    v46 = *(*a3 + 24);
    *buf = 136316418;
    *&buf[4] = v14;
    v119 = 2080;
    *v120 = v15;
    *&v120[8] = 1024;
    *v121 = v10;
    *&v121[4] = 1024;
    *v122 = v9;
    *&v122[4] = 1024;
    *v123 = v45;
    *&v123[4] = 1024;
    v124[0] = v46;
    v47 = "[%s] Cannot queue send: QMux is %s (svc=%d client=%d txid=%d msgid=0x%x)";
    v48 = v13;
    v49 = 46;
LABEL_63:
    _os_log_error_impl(&dword_2962DD000, v48, OS_LOG_TYPE_ERROR, v47, buf, v49);
    goto LABEL_46;
  }

  v16 = *(a1 + 112);
  if (!v16)
  {
    goto LABEL_45;
  }

  v18 = a1 + 112;
  do
  {
    v21 = *(v16 + 32);
    v22 = v21 == v10;
    if (v21 >= v10)
    {
      v23 = 1;
    }

    else
    {
      v23 = -1;
    }

    if (v22)
    {
      v24 = *(v16 + 33);
      v25 = v24 == v9;
      v23 = v24 >= v9 ? 1 : -1;
      if (v25)
      {
        v23 = 0;
      }
    }

    v19 = v23 & 0x80;
    v12 = v19 == 0;
    v20 = v19 >> 4;
    if (v12)
    {
      v18 = v16;
    }

    v16 = *(v16 + v20);
  }

  while (v16);
  if (v18 == a1 + 112)
  {
    goto LABEL_45;
  }

  v26 = *(v18 + 32);
  v27 = v10 == v26;
  if (v10 >= v26)
  {
    v28 = 1;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v29 = *(v18 + 33);
    v30 = v9 >= v29;
    v31 = v9 == v29;
    v28 = -1;
    if (v30)
    {
      v28 = 1;
    }

    if (v31)
    {
      v28 = 0;
    }
  }

  if (v28 < 0)
  {
LABEL_45:
    v36 = *(a1 + 40);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    v53 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v53 = *v53;
    }

    v54 = *(*a3 + 26);
    v55 = *(*a3 + 24);
    *buf = 136316162;
    *&buf[4] = v53;
    v119 = 1024;
    *v120 = v10;
    *&v120[4] = 1024;
    *&v120[6] = v9;
    *v121 = 1024;
    *&v121[2] = v54;
    *v122 = 1024;
    *&v122[2] = v55;
    v47 = "[%s] Cannot queue send: Unknown client (svc=%d client=%d txid=%d msgid=0x%x)";
    v48 = v36;
    v49 = 36;
    goto LABEL_63;
  }

  v32 = *(v18 + 48);
  if (!v32 || (v33 = std::__shared_weak_count::lock(v32), v8 = *a2, !v33))
  {
    if (!v8)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v34 = *(v18 + 40);
  if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v35 = v33;
    (v33->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v8 != v34)
  {
LABEL_48:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x2CC, "client", "==", "i->second.lock()", a6);
  }

LABEL_49:
  v38 = *(a1 + 136);
  v39 = *(a1 + 144);
  v40 = *(a1 + 136);
  v41 = v39 - v40;
  if (v39 == v40)
  {
    v42 = 0;
  }

  else
  {
    v42 = 170 * ((v39 - v40) >> 3) - 1;
  }

  v43 = *(a1 + 160);
  v44 = *(a1 + 168) + v43;
  if (v42 != v44)
  {
    goto LABEL_117;
  }

  if (v43 < 0xAA)
  {
    v114 = a3;
    v50 = *(a1 + 152);
    v51 = *(a1 + 128);
    if (v41 < (v50 - v51))
    {
      v52 = operator new(0xFF0uLL);
      if (v50 != v39)
      {
        *v39 = v52;
        *(a1 + 144) = v39 + 8;
        a3 = v114;
        goto LABEL_116;
      }

      if (v40 != v51)
      {
        v64 = v40;
        a3 = v114;
LABEL_115:
        *(v64 - 1) = v52;
        *buf = v52;
        *(a1 + 136) = v64;
        std::__split_buffer<qmi::ClientProxy::State::Transaction *>::emplace_back<qmi::ClientProxy::State::Transaction *&>((a1 + 128), buf);
        goto LABEL_116;
      }

      __pb = v52;
      v87 = (v50 - v40) >> 2;
      if (v39 == v40)
      {
        v87 = 1;
      }

      if (!(v87 >> 61))
      {
        v88 = (v87 + 3) >> 2;
        v89 = 8 * v87;
        v90 = operator new(8 * v87);
        v64 = &v90[8 * v88];
        v91 = &v90[v89];
        v92 = v64;
        a3 = v114;
        v52 = __pb;
        if (v39 != v40)
        {
          v92 = &v64[v41];
          v93 = v39 - v40 - 8;
          v94 = &v90[8 * v88];
          v95 = v40;
          if (v93 < 0x38)
          {
            goto LABEL_133;
          }

          v96 = &v90[8 * v88];
          v94 = v96;
          v95 = v40;
          if ((v96 - v40) < 0x20)
          {
            goto LABEL_133;
          }

          v97 = (v93 >> 3) + 1;
          v98 = 8 * (v97 & 0x3FFFFFFFFFFFFFFCLL);
          v94 = &v64[v98];
          v95 = &v40[v98];
          v99 = (v40 + 16);
          v100 = v96 + 16;
          v101 = v97 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v102 = *v99;
            *(v100 - 1) = *(v99 - 1);
            *v100 = v102;
            v99 += 2;
            v100 += 2;
            v101 -= 4;
          }

          while (v101);
          if (v97 != (v97 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v103 = *v95;
              v95 += 8;
              *v94 = v103;
              v94 += 8;
            }

            while (v94 != v92);
          }
        }

        *(a1 + 128) = v90;
        *(a1 + 136) = v64;
        *(a1 + 144) = v92;
        *(a1 + 152) = v91;
        if (v40)
        {
          operator delete(v51);
          v52 = __pb;
          v64 = *(a1 + 136);
        }

        goto LABEL_115;
      }

LABEL_129:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v56 = (v50 - v51) >> 2;
    if (v50 == v51)
    {
      v56 = 1;
    }

    if (v56 >> 61)
    {
      goto LABEL_129;
    }

    v57 = 8 * v56;
    __p = operator new(8 * v56);
    v58 = operator new(0xFF0uLL);
    v59 = &__p[v41];
    v60 = &__p[v57];
    if (v41 == v57)
    {
      v61 = v58;
      if (v41 < 1)
      {
        if (v39 == v40)
        {
          v65 = 1;
        }

        else
        {
          v65 = v41 >> 2;
        }

        if (v65 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v59 = operator new(8 * v65);
        v63 = &v59[8 * v65];
        operator delete(__p);
        v40 = *(a1 + 136);
        v39 = *(a1 + 144);
        v62 = v59;
      }

      else
      {
        v59 -= ((v41 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
        v62 = __p;
        v63 = v60;
      }

      v58 = v61;
    }

    else
    {
      v62 = __p;
      v63 = v60;
    }

    *v59 = v58;
    v66 = v59 + 8;
    if (v39 == v40)
    {
      v67 = v59;
LABEL_81:
      v68 = *(a1 + 128);
      *(a1 + 128) = v62;
      *(a1 + 136) = v67;
      *(a1 + 144) = v66;
      *(a1 + 152) = v63;
      a3 = v114;
      if (v68)
      {
        operator delete(v68);
      }

      goto LABEL_116;
    }

    while (v59 != v62)
    {
      v69 = v59;
LABEL_84:
      v70 = *(v39 - 1);
      v39 -= 8;
      *(v69 - 1) = v70;
      v67 = v69 - 8;
      v59 = v67;
      if (v39 == *(a1 + 136))
      {
        goto LABEL_81;
      }
    }

    if (v66 < v63)
    {
      v69 = &v62[8 * ((((v63 - v66) >> 3) + 1 + ((((v63 - v66) >> 3) + 1) >> 63)) >> 1)];
      v71 = v66 - v62;
      v12 = v66 == v62;
      v66 += 8 * ((((v63 - v66) >> 3) + 1 + ((((v63 - v66) >> 3) + 1) >> 63)) >> 1);
      if (!v12)
      {
        memmove(v69, v59, v71);
      }

      goto LABEL_84;
    }

    __pa = v62;
    if (v63 == v62)
    {
      v72 = 1;
    }

    else
    {
      v72 = (v63 - v62) >> 2;
    }

    if (v72 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v73 = operator new(8 * v72);
    v62 = v73;
    v74 = (v72 + 3) >> 2;
    v69 = &v73[8 * v74];
    v75 = v66 - __pa;
    v12 = v66 == __pa;
    v66 = v69;
    if (!v12)
    {
      v66 = &v69[v75];
      v76 = v75 - 8;
      if (v76 >= 0x18 && (v77 = 8 * v74, (&v73[8 * v74] - v59) >= 0x20))
      {
        v81 = (v76 >> 3) + 1;
        v82 = 8 * (v81 & 0x3FFFFFFFFFFFFFFCLL);
        v78 = &v69[v82];
        v79 = &v59[v82];
        v83 = (v59 + 16);
        v84 = &v73[v77 + 16];
        v85 = v81 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v86 = *v83;
          *(v84 - 1) = *(v83 - 1);
          *v84 = v86;
          v83 += 2;
          v84 += 32;
          v85 -= 4;
        }

        while (v85);
        if (v81 == (v81 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_98;
        }
      }

      else
      {
        v78 = &v73[8 * v74];
        v79 = v59;
      }

      do
      {
        v80 = *v79;
        v79 += 8;
        *v78 = v80;
        v78 += 8;
      }

      while (v78 != v66);
    }

LABEL_98:
    v63 = &v73[8 * v72];
    operator delete(__pa);
    goto LABEL_84;
  }

  *(a1 + 160) = v43 - 170;
  *buf = *v40;
  *(a1 + 136) = v40 + 8;
  std::__split_buffer<qmi::ClientProxy::State::Transaction *>::emplace_back<qmi::ClientProxy::State::Transaction *&>((a1 + 128), buf);
LABEL_116:
  v40 = *(a1 + 136);
  v44 = *(a1 + 168) + *(a1 + 160);
LABEL_117:
  v104 = *&v40[8 * (v44 / 0xAA)] + 24 * (v44 % 0xAA);
  *v104 = v10;
  *(v104 + 1) = v9;
  *(v104 + 8) = *a3;
  v105 = a3[1];
  *(v104 + 16) = v105;
  if (v105)
  {
    atomic_fetch_add_explicit((v105 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::fixupHeader();
  ++*(a1 + 168);
  v106 = atomic_fetch_add_explicit((a1 + 348), 1u, memory_order_relaxed) + 1;
  v107 = *(a1 + 352);
  v108 = *(a1 + 344);
  if (*(a1 + 192) >= 1 && *(*a2 + 40) >= 1)
  {
    v109 = *(a1 + 40);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v110 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v110 = *v110;
      }

      v111 = *(*a3 + 26);
      v112 = *(*a3 + 24);
      *buf = 136316674;
      *&buf[4] = v110;
      v119 = 1024;
      *v120 = v10;
      *&v120[4] = 1024;
      *&v120[6] = v9;
      *v121 = 1024;
      *&v121[2] = v111;
      *v122 = 1024;
      *&v122[2] = v112;
      *v123 = 1024;
      *&v123[2] = v106;
      LOWORD(v124[0]) = 1024;
      *(v124 + 2) = v107;
      _os_log_impl(&dword_2962DD000, v109, OS_LOG_TYPE_DEFAULT, "#I [%s] queueing qmux pdu for svc=%d client=%d (txid=%d msgid=0x%x) [tx-slot=%d, rx-pending=%d]", buf, 0x30u);
    }
  }

  v113 = *(a1 + 176);
  if (v113 && (v106 + v107) <= (v108 + (v108 >> 2)))
  {
    (*(*v113 + 56))(v113, a1, *(a1 + 200));
  }

LABEL_46:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_2962E49E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_2962E4A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMux::State::getWriteData(QMux::State *this, unsigned __int8 *a2, int a3)
{
  v7 = a3;
  v6[0] = this;
  v6[1] = &v8;
  v6[2] = &v7;
  v8 = a2;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_12getWriteDataEPhjE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v9[3] = &__block_descriptor_tmp_107;
  v9[4] = this + 8;
  v9[5] = v6;
  v10 = v9;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v17 = -1431655766;
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFivEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v14 = &__block_descriptor_tmp_109;
    v15 = &v17;
    v16 = &v10;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v17 = -1431655766;
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZN8dispatch9sync_implIRU13block_pointerFivEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v14 = &__block_descriptor_tmp_108;
    v15 = &v17;
    v16 = &v10;
    dispatch_sync(v3, &block);
  }

  return v17;
}

void std::deque<qmi::ClientProxy::State::Transaction>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x80;
  v4 = v2 - 128;
  if (v3)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 8);
    v63 = *v5;
    *(a1 + 8) = v5 + 1;
LABEL_4:
    std::__split_buffer<qmi::ClientProxy::State::Transaction *>::emplace_back<qmi::ClientProxy::State::Transaction *&>(a1, &v63);
    return;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = v7 - v9;
  v11 = &v6[-*a1];
  if (v7 - v9 < v11)
  {
    v12 = operator new(0x1000uLL);
    if (v6 != v7)
    {
      *v7 = v12;
      *(a1 + 16) = v7 + 8;
      return;
    }

    if (v9 != v8)
    {
      v23 = v9;
LABEL_61:
      *(v23 - 1) = v12;
      v63 = v12;
      *(a1 + 8) = v23;
      goto LABEL_4;
    }

    v46 = (v6 - v9) >> 2;
    if (v7 == v9)
    {
      v46 = 1;
    }

    if (!(v46 >> 61))
    {
      v47 = v12;
      v48 = (v46 + 3) >> 2;
      v49 = 8 * v46;
      v50 = operator new(8 * v46);
      v23 = &v50[8 * v48];
      v51 = v23;
      v12 = v47;
      if (v7 != v9)
      {
        v51 = &v23[v10];
        v52 = v7 - v9 - 8;
        v53 = &v50[8 * v48];
        v54 = v9;
        if (v52 < 0x38)
        {
          goto LABEL_67;
        }

        v55 = &v50[8 * v48];
        v53 = v55;
        v54 = v9;
        if ((v55 - v9) < 0x20)
        {
          goto LABEL_67;
        }

        v56 = (v52 >> 3) + 1;
        v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
        v53 = &v23[v57];
        v54 = &v9[v57];
        v58 = (v9 + 16);
        v59 = v55 + 16;
        v60 = v56 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_67:
          do
          {
            v62 = *v54;
            v54 += 8;
            *v53 = v62;
            v53 += 8;
          }

          while (v53 != v51);
        }
      }

      *a1 = v50;
      *(a1 + 8) = v23;
      *(a1 + 16) = v51;
      *(a1 + 24) = &v50[v49];
      if (v9)
      {
        operator delete(v8);
        v12 = v47;
        v23 = *(a1 + 8);
      }

      goto LABEL_61;
    }

LABEL_63:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = v11 >> 2;
  if (v6 == v8)
  {
    v13 = 1;
  }

  if (v13 >> 61)
  {
    goto LABEL_63;
  }

  v14 = 8 * v13;
  v15 = operator new(8 * v13);
  v16 = operator new(0x1000uLL);
  v17 = v16;
  v18 = &v15[v10];
  v19 = &v15[v14];
  if (v10 != v14)
  {
    goto LABEL_14;
  }

  if (v10 < 1)
  {
    if (v7 == v9)
    {
      v24 = 1;
    }

    else
    {
      v24 = v10 >> 2;
    }

    if (v24 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = operator new(8 * v24);
    v19 = &v18[8 * v24];
    operator delete(v15);
    v25 = *(a1 + 8);
    v7 = *(a1 + 16);
    v15 = v18;
    *v18 = v17;
    v20 = v18 + 8;
    if (v7 == v25)
    {
      goto LABEL_15;
    }

LABEL_31:
    while (v18 != v15)
    {
      v26 = v18;
LABEL_30:
      v27 = *(v7 - 1);
      v7 -= 8;
      *(v26 - 1) = v27;
      v21 = v26 - 8;
      v18 = v21;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_16;
      }
    }

    if (v20 < v19)
    {
      v26 = &v15[8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1)];
      v29 = v20 - v15;
      v28 = v20 == v15;
      v20 += 8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1);
      if (!v28)
      {
        memmove(v26, v18, v29);
      }

      goto LABEL_30;
    }

    if (v19 == v15)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v19 - v15) >> 2;
    }

    if (v30 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = operator new(8 * v30);
    v32 = v31;
    v33 = (v30 + 3) >> 2;
    v26 = &v31[8 * v33];
    v34 = v20 - v15;
    v28 = v20 == v15;
    v20 = v26;
    if (!v28)
    {
      v20 = &v26[v34];
      v35 = v34 - 8;
      if (v35 >= 0x18 && (v36 = 8 * v33, (&v31[8 * v33] - v18) >= 0x20))
      {
        v40 = (v35 >> 3) + 1;
        v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
        v37 = &v26[v41];
        v38 = &v18[v41];
        v42 = (v18 + 16);
        v43 = &v31[v36 + 16];
        v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = *v42;
          *(v43 - 1) = *(v42 - 1);
          *v43 = v45;
          v42 += 2;
          v43 += 32;
          v44 -= 4;
        }

        while (v44);
        if (v40 == (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v37 = &v31[8 * v33];
        v38 = v18;
      }

      do
      {
        v39 = *v38;
        v38 += 8;
        *v37 = v39;
        v37 += 8;
      }

      while (v37 != v20);
    }

LABEL_44:
    v19 = &v31[8 * v30];
    operator delete(v15);
    v15 = v32;
    goto LABEL_30;
  }

  v18 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_14:
  *v18 = v16;
  v20 = v18 + 8;
  if (v7 != v9)
  {
    goto LABEL_31;
  }

LABEL_15:
  v21 = v18;
LABEL_16:
  v22 = *a1;
  *a1 = v15;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v19;
  if (v22)
  {

    operator delete(v22);
  }
}

void sub_2962E4F9C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void QMux::send(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*a2)
  {
    v10 = *a1;
    if (!*a1)
    {
      return;
    }
  }

  else
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x6C4, "client", "is not", "true", "Cannot queue send: Client is empty! (svc=?? client=?? txid=%d msgid=0x%x)", a7, *(*a3 + 26), *(*a3 + 24));
    v10 = *a1;
    if (!*a1)
    {
      return;
    }
  }

  v11 = a1[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v20 = *a3;
  v21 = v12;
  *a3 = 0;
  a3[1] = 0;
  v13 = v10[2];
  if (!v13 || (v14 = v10[1], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  v17 = operator new(0x30uLL);
  *v17 = v10;
  v17[1] = v11;
  *(v17 + 1) = v21;
  *(v17 + 2) = v20;
  v18 = v10[3];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>(QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0,std::default_delete<QMux::send(std::shared_ptr<qmi::QMuxClientIface>,std::shared_ptr<qmi::SerializedMessage>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);

    std::__shared_weak_count::__release_weak(v16);
  }
}

void qmi::QmiClientProxyAdapter::send_sync(void *a1, uint64_t *a2)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a1[38];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v26 = v5;
    if (v5)
    {
      v25 = a1[37];
      if (!v25)
      {
        goto LABEL_20;
      }

      v6 = a1[8];
      if (!v6 || (v7 = a1[7], (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v7 - 48;
      if (!v7)
      {
        v13 = 0;
      }

      v23 = v13;
      v24 = v8;
      v21 = v13;
      v22 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = a2[1];
      v19 = *a2;
      v20 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QMux::send(&v25, &v21, &v19, v9, v10, v11, v12);
      v15 = v20;
      if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v17 = v24;
      if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v5 = v26;
      if (v26)
      {
LABEL_20:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v18 = v5;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v18);
        }
      }
    }
  }
}

void sub_2962E5360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  QMux::~QMux((v13 - 32));
  _Unwind_Resume(a1);
}

void qmi::ClientProxy::State::sendIfPossible_sync(qmi::ClientProxy::State *this)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *(this + 19);
  v2 = v1 > 7;
  v3 = (1 << v1) & 0xCF;
  if (v2 || v3 == 0)
  {
    if (*(this + 22))
    {
      v7 = (this + 48);
      do
      {
        v8 = *(this + 16);
        if (v8 >= *(this + 21))
        {
          break;
        }

        v9 = *(this + 6);
        v10 = *(this + 13);
        v11 = *(this + 12);
        v12 = *(this + 21);
        v13 = *(*(this + 18) + ((v12 >> 4) & 0xFFFFFFFFFFFFFF8));
        if (v10 == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = 16 * (v10 - v11) - 1;
        }

        v15 = *(this + 15) + v8;
        if (v14 == v15)
        {
          std::deque<qmi::ClientProxy::State::Transaction>::__add_back_capacity(this + 88);
          v11 = *(this + 12);
          v15 = *(this + 16) + *(this + 15);
        }

        v16 = v13 + 32 * (v12 & 0x7F);
        v17 = *(v11 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F);
        *v17 = *v16;
        v18 = *(v16 + 8);
        *(v16 + 8) = 0;
        *(v17 + 8) = v18;
        *(v17 + 24) = *(v16 + 24);
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        ++*(this + 16);
        qmi::ClientProxy::State::Transaction::~Transaction((*(*(this + 18) + ((*(this + 21) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(this + 21) & 0x7FLL)));
        v19 = vaddq_s64(*(this + 168), xmmword_296335BF0);
        *(this + 168) = v19;
        if (v19.i64[0] >= 0x100uLL)
        {
          operator delete(**(this + 18));
          *(this + 18) += 8;
          *(this + 21) -= 128;
        }

        v20 = *(this + 16) + *(this + 15) - 1;
        v21 = *(*(this + 12) + ((v20 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v20 & 0x7F);
        v22 = *(this + 28);
        if (!v22)
        {
          goto LABEL_38;
        }

        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        if (!v25)
        {
          goto LABEL_38;
        }

        v26 = *(*(v21 + 16) + 26);
        v27 = v23;
        do
        {
          v28 = *(v24 + 32);
          v29 = v28 >= v26;
          v30 = v28 < v26;
          if (v29)
          {
            v27 = v24;
          }

          v24 = *(v24 + 8 * v30);
        }

        while (v24);
        if (v27 != v23 && *(v27 + 32) <= v26 && (v31 = *(v27 + 40)) != 0 && (v32 = _Block_copy(v31)) != 0)
        {
          _Block_release(v32);
          v33 = *(this + 5);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = this + 48;
            if (*(this + 71) < 0)
            {
              v34 = *v7;
            }

            v35 = *(*(v21 + 16) + 24);
            *buf = 136315394;
            v46 = v34;
            v47 = 1024;
            v48 = v35;
            _os_log_impl(&dword_2962DD000, v33, OS_LOG_TYPE_DEFAULT, "#I [%s]: Call back has been registered for this request 0x%04x", buf, 0x12u);
          }

          v36 = *(this + 28);
          v37 = *(*(v21 + 16) + 24);
          v40 = *(v36 + 8);
          v38 = v36 + 8;
          v39 = v40;
          do
          {
            v41 = *(v39 + 32);
            v29 = v41 >= v37;
            v42 = v41 < v37;
            if (v29)
            {
              v38 = v39;
            }

            v39 = *(v39 + 8 * v42);
          }

          while (v39);
          v43 = _Block_copy(*(v38 + 40));
          v43[2](v43, *(*(v21 + 16) + 26));
          _Block_release(v43);
        }

        else
        {
LABEL_38:
          (*(*this + 48))(this, v21 + 16);
        }
      }

      while (*(this + 22));
    }

    std::deque<qmi::ClientProxy::State::Transaction>::shrink_to_fit(this + 136);
    qmi::ClientProxy::State::checkIfLowPower_sync(this);
    v44 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
  }
}

void sub_2962E5700(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<qmi::ClientProxy::State::Transaction>::shrink_to_fit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 8);
    if (v3 >= 0x80)
    {
      operator delete(*v4);
      v4 = (*(a1 + 8) + 8);
      *(a1 + 8) = v4;
      v2 = *(a1 + 40);
      v3 = *(a1 + 32) - 128;
      *(a1 + 32) = v3;
    }

    i = *(a1 + 16);
    v6 = 16 * (i - v4) - 1;
    if (i == v4)
    {
      v6 = 0;
    }

    if (v6 - (v3 + v2) >= 0x80)
    {
      operator delete(*(i - 8));
      v4 = *(a1 + 8);
      i = *(a1 + 16) - 8;
      *(a1 + 16) = i;
    }

    v7 = *a1;
    v8 = i - v4;
    if (*(a1 + 24) - *a1 <= (i - v4))
    {
      return;
    }

LABEL_13:
    v9 = i - v4;
    if (i == v4)
    {
      v10 = 0;
      v11 = v8;
      goto LABEL_24;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = operator new(v8);
    v11 = &v10[v8];
    if ((v9 - 8) < 0x18 || (v10 - v4) < 0x20)
    {
      v14 = v10;
      v15 = v4;
    }

    else
    {
      v12 = ((v9 - 8) >> 3) + 1;
      v13 = v12 & 0x3FFFFFFFFFFFFFFCLL;
      v14 = &v10[v13 * 8];
      v15 = &v4[v13];
      v16 = (v4 + 2);
      v17 = v10 + 16;
      v18 = v12 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_24:
        *a1 = v10;
        *(a1 + 8) = v10;
        *(a1 + 16) = v11;
        *(a1 + 24) = &v10[v8];
        if (v7)
        {

          operator delete(v7);
        }

        return;
      }
    }

    do
    {
      v20 = *v15++;
      *v14 = v20;
      v14 += 8;
    }

    while (v14 != v11);
    goto LABEL_24;
  }

  v4 = *(a1 + 8);
  for (i = *(a1 + 16); i != v4; *(a1 + 16) = i)
  {
    operator delete(*(i - 8));
    v4 = *(a1 + 8);
    i = *(a1 + 16) - 8;
  }

  *(a1 + 32) = 0;
  v7 = *a1;
  v8 = i - v4;
  if (*(a1 + 24) - *a1 > (i - v4))
  {
    goto LABEL_13;
  }
}

void ATCSRouterIPCDriver::handleWriteReady(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN19ATCSRouterIPCDriver16handleWriteReadyEP22ATCSDispatcherCallbackPv_block_invoke;
  block[3] = &__block_descriptor_tmp_15_0;
  block[4] = a1;
  block[5] = a3;
  block[6] = a2;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  dispatch_async(*(a1 + 32), v4);
  _Block_release(v4);
}

void std::__split_buffer<qmi::ClientProxy::State::Transaction *>::emplace_back<qmi::ClientProxy::State::Transaction *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,0>(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v66 = a3;
  if (a2 == a4)
  {
    if (a3 != a5)
    {
      v60 = a5;
      v62 = a4;
      v58 = a1;
      v9 = *a6;
      v10 = a5;
      for (i = a7; ; i = v19 + 4080)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((i - v9) >> 3);
        v13 = (0xAAAAAAAAAAAAAAABLL * ((v10 - a3) >> 3)) >= v12 ? v12 : 0xAAAAAAAAAAAAAAABLL * ((v10 - a3) >> 3);
        if (v13)
        {
          v14 = (v10 - 8);
          v15 = -24 * v13;
          v7 = i;
          do
          {
            *(v7 - 24) = *(v14 - 8);
            v7 -= 24;
            v17 = *(v14 - 1);
            v16 = *v14;
            if (*v14)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v18 = *(i - 8);
            *(i - 16) = v17;
            *(i - 8) = v16;
            if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v18->__on_zero_shared)(v18);
              std::__shared_weak_count::__release_weak(v18);
            }

            v14 -= 3;
            i = v7;
            v15 += 24;
          }

          while (v15);
        }

        else
        {
          v7 = i;
        }

        v10 -= 24 * v13;
        a3 = v66;
        if (v10 == v66)
        {
          break;
        }

        v19 = *--v8;
        v9 = v19;
      }

      if (*v8 + 4080 == v7)
      {
        v57 = v8[1];
        ++v8;
        v7 = v57;
      }

      a1 = v58;
      a5 = v60;
      a4 = v62;
    }

    *a1 = a4;
    a1[1] = a5;
    a1[2] = v8;
    a1[3] = v7;
  }

  else
  {
    v59 = a1;
    v61 = a5;
    v20 = *a4;
    v63 = a4;
    if (*a4 != a5)
    {
      v21 = *a6;
      v22 = a5;
      for (j = a7; ; j = v31 + 4080)
      {
        v24 = 0xAAAAAAAAAAAAAAABLL * ((j - v21) >> 3);
        v25 = (0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 3)) >= v24 ? v24 : 0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 3);
        if (v25)
        {
          v26 = (v22 - 8);
          v27 = -24 * v25;
          v7 = j;
          do
          {
            *(v7 - 24) = *(v26 - 8);
            v7 -= 24;
            v29 = *(v26 - 1);
            v28 = *v26;
            if (*v26)
            {
              atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
            }

            v30 = *(j - 8);
            *(j - 16) = v29;
            *(j - 8) = v28;
            if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
            }

            v26 -= 3;
            j = v7;
            v27 += 24;
          }

          while (v27);
        }

        else
        {
          v7 = j;
        }

        v22 -= 24 * v25;
        if (v22 == v20)
        {
          break;
        }

        v31 = *--v8;
        v21 = v31;
      }

      if (*v8 + 4080 == v7)
      {
        v32 = v8[1];
        ++v8;
        v7 = v32;
      }

      a4 = v63;
      a3 = v66;
    }

    v33 = a4 - 1;
    if (a4 - 1 != a2)
    {
      v34 = *v8;
      do
      {
        while (1)
        {
          v65 = v33;
          v35 = *v33;
          v36 = *v33 + 4080;
          for (k = v7; ; k = v34 + 4080)
          {
            v38 = v8;
            v39 = 0xAAAAAAAAAAAAAAABLL * ((k - v34) >> 3);
            v40 = (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3)) >= v39 ? v39 : 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3);
            if (v40)
            {
              v41 = (v36 - 8);
              v42 = -24 * v40;
              v7 = k;
              do
              {
                *(v7 - 24) = *(v41 - 8);
                v7 -= 24;
                v44 = *(v41 - 1);
                v43 = *v41;
                if (*v41)
                {
                  atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
                }

                v45 = *(k - 8);
                *(k - 16) = v44;
                *(k - 8) = v43;
                if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v45->__on_zero_shared)(v45);
                  std::__shared_weak_count::__release_weak(v45);
                }

                v41 -= 3;
                k = v7;
                v42 += 24;
              }

              while (v42);
            }

            else
            {
              v7 = k;
            }

            v36 -= 24 * v40;
            if (v36 == v35)
            {
              break;
            }

            v8 = v38 - 1;
            v34 = *(v38 - 1);
          }

          v8 = v38;
          v34 = *v38;
          if (*v38 + 4080 == v7)
          {
            break;
          }

          a3 = v66;
          v33 = v65 - 1;
          if (v65 - 1 == a2)
          {
            goto LABEL_57;
          }
        }

        v8 = v38 + 1;
        v34 = v38[1];
        v7 = v34;
        a3 = v66;
        v33 = v65 - 1;
      }

      while (v65 - 1 != a2);
    }

LABEL_57:
    v46 = *v33 + 4080;
    if (v46 != a3)
    {
      v47 = *v8;
      for (m = v7; ; m = v47 + 4080)
      {
        v49 = v8;
        v50 = 0xAAAAAAAAAAAAAAABLL * ((m - v47) >> 3);
        v51 = (0xAAAAAAAAAAAAAAABLL * ((v46 - a3) >> 3)) >= v50 ? v50 : 0xAAAAAAAAAAAAAAABLL * ((v46 - a3) >> 3);
        if (v51)
        {
          v52 = (v46 - 8);
          v53 = -24 * v51;
          v7 = m;
          do
          {
            *(v7 - 24) = *(v52 - 8);
            v7 -= 24;
            v55 = *(v52 - 1);
            v54 = *v52;
            if (*v52)
            {
              atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
            }

            v56 = *(m - 8);
            *(m - 16) = v55;
            *(m - 8) = v54;
            if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v56->__on_zero_shared)(v56);
              std::__shared_weak_count::__release_weak(v56);
            }

            v52 -= 3;
            m = v7;
            v53 += 24;
          }

          while (v53);
        }

        else
        {
          v7 = m;
        }

        v46 -= 24 * v51;
        a3 = v66;
        if (v46 == v66)
        {
          break;
        }

        v8 = v49 - 1;
        v47 = *(v49 - 1);
      }

      v8 = v49;
      if (*v49 + 4080 == v7)
      {
        v8 = v49 + 1;
        v7 = v49[1];
      }
    }

    *v59 = v63;
    v59[1] = v61;
    v59[2] = v8;
    v59[3] = v7;
  }
}

void qmi::ClientProxy::State::handleSentMessage_sync(qmi::ClientProxy::State *this, int a2)
{
  v2 = *(this + 12);
  if (*(this + 13) != v2)
  {
    v3 = *(this + 15);
    v4 = (v2 + 8 * (v3 >> 7));
    v5 = *v4;
    v6 = *v4 + 32 * (v3 & 0x7F);
    v7 = *(v2 + (((*(this + 16) + v3) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 16) + v3) & 0x7F);
    if (v6 != v7)
    {
      while (*(*(v6 + 16) + 26) != a2)
      {
        v6 += 32;
        if (v6 - v5 == 4096)
        {
          v18 = v4[1];
          ++v4;
          v5 = v18;
          v6 = v18;
        }

        if (v6 == v7)
        {
          return;
        }
      }
    }

    if (v6 != v7)
    {
      if (!*(this + 2) || (v8 = a2, v9 = *(this + 1), (v11 = std::__shared_weak_count::lock(*(this + 2))) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v12 = v11;
      v13 = this;
      p_shared_weak_owners = &v11->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = v8;
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v12);
        v13 = this;
        v15 = v8;
      }

      v16 = *(*(v6 + 16) + 24);
      v17 = *(v13 + 3);
      v19[0] = MEMORY[0x29EDCA5F8];
      v19[1] = 1174405120;
      v19[2] = ___ZN3qmi11ClientProxy5State22handleSentMessage_syncEt_block_invoke;
      v19[3] = &__block_descriptor_tmp_26_0;
      v19[4] = v13;
      v19[5] = v9;
      v20 = v12;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v21 = v15;
      v22 = v16;
      qmi::ClientProxy::State::Transaction::startTimer(v6, v17, v19);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_2962E6264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void qmi::ClientProxy::State::Transaction::startTimer(unsigned int *a1, NSObject *a2, uint64_t a3)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance);
  v6 = off_2A18999A0;
  if (!off_2A18999A0)
  {
    v7 = operator new(0x28uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = &unk_2A1D47A58;
    v7[3] = 0;
    v7[4] = 0;
    ATCSAdaptiveTimer::initialize((v7 + 3));
    v24 = 0;
    v25 = 0;
    v8 = off_2A18999A8;
    off_2A18999A0 = v7 + 3;
    off_2A18999A8 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v6 = off_2A18999A0;
  }

  v9 = off_2A18999A8;
  if (off_2A18999A8)
  {
    atomic_fetch_add_explicit(off_2A18999A8 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance);
  v10 = v6[1];
  v22 = *v6;
  v23 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v11 = v22;
  object = a2;
  __p = operator new(0x19uLL);
  v21 = xmmword_296335C00;
  strcpy(__p, "clientproxy_transaction");
  v12 = *a1;
  if (a2)
  {
    dispatch_retain(a2);
  }

  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1107296256;
  v17[2] = ___ZN3qmi11ClientProxy5State11Transaction10startTimerEP16dispatch_queue_sU13block_pointerFvvE_block_invoke;
  v17[3] = &__block_descriptor_tmp_40_0;
  v17[4] = a3;
  aBlock = _Block_copy(v17);
  ctu::TimerService::createOneShotTimer(v11, &__p, 0, 1000 * v12, &object, &aBlock);
  v13 = v24;
  v24 = 0;
  v14 = *(a1 + 1);
  *(a1 + 1) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v24;
    v24 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v16 = v23;
  if (v23)
  {
    if (!atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

void sub_2962E65E0(_Unwind_Exception *a1)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v1 - 80);
  pthread_mutex_unlock(&ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_2962E6610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void sub_2962E666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3qmi11ClientProxy5StateEEE(uint64_t result, uint64_t a2)
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

void ctu::TimerService::createOneShotTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 16))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2962E6770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void qmi::Client::State::handleResponse_sync(uint64_t a1, xpc_object_t *a2, void *a3)
{
  int64 = xpc_dictionary_get_int64(*a2, "txid");
  v8 = *(a1 + 152);
  v7 = *(a1 + 160);
  if (v8 != v7)
  {
    while (int64 != *v8)
    {
      v8 += 6;
      if (v8 == v7)
      {
        return;
      }
    }
  }

  if (v8 != v7)
  {
    if (MEMORY[0x29C259C10](a3) == MEMORY[0x29EDCA9F8])
    {
      length = xpc_data_get_length(a3);
      if (!(length >> 16))
      {
        v27 = length;
        bytes_ptr = xpc_data_get_bytes_ptr(a3);
        v11 = operator new(0x58uLL);
        QMIServiceMsg::QMIServiceMsg(v11, bytes_ptr, v27, 1);
LABEL_12:
        qmi::Client::State::postResponseToClient_sync(a1, v11, v8 + 2);
        v14 = v8 + 6;
        v15 = *(a1 + 160);
        if (v8 + 6 == v15)
        {
          goto LABEL_29;
        }

        while (1)
        {
          v16 = *v14;
          v18 = *(v14 + 1);
          v17 = *(v14 + 2);
          if (v17)
          {
            v19 = _Block_copy(v17);
            if (v18)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v19 = 0;
            if (v18)
            {
LABEL_19:
              add_explicit = atomic_fetch_add_explicit((v18 + 8), 1u, memory_order_relaxed);
              if (add_explicit < 0)
              {
                _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
              }
            }
          }

          *(v14 - 6) = v16;
          v21 = *(v14 - 2);
          v22 = *(v14 - 1);
          *(v14 - 2) = v18;
          *(v14 - 1) = v19;
          if (v21)
          {
            add = atomic_fetch_add(v21 + 2, 0xFFFFFFFF);
            if (add <= 0)
            {
              _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
            }

            else if (add == 1)
            {
              (*(*v21 + 8))(v21);
            }
          }

          if (v22)
          {
            _Block_release(v22);
          }

          v14 += 6;
          if (v14 == v15)
          {
            v15 = *(a1 + 160);
            v8 = v14 - 6;
LABEL_29:
            while (v15 != v8)
            {
              v24 = *(v15 - 2);
              if (v24)
              {
                v25 = atomic_fetch_add(v24 + 2, 0xFFFFFFFF);
                if (v25 <= 0)
                {
                  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", v25, 0);
                }

                else if (v25 == 1)
                {
                  (*(*v24 + 8))(v24);
                }
              }

              v26 = *(v15 - 1);
              if (v26)
              {
                _Block_release(v26);
              }

              v15 -= 6;
            }

            *(a1 + 160) = v8;
            return;
          }
        }
      }
    }

    else if (MEMORY[0x29C259C10](a3) == MEMORY[0x29EDCAA40])
    {
      v9 = xpc_dictionary_get_int64(*a2, "internal_error");
      v10 = *(*(v8 + 1) + 12);
      v11 = operator new(0x58uLL);
      *(v11 + 2) = 0;
      *v11 = &unk_2A1D49040;
      *(v11 + 6) = v10;
      *(v11 + 14) = 0;
      *(v11 + 30) = 0;
      *(v11 + 22) = 0;
      *(v11 + 19) = 0;
      *(v11 + 10) = 1;
      *(v11 + 22) = v9;
LABEL_11:
      *(v11 + 3) = 0u;
      *(v11 + 4) = 0u;
      goto LABEL_12;
    }

    v13 = *(*(v8 + 1) + 12);
    v11 = operator new(0x58uLL);
    *(v11 + 2) = 0;
    *v11 = &unk_2A1D49040;
    *(v11 + 6) = v13;
    *(v11 + 14) = 0;
    *(v11 + 30) = 0;
    *(v11 + 22) = 0;
    *(v11 + 19) = 0;
    *(v11 + 10) = 1;
    *(v11 + 22) = 255;
    goto LABEL_11;
  }
}

void sub_2962E6B98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ctu15XpcServerHelper12acceptClientIN3qmi6Client5StateEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(uint64_t a1, xpc_object_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v16 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      object[1] = v7;
      if (!v7)
      {
        goto LABEL_23;
      }

      v8 = MEMORY[0x29C259C10](a2);
      v9 = MEMORY[0x29EDCAA00];
      if (v8 != MEMORY[0x29EDCAA00])
      {
        if (v8 != MEMORY[0x29EDCAA18])
        {
          goto LABEL_23;
        }

        v10 = *(a1 + 48);
        if (v10)
        {
          xpc_retain(v10);
          object[0] = a2;
          if (a2)
          {
LABEL_8:
            xpc_retain(a2);
LABEL_19:
            qmi::Client::State::handleClientError(v7, v11, object);
            xpc_release(a2);
            xpc_release(v10);
LABEL_23:
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }

            return;
          }
        }

        else
        {
          v10 = xpc_null_create();
          object[0] = a2;
          if (a2)
          {
            goto LABEL_8;
          }
        }

        a2 = xpc_null_create();
        object[0] = a2;
        goto LABEL_19;
      }

      v12 = *(a1 + 48);
      if (v12)
      {
        xpc_retain(*(a1 + 48));
        if (a2)
        {
LABEL_11:
          xpc_retain(a2);
          object[0] = a2;
          goto LABEL_14;
        }
      }

      else
      {
        v12 = xpc_null_create();
        if (a2)
        {
          goto LABEL_11;
        }
      }

      a2 = xpc_null_create();
      object[0] = a2;
      if (!a2)
      {
        v13 = xpc_null_create();
        a2 = 0;
        goto LABEL_21;
      }

LABEL_14:
      if (MEMORY[0x29C259C10](a2) == v9)
      {
        xpc_retain(a2);
        goto LABEL_22;
      }

      v13 = xpc_null_create();
LABEL_21:
      object[0] = v13;
LABEL_22:
      qmi::Client::State::handleClientMessage(v7, v14, object);
      xpc_release(object[0]);
      object[0] = 0;
      xpc_release(a2);
      xpc_release(v12);
      v6 = v16;
      if (!v16)
      {
        return;
      }

      goto LABEL_23;
    }
  }
}

void sub_2962E6DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(v11);
  xpc_release(v12);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void qmi::ClientProxy::State::handleResponse_sync(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v69 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 96);
  if (*(a1 + 104) != v4)
  {
    v6 = *(a1 + 120);
    v7 = (v4 + 8 * (v6 >> 7));
    v8 = *v7;
    v9 = *v7 + 32 * (v6 & 0x7F);
    v10 = *(v4 + (((*(a1 + 128) + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 128) + v6) & 0x7F);
    if (v9 != v10)
    {
      while (*(*(v9 + 16) + 26) != a4)
      {
        v9 += 32;
        if (v9 - v8 == 4096)
        {
          v13 = *(v7 + 1);
          v7 += 8;
          v8 = v13;
          v9 = v13;
        }

        if (v9 == v10)
        {
          goto LABEL_49;
        }
      }

      v14 = xpc_dictionary_create(0, 0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C259C10](v14) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      v16 = xpc_data_create(a2, a3);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      xpc_dictionary_set_value(v15, "resp_qmi_message", v16);
      v17 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v17);
      v18 = xpc_int64_create(*(*(v9 + 16) + 26));
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v15, "txid", v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      v20 = *(a1 + 232);
      if (!v20)
      {
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v22 = *v22;
          }

          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_error_impl(&dword_2962DD000, v21, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when handling response", buf, 0xCu);
        }

        goto LABEL_48;
      }

      object = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v20 + 24))(v20, &object);
      xpc_release(object);
      object = 0;
      v23 = *(a1 + 120);
      v24 = *(a1 + 96);
      v25 = *(a1 + 104);
      v26 = (v24 + 8 * (v23 >> 7));
      if (v25 == v24)
      {
        v27 = 0;
        if (!v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = (*v26 + 32 * (*(a1 + 120) & 0x7FLL));
        if (v27 == v9)
        {
LABEL_28:
          v28 = *v26;
          v29 = (v24 + 8 * (v23 >> 7));
          goto LABEL_38;
        }
      }

      v30 = ((v9 - *v7) >> 5) + 16 * (v7 - v26);
      v28 = *v26;
      v31 = v30 - ((v27 - *v26) >> 5);
      if (v31)
      {
        if (v30 < 1)
        {
          v33 = 127 - v30;
          v29 = &v26[-(v33 >> 7)];
          v28 = *v29;
          v32 = ~v33 & 0x7FLL;
        }

        else
        {
          v29 = &v26[v30 >> 7];
          v28 = *v29;
          v32 = v30 & 0x7F;
        }

        v9 = v28 + 32 * v32;
        v34 = *(a1 + 128);
        if (v31 > (v34 - 1) >> 1)
        {
          v35 = (v9 - v28) >> 5;
          if (v35 < 0)
          {
            v49 = 126 - v35;
            v36 = ~v49;
            v37 = &v29[-2 * (v49 >> 7)];
          }

          else
          {
            v36 = v35 + 1;
            v37 = &v29[2 * ((v35 + 1) >> 7)];
          }

          v50 = *v37;
          v51 = (*v37 + 32 * (v36 & 0x7F));
          v52 = v34 + v23;
          v53 = (v24 + 8 * (v52 >> 7));
          if (v25 == v24)
          {
            v54 = 0;
          }

          else
          {
            v54 = &(*v53)[8 * (v52 & 0x7F)];
          }

          if (v37 == v53)
          {
            memset(buf, 170, sizeof(buf));
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v51, v54, v29, v9);
          }

          else
          {
            memset(buf, 170, sizeof(buf));
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v51, (v50 + 4096), v29, v9);
            v55 = *&buf[8];
            v56 = *&buf[16];
            v57 = (v37 + 2);
            if (v37 + 2 != v53)
            {
              do
              {
                v58 = *v57;
                memset(buf, 170, sizeof(buf));
                std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v58, v58 + 1024, v55, v56);
                v55 = *&buf[8];
                v56 = *&buf[16];
                ++v57;
              }

              while (v57 != v53);
            }

            v59 = *v53;
            memset(buf, 170, sizeof(buf));
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v59, v54, v55, v56);
          }

          qmi::ClientProxy::State::Transaction::~Transaction(*&buf[16]);
          v61 = *(a1 + 96);
          v60 = *(a1 + 104);
          v62 = v60 - v61;
          v63 = v60 == v61;
          v65 = *(a1 + 120);
          v64 = *(a1 + 128);
          *(a1 + 128) = v64 - 1;
          v66 = 16 * v62 - 1;
          if (v63)
          {
            v66 = 0;
          }

          if ((v66 - (v64 + v65) + 1) >= 0x100)
          {
            operator delete(*(v60 - 8));
            *(a1 + 104) -= 8;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v29 = (v24 + 8 * (v23 >> 7));
        v9 = v27;
      }

LABEL_38:
      v38 = (v9 - v28) >> 5;
      if (v38 < 0)
      {
        v42 = 126 - v38;
        v40 = &v29[-2 * (v42 >> 7)];
        v41 = *v40 + 32 * (~v42 & 0x7F);
        if (v29 == v26)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v39 = v38 + 1;
        v40 = &v29[2 * (v39 >> 7)];
        v41 = *v40 + 32 * (v39 & 0x7F);
        if (v29 == v26)
        {
LABEL_40:
          std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v27, v9, v40, v41);
LABEL_45:
          qmi::ClientProxy::State::Transaction::~Transaction(v27);
          v47 = vaddq_s64(*(a1 + 120), xmmword_296335BF0);
          *(a1 + 120) = v47;
          if (v47.i64[0] >= 0x100uLL)
          {
            operator delete(**(a1 + 96));
            *(a1 + 96) += 8;
            *(a1 + 120) -= 128;
          }

LABEL_47:
          std::deque<qmi::ClientProxy::State::Transaction>::shrink_to_fit(a1 + 88);
          qmi::ClientProxy::State::sendIfPossible_sync(a1);
LABEL_48:
          xpc_release(v15);
          goto LABEL_49;
        }
      }

      memset(buf, 170, sizeof(buf));
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v28, v9, v40, v41);
      v43 = *&buf[8];
      v44 = *&buf[16];
      v45 = (v29 - 2);
      if (v29 - 2 != v26)
      {
        do
        {
          v46 = *v45;
          memset(buf, 170, sizeof(buf));
          std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v46, v46 + 4096, v43, v44);
          v43 = *&buf[8];
          v44 = *&buf[16];
          --v45;
        }

        while (v45 != v26);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(buf, v27, *v45 + 4096, v43, v44);
      goto LABEL_45;
    }
  }

LABEL_49:
  v48 = *MEMORY[0x29EDCA608];
}

void sub_2962E7430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 != a3)
  {
    v23 = result;
    v8 = *a4;
    v9 = a3;
    while (1)
    {
      v10 = (a5 - v8) >> 5;
      if ((v9 - v7) >> 5 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = (v9 - v7) >> 5;
      }

      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = v9 + v12;
          v14 = a5 + v12;
          v15 = *(v9 + v12 - 32);
          v16 = *(v9 + v12 - 8);
          v17 = *(v9 + v12 - 24);
          *(v13 - 24) = 0;
          *(v13 - 16) = 0;
          *(v13 - 8) = 0;
          v18 = *(a5 + v12 - 8);
          *(v14 - 8) = v16;
          v19 = *(a5 + v12 - 24);
          *(v14 - 24) = v17;
          *(v14 - 32) = v15;
          if (v19)
          {
            (*(*v19 + 16))(v19);
            (*(*v19 + 8))(v19);
          }

          if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }

          v12 -= 32;
        }

        while (-32 * v11 != v12);
        a5 += v12;
      }

      v9 -= 32 * v11;
      if (v9 == v7)
      {
        break;
      }

      v20 = *--v6;
      v8 = v20;
      a5 = v20 + 4096;
    }

    if (*v6 + 4096 == a5)
    {
      v21 = v6[1];
      ++v6;
      a5 = v21;
    }

    v7 = a3;
    result = v23;
  }

  *result = v7;
  result[1] = v6;
  result[2] = a5;
  return result;
}

void qmi::Client::State::postResponseToClient_sync(uint64_t a1, uint64_t a2, const void **a3)
{
  add_explicit = atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  if (add_explicit < 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
    v7 = *(a1 + 136);
    v8 = *a3;
    if (*a3)
    {
LABEL_3:
      v9 = _Block_copy(v8);
      v10 = *(a1 + 264);
      v11 = *(a1 + 272);
      if (!v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *(a1 + 136);
    v8 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v10 = *(a1 + 264);
  v11 = *(a1 + 272);
  if (v11)
  {
LABEL_4:
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

LABEL_5:
  v12 = *(a1 + 256);
  v13 = operator new(0x28uLL);
  *v13 = a2;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  *(v13 + 32) = v12;

  dispatch_async_f(v7, v13, dispatch::async<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0,std::default_delete<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0>>)::{lambda(void *)#1}::__invoke);
}

void dispatch::async<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0,std::default_delete<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = a1[3];
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    v4 = 1;
    if (*(a1 + 32) != 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = a1[2] == 0;
  if (*(a1 + 32) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = a1[1];
  if (v5)
  {
    (*(v5 + 16))(v5, *a1);
  }

LABEL_10:
  v6 = *a1;
  add = atomic_fetch_add((*a1 + 8), 0xFFFFFFFF);
  if (add <= 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
  }

  else if (v6 && add == 1)
  {
    (*(*v6 + 8))(v6);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  v9 = v8[3];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v8[1];
  if (v10)
  {
    _Block_release(v10);
  }

  operator delete(v8);
}

void sub_2962E7928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0,std::default_delete<qmi::Client::State::postResponseToClient_sync(QMIServiceMsg const*,dispatch::block<void({block_pointer})(QMIServiceMsg const&)> const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZZNK3qmi12ClientRouter21setIndHandlerInternalEtNSt3__18functionIFvNS_16SubscriptionTypeERK13QMIServiceMsgEEEENK3__0clIS3_NS_11ClientStateEEEDaT_RKT0__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4, a2);
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3qmi11ClientProxy5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t qmi::Client::XPCState::sendOrQueue_sync(uint64_t a1, xpc_object_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C259C10](*(a1 + 128)) == MEMORY[0x29EDCA9F0])
  {
    xpc_connection_send_message(*(a1 + 128), *a2);
LABEL_15:
    result = 1;
    goto LABEL_16;
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5 >= *(v4 + 24))
    {
      v11 = std::vector<xpc::dict>::__emplace_back_slow_path<xpc::dict const&>((v4 + 8), *a2);
    }

    else
    {
      v6 = *a2;
      *v5 = *a2;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        *v5 = xpc_null_create();
      }

      v11 = v5 + 1;
    }

    *(v4 + 16) = v11;
    goto LABEL_15;
  }

  v7 = *(a1 + 40);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v10 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v10 = *v10;
    }

    v13 = 136315138;
    v14 = v10;
    _os_log_impl(&dword_2962DD000, v7, OS_LOG_TYPE_DEFAULT, "#E [%s] ****** Client message DROPPED because no connection", &v13, 0xCu);
    result = 0;
  }

LABEL_16:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2962E7B28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN3ctu15XpcClientHelper9setServerIN3qmi12EurTransportEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[4];
  v13 = 0;
  v14 = 0;
  v4 = a1[6];
  if (v4)
  {
    v14 = std::__shared_weak_count::lock(v4);
    if (!v14)
    {
      return;
    }

    v6 = a1[5];
    v13 = v6;
    if (v6)
    {
      v7 = MEMORY[0x29C259C10](a2);
      v8 = MEMORY[0x29EDCAA00];
      if (v7 != MEMORY[0x29EDCAA00])
      {
        if (v7 == MEMORY[0x29EDCAA18] && *v3 == a1[7])
        {
          v12 = a2;
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            a2 = xpc_null_create();
            v12 = a2;
          }

          v11 = *(v6 + 88);
          if (v11)
          {
            (*(*v11 + 48))(v11, &v12);
            a2 = v12;
          }

          xpc_release(a2);
        }

        goto LABEL_18;
      }

      if (a2)
      {
        xpc_retain(a2);
        v12 = a2;
      }

      else
      {
        a2 = xpc_null_create();
        v12 = a2;
        if (!a2)
        {
          v9 = xpc_null_create();
          a2 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x29C259C10](a2) == v8)
      {
        xpc_retain(a2);
        v9 = a2;
LABEL_17:
        qmi::EurTransport::handleMessage(v6, &v12);
        xpc_release(v9);
        v12 = 0;
        xpc_release(a2);
        goto LABEL_18;
      }

      v9 = xpc_null_create();
LABEL_16:
      v12 = v9;
      goto LABEL_17;
    }
  }

LABEL_18:
  v10 = v14;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_2962E7D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11)
{
  xpc_release(object);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void qmi::EurTransport::handleMessage(uint64_t a1, void **a2)
{
  if (*(a1 + 56))
  {
    v3 = *a2;
    object = v3;
    if (v3)
    {
      xpc_retain(v3);
      v4 = *(a1 + 56);
      if (v4)
      {
LABEL_4:
        (*(*v4 + 48))(v4, &object);
        xpc_release(object);
        return;
      }
    }

    else
    {
      object = xpc_null_create();
      v4 = *(a1 + 56);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }
}

pthread_t ATCSMutex::lock(pthread_mutex_t **this)
{
  v1 = *this;
  pthread_mutex_lock(*this);
  result = pthread_self();
  v1[1].__sig = result;
  return result;
}

uint64_t ATCSMutex::unlock(pthread_mutex_t **this)
{
  v1 = *this;
  pthread_self();
  v1[1].__sig = 0;

  return pthread_mutex_unlock(v1);
}

void QMux::getName(QMux *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = (*(*v4 + 40))(v4);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v6, *(v6 + 8));
    }

    else
    {
      v7 = *v6;
      *(a2 + 16) = *(v6 + 16);
      *a2 = v7;
    }
  }

  else
  {
    *(a2 + 23) = 12;
    strcpy(a2, "(empty QMux)");
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void QMux::enterPowerMode(void *a1, dispatch_object_t object, int a3)
{
  v3 = *a1;
  if (*a1)
  {
    if (object)
    {
      dispatch_retain(object);
      v3 = *a1;
    }

    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (object)
    {
      dispatch_retain(object);
      dispatch_group_enter(object);
    }

    v8 = v3[2];
    if (!v8 || (v9 = v3[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v11 = v10;
    v12 = operator new(0x20uLL);
    *v12 = v3;
    v12[1] = v7;
    v12[2] = object;
    *(v12 + 6) = a3;
    v13 = v3[3];
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = operator new(0x18uLL);
    *v14 = v12;
    v14[1] = v9;
    v14[2] = v11;
    dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0>(QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0,dispatch_queue_s *::default_delete<QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!object)
      {
        return;
      }
    }

    else
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      if (!object)
      {
        return;
      }
    }

    dispatch_release(object);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0>(QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0,dispatch_queue_s *::default_delete<QMux::enterPowerMode(dispatch_group_s *,qmi::PowerProfile)::$_0>>)::{lambda(void *)#1}::__invoke(QMux::State ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v7 = *a1;
  QMux::State::enterPowerMode_sync(**a1, v7[2], *(v7 + 6), a4, a5, a6, a7);
  v8 = v7[2];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v7[2];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  v10 = v7[1];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    operator delete(v7);
    v11 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v7);
    v11 = a1;
    if (!a1)
    {
      return;
    }
  }

  v12 = v11[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v11;
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v11 = v13;
  }

  operator delete(v11);
}

void sub_2962E8298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::flush(dispatch_group_s *)::$_0,std::default_delete<QMux::flush(dispatch_group_s *)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void QMux::State::enterPowerMode_sync(QMux::State *this, dispatch_object_t object, char *a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v7 = a3;
  v43 = *MEMORY[0x29EDCA608];
  v10 = *(this + 52);
  if (v10 <= 3)
  {
    if ((v10 - 1) >= 3)
    {
      if (v10)
      {
        goto LABEL_57;
      }

      v22 = *(this + 5);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_57;
      }

      v23 = (this + 48);
      if (*(this + 71) < 0)
      {
        v23 = *v23;
      }

      *buf = 136315650;
      v40 = v23;
      v41 = 1024;
      *v42 = v7;
      *&v42[4] = 2080;
      *&v42[6] = "kStopped";
      goto LABEL_56;
    }

    if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
    {
      if (*(this + 27) || *(this + 29))
      {
        v17 = *(this + 5);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v31 = (this + 48);
          if (*(this + 71) < 0)
          {
            v31 = *v31;
          }

          v32 = *(this + 52) - 1;
          if (v32 > 4)
          {
            v33 = "kStopped";
          }

          else
          {
            v33 = off_29EE318B8[v32];
          }

          QMux::State::powerStateString_sync(this, __p);
          if (v38 >= 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = __p[0];
          }

          *buf = 136315650;
          v40 = v31;
          v41 = 2080;
          *v42 = v33;
          *&v42[8] = 2080;
          *&v42[10] = v34;
          _os_log_error_impl(&dword_2962DD000, v17, OS_LOG_TYPE_ERROR, "[%s] Error with mainState=%s, powerState=%s", buf, 0x20u);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v18 = operator new(0x20uLL);
        v35 = v18;
        v36 = xmmword_296336A60;
        strcpy(v18, "Baseband_QMI_LowPower_Error");
        QMux::State::dumpSystemLog(this, &v35);
        operator delete(v18);
        v19 = *(this + 27);
        *(this + 27) = 0;
        if (v19)
        {
          dispatch_group_leave(v19);
          dispatch_release(v19);
        }

        v20 = *(this + 29);
        *(this + 29) = 0;
        if (v20)
        {
          dispatch_group_leave(v20);
          dispatch_release(v20);
        }
      }
    }

    else
    {
      if (*(this + 27))
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x50E, "!fPowerDownState", "is not", "true", v15);
      }

      if (*(this + 29))
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x50F, "!fPowerUpState", "is not", "true", v15);
      }
    }

    if (v7)
    {
      if (object)
      {
        dispatch_retain(object);
        dispatch_retain(object);
        dispatch_group_enter(object);
      }

      v26 = *(this + 27);
      *(this + 27) = object;
      if (v26)
      {
        dispatch_group_leave(v26);
        dispatch_release(v26);
      }

      if (object)
      {
        dispatch_release(object);
      }

      QMux::State::powerDown_sync(this, v11, v12, v13, v14, v15, v16);
      goto LABEL_57;
    }

    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = (this + 48);
      if (*(this + 71) < 0)
      {
        v27 = *v27;
        v28 = *(this + 52) - 1;
        if (v28 <= 4)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v28 = *(this + 52) - 1;
        if (v28 <= 4)
        {
LABEL_52:
          v29 = off_29EE318B8[v28];
LABEL_55:
          *buf = 136315650;
          v40 = v27;
          v41 = 1024;
          *v42 = 0;
          *&v42[4] = 2080;
          *&v42[6] = v29;
LABEL_56:
          _os_log_impl(&dword_2962DD000, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] enterPowerMode(%d) ignored (QMux is %s)", buf, 0x1Cu);
          goto LABEL_57;
        }
      }

      v29 = "kStopped";
      goto LABEL_55;
    }

LABEL_57:
    v30 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v10 == 4)
  {
    if (a3)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x4F8, "targetProfile", "==", "qmi::kQMIPower_Normal", a3, 0);
    }

    if (*(this + 27))
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x4F9, "!fPowerDownState", "is not", "true", a6);
    }

    if (*(this + 29))
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x4FA, "!fPowerUpState", "is not", "true", a6);
    }

    if (object)
    {
      dispatch_retain(object);
      dispatch_retain(object);
      dispatch_group_enter(object);
    }

    v24 = *(this + 29);
    *(this + 29) = object;
    if (v24)
    {
      dispatch_group_leave(v24);
      dispatch_release(v24);
    }

    if (object)
    {
      dispatch_release(object);
    }

    v25 = *MEMORY[0x29EDCA608];

    QMux::State::powerUp_sync(this);
  }

  else
  {
    if (v10 != 5)
    {
      goto LABEL_57;
    }

    v21 = *MEMORY[0x29EDCA608];

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x4F0, "false", "is not", "true", "No way to call _sync functions after in kOffline; refs should be gone!", a7);
  }
}

void QMux::State::powerUp_sync(QMux::State *this)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 48);
    if (*(this + 71) < 0)
    {
      v7 = *v7;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = v7;
    _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Exiting low power mode", &v23, 0xCu);
  }

  QMux::State::setMainState(this, 3, v3, v4, v5, v6);
  if (!*(this + 29))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x524, "fPowerUpState", "is not", "true", v8);
  }

  QMIControl::setPowerMode_sync(*(this + 9), 0);
  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = (this + 48);
    if (*(this + 71) < 0)
    {
      v10 = *v10;
    }

    LODWORD(v23) = 136315138;
    *(&v23 + 4) = v10;
    _os_log_impl(&dword_2962DD000, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] EXTRA:     -- wait for QMIControl to set QMI to power up", &v23, 0xCu);
  }

  v11 = *(this + 29);
  if (v11)
  {
    dispatch_retain(*(this + 29));
  }

  v12 = dispatch_group_create();
  (*(**(this + 9) + 120))(*(this + 9), v12);
  v13 = *(this + 2);
  if (!v13 || (v14 = std::__shared_weak_count::lock(v13)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 2);
  if (!v16 || (v17 = *(this + 1), (v18 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&v23 = v17;
  *(&v23 + 1) = v18;
  atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v18;
    (v18->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

  v24 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v20 = *(this + 3);
  v21 = operator new(0x18uLL);
  *v21 = v23;
  v21[2] = v11;
  dispatch_group_notify_f(v12, v20, v21, dispatch::detail::group_notify<QMux::State::powerUp_sync(void)::$_0>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerUp_sync(void)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::__shared_weak_count::__release_weak(v15);
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_2962E8B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  QMux::State::powerUp_sync(void)::$_0::~$_0(&a9);
  std::__shared_weak_count::__release_weak(v11);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v9)
  {
    dispatch_release(v9);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void QMux::State::setMainState(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 208);
  if (v6 == 5)
  {
    goto LABEL_57;
  }

  v7 = a2;
  if (v6 != a2)
  {
    *(a1 + 208) = a2;
    v9 = *(a1 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

LABEL_10:
    if ((v7 - 1) > 4)
    {
      v16 = "kStopped";
    }

    else
    {
      v16 = off_29EE318B8[v7 - 1];
    }

    v40 = 136315138;
    v41 = v16;
    _os_log_impl(&dword_2962DD000, v9, OS_LOG_TYPE_DEFAULT, "#I Setting state to %s", &v40, 0xCu);
    v7 = *(a1 + 208);
    if (v7 <= 3)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x217, "fMainState", "!=", "state", a6);
  *(a1 + 208) = v7;
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v7 <= 3)
  {
LABEL_5:
    if (v7)
    {
      if (v7 == 3 && *(a1 + 216))
      {
        QMux::State::powerDown_sync(a1, v10, v11, v12, v13, v14, v15);
      }

      goto LABEL_57;
    }

    v23 = *(a1 + 216);
    *(a1 + 216) = 0;
    if (v23)
    {
      dispatch_group_leave(v23);
      dispatch_release(v23);
    }

    v24 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v24)
    {
      dispatch_group_leave(v24);
      dispatch_release(v24);
    }

    v25 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v25)
    {
      dispatch_release(v25);
    }

    v20 = *(a1 + 248);
    for (i = *(a1 + 256); i != v20; i -= 16)
    {
      v27 = *(i - 8);
      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    goto LABEL_38;
  }

LABEL_14:
  if (v7 == 4)
  {
    v32 = *(a1 + 216);
    *(a1 + 216) = 0;
    if (v32)
    {
      dispatch_group_leave(v32);
      dispatch_release(v32);
    }

    v33 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v33)
    {
      dispatch_group_leave(v33);
      dispatch_release(v33);
    }

    v34 = *(a1 + 240);
    *(a1 + 240) = 0;
    if (v34)
    {
      dispatch_release(v34);
    }

    v35 = *(a1 + 248);
    for (j = *(a1 + 256); j != v35; j -= 16)
    {
      v37 = *(j - 8);
      if (v37)
      {
        std::__shared_weak_count::__release_weak(v37);
      }
    }

    *(a1 + 256) = v35;
    v38 = *(a1 + 272);
    if (v38)
    {
      dispatch_source_cancel(v38);
      v31 = *(a1 + 272);
      *(a1 + 272) = 0;
      if (v31)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_57;
  }

  if (v7 != 5)
  {
    goto LABEL_57;
  }

  v17 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v17)
  {
    dispatch_group_leave(v17);
    dispatch_release(v17);
  }

  v18 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  v19 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = *(a1 + 248);
  for (k = *(a1 + 256); k != v20; k -= 16)
  {
    v22 = *(k - 8);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }
  }

LABEL_38:
  *(a1 + 256) = v20;
  v28 = *(a1 + 272);
  if (v28)
  {
    dispatch_source_cancel(v28);
    v29 = *(a1 + 272);
    *(a1 + 272) = 0;
    if (v29)
    {
      dispatch_release(v29);
    }
  }

  v30 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v30)
  {
    dispatch_group_leave(v30);
    v31 = v30;
LABEL_56:
    dispatch_release(v31);
  }

LABEL_57:
  v39 = *MEMORY[0x29EDCA608];
}

void QMIControl::setPowerMode_sync(void *a1, int a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v4;
  v37 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v36);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 0x40000000;
  v5 = ___ZN10QMIControl17setPowerMode_syncEN3qmi12PowerProfileE_block_invoke;
  v33 = ___ZN10QMIControl17setPowerMode_syncEN3qmi12PowerProfileE_block_invoke;
  v34 = &__block_descriptor_tmp_50;
  v35 = a2;
  v6 = *(&v36 + 1);
  v7 = v37;
  v8 = *(&v36 + 1);
  if (*(&v36 + 1) != v37)
  {
    v8 = *(&v36 + 1);
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v37)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v37)
  {
LABEL_9:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1D49B30;
    *(v12 + 3) = 0;
    v11 = v12 + 12;
    if (v7 >= *(&v37 + 1))
    {
      v14 = v7 - v6;
      v15 = (v7 - v6) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v37 + 1) - v6;
      if ((*(&v37 + 1) - v6) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = v12;
        v20 = v12 + 12;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 12;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v6, v14);
      *(&v36 + 1) = v21;
      *&v37 = v13;
      *(&v37 + 1) = &v21[8 * v18];
      if (v6)
      {
        operator delete(v6);
      }

      v11 = v20;
    }

    else
    {
      *v7 = v12;
      v13 = v7 + 8;
    }

    *&v37 = v13;
    v5 = v33;
  }

  else
  {
    v9 = ***v8;
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 12;
  }

  v5(v32, v11);
  v24 = a1[7];
  v23 = a1[8];
  v30 = v24;
  if (!v23 || (v25 = std::__shared_weak_count::lock(v23), (v31 = v25) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN10QMIControl17setPowerMode_syncEN3qmi12PowerProfileE_block_invoke_2;
  v28[3] = &__block_descriptor_tmp_53_0;
  v28[4] = v24;
  v29 = v25;
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  qmi::TransactionQueue::forceSend_sync(a1 + 13, &v36, 25000, v28);
  v26 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v36);
}

void sub_2962E91CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v8 + 32);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_2962E91F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_2962E9204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::TransactionQueue::forceSend_sync(uint64_t *a1, qmi::MutableMessageBase *a2, uint64_t a3, void *a4)
{
  current_queue = dispatch_get_current_queue();
  v10 = *a1;
  if (current_queue != *(*a1 + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x215, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v9);
    v10 = *a1;
  }

  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v13 = a4;
  v11 = qmi::TransactionQueue::State::forceSend_sync(v10, a2, a3, &v13);
  if (a4)
  {
    _Block_release(a4);
  }

  return v11;
}

void sub_2962E92E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10QMIControl17setPowerMode_syncEN3qmi12PowerProfileE_block_invoke(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 == 1)
    {
      *a2 = 1;
    }

    else
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x18E, "profile", "==", "qmi::kQMIPower_Normal", v2, 0);
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t qmi::TransactionQueue::State::forceSend_sync(uint64_t a1, qmi::MutableMessageBase *this, uint64_t a3, void **a4)
{
  memset(__p, 170, sizeof(__p));
  qmi::MutableMessageBase::serialize(__p, this);
  v7 = *(a1 + 272);
  qmi::createRequest();
  v11 = qmi::TransactionQueue::State::forceSend_sync(a1, &v14, a3, a4, v8, v9, v10);
  v12 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_2962E9424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10QMIControlEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ctl::tlv::PowerSaveState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *a2 = v3 + 7;
  *v3 = v2;
  *(v3 + 1) = 4;
  return result;
}

uint64_t qmi::TransactionQueue::State::forceSend_sync(uint64_t a1, void *a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *&v40[9] = *MEMORY[0x29EDCA608];
  v31 = 0;
  v32 = 0;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    v32 = v12;
    if (v12)
    {
      v13 = *(a1 + 64);
      v31 = v13;
      if (v13)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 33);
        v16 = *(a1 + 40);
        if ((v16 - 1) < 2)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0xF7, "client", "is not", "true", "QMIClient must still be alive if we're adding something!", a7, v31, v32);
  v13 = 0;
  v14 = MEMORY[0x20];
  v15 = MEMORY[0x21];
  v16 = *(a1 + 40);
  if ((v16 - 1) < 2)
  {
LABEL_5:
    qmi::TransactionQueue::State::createTransaction_sync(a1, a1 + 80, a2, a3, a4);
    v18 = *(*(*v17 + 16) + 26);
    qmi::TransactionQueue::State::sendNow_sync(a1, v17, v19, v20, v21, v22);
    v23 = *(a1 + 16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*a2 + 24);
      v25 = (v13 + 8);
      if (*(v13 + 31) < 0)
      {
        v25 = *v25;
      }

      *buf = 67110146;
      v34 = v14;
      v35 = 1024;
      v36 = v15;
      v37 = 1024;
      v38 = v18;
      v39 = 1024;
      *v40 = v24;
      v40[2] = 2080;
      *&v40[3] = v25;
      _os_log_impl(&dword_2962DD000, v23, OS_LOG_TYPE_DEFAULT, "#I Message force-sent for svc=%d client=%d (txid=%d msgid=0x%x) [%s]", buf, 0x24u);
    }

    goto LABEL_18;
  }

LABEL_11:
  if (!v16)
  {
    v26 = *(a1 + 16);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*a2 + 24);
      v28 = (v13 + 8);
      if (*(v13 + 31) < 0)
      {
        v28 = *v28;
      }

      *buf = 67109890;
      v34 = v14;
      v35 = 1024;
      v36 = v15;
      v37 = 1024;
      v38 = v27;
      v39 = 2080;
      *v40 = v28;
      _os_log_impl(&dword_2962DD000, v26, OS_LOG_TYPE_DEFAULT, "#I Message discarded because stopped for svc=%d client=%d (msgid=0x%x) [%s]", buf, 0x1Eu);
    }

    qmi::TransactionQueue::State::createTransaction_sync(a1, a1 + 176, a2, a3, a4);
    qmi::TransactionQueue::State::stop_sync(a1);
  }

  v18 = 0;
LABEL_18:
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v18;
}

void *qmi::TransactionQueue::State::createTransaction_sync(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void **a5)
{
  v9 = *(a1 + 274);
  *(*a3 + 26) = v9;
  if ((v9 + 1) == (*(a1 + 272) == 0) << 8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  *(a1 + 274) = v10;
  v11 = operator new(0x30uLL);
  *v11 = 0;
  v12 = *a5;
  if (*a5)
  {
    v12 = _Block_copy(v12);
  }

  v14 = *a3;
  v13 = a3[1];
  v11[1] = v12;
  v11[2] = v14;
  v11[3] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v11[4] = a4;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  *(v11 + 40) = 0;
  v17 = v15;
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v16 - v15) << 6) - 1;
  }

  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v21 = v20 + v19;
  if (v18 == v20 + v19)
  {
    std::deque<void *>::__add_back_capacity(a2);
    v17 = *(a2 + 8);
    v19 = *(a2 + 32);
    v20 = *(a2 + 40);
    v21 = v19 + v20;
  }

  *(*(v17 + ((v21 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v21 & 0x1FF)) = v11;
  *(a2 + 40) = v20 + 1;
  v22 = v20 + 1 + v19;
  v23 = *(a2 + 8);
  result = (v23 + 8 * (v22 >> 9));
  v25 = *result + 8 * (v22 & 0x1FF);
  if (*(a2 + 16) == v23)
  {
    v25 = 0;
  }

  if (v25 == *result)
  {
    v26 = *--result;
  }

  return result;
}

void sub_2962E98E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  boost::ptr_container_detail::static_move_ptr<qmi::Transaction,boost::ptr_container_detail::static_clone_deleter<boost::heap_clone_allocator>>::~static_move_ptr(va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void qmi::TransactionQueue::State::sendNow_sync(qmi::TransactionQueue::State *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v7 = *(this + 14) + *(this + 15);
  v8 = *(this + 11);
  v9 = (v8 + 8 * (v7 >> 9));
  v10 = *v9 + 8 * (v7 & 0x1FF);
  if (*(this + 12) == v8)
  {
    v10 = 0;
  }

  if (v10 == *v9)
  {
    v11 = *(*(v9 - 1) + 4088);
    if (*(v11 + 40) != 1)
    {
LABEL_5:
      *(v11 + 40) = 1;
      v32 = 0xAAAAAAAAAAAAAAAALL;
      v12 = *(this + 7);
      if (!v12)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v11 = *(v10 - 8);
    if (*(v11 + 40) != 1)
    {
      goto LABEL_5;
    }
  }

  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x167, "!tx.wasSent()", "is not", "true", a6);
  *(v11 + 40) = 1;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(this + 7);
  if (!v12)
  {
    return;
  }

LABEL_9:
  v13 = std::__shared_weak_count::lock(v12);
  v33 = v13;
  if (!v13)
  {
    return;
  }

  v32 = *(this + 6);
  if (v32)
  {
    v30 = 0;
    v31 = 0;
    v14 = *(this + 9);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      v31 = v15;
      if (!v15)
      {
        goto LABEL_25;
      }

      v20 = *(this + 8);
      v30 = v20;
      if (v20)
      {
        v28 = v20;
        v29 = v15;
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *(v11 + 24);
        v26 = *(v11 + 16);
        v27 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        QMux::send(&v32, &v28, &v26, v16, v17, v18, v19);
        v22 = v27;
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }

        v23 = v29;
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }
      }
    }

    v24 = v31;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

LABEL_25:
    v13 = v33;
    if (!v33)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v25 = v13;
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v25);
  }
}

void sub_2962E9B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  QMux::~QMux((v13 - 32));
  _Unwind_Resume(a1);
}

void QMIControl::stall_sync(QMIControl *this, NSObject *a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *(this + 13);
  if (current_queue != *(v6 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x238, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *(this + 13);
  }

  qmi::TransactionQueue::State::stall_sync(v6, a2);
}

void qmi::TransactionQueue::State::stall_sync(qmi::TransactionQueue::State *this, dispatch_object_t object)
{
  v2 = object;
  v8 = object;
  if (!object)
  {
    v7 = *(this + 29);
    v4 = (this + 232);
    if (v7 < *(this + 30))
    {
      *v7 = 0;
      v6 = (v7 + 1);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  dispatch_retain(object);
  v5 = *(this + 29);
  v4 = (this + 232);
  if (v5 >= *(this + 30))
  {
LABEL_8:
    v6 = std::vector<dispatch::group_session>::__emplace_back_slow_path<dispatch::group>(this + 28, &v8);
    v2 = v8;
    goto LABEL_9;
  }

  *v5 = v2;
  dispatch_retain(v2);
  if (*v5)
  {
    dispatch_group_enter(*v5);
  }

  v6 = v5 + 1;
LABEL_9:
  *v4 = v6;
  if (v2)
  {
    dispatch_release(v2);
  }

  *(this + 10) = 1;
  qmi::TransactionQueue::State::checkFlushNotifiers_sync(this);
}

void sub_2962E9CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::TransactionQueue::State::checkFlushNotifiers_sync(qmi::TransactionQueue::State *this)
{
  if (!*(this + 15) && !*(this + 21))
  {
    v1 = *(this + 28);
    v2 = *(this + 29);
    while (v2 != v1)
    {
      v5 = *--v2;
      v4 = v5;
      if (v5)
      {
        dispatch_group_leave(v4);
        if (*v2)
        {
          dispatch_release(*v2);
        }
      }
    }

    *(this + 29) = v1;
    if (!*(this + 27))
    {
      v6 = *(this + 31);
      v7 = *(this + 32);
      while (v7 != v6)
      {
        v9 = *--v7;
        v8 = v9;
        if (v9)
        {
          dispatch_group_leave(v8);
          if (*v7)
          {
            dispatch_release(*v7);
          }
        }
      }

      *(this + 32) = v6;
    }
  }
}

void QMIControl::handleSentData(QMIControl *this, int a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *(this + 13);
  if (current_queue != *(v6 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x221, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *(this + 13);
  }

  qmi::TransactionQueue::State::startTimer_sync(v6, a2);
}

void qmi::TransactionQueue::State::startTimer_sync(qmi::TransactionQueue::State *this, int a2)
{
  v3 = *(this + 14);
  v4 = *(this + 11);
  v5 = *(this + 12);
  v6 = (v4 + 8 * (v3 >> 9));
  if (v5 == v4)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = (*v6 + 8 * (*(this + 14) & 0x1FFLL));
    v8 = *(v4 + (((*(this + 15) + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 15) + v3) & 0x1FF);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v14 = ___ZN3qmi16TransactionQueue5State24findSentTransaction_syncEt_block_invoke;
  v15 = &__block_descriptor_tmp_11;
  v16 = a2;
  if (v8 != v7 && *((*v7)[2] + 26) != a2)
  {
    while (1)
    {
      if ((++v7 - *v6) == 4096)
      {
        v9 = v6[1];
        ++v6;
        v7 = v9;
      }

      if (v8 == v7)
      {
        break;
      }

      if ((v14)(v13, *v7))
      {
        goto LABEL_12;
      }
    }

    v7 = v8;
LABEL_12:
    v4 = *(this + 11);
    v5 = *(this + 12);
  }

  if (v5 == v4)
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v10 = *(this + 15) + *(this + 14);
    if (v7 == (*(v4 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)))
    {
      return;
    }
  }

  v11 = *v7;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN3qmi16TransactionQueue5State15startTimer_syncEt_block_invoke;
  v12[3] = &__block_descriptor_tmp_17;
  v12[4] = this;
  qmi::Transaction::startTimer(v11, v12);
}

void qmi::Transaction::startTimer(uint64_t *a1, uint64_t a2)
{
  if (a1[4] && a1[1])
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutex_lock(&ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance);
    v4 = off_2A18999A0;
    if (!off_2A18999A0)
    {
      v5 = operator new(0x28uLL);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = &unk_2A1D47A58;
      v5[3] = 0;
      v5[4] = 0;
      ATCSAdaptiveTimer::initialize((v5 + 3));
      v26 = 0;
      v27 = 0;
      v6 = off_2A18999A8;
      off_2A18999A0 = v5 + 3;
      off_2A18999A8 = v5;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }

      v4 = off_2A18999A0;
    }

    v7 = off_2A18999A8;
    if (off_2A18999A8)
    {
      atomic_fetch_add_explicit(off_2A18999A8 + 1, 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance);
    v8 = v4[1];
    v24 = *v4;
    v25 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    current_queue = dispatch_get_current_queue();
    v10 = current_queue;
    if (current_queue)
    {
      dispatch_retain(current_queue);
    }

    v11 = *(a1[2] + 26);
    v12 = v24;
    v23 = 21;
    strcpy(__p, "qmi_transaction_queue");
    v13 = a1[4];
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 1107296256;
    v18[2] = ___ZN3qmi11Transaction10startTimerEU13block_pointerFvtE_block_invoke;
    v18[3] = &__block_descriptor_tmp_8;
    v18[4] = a2;
    v19 = v11;
    aBlock = _Block_copy(v18);
    ctu::TimerService::createOneShotTimer(v12, __p, 0, 1000 * v13, &object, &aBlock);
    v14 = v26;
    v26 = 0;
    v15 = *a1;
    *a1 = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      v16 = v26;
      v26 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v23 < 0)
    {
      operator delete(*__p);
    }

    if (v10)
    {
      dispatch_release(v10);
    }

    v17 = v25;
    if (v25)
    {
      if (!atomic_fetch_add((v25 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }
    }
  }
}

void sub_2962EA380(_Unwind_Exception *a1)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v1 - 64);
  pthread_mutex_unlock(&ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_2962EA3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_5:
      if (!v22)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  if (!v22)
  {
LABEL_6:
    std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v23 - 80);
    _Unwind_Resume(a1);
  }

LABEL_9:
  dispatch_release(v22);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v23 - 80);
  _Unwind_Resume(a1);
}

void QMIControl::handleReceivedData(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  memset(v12, 170, sizeof(v12));
  MEMORY[0x29C259090](v12, a3, a4);
  current_queue = dispatch_get_current_queue();
  v11 = *(a1 + 104);
  if (current_queue != *(v11 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x227, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v8);
    v11 = *(a1 + 104);
  }

  qmi::TransactionQueue::State::sendTransactionResponse_sync(v11, a2, v12, v6, v7, v8, v9);
  if (*(a1 + 120) == a2)
  {
    *(a1 + 120) = 0;
  }

  qmi::MessageBase::~MessageBase(v12);
}

void sub_2962EA4D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void qmi::TransactionQueue::State::sendTransactionResponse_sync(qmi::TransactionQueue::State *this, int a2, const qmi::ResponseBase *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v63 = *MEMORY[0x29EDCA608];
  v10 = *(this + 14);
  v11 = *(this + 11);
  v12 = *(this + 12);
  v13 = v11 + 8 * (v10 >> 9);
  if (v12 == v11)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = (*v13 + 8 * (*(this + 14) & 0x1FFLL));
    v15 = *(v11 + (((*(this + 15) + v10) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 15) + v10) & 0x1FF);
  }

  *buf = MEMORY[0x29EDCA5F8];
  v61 = 0x40000000;
  *v62 = ___ZN3qmi16TransactionQueue5State24findSentTransaction_syncEt_block_invoke;
  *&v62[8] = &__block_descriptor_tmp_11;
  *&v62[16] = a2;
  if (v15 != v14 && *(*(*v14 + 16) + 26) != a2)
  {
    while (1)
    {
      v14 += 8;
      if (&v14[-*v13] == 4096)
      {
        v16 = *(v13 + 8);
        v13 += 8;
        v14 = v16;
      }

      if (v15 == v14)
      {
        break;
      }

      if ((*v62)(buf, *v14))
      {
        goto LABEL_12;
      }
    }

    v14 = v15;
LABEL_12:
    v11 = *(this + 11);
    v12 = *(this + 12);
  }

  if (v12 != v11)
  {
    v17 = *(this + 15) + *(this + 14);
    if (v14 == (*(v11 + ((v17 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v17 & 0x1FF)))
    {
      goto LABEL_15;
    }

LABEL_20:
    v21 = *v14;
    if (*(*v14 + 8))
    {
      goto LABEL_39;
    }

    v59 = 0;
    v22 = *(this + 9);
    if (v22)
    {
      v23 = std::__shared_weak_count::lock(v22);
      v59 = v23;
      if (v23)
      {
        v24 = *(this + 8);
        if (v24)
        {
LABEL_34:
          v27 = *(this + 2);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v54 = *(v24 + 33);
            v55 = *(v24 + 32);
            v56 = *a3;
            v57 = (v24 + 8);
            if (*(v24 + 31) < 0)
            {
              v57 = *v57;
            }

            *buf = 67110146;
            *&buf[4] = v55;
            LOWORD(v61) = 1024;
            *(&v61 + 2) = v54;
            HIWORD(v61) = 1024;
            *v62 = a2;
            *&v62[4] = 1024;
            *&v62[6] = v56;
            *&v62[10] = 2080;
            *&v62[12] = v57;
            _os_log_error_impl(&dword_2962DD000, v27, OS_LOG_TYPE_ERROR, "No callback for message for svc=%d client=%d (txid=%d msgid=0x%x); dropping response [%s]", buf, 0x24u);
            if (!v23)
            {
              goto LABEL_38;
            }
          }

          else if (!v23)
          {
LABEL_38:
            v21 = *v14;
LABEL_39:
            qmi::Transaction::invoke(v21, *(this + 4), a3);
            v33 = *v14;
            if ((*(*v14 + 40) & 1) != 0 || (_ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x129, "tx->wasSent()", "is not", "true", v32), (v33 = *v14) != 0))
            {
              qmi::Transaction::~Transaction(v33, v28, v29, v30, v31, v32);
              operator delete(v34);
            }

            std::deque<void *>::erase(this + 80, v13, v14);
            while (1)
            {
              v35 = *(this + 15);
              if (v35 >= *(this + 69) || !*(this + 21))
              {
                goto LABEL_31;
              }

              v36 = *(this + 14) + v35;
              v37 = *(this + 11);
              v38 = (v37 + 8 * (v36 >> 9));
              if (*(this + 12) == v37)
              {
                v39 = 0;
                v40 = *(this + 20);
                v44 = *(this + 17);
                v42 = (v44 + 8 * (v40 >> 9));
                if (*(this + 18) != v44)
                {
LABEL_47:
                  v43 = (*v42 + 8 * (v40 & 0x1FF));
                  goto LABEL_50;
                }
              }

              else
              {
                v39 = *v38 + 8 * (v36 & 0x1FF);
                v40 = *(this + 20);
                v41 = *(this + 17);
                v42 = (v41 + 8 * (v40 >> 9));
                if (*(this + 18) != v41)
                {
                  goto LABEL_47;
                }
              }

              v43 = 0;
LABEL_50:
              std::deque<void *>::insert(this + 80, v38, v39, v43);
              std::deque<void *>::erase(this + 128, v42, v43);
              qmi::TransactionQueue::State::sendNow_sync(this, v45, v46, v47, v48, v49);
            }
          }

          if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x11F, "client", "is not", "true", "QMIClient must still be alive if we're adding something!", a7, 0, v59, *buf, v61);
    v24 = 0;
    goto LABEL_34;
  }

  if (v14)
  {
    goto LABEL_20;
  }

LABEL_15:
  v58 = 0;
  v18 = *(this + 9);
  if (!v18)
  {
    v19 = 0;
LABEL_26:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x131, "client", "is not", "true", "QMIClient must still be alive if we're adding something!", a7, 0, v58, *buf, v61);
    v20 = 0;
    goto LABEL_27;
  }

  v19 = std::__shared_weak_count::lock(v18);
  v58 = v19;
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = *(this + 8);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_27:
  v25 = *(this + 2);
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    if (!v19)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v50 = *(v20 + 33);
  v51 = *(v20 + 32);
  v52 = *a3;
  v53 = (v20 + 8);
  if (*(v20 + 31) < 0)
  {
    v53 = *v53;
  }

  *buf = 67110146;
  *&buf[4] = v51;
  LOWORD(v61) = 1024;
  *(&v61 + 2) = v50;
  HIWORD(v61) = 1024;
  *v62 = a2;
  *&v62[4] = 1024;
  *&v62[6] = v52;
  *&v62[10] = 2080;
  *&v62[12] = v53;
  _os_log_error_impl(&dword_2962DD000, v25, OS_LOG_TYPE_ERROR, "No transaction found for message for svc=%d client=%d (txid=%d msgid=0x%x); dropping response [%s]", buf, 0x24u);
  if (v19)
  {
LABEL_29:
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_31:
  qmi::TransactionQueue::State::checkFlushNotifiers_sync(this);
  v26 = *MEMORY[0x29EDCA608];
}