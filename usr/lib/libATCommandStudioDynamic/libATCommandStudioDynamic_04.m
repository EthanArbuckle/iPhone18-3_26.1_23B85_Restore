void sub_296312560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x29C259330](va1);
  _Unwind_Resume(a1);
}

void *qmi::TransactionQueue::TransactionQueue(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

void *qmi::TransactionQueue::TransactionQueue(void *this, const qmi::TransactionQueue *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  this[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void qmi::TransactionQueue::operator=(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

__n128 qmi::TransactionQueue::swap(__n128 *this, __n128 *a2)
{
  result = *a2;
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  return result;
}

void qmi::TransactionQueue::~TransactionQueue(qmi::TransactionQueue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void *qmi::TransactionQueue::TransactionQueue(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = operator new(0x118uLL);
  qmi::TransactionQueue::State::State(v10, a2, a3, a4, a5);

  return std::shared_ptr<qmi::TransactionQueue::State>::shared_ptr[abi:ne200100]<qmi::TransactionQueue::State,qmi::TransactionQueue::State::Deleter,0>(a1, v10);
}

{
  v10 = operator new(0x118uLL);
  qmi::TransactionQueue::State::State(v10, a2, a3, a4, a5);

  return std::shared_ptr<qmi::TransactionQueue::State>::shared_ptr[abi:ne200100]<qmi::TransactionQueue::State,qmi::TransactionQueue::State::Deleter,0>(a1, v10);
}

uint64_t qmi::TransactionQueue::send_sync(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  current_queue = dispatch_get_current_queue();
  v12 = *a1;
  if (current_queue != *(*a1 + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x203, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v10);
    v12 = *a1;
  }

  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v15 = a4;
  v13 = qmi::TransactionQueue::State::push_sync(v12, a2, a3, &v15, v9, v10, v11);
  if (a4)
  {
    _Block_release(a4);
  }

  return v13;
}

void sub_296312944(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::TransactionQueue::forceSend_sync(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  current_queue = dispatch_get_current_queue();
  v12 = *a1;
  if (current_queue != *(*a1 + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x209, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v10);
    v12 = *a1;
  }

  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v15 = a4;
  v13 = qmi::TransactionQueue::State::forceSend_sync(v12, a2, a3, &v15, v9, v10, v11);
  if (a4)
  {
    _Block_release(a4);
  }

  return v13;
}

void sub_296312A28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t qmi::TransactionQueue::send_sync(uint64_t *a1, qmi::MutableMessageBase *a2, uint64_t a3, void *a4)
{
  current_queue = dispatch_get_current_queue();
  v10 = *a1;
  if (current_queue != *(*a1 + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x20F, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v9);
    v10 = *a1;
  }

  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v13 = a4;
  v11 = qmi::TransactionQueue::State::push_sync(v10, a2, a3, &v13);
  if (a4)
  {
    _Block_release(a4);
  }

  return v11;
}

void sub_296312B0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void qmi::TransactionQueue::startTimer_sync(qmi::TransactionQueue::State **this, int a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x221, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *this;
  }

  qmi::TransactionQueue::State::startTimer_sync(v6, a2);
}

void qmi::TransactionQueue::sendTransactionResponse_sync(qmi::TransactionQueue::State **this, int a2, const qmi::ResponseBase *a3)
{
  current_queue = dispatch_get_current_queue();
  v11 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x227, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v8);
    v11 = *this;
  }

  qmi::TransactionQueue::State::sendTransactionResponse_sync(v11, a2, a3, v6, v7, v8, v9);
}

void qmi::TransactionQueue::stall_sync(qmi::TransactionQueue::State **this)
{
  current_queue = dispatch_get_current_queue();
  v4 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x232, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v2);
    v4 = *this;
  }

  *(v4 + 10) = 1;

  qmi::TransactionQueue::State::checkFlushNotifiers_sync(v4);
}

void qmi::TransactionQueue::stall_sync(qmi::TransactionQueue::State **this, NSObject *a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x238, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *this;
  }

  qmi::TransactionQueue::State::stall_sync(v6, a2);
}

void qmi::TransactionQueue::flush_sync(qmi::TransactionQueue::State **this, NSObject *a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x23E, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *this;
  }

  qmi::TransactionQueue::State::flush_sync(v6, a2);
}

void qmi::TransactionQueue::setSendWindowWidth_sync(qmi::TransactionQueue::State **this, unsigned int a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x244, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *this;
  }

  qmi::TransactionQueue::State::setSendWindowWidth_sync(v6, a2);
}

uint64_t qmi::TransactionQueue::getSendWindowWidth_sync(qmi::TransactionQueue *this)
{
  current_queue = dispatch_get_current_queue();
  v4 = *this;
  if (current_queue != *(*this + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x24A, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v3);
    v4 = *this;
  }

  return *(v4 + 276);
}

uint64_t qmi::TransactionQueue::debugGetQueueSendableCount_sync(qmi::TransactionQueue *this)
{
  current_queue = dispatch_get_current_queue();
  v4 = *this;
  if (current_queue != *(*this + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x24F, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v3);
    v4 = *this;
  }

  return *(v4 + 276) - *(v4 + 120);
}

uint64_t qmi::TransactionQueue::debugGetQueueSize_sync(qmi::TransactionQueue *this)
{
  current_queue = dispatch_get_current_queue();
  v4 = *this;
  if (current_queue != *(*this + 24))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x254, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v3);
    v4 = *this;
  }

  return v4[21] + v4[15] + v4[27];
}

uint64_t qmi::TransactionQueue::dumpState_sync@<X0>(qmi::TransactionQueue::State **this@<X0>, _BYTE *a2@<X8>)
{
  current_queue = dispatch_get_current_queue();
  v6 = *this;
  if (current_queue != *(*this + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x259, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *this;
  }

  return qmi::TransactionQueue::State::dumpState_sync(v6, a2);
}

dispatch_group_t *std::vector<dispatch::group_session>::__emplace_back_slow_path<dispatch::group>(unint64_t *a1, NSObject **a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 2 > v4)
  {
    v4 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = (8 * v3);
    v11 = *a2;
    *(8 * v3) = *a2;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v8 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(8 * v8);
  v10 = &v9[8 * v3];
  v11 = *a2;
  *v10 = *a2;
  if (v11)
  {
LABEL_12:
    dispatch_retain(v11);
    if (*v10)
    {
      dispatch_group_enter(*v10);
    }
  }

LABEL_14:
  v12 = &v9[8 * v8];
  v13 = *a1;
  v14 = a1[1];
  v15 = v10 - (v14 - *a1);
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 8;
    v18 = *a1;
    v19 = (v10 - (v14 - *a1));
    if ((v16 - 8) < 0x98)
    {
      goto LABEL_35;
    }

    if (v15 < v13 + (v17 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v18 = *a1;
      v19 = (v10 - (v14 - *a1));
      if (v13 < &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF8) - v16 + 8])
      {
        goto LABEL_35;
      }
    }

    v20 = v16 >> 3;
    v21 = (v17 >> 3) + 1;
    v22 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    v18 = &v13[v22];
    v19 = (v15 + v22 * 8);
    v23 = &v9[8 * v3 + 16 + -8 * v20];
    v24 = (v13 + 2);
    v25 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v24;
      *(v23 - 1) = *(v24 - 1);
      *v23 = v26;
      *(v24 - 1) = 0uLL;
      *v24 = 0uLL;
      v23 += 32;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_35:
      do
      {
        *v19++ = *v18;
        *v18++ = 0;
      }

      while (v18 != v14);
    }

    do
    {
      if (*v13)
      {
        dispatch_group_leave(*v13);
        if (*v13)
        {
          dispatch_release(*v13);
        }
      }

      ++v13;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v10 + 1);
  a1[2] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  return v10 + 1;
}

const void ***std::unique_ptr<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0,std::default_delete<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0>>::~unique_ptr[abi:ne200100](const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    qmi::MessageBase::~MessageBase((v1 + 1));
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *std::shared_ptr<qmi::TransactionQueue::State>::shared_ptr[abi:ne200100]<qmi::TransactionQueue::State,qmi::TransactionQueue::State::Deleter,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1D48D58;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_296313470(void *a1)
{
  v2 = __cxa_begin_catch(a1);
  qmi::TransactionQueue::State::Deleter::operator()(v2, v1);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<qmi::TransactionQueue::State *,qmi::TransactionQueue::State::Deleter,std::allocator<qmi::TransactionQueue::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<qmi::TransactionQueue::State *,qmi::TransactionQueue::State::Deleter,std::allocator<qmi::TransactionQueue::State>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN3qmi16TransactionQueue5State7DeleterclEPS1__block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t std::__shared_ptr_pointer<qmi::TransactionQueue::State *,qmi::TransactionQueue::State::Deleter,std::allocator<qmi::TransactionQueue::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002963369F0)
  {
    if (((v2 & 0x80000002963369F0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002963369F0))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002963369F0 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::deque<void *>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0x1000uLL);
      std::__split_buffer<void **>::emplace_back<void **&>(a1, &v44);
      return;
    }

    v44 = operator new(0x1000uLL);
    std::__split_buffer<void **>::emplace_front<void **>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<void **>::emplace_back<void **&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0x1000uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_2963138B8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<void **>::emplace_back<void **&>(char **a1, void *a2)
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
    a1[2] = &v8[v9];
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
  a1[2] += 8;
}

void std::__split_buffer<void **>::emplace_front<void **>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 8) = v6;
      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) -= 8;
}

qmi::Transaction **boost::ptr_container_detail::static_move_ptr<qmi::Transaction,boost::ptr_container_detail::static_clone_deleter<boost::heap_clone_allocator>>::~static_move_ptr(qmi::Transaction **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = a1;
  v7 = *a1;
  if (v7)
  {
    v8 = v6;
    qmi::Transaction::~Transaction(v7, a2, a3, a4, a5, a6);
    operator delete(v9);
    return v8;
  }

  return v6;
}

