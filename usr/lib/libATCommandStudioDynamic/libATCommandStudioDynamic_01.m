void qmi::Transaction::invoke(qmi::Transaction *this, NSObject *a2, const qmi::ResponseBase *a3)
{
  v6 = *this;
  if (v6)
  {
    (*(*v6 + 16))(v6);
    v7 = *this;
    *this = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    v9 = _Block_copy(v8);
    v10 = *a3;
    v11 = *(a3 + 1);
    v14[0] = *a3;
    v14[1] = v11;
    v12 = *(a3 + 2);
    v14[2] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = operator new(0x20uLL);
    *v13 = v9;
    v13[1] = v10;
    v13[2] = v11;
    v13[3] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    dispatch_async_f(a2, v13, dispatch::async<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0,std::default_delete<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0>>)::{lambda(void *)#1}::__invoke);
    qmi::MessageBase::~MessageBase(v14);
    _Block_release(v8);
  }
}

void qmi::Transaction::~Transaction(qmi::Transaction *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (*(this + 1))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x2B, "!fCallback", "is not", "true", a6);
  }

  if (*this)
  {
    (*(**this + 16))(*this);
    v7 = *this;
    *this = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = *(this + 3);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = *(this + 1);
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v9 = *(this + 1);
  if (v9)
  {
LABEL_9:
    _Block_release(v9);
  }

LABEL_10:
  v10 = *this;
  *this = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

void std::deque<void *>::erase(uint64_t a1, char *a2, char *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v9 + 8 * (*(a1 + 32) & 0x1FFLL);
    if (a3 == v10)
    {
LABEL_3:
      v11 = *v9;
      v12 = (v7 + 8 * (v6 >> 9));
LABEL_13:
      v24 = (a3 - v11) >> 3;
      if (v24 < 0)
      {
        v28 = 510 - v24;
        v26 = &v12[-(v28 >> 9)];
        v27 = *v26 + 8 * (~v28 & 0x1FF);
      }

      else
      {
        v25 = v24 + 1;
        v26 = &v12[v25 >> 9];
        v27 = *v26 + 8 * (v25 & 0x1FF);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,0>(v38, v9, v10, v12, a3, v26, v27);
      v29 = vaddq_s64(*(a1 + 32), xmmword_296335BF0);
      *(a1 + 32) = v29;
      if (v29.i64[0] >= 0x400uLL)
      {
        operator delete(**(a1 + 8));
        *(a1 + 8) += 8;
        *(a1 + 32) -= 512;
      }

      return;
    }
  }

  v13 = (&a3[-*a2] >> 3) + ((a2 - v9) << 6);
  v11 = *v9;
  v12 = (v7 + 8 * (v6 >> 9));
  a3 = v10;
  v14 = v13 - ((v10 - *v9) >> 3);
  if (!v14)
  {
    goto LABEL_13;
  }

  if (v13 < 1)
  {
    v15 = 511 - v13;
    LOWORD(v13) = ~(511 - v13);
    v12 = &v9[-(v15 >> 9)];
  }

  else
  {
    v12 = &v9[v13 >> 9];
  }

  v11 = *v12;
  a3 = *v12 + 8 * (v13 & 0x1FF);
  v16 = *(a1 + 40);
  if (v14 <= (v16 - 1) >> 1)
  {
    goto LABEL_13;
  }

  v17 = (a3 - v11) >> 3;
  if (v17 < 0)
  {
    v30 = 510 - v17;
    v19 = &v12[-(v30 >> 9)];
    v20 = *v19 + 8 * (~v30 & 0x1FF);
    v21 = v16 + v6;
    v22 = (v7 + 8 * ((v16 + v6) >> 9));
    if (v8 != v7)
    {
      goto LABEL_12;
    }

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  v18 = v17 + 1;
  v19 = &v12[v18 >> 9];
  v20 = *v19 + 8 * (v18 & 0x1FF);
  v21 = v16 + v6;
  v22 = (v7 + 8 * ((v16 + v6) >> 9));
  if (v8 == v7)
  {
    goto LABEL_20;
  }

LABEL_12:
  v23 = *v22 + 8 * (v21 & 0x1FF);
LABEL_21:
  v38[0] = v12;
  v38[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>>>(v19, v20, v22, v23, v38);
  v32 = *(a1 + 8);
  v31 = *(a1 + 16);
  v33 = v31 - v32;
  v34 = v31 == v32;
  v36 = *(a1 + 32);
  v35 = *(a1 + 40);
  *(a1 + 40) = v35 - 1;
  v37 = (v33 << 6) - 1;
  if (v34)
  {
    v37 = 0;
  }

  if ((v37 - (v35 + v36) + 1) >= 0x400)
  {
    operator delete(*(v31 - 8));
    *(a1 + 16) -= 8;
  }
}

const void ***std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,0>(const void ***result, const void **a2, char *a3, const void **a4, char *a5, const void **a6, char *a7)
{
  v8 = a6;
  v12 = result;
  if (a2 == a4)
  {
    if (a3 == a5)
    {
      goto LABEL_42;
    }

    v13 = *a6;
    v14 = a5;
    while (1)
    {
      v15 = &a7[-v13] >> 3;
      if ((v14 - a3) >> 3 < v15)
      {
        v15 = (v14 - a3) >> 3;
      }

      v14 -= 8 * v15;
      a7 -= 8 * v15;
      if (v15)
      {
        result = memmove(a7, v14, 8 * v15);
      }

      if (v14 == a3)
      {
        break;
      }

      v16 = *--v8;
      v13 = v16;
      a7 = (v16 + 4096);
    }

    goto LABEL_40;
  }

  v18 = *a4;
  if (*a4 != a5)
  {
    v19 = *a6;
    v20 = a5;
    while (1)
    {
      v21 = &a7[-v19] >> 3;
      if ((v20 - v18) >> 3 < v21)
      {
        v21 = (v20 - v18) >> 3;
      }

      v20 -= 8 * v21;
      a7 -= 8 * v21;
      if (v21)
      {
        result = memmove(a7, v20, 8 * v21);
      }

      if (v20 == v18)
      {
        break;
      }

      v22 = *--v8;
      v19 = v22;
      a7 = (v22 + 4096);
    }

    if (*v8 + 4096 == a7)
    {
      v23 = v8[1];
      ++v8;
      a7 = v23;
    }
  }

  v24 = a4 - 1;
  if (a4 - 1 != a2)
  {
    v25 = *v8;
    do
    {
      while (1)
      {
        v26 = *v24;
        v27 = *v24 + 4096;
        while (1)
        {
          v28 = (a7 - v25) >> 3;
          if ((v27 - v26) >> 3 < v28)
          {
            v28 = (v27 - v26) >> 3;
          }

          v27 -= 8 * v28;
          a7 -= 8 * v28;
          if (v28)
          {
            result = memmove(a7, v27, 8 * v28);
          }

          if (v27 == v26)
          {
            break;
          }

          v29 = *--v8;
          v25 = v29;
          a7 = v29 + 4096;
        }

        v25 = *v8;
        if (*v8 + 4096 == a7)
        {
          break;
        }

        if (--v24 == a2)
        {
          goto LABEL_32;
        }
      }

      v30 = v8[1];
      ++v8;
      v25 = v30;
      a7 = v30;
      --v24;
    }

    while (v24 != a2);
  }

LABEL_32:
  v31 = *v24 + 4096;
  if (v31 != a3)
  {
    v32 = *v8;
    while (1)
    {
      v33 = &a7[-v32] >> 3;
      if ((v31 - a3) >> 3 < v33)
      {
        v33 = (v31 - a3) >> 3;
      }

      v31 -= 8 * v33;
      a7 -= 8 * v33;
      if (v33)
      {
        result = memmove(a7, v31, 8 * v33);
      }

      if (v31 == a3)
      {
        break;
      }

      v34 = *--v8;
      v32 = v34;
      a7 = (v34 + 4096);
    }

LABEL_40:
    if (*v8 + 4096 == a7)
    {
      v35 = v8[1];
      ++v8;
      a7 = v35;
    }
  }

LABEL_42:
  *v12 = a4;
  v12[1] = a5;
  v12[2] = v8;
  v12[3] = a7;
  return result;
}

void dispatch::async<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0>(dispatch_queue_s *,std::unique_ptr<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0,std::default_delete<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0>>)::{lambda(void *)#1}::__invoke(const void **a1)
{
  v2 = (a1 + 1);
  (*(*a1 + 2))();
  qmi::MessageBase::~MessageBase(v2);
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_2962EB1EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0,std::default_delete<qmi::Transaction::invoke(dispatch_queue_s *,qmi::ResponseBase const&)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10QMIControl17setPowerMode_syncEN3qmi12PowerProfileE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) && (qmi::isInternalError() & 1) == 0)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x198, "isInternalError(response.getError())", "is not", "true", v2);
  }
}

void __destroy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10QMIControlEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::detail::group_notify<QMux::State::powerUp_sync(void)::$_0>(dispatch_group_s *,dispatch_queue_s *,QMux::State::powerUp_sync(void)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = *a1;
  if (*a1)
  {
    if (*(v5 + 29) == *(a1 + 16))
    {
      QMux::State::powerUp_signalClients_sync(v5);
      v6 = *(v5 + 29);
      *(v5 + 29) = 0;
      if (v6)
      {
        dispatch_group_leave(v6);
        dispatch_release(v6);
      }
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
LABEL_8:
    v7 = a1;
    if (!a1)
    {
      return;
    }
  }

  v8 = v7[2];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = v7[1];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(v7);
}

void sub_2962EB3F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<QMux::State::powerUp_sync(void)::$_0,std::default_delete<QMux::State::powerUp_sync(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QMux::State::powerUp_signalClients_sync(QMux::State *this)
{
  v20 = *MEMORY[0x29EDCA608];
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
    _os_log_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] Normal power mode resumed; signalling all clients", buf, 0xCu);
  }

  v4 = *(this + 13);
  if (v4 != (this + 112))
  {
    do
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = this + 48;
        if (*(this + 71) < 0)
        {
          v6 = *(this + 6);
        }

        v7 = *(v4 + 32);
        v8 = *(v4 + 33);
        *buf = 136315650;
        *&buf[4] = v6;
        *&buf[12] = 1024;
        *&buf[14] = v7;
        v18 = 1024;
        v19 = v8;
        _os_log_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] EXTRA:     -- signal QMIClient(svc=%d client=%d) to resume", buf, 0x18u);
      }

      v9 = *(v4 + 6);
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = std::__shared_weak_count::lock(v9);
      *&buf[8] = v10;
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = v10;
      v12 = *(v4 + 5);
      *buf = v12;
      if (v12)
      {
        (*(*v12 + 88))(v12, *(this + 29), 0);
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v13 = *(v4 + 1);
        if (!v13)
        {
          do
          {
LABEL_21:
            v14 = *(v4 + 2);
            v15 = *v14 == v4;
            v4 = v14;
          }

          while (!v15);
          goto LABEL_7;
        }
      }

      else
      {
LABEL_17:
        v13 = *(v4 + 1);
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
LABEL_7:
      v4 = v14;
    }

    while (v14 != (this + 112));
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_2962EB64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void QMIControl::enterPowerMode(uint64_t a1, NSObject *a2, int a3)
{
  if (a3)
  {
    current_queue = dispatch_get_current_queue();
    v7 = *(a1 + 104);
    if (current_queue != *(v7 + 3))
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x238, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v5);
      v7 = *(a1 + 104);
    }

    qmi::TransactionQueue::State::stall_sync(v7, a2);
  }

  else
  {
    v8 = *(a1 + 104);

    qmi::TransactionQueue::State::start_sync(v8);
  }
}

