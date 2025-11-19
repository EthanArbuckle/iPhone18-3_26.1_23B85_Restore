void sub_29632BAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  QMux::~QMux((v10 + 56));
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v10 + 40);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  QMux::~QMux((v11 - 104));
  _Unwind_Resume(a1);
}

void sub_29632BAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  QMux::~QMux((v17 - 104));
  _Unwind_Resume(a1);
}

void ___ZN10QMIControl20requestClientId_syncEN3qmi11ServiceTypeE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a2 + 8);
  v10 = *a2;
  v11 = v6;
  v7 = *(a2 + 16);
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::MessageBase::validateMsgId(&v10);
  QMIControl::handleClientIdRequest_sync(v4, v5, &v10);
  qmi::MessageBase::~MessageBase(&v10);
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(a1 + 56);
    v10 = v8;
    v11 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMux::State::notifyControlMessageError_sync(v8, *(a2 + 4));
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_29632BC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29632BC2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_29632BC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void QMIControl::handleClientIdRequest_sync(uint64_t a1, unsigned int a2, qmi::MessageBase *a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v60 = 0;
  v61 = 0;
  v6 = *(a1 + 80);
  if (!v6)
  {
    v7 = 0;
LABEL_6:
    v8 = 0;
    if (*(a3 + 1) != 31)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v7 = std::__shared_weak_count::lock(v6);
  v61 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 72);
  v60 = v8;
  if (*(a3 + 1) != 31)
  {
LABEL_12:
    v57 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0xAAAAAAAAAAAAAAAALL;
    QMIControl::ClientIdRequests::popClientForSvcType(a1 + 128, a2, &v57);
    v13 = v57;
    v14 = *(a3 + 1);
    if (!v57)
    {
      if (!v14)
      {
        v44[0] = MEMORY[0x29EDCA5F8];
        v44[1] = 0x40000000;
        v45 = ___ZN10QMIControl26handleClientIdRequest_syncEN3qmi11ServiceTypeERKN3ctl11GetClientId8ResponseE_block_invoke_64;
        v46 = &__block_descriptor_tmp_65;
        v47 = a1;
        TlvValue = qmi::MessageBase::findTlvValue(a3);
        v21 = TlvValue;
        if (TlvValue)
        {
          v22 = v20;
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v20, 1);
          v23 = *v21;
          tlv::throwIfNotEnoughBytes((v21 + 1), v21 + v22, 1);
          *buf = v23 | (*(v21 + 1) << 8);
          v45(v44, buf);
        }
      }

      goto LABEL_56;
    }

    if (!v14)
    {
      if (!v8)
      {
        v35 = *(a1 + 48);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v36 = *v36;
          }

          *buf = 136315138;
          *&buf[4] = v36;
          _os_log_impl(&dword_2962DD000, v35, OS_LOG_TYPE_DEFAULT, "#I handleClientIdRequest received, but QMux is dead; dropping [%s]", buf, 0xCu);
        }

        goto LABEL_56;
      }

      v48[0] = MEMORY[0x29EDCA5F8];
      v48[1] = 1174405120;
      v49 = ___ZN10QMIControl26handleClientIdRequest_syncEN3qmi11ServiceTypeERKN3ctl11GetClientId8ResponseE_block_invoke_62;
      v50 = &__block_descriptor_tmp_63;
      v51 = v8;
      v52 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = v13;
      v54 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
      }

      v24 = qmi::MessageBase::findTlvValue(a3);
      v26 = v24;
      if (v24)
      {
        v27 = v25;
        tlv::throwIfNotEnoughBytes(v24, v24 + v25, 1);
        v28 = *v26;
        tlv::throwIfNotEnoughBytes((v26 + 1), v26 + v27, 1);
        *buf = v28 | (*(v26 + 1) << 8);
        v49(v48, buf);
      }

      v29 = v54;
      if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
      }

      v30 = v52;
      if (!v52)
      {
LABEL_56:
        v39 = v58;
        if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        v7 = v61;
        goto LABEL_60;
      }

LABEL_54:
      if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }

      goto LABEL_56;
    }

    if (!v8)
    {
      v31 = *(a1 + 48);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = qmi::asString();
        v33 = v13[32];
        v34 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v34 = *v34;
        }

        *buf = 67109890;
        *&buf[4] = v14;
        *&buf[8] = 2080;
        *&buf[10] = v32;
        *&buf[18] = 1024;
        *&buf[20] = v33;
        *&buf[24] = 2080;
        *&buf[26] = v34;
        _os_log_error_impl(&dword_2962DD000, v31, OS_LOG_TYPE_ERROR, "ERROR: handleClientIdRequest: 0x%x (%s) for type: %d; QMux dead; nothing happens now [%s]", buf, 0x22u);
      }

      goto LABEL_56;
    }

    if (v14 == 31 || v14 == 5)
    {
      v15 = *(a1 + 48);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v16 = *v16;
        }

        v17 = qmi::asString();
        v18 = qmi::asShortString();
        *buf = 136315906;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        *&buf[22] = 1024;
        *&buf[24] = v14;
        *&buf[28] = 2080;
        *&buf[30] = v17;
        _os_log_fault_impl(&dword_2962DD000, v15, OS_LOG_TYPE_FAULT, "[%s] Baseband did not allocate client for svc type: %s, error: 0x%x (%s)", buf, 0x26u);
        *buf = v8;
        *&buf[8] = v7;
        if (!v7)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v37 = *(a1 + 48);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v41 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v41 = *v41;
        }

        v42 = qmi::asString();
        v43 = qmi::asShortString();
        *buf = 136315906;
        *&buf[4] = v41;
        *&buf[12] = 2080;
        *&buf[14] = v43;
        *&buf[22] = 1024;
        *&buf[24] = v14;
        *&buf[28] = 2080;
        *&buf[30] = v42;
        _os_log_error_impl(&dword_2962DD000, v37, OS_LOG_TYPE_ERROR, "[%s] Baseband did not allocate client for svc type: %s, error: 0x%x (%s)", buf, 0x26u);
        *buf = v8;
        *&buf[8] = v7;
        if (!v7)
        {
LABEL_48:
          v38 = v58;
          v55 = v13;
          v56 = v58;
          if (v58)
          {
            atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
          }

          (*(*v13 + 24))(v13, *(a3 + 1));
          if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
          }

          v30 = *&buf[8];
          if (!*&buf[8])
          {
            goto LABEL_56;
          }

          goto LABEL_54;
        }

LABEL_47:
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_48;
      }
    }

    *buf = v8;
    *&buf[8] = v7;
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_7:
  QMIControl::ClientIdRequests::addFailedRequestForSvcType(a1 + 128, a2);
  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 0x40000000;
  v59[2] = ___ZN10QMIControl26handleClientIdRequest_syncEN3qmi11ServiceTypeERKN3ctl11GetClientId8ResponseE_block_invoke;
  v59[3] = &__block_descriptor_tmp_61;
  v59[4] = a1;
  if (!QMIControl::startRetryTimer_sync(a1, v59))
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 48);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v10 = *v10;
    }

    v11 = *(a3 + 1);
    v12 = qmi::asString();
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 2080;
    *&buf[20] = v12;
    *&buf[28] = 1024;
    *&buf[30] = a2;
    *&buf[34] = 1024;
    *&buf[36] = 50;
    _os_log_error_impl(&dword_2962DD000, v9, OS_LOG_TYPE_ERROR, "[%s] Got error 0x%x (%s), will retry client request for svc type: %d in %d msec", buf, 0x28u);
  }

LABEL_60:
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v40 = *MEMORY[0x29EDCA608];
}

void sub_29632C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  QMux::~QMux((v16 - 160));
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10QMIControlEE48c9_ZTS4QMux(void *result, void *a2)
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

void __destroy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10QMIControlEE48c9_ZTS4QMux(uint64_t a1)
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

uint64_t ___ZN10QMIControl20releaseClientId_syncEN3qmi11ServiceTypeEh_block_invoke(uint64_t result, _BYTE *a2)
{
  *a2 = *(result + 32);
  a2[1] = *(result + 33);
  return result;
}

void ___ZN10QMIControl20releaseClientId_syncEN3qmi11ServiceTypeEh_block_invoke_2(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 4);
  if (!v2)
  {
    goto LABEL_9;
  }

  v5 = *(a1[4] + 48);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[7];
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  v9 = qmi::asString();
  v10 = a1[5];
  v11 = (v10 + 8);
  if (*(v10 + 31) < 0)
  {
    v11 = *v11;
  }

  LODWORD(v12) = 67109634;
  HIDWORD(v12) = v2;
  *v13 = 2080;
  *&v13[2] = v9;
  v14 = 2080;
  v15 = v11;
  _os_log_error_impl(&dword_2962DD000, v5, OS_LOG_TYPE_ERROR, "ReleaseClientId::Response returned error 0x%x (%s) during removeClient_sync [%s]", &v12, 0x1Cu);
  v6 = a1[7];
  if (v6)
  {
LABEL_4:
    v7 = a1[8];
    v12 = v6;
    *v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMux::State::notifyControlMessageError_sync(v6, *(a2 + 4));
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10QMIControlEE56c9_ZTS4QMux(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10QMIControlEE56c9_ZTS4QMux(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
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

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void QMIControl::sendSync_sync(QMIControl *this)
{
  v29 = 0;
  v30 = 0;
  v2 = *(this + 10);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v30 = v3;
    if (v3)
    {
      v4 = *(this + 9);
      v29 = v4;
      if (!*(this + 60))
      {
LABEL_6:
        if (*(this + 124) != 1)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
      if (!*(this + 60))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    if (!*(this + 60))
    {
      goto LABEL_6;
    }
  }

  memset(v28, 170, 24);
  qmi::MessageBase::MessageBase();
  v5 = *(this + 60);
  current_queue = dispatch_get_current_queue();
  v11 = *(this + 13);
  if (current_queue != *(v11 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x227, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v8);
    v11 = *(this + 13);
  }

  qmi::TransactionQueue::State::sendTransactionResponse_sync(v11, v5, v28, v6, v7, v8, v9);
  qmi::MessageBase::~MessageBase(v28);
  if (*(this + 124) == 1)
  {
LABEL_12:
    (*(*this + 48))(this);
  }

LABEL_13:
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v28 = v12;
  *&v28[16] = v12;
  qmi::MutableMessageBase::MutableMessageBase(v28);
  v14 = *(this + 7);
  v13 = *(this + 8);
  v26 = v14;
  if (!v13 || (v15 = std::__shared_weak_count::lock(v13), (v27 = v15) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v22[2] = ___ZN10QMIControl13sendSync_syncEv_block_invoke;
  v22[3] = &__block_descriptor_tmp_27_0;
  v22[4] = v14;
  v23 = v15;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v24 = v4;
  v25 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = qmi::TransactionQueue::forceSend_sync(this + 13, v28, 2000, v22);
  *(this + 60) = v16;
  if (*(this + 61))
  {
    if (*(this + 61) == v16)
    {
      *(this + 124) = 1;
    }

    v17 = v25;
    if (!v25)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    goto LABEL_29;
  }

  v18 = v16 + 224;
  if (((v16 + 224) & 0xFF00) != 0)
  {
    v18 = v16 - 32;
  }

  if ((v18 & 0xFFFE) == 0)
  {
    v18 = 1;
  }

  *(this + 61) = v18;
  v17 = v25;
  if (v25)
  {
    goto LABEL_27;
  }

LABEL_29:
  v19 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v28);
  v21 = v30;
  if (v30)
  {
    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }
}

void sub_29632CBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  QMux::~QMux((v9 + 48));
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v9 + 32);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  QMux::~QMux((v10 - 64));
  _Unwind_Resume(a1);
}

void sub_29632CC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  qmi::MessageBase::~MessageBase(va);
  QMux::~QMux((v11 - 64));
  _Unwind_Resume(a1);
}

void sub_29632CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  QMux::~QMux((v11 - 64));
  _Unwind_Resume(a1);
}

void ___ZN10QMIControl13sendSync_syncEv_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = *(a2 + 8);
  v9 = *a2;
  v10 = v5;
  v6 = *(a2 + 16);
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  qmi::MessageBase::validateMsgId(&v9);
  QMIControl::handleSyncResponse_sync(v4, &v9);
  qmi::MessageBase::~MessageBase(&v9);
  v7 = a1[6];
  if (v7)
  {
    v8 = a1[7];
    v9 = v7;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QMux::State::notifyControlMessageError_sync(v7, *(a2 + 4));
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_29632CD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29632CD50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_29632CD64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void QMIControl::handleSyncResponse_sync(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v3 = *(a1 + 80);
  if (!v3)
  {
    goto LABEL_21;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v17 = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = *(a2 + 4);
  if (v7 == 65539)
  {
    goto LABEL_21;
  }

  v8 = v5;
  if (v7 == 65537)
  {
    v9 = *(a1 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_2962DD000, v9, OS_LOG_TYPE_ERROR, "Timeout waiting for response to QMI_CTL_SYNC; retrying ([%s])", buf, 0xCu);
    }

    *buf = v6;
    *&buf[8] = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v6 + 208);
    if (v10 != 1)
    {
      if (v10 == 5)
      {
        goto LABEL_19;
      }

      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x2A8, "fMainState", "==", "kSync", v10, 1);
    }
  }

  else
  {
    if (!v7)
    {
      *buf = *(a1 + 72);
      *&buf[8] = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      QMux::State::notifySyncSuccess_sync(v6);
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v11 = *(a1 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = qmi::asString();
      v16 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v16 = *v16;
      }

      *buf = 67109634;
      *&buf[4] = v7;
      *&buf[8] = 2080;
      *&buf[10] = v15;
      v19 = 2080;
      v20 = v16;
      _os_log_error_impl(&dword_2962DD000, v11, OS_LOG_TYPE_ERROR, "Unable to synchronize with baseband QMI: error=%d (%s); retrying ([%s])", buf, 0x1Cu);
    }

    *buf = v6;
    *&buf[8] = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(v6 + 208);
    if (v12 != 1)
    {
      if (v12 == 5)
      {
        goto LABEL_19;
      }

      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMux.cpp", 0x2A8, "fMainState", "==", "kSync", v12, 1);
    }
  }

  QMIControl::sendSync_sync(*(v6 + 72));
LABEL_19:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_20:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_21:
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_24:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_29632D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a11);
  QMux::~QMux(&a9);
  _Unwind_Resume(a1);
}