const void **std::__for_each_segment[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>>>(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 3;
        if ((a4 - v7) >> 3 < v12)
        {
          v12 = (a4 - v7) >> 3;
        }

        v13 = 8 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 8 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = result;
  v17 = *result + 4096;
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 == __len)
  {
    goto LABEL_20;
  }

  v20 = *v18++;
  v19 = v20;
  while (1)
  {
    v21 = (v19 - v8 + 4096) >> 3;
    if ((v17 - v7) >> 3 < v21)
    {
      v21 = (v17 - v7) >> 3;
    }

    v22 = 8 * v21;
    if (v21)
    {
      result = memmove(v8, v7, 8 * v21);
    }

    v7 += v22;
    if (v7 == v17)
    {
      break;
    }

    v23 = *v18++;
    v19 = v23;
    v8 = v23;
  }

  v8 += v22;
  if (*(v18 - 1) + 4096 != v8)
  {
    --v18;
LABEL_20:
    *a5 = v18;
    *(a5 + 8) = v8;
    for (i = v16 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v25 = 0;
        v26 = *i;
        v28 = *v18++;
        v27 = v28;
        while (1)
        {
          v29 = (v27 - v8 + 4096) >> 3;
          if ((4096 - v25) >> 3 < v29)
          {
            v29 = (4096 - v25) >> 3;
          }

          v30 = 8 * v29;
          if (v29)
          {
            result = memmove(v8, &v26[v25], 8 * v29);
          }

          v25 += v30;
          if (v25 == 4096)
          {
            break;
          }

          v31 = *v18++;
          v27 = v31;
          v8 = v31;
        }

        v8 += v30;
        v32 = v18 - 1;
        if (*(v18 - 1) + 4096 != v8)
        {
          break;
        }

        v8 = *v18;
        *a5 = v18;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v18;
      *a5 = v32;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v18;
  *a5 = v18;
  *(a5 + 8) = v8;
  i = v16 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v33 = *i;
  if (*i != a4)
  {
    v35 = *v18++;
    v34 = v35;
    while (1)
    {
      v36 = (v34 - v8 + 4096) >> 3;
      if ((a4 - v33) >> 3 < v36)
      {
        v36 = (a4 - v33) >> 3;
      }

      v37 = 8 * v36;
      if (v36)
      {
        result = memmove(v8, v33, 8 * v36);
      }

      v33 += v37;
      if (v33 == a4)
      {
        break;
      }

      v38 = *v18++;
      v34 = v38;
      v8 = v38;
    }

    v8 += v37;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void std::deque<void *>::insert(uint64_t a1, char *a2, uint64_t a3, char *__len)
{
  v6 = *(a1 + 32);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = &v8[8 * (v6 >> 9)];
  v10 = v7 - v8;
  if (v7 == v8)
  {
    v11 = 0;
    if (!a3)
    {
LABEL_3:
      v12 = 0;
      v13 = *(a1 + 40);
      v14 = v13;
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v11 = *v9 + 8 * (*(a1 + 32) & 0x1FFLL);
    if (a3 == v11)
    {
      goto LABEL_3;
    }
  }

  v12 = ((a3 - *a2) >> 3) + ((a2 - v9) << 6) - ((v11 - *v9) >> 3);
  v13 = *(a1 + 40);
  v14 = v13 - v12;
  if (v12 >= v13 - v12)
  {
LABEL_4:
    v15 = (v10 << 6) - 1;
    if (v7 == v8)
    {
      v15 = 0;
    }

    if (v15 == v13 + v6)
    {
      std::deque<void *>::__add_back_capacity(a1);
      v13 = *(a1 + 40);
      v14 = v13 - v12;
    }

    if (v13 == v12)
    {
      *(*(*(a1 + 8) + (((*(a1 + 32) + v12) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 32) + v12) & 0x1FF)) = *__len;
      *(a1 + 40) = v12 + 1;
      return;
    }

    v17 = *(a1 + 32) + v13;
    v18 = *(a1 + 8);
    v19 = (v18 + 8 * (v17 >> 9));
    v20 = *v19 + 8 * (v17 & 0x1FF);
    if (*(a1 + 16) == v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v22 = &v21[-*v19] >> 3;
    if (v22 < 2)
    {
      v26 = 512 - v22;
      v24 = &v19[-8 * (v26 >> 9)];
      v25 = (*v24 + 8 * (~v26 & 0x1FF));
    }

    else
    {
      v23 = v22 - 1;
      v24 = &v19[8 * (v23 >> 9)];
      v25 = (*v24 + 8 * (v23 & 0x1FF));
    }

    if (v25 == __len)
    {
      __len = v21;
    }

    *v21 = *v25;
    *(a1 + 40) = v13 + 1;
    if (v14 < 2)
    {
      goto LABEL_69;
    }

    v27 = (&v21[-*v19] >> 3) - v14;
    if (v27 < 1)
    {
      v28 = &v19[-8 * ((511 - v27) >> 9)];
      v29 = *v28;
      v30 = *v28 + 8 * (~(511 - v27) & 0x1FF);
      if (v25 == v30)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v28 = &v19[8 * (v27 >> 9)];
      v29 = *v28;
      v30 = *v28 + 8 * (v27 & 0x1FF);
      if (v25 == v30)
      {
        goto LABEL_69;
      }
    }

    v34 = (&v25[-*v24] >> 3) + ((v24 - v28) << 6) - ((v30 - v29) >> 3);
    if (v34 >= 1)
    {
      do
      {
        v36 = *v24;
        if (v25 == *v24)
        {
          v37 = *(v24 - 1);
          v24 -= 8;
          v36 = v37;
          v25 = v37 + 4096;
        }

        v38 = v25 - 8;
        v39 = (v25 - v36) >> 3;
        if (v39 >= v34)
        {
          v40 = v34;
        }

        else
        {
          v40 = (v25 - v36) >> 3;
        }

        if (v39 <= v34)
        {
          v41 = v36;
        }

        else
        {
          v41 = &v25[-8 * v34];
        }

        if (__len >= v25 || v41 > __len)
        {
          goto LABEL_52;
        }

        if (v38 == v21)
        {
          v43 = ((__len - v36) >> 3) - 1;
          if (v43 >= 1)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v42 = ~((v38 - v36) >> 3) + ((v19 - v24) << 6) + (&v21[-*v19] >> 3);
          if (!v42)
          {
            goto LABEL_52;
          }

          v43 = v42 + ((__len - v36) >> 3);
          if (v43 >= 1)
          {
LABEL_51:
            __len = (*&v24[(v43 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v43 & 0x1FF));
LABEL_52:
            if (v41 != v25)
            {
              goto LABEL_53;
            }

            goto LABEL_62;
          }
        }

        __len = (*&v24[-8 * ((511 - v43) >> 9)] + 8 * (~(511 - v43) & 0x1FF));
        if (v41 != v25)
        {
LABEL_53:
          v44 = *v19;
          while (1)
          {
            v45 = &v21[-v44] >> 3;
            if ((v25 - v41) >> 3 < v45)
            {
              v45 = (v25 - v41) >> 3;
            }

            v25 -= 8 * v45;
            v21 -= 8 * v45;
            if (v45)
            {
              memmove(v21, v25, 8 * v45);
            }

            if (v25 == v41)
            {
              break;
            }

            v46 = *(v19 - 1);
            v19 -= 8;
            v44 = v46;
            v21 = (v46 + 4096);
          }

          if ((*v19 + 4096) == v21)
          {
            v47 = *(v19 + 1);
            v19 += 8;
            v21 = v47;
          }
        }

LABEL_62:
        if (v40 == 1)
        {
          v25 = v38;
        }

        else
        {
          v48 = (&v38[-*v24] >> 3) - (v40 - 1);
          if (v48 < 1)
          {
            v49 = 511 - v48;
            v24 -= 8 * (v49 >> 9);
            v25 = (*v24 + 8 * (~v49 & 0x1FF));
          }

          else
          {
            v24 += 8 * (v48 >> 9);
            v25 = (*v24 + 8 * (v48 & 0x1FF));
          }
        }

        v35 = v34 <= v40;
        v34 -= v40;
      }

      while (!v35);
    }

LABEL_69:
    if (v21 == *v19)
    {
      v21 = (*(v19 - 1) + 4096);
    }

    *(v21 - 1) = *__len;
    return;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_111;
  }

  v16 = (v10 << 6) - 1;
  if (v7 == v8)
  {
    v16 = 0;
  }

  if (v16 - v13 >= 0x200)
  {
    *(a1 + 32) = 512;
    v119 = *(v7 - 1);
    *(a1 + 16) = v7 - 8;
    std::__split_buffer<void **>::emplace_front<void **>(a1, &v119);
    goto LABEL_111;
  }

  v31 = *(a1 + 24);
  v32 = *a1;
  v33 = &v31[-*a1];
  if (v7 - v8 >= v33)
  {
    if (v31 == v32)
    {
      v50 = 1;
    }

    else
    {
      v50 = v33 >> 2;
    }

    if (v50 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v51 = operator new(8 * v50);
    v52 = operator new(0x1000uLL);
    v53 = v52;
    if (v50)
    {
      v54 = &v51[8 * v50];
      *v51 = v52;
      v55 = v51 + 8;
      if (v8 != v7)
      {
LABEL_78:
        v56 = v51;
        while (1)
        {
          if (v55 == v54)
          {
            if (v56 <= v51)
            {
              if (v55 == v51)
              {
                v60 = 1;
              }

              else
              {
                v60 = (v55 - v51) >> 2;
              }

              if (v60 >> 61)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v61 = operator new(8 * v60);
              v62 = v61;
              v63 = v60 >> 2;
              v57 = &v61[8 * (v60 >> 2)];
              v64 = v55 - v56;
              v108 = v55 == v56;
              v55 = v57;
              if (!v108)
              {
                v55 = &v57[v64];
                v65 = v64 - 8;
                if (v65 < 0x18 || (v66 = 8 * v63, (&v61[8 * v63] - v56) < 0x20))
                {
                  v67 = &v61[8 * (v60 >> 2)];
                  v68 = v56;
                  goto LABEL_94;
                }

                v70 = (v65 >> 3) + 1;
                v71 = 8 * (v70 & 0x3FFFFFFFFFFFFFFCLL);
                v67 = &v57[v71];
                v68 = &v56[v71];
                v72 = (v56 + 16);
                v73 = &v61[v66 + 16];
                v74 = v70 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v75 = *v72;
                  *(v73 - 1) = *(v72 - 1);
                  *v73 = v75;
                  v72 += 2;
                  v73 += 32;
                  v74 -= 4;
                }

                while (v74);
                if (v70 != (v70 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_94:
                    v69 = *v68;
                    v68 += 8;
                    *v67 = v69;
                    v67 += 8;
                  }

                  while (v67 != v55);
                }
              }

              v54 = &v61[8 * v60];
              if (v51)
              {
                operator delete(v51);
              }

              v51 = v62;
              goto LABEL_80;
            }

            v59 = (((v56 - v51) >> 3) + 1 + ((((v56 - v51) >> 3) + 1) >> 63)) >> 1;
            v57 = &v56[-8 * v59];
            if (v55 != v56)
            {
              memmove(&v56[-8 * v59], v56, v55 - v56);
            }

            v55 = &v57[v55 - v56];
          }

          else
          {
            v57 = v56;
          }

LABEL_80:
          v58 = *v8;
          v8 += 8;
          *v55 = v58;
          v55 += 8;
          v56 = v57;
          if (v8 == *(a1 + 16))
          {
            goto LABEL_106;
          }
        }
      }
    }

    else
    {
      v77 = operator new(8uLL);
      v54 = v77 + 8;
      operator delete(v51);
      v8 = *(a1 + 8);
      v78 = *(a1 + 16);
      v51 = v77;
      *v77 = v53;
      v55 = v77 + 8;
      if (v8 != v78)
      {
        goto LABEL_78;
      }
    }

    v57 = v51;
LABEL_106:
    v79 = *a1;
    *a1 = v51;
    *(a1 + 8) = v57;
    *(a1 + 16) = v55;
    *(a1 + 24) = v54;
    if (v55 - v57 == 8)
    {
      v80 = 256;
    }

    else
    {
      v80 = *(a1 + 32) + 512;
    }

    *(a1 + 32) = v80;
    if (v79)
    {
      operator delete(v79);
    }

    goto LABEL_111;
  }

  if (v8 == v32)
  {
    v119 = operator new(0x1000uLL);
    std::__split_buffer<void **>::emplace_back<void **&>(a1, &v119);
    v76 = *(a1 + 16);
    v119 = *(v76 - 8);
    *(a1 + 16) = v76 - 8;
    std::__split_buffer<void **>::emplace_front<void **>(a1, &v119);
    if (*(a1 + 16) - *(a1 + 8) == 8)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v119 = operator new(0x1000uLL);
    std::__split_buffer<void **>::emplace_front<void **>(a1, &v119);
    if (*(a1 + 16) - *(a1 + 8) == 8)
    {
LABEL_32:
      *(a1 + 32) = 256;
      goto LABEL_111;
    }
  }

  *(a1 + 32) += 512;
LABEL_111:
  v81 = *(a1 + 32);
  v82 = *(a1 + 8);
  v83 = *(a1 + 16);
  v84 = (v82 + 8 * (v81 >> 9));
  v85 = *v84;
  if (v12)
  {
    if (v83 == v82)
    {
      v86 = 0;
    }

    else
    {
      v86 = (*v84 + 8 * (*(a1 + 32) & 0x1FFLL));
    }

    v87 = (v86 - v85) >> 3;
    if (v87 < 2)
    {
      v88 = (*&v84[-8 * ((512 - v87) >> 9)] + 8 * (~(512 - v87) & 0x1FF));
    }

    else
    {
      v88 = (*&v84[((v87 - 1) >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * ((v87 - 1) & 0x1FF));
    }

    if (v86 == __len)
    {
      v91 = v88;
    }

    else
    {
      v91 = __len;
    }

    *v88 = *v86;
    v92 = *(a1 + 40) + 1;
    *(a1 + 32) = v81 - 1;
    *(a1 + 40) = v92;
    if (v12 == 1)
    {
      goto LABEL_135;
    }

    v93 = &v86[-*v84] >> 3;
    if (v93 < 0)
    {
      v94 = &v84[-8 * ((510 - v93) >> 9)];
      v95 = *v94;
      v96 = *v94 + 8 * (~(510 - v93) & 0x1FF);
      v97 = v93 + v12;
      if ((v93 + v12) >= 1)
      {
LABEL_130:
        v98 = &v84[8 * (v97 >> 9)];
        v99 = *v98;
        v100 = *v98 + 8 * (v97 & 0x1FF);
        if (v100 == v96)
        {
          goto LABEL_135;
        }

LABEL_134:
        v101 = ((v100 - v99) >> 3) + ((v98 - v94) << 6) - ((v96 - v95) >> 3);
        if (v101 < 1)
        {
          goto LABEL_135;
        }

        while (1)
        {
          v103 = *v94;
          v104 = *v94 + 4096;
          v105 = (v104 - v96) >> 3;
          if (v105 >= v101)
          {
            v106 = v101;
          }

          else
          {
            v106 = (v104 - v96) >> 3;
          }

          if (v105 <= v101)
          {
            v107 = *v94 + 4096;
          }

          else
          {
            v107 = v96 + 8 * v101;
          }

          if (v96 > v91)
          {
            goto LABEL_152;
          }

          v108 = v91 >= v107 || v96 == v86;
          if (v108)
          {
            goto LABEL_152;
          }

          v109 = (&v86[-*v84] >> 3) - (((v96 - v103) >> 3) + ((v94 - v84) << 6));
          if (!v109)
          {
            goto LABEL_152;
          }

          v110 = v109 + (&v91[-v103] >> 3);
          if (v110 >= 1)
          {
            break;
          }

          v91 = (*&v94[-8 * ((511 - v110) >> 9)] + 8 * (~(511 - v110) & 0x1FF));
          if (v96 != v107)
          {
LABEL_153:
            v118 = v106;
            v112 = *v84;
            v84 += 8;
            v111 = v112;
            v113 = v96;
            while (1)
            {
              v114 = (v111 - v86 + 4096) >> 3;
              if ((v107 - v113) >> 3 < v114)
              {
                v114 = (v107 - v113) >> 3;
              }

              v115 = 8 * v114;
              if (v114)
              {
                memmove(v86, v113, 8 * v114);
              }

              v113 += v115;
              if (v113 == v107)
              {
                break;
              }

              v116 = *v84;
              v84 += 8;
              v111 = v116;
              v86 = v116;
            }

            v86 += v115;
            if ((*(v84 - 1) + 4096) == v86)
            {
              v86 = *v84;
            }

            else
            {
              v84 -= 8;
            }

            v106 = v118;
          }

LABEL_164:
          if (v104 != v96)
          {
            v117 = v106 + ((v96 - *v94) >> 3);
            if (v117 < 1)
            {
              v102 = 511 - v117;
              v94 -= 8 * (v102 >> 9);
              v96 = *v94 + 8 * (~v102 & 0x1FF);
            }

            else
            {
              v94 += 8 * (v117 >> 9);
              v96 = *v94 + 8 * (v117 & 0x1FF);
            }
          }

          v35 = v101 <= v106;
          v101 -= v106;
          if (v35)
          {
            goto LABEL_135;
          }
        }

        v91 = (*&v94[(v110 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v110 & 0x1FF));
LABEL_152:
        if (v96 != v107)
        {
          goto LABEL_153;
        }

        goto LABEL_164;
      }
    }

    else
    {
      v94 = &v84[8 * ((v93 + 1) >> 9)];
      v95 = *v94;
      v96 = *v94 + 8 * ((v93 + 1) & 0x1FF);
      v97 = v93 + v12;
      if ((v93 + v12) >= 1)
      {
        goto LABEL_130;
      }
    }

    v98 = &v84[-8 * ((511 - v97) >> 9)];
    v99 = *v98;
    v100 = *v98 + 8 * (~(511 - v97) & 0x1FF);
    if (v100 == v96)
    {
LABEL_135:
      *v86 = *v91;
      return;
    }

    goto LABEL_134;
  }

  if (v83 == v82)
  {
    v89 = 0;
  }

  else
  {
    v89 = *v84 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (v89 == v85)
  {
    v89 = *(v84 - 1) + 4096;
  }

  *(v89 - 8) = *__len;
  v90 = *(a1 + 40) + 1;
  *(a1 + 32) = v81 - 1;
  *(a1 + 40) = v90;
}

void sub_2963148FC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_26()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance, &dword_2962DD000);
  }

  return result;
}

const char *asString(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "qmux";
  }

  else
  {
    return off_29EE318E0[a1 - 1];
  }
}

uint64_t getMessageIdFromBuffer(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t QMux::State::State(uint64_t a1, __int128 *a2, int a3, void *a4, int a5, char a6)
{
  v6 = 0x7FFFFFFFFFFFFFF7;
  *a1 = &unk_2A1D48F40;
  v7 = (a1 + 8);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = v9 + 17;
  if (v9 + 17 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 < 0x17)
  {
    v49 = 39;
    *v48 = *"ATCS.QMux.queue('";
    v17 = &v49 + 1;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v10 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v10 | 7) + 1;
    }

    v16 = operator new(v15);
    v48[1] = (v9 + 17);
    v49 = v15 | 0x8000000000000000;
    v48[0] = v16;
    v16[16] = 39;
    *v16 = *"ATCS.QMux.queue('";
    v17 = v16 + 17;
  }

  v18 = *a2;
  if (v8 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  memmove(v17, v19, v9);
LABEL_15:
  v17[v9] = 0;
  v20 = SHIBYTE(v49);
  if ((SHIBYTE(v49) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v49) - 21) < 2)
    {
      v44 = a3;
      v21 = a6;
      v22 = (SHIBYTE(v49) + 2);
      v23 = v48;
      v24 = 22;
LABEL_21:
      v25 = 2 * v24;
      if (v22 > 2 * v24)
      {
        v25 = v22;
      }

      if ((v25 | 7) == 0x17)
      {
        v26 = 25;
      }

      else
      {
        v26 = (v25 | 7) + 1;
      }

      if (v25 >= 0x17)
      {
        v6 = v26;
      }

      else
      {
        v6 = 23;
      }

      v27 = v24 == 22;
      goto LABEL_30;
    }

    v31 = v48;
    *(v48 + SHIBYTE(v49)) = 10535;
    v32 = (v20 + 2);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v20 = v48[1];
  v24 = (v49 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v24 - v48[1] >= 2)
  {
    v31 = v48[0];
    *(v48[0] + v48[1]) = 10535;
    v32 = (v20 + 2);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v49) = v32 & 0x7F;
LABEL_39:
      v30 = &v32[v31];
      goto LABEL_40;
    }

LABEL_38:
    v48[1] = v32;
    goto LABEL_39;
  }

  v44 = a3;
  v22 = v48[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v49 & 0x7FFFFFFFFFFFFFFFLL)) < v48[1] - v24 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = a6;
  v23 = v48[0];
  if (v24 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v27 = 0;
LABEL_30:
  v28 = operator new(v6);
  v29 = v28;
  if (v20)
  {
    memmove(v28, v23, v20);
  }

  *(v29 + v20) = 10535;
  if (!v27)
  {
    operator delete(v23);
  }

  v48[1] = v22;
  v49 = v6 | 0x8000000000000000;
  v48[0] = v29;
  v30 = &v22[v29];
  a6 = v21;
  a3 = v44;
LABEL_40:
  *v30 = 0;
  v51 = v49;
  *__p = *v48;
  v48[1] = 0;
  v49 = 0;
  v48[0] = 0;
  if (v51 >= 0)
  {
    v33 = __p;
  }

  else
  {
    v33 = __p[0];
  }

  if ((a3 - 1) > 9)
  {
    v34 = "qmux";
  }

  else
  {
    v34 = off_29EE318E0[a3 - 1];
  }

  ctu::OsLogContext::OsLogContext(v47, "com.apple.telephony.bb", v34);
  v35 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v36 = dispatch_queue_create(v33, v35);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + 24) = v36;
  if (v36)
  {
    v37 = v36;
    dispatch_retain(v36);
    *(a1 + 32) = 0;
    dispatch_release(v37);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 40, v52);
  MEMORY[0x29C258F40](v52);
  ctu::OsLogContext::~OsLogContext(v47);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_54:
    operator delete(v48[0]);
    *a1 = &unk_2A1D48DA8;
    v39 = (a1 + 48);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v49) < 0)
  {
    goto LABEL_54;
  }

LABEL_51:
  *a1 = &unk_2A1D48DA8;
  v39 = (a1 + 48);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
LABEL_52:
    v40 = *a2;
    v39->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v39->__r_.__value_.__l.__data_ = v40;
    goto LABEL_56;
  }

LABEL_55:
  std::string::__init_copy_ctor_external(v39, *a2, *(a2 + 1));
LABEL_56:
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v41 = a4[1];
  *(a1 + 88) = *a4;
  *(a1 + 96) = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = a5;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 288) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = a1 + 288;
  *(a1 + 304) = 0;
  *(a1 + 306) = a6;
  *(a1 + 328) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 344) = capabilities::radio::QMuxPendingRequestLimitCount(v38);
  *(a1 + 348) = 0;
  ATCSTimer::timerBootstrap(0, v42);
  return a1;
}

void sub_296314E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x29C258F40](v21 + 40);
  ctu::SharedSynchronizable<qmi::ClientProxy::State>::~SharedSynchronizable(v20);
  _Unwind_Resume(a1);
}

void QMux::State::~State(QMux::State *this)
{
  v44 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1D48DA8;
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (this + 48);
    if (*(this + 71) < 0)
    {
      v8 = *v8;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Destroying QMux", &buf, 0xCu);
  }

  if (*(this + 22))
  {
    v9 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (this + 48);
      if (*(this + 71) < 0)
      {
        v10 = *v10;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_2962DD000, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] Warning! QMux destroyed while still attached to IPCDriver; attempting detach", &buf, 0xCu);
    }

    v37[1] = this;
    v38 = 0;
    v37[0] = &v38;
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 0x40000000;
    v40 = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__1EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    v41 = &__block_descriptor_tmp_97;
    v42 = this + 8;
    v43 = v37;
    v11 = *(this + 3);
    if (*(this + 4))
    {
      dispatch_async_and_wait(v11, &buf);
      v13 = v38;
      if (!v38)
      {
LABEL_15:
        if (*(this + 22))
        {
          _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x118, "fDriver==NULL", "is not", "true", "QMux destroyed while still attached to IPCDriver", v12);
        }

        goto LABEL_17;
      }
    }

    else
    {
      dispatch_sync(v11, &buf);
      v13 = v38;
      if (!v38)
      {
        goto LABEL_15;
      }
    }

    (*(*v13 + 48))(v13, this, this + 184);
    goto LABEL_15;
  }