void qmi::TransactionQueue::State::start_sync(qmi::TransactionQueue::State *this)
{
  *(this + 10) = 2;
  v3 = *(this + 20);
  v2 = *(this + 21);
  v4 = v3 + v2;
  v5 = (v3 + v2) >> 9;
  v6 = *(this + 17);
  v7 = *(this + 18);
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v6 + 8 * v5) + 8 * (v4 & 0x1FF);
  }

  v9 = *(this + 26);
  v10 = (v9 >> 6) & 0x3FFFFFFFFFFFFF8;
  v11 = *(this + 23);
  v12 = (v11 + v10);
  if (*(this + 24) == v11)
  {
    v43 = *(this + 27);
    if (!v43)
    {
      goto LABEL_439;
    }

    v15 = 0;
    j = 0;
    v22 = 0;
    i = (v11 + 8 * ((v43 + v9) >> 9));
    v23 = v3 >> 9;
    v24 = 8 * (v3 >> 9);
    v25 = v7 - v6;
    if (v7 != v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *(this + 27);
    if (!v13)
    {
      goto LABEL_439;
    }

    v14 = v9 & 0x1FF;
    v15 = *v12 + 8 * v14;
    v16 = v13 + v9;
    v17 = (v16 >> 6) & 0x3FFFFFFFFFFFFF8;
    i = (v11 + v17);
    v19 = v16 & 0x1FF;
    j = *(v11 + v17) + 8 * v19;
    v21 = v19 - v14 + ((v17 - v10) << 6);
    if (j == v15)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v23 = v3 >> 9;
    v24 = 8 * (v3 >> 9);
    v25 = v7 - v6;
    if (v7 != v6)
    {
LABEL_10:
      v26 = *(v6 + v24) + 8 * (v3 & 0x1FF);
      if (v8 == v26)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }
  }

  v26 = 0;
  if (!v8)
  {
LABEL_11:
    v27 = 0;
    __src = v15;
    if (!v2)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v27 = ((v8 - *(v6 + 8 * v5)) >> 3) + ((8 * v5 - v24) << 6) - ((v26 - *(v6 + v24)) >> 3);
  __src = v15;
  if (v27 < v2 - v27)
  {
LABEL_37:
    v44 = v22 - v3;
    if (v22 <= v3)
    {
      goto LABEL_230;
    }

    v361 = v22;
    v363 = v12;
    v359 = v27;
    v45 = (v25 << 6) - 1;
    if (v7 == v6)
    {
      v45 = 0;
      ++v44;
    }

    if ((v44 & 0x1FF) != 0)
    {
      v46 = (v44 >> 9) + 1;
    }

    else
    {
      v46 = v44 >> 9;
    }

    v47 = v45 - v4;
    if (v46 >= v47 >> 9)
    {
      v48 = v47 >> 9;
    }

    else
    {
      v48 = v46;
    }

    if (v46 <= v47 >> 9)
    {
      for (*(this + 20) = v3 + (v48 << 9); v48; --v48)
      {
        v57 = *(this + 18);
        *&v369 = *(v57 - 8);
        *(this + 18) = v57 - 8;
        std::__split_buffer<void **>::emplace_front<void **>(this + 128, &v369);
      }

      goto LABEL_229;
    }

    v357 = i;
    v49 = v46 - v48;
    v50 = *(this + 19) - *(this + 16);
    v51 = (v7 - v6) >> 3;
    if (v46 - v48 <= (v50 >> 3) - v51)
    {
      if (v49)
      {
        while (v6 != *(this + 16))
        {
          *&v369 = operator new(0x1000uLL);
          std::__split_buffer<void **>::emplace_front<void **>(this + 128, &v369);
          v6 = *(this + 17);
          if (*(this + 18) - v6 == 8)
          {
            v58 = 511;
          }

          else
          {
            v58 = 512;
          }

          v3 = v58 + *(this + 20);
          *(this + 20) = v3;
          --v46;
          if (!--v49)
          {
            goto LABEL_73;
          }
        }

        do
        {
          *&v369 = operator new(0x1000uLL);
          std::__split_buffer<void **>::emplace_back<void **&>(this + 16, &v369);
          --v49;
        }

        while (v49);
        v3 = *(this + 20);
        v48 = v46;
      }

LABEL_73:
      *(this + 20) = v3 + (v48 << 9);
      for (i = v357; v48; --v48)
      {
        v59 = *(this + 18);
        *&v369 = *(v59 - 8);
        *(this + 18) = v59 - 8;
        std::__split_buffer<void **>::emplace_front<void **>(this + 128, &v369);
      }

      goto LABEL_229;
    }

    v52 = v7 == v6;
    v53 = v49 + v51;
    if (v50 >> 2 <= v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50 >> 2;
    }

    v355 = v47;
    if (v54)
    {
      if (v54 >> 61)
      {
        goto LABEL_458;
      }

      v55 = operator new(8 * v54);
    }

    else
    {
      v55 = 0;
    }

    v354 = (v46 << 9) - v52;
    v128 = &v55[8 * v54];
    v129 = v55;
    v130 = v55;
    v131 = v55;
    v366 = j;
    while (1)
    {
      v132 = v131;
      v133 = operator new(0x1000uLL);
      if (v129 == v128)
      {
        break;
      }

LABEL_151:
      *v129 = v133;
      v129 += 8;
      if (!--v49)
      {
        v150 = *(this + 18);
        if (v355 < 0x200)
        {
          v151 = v130;
LABEL_175:
          v152 = *(this + 17);
          if (v152 != v150)
          {
            i = v357;
            while (1)
            {
              if (v129 == v128)
              {
                if (v151 <= v131)
                {
                  v156 = v131;
                  if (v128 == v131)
                  {
                    v157 = 1;
                  }

                  else
                  {
                    v157 = (v128 - v131) >> 2;
                  }

                  if (v157 >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v158 = operator new(8 * v157);
                  v159 = v158;
                  v160 = v157 >> 2;
                  v153 = &v158[8 * (v157 >> 2)];
                  v129 = v153;
                  v161 = v128 - v151;
                  if (v128 != v151)
                  {
                    v129 = &v153[v161];
                    v162 = v161 - 8;
                    if (v162 < 0x18 || (v163 = 8 * v160, (&v158[8 * v160] - v151) < 0x20))
                    {
                      v164 = &v158[8 * (v157 >> 2)];
                      v165 = v151;
                      goto LABEL_192;
                    }

                    v167 = (v162 >> 3) + 1;
                    v168 = 8 * (v167 & 0x3FFFFFFFFFFFFFFCLL);
                    v164 = &v153[v168];
                    v165 = &v151[v168];
                    v169 = (v151 + 16);
                    v170 = &v158[v163 + 16];
                    v171 = v167 & 0x3FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v172 = *v169;
                      *(v170 - 1) = *(v169 - 1);
                      *v170 = v172;
                      v169 += 2;
                      v170 += 32;
                      v171 -= 4;
                    }

                    while (v171);
                    if (v167 != (v167 & 0x3FFFFFFFFFFFFFFCLL))
                    {
                      do
                      {
LABEL_192:
                        v166 = *v165;
                        v165 += 8;
                        *v164 = v166;
                        v164 += 8;
                      }

                      while (v164 != v129);
                    }
                  }

                  v128 = &v158[8 * v157];
                  if (v156)
                  {
                    operator delete(v156);
                  }

                  v131 = v159;
                  goto LABEL_178;
                }

                v155 = (((v151 - v131) >> 3) + 1 + ((((v151 - v131) >> 3) + 1) >> 63)) >> 1;
                v153 = &v151[-8 * v155];
                if (v128 != v151)
                {
                  memmove(&v151[-8 * v155], v151, v128 - v151);
                }

                v129 = &v153[v128 - v151];
              }

              else
              {
                v153 = v151;
              }

LABEL_178:
              v154 = *v152++;
              *v129 = v154;
              v129 += 8;
              v151 = v153;
              if (v152 == *(this + 18))
              {
                goto LABEL_227;
              }
            }
          }

          v153 = v151;
          i = v357;
LABEL_227:
          v192 = *(this + 16);
          *(this + 16) = v131;
          *(this + 17) = v153;
          *(this + 18) = v129;
          *(this + 19) = v128;
          *(this + 20) += v354;
          j = v366;
          if (v192)
          {
            operator delete(v192);
          }

LABEL_229:
          v3 = *(this + 20);
          v6 = *(this + 17);
          v7 = *(this + 18);
          v23 = v3 >> 9;
          v27 = v359;
          v22 = v361;
          v12 = v363;
LABEL_230:
          v193 = (v6 + 8 * v23);
          if (v7 != v6)
          {
            v194 = (*v193 + 8 * (v3 & 0x1FF));
            v195 = v22 - v27;
            if (v22 > v27)
            {
              goto LABEL_232;
            }

LABEL_237:
            v198 = v194;
            v199 = v193;
            v197 = v12;
            v200 = __src;
            if (!v22)
            {
              goto LABEL_399;
            }

            goto LABEL_256;
          }

          v194 = 0;
          v195 = v22 - v27;
          if (v22 <= v27)
          {
            goto LABEL_237;
          }

LABEL_232:
          if (v27 >= v22 >> 1)
          {
            v196 = v195 + (&__src[-*v12] >> 3);
            if (v196 < 1)
            {
              v201 = 511 - v196;
              v202 = ~v201;
              v197 = &v12[-(v201 >> 9)];
              goto LABEL_245;
            }

            v197 = &v12[v196 >> 9];
LABEL_241:
            v200 = (*v197 + 8 * (v196 & 0x1FF));
          }

          else if (v27)
          {
            v196 = ((j - *i) >> 3) - v27;
            if (v196 >= 1)
            {
              v197 = &i[v196 >> 9];
              goto LABEL_241;
            }

            v203 = 511 - v196;
            v202 = ~v203;
            v197 = &i[-(v203 >> 9)];
LABEL_245:
            v200 = (*v197 + 8 * (v202 & 0x1FF));
          }

          else
          {
            v197 = i;
            v200 = j;
          }

          if (v200 == __src)
          {
            v198 = v194;
            v199 = v193;
            v200 = __src;
            v22 = v27;
            if (!v27)
            {
              goto LABEL_399;
            }

            goto LABEL_256;
          }

          v204 = *(this + 21);
          v205 = v197;
          v206 = v200;
          v199 = v193;
          v198 = v194;
          while (2)
          {
            if (v198 == *v199)
            {
              v207 = *--v199;
              v198 = (v207 + 4096);
              if (v206 == *v205)
              {
                goto LABEL_252;
              }
            }

            else if (v206 == *v205)
            {
LABEL_252:
              v209 = *--v205;
              v206 = (v209 + 4096);
            }

            v208 = *(v206 - 1);
            v206 -= 8;
            *(v198 - 1) = v208;
            v198 -= 8;
            --v3;
            ++v204;
            if (v206 == __src)
            {
              *(this + 20) = v3;
              *(this + 21) = v204;
              v22 = v27;
              if (!v27)
              {
                goto LABEL_399;
              }

LABEL_256:
              v210 = v22 + (&v194[-*v193] >> 3);
              if (v210 < 1)
              {
                v213 = 511 - v210;
                v211 = &v193[-(v213 >> 9)];
                v212 = *v211 + 8 * (~v213 & 0x1FF);
                if (v212 == v194)
                {
                  goto LABEL_267;
                }
              }

              else
              {
                v211 = &v193[v210 >> 9];
                v212 = *v211 + 8 * (v210 & 0x1FF);
                if (v212 == v194)
                {
LABEL_267:
                  if (v22 < v27)
                  {
                    v220 = v27 + (&v194[-*v193] >> 3);
                    if (v220 < 1)
                    {
                      v223 = 511 - v220;
                      v221 = &v193[-(v223 >> 9)];
                      v222 = *v221 + 8 * (~v223 & 0x1FF);
                    }

                    else
                    {
                      v221 = &v193[v220 >> 9];
                      v222 = *v221 + 8 * (v220 & 0x1FF);
                    }

                    *&v369 = v193;
                    *(&v369 + 1) = v194;
                    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>>>(v211, v212, v221, v222, &v369);
                    v194 = *(&v369 + 1);
                    v193 = v369;
                  }

                  if (i == v197)
                  {
                    if (v200 != j)
                    {
                      v248 = *v193;
                      v247 = (v193 + 1);
                      v246 = v248;
                      while (1)
                      {
                        v249 = (v246 - v194 + 4096) >> 3;
                        if ((j - v200) >> 3 >= v249)
                        {
                          v250 = v249;
                        }

                        else
                        {
                          v250 = (j - v200) >> 3;
                        }

                        if (v250)
                        {
                          memmove(v194, v200, 8 * v250);
                        }

                        v200 += 8 * v250;
                        if (v200 == j)
                        {
                          break;
                        }

                        v251 = *v247++;
                        v246 = v251;
                        v194 = v251;
                      }
                    }

                    goto LABEL_399;
                  }

                  v224 = *v197 + 4096;
                  v364 = v12;
                  if (v224 == v200)
                  {
LABEL_283:
                    v230 = v197 + 1;
                    if (v197 + 1 == i)
                    {
                      goto LABEL_295;
                    }
                  }

                  else
                  {
                    v226 = *v193++;
                    v225 = v226;
                    while (1)
                    {
                      v227 = (v225 - v194 + 4096) >> 3;
                      if ((v224 - v200) >> 3 < v227)
                      {
                        v227 = (v224 - v200) >> 3;
                      }

                      v228 = 8 * v227;
                      if (v227)
                      {
                        memmove(v194, v200, 8 * v227);
                      }

                      v200 += v228;
                      if (v200 == v224)
                      {
                        break;
                      }

                      v229 = *v193++;
                      v225 = v229;
                      v194 = v229;
                    }

                    v194 += v228;
                    if ((*(v193 - 1) + 4096) != v194)
                    {
                      --v193;
                      goto LABEL_283;
                    }

                    v194 = *v193;
                    v230 = v197 + 1;
                    if (v197 + 1 == i)
                    {
LABEL_295:
                      v239 = *i;
                      v12 = v364;
                      if (*i != j)
                      {
                        v242 = *v193;
                        v241 = (v193 + 1);
                        v240 = v242;
                        while (1)
                        {
                          v243 = (v240 - v194 + 4096) >> 3;
                          if ((j - v239) >> 3 >= v243)
                          {
                            v244 = v243;
                          }

                          else
                          {
                            v244 = (j - v239) >> 3;
                          }

                          if (v244)
                          {
                            memmove(v194, v239, 8 * v244);
                          }

                          v239 += 8 * v244;
                          if (v239 == j)
                          {
                            break;
                          }

                          v245 = *v241++;
                          v240 = v245;
                          v194 = v245;
                        }
                      }

                      goto LABEL_399;
                    }
                  }

                  v231 = *v193;
                  do
                  {
                    while (1)
                    {
                      v232 = i;
                      v233 = j;
                      v234 = 0;
                      v235 = *v230;
                      for (++v193; ; ++v193)
                      {
                        v236 = (v231 - v194 + 4096) >> 3;
                        if ((4096 - v234) >> 3 < v236)
                        {
                          v236 = (4096 - v234) >> 3;
                        }

                        v237 = 8 * v236;
                        if (v236)
                        {
                          memmove(v194, (v235 + v234), 8 * v236);
                        }

                        v234 += v237;
                        if (v234 == 4096)
                        {
                          break;
                        }

                        v238 = *v193;
                        v231 = v238;
                        v194 = v238;
                      }

                      v194 += v237;
                      v231 = *(v193 - 1);
                      if (v231 + 4096 != v194)
                      {
                        break;
                      }

                      v231 = *v193;
                      v194 = *v193;
                      j = v233;
                      ++v230;
                      i = v232;
                      if (v230 == v232)
                      {
                        goto LABEL_295;
                      }
                    }

                    --v193;
                    j = v233;
                    ++v230;
                    i = v232;
                  }

                  while (v230 != v232);
                  goto LABEL_295;
                }
              }

              v214 = *(this + 21);
              v215 = v211;
              v216 = v212;
              while (1)
              {
                if (v198 == *v199)
                {
                  v217 = *--v199;
                  v198 = (v217 + 4096);
                  if (v216 != *v215)
                  {
                    goto LABEL_262;
                  }
                }

                else if (v216 != *v215)
                {
LABEL_262:
                  v218 = *(v216 - 1);
                  v216 -= 8;
                  *(v198 - 1) = v218;
                  v198 -= 8;
                  --v3;
                  ++v214;
                  if (v216 == v194)
                  {
                    goto LABEL_266;
                  }

                  continue;
                }

                v219 = *--v215;
                v216 = (v219 + 4088);
                *(v198 - 1) = *(v219 + 4088);
                v198 -= 8;
                --v3;
                ++v214;
                if ((v219 + 4088) == v194)
                {
LABEL_266:
                  *(this + 20) = v3;
                  *(this + 21) = v214;
                  goto LABEL_267;
                }
              }
            }

            continue;
          }
        }

        while (2)
        {
          if (v129 != v128)
          {
            v151 = v130;
            goto LABEL_201;
          }

          if (v130 > v131)
          {
            v173 = (((v130 - v131) >> 3) + 1 + ((((v130 - v131) >> 3) + 1) >> 63)) >> 1;
            v151 = &v130[-8 * v173];
            if (v128 != v130)
            {
              memmove(&v130[-8 * v173], v130, v128 - v130);
            }

            v129 = &v151[v128 - v130];
            goto LABEL_201;
          }

          v174 = v131;
          if (v128 == v131)
          {
            v175 = 1;
          }

          else
          {
            v175 = (v128 - v131) >> 2;
          }

          if (v175 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v176 = operator new(8 * v175);
          v177 = v176;
          v178 = v175 >> 2;
          v151 = &v176[8 * (v175 >> 2)];
          v129 = v151;
          v179 = v128 - v130;
          if (v128 != v130)
          {
            v129 = &v151[v179];
            v180 = v179 - 8;
            if (v180 < 0x18 || (v181 = 8 * v178, (&v176[8 * v178] - v130) < 0x20))
            {
              v182 = &v176[8 * (v175 >> 2)];
              v183 = v130;
              goto LABEL_215;
            }

            v185 = (v180 >> 3) + 1;
            v186 = 8 * (v185 & 0x3FFFFFFFFFFFFFFCLL);
            v182 = &v151[v186];
            v183 = &v130[v186];
            v187 = (v130 + 16);
            v188 = &v176[v181 + 16];
            v189 = v185 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v190 = *v187;
              *(v188 - 1) = *(v187 - 1);
              *v188 = v190;
              v187 += 2;
              v188 += 32;
              v189 -= 4;
            }

            while (v189);
            if (v185 != (v185 & 0x3FFFFFFFFFFFFFFCLL))
            {
              do
              {
LABEL_215:
                v184 = *v183;
                v183 += 8;
                *v182 = v184;
                v182 += 8;
              }

              while (v182 != v129);
            }
          }

          v128 = &v176[8 * v175];
          if (v174)
          {
            operator delete(v174);
          }

          v131 = v177;
LABEL_201:
          *v129 = *(v150 - 8);
          v129 += 8;
          v150 = *(this + 18) - 8;
          *(this + 18) = v150;
          v130 = v151;
          if (!--v48)
          {
            goto LABEL_175;
          }

          continue;
        }
      }
    }

    if (v130 > v131)
    {
      if (v128 != v130)
      {
        memmove(&v130[-8 * ((((v130 - v131) >> 3) + 1 + ((((v130 - v131) >> 3) + 1) >> 63)) >> 1)], v130, v128 - v130);
      }

      v129 = &v128[-8 * ((((v130 - v131) >> 3) + 1 + ((((v130 - v131) >> 3) + 1) >> 63)) >> 1)];
      v130 -= 8 * ((((v130 - v131) >> 3) + 1 + ((((v130 - v131) >> 3) + 1) >> 63)) >> 1);
      goto LABEL_151;
    }

    if (v128 == v131)
    {
      v134 = 1;
    }

    else
    {
      v134 = (v128 - v131) >> 2;
    }

    if (v134 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v135 = operator new(8 * v134);
    v136 = v134 >> 2;
    v137 = &v135[8 * (v134 >> 2)];
    v129 = v137;
    v138 = v128 - v130;
    if (v128 != v130)
    {
      v129 = &v137[v138];
      v139 = v138 - 8;
      if (v139 >= 0x18 && (v140 = 8 * v136, (&v135[8 * v136] - v130) >= 0x20))
      {
        v144 = (v139 >> 3) + 1;
        v145 = 8 * (v144 & 0x3FFFFFFFFFFFFFFCLL);
        v141 = &v137[v145];
        v142 = &v130[v145];
        v146 = (v130 + 16);
        v147 = &v135[v140 + 16];
        v148 = v144 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v149 = *v146;
          *(v147 - 1) = *(v146 - 1);
          *v147 = v149;
          v146 += 2;
          v147 += 32;
          v148 -= 4;
        }

        while (v148);
        if (v144 == (v144 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_166;
        }
      }

      else
      {
        v141 = &v135[8 * (v134 >> 2)];
        v142 = v130;
      }

      do
      {
        v143 = *v142;
        v142 += 8;
        *v141 = v143;
        v141 += 8;
      }

      while (v141 != v129);
    }

LABEL_166:
    v128 = &v135[8 * v134];
    if (v132)
    {
      v131 = v135;
      operator delete(v132);
      v130 = v137;
    }

    else
    {
      v130 = &v135[8 * (v134 >> 2)];
      v131 = v135;
    }

    goto LABEL_151;
  }

LABEL_12:
  v28 = v12;
  v29 = (v25 << 6) - 1;
  v30 = v7 - v6;
  if (v7 == v6)
  {
    v29 = 0;
  }

  v31 = v29 - v4;
  v32 = v22 >= v31;
  v33 = v22 - v31;
  if (v33 != 0 && v32)
  {
    v358 = v27;
    v360 = v22;
    if (v7 == v6)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = v33;
    }

    if ((v34 & 0x1FF) != 0)
    {
      v35 = (v34 >> 9) + 1;
    }

    else
    {
      v35 = v34 >> 9;
    }

    if (v35 >= v23)
    {
      v36 = v23;
    }

    else
    {
      v36 = v35;
    }

    if (v35 <= v23)
    {
      for (*(this + 20) = v3 - (v36 << 9); v36; --v36)
      {
        v56 = *(this + 17);
        *&v369 = *v56;
        *(this + 17) = v56 + 1;
        std::__split_buffer<void **>::emplace_back<void **&>(this + 16, &v369);
      }

      goto LABEL_322;
    }

    v365 = j;
    v37 = v35 - v36;
    v38 = *(this + 19) - *(this + 16);
    v39 = v30 >> 3;
    if (v35 - v36 <= (v38 >> 3) - (v30 >> 3))
    {
      if (v37)
      {
        while (*(this + 19) != *(this + 18))
        {
          *&v369 = operator new(0x1000uLL);
          std::__split_buffer<void **>::emplace_back<void **&>(this + 16, &v369);
          --v35;
          if (!--v37)
          {
            v3 = *(this + 20);
            goto LABEL_320;
          }
        }

        do
        {
          *&v369 = operator new(0x1000uLL);
          std::__split_buffer<void **>::emplace_front<void **>(this + 128, &v369);
          if (*(this + 18) - *(this + 17) == 8)
          {
            v252 = 511;
          }

          else
          {
            v252 = 512;
          }

          v3 = v252 + *(this + 20);
          *(this + 20) = v3;
          --v37;
        }

        while (v37);
        v36 = v35;
      }

LABEL_320:
      *(this + 20) = v3 - (v36 << 9);
      for (j = v365; v36; --v36)
      {
        v253 = *(this + 17);
        *&v369 = *v253;
        *(this + 17) = v253 + 1;
        std::__split_buffer<void **>::emplace_back<void **&>(this + 16, &v369);
      }

      goto LABEL_322;
    }

    v40 = v38 >> 2;
    if (v40 <= v37 + v39)
    {
      v41 = v37 + v39;
    }

    else
    {
      v41 = v40;
    }

    v362 = v28;
    v356 = i;
    if (!v41)
    {
      v42 = 0;
      goto LABEL_77;
    }

    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
LABEL_77:
      v367 = v36 << 9;
      v60 = &v42[8 * (v39 - v36)];
      v61 = &v42[8 * v41];
      v62 = v60;
      v63 = v42;
      while (1)
      {
        v64 = v63;
        v65 = operator new(0x1000uLL);
        if (v60 == v61)
        {
          break;
        }

LABEL_78:
        *v60 = v65;
        v60 += 8;
        if (!--v37)
        {
          v84 = *(this + 17);
          if (v3 < 0x200)
          {
            v85 = v62;
LABEL_102:
            v86 = *(this + 18);
            if (v86 != v84)
            {
              j = v365;
              while (1)
              {
                if (v85 == v63)
                {
                  if (v60 >= v61)
                  {
                    v92 = v63;
                    if (v61 == v63)
                    {
                      v93 = 1;
                    }

                    else
                    {
                      v93 = (v61 - v63) >> 2;
                    }

                    if (v93 >> 61)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v94 = j;
                    v95 = operator new(8 * v93);
                    v96 = v95;
                    v97 = (v93 + 3) >> 2;
                    v87 = &v95[8 * v97];
                    v98 = v60 - v92;
                    v90 = v60 == v92;
                    v60 = v87;
                    if (!v90)
                    {
                      v60 = &v87[v98];
                      v99 = v98 - 8;
                      if (v99 < 0x18 || (v100 = 8 * v97, (&v95[8 * v97] - v85) < 0x20))
                      {
                        v101 = &v95[8 * v97];
                        v102 = v85;
                        goto LABEL_118;
                      }

                      v104 = (v99 >> 3) + 1;
                      v105 = 8 * (v104 & 0x3FFFFFFFFFFFFFFCLL);
                      v101 = &v87[v105];
                      v102 = &v85[v105];
                      v106 = (v85 + 16);
                      v107 = &v95[v100 + 16];
                      v108 = v104 & 0x3FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v109 = *v106;
                        *(v107 - 1) = *(v106 - 1);
                        *v107 = v109;
                        v106 += 2;
                        v107 += 32;
                        v108 -= 4;
                      }

                      while (v108);
                      if (v104 != (v104 & 0x3FFFFFFFFFFFFFFCLL))
                      {
                        do
                        {
LABEL_118:
                          v103 = *v102;
                          v102 += 8;
                          *v101 = v103;
                          v101 += 8;
                        }

                        while (v101 != v60);
                      }
                    }

                    v61 = &v95[8 * v93];
                    if (v92)
                    {
                      operator delete(v92);
                    }

                    v63 = v96;
                    j = v94;
                    goto LABEL_105;
                  }

                  v87 = &v63[8 * ((((v61 - v60) >> 3) + 1 + ((((v61 - v60) >> 3) + 1) >> 63)) >> 1)];
                  v91 = v60 - v63;
                  v90 = v60 == v63;
                  v60 += 8 * ((((v61 - v60) >> 3) + 1 + ((((v61 - v60) >> 3) + 1) >> 63)) >> 1);
                  if (!v90)
                  {
                    memmove(v87, v85, v91);
                  }
                }

                else
                {
                  v87 = v85;
                }

LABEL_105:
                v88 = *--v86;
                *(v87 - 1) = v88;
                v89 = v87 - 8;
                v85 = v89;
                if (v86 == *(this + 17))
                {
                  goto LABEL_224;
                }
              }
            }

            v89 = v85;
            j = v365;
LABEL_224:
            v191 = *(this + 16);
            *(this + 16) = v63;
            *(this + 17) = v89;
            *(this + 18) = v60;
            *(this + 19) = v61;
            *(this + 20) -= v367;
            v28 = v362;
            i = v356;
            if (v191)
            {
              operator delete(v191);
            }

LABEL_322:
            v2 = *(this + 21);
            v6 = *(this + 17);
            v7 = *(this + 18);
            v4 = *(this + 20) + v2;
            v5 = v4 >> 9;
            v15 = __src;
            v27 = v358;
            v22 = v360;
            goto LABEL_323;
          }

          while (2)
          {
            if (v60 != v61)
            {
              v85 = v62;
              goto LABEL_127;
            }

            if (v62 > v63)
            {
              v110 = (((v62 - v63) >> 3) + 1 + ((((v62 - v63) >> 3) + 1) >> 63)) >> 1;
              v85 = &v62[-8 * v110];
              if (v61 != v62)
              {
                memmove(&v62[-8 * v110], v62, v61 - v62);
              }

              v60 = &v85[v61 - v62];
              goto LABEL_127;
            }

            v111 = v63;
            if (v61 == v63)
            {
              v112 = 1;
            }

            else
            {
              v112 = (v61 - v63) >> 2;
            }

            if (v112 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v113 = operator new(8 * v112);
            v114 = v113;
            v115 = v112 >> 2;
            v85 = &v113[8 * (v112 >> 2)];
            v60 = v85;
            v116 = v61 - v62;
            if (v61 != v62)
            {
              v60 = &v85[v116];
              v117 = v116 - 8;
              if (v117 < 0x18 || (v118 = 8 * v115, (&v113[8 * v115] - v62) < 0x20))
              {
                v119 = &v113[8 * (v112 >> 2)];
                v120 = v62;
                goto LABEL_141;
              }

              v122 = (v117 >> 3) + 1;
              v123 = 8 * (v122 & 0x3FFFFFFFFFFFFFFCLL);
              v119 = &v85[v123];
              v120 = &v62[v123];
              v124 = (v62 + 16);
              v125 = &v113[v118 + 16];
              v126 = v122 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v127 = *v124;
                *(v125 - 1) = *(v124 - 1);
                *v125 = v127;
                v124 += 2;
                v125 += 32;
                v126 -= 4;
              }

              while (v126);
              if (v122 != (v122 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_141:
                  v121 = *v120;
                  v120 += 8;
                  *v119 = v121;
                  v119 += 8;
                }

                while (v119 != v60);
              }
            }

            v61 = &v113[8 * v112];
            if (v111)
            {
              operator delete(v111);
            }

            v63 = v114;
LABEL_127:
            *v60 = *v84;
            v60 += 8;
            v84 = (*(this + 17) + 8);
            *(this + 17) = v84;
            v62 = v85;
            if (!--v36)
            {
              goto LABEL_102;
            }

            continue;
          }
        }
      }

      if (v62 > v63)
      {
        v66 = (((v62 - v63) >> 3) + 1 + ((((v62 - v63) >> 3) + 1) >> 63)) >> 1;
        v67 = &v62[-8 * v66];
        if (v61 != v62)
        {
          memmove(&v62[-8 * v66], v62, v61 - v62);
        }

        v60 = &v67[v61 - v62];
        v62 = v67;
        goto LABEL_78;
      }

      if (v61 == v63)
      {
        v68 = 1;
      }

      else
      {
        v68 = (v61 - v63) >> 2;
      }

      if (v68 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v69 = operator new(8 * v68);
      v70 = v68 >> 2;
      v71 = &v69[8 * (v68 >> 2)];
      v60 = v71;
      v72 = v61 - v62;
      if (v61 != v62)
      {
        v60 = &v71[v72];
        v73 = v72 - 8;
        if (v73 >= 0x18 && (v74 = 8 * v70, (&v69[8 * v70] - v62) >= 0x20))
        {
          v78 = (v73 >> 3) + 1;
          v79 = 8 * (v78 & 0x3FFFFFFFFFFFFFFCLL);
          v75 = &v71[v79];
          v76 = &v62[v79];
          v80 = (v62 + 16);
          v81 = &v69[v74 + 16];
          v82 = v78 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v83 = *v80;
            *(v81 - 1) = *(v80 - 1);
            *v81 = v83;
            v80 += 2;
            v81 += 32;
            v82 -= 4;
          }

          while (v82);
          if (v78 == (v78 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_93;
          }
        }

        else
        {
          v75 = &v69[8 * (v68 >> 2)];
          v76 = v62;
        }

        do
        {
          v77 = *v76;
          v76 += 8;
          *v75 = v77;
          v75 += 8;
        }

        while (v75 != v60);
      }

LABEL_93:
      v61 = &v69[8 * v68];
      if (v64)
      {
        v63 = v69;
        v62 = v71;
        operator delete(v64);
      }

      else
      {
        v62 = &v69[8 * (v68 >> 2)];
        v63 = v69;
      }

      goto LABEL_78;
    }

LABEL_458:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

LABEL_323:
  v254 = (v6 + 8 * v5);
  if (v7 != v6)
  {
    v255 = (*v254 + 8 * (v4 & 0x1FF));
    v256 = v2 - v27;
    v257 = v2 - v27 - v22;
    v12 = v28;
    if (v2 - v27 < v22)
    {
      goto LABEL_325;
    }

LABEL_330:
    v260 = v255;
    v261 = v254;
    v259 = i;
    v262 = j;
    if (!v22)
    {
      goto LABEL_399;
    }

    goto LABEL_350;
  }

  v255 = 0;
  v256 = v2 - v27;
  v257 = v2 - v27 - v22;
  v12 = v28;
  if (v2 - v27 >= v22)
  {
    goto LABEL_330;
  }

LABEL_325:
  if (v256 >= v22 >> 1)
  {
    v258 = v257 + ((j - *i) >> 3);
    if (v258 >= 1)
    {
      v259 = &i[v258 >> 9];
      goto LABEL_334;
    }

    v263 = 511 - v258;
    v264 = ~v263;
    v259 = &i[-(v263 >> 9)];
LABEL_338:
    v262 = (*v259 + 8 * (v264 & 0x1FF));
    goto LABEL_339;
  }

  if (!v256)
  {
    v262 = v15;
    v259 = v12;
    goto LABEL_339;
  }

  v258 = v256 + ((v15 - *v12) >> 3);
  if (v258 < 1)
  {
    v265 = 511 - v258;
    v264 = ~v265;
    v259 = &v12[-(v265 >> 9)];
    goto LABEL_338;
  }

  v259 = &v12[v258 >> 9];
LABEL_334:
  v262 = (*v259 + 8 * (v258 & 0x1FF));
LABEL_339:
  if (v262 == j)
  {
    v260 = v255;
    v261 = v254;
    v262 = j;
    v22 = v256;
    if (!v256)
    {
      goto LABEL_399;
    }

    goto LABEL_350;
  }

  v266 = v259;
  v267 = v262;
  v261 = v254;
  v260 = v255;
  do
  {
    *v260++ = *v267;
    if ((v260 - *v261) == 4096)
    {
      v268 = v261[1];
      ++v261;
      v260 = v268;
      v267 += 8;
      if (&v267[-*v266] != 4096)
      {
        goto LABEL_341;
      }
    }

    else
    {
      v267 += 8;
      if (&v267[-*v266] != 4096)
      {
        goto LABEL_341;
      }
    }

    v269 = v266[1];
    ++v266;
    v267 = v269;
LABEL_341:
    ++v2;
  }

  while (v267 != j);
  *(this + 21) = v2;
  v22 = v256;
  if (!v256)
  {
    goto LABEL_399;
  }

LABEL_350:
  v270 = (&v255[-*v254] >> 3) - v22;
  if (v270 >= 1)
  {
    v271 = &v254[v270 >> 9];
    v272 = *v271 + 8 * (v270 & 0x1FF);
    if (v272 == v255)
    {
      goto LABEL_362;
    }

LABEL_354:
    v274 = v271;
    v275 = v272;
    while (2)
    {
      *v260++ = *v275;
      if ((v260 - *v261) == 4096)
      {
        v276 = v261[1];
        ++v261;
        v260 = v276;
        v275 += 8;
        if (v275 - *v274 == 4096)
        {
LABEL_360:
          v277 = v274[1];
          ++v274;
          v275 = v277;
        }
      }

      else
      {
        v275 += 8;
        if (v275 - *v274 == 4096)
        {
          goto LABEL_360;
        }
      }

      ++v2;
      if (v275 == v255)
      {
        *(this + 21) = v2;
        goto LABEL_362;
      }

      continue;
    }
  }

  v273 = 511 - v270;
  v271 = &v254[-(v273 >> 9)];
  v272 = *v271 + 8 * (~v273 & 0x1FF);
  if (v272 != v255)
  {
    goto LABEL_354;
  }

LABEL_362:
  if (v22 < v256)
  {
    v278 = (&v255[-*v254] >> 3) - v256;
    if (v278 < 1)
    {
      v281 = 511 - v278;
      v279 = &v254[-(v281 >> 9)];
      v280 = *v279 + 8 * (~v281 & 0x1FF);
    }

    else
    {
      v279 = &v254[v278 >> 9];
      v280 = *v279 + 8 * (v278 & 0x1FF);
    }

    *&v282 = 0xAAAAAAAAAAAAAAAALL;
    *(&v282 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v369 = v282;
    v370 = v282;
    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,0>(&v369, v279, v280, v271, v272, v254, v255);
    v255 = *(&v370 + 1);
    v254 = v370;
  }

  if (v12 == v259)
  {
    if (__src != v262)
    {
      v351 = *v254;
      v350 = (v254 - 1);
      v349 = v351;
      while (1)
      {
        v352 = (v255 - v349) >> 3;
        if ((v262 - __src) >> 3 < v352)
        {
          v352 = (v262 - __src) >> 3;
        }

        v262 -= 8 * v352;
        if (v352)
        {
          memmove(&v255[-8 * v352], v262, 8 * v352);
        }

        if (v262 == __src)
        {
          break;
        }

        v353 = *v350--;
        v349 = v353;
        v255 = v353 + 4096;
      }
    }
  }

  else
  {
    v283 = *v259;
    if (*v259 != v262)
    {
      v284 = *v254;
      while (1)
      {
        v285 = (v255 - v284) >> 3;
        if ((v262 - v283) >> 3 < v285)
        {
          v285 = (v262 - v283) >> 3;
        }

        v262 -= 8 * v285;
        v255 -= 8 * v285;
        if (v285)
        {
          memmove(v255, v262, 8 * v285);
        }

        if (v262 == v283)
        {
          break;
        }

        v286 = *--v254;
        v284 = v286;
        v255 = v286 + 4096;
      }

      if ((*v254 + 4096) == v255)
      {
        v287 = v254[1];
        ++v254;
        v255 = v287;
      }
    }

    v288 = v259 - 1;
    if (v288 != v12)
    {
      v289 = *v254;
      do
      {
        while (1)
        {
          v290 = *v288;
          v291 = (*v288 + 4096);
          while (1)
          {
            v292 = (v255 - v289) >> 3;
            if ((v291 - v290) >> 3 < v292)
            {
              v292 = (v291 - v290) >> 3;
            }

            v291 -= 8 * v292;
            v255 -= 8 * v292;
            if (v292)
            {
              memmove(v255, v291, 8 * v292);
            }

            if (v291 == v290)
            {
              break;
            }

            v293 = *--v254;
            v289 = v293;
            v255 = v293 + 4096;
          }

          v289 = *v254;
          if ((*v254 + 4096) == v255)
          {
            break;
          }

          if (--v288 == v12)
          {
            goto LABEL_390;
          }
        }

        v294 = v254[1];
        ++v254;
        v289 = v294;
        v255 = v294;
        --v288;
      }

      while (v288 != v12);
    }

LABEL_390:
    v295 = (*v12 + 4096);
    if (v295 != __src)
    {
      v298 = *v254;
      v297 = (v254 - 1);
      v296 = v298;
      while (1)
      {
        v299 = (v255 - v296) >> 3;
        if ((v295 - __src) >> 3 < v299)
        {
          v299 = (v295 - __src) >> 3;
        }

        v295 -= 8 * v299;
        if (v299)
        {
          memmove(&v255[-8 * v299], v295, 8 * v299);
        }

        if (v295 == __src)
        {
          break;
        }

        v300 = *v297--;
        v296 = v300;
        v255 = v300 + 4096;
      }
    }
  }

LABEL_399:
  if (j == __src)
  {
    v301 = 0;
    v302 = *(this + 26);
    v303 = *(this + 23);
    v304 = *(this + 24);
    v305 = (v303 + 8 * (v302 >> 9));
    if (v304 != v303)
    {
      goto LABEL_401;
    }

LABEL_405:
    v306 = 0;
    if (__src)
    {
      goto LABEL_406;
    }

LABEL_402:
    v307 = 0;
    v308 = v306;
    v309 = v305;
    if (v301 < 1)
    {
      goto LABEL_439;
    }
  }

  else
  {
    v301 = ((j - *i) >> 3) + ((i - v12) << 6) - (&__src[-*v12] >> 3);
    v302 = *(this + 26);
    v303 = *(this + 23);
    v304 = *(this + 24);
    v305 = (v303 + 8 * (v302 >> 9));
    if (v304 == v303)
    {
      goto LABEL_405;
    }

LABEL_401:
    v306 = *v305 + 8 * (v302 & 0x1FF);
    if (__src == v306)
    {
      goto LABEL_402;
    }

LABEL_406:
    v310 = (&__src[-*v12] >> 3) + ((v12 - v305) << 6);
    v307 = v310 - ((v306 - *v305) >> 3);
    if (v310 == (v306 - *v305) >> 3)
    {
      v308 = v306;
      v309 = v305;
      if (v301 < 1)
      {
        goto LABEL_439;
      }
    }

    else if (v310 < 1)
    {
      v317 = 511 - v310;
      v309 = &v305[-(v317 >> 9)];
      v308 = *v309 + 8 * (~v317 & 0x1FF);
      if (v301 < 1)
      {
        goto LABEL_439;
      }
    }

    else
    {
      v309 = &v305[v310 >> 9];
      v308 = *v309 + 8 * (v310 & 0x1FF);
      if (v301 < 1)
      {
        goto LABEL_439;
      }
    }
  }

  v311 = *(this + 27);
  v312 = v301 + ((v308 - *v309) >> 3);
  if (v307 <= (v311 - v301) >> 1)
  {
    if (v312 < 1)
    {
      v314 = &v309[-((511 - v312) >> 9)];
      v315 = *v314;
      v316 = ~(511 - v312) & 0x1FF;
    }

    else
    {
      v314 = &v309[v312 >> 9];
      v315 = *v314;
      v316 = v312 & 0x1FF;
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,0>(&v369, v305, v306, v309, v308, v314, &v315[8 * v316]);
    v323 = *(this + 27) - v301;
    v324 = *(this + 26) + v301;
    *(this + 26) = v324;
    *(this + 27) = v323;
    if (v324 >= 0x400)
    {
      v325 = *(this + 23);
      do
      {
        operator delete(*v325);
        v325 = (*(this + 23) + 8);
        *(this + 23) = v325;
        v326 = *(this + 26) - 512;
        *(this + 26) = v326;
      }

      while (v326 >= 0x400);
    }
  }

  else
  {
    if (v312 < 1)
    {
      v318 = 511 - v312;
      LOWORD(v312) = ~(511 - v312);
      v313 = &v309[-(v318 >> 9)];
    }

    else
    {
      v313 = &v309[v312 >> 9];
    }

    v319 = *v313 + 8 * (v312 & 0x1FF);
    v320 = v311 + v302;
    v321 = (v303 + 8 * (v320 >> 9));
    if (v304 == v303)
    {
      v322 = 0;
    }

    else
    {
      v322 = *v321 + 8 * (v320 & 0x1FF);
    }

    *&v369 = v309;
    *(&v369 + 1) = v308;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<void *,void **,void *&,void ***,long,512l>,std::__deque_iterator<void *,void **,void *&,void ***,long,512l>>>(v313, v319, v321, v322, &v369);
    v328 = *(this + 23);
    v327 = *(this + 24);
    if (v327 == v328)
    {
      v329 = 0;
    }

    else
    {
      v329 = ((v327 - v328) << 6) - 1;
    }

    v330 = *(this + 26);
    v331 = *(this + 27) - v301;
    *(this + 27) = v331;
    if ((v329 - (v330 + v331)) >= 0x400)
    {
      do
      {
        operator delete(*(v327 - 8));
        v332 = *(this + 23);
        v327 = *(this + 24) - 8;
        *(this + 24) = v327;
        if (v327 == v332)
        {
          v333 = 0;
        }

        else
        {
          v333 = ((v327 - v332) << 6) - 1;
        }
      }

      while ((v333 - (*(this + 27) + *(this + 26))) > 0x3FF);
    }
  }

LABEL_439:
  while (2)
  {
    v344 = *(this + 15);
    if (v344 < *(this + 69) && *(this + 21))
    {
      v345 = *(this + 14) + v344;
      v346 = *(this + 11);
      v347 = (v346 + 8 * (v345 >> 9));
      if (*(this + 12) == v346)
      {
        v334 = 0;
        v335 = *(this + 20);
        v336 = *(this + 17);
        v337 = (v336 + 8 * (v335 >> 9));
        if (*(this + 18) == v336)
        {
          goto LABEL_443;
        }
      }

      else
      {
        v334 = *v347 + 8 * (v345 & 0x1FF);
        v335 = *(this + 20);
        v348 = *(this + 17);
        v337 = (v348 + 8 * (v335 >> 9));
        if (*(this + 18) == v348)
        {
LABEL_443:
          v338 = 0;
          goto LABEL_438;
        }
      }

      v338 = (*v337 + 8 * (v335 & 0x1FF));
LABEL_438:
      std::deque<void *>::insert(this + 80, v347, v334, v338);
      std::deque<void *>::erase(this + 128, v337, v338);
      qmi::TransactionQueue::State::sendNow_sync(this, v339, v340, v341, v342, v343);
      continue;
    }

    break;
  }
}

void sub_2962ED170(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2962ED194(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  __cxa_begin_catch(a1);
  while (v17 != a17)
  {
    v18 = *v17++;
    operator delete(v18);
  }

  __cxa_rethrow();
}

void sub_2962ED1E4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1 != v2)
  {
    JUMPOUT(0x2962ED1F4);
  }

  JUMPOUT(0x2962ED204);
}

void sub_2962ED20C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void qmi::QmiClientProxyAdapter::enterPowerMode(uint64_t a1, char *object, int a3)
{
  if (a3 == 1)
  {
    var18.gr_name = object;
    if (object)
    {
      v5 = a1;
      dispatch_retain(object);
      a1 = v5;
    }

    qmi::ClientProxy::State::triggerLowPower_sync((a1 + 48), &var18);
    if (object)
    {
      dispatch_release(object);
    }
  }

  else if (!a3)
  {
    v3 = (a1 + 48);

    qmi::ClientProxy::State::triggerExitLowPower_sync(v3);
  }
}

void sub_2962ED2C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientProxy::State::triggerExitLowPower_sync(qmi::ClientProxy::State *this)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(this + 29);
  if (v2)
  {
    if (*(this + 80) == 1 && (*(*v2 + 16))(v2))
    {
      v3 = xpc_dictionary_create(0, 0, 0);
      if (v3 || (v3 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C259C10](v3) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v3);
          v4 = v3;
        }

        else
        {
          v4 = xpc_null_create();
        }
      }

      else
      {
        v4 = xpc_null_create();
        v3 = 0;
      }

      xpc_release(v3);
      v7 = xpc_BOOL_create(1);
      if (!v7)
      {
        v7 = xpc_null_create();
      }

      xpc_dictionary_set_value(v4, "exit_low_power", v7);
      v8 = xpc_null_create();
      xpc_release(v7);
      xpc_release(v8);
      v9 = *(this + 29);
      object = v4;
      if (v4)
      {
        xpc_retain(v4);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v9 + 24))(v9, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v4);
    }

    if ((*(this + 19) - 4) <= 2)
    {
      *(this + 19) = 4;
      qmi::ClientProxy::State::sendIfPossible_sync(this);
    }
  }

  else
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = (this + 48);
      if (*(this + 71) < 0)
      {
        v6 = *v6;
      }

      *buf = 136315138;
      v13 = v6;
      _os_log_error_impl(&dword_2962DD000, v5, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when triggering exit low power state", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_2962ED500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::Client::State::handleExitLowPower_sync(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = _Block_copy(v2);
  v4 = v3;
  v5 = *(a1 + 264);
  v6 = *(a1 + 272);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 136);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN3qmi6Client5State23handleExitLowPower_syncERKN3xpc4dictE_block_invoke;
  v10[3] = &__block_descriptor_tmp_15_1;
  v10[4] = v5;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v7;
  if (v3)
  {
    aBlock = _Block_copy(v3);
    dispatch_async(v8, v10);
    v9 = aBlock;
    if (!aBlock)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  aBlock = 0;
  dispatch_async(v8, v10);
  v9 = aBlock;
  if (aBlock)
  {
LABEL_10:
    _Block_release(v9);
  }

LABEL_11:
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void *__copy_helper_block_e8_32c24_ZTSNSt3__18weak_ptrIvEE48c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void ___ZN3qmi6Client5State23handleExitLowPower_syncERKN3xpc4dictE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32) == 0;
      if (*(a1 + 56) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 1;
  if (*(a1 + 56) != 1)
  {
LABEL_8:
    (*(*(a1 + 48) + 16))();
    goto LABEL_9;
  }

LABEL_7:
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t ___ZZNK3qmi12ClientRouter10setHandlerENS_6Client5EventENSt3__18functionIFvNS_16SubscriptionTypeEEEEENK3__0clIS5_NS_11ClientStateEEEDaT_RKT0__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 64);
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1, &v3);
}