void QMIControl::configurePowerMode_sync(uint64_t i, char *a2, unsigned int a3, char *a4)
{
  if (a2 != 1)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x141, "profile", "==", "qmi::kQMIPower_Low", a2, 1);
  }

  v8 = i + 208;
  v7 = *(i + 208);
  if (v7)
  {
    v9 = i + 208;
    v10 = *(i + 208);
    do
    {
      v11 = *(v10 + 32);
      v12 = v11 >= a3;
      v13 = v11 < a3;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *(v10 + 8 * v13);
    }

    while (v10);
    if (v9 != v8 && *(v9 + 32) <= a3)
    {
      goto LABEL_15;
    }
  }

  v9 = i + 208;
  v14 = (i + 208);
  v15 = (i + 208);
  if (v7)
  {
LABEL_15:
    while (1)
    {
      while (1)
      {
        v15 = v7;
        v16 = *(v7 + 32);
        if (v16 <= a3)
        {
          break;
        }

        v7 = *v15;
        v14 = v15;
        if (!*v15)
        {
          goto LABEL_18;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v7 = *(v15 + 1);
      if (!v7)
      {
        v14 = v15 + 8;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v17 = v15;
    v15 = operator new(0x40uLL);
    v15[32] = a3;
    *(v15 + 7) = 0;
    *(v15 + 6) = 0;
    *(v15 + 5) = v15 + 48;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v17;
    *v14 = v15;
    v18 = **(i + 200);
    if (v18)
    {
      *(i + 200) = v18;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(i + 208), v15);
    ++*(i + 216);
  }

  if (v9 != v8 && *(v15 + 7) == *(a4 + 2))
  {
    v19 = *(v15 + 5);
    if (v19 == v15 + 48)
    {
      return;
    }

    v20 = *a4;
    while (*(v19 + 13) == *(v20 + 13))
    {
      v21 = *(v19 + 1);
      v22 = v19;
      if (v21)
      {
        do
        {
          v19 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v19 = *(v22 + 2);
          v23 = *v19 == v22;
          v22 = v19;
        }

        while (!v23);
      }

      v24 = v20[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v20[2];
          v23 = *v25 == v20;
          v20 = v25;
        }

        while (!v23);
      }

      v20 = v25;
      if (v19 == v15 + 48)
      {
        return;
      }
    }
  }

  v26 = (v15 + 40);
  if (v15 + 40 != a4)
  {
    v28 = a4 + 8;
    v27 = *a4;
    if (*(v15 + 7))
    {
      v113 = i;
      v30 = (v15 + 48);
      v29 = *(v15 + 6);
      v31 = *(v15 + 5);
      *(v15 + 5) = v15 + 48;
      *(v29 + 16) = 0;
      *(v15 + 6) = 0;
      *(v15 + 7) = 0;
      if (v31[1])
      {
        v32 = v31[1];
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        v33 = v32[2];
        if (v33)
        {
          v34 = *v33;
          if (*v33 == v32)
          {
            *v33 = 0;
            while (1)
            {
              v102 = v33[1];
              if (!v102)
              {
                break;
              }

              do
              {
                v33 = v102;
                v102 = *v102;
              }

              while (v102);
            }
          }

          else
          {
            for (v33[1] = 0; v34; v34 = v33[1])
            {
              do
              {
                v33 = v34;
                v34 = *v34;
              }

              while (v34);
            }
          }
        }

        if (v27 != v28)
        {
          while (1)
          {
            v35 = v33;
            v36 = *(v27 + 13);
            *(v32 + 13) = v36;
            v37 = *v30;
            v38 = v15 + 48;
            v39 = v15 + 48;
            if (*v30)
            {
              break;
            }

LABEL_51:
            *v32 = 0;
            v32[1] = 0;
            v32[2] = v38;
            *v39 = v32;
            v40 = **v26;
            if (v40)
            {
              goto LABEL_52;
            }

LABEL_53:
            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v15 + 6), v32);
            ++*(v15 + 7);
            if (v33)
            {
              v33 = v33[2];
              if (v33)
              {
                v43 = *v33;
                if (*v33 == v35)
                {
                  *v33 = 0;
                  while (1)
                  {
                    v44 = v33[1];
                    if (!v44)
                    {
                      break;
                    }

                    do
                    {
                      v33 = v44;
                      v44 = *v44;
                    }

                    while (v44);
                  }
                }

                else
                {
                  for (v33[1] = 0; v43; v43 = v33[1])
                  {
                    do
                    {
                      v33 = v43;
                      v43 = *v43;
                    }

                    while (v43);
                  }
                }
              }
            }

            else
            {
              v33 = 0;
            }

            v41 = v27[1];
            if (v41)
            {
              do
              {
                v42 = v41;
                v41 = *v41;
              }

              while (v41);
            }

            else
            {
              do
              {
                v42 = v27[2];
                v23 = *v42 == v27;
                v27 = v42;
              }

              while (!v23);
            }

            if (v35)
            {
              v27 = v42;
              v32 = v35;
              if (v42 != v28)
              {
                continue;
              }
            }

            goto LABEL_84;
          }

          do
          {
            while (1)
            {
              v38 = v37;
              if (v36 >= *(v37 + 13))
              {
                break;
              }

              v37 = *v37;
              v39 = v38;
              if (!*v38)
              {
                goto LABEL_51;
              }
            }

            v37 = v37[1];
          }

          while (v37);
          *v32 = 0;
          v32[1] = 0;
          v32[2] = v38;
          v38[1] = v32;
          v40 = **v26;
          if (!v40)
          {
            goto LABEL_53;
          }

LABEL_52:
          *v26 = v40;
          goto LABEL_53;
        }

        v35 = v32;
        v42 = v27;
LABEL_84:
        std::__tree<unsigned short>::destroy((v15 + 40), v35);
        if (v33)
        {
          v45 = v33[2];
          for (i = v113; v45; v45 = v45[2])
          {
            v33 = v45;
          }

          std::__tree<unsigned short>::destroy((v15 + 40), v33);
          if (v42 == v28)
          {
            goto LABEL_107;
          }
        }

        else
        {
          i = v113;
          if (v42 == v28)
          {
            goto LABEL_107;
          }
        }
      }

      else
      {
        v42 = v27;
        i = v113;
        if (v27 == v28)
        {
          goto LABEL_107;
        }
      }
    }

    else
    {
      v42 = *a4;
      if (v27 == v28)
      {
        goto LABEL_107;
      }
    }

    v46 = (v15 + 48);
    while (1)
    {
      v47 = operator new(0x20uLL);
      v48 = *(v42 + 13);
      v47[13] = v48;
      v49 = *v46;
      v50 = v15 + 48;
      v51 = v15 + 48;
      if (*v46)
      {
        break;
      }

LABEL_93:
      *v47 = 0;
      *(v47 + 1) = 0;
      *(v47 + 2) = v50;
      *v51 = v47;
      v52 = **v26;
      if (v52)
      {
        goto LABEL_94;
      }

LABEL_95:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v15 + 6), v47);
      ++*(v15 + 7);
      v53 = v42[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v42[2];
          v23 = *v54 == v42;
          v42 = v54;
        }

        while (!v23);
      }

      v42 = v54;
      if (v54 == v28)
      {
        goto LABEL_107;
      }
    }

    do
    {
      while (1)
      {
        v50 = v49;
        if (v48 >= *(v49 + 13))
        {
          break;
        }

        v49 = *v49;
        v51 = v50;
        if (!*v50)
        {
          goto LABEL_93;
        }
      }

      v49 = v49[1];
    }

    while (v49);
    *v47 = 0;
    *(v47 + 1) = 0;
    *(v47 + 2) = v50;
    v50[1] = v47;
    v52 = **v26;
    if (!v52)
    {
      goto LABEL_95;
    }

LABEL_94:
    *v26 = v52;
    goto LABEL_95;
  }

LABEL_107:
  v55 = *(a4 + 2);
  if (v55 <= 0xA)
  {
    *&v56 = 0xAAAAAAAAAAAAAAAALL;
    *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v136 = v56;
    v137 = v56;
    qmi::MutableMessageBase::MutableMessageBase(&v136);
    v132[0] = MEMORY[0x29EDCA5F8];
    v132[1] = 0x40000000;
    v57 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke;
    v133 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke;
    v134 = &__block_descriptor_tmp_32;
    v135 = a3;
    v58 = *(&v136 + 1);
    if (*(&v136 + 1) != v137)
    {
      while (*(*v58 + 8) != 1)
      {
        if (++v58 == v137)
        {
          goto LABEL_120;
        }
      }
    }

    if (v58 == v137)
    {
LABEL_120:
      v64 = qmi::MutableMessageBase::createTLV<ctl::tlv::PowerSaveDescriptor>(&v136);
      v57 = v133;
    }

    else
    {
      v62 = ***v58;
      if (!v63)
      {
        goto LABEL_196;
      }

      v64 = v63 + 12;
    }

    v57(v132, v64);
    v128[0] = MEMORY[0x29EDCA5F8];
    v128[1] = 0x40000000;
    v65 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_2;
    v129 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_2;
    v130 = &__block_descriptor_tmp_34;
    v131 = v15 + 40;
    v67 = *(&v136 + 1);
    v66 = v137;
    v68 = *(&v136 + 1);
    if (*(&v136 + 1) != v137)
    {
      v68 = *(&v136 + 1);
      while (*(*v68 + 8) != 17)
      {
        if (++v68 == v137)
        {
          goto LABEL_129;
        }
      }
    }

    if (v68 == v137)
    {
LABEL_129:
      v72 = operator new(0x28uLL);
      v72[8] = 17;
      *v72 = &unk_2A1D49A90;
      *(v72 + 2) = 0;
      v71 = v72 + 16;
      *(v72 + 3) = 0;
      *(v72 + 4) = 0;
      if (v66 >= *(&v137 + 1))
      {
        v86 = v66 - v67;
        v87 = (v66 - v67) >> 3;
        v88 = v87 + 1;
        if ((v87 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v89 = *(&v137 + 1) - v67;
        if ((*(&v137 + 1) - v67) >> 2 > v88)
        {
          v88 = v89 >> 2;
        }

        if (v89 >= 0x7FFFFFFFFFFFFFF8)
        {
          v90 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v90 = v88;
        }

        if (v90)
        {
          if (v90 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v91 = v72;
          v92 = v72 + 16;
          v93 = operator new(8 * v90);
          v72 = v91;
        }

        else
        {
          v92 = v72 + 16;
          v93 = 0;
        }

        v103 = &v93[8 * v87];
        *v103 = v72;
        v73 = v103 + 8;
        memcpy(v93, v67, v86);
        *(&v136 + 1) = v93;
        *&v137 = v73;
        *(&v137 + 1) = &v93[8 * v90];
        if (v67)
        {
          operator delete(v67);
        }

        v71 = v92;
      }

      else
      {
        *v66 = v72;
        v73 = v66 + 8;
      }

      *&v137 = v73;
      v65 = v129;
LABEL_175:
      v65(v128, v71);
      v105 = *(i + 56);
      v104 = *(i + 64);
      v126 = v105;
      if (!v104 || (v106 = std::__shared_weak_count::lock(v104), (v127 = v106) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v124[0] = MEMORY[0x29EDCA5F8];
      v124[1] = 1174405120;
      v124[2] = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_3;
      v124[3] = &__block_descriptor_tmp_36_0;
      v124[4] = v105;
      v125 = v106;
      atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
      qmi::TransactionQueue::forceSend_sync((i + 104), &v136, 25000, v124);
      v107 = v125;
      if (!v125)
      {
        goto LABEL_189;
      }

      goto LABEL_187;
    }

    v69 = ***v68;
    if (v70)
    {
      v71 = v70 + 16;
      goto LABEL_175;
    }

LABEL_196:
    __cxa_bad_cast();
  }

  if (v55 <= 0xFF)
  {
    *&v59 = 0xAAAAAAAAAAAAAAAALL;
    *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v136 = v59;
    v137 = v59;
    qmi::MutableMessageBase::MutableMessageBase(&v136);
    v120[0] = MEMORY[0x29EDCA5F8];
    v120[1] = 0x40000000;
    v60 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_37;
    v121 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_37;
    v122 = &__block_descriptor_tmp_38;
    v123 = a3;
    v61 = *(&v136 + 1);
    if (*(&v136 + 1) != v137)
    {
      while (*(*v61 + 8) != 1)
      {
        if (++v61 == v137)
        {
          goto LABEL_137;
        }
      }
    }

    if (v61 == v137)
    {
LABEL_137:
      v76 = qmi::MutableMessageBase::createTLV<ctl::tlv::PowerSaveDescriptor>(&v136);
      v60 = v121;
    }

    else
    {
      v74 = ***v61;
      if (!v75)
      {
        goto LABEL_197;
      }

      v76 = v75 + 12;
    }

    v60(v120, v76);
    v116[0] = MEMORY[0x29EDCA5F8];
    v116[1] = 0x40000000;
    v77 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_2_39;
    v117 = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_2_39;
    v118 = &__block_descriptor_tmp_40;
    v119 = v15 + 40;
    v79 = *(&v136 + 1);
    v78 = v137;
    v80 = *(&v136 + 1);
    if (*(&v136 + 1) != v137)
    {
      v80 = *(&v136 + 1);
      while (*(*v80 + 8) != 16)
      {
        if (++v80 == v137)
        {
          goto LABEL_146;
        }
      }
    }

    if (v80 == v137)
    {
LABEL_146:
      v84 = operator new(0x28uLL);
      v84[8] = 16;
      *v84 = &unk_2A1D49AE0;
      *(v84 + 2) = 0;
      v83 = v84 + 16;
      *(v84 + 3) = 0;
      *(v84 + 4) = 0;
      if (v78 >= *(&v137 + 1))
      {
        v94 = v78 - v79;
        v95 = (v78 - v79) >> 3;
        v96 = v95 + 1;
        if ((v95 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v97 = *(&v137 + 1) - v79;
        if ((*(&v137 + 1) - v79) >> 2 > v96)
        {
          v96 = v97 >> 2;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF8)
        {
          v98 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          if (v98 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v99 = v84;
          v100 = v84 + 16;
          v101 = operator new(8 * v98);
          v84 = v99;
        }

        else
        {
          v100 = v84 + 16;
          v101 = 0;
        }

        v108 = &v101[8 * v95];
        *v108 = v84;
        v85 = v108 + 8;
        memcpy(v101, v79, v94);
        *(&v136 + 1) = v101;
        *&v137 = v85;
        *(&v137 + 1) = &v101[8 * v98];
        if (v79)
        {
          operator delete(v79);
        }

        v83 = v100;
      }

      else
      {
        *v78 = v84;
        v85 = v78 + 8;
      }

      *&v137 = v85;
      v77 = v117;
LABEL_184:
      v77(v116, v83);
      v110 = *(i + 56);
      v109 = *(i + 64);
      v126 = v110;
      if (!v109 || (v111 = std::__shared_weak_count::lock(v109), (v127 = v111) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v114[0] = MEMORY[0x29EDCA5F8];
      v114[1] = 1174405120;
      v114[2] = ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_3_41;
      v114[3] = &__block_descriptor_tmp_44;
      v114[4] = v110;
      v115 = v111;
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
      qmi::TransactionQueue::forceSend_sync((i + 104), &v136, 25000, v114);
      v107 = v115;
      if (!v115)
      {
        goto LABEL_189;
      }

LABEL_187:
      if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v107->__on_zero_shared)(v107);
        std::__shared_weak_count::__release_weak(v107);
      }

LABEL_189:
      v112 = v127;
      if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v112->__on_zero_shared)(v112);
        std::__shared_weak_count::__release_weak(v112);
      }

      qmi::MutableMessageBase::~MutableMessageBase(&v136);
      return;
    }

    v81 = ***v80;
    if (v82)
    {
      v83 = v82 + 16;
      goto LABEL_184;
    }

LABEL_197:
    __cxa_bad_cast();
  }

  _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x17B, "indSet.size()", "<=", "255", v55, 0xFF);
}

void sub_29632DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v33 + 32);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](&a33);
  qmi::MutableMessageBase::~MutableMessageBase((v34 - 144));
  _Unwind_Resume(a1);
}

uint64_t ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke(uint64_t result, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 4) = *(result + 32);
  return result;
}