LABEL_17:
  QMux::State::setMainState(this, 5, v4, v5, v6, v7);
  QMux::State::tearDown_sync(this);
  v14 = *(this + 39);
  if (v14)
  {
    *(this + 40) = v14;
    operator delete(v14);
  }

  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(this + 36));
  v15 = *(this + 34);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 31);
  if (v16)
  {
    v17 = *(this + 32);
    v18 = *(this + 31);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(this + 31);
    }

    *(this + 32) = v16;
    operator delete(v18);
  }

  v20 = *(this + 30);
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = *(this + 29);
  if (v21)
  {
    dispatch_group_leave(v21);
    v22 = *(this + 29);
    if (v22)
    {
      dispatch_release(v22);
    }
  }

  v23 = *(this + 28);
  if (v23)
  {
    dispatch_group_leave(v23);
    v24 = *(this + 28);
    if (v24)
    {
      dispatch_release(v24);
    }
  }

  v25 = *(this + 27);
  if (v25)
  {
    dispatch_group_leave(v25);
    v26 = *(this + 27);
    if (v26)
    {
      dispatch_release(v26);
    }
  }

  std::deque<QMuxQueueItem>::clear(this + 16);
  v27 = *(this + 17);
  v28 = *(this + 18);
  if (v27 != v28)
  {
    do
    {
      v29 = *v27++;
      operator delete(v29);
    }

    while (v27 != v28);
    v27 = *(this + 17);
    v28 = *(this + 18);
  }

  if (v28 != v27)
  {
    *(this + 18) = v28 + ((v27 - v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v30 = *(this + 16);
  if (v30)
  {
    operator delete(v30);
  }

  std::__tree<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::__map_value_compare<std::pair<qmi::ServiceType const,unsigned char const>,std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::less<std::pair<qmi::ServiceType const,unsigned char const>>,true>,std::allocator<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>>>::destroy(*(this + 14));
  v31 = *(this + 12);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(this + 10);
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 71) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  if (*(this + 71) < 0)
  {
LABEL_52:
    operator delete(*(this + 6));
  }

LABEL_53:
  MEMORY[0x29C258F40](v2);
  v33 = *(this + 4);
  if (v33)
  {
    dispatch_release(v33);
  }

  v34 = *(this + 3);
  if (v34)
  {
    dispatch_release(v34);
  }

  v35 = *(this + 2);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = *MEMORY[0x29EDCA608];
}

{
  QMux::State::~State(this);

  operator delete(v1);
}

void sub_296315380(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void QMux::State::setDriverAndCookie(QMux::State *this, ATCSIPCDriver *a2, void *a3)
{
  v11 = a3;
  v12 = a2;
  if (!a2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = this;
    block = MEMORY[0x29EDCA5F8];
    v14 = 0x40000000;
    v15 = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__1EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    v16 = &__block_descriptor_tmp_97;
    v17 = this + 8;
    v18 = &v8;
    v5 = *(this + 3);
    if (*(this + 4))
    {
      dispatch_async_and_wait(v5, &block);
      v6 = v7;
      if (!v7)
      {
        return;
      }
    }

    else
    {
      dispatch_sync(v5, &block);
      v6 = v7;
      if (!v7)
      {
        return;
      }
    }

    (*(*v6 + 48))(v6, this, this + 184);
    return;
  }

  v8 = this;
  v9 = &v12;
  v10 = &v11;
  block = MEMORY[0x29EDCA5F8];
  v14 = 0x40000000;
  v15 = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v16 = &__block_descriptor_tmp_96;
  v17 = this + 8;
  v18 = &v8;
  v4 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    dispatch_sync(v4, &block);
  }
}

void QMux::State::tearDown_sync(QMux::State *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 48);
    if (*(this + 71) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Clearing all messages in the QMux send/pending queues", buf, 0xCu);
  }

  std::deque<QMuxQueueItem>::clear(this + 16);
  *(this + 152) = 0;
  atomic_store(0, this + 88);
  atomic_store(0, this + 87);
  v4 = *(this + 13);
  v5 = this + 112;
  if (v4 != this + 112)
  {
    do
    {
      v6 = *(v4 + 6);
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = std::__shared_weak_count::lock(v6);
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = v7;
      v9 = *(v4 + 5);
      if (v9)
      {
        v10 = *(this + 5);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = this + 48;
          if (*(this + 71) < 0)
          {
            v11 = *(this + 6);
          }

          v12 = v4[32];
          v13 = v4[33];
          *buf = 136315650;
          *&buf[4] = v11;
          *&buf[12] = 1024;
          *&buf[14] = v12;
          v20 = 1024;
          v21 = v13;
          _os_log_impl(&dword_2962DD000, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Sending control indication to QMIClient(svcType=%d,clientId=%d) on sync", buf, 0x18u);
        }

        (*(*v9 + 48))(v9);
        v9[33] = -1;
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v14 = *(v4 + 1);
        if (!v14)
        {
          do
          {
LABEL_21:
            v15 = *(v4 + 2);
            v16 = *v15 == v4;
            v4 = v15;
          }

          while (!v16);
          goto LABEL_7;
        }
      }

      else
      {
LABEL_17:
        v14 = *(v4 + 1);
        if (!v14)
        {
          goto LABEL_21;
        }
      }

      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
LABEL_7:
      v4 = v15;
    }

    while (v15 != v5);
  }

  std::__tree<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::__map_value_compare<std::pair<qmi::ServiceType const,unsigned char const>,std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::less<std::pair<qmi::ServiceType const,unsigned char const>>,true>,std::allocator<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>>>::destroy(*(this + 14));
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = v5;
  v17 = *(this + 10);
  *buf = *(this + 9);
  *&buf[8] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMux::State::notifyClientAdded_sync(this, buf, 0);
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2963157D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2963157E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QMux::State::create(__int128 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, int a4@<W3>, char a5@<W4>, atomic_ullong *a6@<X8>)
{
  *a6 = 0xAAAAAAAAAAAAAAAALL;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x168uLL);
  v13 = v12;
  v14 = *a3;
  v15 = a3[1];
  v31[0] = v14;
  v31[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  QMux::State::State(v12, a1, a2, v31, a4, a5);
  *a6 = v13;
  a6[1] = 0xAAAAAAAAAAAAAAAALL;
  v16 = operator new(0x20uLL);
  v16[1] = 0;
  v18 = v16 + 1;
  *v16 = &unk_2A1D48FD0;
  v16[2] = 0;
  v16[3] = v13;
  a6[1] = v16;
  v19 = *(v13 + 16);
  if (!v19)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
    *(v13 + 8) = v13;
    *(v13 + 16) = v16;
    if (atomic_fetch_add(v18, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v19->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
    *(v13 + 8) = v13;
    *(v13 + 16) = v16;
    v20 = v16;
    std::__shared_weak_count::__release_weak(v19);
    v16 = v20;
    if (!atomic_fetch_add(v18, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v21 = v16;
      (*(*v16 + 16))(v16, v17);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

LABEL_9:
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v23 = *a6;
  v22 = a6[1];
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = v23[2];
  if (!v24 || (v25 = v23[1], (v26 = std::__shared_weak_count::lock(v24)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  v28 = operator new(0x10uLL);
  *v28 = v23;
  v28[1] = v22;
  v29 = v23[3];
  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  v30 = operator new(0x18uLL);
  *v30 = v28;
  v30[1] = v25;
  v30[2] = v27;
  dispatch_async_f(v29, v30, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>(QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);

    std::__shared_weak_count::__release_weak(v27);
  }
}

void sub_296315AB8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(a1);
}

void QMux::State::init_sync(QMux::State *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (!v2 || (v4 = std::__shared_weak_count::lock(v2), (v12 = v4) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = 0;
  v14 = std::__shared_weak_count::lock(v4);
  if (v14)
  {
    v13 = v3;
  }

  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0xE0uLL);
  QMIControl::QMIControl(v6, &v13);
  std::shared_ptr<QMIControl>::shared_ptr[abi:ne200100]<QMIControl,QMIControl::Deleter,0>(v15, v6);
  QMIControl::init_sync(v15[0], &v13);
  v7 = *v15;
  v15[0] = 0;
  v15[1] = 0;
  v8 = *(this + 10);
  *(this + 72) = v7;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v15[1];
  if (v15[1] && !atomic_fetch_add(v15[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::__release_weak(v5);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v11 = *(this + 10);
  v15[0] = *(this + 9);
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  QMux::State::notifyClientAdded_sync(this, v15, 0);
  if (v11)
  {
    if (!atomic_fetch_add(v11 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v11 + 16))(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_296315D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296315D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a13);
  QMux::~QMux(&a11);
  std::__shared_weak_count::__release_weak(v13);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *QMux::QMux(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = std::__shared_weak_count::lock(*(a2 + 8));
    result = v3;
    v3[1] = v4;
    if (v4)
    {
      *v3 = *a2;
    }
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  if (*(a2 + 8))
  {
    v3 = result;
    v4 = std::__shared_weak_count::lock(*(a2 + 8));
    result = v3;
    v3[1] = v4;
    if (v4)
    {
      *v3 = *a2;
    }
  }

  return result;
}

void QMux::~QMux(QMux *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void QMux::State::notifyClientAdded_sync(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = *a2;
  v6[33] = a3;
  (*(*v6 + 16))(v6);
  v8 = *(*a2 + 32);
  v10 = (a1 + 112);
  v9 = *(a1 + 112);
  if (!v9)
  {
    v17 = (a1 + 112);
    goto LABEL_58;
  }

  v11 = *(a1 + 112);
  while (1)
  {
    v12 = *(v11 + 32);
    if (v8 == v12)
    {
      break;
    }

    if (v8 >= v12)
    {
      if (v12 >= v8)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      if ((v16 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_3:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_39;
    }
  }

  v13 = *(v11 + 33);
  v14 = v13 == a3;
  if (v13 > a3)
  {
    goto LABEL_3;
  }

  if (v13 >= a3)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  if (v14)
  {
    v15 = 0;
  }

  if (v15 < 0)
  {
LABEL_18:
    ++v11;
    goto LABEL_3;
  }

LABEL_20:
  v18 = 1;
  do
  {
    v19 = *(v9 + 32);
    if (v8 == v19)
    {
      v20 = *(v9 + 33);
      v21 = v20 == a3;
      if (v20 > a3)
      {
        goto LABEL_21;
      }

      if (v20 >= a3)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      if (v21)
      {
        v22 = 0;
      }

      if ((v22 & 0x80) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v8 < v19)
      {
        goto LABEL_21;
      }

      if (v19 >= v8)
      {
        v23 = 1;
      }

      else
      {
        v23 = -1;
      }

      if ((v23 & 0x80) == 0)
      {
        goto LABEL_38;
      }
    }

    v9 += 8;
LABEL_21:
    v9 = *v9;
  }

  while (v9);
  v18 = 0;
LABEL_38:
  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x1CE, "fClientMap.count(key)", "==", "0", v18, 0);
  v9 = *v10;
LABEL_39:
  v17 = (a1 + 112);
  if (v9)
  {
    while (1)
    {
      v17 = v9;
      v24 = *(v9 + 32);
      if (v8 == v24)
      {
        v25 = v17[33];
        v26 = v25 == a3;
        if (v25 > a3)
        {
          goto LABEL_41;
        }

        if (v25 >= a3)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v26)
        {
          v27 = 0;
        }

        if ((v27 & 0x80) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v8 < v24)
        {
LABEL_41:
          v9 = *v17;
          v10 = v17;
          if (!*v17)
          {
            break;
          }

          continue;
        }

        if (v24 >= v8)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if ((v28 & 0x80) == 0)
        {
          goto LABEL_61;
        }
      }

      v9 = *(v17 + 1);
      if (!v9)
      {
        v10 = (v17 + 8);
        break;
      }
    }
  }

LABEL_58:
  v29 = v17;
  v17 = operator new(0x38uLL);
  *(v17 + 16) = v8 | (a3 << 8);
  *(v17 + 5) = 0;
  *(v17 + 6) = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = v29;
  *v10 = v17;
  v30 = **(a1 + 104);
  if (v30)
  {
    *(a1 + 104) = v30;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 112), v17);
  ++*(a1 + 120);
LABEL_61:
  v32 = *a2;
  v31 = a2[1];
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 16), 1uLL, memory_order_relaxed);
  }

  v33 = *(v17 + 6);
  *(v17 + 5) = v32;
  *(v17 + 6) = v31;
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (*(a1 + 208) == 3 && *(a1 + 216))
  {
    if (!*(a1 + 224))
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x1D5, "fPowerDownClientsState", "is not", "true", v7);
      v34 = *(a1 + 224);
    }

    v35 = *(**a2 + 88);

    v35();
  }
}

void QMux::State::join(NSObject **this)
{
  v2 = dispatch_group_create();
  v3 = v2;
  v6 = this;
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNKS2_4joinEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_tmp_91_0;
  block[4] = this + 1;
  block[5] = &v6;
  v4 = this[3];
  if (this[4])
  {
    dispatch_async_and_wait(v4, block);
    v5 = group;
    if (!group)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_sync(v4, block);
    v5 = group;
    if (!group)
    {
      goto LABEL_9;
    }
  }

  dispatch_group_leave(v5);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_9:
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void QMux::State::joinControl(NSObject **this)
{
  v2 = dispatch_group_create();
  v3 = v2;
  v6 = this;
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_11joinControlEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = this + 1;
  block[5] = &v6;
  v4 = this[3];
  if (this[4])
  {
    dispatch_async_and_wait(v4, block);
    v5 = group;
    if (!group)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_sync(v4, block);
    v5 = group;
    if (!group)
    {
      goto LABEL_9;
    }
  }

  dispatch_group_leave(v5);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_9:
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void QMux::State::flush_sync(QMux::State *this, const group *a2)
{
  v2 = *(this + 13);
  v3 = this + 112;
  if (v2 != this + 112)
  {
    do
    {
      v5 = *(v2 + 6);
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = std::__shared_weak_count::lock(v5);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = v6;
      v8 = *(v2 + 5);
      if (v8)
      {
        (*(*v8 + 80))(v8, a2->gr_name);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v9 = *(v2 + 1);
        if (!v9)
        {
          do
          {
LABEL_13:
            v10 = *(v2 + 2);
            v11 = *v10 == v2;
            v2 = v10;
          }

          while (!v11);
          goto LABEL_3;
        }
      }

      else
      {
LABEL_9:
        v9 = *(v2 + 1);
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
LABEL_3:
      v2 = v10;
    }

    while (v10 != v3);
  }
}

void QMux::State::clearQueues_sync(QMux::State *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 48);
    if (*(this + 71) < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Clearing all messages in the QMux send/pending queues", &v5, 0xCu);
  }

  std::deque<QMuxQueueItem>::clear(this + 16);
  v4 = *MEMORY[0x29EDCA608];
}

void std::deque<QMuxQueueItem>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v10 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0xAA];
    v6 = *v5 + 24 * (v4 % 0xAA);
    v7 = v2[(a1[5] + v4) / 0xAA] + 24 * ((a1[5] + v4) % 0xAA);
    if (v6 != v7)
    {
      while (1)
      {
        v8 = *(v6 + 16);
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v6 += 24;
        if (v6 - *v5 == 4080)
        {
          goto LABEL_8;
        }

LABEL_4:
        if (v6 == v7)
        {
          v2 = a1[1];
          v3 = a1[2];
          goto LABEL_12;
        }
      }

      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v6 += 24;
      if (v6 - *v5 != 4080)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      goto LABEL_4;
    }

LABEL_12:
    a1[5] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v11 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v10 = (v11 - v2) >> 3;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 170;
  }

  a1[4] = v12;
}

void QMux::State::add_sync(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 72);
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIControl::add_sync(v2, &v5);
  v4 = v6;
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void QMux::State::remove_sync(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *(*a2 + 33);
  v6 = *(*a2 + 32);
  v7 = *(a1 + 72);
  v88 = *a2;
  v89 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMIControl::remove_sync(v7, &v88);
  v8 = v89;
  if (v89 && !atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v5 == 255)
    {
      return;
    }
  }

  else if (v5 == 255)
  {
    return;
  }

  *(*a2 + 33) = -1;
  v9 = *(a1 + 112);
  if (v9)
  {
    v10 = a1 + 112;
    do
    {
      v13 = *(v9 + 32);
      v14 = v13 == v6;
      if (v13 >= v6)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      if (v14)
      {
        v16 = *(v9 + 33);
        v17 = v16 == v5;
        v15 = v16 >= v5 ? 1 : -1;
        if (v17)
        {
          v15 = 0;
        }
      }

      v11 = v15 & 0x80;
      v14 = v11 == 0;
      v12 = v11 >> 4;
      if (v14)
      {
        v10 = v9;
      }

      v9 = *(v9 + v12);
    }

    while (v9);
    if (v10 != a1 + 112)
    {
      v18 = *(v10 + 32);
      v19 = v6 == v18;
      if (v6 >= v18)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      if (v19)
      {
        v21 = *(v10 + 33);
        v22 = v5 >= v21;
        v23 = v5 == v21;
        v20 = -1;
        if (v22)
        {
          v20 = 1;
        }

        if (v23)
        {
          v20 = 0;
        }
      }

      if ((v20 & 0x80) == 0)
      {
        v24 = *(a1 + 136);
        v25 = *(a1 + 144);
        if (v25 == v24)
        {
          goto LABEL_124;
        }

        v27 = *(a1 + 160);
        v26 = *(a1 + 168);
        v28 = (v24 + 8 * (v27 / 0xAA));
        v29 = *v28;
        v30 = (*v28 + 24 * (v27 % 0xAA));
        v31 = *(v24 + 8 * ((v26 + v27) / 0xAA)) + 24 * ((v26 + v27) % 0xAA);
        if (v30 != v31)
        {
          if (*(a1 + 304))
          {
            v30 += 24;
            if (v30 - v29 == 4080)
            {
              v32 = v28[1];
              ++v28;
              v29 = v32;
              v30 = v32;
            }
          }
        }

        if (v31 != v30)
        {
          while (*v30 != v6 || v5 != v30[1])
          {
            v30 += 24;
            if (v30 - v29 == 4080)
            {
              v35 = v28[1];
              ++v28;
              v29 = v35;
              v30 = v35;
            }

            if (v30 == v31)
            {
              goto LABEL_63;
            }
          }
        }

        if (v30 == v31)
        {
LABEL_63:
          v30 = (*(v24 + 8 * ((v26 + v27) / 0xAA)) + 24 * ((v26 + v27) % 0xAA));
          goto LABEL_65;
        }

        v33 = v30;
        for (i = v28; ; v29 = *i)
        {
          v33 += 24;
          if (v33 - v29 == 4080)
          {
            v36 = i[1];
            ++i;
            v33 = v36;
          }

          if (v33 == v31)
          {
            v27 = *(a1 + 160);
            v26 = *(a1 + 168);
            v24 = *(a1 + 136);
            v25 = *(a1 + 144);
LABEL_65:
            v41 = v26 + v27;
            v42 = (v26 + v27) / 0xAA;
            v43 = (v24 + 8 * v42);
            if (v25 == v24)
            {
              v44 = 0;
              if (v30)
              {
                goto LABEL_71;
              }

LABEL_67:
              v45 = 0;
              v46 = (v24 + 8 * (v27 / 0xAA));
              if (v25 == v24)
              {
                v47 = 1;
                v48 = 0;
                if (v30)
                {
                  goto LABEL_76;
                }
              }

              else
              {
LABEL_72:
                v47 = 0;
                v48 = *v46 + 24 * (v27 % 0xAA);
                if (v48 != v30)
                {
                  goto LABEL_76;
                }
              }
            }

            else
            {
              v44 = *v43 + 24 * (v41 - 170 * v42);
              if (v44 == v30)
              {
                goto LABEL_67;
              }

LABEL_71:
              v45 = 170 * (v43 - v28) - 0x5555555555555555 * ((v44 - *v43) >> 3) + 0x5555555555555555 * (&v30[-*v28] >> 3);
              v46 = (v24 + 8 * (v27 / 0xAA));
              if (v25 != v24)
              {
                goto LABEL_72;
              }

              v48 = 0;
              v47 = 1;
              if (v30)
              {
LABEL_76:
                v49 = 170 * (v28 - v46) - 0x5555555555555555 * (&v30[-*v28] >> 3) + 0x5555555555555555 * ((v48 - *v46) >> 3);
                if (!v49)
                {
                  v50 = v48;
                  v51 = v46;
                  if (v45 < 1)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_81;
                }

                v52 = 170 * (v28 - v46) - 0x5555555555555555 * (&v30[-*v28] >> 3);
                if (v52 < 1)
                {
                  v59 = 169 - v52;
                  v51 = &v46[-(v59 / 0xAA)];
                  v50 = *v51 + 24 * (170 * (v59 / 0xAA) - v59) + 4056;
                  if (v45 >= 1)
                  {
                    goto LABEL_81;
                  }
                }

                else
                {
                  v51 = &v46[v52 / 0xAAuLL];
                  v50 = *v51 + 24 * (v52 % 0xAAuLL);
                  if (v45 < 1)
                  {
                    goto LABEL_124;
                  }

LABEL_81:
                  v53 = v26 - v45;
                  v54 = v45 - 0x5555555555555555 * ((v50 - *v51) >> 3);
                  if (v49 <= v53 >> 1)
                  {
                    v22 = v45 != 0x5555555555555555 * ((v50 - *v51) >> 3);
                    if (v54 < 1)
                    {
                      v67 = 169 - v54;
                      v57 = &v51[-(v67 / 0xAA)];
                      v58 = *v57 + 24 * (170 * (v67 / 0xAA) - v67) + 4056;
                    }

                    else
                    {
                      v57 = &v51[v54 / 0xAAuLL];
                      v58 = *v57 + 24 * (v54 % 0xAAuLL);
                    }

                    *&v68 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v90 = v68;
                    v91 = v68;
                    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,0>(&v90, v46, v48, v51, v50, v57, v58);
                    v69 = *(&v91 + 1);
                    while (v48 != v69)
                    {
                      v74 = *(v48 + 16);
                      if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v74->__on_zero_shared)(v74);
                        std::__shared_weak_count::__release_weak(v74);
                      }

                      v48 += 24;
                      if (v48 - *v46 == 4080)
                      {
                        v75 = v46[1];
                        ++v46;
                        v48 = v75;
                      }
                    }

                    v70 = *(a1 + 168) - v45;
                    v71 = *(a1 + 160) + v45;
                    *(a1 + 160) = v71;
                    *(a1 + 168) = v70;
                    if (v71 >= 0x154)
                    {
                      v72 = *(a1 + 136);
                      do
                      {
                        operator delete(*v72);
                        v72 = (*(a1 + 136) + 8);
                        *(a1 + 136) = v72;
                        v73 = *(a1 + 160) - 170;
                        *(a1 + 160) = v73;
                      }

                      while (v73 >= 0x154);
                    }
                  }

                  else
                  {
                    v22 = v45 != 0x5555555555555555 * ((v50 - *v51) >> 3);
                    if (v54 < 1)
                    {
                      v60 = 169 - v54;
                      v55 = &v51[-(v60 / 0xAA)];
                      v56 = *v55 + 24 * (170 * (v60 / 0xAA) - v60) + 4056;
                    }

                    else
                    {
                      v55 = &v51[v54 / 0xAAuLL];
                      v56 = *v55 + 24 * (v54 % 0xAAuLL);
                    }

                    if (v47)
                    {
                      v61 = 0;
                    }

                    else
                    {
                      v61 = *v43 + 24 * (v41 - 170 * v42);
                    }

                    *&v90 = v51;
                    *(&v90 + 1) = v50;
                    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>>>(v55, v56, v43, v61, &v90);
                    v62 = *(&v90 + 1);
                    v64 = *(a1 + 136);
                    v63 = *(a1 + 144);
                    if (v63 == v64)
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v65 = *(a1 + 168) + *(a1 + 160);
                      v66 = *(v64 + 8 * (v65 / 0xAA)) + 24 * (v65 % 0xAA);
                    }

                    if (*(&v90 + 1) != v66)
                    {
                      v76 = v90;
                      do
                      {
                        v77 = *(v62 + 16);
                        if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v77->__on_zero_shared)(v77);
                          std::__shared_weak_count::__release_weak(v77);
                        }

                        v62 += 24;
                        if (v62 - *v76 == 4080)
                        {
                          v78 = v76[1];
                          ++v76;
                          v62 = v78;
                        }
                      }

                      while (v62 != v66);
                      v64 = *(a1 + 136);
                      v63 = *(a1 + 144);
                    }

                    if (v63 == v64)
                    {
                      v79 = 0;
                    }

                    else
                    {
                      v79 = 170 * ((v63 - v64) >> 3) - 1;
                    }

                    v80 = *(a1 + 160);
                    v81 = *(a1 + 168) - v45;
                    *(a1 + 168) = v81;
                    if ((v79 - (v80 + v81)) >= 0x154)
                    {
                      do
                      {
                        operator delete(*(v63 - 8));
                        v63 = *(a1 + 144) - 8;
                        v14 = v63 == *(a1 + 136);
                        v82 = 170 * ((v63 - *(a1 + 136)) >> 3) - 1;
                        *(a1 + 144) = v63;
                        if (v14)
                        {
                          v82 = 0;
                        }
                      }

                      while ((v82 - (*(a1 + 168) + *(a1 + 160))) > 0x153);
                    }
                  }
                }

LABEL_124:
                v83 = *(v10 + 8);
                if (v83)
                {
                  do
                  {
                    v84 = v83;
                    v83 = *v83;
                  }

                  while (v83);
                }

                else
                {
                  v85 = v10;
                  do
                  {
                    v84 = v85[2];
                    v14 = *v84 == v85;
                    v85 = v84;
                  }

                  while (!v14);
                }

                if (*(a1 + 104) == v10)
                {
                  *(a1 + 104) = v84;
                }

                v86 = *(a1 + 112);
                --*(a1 + 120);
                std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v86, v10);
                v87 = *(v10 + 48);
                if (v87)
                {
                  std::__shared_weak_count::__release_weak(v87);
                }

                operator delete(v10);
                return;
              }
            }

            v49 = 0;
            v50 = v48;
            v51 = v46;
            if (v45 < 1)
            {
              goto LABEL_124;
            }

            goto LABEL_81;
          }

          if (*v33 != v6 || v5 != v33[1])
          {
            *v30 = *v33;
            v38 = *(v33 + 1);
            v37 = *(v33 + 2);
            if (v37)
            {
              atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
            }

            v39 = *(v30 + 2);
            *(v30 + 1) = v38;
            *(v30 + 2) = v37;
            if (!v39 || atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v30 += 24;
              if (&v30[-*v28] != 4080)
              {
                continue;
              }

LABEL_58:
              v40 = v28[1];
              ++v28;
              v30 = v40;
              continue;
            }

            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v30 += 24;
            if (&v30[-*v28] == 4080)
            {
              goto LABEL_58;
            }
          }
        }
      }
    }
  }
}