void __destroy_helper_block_e8_32c24_ZTSNSt3__18weak_ptrIvEE48c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
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

uint64_t QMux::isPoweredDown(QMux *this)
{
  v1 = *this;
  if (*this)
  {
    v4 = this;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNKS1_13isPoweredDownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
    v5[3] = &__block_descriptor_tmp_116;
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

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void QMux::getQMIPowerDownMessages(QMux *this@<X0>, const char *a2@<X5>, void *a3@<X8>)
{
  v5 = *this;
  if (!*this)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x70A, "fState", "is not", "true", a2);
    v5 = *this;
  }

  v8 = this;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS1_23getQMIPowerDownMessagesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v9[3] = &__block_descriptor_tmp_118;
  v9[4] = v5 + 8;
  v9[5] = &v8;
  v10 = v9;
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  if (v7)
  {
    v12 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__13setINS1_4pairIKN3qmi11ServiceTypeEKtEENS1_4lessIS8_EENS1_9allocatorIS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v13 = &__block_descriptor_tmp_120;
    v14 = a3;
    v15 = &v10;
    dispatch_async_and_wait(v6, block);
  }

  else
  {
    v12 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setINS1_4pairIKN3qmi11ServiceTypeEKtEENS1_4lessIS8_EENS1_9allocatorIS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v13 = &__block_descriptor_tmp_119;
    v14 = a3;
    v15 = &v10;
    dispatch_sync(v6, block);
  }
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__13setINS1_4pairIKN3qmi11ServiceTypeEKtEENS1_4lessIS8_EENS1_9allocatorIS8_EEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*(v2 + 8));
  v4 = v8;
  *v2 = v6;
  v5 = v7;
  *(v2 + 8) = v7;
  *(v2 + 16) = v4;
  if (v4)
  {
    v5[2] = v3;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(0);
  }

  else
  {
    *v2 = v3;
    std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(v5);
  }
}