_WORD *___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = *v3;
  v5 = v3 + 1;
  v4 = v6;
  if (v6 == v5)
  {
    v7 = 0;
    v12 = a2;
  }

  else
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      ++v7;
      v8 = v10;
    }

    while (v10 != v5);
    v12 = a2;
  }

  return std::vector<unsigned short>::__assign_with_size[abi:ne200100]<std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>,std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>>(v12, v4, v5, v7);
}

void ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) && (qmi::isInternalError() & 1) == 0)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x160, "isInternalError(response.getError())", "is not", "true", v2);
  }
}

uint64_t ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_37(uint64_t result, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 4) = *(result + 32);
  return result;
}

_WORD *___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_2_39(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = *v3;
  v5 = v3 + 1;
  v4 = v6;
  if (v6 == v5)
  {
    v7 = 0;
    v12 = a2;
  }

  else
  {
    v7 = 0;
    v8 = v4;
    do
    {
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      ++v7;
      v8 = v10;
    }

    while (v10 != v5);
    v12 = a2;
  }

  return std::vector<unsigned short>::__assign_with_size[abi:ne200100]<std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>,std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>>(v12, v4, v5, v7);
}

void ___ZN10QMIControl23configurePowerMode_syncEN3qmi12PowerProfileENS0_11ServiceTypeERKNSt3__13setItNS3_4lessItEENS3_9allocatorItEEEE_block_invoke_3_41(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) && (qmi::isInternalError() & 1) == 0)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMIControl.cpp", 0x176, "isInternalError(response.getError())", "is not", "true", v2);
  }
}

void QMIControl::enterPowerMode_sync(uint64_t a1, NSObject *a2, int a3)
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

void QMIControl::handleReceivedData_sync(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
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

void sub_29632E174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void QMIControl::handleInd_sync(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    v3 = *(a1 + 80);
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v7 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = *v7;
  }

  LODWORD(v8) = 136315138;
  *(&v8 + 4) = v7;
  _os_log_debug_impl(&dword_2962DD000, v2, OS_LOG_TYPE_DEBUG, "#D Received ctl::Sync::Indication [%s]\n", &v8, 0xCu);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(a1 + 80);
  if (v3)
  {
LABEL_3:
    v4 = std::__shared_weak_count::lock(v3);
    *(&v8 + 1) = v4;
    if (v4)
    {
      *&v8 = *(a1 + 72);
      if (!v8 || (QMux::restart(&v8), (v4 = *(&v8 + 1)) != 0))
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
}

void QMIControl::handleInd_sync(uint64_t a1, qmi::MessageBase *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 48);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0uLL;
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  v14 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v14 = *v14;
  }

  *buf = 136315138;
  *&buf[4] = v14;
  _os_log_debug_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEBUG, "#D Received ctl::RevokeClientId::Indication [%s]", buf, 0xCu);
  *buf = 0uLL;
  v5 = *(a1 + 80);
  if (v5)
  {
LABEL_3:
    v6 = std::__shared_weak_count::lock(v5);
    *&buf[8] = v6;
    if (v6)
    {
      v7 = *(a1 + 72);
      *buf = v7;
      if (v7)
      {
        v17[0] = MEMORY[0x29EDCA5F8];
        v17[1] = 1174405120;
        v18 = ___ZN10QMIControl14handleInd_syncERKN3ctl14RevokeClientId10IndicationE_block_invoke;
        v19 = &__block_descriptor_tmp_56;
        v20 = v7;
        v21 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v10 = TlvValue;
        if (TlvValue)
        {
          v11 = v9;
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 1);
          v12 = *v10;
          tlv::throwIfNotEnoughBytes((v10 + 1), v10 + v11, 1);
          v22 = v12 | (*(v10 + 1) << 8);
          v18(v17, &v22);
        }

        v13 = v21;
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }
    }
  }

LABEL_13:
  v15 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_29632E510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    (*MEMORY[0x29EDC91A8])(*v17, 1, v18, v19);
    JUMPOUT(0x29632E3F4);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10QMIControl14handleInd_syncERKN3ctl14RevokeClientId10IndicationE_block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMux::State::revokeClient_sync(v3, *a2, a2[1]);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __copy_helper_block_e8_32c9_ZTS4QMux(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c9_ZTS4QMux(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void QMIControl::handleReceivedIndication_sync(uint64_t a1, const void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(v7, 170, sizeof(v7));
  qmi::MessageBase::MessageBase(v7, a2);
  v3 = LOWORD(v7[0]);
  if (LOWORD(v7[0]) == 36)
  {
    *buf = v7[0];
    v9 = *&v7[1];
    if (v7[2])
    {
      atomic_fetch_add_explicit((v7[2] + 8), 1uLL, memory_order_relaxed);
    }

    qmi::MessageBase::validateMsgId(buf);
    QMIControl::handleInd_sync(a1, buf);
    goto LABEL_9;
  }

  if (LOWORD(v7[0]) == 39)
  {
    *buf = v7[0];
    v9 = *&v7[1];
    if (v7[2])
    {
      atomic_fetch_add_explicit((v7[2] + 8), 1uLL, memory_order_relaxed);
    }

    qmi::MessageBase::validateMsgId(buf);
    QMIControl::handleInd_sync(a1);
LABEL_9:
    qmi::MessageBase::~MessageBase(buf);
    goto LABEL_11;
  }

  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v6 = *v6;
    }

    *buf = 67109378;
    *&buf[4] = v3;
    LOWORD(v9) = 2080;
    *(&v9 + 2) = v6;
    _os_log_debug_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEBUG, "#D Received unknown QMI CTL indication (0x%04x) [%s]", buf, 0x12u);
  }

LABEL_11:
  qmi::MessageBase::~MessageBase(v7);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_29632E838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  qmi::MessageBase::~MessageBase(va1);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void QMIControl::handleSentData_sync(QMIControl *this, int a2)
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

void QMIControl::handleTimeout(QMIControl *this, uint64_t a2, int a3)
{
  v48 = *MEMORY[0x29EDCA608];
  if (*(this + 44) != 1)
  {
    goto LABEL_44;
  }

  if (a3 == 39)
  {
    v4 = *(this + 6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (this + 8);
      if (*(this + 31) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I ATCS_TIMEOUT was for a ctl::Sync message; this is expected sometimes [%s]\n", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v37 = 0;
  v38 = 0;
  v6 = *(this + 10);
  if (!v6 || (v38 = std::__shared_weak_count::lock(v6)) == 0 || (v37 = *(this + 9)) == 0)
  {
    v27 = *(this + 6);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = (this + 8);
      if (*(this + 31) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_2962DD000, v27, OS_LOG_TYPE_ERROR, "ATCS_TIMEOUT should invoke reset but QMux is no longer alive [%s]", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[7] = v8;
  v46[8] = v8;
  v46[5] = v8;
  v46[6] = v8;
  v46[3] = v8;
  v46[4] = v8;
  v46[1] = v8;
  v46[2] = v8;
  v45 = v8;
  v46[0] = v8;
  *__p = v8;
  v44 = v8;
  v41 = v8;
  v42 = v8;
  *buf = v8;
  v40 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](buf);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "ATCS_TIMEOUT on message for svc=", 32);
  v10 = MEMORY[0x29C259270](v9, *(this + 32));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " client=", 8);
  v12 = MEMORY[0x29C259270](v11, *(this + 33));
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " (txid=", 7);
  v14 = MEMORY[0x29C259270](v13, a2);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " msgid=0x", 9);
  *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = MEMORY[0x29C259270]();
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") [", 3);
  v20 = *(this + 1);
  v19 = this + 8;
  v18 = v20;
  v21 = v19[23];
  if (v21 >= 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v18;
  }

  if (v21 >= 0)
  {
    v23 = v19[23];
  }

  else
  {
    v23 = *(v19 + 1);
  }

  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v22, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "]", 1);
  if ((BYTE8(v45) & 0x10) != 0)
  {
    v29 = v45;
    if (v45 < *(&v42 + 1))
    {
      *&v45 = *(&v42 + 1);
      v29 = *(&v42 + 1);
    }

    v30 = &v42;
  }

  else
  {
    if ((BYTE8(v45) & 8) == 0)
    {
      v25 = 0;
      HIBYTE(v36) = 0;
      v26 = __dst;
      goto LABEL_36;
    }

    v30 = &v40 + 1;
    v29 = *(&v41 + 1);
  }

  v31 = *v30;
  v25 = v29 - *v30;
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v32 = 25;
    }

    else
    {
      v32 = (v25 | 7) + 1;
    }

    v26 = operator new(v32);
    __dst[1] = v25;
    v36 = v32 | 0x8000000000000000;
    __dst[0] = v26;
  }

  else
  {
    HIBYTE(v36) = v29 - *v30;
    v26 = __dst;
    if (!v25)
    {
      goto LABEL_36;
    }
  }

  memmove(v26, v31, v25);
LABEL_36:
  *(v26 + v25) = 0;
  QMux::invokeReset(&v37, __dst, 0);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst[0]);
  }

  *buf = *MEMORY[0x29EDC9538];
  *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
  *&buf[8] = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[1]);
  }

  *&buf[8] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v40);
  std::ostream::~ostream();
  MEMORY[0x29C259330](v46);
LABEL_41:
  v33 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

LABEL_44:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_29632ED88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::ostringstream::~ostringstream(&a18);
    QMux::~QMux(&a16);
    _Unwind_Resume(a1);
  }

  std::ostringstream::~ostringstream(&a18);
  QMux::~QMux(&a16);
  _Unwind_Resume(a1);
}