void QMux::State::check_sync(QMux::State *this)
{
  v31 = *MEMORY[0x29EDCA608];
  v1 = *(this + 13);
  v2 = this + 112;
  if (v1 != this + 112)
  {
    v4 = (this + 48);
    do
    {
      v24 = 0;
      v5 = *(v1 + 6);
      if (v5 && (v6 = std::__shared_weak_count::lock(v5), (v24 = v6) != 0) && *(v1 + 5))
      {
        v7 = *(v1 + 1);
        if (v7)
        {
          do
          {
            v1 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v1;
            v1 = *(v1 + 2);
          }

          while (*v1 != v8);
        }
      }

      else
      {
        v9 = *(this + 5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v4;
          if (*(this + 71) < 0)
          {
            v10 = *v4;
          }

          v11 = v1[32];
          v12 = v1[33];
          *buf = 136315650;
          v26 = v10;
          v27 = 1024;
          v28 = v11;
          v29 = 1024;
          v30 = v12;
          _os_log_impl(&dword_2962DD000, v9, OS_LOG_TYPE_DEFAULT, "#I [%s] QMIClient(svcType=%d,clientId=%d) is dead but still registered; recycling the id", buf, 0x18u);
        }

        QMIControl::releaseClientId_sync(*(this + 9), v1[32], v1[33]);
        v13 = *(v1 + 1);
        v14 = v13;
        v15 = v1;
        if (v13)
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
            v17 = *v16 == v15;
            v15 = v16;
          }

          while (!v17);
        }

        v18 = v1;
        if (v13)
        {
          do
          {
            v19 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v19 = *(v18 + 2);
            v17 = *v19 == v18;
            v18 = v19;
          }

          while (!v17);
        }

        if (*(this + 13) == v1)
        {
          *(this + 13) = v19;
        }

        v20 = *(this + 14);
        --*(this + 15);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, v1);
        v21 = *(v1 + 6);
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        operator delete(v1);
        v6 = v24;
        v1 = v16;
      }

      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v22 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    while (v1 != v2);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_2963172A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QMux::State::revokeClient_sync(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 112);
  if (v6)
  {
    v7 = a1 + 112;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 == a2;
      if (v10 >= a2)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v11)
      {
        v13 = *(v6 + 33);
        v14 = v13 == a3;
        v12 = v13 >= a3 ? 1 : -1;
        if (v14)
        {
          v12 = 0;
        }
      }

      v8 = v12 & 0x80;
      v11 = v8 == 0;
      v9 = v8 >> 4;
      if (v11)
      {
        v7 = v6;
      }

      v6 = *(v6 + v9);
    }

    while (v6);
    if (v7 != a1 + 112)
    {
      v15 = *(v7 + 32);
      v16 = v15 == a2;
      if (v15 <= a2)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      if (v16)
      {
        v18 = *(v7 + 33);
        v19 = v18 == a3;
        v20 = v18 > a3;
        v17 = -1;
        if (!v20)
        {
          v17 = 1;
        }

        if (v19)
        {
          v17 = 0;
        }
      }

      if ((v17 & 0x80) == 0)
      {
        v21 = *(v7 + 48);
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = *(v7 + 40);
            if (v23)
            {
              v24 = *(a1 + 40);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = (a1 + 48);
                if (*(a1 + 71) < 0)
                {
                  v25 = *v25;
                }

                *buf = 136315650;
                v37 = v25;
                v38 = 1024;
                v39 = a2;
                v40 = 1024;
                v41 = a3;
                _os_log_impl(&dword_2962DD000, v24, OS_LOG_TYPE_DEFAULT, "#I [%s] Sending client id revocation to QMIClient(svcType=%d,clientId=%d)", buf, 0x18u);
              }

              (*(*v23 + 48))(v23);
              v23[33] = -1;
              v26 = *(v7 + 8);
              if (!v26)
              {
                goto LABEL_50;
              }

              goto LABEL_42;
            }
          }
        }

        else
        {
          v22 = 0;
        }

        v29 = *(a1 + 40);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v32 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v32 = *v32;
          }

          *buf = 136315650;
          v37 = v32;
          v38 = 1024;
          v39 = a2;
          v40 = 1024;
          v41 = a3;
          _os_log_error_impl(&dword_2962DD000, v29, OS_LOG_TYPE_ERROR, "[%s] Could not revoke client id, because QMIClient(svcType=%d,clientId=%d) was attached but marked dead", buf, 0x18u);
          v26 = *(v7 + 8);
          if (!v26)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = *(v7 + 8);
          if (!v26)
          {
LABEL_50:
            v33 = v7;
            do
            {
              v30 = v33[2];
              v11 = *v30 == v33;
              v33 = v30;
            }

            while (!v11);
LABEL_53:
            if (*(a1 + 104) == v7)
            {
              *(a1 + 104) = v30;
            }

            v34 = *(a1 + 112);
            --*(a1 + 120);
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v34, v7);
            v35 = *(v7 + 48);
            if (v35)
            {
              std::__shared_weak_count::__release_weak(v35);
            }

            operator delete(v7);
            if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            goto LABEL_38;
          }
        }

        do
        {
LABEL_42:
          v30 = v26;
          v26 = *v26;
        }

        while (v26);
        goto LABEL_53;
      }
    }
  }

  v27 = *(a1 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v31 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v31 = *v31;
    }

    *buf = 136315650;
    v37 = v31;
    v38 = 1024;
    v39 = a2;
    v40 = 1024;
    v41 = a3;
    _os_log_error_impl(&dword_2962DD000, v27, OS_LOG_TYPE_ERROR, "[%s] Could not revoke client id, because QMIClient(svcType=%d,clientId=%d) isnt attached", buf, 0x18u);
  }

LABEL_38:
  v28 = *MEMORY[0x29EDCA608];
}