void std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(*a1);
    std::__tree<std::pair<qmi::ServiceType const,unsigned short const>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN4QMux5StateEE20execute_wrapped_syncIZNS1_23getQMIPowerDownMessagesEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = ***(result + 40);
  v3 = v2[36];
  *a2 = v2[35];
  v4 = v2[37];
  a2[2] = v4;
  if (v4)
  {
    v5 = (v3 + 16);
  }

  else
  {
    v5 = a2;
  }

  a2[1] = v3;
  v2[37] = 0;
  *v5 = a2 + 1;
  v2[35] = v2 + 36;
  v2[36] = 0;
  return result;
}

void _ATCSException::triggerAssertion(_ATCSException *this, const char *a2, const char *a3, const char *a4, const char *a5, const char *a6, const void *a7)
{
  v12 = a2;
  __b[65] = *MEMORY[0x29EDCA608];
  memset(__b, 170, 0x208uLL);
  _ATCSException::_ATCSException(__b, this, v12, "Assertion failure %s %s %s, left operand %p right operand %p", a3, a4, a5, a6, a7);
  pthread_mutex_lock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  if (qword_2A18999F8)
  {
    goto LABEL_2;
  }

  v15 = operator new(8uLL);
  *v15 = 0;
  v14 = operator new(0x20uLL);
  v14->__vftable = &unk_2A1D490D8;
  v14->__shared_owners_ = 0;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v15;
  *v15 = DefaultATCSExceptionHandler;
  v16 = off_2A1899A00;
  qword_2A18999F8 = v15;
  off_2A1899A00 = v14;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

LABEL_2:
    v15 = qword_2A18999F8;
    v14 = off_2A1899A00;
    v18 = off_2A1899A00;
    if (!off_2A1899A00)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = v14;
LABEL_8:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_9:
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  (*v15)(__b);
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  std::exception::~exception(__b);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_2962EDF94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::exception a17)
{
  operator delete(v17);
  pthread_mutex_unlock(&ctu::Singleton<ATCSExceptionHandlerGlobal,ATCSExceptionHandlerGlobal,ctu::PthreadMutexGuardPolicy<ATCSExceptionHandlerGlobal>>::sInstance);
  std::exception::~exception(&a17);
  _Unwind_Resume(a1);
}

void ATCSAdaptiveTimer::create_default_global(ATCSAdaptiveTimer **a1@<X8>)
{
  v3 = operator new(0x28uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_2A1D47A58;
  *(v3 + 4) = 0;
  a1[1] = v3;
  *(v3 + 3) = 0;
  v3 = (v3 + 24);
  *a1 = v3;
  ATCSAdaptiveTimer::initialize(v3);
}

void ATCSAdaptiveTimer::initialize(ATCSAdaptiveTimer *this)
{
  ctu::FirstBootAfterUpdate::create();
  v3 = v13;
  v2 = v14;
  v16 = v13;
  v17 = v14;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = operator new(0x10uLL);
  *v4 = v3;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = (v4 + 2);
  v15 = v4 + 2;
  v13 = v4;
  v11 = 4;
  strcpy(__p, "ATCS");
  ctu::AdaptiveTimerService::create();
  v5 = v12;
  v12 = 0uLL;
  v6 = *(this + 1);
  *this = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (!*(&v12 + 1) || atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (*(**(&v12 + 1) + 16))(*(&v12 + 1));
  std::__shared_weak_count::__release_weak(*(&v12 + 1));
  if (v11 < 0)
  {
LABEL_9:
    operator delete(__p[0]);
  }

LABEL_10:
  if (v13)
  {
    v7 = v14;
    v8 = v13;
    if (v14 != v13)
    {
      do
      {
        shared_weak_owners = v7[-1].__shared_weak_owners_;
        if (shared_weak_owners && !atomic_fetch_add(&shared_weak_owners->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (shared_weak_owners->__on_zero_shared)(shared_weak_owners);
          std::__shared_weak_count::__release_weak(shared_weak_owners);
        }

        v7 = (v7 - 16);
      }

      while (v7 != v13);
      v8 = v13;
    }

    v14 = v13;
    operator delete(v8);
  }

  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_2962EE64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](&a19);
    std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v19 - 48);
    _Unwind_Resume(a1);
  }

  std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](&a19);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v19 - 48);
  _Unwind_Resume(a1);
}

void ATCSAdaptiveTimer::ATCSAdaptiveTimer(ATCSAdaptiveTimer *this)
{
  *this = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
}

void ATCSAdaptiveTimer::~ATCSAdaptiveTimer(ATCSAdaptiveTimer *this)
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

void *ATCSAdaptiveTimer::getTimerService@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void **std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<ATCSAdaptiveTimer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D47A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ATCSAdaptiveTimer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *qmi::ClientProxy::ClientProxy(void *a1, uint64_t *a2, xpc_object_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  v6 = a2[1];
  a1[2] = *a2;
  a1[3] = v6;
  v7 = a1 + 2;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *v7;
  }

  qmi::ClientProxy::State::init(v5, a3);
  return a1;
}

{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  v6 = a2[1];
  a1[2] = *a2;
  a1[3] = v6;
  v7 = a1 + 2;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *v7;
  }

  qmi::ClientProxy::State::init(v5, a3);
  return a1;
}

void sub_2962EEA18(_Unwind_Exception *a1)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void qmi::ClientProxy::State::init(uint64_t a1, xpc_object_t *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  if (*(a1 + 232))
  {
    v3 = *(a1 + 16);
    if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34 = v9;
    v35 = v9;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    *&v34 = &unk_2A1D47EE0;
    *(&v34 + 1) = v5;
    *&v35 = v7;
    *(&v35 + 1) = &v34;
    v32 = v9;
    v33 = v9;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    *&v32 = &unk_2A1D47F70;
    *(&v32 + 1) = v5;
    *&v33 = v7;
    *(&v33 + 1) = &v32;
    v10 = *(a1 + 232);
    v11 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      if (*(&v35 + 1) == &v34)
      {
        v31 = v30;
        (*(**(&v35 + 1) + 24))();
        v11 = v31;
        if (!v31)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v11 = (*(**(&v35 + 1) + 16))();
    }

    v31 = v11;
    if (!v11)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v11 == v30)
    {
      v38 = buf;
      (*(*v11 + 24))(v11, buf);
LABEL_20:
      std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](buf, (v10 + 32));
      if (v38 == buf)
      {
        (*(*v38 + 32))(v38);
        v14 = v31;
        if (v31 != v30)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v38)
        {
          (*(*v38 + 40))(v38);
        }

        v14 = v31;
        if (v31 != v30)
        {
LABEL_24:
          if (v14)
          {
            (*(*v14 + 40))(v14);
          }

          v15 = *(a1 + 232);
          v16 = *(&v33 + 1);
          if (!*(&v33 + 1))
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }
      }

      (*(*v14 + 32))(v14);
      v15 = *(a1 + 232);
      v16 = *(&v33 + 1);
      if (!*(&v33 + 1))
      {
        goto LABEL_32;
      }

LABEL_30:
      if (v16 == &v32)
      {
        v29 = v28;
        (*(*v16 + 24))(v16, v28);
        v16 = v29;
        if (!v29)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v16 = (*(*v16 + 16))(v16);
LABEL_32:
      v29 = v16;
      if (!v16)
      {
        goto LABEL_37;
      }

LABEL_35:
      if (v16 == v28)
      {
        v38 = buf;
        (*(*v16 + 24))(v16, buf);
LABEL_39:
        std::__function::__value_func<void ()(xpc::object const&)>::swap[abi:ne200100](buf, (v15 + 64));
        if (v38 == buf)
        {
          (*(*v38 + 32))(v38);
          v17 = v29;
          if (v29 != v28)
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v38)
          {
            (*(*v38 + 40))(v38);
          }

          v17 = v29;
          if (v29 != v28)
          {
LABEL_43:
            if (v17)
            {
              (*(*v17 + 40))(v17);
            }

            v18 = *a2;
            if (v18)
            {
LABEL_46:
              xpc_retain(v18);
              v19 = *(a1 + 16);
              if (!v19)
              {
LABEL_68:
                std::__throw_bad_weak_ptr[abi:ne200100]();
              }

LABEL_51:
              v20 = *(a1 + 8);
              v21 = std::__shared_weak_count::lock(v19);
              if (!v21)
              {
                goto LABEL_68;
              }

              v22 = v21;
              v23 = operator new(0x10uLL);
              *v23 = a1;
              v23[1] = v18;
              if (v18)
              {
                xpc_retain(v18);
              }

              else
              {
                v23[1] = xpc_null_create();
              }

              v24 = *(a1 + 24);
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              v25 = operator new(0x18uLL);
              *v25 = v23;
              v25[1] = v20;
              v25[2] = v22;
              dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::init(xpc::connection const&)::$_2>(qmi::ClientProxy::State::init(xpc::connection const&)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::ClientProxy::State::init(xpc::connection const&)::$_2,dispatch_queue_s *::default_delete<qmi::ClientProxy::State::init(xpc::connection const&)::$_2>>)::{lambda(void *)#1}::__invoke);
              if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v22->__on_zero_shared)(v22);
                std::__shared_weak_count::__release_weak(v22);
              }

              xpc_release(v18);
              if (*(&v33 + 1) == &v32)
              {
                (*(**(&v33 + 1) + 32))(*(&v33 + 1));
                v26 = *(&v35 + 1);
                if (*(&v35 + 1) != &v34)
                {
LABEL_61:
                  if (v26)
                  {
                    (*(*v26 + 40))(v26);
                  }

                  goto LABEL_65;
                }
              }

              else
              {
                if (*(&v33 + 1))
                {
                  (*(**(&v33 + 1) + 40))();
                }

                v26 = *(&v35 + 1);
                if (*(&v35 + 1) != &v34)
                {
                  goto LABEL_61;
                }
              }

              (*(*v26 + 32))(v26);
LABEL_65:
              std::__shared_weak_count::__release_weak(v7);
              goto LABEL_66;
            }

LABEL_50:
            v18 = xpc_null_create();
            v19 = *(a1 + 16);
            if (!v19)
            {
              goto LABEL_68;
            }

            goto LABEL_51;
          }
        }

        (*(*v17 + 32))(v17);
        v18 = *a2;
        if (v18)
        {
          goto LABEL_46;
        }

        goto LABEL_50;
      }

      v16 = (*(*v16 + 16))(v16);