uint64_t QMIControl::ClientIdRequests::addFailedRequestForSvcType(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v4[1].__sig = pthread_self();
  v6 = (a1 + 40);
  v5 = *(a1 + 40);
  if (v5)
  {
    v7 = a1 + 40;
    v8 = *(a1 + 40);
    do
    {
      v9 = *(v8 + 28);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = *(v8 + 8 * v11);
    }

    while (v8);
    if (v7 == v6 || *(v7 + 28) > a2)
    {
      while (1)
      {
        while (1)
        {
          v13 = v5;
          v14 = *(v5 + 28);
          if (v14 <= a2)
          {
            break;
          }

          v5 = *v13;
          v6 = v13;
          if (!*v13)
          {
            goto LABEL_21;
          }
        }

        if (v14 >= a2)
        {
          break;
        }

        v5 = v13[1];
        if (!v5)
        {
          v6 = v13 + 1;
          goto LABEL_21;
        }
      }

      v18 = v13;
      v20 = 1;
    }

    else
    {
      v12 = *(a1 + 40);
      do
      {
        while (1)
        {
          v15 = v12;
          v16 = *(v12 + 28);
          if (v16 > a2)
          {
            break;
          }

          if (v16 >= a2)
          {
            v23 = *(v15 + 8);
            goto LABEL_32;
          }

          v12 = v15[1];
          if (!v12)
          {
            v17 = v15 + 1;
            goto LABEL_26;
          }
        }

        v12 = *v15;
      }

      while (*v15);
      v17 = v15;
LABEL_26:
      v21 = operator new(0x28uLL);
      v21[28] = a2;
      *(v21 + 8) = 0;
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v21 + 2) = v15;
      *v17 = v21;
      v22 = **(a1 + 32);
      if (v22)
      {
        *(a1 + 32) = v22;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 40), v21);
      v5 = *(a1 + 40);
      ++*(a1 + 48);
      v23 = *(v21 + 8);
      v24 = (a1 + 40);
      if (v5)
      {
        while (1)
        {
LABEL_32:
          while (1)
          {
            v24 = v5;
            v25 = *(v5 + 28);
            if (v25 <= a2)
            {
              break;
            }

            v5 = *v24;
            v6 = v24;
            if (!*v24)
            {
              goto LABEL_36;
            }
          }

          if (v25 >= a2)
          {
            break;
          }

          v5 = v24[1];
          if (!v5)
          {
            v6 = v24 + 1;
            goto LABEL_36;
          }
        }

        v18 = v24;
      }

      else
      {
LABEL_36:
        v18 = operator new(0x28uLL);
        v18[28] = a2;
        *(v18 + 8) = 0;
        *v18 = 0;
        *(v18 + 1) = 0;
        *(v18 + 2) = v24;
        *v6 = v18;
        v26 = **(a1 + 32);
        if (v26)
        {
          *(a1 + 32) = v26;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 40), v18);
        ++*(a1 + 48);
      }

      v20 = v23 + 1;
    }
  }

  else
  {
    v13 = (a1 + 40);
LABEL_21:
    v18 = operator new(0x28uLL);
    v18[28] = a2;
    *(v18 + 8) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v13;
    *v6 = v18;
    v19 = **(a1 + 32);
    if (v19)
    {
      *(a1 + 32) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 40), v18);
    ++*(a1 + 48);
    v20 = 1;
  }

  *(v18 + 8) = v20;
  v27 = *a1;
  pthread_self();
  v27[1].__sig = 0;
  return pthread_mutex_unlock(v27);
}

void sub_29632F050(_Unwind_Exception *a1)
{
  v3 = *v1;
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

BOOL QMIControl::startRetryTimer_sync(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 184))
  {
    v3 = *(a1 + 192);
    if (v3 <= 9)
    {
      *(a1 + 192) = v3 + 1;
      v5 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 88));
      v6 = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      v7 = *(a1 + 184);
      *(a1 + 184) = v6;
      if (v7)
      {
        dispatch_release(v7);
      }

      if (v6)
      {
        v8 = *(a1 + 64);
        if (!v8 || (v9 = *(a1 + 56), (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v11 = v10;
        p_shared_weak_owners = &v10->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v11);
        }

        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN10QMIControl20startRetryTimer_syncEU13block_pointerFvvE_block_invoke;
        handler[3] = &__block_descriptor_tmp_68_0;
        handler[5] = a1;
        handler[6] = v9;
        v22 = v11;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        object = v6;
        dispatch_retain(v6);
        handler[4] = a2;
        dispatch_source_set_event_handler(v6, handler);
        v13 = dispatch_time(0, 50000000);
        dispatch_source_set_timer(v6, v13, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC20uLL);
        dispatch_activate(v6);
        if (object)
        {
          dispatch_release(object);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_weak(v22);
        }

        std::__shared_weak_count::__release_weak(v11);
        dispatch_release(v6);
      }
    }
  }

  v14 = *(a1 + 184);
  v15 = *(a1 + 48);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v16 = *v16;
    }

    v17 = " not ";
    v18 = *(a1 + 192);
    *buf = 136315906;
    if (v14)
    {
      v17 = " ";
    }

    v25 = v16;
    v26 = 2080;
    v27 = v17;
    v28 = 1024;
    v29 = v18;
    v30 = 1024;
    v31 = 10;
    _os_log_impl(&dword_2962DD000, v15, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry timer is%sactive, retry attempts %d of max %d", buf, 0x22u);
  }

  result = v14 != 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN10QMIControl26handleClientIdRequest_syncEN3qmi11ServiceTypeERKN3ctl11GetClientId8ResponseE_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  for (result = QMIControl::ClientIdRequests::popFailedRequest((v1 + 128)); result != 255; result = QMIControl::ClientIdRequests::popFailedRequest((v1 + 128)))
  {
    v3 = result;
    v4 = *(v1 + 48);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v5 = *(v1 + 8);
      }

      *buf = 136315394;
      v8 = v5;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying request for client, svc type: %d", buf, 0x12u);
    }

    QMIControl::requestClientId_sync(v1, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t QMIControl::ClientIdRequests::popFailedRequest(pthread_mutex_t **this)
{
  v2 = *this;
  pthread_mutex_lock(*this);
  v2[1].__sig = pthread_self();
  v3 = this[6];
  if (v3)
  {
    v5 = (this + 5);
    v4 = this[5];
    v6 = this[4];
    v7 = v6->__opaque[20];
    v8 = *&v6->__opaque[24];
    v9 = v8 - 1;
    if (v8 == 1)
    {
      if (v4)
      {
        v15 = (this + 5);
        v16 = this[5];
        do
        {
          v17 = v16[28];
          v18 = v17 >= v7;
          v19 = v17 < v7;
          if (v18)
          {
            v15 = v16;
          }

          v16 = *&v16[8 * v19];
        }

        while (v16);
        if (v15 != v5 && v7 >= v15[28])
        {
          v20 = *(v15 + 1);
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = v20->__sig;
            }

            while (v20);
          }

          else
          {
            v22 = v15;
            do
            {
              v21 = *(v22 + 2);
              v23 = v21->__sig == v22;
              v22 = v21;
            }

            while (!v23);
          }

          if (v6 == v15)
          {
            this[4] = v21;
          }

          this[6] = (v3 - 1);
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v15);
          operator delete(v15);
        }
      }
    }

    else
    {
      v10 = (this + 5);
      if (v4)
      {
        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = *(v4 + 28);
            if (v7 >= v11)
            {
              break;
            }

            v4 = *v4;
            v5 = v10;
            if (!*v10)
            {
              goto LABEL_10;
            }
          }

          if (v11 >= v7)
          {
            break;
          }

          v4 = v4[1];
          if (!v4)
          {
            v5 = v10 + 1;
            goto LABEL_10;
          }
        }

        *(v4 + 8) = v9;
      }

      else
      {
LABEL_10:
        v12 = operator new(0x28uLL);
        v12[28] = v7;
        *(v12 + 8) = 0;
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 + 2) = v10;
        *v5 = v12;
        if (v6->__sig)
        {
          this[4] = v6->__sig;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(&this[5]->__sig, v12);
        this[6] = (this[6] + 1);
        *(v12 + 8) = v9;
      }
    }
  }

  else
  {
    v7 = 255;
  }

  v13 = *this;
  pthread_self();
  v13[1].__sig = 0;
  pthread_mutex_unlock(v13);
  return v7;
}

void sub_29632F5EC(_Unwind_Exception *a1)
{
  v3 = *v1;
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t QMIControl::ClientIdRequests::popClientForSvcType@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  pthread_mutex_lock(*a1);
  v6[1].__sig = pthread_self();
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (!v7)
  {
    v9 = (a1 + 16);
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v9 = v7;
      v10 = *(v7 + 32);
      if (v10 <= a2)
      {
        break;
      }

      v7 = *v9;
      v8 = v9;
      if (!*v9)
      {
        goto LABEL_8;
      }
    }

    if (v10 >= a2)
    {
      v11 = v9;
      if (v9[5] != v9[6])
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    }

    v7 = v9[1];
  }

  while (v7);
  v8 = v9 + 1;
LABEL_8:
  v11 = operator new(0x40uLL);
  v11[32] = a2;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  *(v11 + 5) = 0;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = v9;
  *v8 = v11;
  v12 = **(a1 + 8);
  if (v12)
  {
    *(a1 + 8) = v12;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 16), v11);
  ++*(a1 + 24);
  while (*(v11 + 5) != *(v11 + 6))
  {
LABEL_15:
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = *(v11 + 5);
    *a3 = 0;
    a3[1] = 0;
    v14 = v13[1];
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      a3[1] = v15;
      if (v15)
      {
        v16 = *v13;
        *a3 = *v13;
        v17 = v16 == 0;
        v19 = *(v11 + 5);
        v18 = *(v11 + 6);
        v20 = v19 + 1;
        if (v19 + 1 != v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v17 = 1;
        v19 = *(v11 + 5);
        v18 = *(v11 + 6);
        v20 = v19 + 1;
        if (v19 + 1 != v18)
        {
          do
          {
LABEL_24:
            v21 = *v20;
            *v20 = 0;
            *(v20 + 1) = 0;
            v22 = *(v20 - 1);
            *(v20 - 1) = v21;
            if (v22)
            {
              std::__shared_weak_count::__release_weak(v22);
            }

            ++v20;
          }

          while (v20 != v18);
          v18 = *(v11 + 6);
          v19 = v20 - 1;
        }
      }
    }

    else
    {
      v15 = 0;
      v17 = 1;
      v19 = *(v11 + 5);
      v18 = *(v11 + 6);
      v20 = v19 + 1;
      if (v19 + 1 != v18)
      {
        goto LABEL_24;
      }
    }

    while (v18 != v19)
    {
      v23 = *(v18 - 1);
      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      --v18;
    }

    *(v11 + 6) = v19;
    if (!v17)
    {
      goto LABEL_36;
    }

    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_35:
  *a3 = 0;
  a3[1] = 0;
LABEL_36:
  v24 = *a1;
  pthread_self();
  v24[1].__sig = 0;
  return pthread_mutex_unlock(v24);
}

void sub_29632F864(_Unwind_Exception *a1)
{
  v3 = *v1;
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

void ___ZN10QMIControl26handleClientIdRequest_syncEN3qmi11ServiceTypeERKN3ctl11GetClientId8ResponseE_block_invoke_62(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QMux::State::notifyClientAdded_sync(v3, a1 + 6, *(a2 + 1));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void *__copy_helper_block_e8_32c9_ZTS4QMux48c49_ZTSNSt3__110shared_ptrIN3qmi15QMuxClientIfaceEEE(void *result, void *a2)
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

void __destroy_helper_block_e8_32c9_ZTS4QMux48c49_ZTSNSt3__110shared_ptrIN3qmi15QMuxClientIfaceEEE(uint64_t a1)
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

void ___ZN10QMIControl26handleClientIdRequest_syncEN3qmi11ServiceTypeERKN3ctl11GetClientId8ResponseE_block_invoke_64(uint64_t a1, char *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = (v3 + 8);
    if (*(v3 + 31) < 0)
    {
      v7 = *v7;
    }

    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_2962DD000, v4, OS_LOG_TYPE_DEFAULT, "#I Stale client id request received (no client still wants it: svc=%d new_id=%d); releasing it [%s]", v9, 0x18u);
  }

  QMIControl::releaseClientId_sync(v3, *a2, a2[1]);
  v8 = *MEMORY[0x29EDCA608];
}

void QMIControl::flush(QMIControl *this, NSObject *a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *(this + 13);
  if (current_queue != *(v6 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x23E, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *(this + 13);
  }

  qmi::TransactionQueue::State::flush_sync(v6, a2);
}

void QMIControl::flush_sync(QMIControl *this, NSObject *a2)
{
  current_queue = dispatch_get_current_queue();
  v6 = *(this + 13);
  if (current_queue != *(v6 + 3))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x23E, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v4);
    v6 = *(this + 13);
  }

  qmi::TransactionQueue::State::flush_sync(v6, a2);
}