void QMux::State::notifyControlMessageError_sync(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    if ((a2 == 65537 || a2 == -559087616) && !atomic_fetch_add((a1 + 352), 0xFFFFFFFF))
    {
      atomic_store(0, (a1 + 352));
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v5 = *v5;
      }

      v6 = qmi::asString();
      QMuxFlowControl::toString(__p, (a1 + 344));
      if (v9 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315650;
      v11 = v5;
      v12 = 2080;
      v13 = v6;
      v14 = 2080;
      v15 = v7;
      _os_log_error_impl(&dword_2962DD000, v3, OS_LOG_TYPE_ERROR, "[%s] Control message error: %s%s", buf, 0x20u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t QMuxFlowControl::toString(QMuxFlowControl *this, unsigned int *a2)
{
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[7] = v4;
  v28[8] = v4;
  v28[5] = v4;
  v28[6] = v4;
  v28[3] = v4;
  v28[4] = v4;
  v28[1] = v4;
  v28[2] = v4;
  v27 = v4;
  v28[0] = v4;
  *__p = v4;
  v26 = v4;
  v23 = v4;
  *__src = v4;
  v21 = v4;
  v22 = v4;
  v20 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v20);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, " |flow-control: tx-limit=", 25);
  v6 = MEMORY[0x29C259270](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", pending-rx=", 13);
  v8 = atomic_load(a2 + 2);
  v9 = MEMORY[0x29C259260](v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", pending-tx=", 13);
  v11 = atomic_load(a2 + 1);
  v12 = MEMORY[0x29C259260](v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "|", 1);
  if ((BYTE8(v27) & 0x10) != 0)
  {
    v14 = v27;
    if (v27 < __src[1])
    {
      *&v27 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v13 = v14 - __src[0];
    if ((v14 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v13 = 0;
      *(this + 23) = 0;
      goto LABEL_15;
    }

    v15 = *(&v22 + 1);
    v13 = *(&v23 + 1) - *(&v22 + 1);
    if (*(&v23 + 1) - *(&v22 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_19:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v17 = operator new(v16);
    *(this + 1) = v13;
    *(this + 2) = v16 | 0x8000000000000000;
    *this = v17;
    this = v17;
    goto LABEL_14;
  }

  *(this + 23) = v13;
  if (v13)
  {
LABEL_14:
    memmove(this, v15, v13);
  }

LABEL_15:
  *(this + v13) = 0;
  *&v20 = *MEMORY[0x29EDC9528];
  v18 = *(MEMORY[0x29EDC9528] + 72);
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v21 = v18;
  *(&v21 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C259330](v28);
}

void sub_296317A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9);
  MEMORY[0x29C259330](v9 + 128);
  _Unwind_Resume(a1);
}

void QMux::State::stop_sync(QMux::State *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_11;
  }

  v7 = (this + 48);
  if (*(this + 71) < 0)
  {
    v7 = *v7;
    v8 = *(this + 52) - 1;
    if (v8 <= 4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *(this + 52) - 1;
    if (v8 <= 4)
    {
LABEL_4:
      v9 = off_29EE318B8[v8];
      goto LABEL_7;
    }
  }

  v9 = "kStopped";
LABEL_7:
  QMux::State::powerStateString_sync(this, __p);
  if (v13 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  *buf = 136315650;
  v15 = v7;
  v16 = 2080;
  v17 = v9;
  v18 = 2080;
  v19 = v10;
  _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Stopping QMux (mainState=%s, powerState=%s)\n", buf, 0x20u);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if ((*(this + 52) - 1) > 3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  if ((*(this + 52) - 1) <= 3)
  {
LABEL_12:
    QMux::State::setMainState(this, 0, v3, v4, v5, v6);
    QMux::State::tearDown_sync(this);
  }

LABEL_13:
  v11 = *MEMORY[0x29EDCA608];
}

const char *QMux::State::stateString_sync(QMux::State *this)
{
  v1 = *(this + 52) - 1;
  if (v1 > 4)
  {
    return "kStopped";
  }

  else
  {
    return off_29EE318B8[v1];
  }
}

uint64_t QMux::State::powerStateString_sync@<X0>(uint64_t this@<X0>, char *a2@<X8>)
{
  v2 = this;
  v3 = a2;
  if (!*(this + 216))
  {
    if (!*(this + 232))
    {
      a2[23] = 6;
      strcpy(a2, "Stable");
      return this;
    }

    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v10;
    v34 = v10;
    v31 = v10;
    v32 = v10;
    v29 = v10;
    v30 = v10;
    v27 = v10;
    v28 = v10;
    v25 = v10;
    v26 = v10;
    *__p = v10;
    v24 = v10;
    v21 = v10;
    v22 = v10;
    v19 = v10;
    v20 = v10;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "PoweringUp(", 11);
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 8;
    v12 = *(v2 + 216);
    v13 = MEMORY[0x29C259250]();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
    if ((BYTE8(v25) & 0x10) != 0)
    {
      v17 = v25;
      if (v25 < *(&v22 + 1))
      {
        *&v25 = *(&v22 + 1);
        v17 = *(&v22 + 1);
      }

      v15 = v22;
      v14 = v17 - v22;
      if ((v17 - v22) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((BYTE8(v25) & 8) == 0)
      {
        goto LABEL_8;
      }

      v15 = *(&v20 + 1);
      v14 = *(&v21 + 1) - *(&v20 + 1);
      if (*(&v21 + 1) - *(&v20 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_33:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      goto LABEL_27;
    }

LABEL_22:
    v3[23] = v14;
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  v29 = v4;
  v30 = v4;
  v27 = v4;
  v28 = v4;
  v25 = v4;
  v26 = v4;
  *__p = v4;
  v24 = v4;
  v21 = v4;
  v22 = v4;
  v19 = v4;
  v20 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v19);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "PoweringDown(", 13);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = *(v2 + 216);
  v7 = MEMORY[0x29C259250]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v9 = v25;
    if (v25 < *(&v22 + 1))
    {
      *&v25 = *(&v22 + 1);
      v9 = *(&v22 + 1);
    }

    v8 = &v22;
LABEL_12:
    v15 = *v8;
    v14 = v9 - *v8;
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

LABEL_27:
      v18 = operator new(v16);
      *(v3 + 1) = v14;
      *(v3 + 2) = v16 | 0x8000000000000000;
      *v3 = v18;
      v3 = v18;
LABEL_28:
      memmove(v3, v15, v14);
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if ((BYTE8(v25) & 8) != 0)
  {
    v8 = &v20 + 1;
    v9 = *(&v21 + 1);
    goto LABEL_12;
  }

LABEL_8:
  v14 = 0;
  v3[23] = 0;
LABEL_29:
  v3[v14] = 0;
  *&v19 = *MEMORY[0x29EDC9538];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v19 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v20);
  std::ostream::~ostream();
  return MEMORY[0x29C259330](&v26);
}

void QMux::State::clearPowerDownWatchdog_sync(QMux::State *this)
{
  v2 = *(this + 30);
  *(this + 30) = 0;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 31);
  for (i = *(this + 32); i != v3; i -= 16)
  {
    v5 = *(i - 8);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  *(this + 32) = v3;
  v6 = *(this + 34);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(this + 34);
    *(this + 34) = 0;
    if (v7)
    {

      dispatch_release(v7);
    }
  }
}

void QMux::State::powerDown_sync(QMux::State *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v53 = *MEMORY[0x29EDCA608];
  if (!*(this + 27))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x55B, "fPowerDownState", "is not", "true", a6);
  }

  v8 = *(this + 39);
  if (v8 != *(this + 40))
  {
    *(this + 40) = v8;
    *(this + 42) = 0;
  }

  v9 = *(this + 52);
  if (v9 > 5)
  {
    goto LABEL_18;
  }

  if (((1 << v9) & 0x31) == 0)
  {
    if (((1 << v9) & 6) != 0)
    {
      v11 = *(this + 5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (this + 48);
        if (*(this + 71) < 0)
        {
          v12 = *v12;
        }

        *buf = 136315650;
        *&buf[4] = v12;
        if (v9 == 2)
        {
          v13 = "kInit";
        }

        else
        {
          v13 = "kSync";
        }

        *&buf[12] = 1024;
        *&buf[14] = 1;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        _os_log_impl(&dword_2962DD000, v11, OS_LOG_TYPE_DEFAULT, "#I [%s] Entering power mode %d; must wait until QMux is running (mainState=%s)", buf, 0x1Cu);
      }

LABEL_81:
      v47 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_18:
    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (this + 48);
      if (*(this + 71) < 0)
      {
        v15 = *v15;
      }

      *buf = 136315394;
      *&buf[4] = v15;
      *&buf[12] = 1024;
      *&buf[14] = 1;
      _os_log_impl(&dword_2962DD000, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] Entering power mode %d; signalling all clients", buf, 0x12u);
      v14 = *(this + 5);
    }

    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_33:
      v20 = *(this + 27);
      if (v20)
      {
        dispatch_retain(*(this + 27));
      }

      v21 = *(this + 2);
      if (!v21 || (v48 = *(this + 1), (v22 = std::__shared_weak_count::lock(v21)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v23 = v22;
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v23);
      }

      v24 = dispatch_group_create();
      v25 = v24;
      if (v24)
      {
        dispatch_retain(v24);
        dispatch_group_enter(v25);
      }

      v26 = *(this + 28);
      *(this + 28) = v25;
      if (v26)
      {
        dispatch_group_leave(v26);
        dispatch_release(v26);
      }

      if (v25)
      {
        dispatch_release(v25);
      }

      QMux::State::startPowerDownWatchdog_sync(this);
      v27 = *(this + 13);
      if (v27 == (this + 112))
      {
LABEL_77:
        *buf = v48;
        *&buf[8] = v23;
        atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *&buf[16] = v20;
        if (v20)
        {
          dispatch_retain(v20);
        }

        *&buf[24] = this;
        v44 = *(this + 28);
        v45 = *(this + 3);
        v46 = operator new(0x20uLL);
        *v46 = v48;
        v46[1] = v23;
        v46[2] = v20;
        v46[3] = this;
        dispatch_group_notify_f(v44, v45, v46, dispatch::detail::group_notify<QMux::State::powerDown_sync(void)::$_1>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerDown_sync(void)::$_1 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
        std::__shared_weak_count::__release_weak(v23);
        if (v20)
        {
          dispatch_release(v20);
        }

        goto LABEL_81;
      }

      while (1)
      {
        v28 = *(this + 5);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = this + 48;
          if (*(this + 71) < 0)
          {
            v29 = *(this + 6);
          }

          v30 = *(v27 + 32);
          v31 = *(v27 + 33);
          *buf = 136315650;
          *&buf[4] = v29;
          *&buf[12] = 1024;
          *&buf[14] = v30;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          _os_log_impl(&dword_2962DD000, v28, OS_LOG_TYPE_DEFAULT, "#I [%s] EXTRA:     -- signal QMIClient(svc=%d client=%d) to power down", buf, 0x18u);
        }

        v32 = *(v27 + 6);
        if (!v32 || (v33 = std::__shared_weak_count::lock(v32), (__p[1] = v33) == 0))
        {
LABEL_70:
          v41 = *(v27 + 1);
          if (!v41)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

        v34 = v33;
        v35 = *(v27 + 5);
        __p[0] = v35;
        if (v35)
        {
          if (*(v27 + 32))
          {
            v49 = 0xAAAAAAAAAAAAAAAALL;
            if (*(v35 + 31) < 0)
            {
              std::string::__init_copy_ctor_external(buf, *(v35 + 8), *(v35 + 16));
            }

            else
            {
              v36 = *(v35 + 8);
              *&buf[16] = *(v35 + 24);
              *buf = v36;
            }

            ctu::TrackedGroup::fork(&v49, this + 240, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v38 = v49;
            (*(*v35 + 88))(v35, v49, 1);
            if (v38)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v37 = dispatch_group_create();
            v38 = v37;
            if (v37)
            {
              dispatch_retain(v37);
              dispatch_group_enter(v38);
              dispatch_release(v38);
            }

            (*(*v35 + 88))(v35, v38, 1);
            *buf = v48;
            *&buf[8] = v23;
            atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            *&buf[16] = v20;
            if (v20)
            {
              dispatch_retain(v20);
            }

            v39 = *(this + 3);
            v40 = operator new(0x18uLL);
            *v40 = v48;
            v40[1] = v23;
            v40[2] = v20;
            dispatch_group_notify_f(v38, v39, v40, dispatch::detail::group_notify<QMux::State::powerDown_sync(void)::$_0>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerDown_sync(void)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
            if (v38)
            {
LABEL_68:
              dispatch_group_leave(v38);
              dispatch_release(v38);
            }
          }
        }

        if (atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_70;
        }

        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
        v41 = *(v27 + 1);
        if (!v41)
        {
          do
          {
LABEL_74:
            v42 = *(v27 + 2);
            v43 = *v42 == v27;
            v27 = v42;
          }

          while (!v43);
          goto LABEL_47;
        }

        do
        {
LABEL_71:
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
LABEL_47:
        v27 = v42;
        if (v42 == (this + 112))
        {
          goto LABEL_77;
        }
      }
    }

    v16 = (this + 48);
    if (*(this + 71) < 0)
    {
      v16 = *v16;
      v17 = *(this + 52) - 1;
      if (v17 <= 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = *(this + 52) - 1;
      if (v17 <= 4)
      {
LABEL_25:
        v18 = off_29EE318B8[v17];
        goto LABEL_28;
      }
    }

    v18 = "kStopped";
LABEL_28:
    QMux::State::powerStateString_sync(this, __p);
    if (v51 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    *&buf[22] = 2080;
    *&buf[24] = v19;
    _os_log_impl(&dword_2962DD000, v14, OS_LOG_TYPE_DEFAULT, "#I [%s] fMainState=%s fPowerState=%s", buf, 0x20u);
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_33;
  }

  v10 = *MEMORY[0x29EDCA608];

  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x56A, "false", "is not", "true", "Can never reach here!", a7);
}

void sub_2963187BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  QMux::State::powerUp_sync(void)::$_0::~$_0(&__p);
  std::__shared_weak_count::__release_weak(v23);
  if (!v22)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v22);
  _Unwind_Resume(a1);
}

void QMux::State::start_sync(QMux::State *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v8 = *(this + 52);
  if (v8 == 5)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x26E, "false", "is not", "true", "Should never start() a QMux that is being destroyed!", a7);
  }

  else
  {
    if (v8 != 1)
    {
      if (v8)
      {
        return;
      }

      v9 = this;
      QMux::State::setMainState(this, 1, a3, a4, a5, a6);
      this = v9;
    }

    v10 = *(this + 9);

    QMIControl::sendSync_sync(v10);
  }
}

void QMux::State::restart_sync(QMux::State *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v8 = *(this + 52);
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_12:
      QMux::State::setMainState(this, 1, a3, a4, a5, a6);
      v10 = *(this + 9);

LABEL_11:
      QMIControl::sendSync_sync(v10);
      return;
    }

    if (v8 == 1)
    {
LABEL_9:
      v10 = *(this + 9);

      goto LABEL_11;
    }
  }

  else
  {
    if ((v8 - 2) < 3)
    {
      QMux::State::stop_sync(this);
      v9 = *(this + 52);
      if (v9 != 5)
      {
        if (v9 != 1)
        {
          if (v9)
          {
            return;
          }

          goto LABEL_12;
        }

        goto LABEL_9;
      }

      v11 = "Should never start() a QMux that is being destroyed!";
      v12 = 622;

LABEL_18:
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", v12, "false", "is not", "true", v11, a7);
      return;
    }

    if (v8 == 5)
    {
      v11 = "Should never restart() a QMux that is being destroyed!";
      v12 = 645;

      goto LABEL_18;
    }
  }
}

void QMux::State::notifySyncSuccess_sync(QMux::State *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 52);
  if (v2 != 1)
  {
    if (v2 == 5)
    {
      goto LABEL_12;
    }

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x290, "fMainState", "==", "kSync", v2, 1);
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (this + 48);
    if (*(this + 71) < 0)
    {
      v8 = *v8;
    }

    LODWORD(v17) = 136315138;
    *(&v17 + 4) = v8;
    _os_log_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] QMux in sync with baseband, starting clients", &v17, 0xCu);
  }

  QMux::State::setMainState(this, 2, v4, v5, v6, v7);
  v9 = dispatch_group_create();
  QMIControl::start_sync(*(this + 9), *(this + 306), v9);
  v11 = *(this + 1);
  v10 = *(this + 2);
  *&v17 = v11;
  if (!v10 || (v12 = std::__shared_weak_count::lock(v10), (*(&v17 + 1) = v12) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = *(this + 3);
  v15 = operator new(0x10uLL);
  *v15 = v11;
  v15[1] = v13;
  dispatch_group_notify_f(v9, v14, v15, dispatch::detail::group_notify<QMux::State::notifySyncSuccess_sync(void)::$_0>(dispatch_group_s *,dispatch_queue_s *,QMux::State::notifySyncSuccess_sync(void)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_12:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296318BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  if (!v9)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v9);
  _Unwind_Resume(a1);
}

void QMux::State::notifySyncFailure_sync(QMIControl **this)
{
  v2 = *(this + 52);
  if (v2 != 1)
  {
    if (v2 == 5)
    {
      return;
    }

    v3 = this;
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x2A8, "fMainState", "==", "kSync", v2, 1);
    this = v3;
  }

  v4 = this[9];

  QMIControl::sendSync_sync(v4);
}

void QMux::State::dumpState_sync(QMux::State *this)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 48);
    if (*(this + 71) < 0)
    {
      v3 = *v3;
      v4 = *(this + 52) - 1;
      if (v4 <= 4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(this + 52) - 1;
      if (v4 <= 4)
      {
LABEL_4:
        v5 = off_29EE318B8[v4];
        goto LABEL_7;
      }
    }

    v5 = "kStopped";
LABEL_7:
    QMux::State::powerStateString_sync(this, v14);
    v6 = v15;
    v7 = v14[0];
    v8 = *(this + 15);
    QMuxFlowControl::toString(__p, this + 86);
    v9 = v14;
    if (v6 < 0)
    {
      v9 = v7;
    }

    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136316162;
    v17 = v3;
    v18 = 2080;
    v19 = v5;
    v20 = 2080;
    v21 = v9;
    v22 = 1024;
    v23 = v8;
    v24 = 2080;
    v25 = v10;
    _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] QMux mainState=%s, powerState=%s, client count=%d%s", buf, 0x30u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v14[0]);
  }