LABEL_37:
      v38 = v16;
      goto LABEL_39;
    }

    v11 = (*(*v11 + 16))(v11);
LABEL_18:
    v38 = v11;
    goto LABEL_20;
  }

  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v13 = *v13;
    }

    *buf = 136315138;
    v37 = v13;
    _os_log_error_impl(&dword_2962DD000, v12, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport passed in as parameter to state constructor", buf, 0xCu);
  }

LABEL_66:
  v27 = *MEMORY[0x29EDCA608];
}

void sub_2962EF120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::function<void ()(xpc::object const&)>::~function(&a9);
  std::function<void ()(xpc::object const&)>::~function(&a17);
  std::function<void ()(xpc::dict)>::~function(&a21);
  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void sub_2962EF1E4(_Unwind_Exception *a1)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void *qmi::ClientProxy::ClientProxy(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = *a2;
  v3 = a2[1];
  a1[2] = *a2;
  a1[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v4 = a1[2];
  }

  v5 = xpc_null_create();
  v7 = v5;
  qmi::ClientProxy::State::init(v4, &v7);
  xpc_release(v5);
  return a1;
}

void sub_2962EF280(_Unwind_Exception *a1)
{
  xpc_release(v3);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v2);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void qmi::ClientProxy::~ClientProxy(qmi::ClientProxy *this)
{
  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

qmi::ClientProxy::State *qmi::ClientProxy::isValid(qmi::ClientProxy *this)
{
  result = *(this + 2);
  if (result)
  {
    return qmi::ClientProxy::State::isValid(result);
  }

  return result;
}

uint64_t qmi::ClientProxy::State::isValid(qmi::ClientProxy::State *this)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE20execute_wrapped_syncIZNKS3_7isValidEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_88;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_90;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_89;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

qmi::ClientProxy::State *qmi::ClientProxy::isStopped(qmi::ClientProxy *this)
{
  result = *(this + 2);
  if (result)
  {
    return qmi::ClientProxy::State::isStopped(result);
  }

  return result;
}

uint64_t qmi::ClientProxy::State::isStopped(qmi::ClientProxy::State *this)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE20execute_wrapped_syncIZNKS3_9isStoppedEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_91;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_90;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_89;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void qmi::ClientProxy::registerResponse(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = v4 - *a3;
  if (v4 == *a3)
  {
    v8 = 0;
  }

  else
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = a2;
    v8 = operator new(v4 - *a3);
    v9 = v8;
    v11 = &v8[v6];
    memcpy(v8, v5, v6);
    v10 = &v8[v6];
    a2 = v7;
  }

  qmi::ClientProxy::State::registerResponse(v3, a2, &v9);
  if (v8)
  {

    operator delete(v8);
  }
}

void sub_2962EF764(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientProxy::State::registerResponse(void *a1, __int16 a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = v5 - *a3;
  if (v5 == *a3)
  {
    v9 = 0;
    v8 = 0;
    v10 = a1[2];
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v5 - *a3);
    v9 = &v8[v7];
    memcpy(v8, v6, v7);
    v10 = a1[2];
    if (!v10)
    {
LABEL_11:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v11 = a1[1];
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = operator new(0x28uLL);
  *v14 = a1;
  v14[4] = a2;
  *(v14 + 2) = v8;
  *(v14 + 3) = v9;
  *(v14 + 4) = v9;
  v15 = a1[3];
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v14;
  v16[1] = v11;
  v16[2] = v13;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0,std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);

    std::__shared_weak_count::__release_weak(v13);
  }
}

void qmi::ClientProxy::deregisterResponse(qmi::ClientProxy *this, __int16 a2)
{
  v2 = *(this + 2);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN3qmi11ClientProxy5State18deregisterResponseEt_block_invoke;
  v3[3] = &__block_descriptor_tmp_35;
  v3[4] = v2;
  v4 = a2;
  ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped((v2 + 8), v3);
}

void qmi::ClientProxy::State::deregisterResponse(qmi::ClientProxy::State *this, __int16 a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN3qmi11ClientProxy5State18deregisterResponseEt_block_invoke;
  v2[3] = &__block_descriptor_tmp_35;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped(this + 1, v2);
}

void qmi::ClientProxy::sendIndication(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 == *a2)
  {
    v6 = 0;
  }

  else
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - *a2);
    v7 = v6;
    v9 = &v6[v5];
    memcpy(v6, v4, v5);
    v8 = &v6[v5];
  }

  qmi::ClientProxy::State::sendIndication(v2, &v7);
  if (v6)
  {

    operator delete(v6);
  }
}

void sub_2962EFA88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientProxy::State::sendIndication(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN3qmi11ClientProxy5State14sendIndicationENSt3__16vectorIhNS2_9allocatorIhEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_36;
  v6[4] = a1;
  __p = 0;
  v8 = 0;
  v9 = 0;
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v3 - *a2);
    v9 = __p + v5;
    memcpy(__p, v4, v5);
    v8 = __p + v5;
  }

  ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped((a1 + 8), v6);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_2962EFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientProxy::handleMessage(uint64_t a1, void **a2)
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

  v4 = *(*(a1 + 16) + 24);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v5[2] = ___ZNK3qmi11ClientProxy13handleMessageERKN3xpc4dictE_block_invoke;
  v5[3] = &__block_descriptor_tmp_4;
  v5[4] = v6;
  v5[5] = a1;
  dispatch_async(v4, v5);
  _Block_object_dispose(v6, 8);
  xpc_release(object);
}

const char *qmi::asString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "(unknown)";
  }

  else
  {
    return off_29EE31300[a1];
  }
}

{
  if (a1 > 5)
  {
    return "(unknown)";
  }

  else
  {
    return off_29EE31408[a1];
  }
}

{
  if (a1 > 2)
  {
    return "(unknown)";
  }

  else
  {
    return off_29EE31528[a1];
  }
}

{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EE31540[a1];
  }
}

uint64_t qmi::ClientProxy::State::State(uint64_t a1, __int128 *a2, NSObject **a3, char a4, void *a5)
{
  v10 = qmi::asShortString();
  ctu::OsLogContext::OsLogContext(v16, "com.apple.telephony.bb", v10);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v11 = *a3;
  *(a1 + 24) = *a3;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](a1 + 40, v17);
  MEMORY[0x29C258F40](v17);
  ctu::OsLogContext::~OsLogContext(v16);
  *a1 = &unk_2A1D47AD8;
  v12 = (a1 + 48);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v12, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    *(a1 + 64) = *(a2 + 2);
    *&v12->__r_.__value_.__l.__data_ = v13;
  }

  *(a1 + 208) = 0;
  *(a1 + 72) = a4;
  *(a1 + 76) = 1;
  *(a1 + 80) = 0;
  *(a1 + 84) = 5;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = a1 + 208;
  v14 = a5[1];
  *(a1 + 232) = *a5;
  *(a1 + 240) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void qmi::ClientProxy::State::~State(qmi::ClientProxy::State *this)
{
  *this = &unk_2A1D47AD8;
  v2 = *(this + 30);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3)
  {
    std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>>>::destroy(v3[1]);
    operator delete(v3);
  }

  std::__tree<unsigned short>::destroy(this + 200, *(this + 26));
  v4 = *(this + 24);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 24);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  std::deque<qmi::ClientProxy::State::Transaction>::~deque[abi:ne200100](this + 136);
  std::deque<qmi::ClientProxy::State::Transaction>::~deque[abi:ne200100](this + 88);
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  MEMORY[0x29C258F40](this + 40);
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

uint64_t std::deque<qmi::ClientProxy::State::Transaction>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = (*v5 + 32 * (v4 & 0x7F));
    v7 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v6 != v7)
    {
      do
      {
        qmi::ClientProxy::State::Transaction::~Transaction(v6);
        v6 = (v8 + 32);
        if (v6 - *v5 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 64;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 128;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void qmi::ClientProxy::State::handleServerError(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (*a2 == MEMORY[0x29EDCA9D0])
  {
    v6 = *(a1 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v13 = 136315138;
    v14 = v7;
    _os_log_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEFAULT, "#I client '%s' ignoring XPC_ERROR_TERMINATION_IMMINENT", &v13, 0xCu);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    qmi::ClientProxy::State::handleStatus_sync(a1, 1u);
    v3 = *(a1 + 232);
    if (v3)
    {
      v4 = *(*v3 + 8);
      v5 = *MEMORY[0x29EDCA608];

      v4();
      return;
    }

    v9 = *(a1 + 40);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v10 = *MEMORY[0x29EDCA608];
      return;
    }

    v11 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v11 = *v11;
    }

    v13 = 136315138;
    v14 = v11;
    _os_log_error_impl(&dword_2962DD000, v9, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport in server error handler", &v13, 0xCu);
    v12 = *MEMORY[0x29EDCA608];
  }
}

void qmi::ClientProxy::State::handleStatus_sync(uint64_t a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v5 = *v5;
      if (a2 <= 2)
      {
LABEL_4:
        v6 = off_29EE312E8[a2];
        v7 = *(a1 + 76);
        if (v7 > 7)
        {
LABEL_5:
          v8 = "(unknown)";
LABEL_9:
          v19 = 136315650;
          v20 = v5;
          v21 = 2080;
          v22 = v6;
          v23 = 2080;
          v24 = v8;
          _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s]: handleStatus_sync(%s), current fQMuxState=%s", &v19, 0x20u);
          goto LABEL_10;
        }

LABEL_8:
        v8 = off_29EE31300[v7];
        goto LABEL_9;
      }
    }

    else if (a2 <= 2)
    {
      goto LABEL_4;
    }

    v6 = "(unknown)";
    v7 = *(a1 + 76);
    if (v7 > 7)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_10:
  if (a2 == 1)
  {
    v10 = *(a1 + 76);
    if ((v10 - 4) >= 3)
    {
      if (!v10)
      {
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v18 = (a1 + 48);
          if (*(a1 + 71) < 0)
          {
            v18 = *v18;
          }

          v19 = 136315138;
          v20 = v18;
          _os_log_debug_impl(&dword_2962DD000, v13, OS_LOG_TYPE_DEBUG, "#D [%s]: Stopping client before it started; will re-start", &v19, 0xCu);
        }

        (*(*a1 + 24))(a1);
        qmi::ClientProxy::State::cancelAllMessages_sync(a1);
        v14 = *(a1 + 192);
        *(a1 + 192) = 0;
        if (v14)
        {
          dispatch_group_leave(v14);
          dispatch_release(v14);
        }

        *(a1 + 76) = 1;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v16 = *v16;
        }

        v19 = 136315138;
        v20 = v16;
        _os_log_debug_impl(&dword_2962DD000, v11, OS_LOG_TYPE_DEBUG, "#D [%s]: Stopping client and cleaning up", &v19, 0xCu);
      }

      (*(*a1 + 24))(a1);
      qmi::ClientProxy::State::cancelAllMessages_sync(a1);
      v12 = *(a1 + 192);
      *(a1 + 192) = 0;
      if (v12)
      {
        dispatch_group_leave(v12);
        dispatch_release(v12);
      }

      qmi::ClientProxy::State::sendDisconnectMessage_sync(a1, 1);
    }
  }

  else if (a2 == 2 && *(a1 + 76) == 1)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v17 = *v17;
      }

      v19 = 136315138;
      v20 = v17;
      _os_log_debug_impl(&dword_2962DD000, v9, OS_LOG_TYPE_DEBUG, "#D [%s]: Starting client", &v19, 0xCu);
    }

    (*(*a1 + 32))(a1);
    *(a1 + 76) = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
}

void qmi::ClientProxy::State::handleSendNotReady_sync(uint64_t a1, xpc_object_t *a2)
{
  value = xpc_dictionary_get_value(*a2, "txid");
  v5 = value;
  if (value)
  {
    v4 = value;
    xpc_retain(value);
  }

  else
  {
    v4 = xpc_null_create();
    v5 = v4;
  }

  qmi::ClientProxy::State::sendInternalErrorResponseForRemoteId_sync(a1, &v5, 1);
  xpc_release(v4);
}

void qmi::ClientProxy::State::handleIndWakeChange_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = xpc_null_create();
  value = xpc_dictionary_get_value(*a2, "set_ind_wake");
  v6 = value;
  v7 = MEMORY[0x29EDCA9E0];
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v6 = xpc_null_create();
    if (!v6)
    {
      v8 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C259C10](v6) == v7)
  {
    xpc_retain(v6);
    v8 = v6;
  }

  else
  {
    v8 = xpc_null_create();
  }

LABEL_8:
  xpc_release(v6);
  v9 = xpc_null_create();
  xpc_release(v4);
  v10 = MEMORY[0x29C259C10](v8);
  xpc_release(v9);
  if (v10 != v7)
  {
    goto LABEL_29;
  }

  v12 = *(a1 + 208);
  v11 = (a1 + 208);
  v13 = v11 - 1;
  std::__tree<unsigned short>::destroy((v11 - 1), v12);
  *v11 = 0;
  v11[1] = 0;
  *(v11 - 1) = v11;
  if (v8)
  {
    xpc_retain(v8);
    v14 = v8;
LABEL_12:
    xpc_retain(v14);
    v15 = v14;
    goto LABEL_13;
  }

  v14 = xpc_null_create();
  if (v14)
  {
    goto LABEL_12;
  }

  v15 = xpc_null_create();
  v14 = 0;
LABEL_13:
  xpc_release(v14);
  if (v8)
  {
    xpc_retain(v8);
    v16 = v8;
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (MEMORY[0x29C259C10](v8) == v7)
  {
    count = xpc_array_get_count(v8);
    if (v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    count = 0;
    if (v16)
    {
LABEL_18:
      xpc_retain(v16);
      v18 = v16;
      goto LABEL_21;
    }
  }

  v18 = xpc_null_create();
LABEL_21:
  xpc_release(v16);
  v19 = *v13;
  v26[0] = v13;
  v26[1] = v19;
  if (count || v15 != v18)
  {
    v20 = 0;
    if (v15 != v18)
    {
      while (1)
      {
        v23 = xpc_array_get_value(v15, v20);
        object = v23;
        if (v23)
        {
          xpc_retain(v23);
        }

        else
        {
          object = xpc_null_create();
        }

        v24 = xpc::dyn_cast_or_default();
        xpc_release(object);
        v25 = v24;
        std::insert_iterator<std::set<unsigned short>>::operator=[abi:ne200100](v26, &v25);
        ++v20;
      }
    }

    do
    {
      v21 = xpc_array_get_value(v15, v20);
      object = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        object = xpc_null_create();
      }

      v22 = xpc::dyn_cast_or_default();
      xpc_release(object);
      v25 = v22;
      std::insert_iterator<std::set<unsigned short>>::operator=[abi:ne200100](v26, &v25);
      ++v20;
    }

    while (count != v20);
  }

  xpc_release(v18);
  xpc_release(v15);
LABEL_29:
  xpc_release(v8);
}

void sub_2962F0920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v14);
  xpc_release(v13);
  xpc_release(v12);
  _Unwind_Resume(a1);
}

void qmi::ClientProxy::State::handleServerError_sync(uint64_t a1, void **a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3002000000;
  v6[3] = __Block_byref_object_copy__15;
  v3 = *a2;
  v6[4] = __Block_byref_object_dispose__16;
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
  v5[2] = ___ZN3qmi11ClientProxy5State22handleServerError_syncERKN3xpc6objectE_block_invoke;
  v5[3] = &__block_descriptor_tmp_19_0;
  v5[4] = v6;
  v5[5] = a1;
  dispatch_async(v4, v5);
  _Block_object_dispose(v6, 8);
  xpc_release(object);
}

xpc_object_t __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