void QMIControl::dumpState_sync(QMIControl *this)
{
  v44 = *MEMORY[0x29EDCA608];
  v1 = *(this + 25);
  memset(&__p, 0, sizeof(__p));
  v2 = this + 208;
  if (v1 != this + 208)
  {
    std::pair<qmi::ServiceType,std::set<unsigned short>>::pair[abi:ne200100]<qmi::ServiceType const,std::set<unsigned short>,0>(buf, (v1 + 32));
    QMIControl::dumpState_sync(void)const::$_0::operator()(&v36, buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v36;
    std::__tree<unsigned short>::destroy(&v38 + 4, *&v40[2]);
    v3 = *(v1 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

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
        v9 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v9 - __p.__r_.__value_.__l.__size_ >= 2)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
          *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 8236;
          v18 = size + 2;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_35:
            __p.__r_.__value_.__l.__size_ = v18;
            goto LABEL_36;
          }

LABEL_33:
          *(&__p.__r_.__value_.__s + 23) = v18 & 0x7F;
LABEL_36:
          v16 = p_p + v18;
          goto LABEL_37;
        }

        v7 = __p.__r_.__value_.__l.__size_ + 2;
        if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 2 - v9)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v8 = __p.__r_.__value_.__r.__words[0];
        if (v9 <= 0x3FFFFFFFFFFFFFF2)
        {
          goto LABEL_18;
        }

        v13 = 0;
        v12 = 0x7FFFFFFFFFFFFFF7;
LABEL_27:
        v14 = operator new(v12);
        v15 = v14;
        if (size)
        {
          memmove(v14, v8, size);
        }

        *(v15 + size) = 8236;
        if (!v13)
        {
          operator delete(v8);
        }

        __p.__r_.__value_.__l.__size_ = v7;
        __p.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
        __p.__r_.__value_.__r.__words[0] = v15;
        v16 = (v15 + v7);
LABEL_37:
        *v16 = 0;
        std::pair<qmi::ServiceType,std::set<unsigned short>>::pair[abi:ne200100]<qmi::ServiceType const,std::set<unsigned short>,0>(buf, (v4 + 32));
        QMIControl::dumpState_sync(void)const::$_0::operator()(&v36, buf);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v36;
        }

        else
        {
          v19 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v36.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v19, v20);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
          std::__tree<unsigned short>::destroy(&v38 + 4, *&v40[2]);
          v21 = *(v4 + 1);
          if (v21)
          {
            do
            {
LABEL_47:
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
            goto LABEL_11;
          }
        }

        else
        {
          std::__tree<unsigned short>::destroy(&v38 + 4, *&v40[2]);
          v21 = *(v4 + 1);
          if (v21)
          {
            goto LABEL_47;
          }
        }

        do
        {
          v22 = *(v4 + 2);
          v5 = *v22 == v4;
          v4 = v22;
        }

        while (!v5);
LABEL_11:
        v4 = v22;
        if (v22 == v2)
        {
          goto LABEL_53;
        }
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 21) >= 2)
      {
        p_p = &__p;
        *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 8236;
        v18 = size + 2;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 2;
      v8 = &__p;
      v9 = 22;
LABEL_18:
      v10 = 2 * v9;
      if (v7 > 2 * v9)
      {
        v10 = v7;
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
      goto LABEL_27;
    }
  }

LABEL_53:
  v23 = *(this + 6);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = (this + 8);
    if (*(this + 31) < 0)
    {
      v24 = *v24;
    }

    v25 = *(this + 16);
    pthread_mutex_lock(v25);
    v25[1].__sig = pthread_self();
    v26 = *(this + 19);
    v27 = *(this + 16);
    pthread_self();
    v27[1].__sig = 0;
    pthread_mutex_unlock(v27);
    current_queue = dispatch_get_current_queue();
    v30 = *(this + 13);
    if (current_queue != *(v30 + 3))
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/QMI/QMITransactionQueue.cpp", 0x259, "dispatch_get_current_queue()==fState->queue()", "is not", "true", v28);
      v30 = *(this + 13);
    }

    qmi::TransactionQueue::State::dumpState_sync(v30, &v36);
    v31 = (v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v36 : v36.__r_.__value_.__r.__words[0];
    v32 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    v38 = v24;
    v39 = 2048;
    *v40 = v26;
    *&v40[8] = 2080;
    v41 = v31;
    v42 = 2080;
    v43 = v32;
    _os_log_impl(&dword_2962DD000, v23, OS_LOG_TYPE_DEFAULT, "#I [%s]   QMIControl(%zd clients pending) %s\n    ind_wake={%s}\n", buf, 0x2Au);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_65:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_66:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_2963300B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25)
{
  std::__tree<unsigned short>::destroy(v25 + 8, a25);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

pthread_mutex_t *QMIControl::ClientIdRequests::count(pthread_mutex_t **this)
{
  v2 = *this;
  pthread_mutex_lock(*this);
  v2[1].__sig = pthread_self();
  v3 = this[3];
  v4 = *this;
  pthread_self();
  v4[1].__sig = 0;
  pthread_mutex_unlock(v4);
  return v3;
}

void ___ZN10QMIControl20startRetryTimer_syncEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 48))
      {
        if (*(v3 + 184) == *(a1 + 64))
        {
          v5 = v4;
          (*(*(a1 + 32) + 16))();
          dispatch_source_cancel(*(a1 + 64));
          v6 = *(v3 + 184);
          *(v3 + 184) = 0;
          v4 = v5;
          if (v6)
          {
            dispatch_release(v6);
            v4 = v5;
          }
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v4;
        (v4->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void __copy_helper_block_e8_32b48c35_ZTSNSt3__18weak_ptrI10QMIControlEE64c22_ZTSN8dispatch6sourceE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 7);
  v4 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 64);
  a1[8] = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_32b48c35_ZTSNSt3__18weak_ptrI10QMIControlEE64c22_ZTSN8dispatch6sourceE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];

  _Block_object_dispose(v4, 7);
}

_WORD *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>,std::__tree_const_iterator<unsigned short,std::__tree_node<unsigned short,void *> *,long>>(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 > (v7 - result) >> 1)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    if (v7 <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v7;
    }

    v11 = v7 >= 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12 < 0)
    {
LABEL_65:
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    result = operator new(2 * v12);
    *a1 = result;
    *(a1 + 16) = &result[v13];
    if (v5 != a3)
    {
      do
      {
        *result = *(v5 + 13);
        v14 = v5[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v5[2];
            v16 = *v15 == v5;
            v5 = v15;
          }

          while (!v16);
        }

        ++result;
        v5 = v15;
      }

      while (v15 != a3);
    }

LABEL_32:
    *(a1 + 8) = result;
    return result;
  }

  v17 = *(a1 + 8);
  v18 = v17 - result;
  if (v18 >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *result = *(v5 + 13);
        v23 = v5[1];
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
            v24 = v5[2];
            v16 = *v24 == v5;
            v5 = v24;
          }

          while (!v16);
        }

        ++result;
        v5 = v24;
      }

      while (v24 != a3);
    }

    goto LABEL_32;
  }

  if (v18 < 0)
  {
    v25 = a2;
    do
    {
      v26 = *v25;
      if (*v25)
      {
        do
        {
          v22 = v26;
          v26 = v26[1];
        }

        while (v26);
      }

      else
      {
        do
        {
          v22 = v25[2];
          v16 = *v22 == v25;
          v25 = v22;
        }

        while (v16);
      }

      v25 = v22;
      v11 = __CFADD__(v18++, 1);
    }

    while (!v11);
  }

  else if (v17 == result)
  {
    v22 = a2;
  }

  else
  {
    v19 = a2;
    do
    {
      v21 = v19[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v19[2];
          v16 = *v22 == v19;
          v19 = v22;
        }

        while (!v16);
      }

      v19 = v22;
    }

    while (v18-- > 1);
  }

  if (v22 != a2)
  {
    do
    {
      *result = *(v5 + 13);
      v27 = v5[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v5[2];
          v16 = *v28 == v5;
          v5 = v28;
        }

        while (!v16);
      }

      ++result;
      v5 = v28;
    }

    while (v28 != v22);
  }

  if (v22 != a3)
  {
    do
    {
      *v17 = *(v22 + 13);
      v29 = v22[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v22[2];
          v16 = *v30 == v22;
          v22 = v30;
        }

        while (!v16);
      }

      ++v17;
      v22 = v30;
    }

    while (v30 != a3);
  }

  *(a1 + 8) = v17;
  return result;
}

void std::__tree<std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::set<unsigned short>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::set<unsigned short>>>>::destroy(*a1);
    std::__tree<std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::set<unsigned short>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::set<unsigned short>>>>::destroy(a1[1]);
    std::__tree<unsigned short>::destroy((a1 + 5), a1[6]);

    operator delete(a1);
  }
}

atomic_ullong *std::shared_ptr<QMIControl>::shared_ptr[abi:ne200100]<QMIControl,QMIControl::Deleter,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1D49928;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 56) = a2;
      *(a2 + 64) = v4;
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
  *(a2 + 56) = a2;
  *(a2 + 64) = v4;
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

void sub_29633086C(void *a1)
{
  v2 = __cxa_begin_catch(a1);
  QMIControl::Deleter::operator()(v2, v1);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<QMIControl *,QMIControl::Deleter,std::allocator<QMIControl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<QMIControl *,QMIControl::Deleter,std::allocator<QMIControl>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 88);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN10QMIControl7DeleterclEPS__block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t std::__shared_ptr_pointer<QMIControl *,QMIControl::Deleter,std::allocator<QMIControl>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029633732ALL)
  {
    if (((v2 & 0x800000029633732ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029633732ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029633732ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ctl::tlv::ServiceType>::write(uint64_t result, uint64_t *a2)
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

_WORD *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::ServiceType>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1D499A0;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::AssignedId>::write(_BYTE *result, uint64_t *a2)
{
  v2 = result[8];
  v3 = *a2;
  *(v3 + 3) = result[9];
  *(v3 + 4) = result[10];
  *a2 = v3 + 5;
  *v3 = v2;
  *(v3 + 1) = 2;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::AssignedId>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1D499F0;
  *(result + 9) = *(a1 + 9);
  return result;
}

char *qmi::MutableMessageBase::createTLV<ctl::tlv::PowerSaveDescriptor>(void *a1)
{
  v2 = operator new(0x18uLL);
  v2[8] = 1;
  *v2 = &unk_2A1D49A40;
  *(v2 + 3) = 0;
  v3 = v2 + 12;
  v2[16] = 0;
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
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

      v13 = v2;
      v14 = operator new(8 * v12);
      v2 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[8 * v9];
    *v15 = v2;
    v6 = v15 + 8;
    memcpy(v14, v7, v8);
    a1[1] = v14;
    a1[2] = v6;
    a1[3] = &v14[8 * v12];
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
  return v3;
}

uint64_t qmi::MutableMessageBase::TlvWrapper<ctl::tlv::PowerSaveDescriptor>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 3) = *(result + 12);
  *(v3 + 7) = *(result + 16);
  *a2 = v3 + 8;
  *v3 = v2;
  *(v3 + 1) = 5;
  return result;
}

char *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::PowerSaveDescriptor>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1D49A40;
  *(result + 12) = *(a1 + 12);
  return result;
}

void *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSet>::~TlvWrapper(void *result)
{
  *result = &unk_2A1D49A90;
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

void qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSet>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1D49A90;
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

void *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSet>::write(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = (*a2 + 3);
  *a2 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24) - v6;
  result = memcpy(v5, v6, v7);
  *a2 = &v5[v7];
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSet>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1D49A90;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

void sub_296330E50(_Unwind_Exception *a1)
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

void *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSetExt>::~TlvWrapper(void *result)
{
  *result = &unk_2A1D49AE0;
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

void qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSetExt>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1D49AE0;
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

void *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSetExt>::write(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  *(v4 + 3) = (*(a1 + 24) - *(a1 + 16)) >> 1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24) - v6;
  result = memcpy((v4 + 4), v6, v7);
  *a2 = v4 + 4 + v7;
  *v4 = v3;
  *(v4 + 1) = v4 + 4 + v7 - v5;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::IndicationSetExt>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1D49AE0;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
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

void sub_29633106C(_Unwind_Exception *a1)
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

_BYTE *qmi::MutableMessageBase::TlvWrapper<ctl::tlv::PowerSaveState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[8] = *(a1 + 8);
  *result = &unk_2A1D49B30;
  *(result + 3) = *(a1 + 12);
  return result;
}

void QMIControl::dumpState_sync(void)const::$_0::operator()(uint64_t a1, unsigned __int8 *a2)
{
  std::to_string(&v57, *a2);
  size = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) - 20) < 3)
    {
      v5 = SHIBYTE(v57.__r_.__value_.__r.__words[2]) + 3;
      v6 = &v57;
      v7 = 22;
LABEL_7:
      v9 = 2 * v7;
      if (v5 > 2 * v7)
      {
        v9 = v5;
      }

      if ((v9 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v9 | 7) + 1;
      }

      if (v9 >= 0x17)
      {
        v8 = v10;
      }

      else
      {
        v8 = 23;
      }

      v11 = v7 == 22;
      goto LABEL_16;
    }

    v16 = &v57;