LABEL_14:
  QMux::State::dumpClientSummaryState_sync(this);
  QMux::State::dumpClientState_sync(this);
  QMux::State::dumpPowerDownState_sync(this);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_296318E1C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *QMux::State::dumpClientSummaryState_sync(void *this)
{
  v52 = *MEMORY[0x29EDCA608];
  v1 = this[13];
  v2 = this + 14;
  if (v1 != this + 14)
  {
    v3 = this;
    v30 = this + 6;
    v4 = *MEMORY[0x29EDC9538];
    v32 = *(MEMORY[0x29EDC9538] + 24);
    v5 = ",";
    v28 = this;
    v29 = *MEMORY[0x29EDC9538];
    do
    {
      v6 = *(v1 + 32);
      v43 = 0xAAAAAAAAAAAAAAAALL;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42[7] = v7;
      v42[8] = v7;
      v42[5] = v7;
      v42[6] = v7;
      v42[3] = v7;
      v42[4] = v7;
      v42[1] = v7;
      v42[2] = v7;
      v42[0] = v7;
      v40 = v7;
      v41 = v7;
      v38 = v7;
      *__p = v7;
      v36 = v7;
      v37 = v7;
      v35 = v7;
      std::ostringstream::basic_ostringstream[abi:ne200100](&v35);
      MEMORY[0x29C259260](&v35, *(v1 + 33));
      v8 = v1[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      if (v9 != v2)
      {
        while (v6 == *(v9 + 32))
        {
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v5, 1);
          MEMORY[0x29C259260](v17, *(v9 + 33));
          v18 = v9[1];
          if (v18)
          {
            do
            {
              v1 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v1 = v9[2];
              v10 = *v1 == v9;
              v9 = v1;
            }

            while (!v10);
          }

          v9 = v1;
          if (v1 == v2)
          {
            goto LABEL_14;
          }
        }
      }

      v1 = v9;
LABEL_14:
      v11 = *(v3 + 40);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      v12 = v30;
      if (*(v3 + 71) < 0)
      {
        v12 = *v30;
        v13 = qmi::asShortString();
        v14 = BYTE8(v41);
        if ((BYTE8(v41) & 0x10) != 0)
        {
LABEL_28:
          v19 = v41;
          v20 = &v38;
          if (v41 < *(&v38 + 1))
          {
            *&v41 = *(&v38 + 1);
            v19 = *(&v38 + 1);
            v20 = &v38;
          }

LABEL_31:
          v21 = *v20;
          v15 = v19 - *v20;
          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v31 = v13;
          if (v15 >= 0x17)
          {
            v22 = v11;
            v23 = v5;
            v24 = v12;
            if ((v15 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v15 | 7) + 1;
            }

            v16 = operator new(v25);
            __dst[1] = v15;
            v34 = v25 | 0x8000000000000000;
            __dst[0] = v16;
            v12 = v24;
            v5 = v23;
            v11 = v22;
          }

          else
          {
            HIBYTE(v34) = v19 - *v20;
            v16 = __dst;
            if (!v15)
            {
              goto LABEL_40;
            }
          }

          memmove(v16, v21, v15);
LABEL_40:
          v3 = v28;
          v13 = v31;
          goto LABEL_41;
        }
      }

      else
      {
        v13 = qmi::asShortString();
        v14 = BYTE8(v41);
        if ((BYTE8(v41) & 0x10) != 0)
        {
          goto LABEL_28;
        }
      }

      if ((v14 & 8) != 0)
      {
        v19 = *(&v37 + 1);
        v20 = &v36 + 1;
        goto LABEL_31;
      }

      v15 = 0;
      HIBYTE(v34) = 0;
      v16 = __dst;
LABEL_41:
      *(v16 + v15) = 0;
      v26 = __dst;
      if (v34 < 0)
      {
        v26 = __dst[0];
      }

      *buf = 136315906;
      v45 = v12;
      v46 = 1024;
      v47 = v6;
      v48 = 2080;
      v49 = v13;
      v50 = 2080;
      v51 = v26;
      _os_log_impl(&dword_2962DD000, v11, OS_LOG_TYPE_DEFAULT, "#I [%s]     svc=%d (%s) registered ids={%s}", buf, 0x26u);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__dst[0]);
      }

      v4 = v29;
LABEL_4:
      *&v35 = v4;
      *(&v35 + *(v4 - 24)) = v32;
      *(&v35 + 1) = MEMORY[0x29EDC9570] + 16;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v35 + 1) = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(&v36);
      std::ostream::~ostream();
      this = MEMORY[0x29C259330](v42);
    }

    while (v1 != v2);
  }

  v27 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296319298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_2963192AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_2963192C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_2963192D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void QMux::State::dumpClientState_sync(QMux::State *this)
{
  v1 = *(this + 13);
  v2 = this + 112;
  if (v1 != this + 112)
  {
    do
    {
      v3 = *(v1 + 6);
      if (!v3)
      {
        goto LABEL_9;
      }

      v4 = std::__shared_weak_count::lock(v3);
      if (!v4)
      {
        goto LABEL_9;
      }

      v5 = v4;
      v6 = *(v1 + 5);
      if (v6)
      {
        (*(*v6 + 112))(v6);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v7 = *(v1 + 1);
        if (!v7)
        {
          do
          {
LABEL_13:
            v8 = *(v1 + 2);
            v9 = *v8 == v1;
            v1 = v8;
          }

          while (!v9);
          goto LABEL_3;
        }
      }

      else
      {
LABEL_9:
        v7 = *(v1 + 1);
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
LABEL_3:
      v1 = v8;
    }

    while (v8 != v2);
  }
}

void QMux::State::dumpPowerDownState_sync(QMux::State *this)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *(this + 31);
  v3 = *(this + 32);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = *(this + 31);
    do
    {
      v6 = *(v5 + 1);
      if (v6 && *(v6 + 8) != -1)
      {
        ++v4;
      }

      v5 += 16;
    }

    while (v5 != v3);
    if (v4)
    {
      memset(&v31, 0, sizeof(v31));
      while (1)
      {
        v7 = *(v2 + 1);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          *&buf[8] = v8;
          if (v8)
          {
            break;
          }
        }

LABEL_10:
        v2 += 16;
        if (v2 == v3)
        {
          v26 = *(this + 5);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = (this + 48);
            if (*(this + 71) < 0)
            {
              v27 = *v27;
            }

            v28 = (*(this + 32) - *(this + 31)) >> 4;
            v29 = &v31;
            if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v29 = v31.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = v27;
            *&buf[12] = 2048;
            *&buf[14] = v28;
            v33 = 2080;
            v34 = v29;
            _os_log_impl(&dword_2962DD000, v26, OS_LOG_TYPE_DEFAULT, "#I [%s]     power down tags: %zu clients; remaining={%s}", buf, 0x20u);
          }

          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          goto LABEL_65;
        }
      }

      v9 = v8;
      v10 = *v2;
      *buf = v10;
      if (!v10)
      {
LABEL_50:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        goto LABEL_10;
      }

      v11 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      size = v31.__r_.__value_.__l.__size_;
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v31.__r_.__value_.__l.__size_;
      }

      if (!v13)
      {
LABEL_43:
        v21 = *(v10 + 23);
        if (v21 >= 0)
        {
          v22 = v10;
        }

        else
        {
          v22 = *v10;
        }

        if (v21 >= 0)
        {
          v23 = *(v10 + 23);
        }

        else
        {
          v23 = *(v10 + 8);
        }

        std::string::append(&v31, v22, v23);
        goto LABEL_50;
      }

      if ((*(&v31.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (v31.__r_.__value_.__l.__size_ != (v31.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1)
        {
          v20 = v31.__r_.__value_.__r.__words[0];
LABEL_41:
          v31.__r_.__value_.__l.__size_ = size + 1;
          v11 = size;
          goto LABEL_42;
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v14 = v31.__r_.__value_.__r.__words[0];
        if (v31.__r_.__value_.__l.__size_ > 0x3FFFFFFFFFFFFFF2)
        {
          v18 = 0;
          v17 = 0x7FFFFFFFFFFFFFF7;
LABEL_34:
          v19 = operator new(v17);
          v20 = v19;
          if (size)
          {
            memmove(v19, v14, size);
          }

          if (!v18)
          {
            operator delete(v14);
          }

          v31.__r_.__value_.__r.__words[0] = v20;
          v31.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
          goto LABEL_41;
        }
      }

      else
      {
        if (HIBYTE(v31.__r_.__value_.__r.__words[2]) != 22)
        {
          *(&v31.__r_.__value_.__s + 23) = (*(&v31.__r_.__value_.__s + 23) + 1) & 0x7F;
          v20 = &v31;
LABEL_42:
          *(&v20->__r_.__value_.__l.__data_ + v11) = 44;
          goto LABEL_43;
        }

        v14 = &v31;
        size = 22;
      }

      if (size + 1 > 2 * size)
      {
        v15 = size + 1;
      }

      else
      {
        v15 = 2 * size;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v17 = v16;
      }

      else
      {
        v17 = 23;
      }

      v18 = size == 22;
      goto LABEL_34;
    }
  }

  v24 = *(this + 5);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = (this + 48);
    if (*(this + 71) < 0)
    {
      v25 = *v25;
    }

    *buf = 136315394;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = (v3 - v2) >> 4;
    _os_log_impl(&dword_2962DD000, v24, OS_LOG_TYPE_DEFAULT, "#I [%s]     power down tags: %zu clients; all complete", buf, 0x16u);
  }

LABEL_65:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296319788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void QMux::State::invokeReset(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __p = *a2;
    v3 = a1[2];
    if (!v3)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v4 = a1[1];
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = a1;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::State::invokeReset(std::string)::$_0>(QMux::State::invokeReset(std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::State::invokeReset(std::string)::$_0,std::default_delete<QMux::State::invokeReset(std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

void QMux::State::invokeReset_sync(uint64_t a1, const std::string::value_type **a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v46 = 0;
  v47 = 0;
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v47 = v5;
    if (v5)
    {
      v46 = *(a1 + 88);
      if (v46)
      {
        memset(&v45, 170, sizeof(v45));
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, *a2, a2[1]);
        }

        else
        {
          v45 = *a2;
        }

        v13 = *(a1 + 248);
        v14 = *(a1 + 256);
        if (v13 != v14)
        {
          v15 = 0;
          v16 = *(a1 + 248);
          do
          {
            v17 = v16[1];
            if (v17 && v17[1] != -1)
            {
              ++v15;
            }

            v16 += 2;
          }

          while (v16 != v14);
          if (v15)
          {
            while (1)
            {
              v18 = v13[1];
              if (v18)
              {
                v19 = std::__shared_weak_count::lock(v18);
                v49 = v19;
                if (v19)
                {
                  break;
                }
              }

LABEL_21:
              v13 += 2;
              if (v13 == v14)
              {
                goto LABEL_50;
              }
            }

            v20 = *v13;
            v48 = v20;
            if (!v20)
            {
LABEL_48:
              if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v31 = v19;
                (v19->__on_zero_shared)();
                std::__shared_weak_count::__release_weak(v31);
              }

              goto LABEL_21;
            }

            v21 = *(v20 + 23);
            if (v21 >= 0)
            {
              v22 = *(v20 + 23);
            }

            else
            {
              v22 = v20[1];
            }

            v23 = v22 + 3;
            if (v22 + 3 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v23 < 0x17)
            {
              *&buf[8] = 0;
              *&buf[16] = 0;
              *buf = 2108704;
              buf[23] = v22 + 3;
              v26 = &buf[3];
              if (!v22)
              {
                goto LABEL_39;
              }
            }

            else
            {
              if ((v23 | 7) == 0x17)
              {
                v24 = 25;
              }

              else
              {
                v24 = (v23 | 7) + 1;
              }

              v25 = operator new(v24);
              *&buf[8] = v22 + 3;
              *&buf[16] = v24 | 0x8000000000000000;
              *buf = v25;
              *v25 = 11552;
              v26 = v25 + 3;
              v25[2] = 32;
            }

            v27 = *v20;
            if (v21 >= 0)
            {
              v28 = v20;
            }

            else
            {
              v28 = *v20;
            }

            memmove(v26, v28, v22);
LABEL_39:
            v26[v22] = 0;
            if (buf[23] >= 0)
            {
              v29 = buf;
            }

            else
            {
              v29 = *buf;
            }

            if (buf[23] >= 0)
            {
              v30 = buf[23];
            }

            else
            {
              v30 = *&buf[8];
            }

            std::string::append(&v45, v29, v30);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v19 = v49;
            if (!v49)
            {
              goto LABEL_21;
            }

            goto LABEL_48;
          }
        }

LABEL_50:
        v32 = *(a1 + 40);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v33 = *v33;
          }

          v34 = &v45;
          if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v45.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = v34;
          _os_log_impl(&dword_2962DD000, v32, OS_LOG_TYPE_DEFAULT, "#I [%s] Triggering Reset with reason %s", buf, 0x16u);
        }

        v35 = *(a1 + 16);
        *buf = *(a1 + 8);
        if (!v35 || (*&buf[8] = std::__shared_weak_count::lock(v35)) == 0)
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZN4QMux5State16invokeReset_syncERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
        block[3] = &__block_descriptor_tmp_55_0;
        block[4] = v46;
        v43 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v45;
        }

        global_queue = dispatch_get_global_queue(2, 0);
        dispatch_async(global_queue, block);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v37 = v43;
        if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v38 = *&buf[8];
        if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
          v5 = v47;
          if (!v47)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v5 = v47;
          if (!v47)
          {
            goto LABEL_75;
          }
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v40 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v40 = *v40;
    }

    if (*(a2 + 23) >= 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = v40;
    *&buf[12] = 2080;
    *&buf[14] = v41;
    _os_log_error_impl(&dword_2962DD000, v6, OS_LOG_TYPE_ERROR, "[%s] No reset invoker available; resetting QMux for reason=%s", buf, 0x16u);
  }

  QMux::State::restart_sync(a1, v7, v8, v9, v10, v11, v12);
  if (v5)
  {
LABEL_9:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_75:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_296319E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v28 + 32);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v29 - 128);
  if (a24 < 0)
  {
    operator delete(__p);
    std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a26);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

void QMux::State::handleBroadcastMessage_sync(uint64_t a1, uint64_t a2, const void *a3, size_t a4, unsigned __int16 *a5, unint64_t a6)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a6 < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a5;
  }

  sLogBinaryToOsLog(*(a1 + 40), *(a1 + 192), 2u, *(a2 + 5), v10, 0, a3, a4);
  v11 = *(a2 + 8);
  if (v11 != 2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x440, "header.msgType", "==", "qmi::QMuxHeader::IND", v11, 2);
  }

  v13 = (a1 + 112);
  v12 = *(a1 + 112);
  if (v12)
  {
    v14 = *(a2 + 5);
    v15 = (a1 + 112);
    do
    {
      v16 = *(v12 + 32);
      v18 = v16 == v14;
      v17 = (v16 < v14) << 7;
      if (v18)
      {
        v17 = 0;
      }

      if (!v17)
      {
        v15 = v12;
      }

      v12 = *(v12 + (v17 >> 4));
    }

    while (v12);
    if (v15 != v13)
    {
      if (a3)
      {
        v18 = a4 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      v35 = v19;
      do
      {
        if (*(v15 + 32) != *(a2 + 5))
        {
          break;
        }

        v20 = v15[6];
        if (!v20)
        {
          goto LABEL_38;
        }

        v21 = std::__shared_weak_count::lock(v20);
        if (!v21)
        {
          goto LABEL_38;
        }

        v22 = v21;
        v23 = v15[5];
        if (v23)
        {
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = a1 + 48;
            if (*(a1 + 71) < 0)
            {
              v25 = *(a1 + 48);
            }

            v26 = *(a2 + 5);
            v27 = *(v15 + 33);
            *buf = 136315906;
            v39 = v25;
            v40 = 1024;
            v41 = v26;
            v42 = 1024;
            v43 = v27;
            v44 = 1024;
            v45 = v10;
            _os_log_impl(&dword_2962DD000, v24, OS_LOG_TYPE_DEFAULT, "#I [%s] handleReadData: Broadcast IND for QMI client (svc=%d client=%d msgid=0x%x)", buf, 0x1Eu);
          }

          (*(*v23 + 40))(v23, a5, a6);
          if (*(a1 + 312) == *(a1 + 320) && QMIControl::getPowerModeForMsg_sync(*(a1 + 72), *(a2 + 5), v10) == 1)
          {
            v28 = mach_absolute_time();
            if (v35)
            {
              v29 = v28;
              if ((a4 & 0x8000000000000000) != 0)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v30 = operator new(a4);
              memcpy(v30, a3, a4);
              v31 = *(a1 + 312);
              if (v31)
              {
                *(a1 + 320) = v31;
                operator delete(v31);
              }

              *(a1 + 312) = v30;
              *(a1 + 320) = &v30[a4];
              *(a1 + 328) = &v30[a4];
              *(a1 + 336) = v29;
            }
          }
        }

        if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
          v32 = v15[1];
          if (!v32)
          {
            do
            {
LABEL_42:
              v33 = v15[2];
              v18 = *v33 == v15;
              v15 = v33;
            }

            while (!v18);
            goto LABEL_21;
          }
        }

        else
        {
LABEL_38:
          v32 = v15[1];
          if (!v32)
          {
            goto LABEL_42;
          }
        }

        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
LABEL_21:
        v15 = v33;
      }

      while (v33 != v13);
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29631A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29631A248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QMux::getQMIWakeReason(QMux *this@<X0>, const char *a2@<X5>, _OWORD *a3@<X8>)
{
  v5 = *this;
  if (!*this)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x455, "fState", "is not", "true", a2);
    v5 = *this;
  }

  v7 = this;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNKS1_16getQMIWakeReasonEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v8[3] = &__block_descriptor_tmp_103;
  v8[4] = v5 + 8;
  v8[5] = &v7;
  v9 = v8;
  v6 = *(v5 + 24);
  if (*(v5 + 32))
  {
    *a3 = 0uLL;
    a3[1] = 0uLL;
    block = MEMORY[0x29EDCA5F8];
    v11 = 0x40000000;
    v12 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerF13QMIWakeReasonvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    v13 = &__block_descriptor_tmp_105;
    v14 = a3;
    v15 = &v9;
    dispatch_async_and_wait(v6, &block);
  }

  else
  {
    *a3 = 0uLL;
    a3[1] = 0uLL;
    block = MEMORY[0x29EDCA5F8];
    v11 = 0x40000000;
    v12 = ___ZN8dispatch9sync_implIRU13block_pointerF13QMIWakeReasonvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    v13 = &__block_descriptor_tmp_104;
    v14 = a3;
    v15 = &v9;
    dispatch_sync(v6, &block);
  }
}

void *QMux::State::getQMIWakeReason@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = this[39];
  v4 = this[40];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    *a2 = v7;
    v8 = &v7[v6];
    a2[2] = &v7[v6];
    this = memcpy(v7, v5, v6);
    a2[1] = v8;
  }

  a2[3] = v2[42];
  return this;
}