void qmi::ClientProxy::State::sendInternalErrorResponseForTxId_sync(qmi::ClientProxy::State *this, int a2, int a3)
{
  v3 = *(this + 12);
  if (*(this + 13) != v3)
  {
    v6 = *(this + 15);
    v7 = (v3 + 8 * (v6 >> 7));
    v8 = *v7;
    v9 = *v7 + 32 * (v6 & 0x7F);
    v10 = *(v3 + (((*(this + 16) + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 16) + v6) & 0x7F);
    if (v9 != v10)
    {
      while (*(*(v9 + 16) + 26) != a2)
      {
        v9 += 32;
        if (v9 - v8 == 4096)
        {
          v12 = v7[1];
          ++v7;
          v8 = v12;
          v9 = v12;
        }

        if (v9 == v10)
        {
          return;
        }
      }
    }

    if (v9 != v10)
    {
      v11 = xpc_int64_create(*(*(v9 + 16) + 26));
      v13 = v11;
      if (!v11)
      {
        v11 = xpc_null_create();
        v13 = v11;
      }

      qmi::ClientProxy::State::sendInternalErrorResponseForRemoteId_sync(this, &v13, a3);
      xpc_release(v11);
    }
  }
}

void qmi::ClientProxy::State::sendInternalErrorResponseForRemoteId_sync(uint64_t a1, xpc_object_t *a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
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
      v11 = xpc_null_create();
      xpc_dictionary_set_value(v8, "resp_qmi_message", v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      v13 = *a2;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v13 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, "txid", v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
      v15 = xpc_int64_create(a3);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, "internal_error", v15);
      v16 = xpc_null_create();
      xpc_release(v15);
      xpc_release(v16);
      v17 = *(a1 + 232);
      object = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v17 + 24))(v17, &object);
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
      v21 = v10;
      _os_log_error_impl(&dword_2962DD000, v9, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when sending internal error response for remote id", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2962F0EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void qmi::ClientProxy::State::cleanUpDisconnect_sync(NSObject **this)
{
  qmi::ClientProxy::State::cancelAllMessages_sync(this);
  v2 = this[24];
  this[24] = 0;
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void qmi::ClientProxy::State::cancelAllMessages_sync(qmi::ClientProxy::State *this)
{
  v2 = *(this + 12);
  v3 = *(this + 13);
  if (v3 == v2)
  {
    v4 = (this + 128);
    v3 = *(this + 12);
    goto LABEL_17;
  }

  v4 = (this + 128);
  v5 = *(this + 15);
  v6 = &v2[v5 >> 7];
  v7 = *v6 + 32 * (v5 & 0x7F);
  v8 = *(v2 + (((*(this + 16) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 16) + v5) & 0x7F);
  if (v7 == v8)
  {
    if (v3 == v2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    do
    {
      v9 = xpc_int64_create(*(*(v7 + 16) + 26));
      v40 = v9;
      if (!v9)
      {
        v9 = xpc_null_create();
        v40 = v9;
      }

      qmi::ClientProxy::State::sendInternalErrorResponseForRemoteId_sync(this, &v40, 2);
      xpc_release(v9);
      v7 += 32;
      if (v7 - *v6 == 4096)
      {
        v10 = v6[1];
        ++v6;
        v7 = v10;
      }
    }

    while (v7 != v8);
    v2 = *(this + 12);
    v3 = *(this + 13);
    if (v3 == v2)
    {
LABEL_17:
      *v4 = 0;
      v17 = v3 - v2;
      if (v17 < 3)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v11 = *(this + 15);
  v12 = &v2[v11 >> 7];
  v13 = (*v12 + 32 * (v11 & 0x7F));
  v14 = *(v2 + (((*(this + 16) + v11) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 16) + v11) & 0x7F);
  if (v13 == v14)
  {
    goto LABEL_17;
  }

  do
  {
    qmi::ClientProxy::State::Transaction::~Transaction(v13);
    v13 = (v15 + 32);
    if (v13 - *v12 == 4096)
    {
      v16 = v12[1];
      ++v12;
      v13 = v16;
    }
  }

  while (v13 != v14);
  v2 = *(this + 12);
  v38 = *(this + 13);
  *v4 = 0;
  v17 = (v38 - v2) >> 3;
  if (v17 >= 3)
  {
    do
    {
LABEL_18:
      operator delete(*v2);
      v18 = *(this + 13);
      v2 = (*(this + 12) + 8);
      *(this + 12) = v2;
      v17 = (v18 - v2) >> 3;
    }

    while (v17 > 2);
  }

LABEL_19:
  if (v17 == 1)
  {
    v19 = 64;
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_24;
    }

    v19 = 128;
  }

  *(this + 15) = v19;
LABEL_24:
  std::deque<qmi::ClientProxy::State::Transaction>::shrink_to_fit(this + 88);
  v20 = *(this + 18);
  v21 = *(this + 19);
  if (v21 == v20)
  {
    v22 = (this + 176);
    v21 = *(this + 18);
    goto LABEL_40;
  }

  v22 = (this + 176);
  v23 = *(this + 21);
  v24 = &v20[v23 >> 7];
  v25 = *v24 + 32 * (v23 & 0x7F);
  v26 = *(v20 + (((*(this + 22) + v23) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 22) + v23) & 0x7F);
  if (v25 == v26)
  {
    if (v21 == v20)
    {
      goto LABEL_40;
    }
  }

  else
  {
    do
    {
      v27 = xpc_int64_create(*(*(v25 + 16) + 26));
      v40 = v27;
      if (!v27)
      {
        v27 = xpc_null_create();
        v40 = v27;
      }

      qmi::ClientProxy::State::sendInternalErrorResponseForRemoteId_sync(this, &v40, 2);
      xpc_release(v27);
      v25 += 32;
      if (v25 - *v24 == 4096)
      {
        v28 = v24[1];
        ++v24;
        v25 = v28;
      }
    }

    while (v25 != v26);
    v20 = *(this + 18);
    v21 = *(this + 19);
    if (v21 == v20)
    {
LABEL_40:
      *v22 = 0;
      v35 = v21 - v20;
      if (v35 < 3)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  v29 = *(this + 21);
  v30 = &v20[v29 >> 7];
  v31 = (*v30 + 32 * (v29 & 0x7F));
  v32 = *(v20 + (((*(this + 22) + v29) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 22) + v29) & 0x7F);
  if (v31 == v32)
  {
    goto LABEL_40;
  }

  do
  {
    qmi::ClientProxy::State::Transaction::~Transaction(v31);
    v31 = (v33 + 32);
    if (v31 - *v30 == 4096)
    {
      v34 = v30[1];
      ++v30;
      v31 = v34;
    }
  }

  while (v31 != v32);
  v20 = *(this + 18);
  v39 = *(this + 19);
  *v22 = 0;
  v35 = (v39 - v20) >> 3;
  if (v35 >= 3)
  {
    do
    {
LABEL_41:
      operator delete(*v20);
      v36 = *(this + 19);
      v20 = (*(this + 18) + 8);
      *(this + 18) = v20;
      v35 = (v36 - v20) >> 3;
    }

    while (v35 > 2);
  }

LABEL_42:
  if (v35 == 1)
  {
    v37 = 64;
  }

  else
  {
    if (v35 != 2)
    {
      goto LABEL_47;
    }

    v37 = 128;
  }

  *(this + 21) = v37;
LABEL_47:

  std::deque<qmi::ClientProxy::State::Transaction>::shrink_to_fit(this + 136);
}

void qmi::ClientProxy::State::sendDisconnectMessage_sync(qmi::ClientProxy::State *this, BOOL a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(this + 29);
  if (v3)
  {
    if ((*(*v3 + 16))(v3))
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      if (v5 || (v5 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C259C10](v5) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v5);
          v6 = v5;
        }

        else
        {
          v6 = xpc_null_create();
        }
      }

      else
      {
        v6 = xpc_null_create();
        v5 = 0;
      }

      xpc_release(v5);
      v9 = xpc_int64_create(1);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(v6, "status", v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
      v11 = xpc_BOOL_create(a2);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      xpc_dictionary_set_value(v6, "error", v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      v13 = *(this + 29);
      object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      (*(*v13 + 24))(v13, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v6);
    }

    *(this + 19) = 1;
  }

  else
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = (this + 48);
      if (*(this + 71) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      v17 = v8;
      _os_log_error_impl(&dword_2962DD000, v7, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when sending disconnect message", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2962F1608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3qmi11ClientProxy5State22handleSentMessage_syncEt_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v39 = v4;
  if (!v4)
  {
    return;
  }

  if (!*(a1 + 40))
  {
LABEL_29:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v26 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v26);
    }

    return;
  }

  qmi::ClientProxy::State::sendInternalErrorResponseForTxId_sync(v3, *(a1 + 56), 0);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[7] = v5;
  v36[8] = v5;
  v36[5] = v5;
  v36[6] = v5;
  v36[3] = v5;
  v36[4] = v5;
  v36[1] = v5;
  v36[2] = v5;
  v36[0] = v5;
  v34 = v5;
  v35 = v5;
  v32 = v5;
  *__p = v5;
  v30 = v5;
  v31 = v5;
  v29 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "ATCS_TIMEOUT on message for svc=", 32);
  v7 = MEMORY[0x29C259270](v6, *(v3 + 72));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " client=", 8);
  v9 = (*(*v3 + 64))(v3);
  v10 = MEMORY[0x29C259270](v8, v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (txid=", 7);
  v12 = MEMORY[0x29C259270](v11, *(a1 + 56));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " msgid=0x", 9);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
  v14 = *(a1 + 58);
  v15 = MEMORY[0x29C259270]();
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 2;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ") [", 3);
  v17 = *(v3 + 71);
  if (v17 >= 0)
  {
    v18 = v3 + 48;
  }

  else
  {
    v18 = *(v3 + 48);
  }

  if (v17 >= 0)
  {
    v19 = *(v3 + 71);
  }

  else
  {
    v19 = *(v3 + 56);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "]", 1);
  if ((BYTE8(v35) & 0x10) != 0)
  {
    v23 = v35;
    if (v35 < *(&v32 + 1))
    {
      *&v35 = *(&v32 + 1);
      v23 = *(&v32 + 1);
    }

    v24 = v32;
    v21 = v23 - v32;
    if ((v23 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      v21 = 0;
      HIBYTE(v28) = 0;
      v22 = __dst;
      goto LABEL_24;
    }

    v24 = *(&v30 + 1);
    v21 = *(&v31 + 1) - *(&v30 + 1);
    if (*(&v31 + 1) - *(&v30 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_33:
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
    v28 = v25 | 0x8000000000000000;
    __dst[0] = v22;
    goto LABEL_23;
  }

  HIBYTE(v28) = v21;
  v22 = __dst;
  if (v21)
  {
LABEL_23:
    memmove(v22, v24, v21);
  }

LABEL_24:
  *(v22 + v21) = 0;
  (*(*v3 + 40))(v3, __dst);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v29 = *MEMORY[0x29EDC9538];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v29 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v30);
  std::ostream::~ostream();
  MEMORY[0x29C259330](v36);
  v4 = v39;
  if (v39)
  {
    goto LABEL_29;
  }
}

void sub_2962F1AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a16);
    std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v16 - 64);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a16);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v16 - 64);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2592E0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_2962F1CE8(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C259330](v1);
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
  MEMORY[0x29C259330](a1 + 112);
  return a1;
}

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

void qmi::ClientProxy::State::dumpState_sync(qmi::ClientProxy::State *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v1 = *(this + 25);
  v2 = this + 208;
  memset(&__p, 0, sizeof(__p));
  if (v1 == this + 208)
  {
    goto LABEL_54;
  }

  std::to_string(v37, *(v1 + 13));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    __p = *v37;
    v3 = *(v1 + 1);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __p = *v37;
    v3 = *(v1 + 1);
    if (!v3)
    {
      do
      {
LABEL_8:
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
      goto LABEL_10;
    }
  }

  do
  {
    v4 = v3;
    v3 = *v3;
  }

  while (v3);
LABEL_10:
  if (v4 != v2)
  {
    while (1)
    {
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        break;
      }

      size = __p.__r_.__value_.__l.__size_;
      v8 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
      v9 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v9 != __p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_34:
        p_p->__r_.__value_.__s.__data_[size] = 44;
        v17 = size + 1;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = v17;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v17 & 0x7F;
        }

        v16 = p_p + v17;
        goto LABEL_38;
      }

      if (v8 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if (v9 <= 0x3FFFFFFFFFFFFFF2)
      {
        goto LABEL_19;
      }

      v13 = 0;
      v12 = 0x7FFFFFFFFFFFFFF7;
LABEL_28:
      v14 = operator new(v12);
      v15 = v14;
      if (v9)
      {
        memmove(v14, p_p, v9);
      }

      *(v15 + v9) = 44;
      if (!v13)
      {
        operator delete(p_p);
      }

      __p.__r_.__value_.__l.__size_ = v8;
      __p.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v15;
      v16 = (v15 + v8);
LABEL_38:
      *v16 = 0;
      std::to_string(v37, *(v4 + 13));
      if (v37[23] >= 0)
      {
        v18 = v37;
      }

      else
      {
        v18 = *v37;
      }

      if (v37[23] >= 0)
      {
        v19 = v37[23];
      }

      else
      {
        v19 = *&v37[8];
      }

      std::string::append(&__p, v18, v19);
      if ((v37[23] & 0x80000000) != 0)
      {
        operator delete(*v37);
        v20 = *(v4 + 1);
        if (v20)
        {
          do
          {
LABEL_48:
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
          goto LABEL_12;
        }
      }

      else
      {
        v20 = *(v4 + 1);
        if (v20)
        {
          goto LABEL_48;
        }
      }

      do
      {
        v21 = *(v4 + 2);
        v5 = *v21 == v4;
        v4 = v21;
      }

      while (!v5);
LABEL_12:
      v4 = v21;
      if (v21 == v2)
      {
        goto LABEL_54;
      }
    }

    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 22)
    {
      goto LABEL_34;
    }

    v8 = 23;
    v9 = 22;
LABEL_19:
    v10 = 2 * v9;
    if (v8 > 2 * v9)
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
      v12 = v11;
    }

    else
    {
      v12 = 23;
    }

    v13 = v9 == 22;
    goto LABEL_28;
  }

LABEL_54:
  v22 = *(this + 5);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_66;
  }

  v23 = (this + 48);
  if (*(this + 71) < 0)
  {
    v23 = *v23;
  }

  v24 = *(this + 72);
  qmi::ClientProxy::State::getStateString_sync(this, v34);
  v25 = v35;
  v26 = v34[0];
  qmi::ClientProxy::State::getTxQueueState_sync(this, v32);
  v27 = v34;
  if (v25 < 0)
  {
    v27 = v26;
  }

  if (v33 >= 0)
  {
    v28 = v32;
  }

  else
  {
    v28 = v32[0];
  }

  v29 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  *v37 = 136447234;
  *&v37[4] = v23;
  *&v37[12] = 1024;
  *&v37[14] = v24;
  *&v37[18] = 2082;
  *&v37[20] = v27;
  v38 = 2082;
  v39 = v28;
  v40 = 2082;
  v41 = v29;
  _os_log_impl(&dword_2962DD000, v22, OS_LOG_TYPE_DEFAULT, "#I [%{public}s]   qmi::ClientProxy(svc=%d) [%{public}s] %{public}s ind_wake=[%{public}s]", v37, 0x30u);
  if ((v33 & 0x80000000) == 0)
  {
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_70:
    operator delete(v34[0]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  operator delete(v32[0]);
  if (v35 < 0)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_67:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_68:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_2962F2220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t qmi::ClientProxy::State::getStateString_sync@<X0>(qmi::ClientProxy::State *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 19);
  if (v4 <= 7)
  {
    v5 = off_29EE31300[v4];
    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_7:
    result = strlen(v5);
    if (result > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = result;
    if (result >= 0x17)
    {
      if ((result | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (result | 7) + 1;
      }

      v19 = operator new(v18);
      a2[1] = v13;
      a2[2] = v18 | 0x8000000000000000;
      *a2 = v19;
      a2 = v19;
    }

    else
    {
      *(a2 + 23) = result;
      if (!result)
      {
        goto LABEL_30;
      }
    }

    result = memcpy(a2, v5, v13);
LABEL_30:
    *(a2 + v13) = 0;
    return result;
  }

  v5 = "(unknown)";
  if (!*(this + 24))
  {
    goto LABEL_7;
  }

LABEL_3:
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[7] = v6;
  v27[8] = v6;
  v27[5] = v6;
  v27[6] = v6;
  v27[3] = v6;
  v27[4] = v6;
  v27[1] = v6;
  v27[2] = v6;
  v26 = v6;
  v27[0] = v6;
  *__p = v6;
  v25 = v6;
  v22 = v6;
  *__src = v6;
  v20 = v6;
  v21 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v7 = strlen(v5);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v5, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", lowpower=", 11);
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 8;
  v10 = *(this + 24);
  MEMORY[0x29C259250]();
  if ((BYTE8(v26) & 0x10) != 0)
  {
    v14 = v26;
    if (v26 < __src[1])
    {
      *&v26 = __src[1];
      v14 = __src[1];
    }

    v15 = __src[0];
    v11 = v14 - __src[0];
    if ((v14 - __src[0]) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if ((BYTE8(v26) & 8) == 0)
    {
      v11 = 0;
      *(a2 + 23) = 0;
      goto LABEL_22;
    }

    v15 = *(&v21 + 1);
    v11 = *(&v22 + 1) - *(&v21 + 1);
    if (*(&v22 + 1) - *(&v21 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_32:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v11 | 7) + 1;
    }

    v17 = operator new(v16);
    a2[1] = v11;
    a2[2] = v16 | 0x8000000000000000;
    *a2 = v17;
    a2 = v17;
  }

  else
  {
    *(a2 + 23) = v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  memmove(a2, v15, v11);
LABEL_22:
  *(a2 + v11) = 0;
  *&v20 = *MEMORY[0x29EDC9538];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v20 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v20 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v21);
  std::ostream::~ostream();
  return MEMORY[0x29C259330](v27);
}

uint64_t qmi::ClientProxy::State::getTxQueueState_sync@<X0>(qmi::ClientProxy::State *this@<X0>, _BYTE *a2@<X8>)
{
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[7] = v4;
  v33[8] = v4;
  v33[5] = v4;
  v33[6] = v4;
  v33[3] = v4;
  v33[4] = v4;
  v33[1] = v4;
  v33[2] = v4;
  v32 = v4;
  v33[0] = v4;
  *__p = v4;
  v31 = v4;
  v28 = v4;
  *__src = v4;
  v26 = v4;
  v27 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "sendable=", 9);
  MEMORY[0x29C259260](v5, (*(this + 21) - *(this + 32)));
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " simSlot=", 9);
  MEMORY[0x29C259260](v6, *(this + 184));
  v7 = *(this + 16);
  if (v7)
  {
    v8 = *(this + 12);
    if (*(this + 13) != v8)
    {
      v9 = *(this + 15);
      v10 = (v8 + 8 * (v9 >> 7));
      v11 = *v10 + 32 * (v9 & 0x7F);
      v12 = *(v8 + (((v9 + v7) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v9 + v7) & 0x7F);
      while (v11 != v12)
      {
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " sent(", 6);
        v14 = MEMORY[0x29C259290](v13, *(*(v11 + 16) + 26));
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":0x", 3);
        *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
        v16 = *(*(v11 + 16) + 24);
        v17 = MEMORY[0x29C259290]();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ")", 1);
        v11 += 32;
        if (v11 - *v10 == 4096)
        {
          v18 = v10[1];
          ++v10;
          v11 = v18;
        }
      }
    }
  }

  if (*(this + 22))
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, " pending=", 9);
    MEMORY[0x29C259280](v19, *(this + 22));
  }

  if ((BYTE8(v32) & 0x10) != 0)
  {
    v21 = v32;
    if (v32 < __src[1])
    {
      *&v32 = __src[1];
      v21 = __src[1];
    }

    v22 = __src[0];
    v20 = v21 - __src[0];
    if ((v21 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((BYTE8(v32) & 8) == 0)
    {
      v20 = 0;
      a2[23] = 0;
      goto LABEL_24;
    }

    v22 = *(&v27 + 1);
    v20 = *(&v28 + 1) - *(&v27 + 1);
    if (*(&v28 + 1) - *(&v27 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_28:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v24 = operator new(v23);
    *(a2 + 1) = v20;
    *(a2 + 2) = v23 | 0x8000000000000000;
    *a2 = v24;
    a2 = v24;
    goto LABEL_23;
  }

  a2[23] = v20;
  if (v20)
  {
LABEL_23:
    memmove(a2, v22, v20);
  }

LABEL_24:
  a2[v20] = 0;
  *&v26 = *MEMORY[0x29EDC9538];
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v26 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v26 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v27);
  std::ostream::~ostream();
  return MEMORY[0x29C259330](v33);
}

void *qmi::ClientProxy::State::createCallBacksHandler_sync(void *this)
{
  if (!this[28])
  {
    v1 = this;
    this = operator new(0x18uLL);
    this[2] = 0;
    this[1] = 0;
    *this = this + 1;
    v1[28] = this;
  }

  return this;
}

void ___ZN3qmi11ClientProxy5State18deregisterResponseEt_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  if (v3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v3 = operator new(0x18uLL);
    *v3 = 0;
    *(v3 + 2) = 0;
    *(v3 + 1) = 0;
    *v3 = v3 + 8;
    *(v2 + 224) = v3;
    v4 = *(a1 + 40);
  }

  CallbacksHandler::deRegisterSendCallback(v3, v4);
}

void ___ZN3qmi11ClientProxy5State14sendIndicationENSt3__16vectorIhNS2_9allocatorIhEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 224))
  {
    v3 = operator new(0x18uLL);
    *v3 = 0;
    v3[2] = 0;
    v3[1] = 0;
    *v3 = v3 + 1;
    *(v2 + 224) = v3;
  }

  v4 = a1[5];
  v5 = a1[6] - v4;

  qmi::ClientProxy::State::handleIndication_sync(v2, v4, v5);
}