LABEL_23:
    v17 = v16 + size;
    v17[2] = 91;
    *v17 = 8250;
    v18 = size + 3;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = size + 3;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v18 & 0x7F;
    }

    v15 = v16 + v18;
    goto LABEL_27;
  }

  size = v57.__r_.__value_.__l.__size_;
  v7 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - v57.__r_.__value_.__l.__size_ >= 3)
  {
    v16 = v57.__r_.__value_.__r.__words[0];
    goto LABEL_23;
  }

  v8 = 0x7FFFFFFFFFFFFFF7;
  v5 = v57.__r_.__value_.__l.__size_ + 3;
  if (0x7FFFFFFFFFFFFFF7 - (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v57.__r_.__value_.__l.__size_ + 3 - v7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v57.__r_.__value_.__r.__words[0];
  if (v7 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_7;
  }

  v11 = 0;
LABEL_16:
  v12 = operator new(v8);
  v13 = v12;
  if (size)
  {
    memmove(v12, v6, size);
  }

  v14 = v13 + size;
  *(v14 + 2) = 91;
  *v14 = 8250;
  if (!v11)
  {
    operator delete(v6);
  }

  v57.__r_.__value_.__l.__size_ = v5;
  v57.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
  v57.__r_.__value_.__r.__words[0] = v13;
  v15 = (v13 + v5);
LABEL_27:
  *v15 = 0;
  v58 = v57;
  memset(&v57, 0, sizeof(v57));
  v19 = *(a2 + 1);
  v20 = a2 + 16;
  memset(&__p, 0, sizeof(__p));
  if (v19 == a2 + 16)
  {
    goto LABEL_80;
  }

  std::to_string(&v61, *(v19 + 13));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    __p = v61;
    v21 = *(v19 + 1);
    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
    __p = v61;
    v21 = *(v19 + 1);
    if (!v21)
    {
      do
      {
LABEL_34:
        v22 = *(v19 + 2);
        v23 = *v22 == v19;
        v19 = v22;
      }

      while (!v23);
      goto LABEL_36;
    }
  }

  do
  {
    v22 = v21;
    v21 = *v21;
  }

  while (v21);
LABEL_36:
  if (v22 != v20)
  {
    while (1)
    {
      v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        break;
      }

      v24 = __p.__r_.__value_.__l.__size_;
      v26 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
      v27 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v27 != __p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_60:
        p_p->__r_.__value_.__s.__data_[v24] = 44;
        v35 = v24 + 1;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = v35;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v35 & 0x7F;
        }

        v34 = p_p + v35;
        goto LABEL_64;
      }

      if (v26 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if (v27 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_45;
      }

      v31 = 0;
      v30 = 0x7FFFFFFFFFFFFFF7;
LABEL_54:
      v32 = operator new(v30);
      v33 = v32;
      if (v27)
      {
        memmove(v32, p_p, v27);
      }

      *(v33 + v27) = 44;
      if (!v31)
      {
        operator delete(p_p);
      }

      __p.__r_.__value_.__l.__size_ = v26;
      __p.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v33;
      v34 = (v33 + v26);
LABEL_64:
      *v34 = 0;
      std::to_string(&v61, *(v22 + 13));
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v61;
      }

      else
      {
        v36 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v61.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v36, v37);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
        v38 = *(v22 + 1);
        if (v38)
        {
          do
          {
LABEL_74:
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
          goto LABEL_38;
        }
      }

      else
      {
        v38 = *(v22 + 1);
        if (v38)
        {
          goto LABEL_74;
        }
      }

      do
      {
        v39 = *(v22 + 2);
        v23 = *v39 == v22;
        v22 = v39;
      }

      while (!v23);
LABEL_38:
      v22 = v39;
      if (v39 == v20)
      {
        goto LABEL_80;
      }
    }

    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 22)
    {
      goto LABEL_60;
    }

    v26 = 23;
    v27 = 22;
LABEL_45:
    v28 = 2 * v27;
    if (v26 > 2 * v27)
    {
      v28 = v26;
    }

    if ((v28 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v28 | 7) + 1;
    }

    if (v28 >= 0x17)
    {
      v30 = v29;
    }

    else
    {
      v30 = 23;
    }

    v31 = v27 == 22;
    goto LABEL_54;
  }

LABEL_80:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &__p;
  }

  else
  {
    v40 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = __p.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&v58, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v60 = v42->__r_.__value_.__r.__words[2];
  v59 = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = SHIBYTE(v60);
  if ((SHIBYTE(v60) & 0x8000000000000000) == 0)
  {
    v45 = &v59;
    if (SHIBYTE(v60) == 22)
    {
      v46 = 22;
      v47 = 23;
LABEL_92:
      v49 = 2 * v46;
      if (v47 > 2 * v46)
      {
        v49 = v47;
      }

      if ((v49 | 7) == 0x17)
      {
        v50 = 25;
      }

      else
      {
        v50 = (v49 | 7) + 1;
      }

      if (v49 >= 0x17)
      {
        v48 = v50;
      }

      else
      {
        v48 = 23;
      }

      v51 = v46 == 22;
      goto LABEL_101;
    }

LABEL_107:
    *(v45 + v44) = 93;
    v55 = v44 + 1;
    if (SHIBYTE(v60) < 0)
    {
      *(&v59 + 1) = v55;
    }

    else
    {
      HIBYTE(v60) = v55 & 0x7F;
    }

    v54 = v45 + v55;
    goto LABEL_111;
  }

  v44 = *(&v59 + 1);
  v47 = v60 & 0x7FFFFFFFFFFFFFFFLL;
  v46 = (v60 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v46 != *(&v59 + 1))
  {
    v45 = v59;
    goto LABEL_107;
  }

  v48 = 0x7FFFFFFFFFFFFFF7;
  if (v47 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v45 = v59;
  if (v46 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_92;
  }

  v51 = 0;
LABEL_101:
  v52 = operator new(v48);
  v53 = v52;
  if (v46)
  {
    memmove(v52, v45, v46);
  }

  v53[v46] = 93;
  if (!v51)
  {
    operator delete(v45);
  }

  *(&v59 + 1) = v47;
  v60 = v48 | 0x8000000000000000;
  *&v59 = v53;
  v54 = &v53[v47];
LABEL_111:
  *v54 = 0;
  *a1 = v59;
  *(a1 + 16) = v60;
  v60 = 0;
  v59 = 0uLL;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_113:
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_117:
      operator delete(v57.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_113;
  }

  operator delete(v58.__r_.__value_.__l.__data_);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_117;
  }
}

void sub_296331684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
LABEL_3:
    if (a22 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(a23);
  if (a22 < 0)
  {
LABEL_4:
    operator delete(a17);
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

uint64_t std::pair<qmi::ServiceType,std::set<unsigned short>>::pair[abi:ne200100]<qmi::ServiceType const,std::set<unsigned short>,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 8) = a1 + 16;
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  v5 = *(a2 + 8);
  v6 = (a2 + 16);
  if (v5 != (a2 + 16))
  {
    do
    {
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v16 = 0xAAAAAAAAAAAAAAAALL;
      v7 = std::__tree<unsigned short>::__find_equal<unsigned short>(v4, v3, &v16, &v15, v5 + 13);
      if (*v7)
      {
        v8 = *(v5 + 1);
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = operator new(0x20uLL);
        v9[13] = v5[13];
        v10 = v16;
        *v9 = 0;
        *(v9 + 1) = 0;
        *(v9 + 2) = v10;
        *v7 = v9;
        v11 = **v4;
        if (v11)
        {
          *v4 = v11;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 16), v9);
        ++*(a1 + 24);
        v8 = *(v5 + 1);
        if (v8)
        {
          do
          {
LABEL_10:
            v12 = v8;
            v8 = *v8;
          }

          while (v8);
          goto LABEL_3;
        }
      }

      do
      {
        v12 = *(v5 + 2);
        v13 = *v12 == v5;
        v5 = v12;
      }

      while (!v13);
LABEL_3:
      v5 = v12;
    }

    while (v12 != v6);
  }

  return a1;
}

void std::__tree<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>>>::destroy(*a1);
    std::__tree<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::__map_value_compare<qmi::ServiceType,std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>,std::less<qmi::ServiceType>,true>,std::allocator<std::__value_type<qmi::ServiceType,std::vector<std::weak_ptr<qmi::QMuxClientIface>>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
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
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A1899A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1899A80))
  {
    qword_2A1899A88 = 0;
    unk_2A1899A90 = 0;
    __cxa_guard_release(&qword_2A1899A80);
  }

  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_1);
  }

  return &qword_2A1899A88;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void ATCSThreadedIPCDriver::ATCSThreadedIPCDriver(ATCSThreadedIPCDriver *this)
{
  *this = &unk_2A1D48A80;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.bb", "atcs.disp");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C258F30](this + 32, v5);
  MEMORY[0x29C258F40](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1D49B88;
  *(this + 5) = 0;
  v2 = operator new(0x48uLL);
  v2[1].__sig = 0;
  if ((initialized & 1) == 0)
  {
    pthread_key_create(&threadInfoKey, 0);
    initialized = 1;
  }

  pthread_mutex_init(v2, 0);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v2;
  v3 = malloc(0x30uLL);
  *(this + 8) = v3;
  pthread_cond_init(v3, 0);
  *(this + 9) = 0;
  *(this + 20) = 0;
}

void sub_296331B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  ATCSMutex::~ATCSMutex(v11);
  MEMORY[0x29C258F40](v10 + 32);
  v13 = *(v10 + 24);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t ATCSThreadedIPCDriver::bootstrapInternal(_opaque_pthread_t *this, int a2)
{
  v4 = *&this->__opaque[24];
  pthread_mutex_lock(v4);
  v4[1].__sig = pthread_self();
  if (a2)
  {
    if ((*&this->__opaque[56] & 3) == 3 || (*&this->__opaque[56] & 3) == 0)
    {
      ATCSThreadedIPCDriver::startWorkersIfNeeded_nl(this, *&this->__opaque[56] & 3 ^ 3);
    }
  }

  LOBYTE(this->__cleanup_stack) = 1;
  v6 = *&this->__opaque[24];
  pthread_self();
  v6[1].__sig = 0;
  return pthread_mutex_unlock(v6);
}

void sub_296331BE4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

pthread_t ATCSThreadedIPCDriver::startRemainingWorkers_nl(pthread_t this)
{
  if ((*&this->__opaque[56] & 3) == 3 || (*&this->__opaque[56] & 3) == 0)
  {
    return ATCSThreadedIPCDriver::startWorkersIfNeeded_nl(this, *&this->__opaque[56] & 3 ^ 3u);
  }

  return this;
}

uint64_t ATCSThreadedIPCDriver::tearDownInternal(ATCSThreadedIPCDriver *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  ATCSThreadedIPCDriver::stopWorkersInternal(this);
  v3 = *(this + 5);
  pthread_self();
  v3[1].__sig = 0;
  return pthread_mutex_unlock(v3);
}

void sub_296331C7C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

void ATCSThreadedIPCDriver::stopWorkersInternal(ATCSThreadedIPCDriver *this)
{
  while (1)
  {
    v4 = *(this + 18);
    *(this + 20) = v4;
    if ((v4 & 3) == 0 && !*(this + 19))
    {
      break;
    }

    (*(*this + 96))(this);
    (*(*this + 104))(this);
    v2 = *(this + 5);
    v3 = pthread_self();
    v2[1].__sig = 0;
    pthread_cond_wait(*(this + 8), v2);
    v2[1].__sig = v3;
  }

  pthread_join(*(this + 6), 0);
  *(this + 6) = 0;
  pthread_join(*(this + 7), 0);
  *(this + 7) = 0;
  v5 = *(this + 18);
  if (v5)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSThreadedIPCDriver.cpp", 0x63, "fRunningWorkers", "==", "kNobody", v5, 0);
  }
}

pthread_t ATCSThreadedIPCDriver::startWorkersIfNeeded_nl(pthread_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *&result->__opaque[56];
    if (v3)
    {
      _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSThreadedIPCDriver.cpp", 0x50, "fRunningWorkers", "==", "kNobody", v3, 0);
    }

    *(v2 + 76) = 3;
    *(v2 + 48) = ATCSThreadSpawn("atcsfdipc reader", ATCSThreadedIPCDriver::readWorkerStatic, v2, 0);
    result = ATCSThreadSpawn("atcsfdipc writer", ATCSThreadedIPCDriver::writeWorkerStatic, v2, 0);
    for (*(v2 + 56) = result; (*(v2 + 76) & 3) != 0; v4[1].__sig = v5)
    {
      v4 = *(v2 + 40);
      v5 = pthread_self();
      v4[1].__sig = 0;
      result = pthread_cond_wait(*(v2 + 64), v4);
    }
  }

  return result;
}

uint64_t ATCSThreadedIPCDriver::startRemainingWorkers(_opaque_pthread_t *this)
{
  v2 = *&this->__opaque[24];
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  if ((*&this->__opaque[56] & 3) == 3 || (*&this->__opaque[56] & 3) == 0)
  {
    ATCSThreadedIPCDriver::startWorkersIfNeeded_nl(this, *&this->__opaque[56] & 3 ^ 3);
  }

  v4 = *&this->__opaque[24];
  pthread_self();
  v4[1].__sig = 0;
  return pthread_mutex_unlock(v4);
}

void sub_296331F24(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

pthread_t ATCSThreadedIPCDriver::startWorkersInternal(ATCSThreadedIPCDriver *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSThreadedIPCDriver.cpp", 0x50, "fRunningWorkers", "==", "kNobody", v2, 0);
  }

  *(this + 19) = 3;
  *(this + 6) = ATCSThreadSpawn("atcsfdipc reader", ATCSThreadedIPCDriver::readWorkerStatic, this, 0);
  result = ATCSThreadSpawn("atcsfdipc writer", ATCSThreadedIPCDriver::writeWorkerStatic, this, 0);
  for (*(this + 7) = result; (*(this + 76) & 3) != 0; v4[1].__sig = v5)
  {
    v4 = *(this + 5);
    v5 = pthread_self();
    v4[1].__sig = 0;
    result = pthread_cond_wait(*(this + 8), v4);
  }

  return result;
}