uint64_t QMux::State::getWriteData_sync(QMux::State *this, unsigned __int8 *a2, unsigned int a3)
{
  if (*(this + 52) == 5 || (result = QMux::State::getWriteDataInternal_sync(this, a2, a3), !result))
  {
    result = *(this + 22);
    if (result)
    {
      (*(*result + 64))(result, this, *(this + 25));
      return 0;
    }
  }

  return result;
}

uint64_t QMuxQueueItem::serialize(QMuxQueueItem *this, void *__dst, unsigned int a3, unsigned int a4)
{
  LOWORD(v4) = 0;
  if (a4)
  {
    v5 = **(this + 1);
    v6 = *(*(this + 1) + 8) - v5;
    v7 = v6 > a3;
    v8 = v6 - a3;
    if (v7)
    {
      if (v8 >= a4)
      {
        v4 = a4;
      }

      else
      {
        v4 = v8;
      }

      memmove(__dst, (v5 + a3), v4);
    }
  }

  return v4;
}

void QMux::State::dumpSystemLog(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v18 = v5;
    if (v5)
    {
      v6 = *(a1 + 88);
      v17 = v6;
      if (!v6)
      {
        goto LABEL_18;
      }

      memset(&v16, 170, sizeof(v16));
      if (*(a2 + 23) < 0)
      {
        v7 = *a2;
        v8 = *(a2 + 8);
        v9 = v5;
        std::string::__init_copy_ctor_external(&v16, v7, v8);
        v5 = v9;
      }

      else
      {
        v16 = *a2;
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4QMux5State13dumpSystemLogENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_52;
      block[4] = v6;
      v14 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v16;
      }

      global_queue = dispatch_get_global_queue(2, 0);
      dispatch_async(global_queue, block);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v11 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v5 = v18;
      if (v18)
      {
LABEL_18:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = v5;
          (v5->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }
  }
}

void sub_29631A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  if (*(v6 - 41) < 0)
  {
    operator delete(*(v6 - 64));
    std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v6 - 32);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v6 - 32);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4QMux5State13dumpSystemLogENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    return (*(*v2 + 24))(v2, *v3);
  }

  else
  {
    return (*(*v2 + 24))(v2, v3);
  }
}

void __copy_helper_block_e8_32c44_ZTSNSt3__110shared_ptrI16ATCSResetInvokerEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v3 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v3;
  }
}

void __destroy_helper_block_e8_32c44_ZTSNSt3__110shared_ptrI16ATCSResetInvokerEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
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

uint64_t ___ZN4QMux5State16invokeReset_syncERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    return (*(*v2 + 16))(v2, *v3, 1);
  }

  else
  {
    return (*(*v2 + 16))(v2, v3, 1);
  }
}

uint64_t QMux::State::powerUp_sync(void)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void QMux::State::getClientPowerDownSession_sync(QMux::State *this@<X0>, const qmi::QMuxClientIface *a2@<X1>, NSObject **a3@<X8>)
{
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 8);
  }

  ctu::TrackedGroup::fork(a3, this + 240, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29631AA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *ctu::TrackedGroup::fork(NSObject **a1, uint64_t a2, uint64_t *a3)
{
  v48 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v40[0] = a3[1];
  *(v40 + 7) = *(a3 + 15);
  v6 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *object = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = dispatch_group_create();
  v8 = v7;
  *a1 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v8);
    dispatch_release(v8);
  }

  v9 = operator new(0x30uLL);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_2A1D48F80;
  v9[3] = v5;
  v9[4] = v40[0];
  *(v9 + 39) = *(v40 + 7);
  *(v9 + 47) = v6;
  v40[0] = 0;
  *(v40 + 7) = 0;
  *&v36 = v9 + 3;
  *(&v36 + 1) = v9;
  v10 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v10);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v12 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v41 = v9 + 3;
  v42 = v9;
  atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  v43 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  v47 = 0;
  v44 = 0;
  v45 = 0;
  object[0] = 0;
  object[1] = 0;
  *(&v39 + 1) = 0;
  v13 = operator new(0x48uLL);
  *v13 = v9 + 3;
  v13[1] = v9;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v10;
  v14 = v47;
  if (v47)
  {
    if (v47 == v46)
    {
      v13[8] = v13 + 5;
      (*(*v14 + 24))(v14);
    }

    else
    {
      v13[8] = v47;
      v47 = 0;
    }
  }

  else
  {
    v13[8] = 0;
  }

  v44 = 0;
  v45 = 0;
  v15 = v47;
  v47 = 0;
  if (v15 == v46)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  dispatch_group_notify_f(v8, v12, v13, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(&v41);
  if (v12)
  {
    dispatch_release(v12);
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16 < v17)
  {
    *v16 = v36;
    v18 = *(&v36 + 1);
    *(v16 + 1) = *(&v36 + 1);
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
    }

    v19 = v16 + 16;
    goto LABEL_36;
  }

  v20 = *(a2 + 8);
  v21 = v16 - v20;
  v22 = (v16 - v20) >> 4;
  v23 = v22 + 1;
  if ((v22 + 1) >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v24 = v17 - v20;
  if (v24 >> 3 > v23)
  {
    v23 = v24 >> 3;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF0)
  {
    v25 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = operator new(16 * v25);
    v27 = &v26[16 * v22];
    v28 = &v26[16 * v25];
    v29 = *(&v36 + 1);
    *v27 = v36;
    v30 = v29;
    if (!v29)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v27 = (16 * v22);
  v28 = 0;
  v35 = *(&v36 + 1);
  *(16 * v22) = v36;
  v30 = v35;
  if (v35)
  {
LABEL_33:
    atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    v20 = *(a2 + 8);
    v21 = *(a2 + 16) - v20;
    v22 = v21 >> 4;
  }

LABEL_34:
  v19 = v27 + 16;
  v31 = &v27[-16 * v22];
  memcpy(v31, v20, v21);
  *(a2 + 8) = v31;
  *(a2 + 16) = v19;
  *(a2 + 24) = v28;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_36:
  *(a2 + 16) = v19;
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  if (*(&v36 + 1) && !atomic_fetch_add((*(&v36 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v36 + 1) + 16))(*(&v36 + 1));
    std::__shared_weak_count::__release_weak(*(&v36 + 1));
    v32 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_43;
    }
  }

  else
  {
    v32 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_43;
    }
  }

  if (object[0])
  {
    v41 = object[1];
    *&v36 = object[0];
    (*(*v32 + 48))(v32, &v41, &v36);
  }

LABEL_43:
  if (object[1])
  {
    os_release(object[1]);
  }

  result = *(&v39 + 1);
  object[1] = 0;
  *(&v39 + 1) = 0;
  if (result == &v38)
  {
    (*(*result + 32))(result);
    result = *(&v39 + 1);
    object[0] = 0;
    if (*(&v39 + 1) != &v38)
    {
      goto LABEL_48;
    }

LABEL_51:
    result = (*(*result + 32))(result);
    goto LABEL_52;
  }

  if (!result)
  {
    goto LABEL_52;
  }

  (*(*result + 40))(result);
  result = *(&v39 + 1);
  object[0] = 0;
  if (*(&v39 + 1) == &v38)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_52:
  v34 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29631AF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void QMux::State::startPowerDownWatchdog_sync(QMux::State *this)
{
  v2 = *(this + 30);
  *(this + 30) = 0;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 31);
  for (i = *(this + 32); i != v3; i -= 16)
  {
    v5 = *(i - 8);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  *(this + 32) = v3;
  v6 = *(this + 34);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(this + 34);
    *(this + 34) = 0;
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  v8 = *(this + 28);
  if (v8)
  {
    dispatch_retain(*(this + 28));
  }

  v9 = *(this + 30);
  *(this + 30) = v8;
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 31);
  for (j = *(this + 32); j != v10; j -= 16)
  {
    v12 = *(j - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  *(this + 32) = v10;
  v13 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
  v14 = *(this + 34);
  *(this + 34) = v13;
  if (v14)
  {
    dispatch_release(v14);
    v13 = *(this + 34);
  }

  if (v13)
  {
    v15 = *(this + 2);
    if (!v15 || (v16 = *(this + 1), (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v17;
    p_shared_weak_owners = &v17->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v18);
    }

    v20 = *(this + 34);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 1174405120;
    handler[2] = ___ZN4QMux5State27startPowerDownWatchdog_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_65_1;
    handler[4] = this;
    handler[5] = v16;
    v24 = v18;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v20, handler);
    v21 = *(this + 34);
    v22 = dispatch_time(0, 9000000000);
    dispatch_source_set_timer(v21, v22, 0x218711A00uLL, 0x1DCD6500uLL);
    dispatch_activate(*(this + 34));
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    std::__shared_weak_count::__release_weak(v18);
  }
}

void ___ZN4QMux5State27startPowerDownWatchdog_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && *(v3 + 34))
      {
        QMux::State::dumpPowerDownState_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN4QMux5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrIN4QMux5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void QMux::State::powerDown_configIndSet_sync(QMux::State *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 48);
    if (*(this + 71) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = 1;
    _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Client power-down complete; configuring indication sets for power mode %d", buf, 0x12u);
  }

  v4 = *(this + 13);
  v5 = this + 112;
  if (v4 != this + 112)
  {
    while (1)
    {
      v6 = v4[32];
      if (v4[32])
      {
        break;
      }

      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v11 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

LABEL_8:
      v4 = v11;
      if (v11 == v5)
      {
        goto LABEL_34;
      }
    }

    *&buf[8] = 0uLL;
    *buf = &buf[8];
    while (1)
    {
      v7 = *(v4 + 6);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = *(v4 + 5);
          if (v9)
          {
            (*(*v9 + 96))(v9, buf, 1);
          }
        }

        v10 = *(v4 + 1);
        if (v10)
        {
          do
          {
LABEL_18:
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
          goto LABEL_22;
        }
      }

      else
      {
        v8 = 0;
        v10 = *(v4 + 1);
        if (v10)
        {
          goto LABEL_18;
        }
      }

      do
      {
        v11 = *(v4 + 2);
        v12 = *v11 == v4;
        v4 = v11;
      }

      while (!v12);
LABEL_22:
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v11 != v5)
      {
        v4 = v11;
        if (v11[32] == v6)
        {
          continue;
        }
      }

      QMIControl::configurePowerMode_sync(*(this + 9), 1, v6, buf);
      std::__tree<unsigned short>::destroy(buf, *&buf[8]);
      goto LABEL_8;
    }
  }

LABEL_34:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_29631B5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::__tree<unsigned short>::destroy(&a11, a12);
  _Unwind_Resume(a1);
}

uint64_t QMux::State::powerDown_finish_sync(QMux::State *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(this + 27))
  {
    v7 = *(this + 5);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_3;
    }
  }

  else
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x60C, "fPowerDownState", "is not", "true", a6);
    v7 = *(this + 5);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      if (!*(this + 21))
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v8 = (this + 48);
  if (*(this + 71) < 0)
  {
    v8 = *v8;
  }

  v15 = 136315394;
  v16 = v8;
  v17 = 1024;
  v18 = 1;
  _os_log_impl(&dword_2962DD000, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Power-down configuration done; entering power-down mode %d", &v15, 0x12u);
  if (*(this + 21))
  {
LABEL_9:
    v9 = *(this + 5);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v14 = (this + 48);
    if (*(this + 71) < 0)
    {
      v14 = *v14;
    }

    v15 = 136315138;
    v16 = v14;
    _os_log_error_impl(&dword_2962DD000, v9, OS_LOG_TYPE_ERROR, "[%s] ERROR: QMux should be powered down but the send queue is not empty!", &v15, 0xCu);
    if (*(this + 21))
    {
LABEL_10:
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x614, "fSendQueue.empty()", "==", "true", 0, 1);
    }
  }

LABEL_11:
  QMIControl::setPowerMode_sync(*(this + 9), 1);
  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (this + 48);
    if (*(this + 71) < 0)
    {
      v11 = *v11;
    }

    v15 = 136315138;
    v16 = v11;
    _os_log_impl(&dword_2962DD000, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] EXTRA:     -- wait for QMIControl to set the power mode", &v15, 0xCu);
  }

  (*(**(this + 9) + 120))(*(this + 9), *(this + 27));
  result = QMux::State::setMainState(this, 4);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void QMux::QMux(QMux *this)
{
  *this = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
}

atomic_ullong *QMux::QMux(atomic_ullong *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t a6, int a7, char a8)
{
  v12 = a5[1];
  v19[0] = *a5;
  v19[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (a7)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  QMux::State::create(a4, 0, v19, v13, a8, a1);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (a2)
  {
    v16 = *a1;
    v15 = a1[1];
    v19[2] = *a1;
    v19[3] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v16)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x682, "ptr", "is not", "true", v14);
    }

    v21 = a3;
    v22 = a2;
    v20[0] = v16;
    v20[1] = &v22;
    v20[2] = &v21;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_96;
    block[4] = v16 + 8;
    block[5] = v20;
    v17 = *(v16 + 24);
    if (*(v16 + 32))
    {
      dispatch_async_and_wait(v17, block);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_sync(v17, block);
      if (!v15)
      {
LABEL_19:
        QMux::start(a1);
        return a1;
      }
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    goto LABEL_19;
  }

  return a1;
}

{
  return QMux::QMux(a1, a2, a3, a4, a5, 0, a7, a8);
}

void sub_29631BA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void sub_29631BA34(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(exception_object);
}

void QMux::setDriverAndCookie(QMux *this, ATCSIPCDriver *a2, void *a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v9 = *this;
  v8 = *(this + 1);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v9)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x682, "ptr", "is not", "true", a6);
  }

  QMux::State::setDriverAndCookie(v9, a2, a3);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void QMux::start(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = v1[2];
    if (!v3 || (v4 = v1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    v7 = operator new(0x10uLL);
    *v7 = v1;
    v7[1] = v2;
    v8 = v1[3];
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = operator new(0x18uLL);
    *v9 = v7;
    v9[1] = v4;
    v9[2] = v6;
    dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::start(void)::$_0>(QMux::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::start(void)::$_0,dispatch_queue_s *::default_delete<QMux::start(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

atomic_ullong *QMux::QMux(atomic_ullong *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6, char a7)
{
  if ((a4 - 1) > 9)
  {
    v14 = "qmux";
  }

  else
  {
    v14 = off_29EE318E0[a4 - 1];
  }

  v15 = strlen(v14);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  v28 = a3;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v15 | 7) + 1;
    }

    p_dst = operator new(v22);
    *(&__dst + 1) = v16;
    v37 = v22 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v37) = v15;
    p_dst = &__dst;
    if (!v15)
    {
      LOBYTE(__dst) = 0;
      v18 = *a5;
      v19 = a5[1];
      v29 = v18;
      v30 = v19;
      if (!v19)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  memcpy(p_dst, v14, v16);
  *(p_dst + v16) = 0;
  v23 = *a5;
  v19 = a5[1];
  v29 = v23;
  v30 = v19;
  if (v19)
  {
LABEL_8:
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_9:
  if (a6)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  QMux::State::create(&__dst, a4, &v29, v20, a7, a1);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if (!a2)
    {
      return a1;
    }

LABEL_24:
    v24 = *a1;
    v25 = a1[1];
    v31 = *a1;
    v32 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v24)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x682, "ptr", "is not", "true", v21);
    }

    v34 = v28;
    v35 = a2;
    v33[0] = v24;
    v33[1] = &v35;
    v33[2] = &v34;
    *&__dst = MEMORY[0x29EDCA5F8];
    *(&__dst + 1) = 0x40000000;
    v37 = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    v38 = &__block_descriptor_tmp_96;
    v39 = v24 + 8;
    v40 = v33;
    v26 = *(v24 + 24);
    if (*(v24 + 32))
    {
      dispatch_async_and_wait(v26, &__dst);
      if (!v25)
      {
        goto LABEL_34;
      }
    }

    else
    {
      dispatch_sync(v26, &__dst);
      if (!v25)
      {
LABEL_34:
        QMux::start(a1);
        return a1;
      }
    }

    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    goto LABEL_34;
  }

  operator delete(__dst);
  if (a2)
  {
    goto LABEL_24;
  }

  return a1;
}

void sub_29631BEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void sub_29631BF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *QMux::QMux(atomic_ullong *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, int a6, char a7)
{
  v11 = a5[1];
  v18[0] = *a5;
  v18[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (a6)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  QMux::State::create(a4, 0, v18, v12, a7, a1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (a2)
  {
    v15 = *a1;
    v14 = a1[1];
    v18[2] = *a1;
    v18[3] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v15)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x682, "ptr", "is not", "true", v13);
    }

    v20 = a3;
    v21 = a2;
    v19[0] = v15;
    v19[1] = &v21;
    v19[2] = &v20;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_96;
    block[4] = v15 + 8;
    block[5] = v19;
    v16 = *(v15 + 24);
    if (*(v15 + 32))
    {
      dispatch_async_and_wait(v16, block);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_sync(v16, block);
      if (!v14)
      {
LABEL_19:
        QMux::start(a1);
        return a1;
      }
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_19;
  }

  return a1;
}

{
  v10 = a5[1];
  v16[0] = *a5;
  v16[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  QMux::State::create(a4, 0, v16, a6, a7, a1);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (a2)
  {
    v13 = *a1;
    v12 = a1[1];
    v16[2] = *a1;
    v16[3] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v13)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x682, "ptr", "is not", "true", v11);
    }

    v18 = a3;
    v19 = a2;
    v17[0] = v13;
    v17[1] = &v19;
    v17[2] = &v18;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_96;
    block[4] = v13 + 8;
    block[5] = v17;
    v14 = *(v13 + 24);
    if (*(v13 + 32))
    {
      dispatch_async_and_wait(v14, block);
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_sync(v14, block);
      if (!v12)
      {
LABEL_16:
        QMux::start(a1);
        return a1;
      }
    }

    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    goto LABEL_16;
  }

  return a1;
}