void *__copy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(void *result, uint64_t a2)
{
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  v3 = *(a2 + 40);
  v2 = *(a2 + 48);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = result;
    if ((v4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v2 - v3);
    v5[5] = v6;
    v5[6] = v6;
    v7 = &v6[v4];
    v5[7] = &v6[v4];
    result = memcpy(v6, v3, v4);
    v5[6] = v7;
  }

  return result;
}

void sub_2962F2B3C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t std::function<void ()(xpc::dict)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(xpc::object const&)>::~function(uint64_t a1)
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

void qmi::ClientProxy::State::setConnected_sync(qmi::ClientProxy::State *this)
{
  *&v27[5] = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = (this + 48);
    if (*(this + 71) < 0)
    {
      v10 = *v10;
    }

    v11 = *(this + 19);
    if (v11 > 7)
    {
      v12 = "(unknown)";
    }

    else
    {
      v12 = off_29EE31300[v11];
    }

    *buf = 136315394;
    v25 = v10;
    v26 = 2080;
    *v27 = v12;
    _os_log_debug_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEBUG, "#D [%s]: Client connected to modem; old state=%s", buf, 0x16u);
    v3 = *(this + 19);
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(this + 19);
    if (v3 != 1)
    {
LABEL_3:
      if (!v3)
      {
        v4 = *(this + 5);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = (this + 48);
          if (*(this + 71) < 0)
          {
            v5 = *v5;
          }

          v6 = *(this + 72);
          v7 = (*(*this + 64))(this);
          *buf = 136315650;
          v25 = v5;
          v26 = 1024;
          *v27 = v6;
          v27[2] = 1024;
          *&v27[3] = v7;
          _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s]: Client id received successfully: svc=0x%x id=%d; starting client", buf, 0x18u);
        }

        if (*(this + 24))
        {
          *(this + 19) = 5;
          qmi::ClientProxy::State::checkIfLowPower_sync(this);
        }

        else
        {
          *(this + 19) = 4;
        }

        v8 = xpc_dictionary_create(0, 0, 0);
        if (v8 || (v8 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C259C10](v8) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v8);
            v9 = v8;
          }

          else
          {
            v9 = xpc_null_create();
          }
        }

        else
        {
          v9 = xpc_null_create();
          v8 = 0;
        }

        xpc_release(v8);
        v13 = xpc_int64_create(2);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        xpc_dictionary_set_value(v9, "status", v13);
        v14 = xpc_null_create();
        xpc_release(v13);
        xpc_release(v14);
        v15 = *(this + 29);
        if (v15)
        {
          object = v9;
          if (v9)
          {
            xpc_retain(v9);
          }

          else
          {
            object = xpc_null_create();
          }

          (*(*v15 + 24))(v15, &object);
          xpc_release(object);
          object = 0;
          qmi::ClientProxy::State::sendIfPossible_sync(this);
        }

        else
        {
          v16 = *(this + 5);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = (this + 48);
            if (*(this + 71) < 0)
            {
              v17 = *v17;
            }

            *buf = 136315138;
            v25 = v17;
            _os_log_error_impl(&dword_2962DD000, v16, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when setting connected state", buf, 0xCu);
          }
        }

        xpc_release(v9);
      }

      goto LABEL_40;
    }
  }

  v18 = *(this + 5);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (this + 48);
    if (*(this + 71) < 0)
    {
      v19 = *v19;
    }

    v20 = *(this + 72);
    v21 = (*(*this + 64))(this);
    *buf = 136315650;
    v25 = v19;
    v26 = 1024;
    *v27 = v20;
    v27[2] = 1024;
    *&v27[3] = v21;
    _os_log_impl(&dword_2962DD000, v18, OS_LOG_TYPE_DEFAULT, "#I [%s]: Received client id (svc=0x%x id=%d), but client was manually released; releasing id now.", buf, 0x18u);
  }

  (*(*this + 24))(this);
LABEL_40:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_2962F3094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientProxy::State::triggerLowPower_sync(qmi::ClientProxy::State *this, const group *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = *(this + 19);
  if (v4 <= 7)
  {
    if (((1 << v4) & 0x8E) != 0)
    {
      goto LABEL_48;
    }

    if (((1 << v4) & 0x60) != 0)
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (this + 48);
        if (*(this + 71) < 0)
        {
          v6 = *v6;
        }

        v7 = "kLowPowerPendingSends";
        if (v4 == 6)
        {
          v7 = "kLowPowerStalled";
        }

        *buf = 136315394;
        v31 = v6;
        v32 = 2080;
        v33 = v7;
        _os_log_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEFAULT, "#E [%s]: ERROR: Triggered enter-low-power but we are in state %s already!", buf, 0x16u);
      }
    }
  }

  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v9 = *(this + 24);
  *(this + 24) = gr_name;
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  if (*(this + 81) == 1)
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v24 = (this + 48);
      if (*(this + 71) < 0)
      {
        v24 = *v24;
      }

      v25 = a2->gr_name;
      *buf = 136315394;
      v31 = v24;
      v32 = 2048;
      v33 = v25;
      _os_log_debug_impl(&dword_2962DD000, v10, OS_LOG_TYPE_DEBUG, "#D [%s]: Client low-power group ++ Holding open (%p)", buf, 0x16u);
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    if (v11 || (v11 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C259C10](v11) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v11);
        v12 = v11;
      }

      else
      {
        v12 = xpc_null_create();
      }
    }

    else
    {
      v12 = xpc_null_create();
      v11 = 0;
    }

    xpc_release(v11);
    v13 = xpc_BOOL_create(1);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v12, "low_power", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    v15 = *(this + 2);
    if (!v15 || (v16 = *(this + 1), (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v17;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v18);
    }

    v19 = a2->gr_name;
    if (v19)
    {
      dispatch_retain(v19);
    }

    v20 = *(this + 29);
    if (v20)
    {
      object = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        object = xpc_null_create();
      }

      v26[0] = MEMORY[0x29EDCA5F8];
      v26[1] = 1174405120;
      v26[2] = ___ZN3qmi11ClientProxy5State20triggerLowPower_syncERKN8dispatch5groupE_block_invoke;
      v26[3] = &__block_descriptor_tmp_38_0;
      v26[4] = this;
      v26[5] = v16;
      v27 = v18;
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v28 = v19;
      if (v19)
      {
        dispatch_retain(v19);
      }

      (*(*v20 + 32))(v20, &object, v26);
      xpc_release(object);
      object = 0;
      if (v28)
      {
        dispatch_release(v28);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }
    }

    else
    {
      v21 = *(this + 5);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = (this + 48);
        if (*(this + 71) < 0)
        {
          v22 = *v22;
        }

        *buf = 136315138;
        v31 = v22;
        _os_log_error_impl(&dword_2962DD000, v21, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when triggering low power state", buf, 0xCu);
      }
    }

    if (v19)
    {
      dispatch_release(v19);
    }

    std::__shared_weak_count::__release_weak(v18);
    xpc_release(v12);
  }

  else
  {
    *(this + 19) = 5;
    qmi::ClientProxy::State::checkIfLowPower_sync(this);
  }

LABEL_48:
  v23 = *MEMORY[0x29EDCA608];
}

void sub_2962F355C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object, xpc_object_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3qmi11ClientProxy5State20triggerLowPower_syncERKN8dispatch5groupE_block_invoke(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if (a1[5])
  {
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = (v3 + 48);
      if (*(v3 + 71) < 0)
      {
        v8 = *v8;
      }

      v9 = a1[7];
      v10 = 136315394;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_debug_impl(&dword_2962DD000, v6, OS_LOG_TYPE_DEBUG, "#D [%s]: Client low-power group -- Done (%p)", &v10, 0x16u);
      if (*(v3 + 192) != a1[7])
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (*(v3 + 192) == a1[7])
    {
LABEL_6:
      if (*(v3 + 76) == 4)
      {
        *(v3 + 76) = 5;
        qmi::ClientProxy::State::checkIfLowPower_sync(v3);
      }
    }
  }

LABEL_8:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
}

void __copy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3qmi11ClientProxy5StateEEE56c21_ZTSN8dispatch5groupE(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[7] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__18weak_ptrIN3qmi11ClientProxy5StateEEE56c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void qmi::ClientProxy::State::init_sync(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 232);
  v4 = *(a1 + 40);
  if (v3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v6 = *v6;
      }

      v7 = *(a1 + 72);
      *buf = 136315394;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s]: Client created of type 0x%x", buf, 0x12u);
      v3 = *(a1 + 232);
    }

    v8 = *(a1 + 24);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    (**v3)(v3, a2, &object);
    if (object)
    {
      dispatch_release(object);
      v9 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_11;
  }

  if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  v11 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v11 = *v11;
  }

  *buf = 136315138;
  v15 = v11;
  _os_log_error_impl(&dword_2962DD000, v4, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport at time of initialization", buf, 0xCu);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_2962F3988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void qmi::ClientProxy::State::setDisconnected_sync(qmi::ClientProxy::State *this, int a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 48);
    if (*(this + 71) < 0)
    {
      v5 = *v5;
      v6 = *(this + 19);
      if (v6 <= 7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(this + 19);
      if (v6 <= 7)
      {
LABEL_4:
        v7 = off_29EE31300[v6];
LABEL_7:
        v12 = 136315650;
        v13 = v5;
        v14 = 1024;
        v15 = a2;
        v16 = 2080;
        v17 = v7;
        _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s]: Client disconnect from modem; temp failure=%d; old state=%s", &v12, 0x1Cu);
        goto LABEL_8;
      }
    }

    v7 = "(unknown)";
    goto LABEL_7;
  }