uint64_t ATCSThreadedIPCDriver::readWorker(ATCSThreadedIPCDriver *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  v3 = *(this + 4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEBUG, "#D Reader started", buf, 2u);
  }

  LODWORD(v4) = *(this + 9) | 1;
  HIDWORD(v4) = (*(this + 9) & 0xFFFFFFFEFFFFFFFELL) >> 32;
  *(this + 9) = v4;
  pthread_cond_broadcast(*(this + 8));
  (*(*this + 88))(this, 1);
  v5 = *(this + 4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEBUG, "#D Reader stopped", v8, 2u);
  }

  *(this + 18) &= ~1u;
  *(this + 20) &= ~1u;
  pthread_cond_broadcast(*(this + 8));
  v6 = *(this + 5);
  pthread_self();
  v6[1].__sig = 0;
  pthread_mutex_unlock(v6);
  return 0;
}

void sub_2963321B4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t ATCSThreadedIPCDriver::writeWorker(ATCSThreadedIPCDriver *this)
{
  v2 = *(this + 5);
  pthread_mutex_lock(v2);
  v2[1].__sig = pthread_self();
  v3 = *(this + 4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2962DD000, v3, OS_LOG_TYPE_DEBUG, "#D Writer started", buf, 2u);
  }

  LODWORD(v4) = *(this + 9) | 2;
  HIDWORD(v4) = (*(this + 9) & 0xFFFFFFFDFFFFFFFDLL) >> 32;
  *(this + 9) = v4;
  pthread_cond_broadcast(*(this + 8));
  (*(*this + 80))(this, 2);
  v5 = *(this + 4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_2962DD000, v5, OS_LOG_TYPE_DEBUG, "#D Writer stopped", v8, 2u);
  }

  *(this + 18) &= ~2u;
  *(this + 20) &= ~2u;
  pthread_cond_broadcast(*(this + 8));
  v6 = *(this + 5);
  pthread_self();
  v6[1].__sig = 0;
  pthread_mutex_unlock(v6);
  return 0;
}

void sub_29633231C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  pthread_self();
  v3[1].__sig = 0;
  pthread_mutex_unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t *sGetWeakPtr(void)
{
  if (atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire))
  {
    return &qword_2A1899AA0;
  }

  if (__cxa_guard_acquire(&_MergedGlobals_1))
  {
    __cxa_atexit(std::weak_ptr<ATCSRouterIPCDriver>::~weak_ptr, &qword_2A1899AA0, &dword_2962DD000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  return &qword_2A1899AA0;
}

uint64_t std::weak_ptr<ATCSRouterIPCDriver>::~weak_ptr(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 8));
    return v1;
  }

  return result;
}

void ATCSRouterIPCDriver::create(uint64_t *a1@<X0>, std::__shared_weak_count **a2@<X8>)
{
  v4 = operator new(0x98uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_2A1D49DE8;
  v6 = v4 + 1;
  ATCSRouterIPCDriver::ATCSRouterIPCDriver(&v4[1], a1);
  v4[1].__vftable = &unk_2A1D49E38;
  v7 = v4[2].__vftable;
  if (v7)
  {
    if (v7->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v4[1].__shared_weak_owners_ = v6;
      v4[2].__vftable = v4;
      std::__shared_weak_count::__release_weak(v7);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_weak_owners_ = v6;
    v4[2].__vftable = v4;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  shared_owners = v4[2].__shared_owners_;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN19ATCSRouterIPCDriver4initEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = v4 + 1;
  dispatch_sync(shared_owners, block);
  *a2 = v6;
  a2[1] = v4;
}

void sub_296332588(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ATCSRouterIPCDriver::init(ATCSRouterIPCDriver *this)
{
  v1 = *(this + 4);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN19ATCSRouterIPCDriver4initEv_block_invoke;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = this;
  dispatch_sync(v1, block);
}

uint64_t ATCSRouterIPCDriver::ATCSRouterIPCDriver(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2A1D49C80;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v5 = dispatch_queue_create("ATCSRouterIPCDriver", v4);
  v7 = *a2;
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 40);
  }

  v8 = **(v7 + 16);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (v8)
  {
    v9 = operator new(8 * v8);
    *(a1 + 64) = v9;
    *(a1 + 80) = &v9[8 * v8];
    bzero(v9, 8 * v8);
    *(a1 + 72) = &v9[8 * v8];
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v14 = 0;
  v10 = (*(**(v7 + 24) + 88))(*(v7 + 24), &v14);
  v11 = a2[2];
  v12 = v14;
  if (v11 < v14)
  {
    v12 = a2[2];
  }

  if (!v10)
  {
    v11 = v12;
  }

  *(a1 + 56) = v11;
  return a1;
}

void sub_29633275C(_Unwind_Exception *a1)
{
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v2);
  v4 = *(v1 + 24);
  if (!v4)
  {
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v4);
  _Unwind_Resume(a1);
}

void ATCSRouterIPCDriver::~ATCSRouterIPCDriver(dispatch_object_t *this)
{
  *this = &unk_2A1D49C80;
  dispatch_release(this[4]);
  v2 = this[14];
  if (v2 == (this + 11))
  {
    (*(*v2 + 32))(v2);
    v3 = this[8];
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = this[8];
  if (v3)
  {
LABEL_5:
    this[9] = v3;
    operator delete(v3);
  }

LABEL_6:
  v4 = this[6];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

{
  ATCSRouterIPCDriver::~ATCSRouterIPCDriver(this);

  operator delete(v1);
}

void ___ZN19ATCSRouterIPCDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    v7 = v1;
    v8 = __cxa_guard_acquire(&_MergedGlobals_1);
    v1 = v7;
    if (v8)
    {
      __cxa_atexit(std::weak_ptr<ATCSRouterIPCDriver>::~weak_ptr, &qword_2A1899AA0, &dword_2962DD000);
      __cxa_guard_release(&_MergedGlobals_1);
      v1 = v7;
    }
  }

  v2 = *(v1 + 24);
  if (!v2 || (v3 = *(v1 + 16), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v6 = qword_2A1899AA8;
  qword_2A1899AA0 = v3;
  qword_2A1899AA8 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ATCSRouterIPCDriver::setCallback_sync(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(*(a1 + 64) + 8 * a3) = a2;
  v4 = *(*(a1 + 40) + 16);
  v5 = mav_router_service_register_receive();
  if (v5)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x52, "result", "==", "MAV_ROUTER_SUCCESS", v5, 0);
  }

  v6 = *(*(a1 + 40) + 16);
  v7 = mav_router_service_register_error_handler();
  if (v7)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x58, "result", "==", "MAV_ROUTER_SUCCESS", v7, 0);
  }
}

uint64_t ATCSRouterIPCDriver::handleError(int a1, int a2, char *__s)
{
  memset(&__dst, 170, sizeof(__dst));
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

    p_dst = operator new(v7);
    __dst.__r_.__value_.__l.__size_ = v5;
    __dst.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v4;
    p_dst = &__dst;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memcpy(p_dst, __s, v5);
LABEL_10:
  p_dst->__r_.__value_.__s.__data_[v5] = 0;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_1))
  {
    __cxa_atexit(std::weak_ptr<ATCSRouterIPCDriver>::~weak_ptr, &qword_2A1899AA0, &dword_2962DD000);
    __cxa_guard_release(&_MergedGlobals_1);
  }

  v16 = 0;
  v17 = 0;
  if (qword_2A1899AA8)
  {
    v8 = std::__shared_weak_count::lock(qword_2A1899AA8);
    v17 = v8;
    if (!v8)
    {
      goto LABEL_24;
    }

    v16 = qword_2A1899AA0;
    if (qword_2A1899AA0)
    {
      v9 = *(qword_2A1899AA0 + 32);
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 1174405120;
      v13[2] = ___ZN19ATCSRouterIPCDriver11handleErrorEP24mav_router_context_tag_t20mav_router_channel_tPKcPv_block_invoke;
      v13[3] = &__block_descriptor_tmp_8_0;
      v13[4] = qword_2A1899AA0;
      v14 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      dispatch_async(v9, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = v14;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v11 = v17;
  if (v17 && !atomic_fetch_add((v17 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_24:
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_27:
  operator delete(__dst.__r_.__value_.__l.__data_);
  return 0;
}

void sub_296332DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](v11 + 32);
  std::shared_ptr<ATCSAdaptiveTimer>::~shared_ptr[abi:ne200100](va);
  operator delete(v10);
  _Unwind_Resume(a1);
}

void ___ZN19ATCSRouterIPCDriver11handleErrorEP24mav_router_context_tag_t20mav_router_channel_tPKcPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 120) & 1) != 0 || !*(v1 + 112))
  {
    return;
  }

  v2 = (a1 + 48);
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    v3 = a1;
    v4 = strlen((a1 + 48));
    if (v4 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_6;
    }

LABEL_19:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = a1;
  v2 = *v2;
  v4 = strlen(v2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_19;
  }

LABEL_6:
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
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
  }

  else
  {
    HIBYTE(v10) = v4;
    v6 = __dst;
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  memmove(v6, v2, v5);
LABEL_14:
  *(v5 + v6) = 0;
  v8 = *(v1 + 112);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v8 + 48))(v8, __dst);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  *(*(v3 + 32) + 120) = 1;
}

void sub_296332F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19ATCSRouterIPCDriverEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32c47_ZTSNSt3__110shared_ptrI19ATCSRouterIPCDriverEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
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

void ATCSRouterIPCDriver::registerDispatcher(ATCSRouterIPCDriver *this, ATCSDispatcherCallback *a2, void *a3, void **a4)
{
  *a4 = a3;
  v4 = *(this + 4);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN19ATCSRouterIPCDriver18registerDispatcherEP22ATCSDispatcherCallbackPvRS2__block_invoke;
  block[3] = &__block_descriptor_tmp_9_0;
  block[4] = this;
  block[5] = a3;
  block[6] = a2;
  dispatch_sync(v4, block);
}

void ___ZN19ATCSRouterIPCDriver18registerDispatcherEP22ATCSDispatcherCallbackPvRS2__block_invoke(void *a1)
{
  v1 = a1[4];
  *(*(v1 + 64) + 8 * a1[5]) = a1[6];
  v2 = *(*(v1 + 40) + 16);
  v3 = mav_router_service_register_receive();
  if (v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x52, "result", "==", "MAV_ROUTER_SUCCESS", v3, 0);
  }

  v4 = *(*(v1 + 40) + 16);
  v5 = mav_router_service_register_error_handler();
  if (v5)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x58, "result", "==", "MAV_ROUTER_SUCCESS", v5, 0);
  }
}

void ATCSRouterIPCDriver::unregisterDispatcher(ATCSRouterIPCDriver *this, ATCSDispatcherCallback *a2, void **a3)
{
  v3 = *(this + 4);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN19ATCSRouterIPCDriver20unregisterDispatcherEP22ATCSDispatcherCallbackRPv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10;
  v4[4] = this;
  v4[5] = a3;
  dispatch_sync(v3, v4);
}

void ___ZN19ATCSRouterIPCDriver20unregisterDispatcherEP22ATCSDispatcherCallbackRPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(*(v1 + 64) + 8 * **(a1 + 40)) = 0;
  v2 = *(*(v1 + 40) + 16);
  v3 = mav_router_service_register_receive();
  if (v3)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x52, "result", "==", "MAV_ROUTER_SUCCESS", v3, 0);
  }

  v4 = *(*(v1 + 40) + 16);
  v5 = mav_router_service_register_error_handler();
  if (v5)
  {

    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/Common/IPCDriver/ATCSRouterIPCDriver.cpp", 0x58, "result", "==", "MAV_ROUTER_SUCCESS", v5, 0);
  }
}