void sub_29631C0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void sub_29631C100(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(exception_object);
}

void sub_29631C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void sub_29631C2D8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(exception_object);
}

void QMux::join(QMux *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    QMux::State::join(v2);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void QMux::joinControl(QMux *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    QMux::State::joinControl(v2);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void QMux::flush(QMux *this, dispatch_object_t object)
{
  v2 = *this;
  if (*this)
  {
    if (object)
    {
      dispatch_retain(object);
      dispatch_retain(object);
      dispatch_group_enter(object);
      dispatch_release(object);
      v2 = *this;
    }

    v5 = *(this + 1);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (object)
    {
      dispatch_retain(object);
      dispatch_group_enter(object);
    }

    v6 = v2[2];
    if (!v6 || (v7 = v2[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    v10 = operator new(0x18uLL);
    *v10 = v2;
    v10[1] = v5;
    v10[2] = object;
    v11 = v2[3];
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = operator new(0x18uLL);
    *v12 = v10;
    v12[1] = v7;
    v12[2] = v9;
    dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::flush(dispatch_group_s *)::$_0>(QMux::flush(dispatch_group_s *)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::flush(dispatch_group_s *)::$_0,dispatch_queue_s *::default_delete<QMux::flush(dispatch_group_s *)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!object)
      {
        return;
      }
    }

    else
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (!object)
      {
        return;
      }
    }

    dispatch_group_leave(object);

    dispatch_release(object);
  }
}

void QMux::add(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = *a1;
  if (!*a1)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x689, "fState", "is not", "true", a6);
    v8 = *a1;
  }

  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v8[2];
  if (!v12 || (v13 = v8[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x20uLL);
  *v16 = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v17 = v8[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>(QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::add(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);

    std::__shared_weak_count::__release_weak(v15);
  }
}

void QMux::remove(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v8 = *a1;
  if (!*a1)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x692, "fState", "is not", "true", a6);
    v8 = *a1;
  }

  v9 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v8[2];
  if (!v12 || (v13 = v8[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x20uLL);
  *v16 = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v17 = v8[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0>(QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0,std::default_delete<QMux::remove(std::shared_ptr<qmi::QMuxClientIface>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);

    std::__shared_weak_count::__release_weak(v15);
  }
}

void QMux::restart(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = v1[2];
    if (!v3 || (v4 = v1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    v7 = operator new(0x10uLL);
    *v7 = v1;
    v7[1] = v2;
    v8 = v1[3];
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = operator new(0x18uLL);
    *v9 = v7;
    v9[1] = v4;
    v9[2] = v6;
    dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::restart(void)::$_0>(QMux::restart(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::restart(void)::$_0,dispatch_queue_s *::default_delete<QMux::restart(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void QMux::stop(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = v1[2];
    if (!v3 || (v4 = v1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    v7 = operator new(0x10uLL);
    *v7 = v1;
    v7[1] = v2;
    v8 = v1[3];
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = operator new(0x18uLL);
    *v9 = v7;
    v9[1] = v4;
    v9[2] = v6;
    dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::stop(void)::$_0>(QMux::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::stop(void)::$_0,dispatch_queue_s *::default_delete<QMux::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void QMux::shutdown(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(this + 1);
    v5 = *this;
    v6 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS1_8shutdownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
    block[3] = &__block_descriptor_tmp_111;
    block[4] = v1 + 8;
    block[5] = &v5;
    v3 = *(v1 + 24);
    if (*(v1 + 32))
    {
      dispatch_async_and_wait(v3, block);
      v4 = v6;
      if (!v6)
      {
        return;
      }
    }

    else
    {
      dispatch_sync(v3, block);
      v4 = v6;
      if (!v6)
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void QMux::invokeReset(void **a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if (*a1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    QMux::State::invokeReset(v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x208uLL);
    if (*(a2 + 23) >= 0)
    {
      _ATCSException::_ATCSException(exception, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 1759, a2, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      _ATCSException::_ATCSException(exception, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 1759, *a2, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]);
    }
  }
}

void sub_29631CD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QMux::isRunning(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v4 = this;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNKS1_9isRunningEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
    v5[3] = &__block_descriptor_tmp_113;
    v5[4] = v1 + 8;
    v5[5] = &v4;
    v6 = v5;
    v2 = *(v1 + 24);
    if (*(v1 + 32))
    {
      v13 = -86;
      block = MEMORY[0x29EDCA5F8];
      v8 = 0x40000000;
      v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
      v10 = &__block_descriptor_tmp_115;
      v11 = &v13;
      v12 = &v6;
      dispatch_async_and_wait(v2, &block);
    }

    else
    {
      v13 = -86;
      block = MEMORY[0x29EDCA5F8];
      v8 = 0x40000000;
      v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
      v10 = &__block_descriptor_tmp_114;
      v11 = &v13;
      v12 = &v6;
      dispatch_sync(v2, &block);
    }

    LOBYTE(v1) = v13;
  }

  return v1 & 1;
}

void QMux::dumpState(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }

    v3 = v1[2];
    if (!v3 || (v4 = v1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v6 = v5;
    v7 = operator new(0x10uLL);
    *v7 = v1;
    v7[1] = v2;
    v8 = v1[3];
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = operator new(0x18uLL);
    *v9 = v7;
    v9[1] = v4;
    v9[2] = v6;
    dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::dumpState(void)::$_0>(QMux::dumpState(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::dumpState(void)::$_0,dispatch_queue_s *::default_delete<QMux::dumpState(void)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void *QMux::State::getQMIPowerDownMessages@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[36];
  *a2 = this[35];
  v3 = this[37];
  a2[2] = v3;
  if (v3)
  {
    v4 = (v2 + 16);
  }

  else
  {
    v4 = a2;
  }

  a2[1] = v2;
  this[36] = 0;
  this[37] = 0;
  *v4 = a2 + 1;
  this[35] = this + 36;
  return this;
}

uint64_t QMuxQueueItem::QMuxQueueItem(uint64_t a1, char a2, char a3, void *a4)
{
  *a1 = a2;
  *(a1 + 1) = a3;
  v5 = a4[1];
  *(a1 + 8) = *a4;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::fixupHeader();
  return a1;
}

{
  *a1 = a2;
  *(a1 + 1) = a3;
  v5 = a4[1];
  *(a1 + 8) = *a4;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::fixupHeader();
  return a1;
}

void QMuxQueueItem::~QMuxQueueItem(QMuxQueueItem *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void ctu::TrackedGroup::~TrackedGroup(ctu::TrackedGroup *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D48F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (a1)
  {
    v1 = ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(a1);

    operator delete(v1);
  }
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  v2 = a1[8];
  if (v2 && a1[3])
  {
    v3 = a1[4];
    v12 = a1[3];
    v13 = v3;
    (*(*v2 + 48))(v2, &v13, &v12);
  }

  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1 + 5;
  a1[4] = 0;
  v6 = a1[8];
  a1[8] = 0;
  if (v6 == a1 + 5)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
LABEL_9:
      if (v7)
      {
        (*(*v7 + 40))(v7);
        v8 = a1[2];
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      v8 = a1[2];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  a1[3] = 0;
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  dispatch_group_leave(v8);
  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_17:
  v10 = a1[1];
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

void ctu::os::signpost_interval::~signpost_interval(ctu::os::signpost_interval *this)
{
  v2 = *(this + 5);
  if (v2 && *this)
  {
    v3 = *(this + 1);
    v8 = *this;
    v9 = v3;
    (*(*v2 + 48))(v2, &v9, &v8);
  }

  v4 = *(this + 1);
  if (v4)
  {
    os_release(v4);
  }

  v5 = this + 16;
  *(this + 1) = 0;
  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6 == (this + 16))
  {
    (*(*v6 + 32))(v6);
    v7 = *(this + 5);
    *this = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    return;
  }

  if (!v6)
  {
    *this = 0;
    return;
  }

  (*(*v6 + 40))(v6);
  v7 = *(this + 5);
  *this = 0;
  if (v7 == v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v7)
  {
    (*(*v7 + 40))(v7);
  }
}

void std::__tree<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::__map_value_compare<std::pair<qmi::ServiceType const,unsigned char const>,std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::less<std::pair<qmi::ServiceType const,unsigned char const>>,true>,std::allocator<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::__map_value_compare<std::pair<qmi::ServiceType const,unsigned char const>,std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::less<std::pair<qmi::ServiceType const,unsigned char const>>,true>,std::allocator<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::__map_value_compare<std::pair<qmi::ServiceType const,unsigned char const>,std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>,std::less<std::pair<qmi::ServiceType const,unsigned char const>>,true>,std::allocator<std::__value_type<std::pair<qmi::ServiceType const,unsigned char const>,std::weak_ptr<qmi::QMuxClientIface>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void **std::deque<QMuxQueueItem>::~deque[abi:ne200100](void **a1)
{
  std::deque<QMuxQueueItem>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<QMux::State *,std::shared_ptr<QMux::State> ctu::SharedSynchronizable<QMux::State>::make_shared_ptr<QMux::State>(QMux::State*)::{lambda(QMux::State *)#1},std::allocator<QMux::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<QMux::State *,std::shared_ptr<QMux::State> ctu::SharedSynchronizable<QMux::State>::make_shared_ptr<QMux::State>(QMux::State*)::{lambda(QMux::State *)#1},std::allocator<QMux::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4QMux5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4QMux5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4QMux5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4QMux5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<QMux::State> ctu::SharedSynchronizable<QMux::State>::make_shared_ptr<QMux::State>(QMux::State*)::{lambda(QMux::State*)#1}::operator() const(QMux::State*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<QMux::State>::execute_wrapped<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>(QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(QMux::State ***a1)
{
  v1 = *a1;
  QMux::State::init_sync(**a1);
  v2 = v1[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    operator delete(v1);
    v3 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v1);
    v3 = a1;
    if (!a1)
    {
      return;
    }
  }

  v4 = v3[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v3;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v3 = v5;
  }

  operator delete(v3);
}

void sub_29631DA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0,std::default_delete<QMux::State::create(std::string const&,QMux::Name,std::weak_ptr<ATCSResetInvoker>,qmi::LogLevel,BOOL)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[1];
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

void ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNKS2_4joinEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1 + 112;
  if (v3 != v4)
  {
    do
    {
      v5 = v3[6];
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = std::__shared_weak_count::lock(v5);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = v6;
      v8 = v3[5];
      if (v8)
      {
        (*(*v8 + 72))(v8, v1[1]);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v9 = v3[1];
        if (!v9)
        {
          do
          {
LABEL_13:
            v10 = v3[2];
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
          goto LABEL_3;
        }
      }

      else
      {
LABEL_9:
        v9 = v3[1];
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
LABEL_3:
      v3 = v10;
    }

    while (v10 != v4);
  }

  v12 = v1[1];
  v13 = *(v2 + 24);

  dispatch_group_async(v12, v13, &__block_literal_global);
}

void ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_11joinControlEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v6 = *(a1 + 40);
  v8 = (*v6 + 112);
  v7 = *v8;
  if (!*v8)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v7;
    v7 = *v7;
  }

  while (v7);
  if (v9 == v8 || *(v9 + 32) || *(v9 + 33))
  {
LABEL_6:
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x14B, "i", "!=", "fClientMap.end()", a6);
    v9 = v8;
  }

  v10 = v9[6];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = v9[5];
      if (v13)
      {
        (*(*v13 + 72))(v13, v6[1]);
      }

      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);

        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

_BYTE *___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *v1[1];
  *(v2 + 176) = v3;
  *(v2 + 200) = *v1[2];
  (*(*v3 + 40))(v3);
  result = *v1[1];
  if ((result[8] & 1) == 0)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS2_18setDriverAndCookieEP13ATCSIPCDriverPvE3__1EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *v3;
  *v3 = *(v2 + 176);
  *(v2 + 176) = v4;
  return result;
}

void std::__for_each_segment[abi:ne200100]<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>,std::__deque_iterator<QMuxQueueItem,QMuxQueueItem*,QMuxQueueItem&,QMuxQueueItem**,long,170l>>>(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t **a5)
{
  v5 = a2;
  v49 = a5;
  v50 = a4;
  if (a1 != a3)
  {
    v15 = *a1 + 4080;
    v16 = *a5;
    v17 = a5[1];
    if (v15 != a2)
    {
      v51 = a1;
      v18 = *v16;
      while (1)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v17 + 4080) >> 3);
        if ((0xAAAAAAAAAAAAAAABLL * ((v15 - v5) >> 3)) < v20)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v5) >> 3);
        }

        if (v20)
        {
          v21 = v5 + 24 * v20;
          do
          {
            *v17 = *v5;
            v23 = *(v5 + 8);
            v22 = *(v5 + 16);
            if (v22)
            {
              atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
            }

            v24 = v17[2];
            v17[1] = v23;
            v17[2] = v22;
            if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }

            v5 += 24;
            v17 += 3;
          }

          while (v5 != v21);
          if (v21 == v15)
          {
            a1 = v51;
            if (v17 == (*v16 + 4080))
            {
              v25 = v16[1];
              ++v16;
              v17 = v25;
            }

            a5 = v49;
            a4 = v50;
            break;
          }
        }

        else
        {
          v21 = v5;
        }

        v19 = v16[1];
        ++v16;
        v18 = v19;
        v5 = v21;
        v17 = v19;
      }
    }

    *a5 = v16;
    a5[1] = v17;
    v26 = a1 + 1;
    if (a1 + 1 == a3)
    {
      goto LABEL_55;
    }

LABEL_39:
    v27 = 0;
    v52 = v26;
    v28 = *v26;
    v29 = *v16;
    while (1)
    {
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v17 + 4080) >> 3);
      if ((0xAAAAAAAAAAAAAAABLL * ((4080 - v27) >> 3)) < v31)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * ((4080 - v27) >> 3);
      }

      if (v31)
      {
        v32 = v27 + 24 * v31;
        v33 = v28 + v27;
        do
        {
          *v17 = *v33;
          v35 = *(v33 + 8);
          v34 = *(v33 + 16);
          if (v34)
          {
            atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
          }

          v36 = v17[2];
          v17[1] = v35;
          v17[2] = v34;
          if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v36->__on_zero_shared)(v36);
            std::__shared_weak_count::__release_weak(v36);
          }

          v33 += 24;
          v17 += 3;
        }

        while (v33 != v28 + v32);
        if (v32 == 4080)
        {
          if (v17 != (*v16 + 4080))
          {
            a5 = v49;
            *v49 = v16;
            v49[1] = v17;
            v26 = v52 + 1;
            if (v52 + 1 != a3)
            {
              goto LABEL_39;
            }

LABEL_54:
            a4 = v50;
LABEL_55:
            v38 = *v26;
            if (*v26 != a4)
            {
              v39 = *v16;
              while (1)
              {
                v41 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v17 + 4080) >> 3);
                if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v38) >> 3)) < v41)
                {
                  v41 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v38) >> 3);
                }

                if (v41)
                {
                  v42 = v38 + 24 * v41;
                  do
                  {
                    *v17 = *v38;
                    v44 = *(v38 + 8);
                    v43 = *(v38 + 16);
                    if (v43)
                    {
                      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
                    }

                    v45 = v17[2];
                    v17[1] = v44;
                    v17[2] = v43;
                    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v45->__on_zero_shared)(v45);
                      std::__shared_weak_count::__release_weak(v45);
                    }

                    v38 += 24;
                    v17 += 3;
                  }

                  while (v38 != v42);
                  a4 = v50;
                  if (v42 == v50)
                  {
                    a5 = v49;
                    if (v17 == (*v16 + 4080))
                    {
                      v46 = v16[1];
                      ++v16;
                      v17 = v46;
                    }

                    break;
                  }
                }

                else
                {
                  v42 = v38;
                }

                v40 = v16[1];
                ++v16;
                v39 = v40;
                v38 = v42;
                v17 = v40;
              }
            }

            *a5 = v16;
            a5[1] = v17;
            return;
          }

          v37 = v16[1];
          ++v16;
          v17 = v37;
          a5 = v49;
          *v49 = v16;
          v49[1] = v37;
          v26 = v52 + 1;
          if (v52 + 1 == a3)
          {
            goto LABEL_54;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v32 = v27;
      }

      v30 = v16[1];
      ++v16;
      v29 = v30;
      v27 = v32;
      v17 = v30;
    }
  }

  v7 = *a5;
  v6 = a5[1];
  if (a2 == a4)
  {
    goto LABEL_75;
  }

  v8 = *v7;
  while (1)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v6 + 4080) >> 3);
    if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v5) >> 3)) < v10)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v5) >> 3);
    }

    if (!v10)
    {
      v11 = v5;
      goto LABEL_5;
    }

    v11 = v5 + 24 * v10;
    do
    {
      *v6 = *v5;
      v13 = *(v5 + 8);
      v12 = *(v5 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = v6[2];
      v6[1] = v13;
      v6[2] = v12;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v5 += 24;
      v6 += 3;
    }

    while (v5 != v11);
    a4 = v50;
    if (v11 == v50)
    {
      break;
    }

LABEL_5:
    v9 = v7[1];
    ++v7;
    v8 = v9;
    v5 = v11;
    v6 = v9;
  }

  a5 = v49;
  if (v6 == (*v7 + 4080))
  {
    v47 = v7[1];
    ++v7;
    v6 = v47;
  }

LABEL_75:
  *a5 = v7;
  a5[1] = v6;
}