LABEL_8:
  v8 = *(this + 19);
  if ((v8 - 4) >= 3)
  {
    if (!v8)
    {
      qmi::ClientProxy::State::cancelAllMessages_sync(this);
      v10 = *(this + 24);
      *(this + 24) = 0;
      if (v10)
      {
        dispatch_group_leave(v10);
        dispatch_release(v10);
      }

      if (a2)
      {
        (*(*this + 32))(this);
      }

      else
      {
        qmi::ClientProxy::State::sendDisconnectMessage_sync(this, 0);
      }
    }
  }

  else
  {
    qmi::ClientProxy::State::cancelAllMessages_sync(this);
    v9 = *(this + 24);
    *(this + 24) = 0;
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }

    qmi::ClientProxy::State::sendDisconnectMessage_sync(this, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t qmi::ClientProxy::State::Transaction::Transaction(uint64_t result, uint64_t *a2, int a3)
{
  *result = a3;
  v4 = *a2;
  v3 = a2[1];
  *(result + 8) = 0;
  *(result + 16) = v4;
  *(result + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *result = a3;
  v4 = *a2;
  v3 = a2[1];
  *(result + 8) = 0;
  *(result + 16) = v4;
  *(result + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 qmi::ClientProxy::State::Transaction::Transaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t qmi::ClientProxy::State::Transaction::operator=(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 3);
  v5 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  *a1 = v3;
  if (v7)
  {
    (*(*v7 + 16))(v7);
    (*(*v7 + 8))(v7);
  }

  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t qmi::QmiClientProxyAdapter::QmiClientProxyAdapter(uint64_t a1, __int128 *a2, NSObject **a3, char a4, uint64_t *a5)
{
  *a1 = &unk_2A1D48000;
  if (*(a2 + 23) < 0)
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
    a2 = v8;
    a3 = v9;
    a4 = v10;
  }

  else
  {
    v7 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v7;
  }

  *(a1 + 32) = a4;
  *(a1 + 33) = -1;
  *(a1 + 36) = 0x2FFFFFFFFLL;
  *(a1 + 44) = 1;
  v11 = *a5;
  v12 = a5[1];
  v14[0] = v11;
  v14[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::ClientProxy::State::State(a1 + 48, a2, a3, a4, v14);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *a1 = &unk_2A1D47C58;
  *(a1 + 48) = &unk_2A1D47D20;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  return a1;
}

void sub_2962F3E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  *v9 = v11;
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::QmiClientProxyAdapter::QmiClientProxyAdapter(uint64_t a1, uint64_t *a2, __int128 *a3, char a4, uint64_t *a5)
{
  *a1 = &unk_2A1D48000;
  if (*(a3 + 23) < 0)
  {
    v10 = a4;
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
    a4 = v10;
  }

  else
  {
    v9 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v9;
  }

  *(a1 + 32) = a4;
  *(a1 + 33) = -1;
  *(a1 + 36) = 0x2FFFFFFFFLL;
  *(a1 + 44) = 1;
  v11 = *a2;
  v12 = a2[1];
  v18[2] = *a2;
  v19 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a5;
  v14 = a5[1];
  v18[0] = v13;
  v18[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  qmi::ClientProxy::State::State(a1 + 48, a3, (v11 + 24), a4, v18);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
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

  *a1 = &unk_2A1D47C58;
  *(a1 + 48) = &unk_2A1D47D20;
  v16 = a2[1];
  *(a1 + 296) = *a2;
  *(a1 + 304) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_2962F4098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  *v11 = v13;
  if (*(v11 + 31) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void qmi::QmiClientProxyAdapter::shutdown(qmi::QmiClientProxyAdapter *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE20execute_wrapped_syncIZNS1_21QmiClientProxyAdapter8shutdownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_92;
  block[4] = this + 56;
  block[5] = &v3;
  v2 = this + 72;
  v1 = *(this + 9);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void non-virtual thunk toqmi::QmiClientProxyAdapter::shutdown(qmi::QmiClientProxyAdapter *this)
{
  v3 = this - 48;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE20execute_wrapped_syncIZNS1_21QmiClientProxyAdapter8shutdownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_92;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void qmi::QmiClientProxyAdapter::disconnect_sync(qmi::QmiClientProxyAdapter *this)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(this + 38);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v20 = v3;
    if (v3)
    {
      v19 = *(this + 37);
      if (!v19)
      {
        goto LABEL_15;
      }

      v4 = *(this + 8);
      if (!v4 || (v5 = *(this + 7), (v6 = std::__shared_weak_count::lock(v4)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v5 - 48;
      if (!v5)
      {
        v11 = 0;
      }

      v17 = v11;
      v18 = v6;
      v15 = v11;
      v16 = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      QMux::remove(&v19, &v15, v7, v8, v9, v10);
      v12 = v16;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v3 = v20;
      if (v20)
      {
LABEL_15:
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v3;
          (v3->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
        }
      }
    }
  }
}

void sub_2962F4368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  QMux::~QMux(&a13);
  _Unwind_Resume(a1);
}

void sub_2962F438C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  QMux::~QMux(va);
  _Unwind_Resume(a1);
}

void qmi::QmiClientProxyAdapter::connect_sync(qmi::QmiClientProxyAdapter *this)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(this + 38);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v20 = v3;
    if (v3)
    {
      v19 = *(this + 37);
      if (!v19)
      {
        goto LABEL_15;
      }

      v4 = *(this + 8);
      if (!v4 || (v5 = *(this + 7), (v6 = std::__shared_weak_count::lock(v4)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v11 = v5 - 48;
      if (!v5)
      {
        v11 = 0;
      }

      v17 = v11;
      v18 = v6;
      v15 = v11;
      v16 = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      QMux::add(&v19, &v15, v7, v8, v9, v10);
      v12 = v16;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v3 = v20;
      if (v20)
      {
LABEL_15:
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v3;
          (v3->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
        }
      }
    }
  }
}

void sub_2962F4528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  QMux::~QMux(&a13);
  _Unwind_Resume(a1);
}

void sub_2962F454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  QMux::~QMux(va);
  _Unwind_Resume(a1);
}

void qmi::QmiClientProxyAdapter::invokeReset_sync(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(a1 + 304);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v8 = v5;
    if (v5)
    {
      v7 = *(a1 + 296);
      if (!v7 || (QMux::invokeReset(&v7, a2, 0), (v5 = v8) != 0))
      {
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v5;
          (v5->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }
  }
}

void non-virtual thunk toqmi::QmiClientProxyAdapter::invokeReset_sync(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(a1 + 256);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v8 = v5;
    if (v5)
    {
      v7 = *(a1 + 248);
      if (!v7 || (QMux::invokeReset(&v7, a2, 0), (v5 = v8) != 0))
      {
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v5;
          (v5->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }
  }
}

uint64_t qmi::QmiClientProxyAdapter::updateLogLevel_sync(uint64_t result, int a2)
{
  if (a2 <= 69)
  {
    if (a2 == 10)
    {
      *(result + 40) = 4;
      return result;
    }

    if (a2 == 20)
    {
      *(result + 40) = 3;
      return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 70:
LABEL_5:
        *(result + 40) = 1;
        return result;
      case 255:
        *(result + 40) = 0;
        return result;
      case 80:
        goto LABEL_5;
    }
  }

  *(result + 40) = 2;
  return result;
}

uint64_t non-virtual thunk toqmi::QmiClientProxyAdapter::updateLogLevel_sync(uint64_t result, int a2)
{
  if (a2 <= 69)
  {
    if (a2 == 10)
    {
      *(result - 8) = 4;
      return result;
    }

    if (a2 == 20)
    {
      *(result - 8) = 3;
      return result;
    }
  }

  else
  {
    switch(a2)
    {
      case 70:
LABEL_5:
        *(result - 8) = 1;
        return result;
      case 255:
        *(result - 8) = 0;
        return result;
      case 80:
        goto LABEL_5;
    }
  }

  *(result - 8) = 2;
  return result;
}

void qmi::QmiClientProxyAdapter::notifyRegisterFailure(uint64_t a1)
{
  isInternalError = qmi::isInternalError();

  qmi::ClientProxy::State::setDisconnected_sync((a1 + 48), isInternalError);
}

uint64_t *qmi::QmiClientProxyAdapter::appendPowerModeSet(uint64_t *result, uint64_t *a2)
{
  v2 = result[31];
  v3 = result + 32;
  if (v2 != (result + 32))
  {
    do
    {
      v12 = 0xAAAAAAAAAAAAAAAALL;
      v13 = 0xAAAAAAAAAAAAAAAALL;
      result = std::__tree<unsigned short>::__find_equal<unsigned short>(a2, a2 + 1, &v13, &v12, v2 + 13);
      if (*result)
      {
        v5 = *(v2 + 1);
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = result;
        v7 = operator new(0x20uLL);
        v7[13] = v2[13];
        v8 = v13;
        *v7 = 0;
        *(v7 + 1) = 0;
        *(v7 + 2) = v8;
        *v6 = v7;
        v9 = **a2;
        if (v9)
        {
          *a2 = v9;
        }

        result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a2[1], v7);
        ++a2[2];
        v5 = *(v2 + 1);
        if (v5)
        {
          do
          {
LABEL_10:
            v10 = v5;
            v5 = *v5;
          }

          while (v5);
          goto LABEL_3;
        }
      }

      do
      {
        v10 = *(v2 + 2);
        v11 = *v10 == v2;
        v2 = v10;
      }

      while (!v11);
LABEL_3:
      v2 = v10;
    }

    while (v10 != v3);
  }

  return result;
}

void qmi::QmiClientProxyAdapter::~QmiClientProxyAdapter(qmi::QmiClientProxyAdapter *this)
{
  *this = &unk_2A1D47C58;
  v2 = (this + 48);
  *(this + 6) = &unk_2A1D47D20;
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  qmi::ClientProxy::State::~State(v2);
  *this = &unk_2A1D48000;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2A1D47C58;
  v2 = (this + 48);
  *(this + 6) = &unk_2A1D47D20;
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  qmi::ClientProxy::State::~State(v2);
  *this = &unk_2A1D48000;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void non-virtual thunk toqmi::QmiClientProxyAdapter::~QmiClientProxyAdapter(qmi::QmiClientProxyAdapter *this)
{
  *(this - 6) = &unk_2A1D47C58;
  *this = &unk_2A1D47D20;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  qmi::ClientProxy::State::~State(this);
  *(this - 6) = &unk_2A1D48000;
  if (*(this - 17) < 0)
  {
    v3 = *(this - 5);

    operator delete(v3);
  }
}

{
  v2 = this - 48;
  *(this - 6) = &unk_2A1D47C58;
  *this = &unk_2A1D47D20;
  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  qmi::ClientProxy::State::~State(this);
  *(this - 6) = &unk_2A1D48000;
  if (*(this - 17) < 0)
  {
    operator delete(*(this - 5));
    v4 = v2;
  }

  else
  {
    v4 = v2;
  }

  operator delete(v4);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE31210, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void *ctu::SharedSynchronizable<qmi::ClientProxy::State>::~SharedSynchronizable(void *a1)
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

uint64_t std::insert_iterator<std::set<unsigned short>>::operator=[abi:ne200100](uint64_t a1, unsigned __int16 *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<unsigned short>::__find_equal<unsigned short>(v5, v4, &v16, &v15, a2);
  v7 = *v6;
  if (*v6)
  {
    *(a1 + 8) = v7;
    v8 = v7[1];
    if (!v8)
    {
      do
      {
LABEL_9:
        v12 = v7[2];
        v13 = *v12 == v7;
        v7 = v12;
      }

      while (!v13);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v6;
    v7 = operator new(0x20uLL);
    *(v7 + 13) = *a2;
    v10 = v16;
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v10;
    *v9 = v7;
    v11 = **v5;
    if (v11)
    {
      *v5 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v7);
    v5[2] = (v5[2] + 1);
    *(a1 + 8) = v7;
    v8 = v7[1];
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  do
  {
    v12 = v8;
    v8 = *v8;
  }

  while (v8);
LABEL_11:
  *(a1 + 8) = v12;
  return a1;
}

uint64_t *std::__tree<unsigned short>::__find_equal<unsigned short>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 13) < v16)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 26);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 13))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 26);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C259220](v14, a1);
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

  MEMORY[0x29C259230](v14);
  return a1;
}

void sub_2962F53BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C259230](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2962F539CLL);
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

void sub_2962F55FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<unsigned short>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned short>::destroy(a1, *a2);
    std::__tree<unsigned short>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
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

void std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,dispatch::block<void({block_pointer})(unsigned short)>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete(a1);
  }
}

void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_65_0;
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

void __copy_helper_block_e8_32b40c52_ZTSNSt3__110shared_ptrIKN3qmi11ClientProxy5StateEEE(void *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32b40c52_ZTSNSt3__110shared_ptrIKN3qmi11ClientProxy5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  _Block_object_dispose(v2, 7);
}

void *std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
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

void dispatch::async<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0,std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 224);
  if (!v4)
  {
    v4 = operator new(0x18uLL);
    *v4 = 0;
    v4[2] = 0;
    v4[1] = 0;
    *v4 = (v4 + 1);
    *(v3 + 224) = v4;
  }

  v5 = *(v2 + 4);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZN3qmi11ClientProxy5State16registerResponseEtNSt3__16vectorIhNS2_9allocatorIhEEEEENK3__0clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_72;
  aBlock[4] = v3;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v6 - v7);
    v14 = __p + v8;
    memcpy(__p, v7, v8);
    v13 = __p + v8;
  }

  CallbacksHandler::registerSendCallback(v4, v5, aBlock);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v9 = v2[2];
  if (v9)
  {
    v2[3] = v9;
    operator delete(v9);
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

void sub_2962F5CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0,std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2962F5D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  std::unique_ptr<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0,std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0,std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      v1[3] = v3;
      operator delete(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN3qmi11ClientProxy5State16registerResponseEtNSt3__16vectorIhNS2_9allocatorIhEEEEENK3__0clEv_block_invoke(void *a1, __int16 a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZZN3qmi11ClientProxy5State16registerResponseEtNSt3__16vectorIhNS2_9allocatorIhEEEEENK3__0clEv_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_68;
  v7[4] = v4;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v5 = a1[6];
  v6 = v5 - v3;
  if (v5 != v3)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v5 - v3);
    v10 = __p + v6;
    memcpy(__p, v3, v6);
    v9 = __p + v6;
  }

  v11 = a2;
  ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped((v4 + 8), v7);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_2962F5E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1D47EE0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1D47EE0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1D47EE0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D47EE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

uint64_t std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_0,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_0>,void ()(xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::~__func(uint64_t result)
{
  *result = &unk_2A1D47F70;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1D47F70;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::__clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1D47F70;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2A1D47F70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::operator()(uint64_t a1, void **a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        qmi::ClientProxy::State::handleServerError_sync(v7, a2);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

uint64_t std::__function::__func<qmi::ClientProxy::State::init(xpc::connection const&)::$_1,std::allocator<qmi::ClientProxy::State::init(xpc::connection const&)::$_1>,void ()(xpc::object const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3qmi11ClientProxy5State4initERKN3xpc10connectionEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::init(xpc::connection const&)::$_2>(qmi::ClientProxy::State::init(xpc::connection const&)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<qmi::ClientProxy::State::init(xpc::connection const&)::$_2,dispatch_queue_s *::default_delete<qmi::ClientProxy::State::init(xpc::connection const&)::$_2>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  qmi::ClientProxy::State::init_sync(**a1, *a1 + 8);
  xpc_release(v2[1]);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_2962F642C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, xpc_object_t *a10)
{
  std::unique_ptr<qmi::ClientProxy::State::init(xpc::connection const&)::$_2,std::default_delete<qmi::ClientProxy::State::init(xpc::connection const&)::$_2>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<qmi::ClientProxy::State>::execute_wrapped<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0>(qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&)::{lambda(void)#1},std::default_delete<qmi::ClientProxy::State::registerResponse(unsigned short,std::vector<unsigned char>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<qmi::ClientProxy::State::init(xpc::connection const&)::$_2,std::default_delete<qmi::ClientProxy::State::init(xpc::connection const&)::$_2>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE20execute_wrapped_syncIZNKS3_7isValidEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (v3)
  {
    v4 = *(*v3 + 16);
    v5 = *MEMORY[0x29EDCA608];

    return v4();
  }

  else
  {
    v7 = *(v2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = (v2 + 48);
      if (*(v2 + 71) < 0)
      {
        v9 = *v9;
      }

      v11 = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_2962DD000, v7, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when checking client validity", &v11, 0xCu);
      v10 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v8 = *MEMORY[0x29EDCA608];
    }

    return 0;
  }
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<qmi::ClientProxy::State::Transaction *,std::__deque_iterator<qmi::ClientProxy::State::Transaction,qmi::ClientProxy::State::Transaction *,qmi::ClientProxy::State::Transaction&,qmi::ClientProxy::State::Transaction **,long,128l>,0>(int **a1, int *a2, int *a3, int *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v13 = a2;
    goto LABEL_19;
  }

  v10 = *a4;
  while (1)
  {
    v12 = (v10 - a5 + 4096) >> 5;
    if ((a3 - v7) >> 5 < v12)
    {
      v12 = (a3 - v7) >> 5;
    }

    if (v12)
    {
      break;
    }

LABEL_5:
    v11 = *(v6 + 1);
    v6 += 2;
    v10 = v11;
    a5 = v11;
  }

  v13 = &v7[8 * v12];
  do
  {
    v14 = *v7;
    v15 = *(v7 + 3);
    v16 = *(v7 + 2);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    v17 = *(a5 + 24);
    *(a5 + 24) = v15;
    v18 = *(a5 + 8);
    *(a5 + 8) = v16;
    *a5 = v14;
    if (v18)
    {
      (*(*v18 + 16))(v18);
      (*(*v18 + 8))(v18);
    }

    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v7 += 8;
    a5 += 32;
  }

  while (v7 != v13);
  if (v13 != a3)
  {
    v7 = v13;
    goto LABEL_5;
  }

  if (a5 == *v6 + 4096)
  {
    v19 = *(v6 + 1);
    v6 += 2;
    a5 = v19;
  }

LABEL_19:
  *a1 = v13;
  a1[1] = v6;
  a1[2] = a5;
}

uint64_t ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void ___ZNK3ctu20SharedSynchronizableIN3qmi11ClientProxy5StateEE20execute_wrapped_syncIZNS1_21QmiClientProxyAdapter8shutdownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 280);
  if (v3)
  {
    v4 = *(*v3 + 40);
    v5 = *MEMORY[0x29EDCA608];

    v4();
  }

  else
  {
    v6 = *(v2 + 88);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = (v2 + 96);
      if (*(v2 + 119) < 0)
      {
        v8 = *v8;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_error_impl(&dword_2962DD000, v6, OS_LOG_TYPE_ERROR, "Client: [%s], invalid fTransport when shutting down", &v10, 0xCu);
      v9 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v7 = *MEMORY[0x29EDCA608];
    }
  }
}

uint64_t __cxx_global_var_init_47()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ATCSAdaptiveTimer,ATCSAdaptiveTimer,ctu::PthreadMutexGuardPolicy<ATCSAdaptiveTimer>>::sInstance, &dword_2962DD000);
  }

  return result;
}

void ATCSDPCQueue::ATCSDPCQueue(ATCSDPCQueue *this)
{
  ATCSTimer::ATCSTimer(this);
  *(v2 + 56) = 0;
  v3 = operator new(0x48uLL);
  v3[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v3, 0);
  *(this + 7) = v3;
  *(this + 64) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
}

{
  ATCSTimer::ATCSTimer(this);
  *(v2 + 56) = 0;
  v3 = operator new(0x48uLL);
  v3[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v3, 0);
  *(this + 7) = v3;
  *(this + 64) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
}

void ATCSDPCQueue::~ATCSDPCQueue(ATCSDPCQueue *this)
{
  ATCSDPCQueue::cancel(this);
  std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100](this + 72);
  v2 = *(this + 7);
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 28))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x3D, "fPending", "!=", "true", 1, 1);
  }

  MEMORY[0x29C258F40](this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  ATCSDPCQueue::cancel(this);
  std::deque<ATCSDPCQueue::Callback *>::~deque[abi:ne200100](this + 72);
  v2 = *(this + 7);
  pthread_mutex_destroy(v2);
  if (v2)
  {
    operator delete(v2);
  }

  if (*(this + 28))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSTimer.cpp", 0x3D, "fPending", "!=", "true", 1, 1);
  }

  MEMORY[0x29C258F40](this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t ATCSDPCQueue::cancel(ATCSDPCQueue *this)
{
  ATCSTimer::cancel(this);
  v2 = *(this + 7);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  *(this + 64) = 0;
  while (1)
  {
    v3 = *(this + 14);
    if (!v3)
    {
      break;
    }

    v4 = *(this + 10);
    v5 = (*(v4 + ((*(this + 13) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(this + 13) & 0x1FFLL];
    v6 = *(this + 13) + 1;
    *(this + 13) = v6;
    *(this + 14) = v3 - 1;
    if (v6 >= 0x400)
    {
      operator delete(*v4);
      *(this + 10) += 8;
      *(this + 13) -= 512;
    }

    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v7 = *(this + 7);
  pthread_self();
  v7[1].__sig = 0;
  return pthread_mutex_unlock(v7);
}

uint64_t ATCSDPCQueue::startTimer(ATCSDPCQueue *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a2 < 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSDPCQueue.cpp", 0x29, "timeout", "<=", "std::numeric_limits<int>::max()", a6);
  }

  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1D480D8;
  v8[1] = this;
  v8[2] = ATCSDPCQueue::handleTimer;
  v8[3] = 0;

  return ATCSTimer::set(this, a2, v8);
}

uint64_t ATCSDPCQueue::handleTimer(ATCSDPCQueue *this)
{
  v2 = *(this + 7);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  v3 = *(this + 14);
  if (v3)
  {
    v4 = *(this + 10);
    v5 = (*(v4 + ((*(this + 13) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(this + 13) & 0x1FFLL];
    v6 = *(this + 13) + 1;
    *(this + 13) = v6;
    *(this + 14) = v3 - 1;
    if (v6 >= 0x400)
    {
      operator delete(*v4);
      *(this + 10) += 8;
      *(this + 13) -= 512;
    }

    v7 = *(this + 7);
    pthread_self();
    v7[1].__sig = 0;
    pthread_mutex_unlock(v7);
    (*(*v5 + 16))(v5);
    (*(*v5 + 8))(v5);
    v8 = *(this + 7);
    pthread_mutex_lock(v8);
    v8[1].__sig = pthread_self();
    if (*(this + 14))
    {
      while (1)
      {
        v9 = *(*(*(this + 10) + ((*(this + 13) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 13) & 0x1FFLL));
        if ((*(*v9 + 24))(v9))
        {
          break;
        }

        v10 = *(this + 10);
        v11 = vaddq_s64(*(this + 104), xmmword_296335BF0);
        *(this + 104) = v11;
        if (v11.i64[0] >= 0x400uLL)
        {
          operator delete(*v10);
          *(this + 10) += 8;
          *(this + 13) -= 512;
        }

        v12 = *(this + 7);
        pthread_self();
        v12[1].__sig = 0;
        pthread_mutex_unlock(v12);
        (*(*v9 + 16))(v9);
        (*(*v9 + 8))(v9);
        v13 = *(this + 7);
        pthread_mutex_lock(v13);
        v13[1].__sig = pthread_self();
        if (!*(this + 14))
        {
          goto LABEL_13;
        }
      }

      v15 = (*(*v9 + 24))(v9);
      if (v15 < 0)
      {
        _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/Timers/ATCSDPCQueue.cpp", 0x29, "timeout", "<=", "std::numeric_limits<int>::max()", v14);
      }

      v16 = operator new(0x20uLL);
      *v16 = &unk_2A1D480D8;
      v16[1] = this;
      v16[2] = ATCSDPCQueue::handleTimer;
      v16[3] = 0;
      ATCSTimer::set(this, v15, v16);
    }
  }

LABEL_13:
  *(this + 64) = 0;
  v17 = *(this + 7);
  pthread_self();
  v17[1].__sig = 0;
  return pthread_mutex_unlock(v17);
}