uint64_t ATCSRouterIPCDriver::setErrorHandler(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN19ATCSRouterIPCDriver15setErrorHandlerENSt3__18functionIFvNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_16_1;
  v6[4] = a1;
  v3 = *(a2 + 24);
  if (!v3)
  {
    v8 = 0;
    dispatch_sync(v2, v6);
    result = v8;
    if (v8 != v7)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v3 == a2)
  {
    v8 = v7;
    (*(*v3 + 24))(v3, v7);
    dispatch_sync(v2, v6);
    result = v8;
    if (v8 != v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = (*(*result + 32))(result);
    goto LABEL_10;
  }

  v8 = (*(*v3 + 16))(v3);
  dispatch_sync(v2, v6);
  result = v8;
  if (v8 == v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN19ATCSRouterIPCDriver15setErrorHandlerENSt3__18functionIFvNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEEEE_block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  if (v3)
  {
    if (v3 == a1 + 40)
    {
      v11 = v10;
      (*(*v3 + 24))(v3, v10);
    }

    else
    {
      v11 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v11 = 0;
  }

  v4 = (v2 + 88);
  if ((v2 + 88) == v10)
  {
LABEL_15:
    result = v11;
    if (v11 != v10)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v5 = v11;
  v6 = *(v2 + 112);
  if (v11 == v10)
  {
    if (v6 != v4)
    {
      (*(*v11 + 24))();
      (*(*v11 + 32))(v11);
      v11 = *(v2 + 112);
      v8 = v11;
      *(v2 + 112) = v4;
      result = v8;
      if (v8 == v10)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    memset(v12, 170, 24);
    (*(*v11 + 24))();
    (*(*v11 + 32))(v11);
    v11 = 0;
    (*(**(v2 + 112) + 24))(*(v2 + 112), v10);
    (*(**(v2 + 112) + 32))(*(v2 + 112));
    *(v2 + 112) = 0;
    v11 = v10;
    (*(v12[0] + 24))(v12, v2 + 88);
    (*(v12[0] + 32))(v12);
    *(v2 + 112) = v4;
    result = v11;
    if (v11 != v10)
    {
      goto LABEL_16;
    }

LABEL_19:
    result = (*(*result + 32))(result);
    goto LABEL_20;
  }

  if (v6 == v4)
  {
    (*(*v6 + 24))(*(v2 + 112), v10);
    (*(**(v2 + 112) + 32))(*(v2 + 112));
    *(v2 + 112) = v11;
    v11 = v10;
    goto LABEL_15;
  }

  v11 = *(v2 + 112);
  *(v2 + 112) = v5;
  result = v6;
  if (v6 == v10)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_20:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29633385C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __copy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  if (result)
  {
    if (result == a2 + 40)
    {
      *(a1 + 64) = a1 + 40;
      v4 = *(**(a2 + 64) + 24);

      return v4();
    }

    else
    {
      result = (*(*result + 16))(result);
      *(a1 + 64) = result;
    }
  }

  else
  {
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t __destroy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;
  result = *(a1 + 64);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void __copy_helper_block_e8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_e8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void std::__shared_ptr_emplace<ATCSRouterIPCDriverWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D49DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ATCSRouterIPCDriverWrapper::~ATCSRouterIPCDriverWrapper(dispatch_object_t *this)
{
  ATCSRouterIPCDriver::~ATCSRouterIPCDriver(this);

  operator delete(v1);
}

uint64_t std::function<void ()(std::string)>::~function(uint64_t a1)
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

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D49EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ATCSCounted::ATCSCounted(ATCSCounted *this)
{
  *this = &unk_2A1D49F00;
  *(this + 2) = 0;
}

{
  *this = &unk_2A1D49F00;
  *(this + 2) = 0;
}

void ATCSCounted::~ATCSCounted(atomic_uint *this)
{
  *this = &unk_2A1D49F00;
  if (atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x29, "atomicAdd(&fRefCount, (int) 0xa5a5a5a5)", "==", "0", atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed), 0);
  }
}

{
  *this = &unk_2A1D49F00;
  if (atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed))
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x29, "atomicAdd(&fRefCount, (int) 0xa5a5a5a5)", "==", "0", atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed), 0);
  }
}

{
  *this = &unk_2A1D49F00;
  if (atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed))
  {
    v1 = this;
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x29, "atomicAdd(&fRefCount, (int) 0xa5a5a5a5)", "==", "0", atomic_fetch_add_explicit(this + 2, 0xA5A5A5A5, memory_order_relaxed), 0);
    this = v1;
  }

  operator delete(this);
}

void ATCSCounted::incRef(atomic_uint *this)
{
  add_explicit = atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  if (add_explicit < 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
  }
}

{
  add_explicit = atomic_fetch_add_explicit(this + 2, 1u, memory_order_relaxed);
  if (add_explicit < 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x35, "prevRefCount", ">=", "0", add_explicit, 0);
  }
}

void ATCSCounted::decRef(atomic_uint *this)
{
  add = atomic_fetch_add(this + 2, 0xFFFFFFFF);
  if (add <= 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
  }

  else if (this)
  {
    if (add == 1)
    {
      (*(*this + 8))();
    }
  }
}

{
  add = atomic_fetch_add(this + 2, 0xFFFFFFFF);
  if (add <= 0)
  {
    _ATCSException::triggerAssertion("/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/ATCommandStudio/AT/Interface/ATDispatcherSupport.cpp", 0x41, "prevRefCount", ">", "0", add, 0);
  }

  else if (this)
  {
    if (add == 1)
    {
      (*(*this + 8))();
    }
  }
}

void CallbacksHandler::registerSendCallback(uint64_t **a1, unsigned int a2, void *aBlock)
{
  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
    v7 = (a1 + 1);
    v6 = a1[1];
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = 0;
  v7 = (a1 + 1);
  v6 = a1[1];
  if (!v6)
  {
LABEL_5:
    v8 = v7;
LABEL_11:
    v10 = operator new(0x30uLL);
    v10[16] = a2;
    *(v10 + 5) = 0;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v8;
    *v7 = v10;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v10);
    a1[2] = (a1[2] + 1);
    v12 = *(v10 + 5);
    *(v10 + 5) = v5;
    if (!v12)
    {
      return;
    }

LABEL_16:
    _Block_release(v12);
    return;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 16);
      if (v9 <= a2)
      {
        break;
      }

      v6 = *v8;
      v7 = v8;
      if (!*v8)
      {
        goto LABEL_11;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      v7 = v8 + 1;
      goto LABEL_11;
    }
  }

  v12 = v8[5];
  v8[5] = v5;
  if (v12)
  {
    goto LABEL_16;
  }
}

void sub_296334058(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void CallbacksHandler::deRegisterSendCallback(CallbacksHandler *this, unsigned int a2)
{
  v4 = this + 8;
  v3 = *(this + 1);
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 16);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 16) <= a2)
    {
      v10 = *(v5 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = *(v12 + 2);
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*this == v5)
      {
        *this = v11;
      }

      --*(this + 2);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      v14 = *(v5 + 5);
      if (v14)
      {
        _Block_release(v14);
      }

      operator delete(v5);
    }
  }
}

void *CallbacksHandler::getSendCallback@<X0>(CallbacksHandler *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = *(this + 1);
  v4 = this + 8;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 16);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == v4)
  {
LABEL_10:
    result = 0;
    *a3 = 0;
  }

  else if (*(v7 + 16) <= a2)
  {
    result = *(v7 + 5);
    if (result)
    {
      result = _Block_copy(result);
    }

    *a3 = result;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

char *ctl::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

uint64_t ctl::tlv::parseField(uint64_t a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 1), a2, 1);
  a3[1] = *(a1 + 1);
  return a1 + 2;
}

_BYTE *ctl::tlv::writeField(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  return a1 + 2;
}

{
  *a1 = *a2;
  return a1 + 1;
}

uint64_t ctl::tlv::getFieldSize()
{
  return 2;
}

{
  return 2;
}

{
  return 5;
}

{
  return 1;
}

{
  return 1;
}

{
  return 4;
}

uint64_t tlv::parseV<ctl::tlv::AssignedId>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 1);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 1), v4, 1);
  v6 = *(v3 + 1);
  *a1 = (v3 + 2);
  return v5 | (v6 << 8);
}

uint64_t sub_296334318(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return v2;
}

_BYTE **tlv::writeV<ctl::tlv::AssignedId>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  v2[1] = a2[1];
  *result = v2 + 2;
  return result;
}

char *ctl::tlv::parseField(tlv *a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 2);
  *a3 = *a1;
  return a1 + 2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  return a1 + 4;
}

uint64_t tlv::parseV<ctl::tlv::LinkLayerProtocol>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 2);
  result = *v3;
  *a1 = (v3 + 2);
  return result;
}

uint64_t sub_2963343EC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_WORD **tlv::writeV<ctl::tlv::LinkLayerProtocol>(_WORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t ctl::tlv::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  *(a3 + 4) = *(a1 + 4);
  return a1 + 5;
}

uint64_t ctl::tlv::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  return a1 + 5;
}

unint64_t tlv::parseV<ctl::tlv::PowerSaveDescriptor>(tlv **a1, int a2)
{
  v3 = *a1;
  v4 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v4, 4);
  v5 = *v3;
  tlv::throwIfNotEnoughBytes((v3 + 4), v4, 1);
  v6 = *(v3 + 4);
  *a1 = (v3 + 5);
  return (v6 << 32) | 0xAAAAAA0000000000 | v5;
}

void sub_296334520(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296334504);
}

uint64_t *tlv::writeV<ctl::tlv::PowerSaveDescriptor>(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *result = v2 + 5;
  return result;
}

const unsigned __int8 *ctl::tlv::parseField(tlv *a1, const unsigned __int8 *a2, char **a3)
{
  tlv::throwIfNotAligned(a1, a2, 2);
  v6 = (a2 - a1) >> 1;
  v7 = *a3;
  v8 = (a3[1] - *a3) >> 1;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      a3[1] = &v7[2 * v6];
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a3, v6 - v8);
    v7 = *a3;
  }

  memcpy(v7, a1, a2 - a1);
  return a2;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  v8 = *a1;
  v6 = (a1 + 1);
  v7 = v8;
  v9 = (2 * v8);
  tlv::throwIfNotEnoughBytes(v6, a2, v9);
  v10 = *a3;
  v11 = (a3[1] - *a3) >> 1;
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v7 < v11)
    {
      a3[1] = &v10[2 * v7];
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a3, v12);
    v10 = *a3;
  }

  memcpy(v10, v6, v9);
  return &v9[v6];
}

char *ctl::tlv::writeField(char *a1, uint64_t a2)
{
  v3 = *a2;
  v5 = *(a2 + 8) - v3;
  memcpy(a1, v3, v5);
  return &a1[v5];
}

uint64_t ctl::tlv::getFieldSize(void *a1)
{
  return a1[1] - *a1;
}

{
  return a1[1] - *a1 + 1;
}

void *tlv::parseV<ctl::tlv::IndicationSet>@<X0>(tlv **a1@<X0>, signed int a2@<W1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a1;
  v7 = a2;
  v8 = *a1 + a2;
  tlv::throwIfNotAligned(*a1, v8, 2);
  if (a2 >= 2)
  {
    std::vector<unsigned short>::__append(a3, v7 >> 1);
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  result = memcpy(v9, v6, v7);
  *a1 = v8;
  return result;
}

void sub_2963346A4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x296334690);
}

void sub_2963346B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<ctl::tlv::IndicationSet>(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v6 = *(a2 + 8) - v4;
  result = memcpy(*a1, v4, v6);
  *a1 = &v3[v6];
  return result;
}

_BYTE *ctl::tlv::writeField(_BYTE *a1, _DWORD *a2)
{
  *a1 = (a2[2] - *a2) >> 1;
  v2 = a1 + 1;
  v3 = *a2;
  v5 = *(a2 + 1) - v3;
  memcpy(a1 + 1, v3, v5);
  return &v2[v5];
}

{
  *a1 = *a2;
  return a1 + 1;
}

void *tlv::parseV<ctl::tlv::IndicationSetExt>@<X0>(tlv **a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = *a1 + a2;
  tlv::throwIfNotEnoughBytes(*a1, v6, 1);
  v9 = *v5;
  v7 = (v5 + 1);
  v8 = v9;
  v10 = (2 * v9);
  tlv::throwIfNotEnoughBytes(v7, v6, v10);
  if (v9)
  {
    std::vector<unsigned short>::__append(a3, v8);
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  result = memcpy(v11, v7, v10);
  *a1 = &v10[v7];
  return result;
}

void sub_2963348B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x2963348A4);
}

void sub_2963348C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *tlv::writeV<ctl::tlv::IndicationSetExt>(_BYTE **a1, _DWORD *a2)
{
  v3 = *a1;
  *v3++ = (a2[2] - *a2) >> 1;
  v4 = *a2;
  v6 = *(a2 + 1) - v4;
  result = memcpy(v3, v4, v6);
  *a1 = &v3[v6];
  return result;
}

char *ctl::tlv::parseField(tlv *a1, const unsigned __int8 *a2, _BYTE *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 1);
  *a3 = *a1;
  return a1 + 1;
}

uint64_t tlv::parseV<ctl::tlv::ServiceType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_2963349D8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<ctl::tlv::ServiceType>(_BYTE **result, _BYTE *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<ctl::tlv::DataFormat>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

uint64_t sub_296334A98(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_BYTE **tlv::writeV<ctl::tlv::DataFormat>(_BYTE **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

uint64_t tlv::parseV<ctl::tlv::PowerSaveState>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

uint64_t sub_296334B58(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  return 0;
}

_DWORD **tlv::writeV<ctl::tlv::PowerSaveState>(_DWORD **result, _DWORD *a2)
{
  v2 = *result;
  *v2 = *a2;
  *result = v2 + 1;
  return result;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v12 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 < 0)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = a2;
      v11 = operator new(2 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = 2 * a2;
    bzero(&v11[2 * (v6 >> 1)], 2 * a2);
    memcpy(v11, v5, v6);
    *a1 = v11;
    *(a1 + 8) = &v11[2 * (v6 >> 1) + v13];
    *(a1 + 16) = &v11[2 * v9];
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t qmi::MessageBase::MessageBase()
{
  return MEMORY[0x2A1C6E890]();
}

{
  return MEMORY[0x2A1C6E8A0]();
}

uint64_t qmi::asString()
{
  return MEMORY[0x2A1C6E910]();
}

{
  return MEMORY[0x2A1C6E918]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F440]();
}

{
  return MEMORY[0x2A1C6F450]();
}

{
  return MEMORY[0x2A1C6F460]();
}

{
  return MEMORY[0x2A1C6F468]();
}

{
  return MEMORY[0x2A1C6F478]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FDF0]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE30]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}