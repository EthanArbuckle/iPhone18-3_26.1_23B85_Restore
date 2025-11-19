uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
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

double trace::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t trace::ARICommandDriver::TraceConfig(uint64_t a1, uint64_t a2, AriSdk::ARI_TraceSetConfigRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x48uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__15;
  v76 = __Block_byref_object_dispose__16;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_TraceSetConfigRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 1560477696);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_TraceSetConfigRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("TraceConfig", "Failed to run TraceSetConfigReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A27FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](uint64_t result)
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

void trace::ARICommandDriver::TraceFlush(float *a1, uint64_t a2, AriSdk::ARI_TraceFlushRspCb_SDK **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _KTLDebugPrint("TraceFlush", "Flushing trace", a3, a4, a5, a6, a7, a8, v124);
  v138 = 0;
  v139 = 0;
  AriSdk::MsgBase::getRawBytes();
  v132 = 0;
  v133 = &v132;
  v134 = 0x3002000000;
  v135 = __Block_byref_object_copy_;
  v136 = __Block_byref_object_dispose_;
  v10 = operator new(0x90uLL);
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 850045863;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 10) = 0;
  *(v10 + 11) = 1018212795;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 124) = 0u;
  *v10 = &unk_2A1E624A0;
  v137 = v10;
  v17 = *a1;
  v18 = *(a1 + 1);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5trace16ARICommandDriver10TraceFlushEPN6AriSdk21ARI_TraceFlushReq_SDKEPPNS1_23ARI_TraceFlushRspCb_SDKE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_1;
  aBlock[5] = a1;
  aBlock[6] = v17;
  v131 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[4] = &v132;
  _KTLDebugPrint("TraceFlush", "Registering for trace flush complete indication", v11, v12, v13, v14, v15, v16, v125);
  v129 = _Block_copy(aBlock);
  ktl::CommandDriver::registerIndication(a1, 0x5D810000, &v129);
  if (v129)
  {
    _Block_release(v129);
  }

  v19 = operator new(0x90uLL);
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 850045863;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 10) = 0;
  *(v19 + 11) = 1018212795;
  *(v19 + 6) = 0u;
  *(v19 + 7) = 0u;
  *(v19 + 124) = 0u;
  *v19 = &unk_2A1E624A0;
  v140.__ptr_ = 0;
  __lk.__m_ = v133[5];
  v133[5] = v19;
  std::promise<BOOL>::~promise(&__lk);
  std::promise<BOOL>::~promise(&v140);
  v20 = v133[5];
  if (!v20)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::mutex::lock((v20 + 24));
  v21 = *(v20 + 136);
  if ((v21 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  *(v20 + 136) = v21 | 2;
  std::mutex::unlock((v20 + 24));
  _KTLDebugPrint("TraceFlush", "Perform trace flush", v22, v23, v24, v25, v26, v27, v126);
  v35 = v138;
  v34 = v139;
  if (v139)
  {
    atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  v36 = *(a1 + 2);
  v37 = *(v36 + 8);
  if (v37 || !*(v36 + 16))
  {
    v38 = *v35;
    v39 = v35[1] - *v35;
    v40 = *(v36 + 20);
    LODWORD(__lk.__m_) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v28, v29, v30, v31, v32, v33, v39);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v38);
    }

    if (*v37 && ((v47 = (*v37)(v37, v38, v39, &__lk, 1, v40, 0), LODWORD(__lk.__m_) == v39) ? (v48 = v47) : (v48 = 0), (v48 & 1) != 0))
    {
      __lk.__m_ = 0;
      v49 = KTLUTACopyReceiveData(*(a1 + 2), &__lk);
      m = __lk.__m_;
      if (__lk.__m_)
      {
        v57 = v49;
      }

      else
      {
        v57 = 0;
      }

      if (v57 == 1)
      {
        v58 = operator new(0x48uLL);
        v59 = (*(*m + 16))(m);
        v60 = m[2];
        AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(v58, v59);
        *a3 = v58;
        (*(*m + 8))(m);
        goto LABEL_94;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v41, v42, v43, v44, v45, v46, v39);
    }

    v61 = "error while trying to get response from device \n";
    goto LABEL_26;
  }

  __lk.__m_ = 0;
  *&__lk.__owns_ = &__lk;
  v147 = 0x3002000000;
  v148 = __Block_byref_object_copy__15;
  v149 = __Block_byref_object_dispose__16;
  v150 = 0xAAAAAAAAAAAAAAAALL;
  v150 = dispatch_semaphore_create(0);
  v74 = *(v35 + 2) - *v35;
  v75 = *(*(a1 + 2) + 16);
  v140.__ptr_ = MEMORY[0x29EDCA5F8];
  v141 = 1107296256;
  v142 = ___ZN3ktl13CommandDriver7performIN6AriSdk23ARI_TraceFlushRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke;
  v143 = &__block_descriptor_tmp_26;
  p_lk = &__lk;
  v145 = a3;
  v76 = AriHost::Send();
  if (v76)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v77, v78, v79, v80, v81, v82, v76);
    goto LABEL_91;
  }

  v105 = *&__lk.__owns_;
  v106 = dispatch_time(0, 1000000 * *(*(a1 + 2) + 20));
  if (dispatch_semaphore_wait(*(v105 + 40), v106))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v107, v108, v109, v110, v111, v112, v127);
LABEL_91:
    v113 = 0;
    _Block_object_dispose(&__lk, 8);
    v114 = v150;
    if (!v150)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v113 = 1;
  _Block_object_dispose(&__lk, 8);
  v114 = v150;
  if (v150)
  {
LABEL_92:
    dispatch_release(v114);
  }

LABEL_93:
  if ((v113 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_94:
  hasDeclaredGmid = AriSdk::ARI_TraceFlushRspCb_SDK::hasDeclaredGmid(*a3);
  v116 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v116) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v117, v118, v119, v120, v121, v122, 1560543232);
LABEL_27:
      if (*a3)
      {
        (*(**a3 + 16))(*a3);
      }

      v68 = 0;
      *a3 = 0;
      if (!v34)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v61 = "Received NACK\n";
LABEL_26:
    _KTLErrorPrint("perform", v61, v50, v51, v52, v53, v54, v55, v127);
    goto LABEL_27;
  }

  if (AriSdk::ARI_TraceFlushRspCb_SDK::unpack(v116))
  {
    goto LABEL_27;
  }

  v68 = 1;
  if (v34)
  {
LABEL_30:
    if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }
  }

LABEL_32:
  if (v68)
  {
    _KTLDebugPrint("TraceFlush", "Successfully flushed trace", v62, v63, v64, v65, v66, v67, v127);
  }

  else
  {
    _KTLErrorPrint("TraceFlush", "Failed to flush trace", v62, v63, v64, v65, v66, v67, v127);
  }

  v69.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  __lk.__m_ = (v20 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v20 + 24));
  v70 = *(v20 + 136);
  if ((v70 & 8) != 0)
  {
    v72 = 2;
    v73 = (v20 + 24);
    goto LABEL_63;
  }

  if ((v70 & 4) != 0)
  {
    v72 = 0;
    v73 = (v20 + 24);
    goto LABEL_63;
  }

  v71 = v69.__d_.__rep_ + 5000000000;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v71)
  {
    if (v71 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_45;
    }

    v91.__d_.__rep_ = v71 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v91.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v92.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v92.__d_.__rep_)
      {
        v93 = 0;
        goto LABEL_58;
      }

      if (v92.__d_.__rep_ < 1)
      {
        if (v92.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v83.__d_.__rep_ = v91.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_43;
        }
      }

      else if (v92.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v93 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v91.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_58:
          v83.__d_.__rep_ = v93 + v91.__d_.__rep_;
          goto LABEL_43;
        }

LABEL_42:
        v83.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_43:
        std::condition_variable::__do_timed_wait((v20 + 88), &__lk, v83);
        std::chrono::steady_clock::now();
        goto LABEL_44;
      }

      v93 = 1000 * v92.__d_.__rep_;
      if (1000 * v92.__d_.__rep_ <= (v91.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_58;
      }

      goto LABEL_42;
    }

LABEL_44:
    std::chrono::steady_clock::now();
LABEL_45:
    v90 = *(v20 + 136);
    if ((v90 & 4) != 0)
    {
      goto LABEL_61;
    }
  }

  v90 = *(v20 + 136);
LABEL_61:
  v72 = ((v90 >> 2) & 1) == 0;
  if (__lk.__owns_)
  {
    v73 = __lk.__m_;
LABEL_63:
    std::mutex::unlock(v73);
  }

  if (v72 == 1)
  {
    v103 = "Timeout while waiting for trace flush indication";
    goto LABEL_74;
  }

  if (v72)
  {
    v103 = "Unexpected status while waiting for trace flush indication";
LABEL_74:
    _KTLErrorPrint("TraceFlush", v103, v84, v85, v86, v87, v88, v89, v128);
    v102 = v131;
    if (!v131)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  __lk.__m_ = (v20 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v20 + 24));
  std::__assoc_sub_state::__sub_wait(v20, &__lk);
  v94 = *(v20 + 16);
  v140.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v140);
  if (v94)
  {
    std::exception_ptr::exception_ptr(&v140, (v20 + 16));
    v123.__ptr_ = &v140;
    std::rethrow_exception(v123);
    __break(1u);
  }

  else
  {
    v101 = *(v20 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
      if (!atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_69;
      }

LABEL_86:
      if (v101)
      {
        goto LABEL_87;
      }

LABEL_70:
      _KTLErrorPrint("TraceFlush", "Error while receiving trace flush indication", v95, v96, v97, v98, v99, v100, v128);
      v20 = 0;
      v102 = v131;
      if (!v131)
      {
        goto LABEL_76;
      }

LABEL_75:
      std::__shared_weak_count::__release_weak(v102);
      goto LABEL_76;
    }

    if (atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_86;
    }

LABEL_69:
    (*(*v20 + 16))(v20);
    if (!v101)
    {
      goto LABEL_70;
    }

LABEL_87:
    _KTLDebugPrint("TraceFlush", "Trace flush indication received successfully", v95, v96, v97, v98, v99, v100, v128);
    v20 = 0;
    v102 = v131;
    if (v131)
    {
      goto LABEL_75;
    }

LABEL_76:
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (v20 && !atomic_fetch_add((v20 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v20 + 16))(v20);
    }

    _Block_object_dispose(&v132, 8);
    std::promise<BOOL>::~promise(&v137);
    v104 = v139;
    if (v139)
    {
      if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v104->__on_zero_shared)(v104);
        std::__shared_weak_count::__release_weak(v104);
      }
    }
  }
}

void sub_297A28A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *aBlock, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, std::exception_ptr a30)
{
  _Block_object_dispose((v32 - 152), 8);
  v34 = *(v32 - 112);
  if (v34)
  {
    dispatch_release(v34);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
    if (!v30)
    {
LABEL_5:
      if (!v31)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if (!v30)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v30);
  if (!v31)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!atomic_fetch_add(v31 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v31 + 16))(v31);
  }

LABEL_11:
  _Block_object_dispose(&a22, 8);
  std::promise<BOOL>::~promise(&a27);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZN5trace16ARICommandDriver10TraceFlushEPN6AriSdk21ARI_TraceFlushReq_SDKEPPNS1_23ARI_TraceFlushRspCb_SDKE_block_invoke(void *a1, const unsigned __int8 *a2)
{
  v3 = a1[7];
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v41 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v5;
  if (!a1[6])
  {
    result = 0xFFFFFFFFLL;
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    return result;
  }

  _KTLDebugPrint("TraceFlush_block_invoke", "Received trace flush indication callback", v6, v7, v8, v9, v10, v11, v36);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[2] = v13;
  v38[3] = v13;
  v38[0] = v13;
  v38[1] = v13;
  AriSdk::ARI_TraceFlushCompleteInd_SDK::ARI_TraceFlushCompleteInd_SDK(v38, a2);
  GMID = AriSdk::MsgBase::getGMID(v38);
  v15 = AriSdk::MsgBase::getGMID(v38);
  if (((v15 >> 17) & 0xFFFF8000 | (v15 << 26)) != 0x5D810000)
  {
    _KTLErrorPrint("TraceFlush_block_invoke", "[ind] Got unexpected message 0x%0x, expected trace flush complete indication (0x%0x)", v16, v17, v18, v19, v20, v21, (GMID >> 17) & 0xFFFF8000 | (GMID << 26));
    v28 = *(*(a1[4] + 8) + 40);
    if (!v28)
    {
      std::__throw_future_error[abi:ne200100](3u);
    }

    v29 = (v28 + 24);
    std::mutex::lock((v28 + 24));
    if ((*(v28 + 136) & 1) != 0 || (v42.__ptr_ = 0, v32 = *(v28 + 16), std::exception_ptr::~exception_ptr(&v42), v32))
    {
      std::__throw_future_error[abi:ne200100](2u);
    }

    goto LABEL_19;
  }

  if (AriSdk::ARI_TraceFlushCompleteInd_SDK::unpack(v38) || *v39)
  {
    _KTLDebugPrint("TraceFlush_block_invoke", "[ind] Error while unpacking trace flush complete indication", v22, v23, v24, v25, v26, v27, v37);
    v28 = *(*(a1[4] + 8) + 40);
    if (!v28)
    {
      std::__throw_future_error[abi:ne200100](3u);
    }

    v29 = (v28 + 24);
    std::mutex::lock((v28 + 24));
    if ((*(v28 + 136) & 1) != 0 || (v42.__ptr_ = 0, v30 = *(v28 + 16), std::exception_ptr::~exception_ptr(&v42), v30))
    {
      std::__throw_future_error[abi:ne200100](2u);
    }

LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  _KTLDebugPrint("TraceFlush_block_invoke", "[ind] Trace flush complete indication success", v22, v23, v24, v25, v26, v27, v37);
  v28 = *(*(a1[4] + 8) + 40);
  if (!v28)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  v29 = (v28 + 24);
  std::mutex::lock((v28 + 24));
  if ((*(v28 + 136) & 1) != 0 || (v42.__ptr_ = 0, v35 = *(v28 + 16), std::exception_ptr::~exception_ptr(&v42), v35))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  v33 = 1;
LABEL_20:
  *(v28 + 140) = v33;
  *(v28 + 136) |= 5u;
  std::condition_variable::notify_all((v28 + 88));
  std::mutex::unlock(v29);
  MEMORY[0x29C279F10](v38);
  result = 0;
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_21:
    v34 = result;
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    return v34;
  }

  return result;
}

void sub_297A28EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  std::mutex::unlock(v11);
  MEMORY[0x29C279F10](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v12 - 56);
  _Unwind_Resume(a1);
}

void sub_297A28F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x29C279F10](va);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](v3 - 56);
  _Unwind_Resume(a1);
}

BOOL trace::ARICommandDriver::isARIResponseValid(trace::ARICommandDriver *this, const AriSdk::MsgBase *a2, int a3)
{
  GMID = AriSdk::MsgBase::getGMID(a2);
  v5 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
  return v5 != 67600384 && v5 == a3;
}

void __copy_helper_block_e8_32r48c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  v4 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_32r48c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__16(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_TraceSetConfigRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x48uLL);
  AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

void *std::promise<BOOL>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C27A720](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x29C27A730](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C27A720](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk23ARI_TraceFlushRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x48uLL);
  AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

__n128 KTLDebugRegisterDelegate(__n128 *a1)
{
  result = *a1;
  off_2A18991C8 = a1[1].n128_u64[0];
  *&gDelegate = result;
  return result;
}

double KTLDebugSetDefaults()
{
  result = *&gDelegateDefault;
  *&gDelegate = gDelegateDefault;
  off_2A18991C8 = off_2A1E62518;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t KTLDebugSetOutputFile(uint64_t a1)
{
  result = _MergedGlobals_0;
  if (_MergedGlobals_0)
  {
    result = fclose(_MergedGlobals_0);
  }

  _MergedGlobals_0 = a1;
  return result;
}

uint64_t _KTLDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (_KTLDebugFlags)
  {
    return gDelegate(result, a2, &a9);
  }

  return result;
}

uint64_t _KTLErrorPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((_KTLDebugFlags & 4) != 0)
  {
    return (*(&gDelegate + 1))(result, a2, &a9);
  }

  return result;
}

void _KTLDebugPrintOsLog(uint64_t a1, const char *a2, va_list a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_7;
  }

  memset(__b, 170, sizeof(__b));
  vsnprintf(__b, 0x400uLL, a2, a3);
  if (qword_2A13A4F68 == -1)
  {
    v5 = qword_2A13A4F60;
    if (!os_log_type_enabled(qword_2A13A4F60, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&qword_2A13A4F68, &__block_literal_global);
  v5 = qword_2A13A4F60;
  if (os_log_type_enabled(qword_2A13A4F60, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    *buf = 136315138;
    v8 = __b;
    _os_log_impl(&dword_297A27000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

LABEL_5:
  if (_MergedGlobals_0)
  {
    fprintf(_MergedGlobals_0, "%s\n", __b);
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
}

const char *_KTLDebugPrintBinaryOsLog(const char *result, int a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a3 && _MergedGlobals_0)
  {
    v5 = result;
    v6 = "misc";
    if (a2 == 1)
    {
      v6 = "recv";
    }

    if (a2)
    {
      v7 = v6;
    }

    else
    {
      v7 = "send";
    }

    bzero(v9, 0x400uLL);
    TelephonyUtilLogBinaryToBuffer();
    result = fprintf(_MergedGlobals_0, "[%s:%u] %s\n%s\n", v7, a4, v5, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GetBBIPCLogs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v169 = *MEMORY[0x29EDCA608];
  v127 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v126[3] = v5;
  v126[4] = v5;
  v126[1] = v5;
  v126[2] = v5;
  v126[0] = v5;
  v148 = 0xAAAAAAAAAAAAAAAALL;
  v147[10] = v5;
  v147[11] = v5;
  v147[8] = v5;
  v147[9] = v5;
  v147[6] = v5;
  v147[7] = v5;
  v147[4] = v5;
  v147[5] = v5;
  v147[2] = v5;
  v147[3] = v5;
  v147[0] = v5;
  v147[1] = v5;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0;
  v6 = *(a1 + 16);
  v146 = v6;
  if (*(a1 + 8) || !v6)
  {
    v145 = 0;
    v141 = 0;
    LODWORD(v137) = v6;
    *__dst = 0;
    *&v161 = 0;
    if (!ARI_CsiIpcGetLogBufferListReq_ENC())
    {
      v31 = operator new(0x18uLL);
      v32 = v161;
      v31[2] = *__dst;
      *(v31 + 2) = v32;
      *v31 = &unk_2A1E625B0;
      if (KTLUTASendAndReleaseData(a1, v31))
      {
        if (KTLUTACopyReceiveData(a1, &v141))
        {
          v33 = v141;
          (*(*v141 + 16))(v141);
          v34 = v33[2];
          v35 = ARI_CsiIpcGetLogBufferListRsp_Extract();
          (*(*v33 + 8))(v33);
          if (!(v35 | v145))
          {
LABEL_25:
            v41 = 0;
            LOBYTE(v36) = 0;
            v124 = 0;
            v42 = &v149 | 0xC;
            while (1)
            {
              strncpy(__dst, v42, 8uLL);
              LOBYTE(v158) = 0;
              v122 = *(v42 - 12);
              v123 = *(v42 + 8);
              v120 = *(v42 - 4);
              v121 = *(v42 - 8);
              _KTLDebugPrint("GetBBIPCLogs", "Fetching log buffer entry: filename=%s size=%d level=%d next=%d buf_p=%d\n", v43, v44, v45, v46, v47, v48, __dst);
              if (!*(v42 - 4) || !*(v42 + 8))
              {
                goto LABEL_27;
              }

              if (strstr(__dst, "..") || strchr(__dst, 47))
              {
                _KTLErrorPrint("GetBBIPCLogs", "Skipping potentially dangerous filename %s\n", v49, v50, v51, v52, v53, v54, __dst);
              }

              else
              {
                if (a2)
                {
                  snprintf(v147, 0xC8uLL, "%s/%s.bin");
                }

                else
                {
                  snprintf(v147, 0xC8uLL, "%s.bin");
                }

                v61 = open(v147, 1537, 420);
                v62 = "Failure";
                if (v61 >= 0)
                {
                  v62 = "Success";
                }

                _KTLDebugPrint("GetBBIPCLogs", "File Open: %s (name=%s descriptor=%d)\n", v55, v56, v57, v58, v59, v60, v62);
                if ((v61 & 0x80000000) == 0)
                {
                  v36 = TelephonyUtilTransportCreateWithFD();
                  v69 = "Failure";
                  if (v36)
                  {
                    v69 = "Success";
                  }

                  _KTLDebugPrint("GetBBIPCLogs", "TelephonyUtilTransportCreateWithFD: %s (filedesc=%d)\n", v63, v64, v65, v66, v67, v68, v69);
                  if (!v36)
                  {
                    goto LABEL_27;
                  }

                  v70 = *(v42 - 4);
                  v71 = *(a1 + 16);
                  v145 = v71;
                  if (*(a1 + 8) || !v71)
                  {
                    v136 = 0;
                    LODWORD(v137) = v71;
                    v141 = 0;
                    v146 = 0;
                    v128 = 0;
                    if (!ARI_CsiIpcGetLogBufferReq_ENC())
                    {
                      v112 = operator new(0x18uLL);
                      v113 = v128;
                      v112[2] = v146;
                      *(v112 + 2) = v113;
                      *v112 = &unk_2A1E625B0;
                      if (KTLUTASendAndReleaseData(a1, v112))
                      {
                        if (KTLUTACopyReceiveData(a1, &v141))
                        {
                          v114 = v141;
                          (*(*v141 + 16))(v141);
                          v115 = v114[2];
                          v116 = ARI_CsiIpcGetLogBufferRsp_Extract();
                          (*(*v114 + 8))(v114);
                          if (!(v116 | v136))
                          {
                            _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBuffer: %s\n", v106, v107, v108, v109, v110, v111, "Success");
                            goto LABEL_56;
                          }
                        }
                      }
                    }

                    _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBuffer: %s\n", v106, v107, v108, v109, v110, v111, "Failure");
                  }

                  else
                  {
                    v128 = 0;
                    v129 = &v128;
                    v130 = 0x2000000000;
                    LODWORD(v131) = -1;
                    v141 = 0;
                    v142 = &v141;
                    v143 = 0x2000000000;
                    LODWORD(v144) = -1431655766;
                    v137 = 0;
                    v138 = &v137;
                    v139 = 0x2000000000;
                    v140 = 0;
                    v72 = dispatch_semaphore_create(0);
                    *&v161 = MEMORY[0x29EDCA5F8];
                    *(&v161 + 1) = 1174405120;
                    *&v162 = ___ZL18KTLGetIPCLogBufferP10KTLOptionsjjjPi_block_invoke;
                    *(&v162 + 1) = &__block_descriptor_tmp_22;
                    *&v163 = &v128;
                    *(&v163 + 1) = &v141;
                    *&v164 = &v137;
                    v73 = v72;
                    *(&v164 + 1) = v72;
                    if (v72)
                    {
                      dispatch_retain(v72);
                    }

                    LogBufferReq_BLK = ARI_CsiIpcGetLogBufferReq_BLK();
                    v75 = LogBufferReq_BLK;
                    _KTLDebugPrint("KTLGetIPCLogBuffer", "sendRet=%d\n", v76, v77, v78, v79, v80, v81, LogBufferReq_BLK);
                    if (v75)
                    {
LABEL_48:
                      v89 = 0;
                      v124 = *(v138 + 6);
                    }

                    else
                    {
                      v88 = dispatch_time(0, 1000000 * *(a1 + 20));
                      if (dispatch_semaphore_wait(v73, v88))
                      {
                        _KTLErrorPrint("KTLGetIPCLogBuffer", "Timeout waiting for response.\n", v82, v83, v84, v85, v86, v87, v119);
                        goto LABEL_48;
                      }

                      v124 = *(v138 + 6);
                      if (*(v129 + 24))
                      {
                        v89 = 0;
                      }

                      else
                      {
                        v89 = *(v142 + 6) == 0;
                      }
                    }

                    _KTLDebugPrint("KTLGetIPCLogBuffer", "ret=%d\n", v82, v83, v84, v85, v86, v87, v89);
                    if (*(&v164 + 1))
                    {
                      dispatch_release(*(&v164 + 1));
                    }

                    if (v73)
                    {
                      dispatch_release(v73);
                    }

                    _Block_object_dispose(&v137, 8);
                    _Block_object_dispose(&v141, 8);
                    _Block_object_dispose(&v128, 8);
                    v96 = "Failure";
                    if (v89)
                    {
                      v96 = "Success";
                    }

                    _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBuffer: %s\n", v90, v91, v92, v93, v94, v95, v96);
                    if (v89)
                    {
LABEL_56:
                      v98 = ICE_FILER_read(a1, 0, v126, *(v42 - 4), v124, 0, a3, v97);
                      LOBYTE(v36) = v98 > 0;
                      v105 = "Failure";
                      if (v98 > 0)
                      {
                        v105 = "Success";
                      }

                      _KTLDebugPrint("GetBBIPCLogs", "ICE_FILER_read: %s (return code=%d)\n", v99, v100, v101, v102, v103, v104, v105);
                      goto LABEL_67;
                    }
                  }

                  LOBYTE(v36) = 0;
LABEL_67:
                  close(v61);
                  TelephonyUtilTransportFree();
                  goto LABEL_27;
                }

                LOBYTE(v36) = 0;
              }

LABEL_27:
              ++v41;
              v42 += 24;
              if (v41 == 5)
              {
                goto LABEL_12;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v168 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v166 = v7;
    v167 = v7;
    v164 = v7;
    v165 = v7;
    v162 = v7;
    v163 = v7;
    v161 = v7;
    v141 = 0;
    v142 = &v141;
    v143 = 0x2000000000;
    v144 = &v161;
    v137 = 0;
    v138 = &v137;
    v139 = 0x2000000000;
    v140 = -1;
    *__dst = 0;
    v158 = __dst;
    v159 = 0x2000000000;
    v160 = -1431655766;
    v8 = dispatch_semaphore_create(0);
    v9 = v8;
    v128 = MEMORY[0x29EDCA5F8];
    v129 = 1174405120;
    v130 = ___ZL22KTLGetIPCLogBufferListP10KTLOptionsP22CsiIceIpcLogBufferList_block_invoke;
    v131 = &__block_descriptor_tmp_2;
    v132 = &v137;
    v133 = __dst;
    v134 = &v141;
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    LogBufferListReq_BLK = ARI_CsiIpcGetLogBufferListReq_BLK();
    v11 = LogBufferListReq_BLK;
    _KTLDebugPrint("KTLGetIPCLogBufferList", "sendRet=%d\n", v12, v13, v14, v15, v16, v17, LogBufferListReq_BLK);
    if (v11)
    {
      v24 = 0;
      v156 = v168;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v149 = v161;
      v150 = v162;
      v151 = v163;
      v152 = v164;
    }

    else
    {
      v39 = dispatch_time(0, 1000000 * *(a1 + 20));
      v40 = dispatch_semaphore_wait(v9, v39);
      if (v40)
      {
        _KTLErrorPrint("KTLGetIPCLogBufferList", "Timeout waiting for response.\n", v18, v19, v20, v21, v22, v23, v118);
      }

      if (v146)
      {
        AriHost::ExitTrx(v146);
      }

      v153 = v165;
      v154 = v166;
      v155 = v167;
      v156 = v168;
      v149 = v161;
      v150 = v162;
      v151 = v163;
      v152 = v164;
      v24 = !v40 && !*(v138 + 6) && *(v158 + 6) == 0;
    }

    _KTLDebugPrint("KTLGetIPCLogBufferList", "ret=%d list size=%lu\n", v18, v19, v20, v21, v22, v23, v24);
    if (object)
    {
      dispatch_release(object);
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    _Block_object_dispose(__dst, 8);
    _Block_object_dispose(&v137, 8);
    _Block_object_dispose(&v141, 8);
    if (v24)
    {
      goto LABEL_25;
    }
  }

  _KTLDebugPrint("GetBBIPCLogs", "KTLGetIPCLogBufferList returned false\n", v25, v26, v27, v28, v29, v30, v117);
  LOBYTE(v36) = 0;
LABEL_12:
  v37 = *MEMORY[0x29EDCA608];
  return v36 & 1;
}

void sub_297A2A130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v47 = *(v45 - 184);
  if (v47)
  {
    dispatch_release(v47);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_297A2A178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, NSObject *object, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL22KTLGetIPCLogBufferListP10KTLOptionsP22CsiIceIpcLogBufferList_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIpcGetLogBufferListRsp_Extract();
  _KTLDebugPrint("KTLGetIPCLogBufferList_block_invoke", "blockRet=%d\n", v4, v5, v6, v7, v8, v9, *(*(*(a1 + 32) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r40r48r56c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  v4 = *(a2 + 56);
  a1[7] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

void ktl::KTLARIPacket::~KTLARIPacket(AriMsg **this, unsigned __int8 *a2)
{
  *this = &unk_2A1E625B0;
  AriMsg::ReleaseEncodedMessage(this[2], a2);
}

{
  *this = &unk_2A1E625B0;
  AriMsg::ReleaseEncodedMessage(this[2], a2);

  operator delete(this);
}

uint64_t ___ZL18KTLGetIPCLogBufferP10KTLOptionsjjjPi_block_invoke(uint64_t a1, AriMsg *a2, unsigned int a3)
{
  v6 = *(*(a1 + 40) + 8);
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIpcGetLogBufferRsp_Extract();
  *(*(*(a1 + 48) + 8) + 24) = AriMsg::GetBufCtx(a2, a3);
  v14 = *(*(*(a1 + 48) + 8) + 24);
  _KTLDebugPrint("KTLGetIPCLogBuffer_block_invoke", "blockRet=%d blockCtxId=%d\n", v7, v8, v9, v10, v11, v12, *(*(*(a1 + 32) + 8) + 24));
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t eUICC::VinylCommandDriver::VinylCommandDriver(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 1065353216;
  _KTLDebugFlags = 15;
  if (*(a2 + 20) >> 4 <= 0x270u)
  {
    *(a2 + 20) = 10000;
  }

  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 1065353216;
  _KTLDebugFlags = 15;
  if (*(a2 + 20) >> 4 <= 0x270u)
  {
    *(a2 + 20) = 10000;
  }

  return result;
}

uint64_t eUICC::VinylCommandDriver::GetVinylType(eUICC::VinylCommandDriver *this, AriSdk::ARI_IBISimAccessGetSimDataReq_SDK *a2, AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK **a3)
{
  v22 = 0;
  v23 = 0;
  AriSdk::MsgBase::getRawBytes();
  v20 = 0;
  v21 = 0;
  SimDataRspCb = ktl::CommandDriver::perform<AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK>(this, 755040256, &v20, a3, v5, v6, v7, v8);
  v16 = SimDataRspCb;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((SimDataRspCb & 1) == 0)
  {
LABEL_4:
    _KTLErrorPrint("GetVinylType", "%s \n", v10, v11, v12, v13, v14, v15, "VinylCommandDriver GetVinylType perform failure");
  }

LABEL_5:
  v18 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v16;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return v16;
}

void sub_297A2A664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_297A2A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ktl::CommandDriver::perform<AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK>(uint64_t a1, uint64_t a2, uint64_t **a3, AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = **a3;
    v14 = (*a3)[1] - v13;
    v15 = *(v11 + 20);
    LODWORD(v64) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, a4, a5, a6, a7, a8, v14);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((*v12)(v12, v13, v14, &v64, 1, v15, 0) ? (v22 = v64 == v14) : (v22 = 0), v22))
    {
      v64 = 0;
      if (KTLUTACopyReceiveData(*(a1 + 16), &v64))
      {
        v41 = v64;
        if (v64)
        {
          v42 = operator new(0xD8uLL);
          v43 = (*(*v41 + 16))(v41);
          v44 = v41[2];
          AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(v42, v43);
          *a4 = v42;
          (*(*v41 + 8))(v41);
          goto LABEL_26;
        }
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v29 = "error while trying to get response from device \n";
LABEL_11:
    _KTLErrorPrint("perform", v29, v23, v24, v25, v26, v27, v28, v63);
    goto LABEL_12;
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x3002000000;
  v67 = __Block_byref_object_copy__0;
  v68 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v32 = *(*a3 + 2) - **a3;
  v33 = *(*(a1 + 16) + 16);
  v34 = AriHost::Send();
  if (v34)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v35, v36, v37, v38, v39, v40, v34);
    goto LABEL_23;
  }

  v45 = v65;
  v46 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v45[5], v46))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v47, v48, v49, v50, v51, v52, v63);
LABEL_23:
    v53 = 0;
    _Block_object_dispose(&v64, 8);
    v54 = object;
    if (!object)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v53 = 1;
  _Block_object_dispose(&v64, 8);
  v54 = object;
  if (object)
  {
LABEL_24:
    dispatch_release(v54);
  }

LABEL_25:
  if ((v53 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_26:
  hasDeclaredGmid = AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::hasDeclaredGmid(*a4);
  v56 = *a4;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v56) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a4);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v57, v58, v59, v60, v61, v62, a2);
      goto LABEL_12;
    }

    v29 = "Received NACK\n";
    goto LABEL_11;
  }

  if (!AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::unpack(v56))
  {
    return 1;
  }

LABEL_12:
  if (*a4)
  {
    (*(**a4 + 16))(*a4);
  }

  result = 0;
  *a4 = 0;
  return result;
}

void sub_297A2AA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  _Block_object_dispose(&a17, 8);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::GetData(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylGetDataRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x210uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylGetDataRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372285952);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylGetDataRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetData", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver GetData perform failure");
  }

  return v43;
}

void sub_297A2AEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::InstallVad(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylInstallVadRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x58uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::ARI_IBIVinylInstallVadRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372646400);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("InstallVad", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver InstallVad perform failure");
  }

  return v43;
}

void sub_297A2B410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::StreamFW(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylInstallFwRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  _KTLDebugFlags = 13;
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x58uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::ARI_IBIVinylInstallFwRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372679168);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("StreamFW", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver StreamFW perform failure");
  }

  _KTLDebugFlags = 15;
  return v43;
}

void sub_297A2B930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::SwitchCardMode(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x58uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::ARI_IBIVinylSwitchModeRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372613632);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("SwitchCardMode", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver SwitchCardMode perform failure");
  }

  return v43;
}

void sub_297A2BE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::GetEid(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylGetEidRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x68uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylGetEidRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372253184);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylGetEidRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetEid", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver GetEid perform failure");
  }

  return v43;
}

void sub_297A2C354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::DeleteProfile(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylTapeRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x90uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylTapeRspCb_SDK::ARI_IBIVinylTapeRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylTapeRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372351488);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylTapeRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("DeleteProfile", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver DeleteProfile perform failure");
  }

  return v43;
}

void sub_297A2C864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::GetHwIdSimConfig(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x60uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372843008);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("GetHwIdSimConfig", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver GetHwIdSimConfig perform failure");
  }

  return v43;
}

void sub_297A2CD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::InitPerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylInitPsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x78uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372384256);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("InitPerso", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver InitPerso perform failure");
  }

  return v43;
}

void sub_297A2D28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::AuthPerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x78uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372417024);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("AuthPerso", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver AuthPerso perform failure");
  }

  return v43;
}

void sub_297A2D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::FinalizePerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x58uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372449792);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("FinalizePerso", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver FinalizePerso perform failure");
  }

  return v43;
}

void sub_297A2DCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::ValidatePerso(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x78uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::ARI_IBIVinylValidatePsoRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372482560);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("ValidatePerso", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver ValidatePerso perform failure");
  }

  return v43;
}

void sub_297A2E1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::ManagePairing(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylPairingRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x90uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylPairingRspCb_SDK::ARI_IBIVinylPairingRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylPairingRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3372974080);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylPairingRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("ManagePairing", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver Manage pairing failure");
  }

  return v43;
}

void sub_297A2E6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t eUICC::VinylCommandDriver::ResetSimCard(uint64_t a1, uint64_t a2, AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::ARI_IBIVinylSimCardResetRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 3373105152);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("ResetSimCard", "%s \n", v37, v38, v39, v40, v41, v42, "VinylCommandDriver Reset Sim Card failure");
  }

  return v43;
}

void sub_297A2EBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void eUICC::VinylCommandDriver::~VinylCommandDriver(eUICC::VinylCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk35ARI_IBISimAccessGetSimDataRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0xD8uLL);
  AriSdk::ARI_IBISimAccessGetSimDataRspCb_SDK::ARI_IBISimAccessGetSimDataRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylGetDataRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x210uLL);
  AriSdk::ARI_IBIVinylGetDataRspCb_SDK::ARI_IBIVinylGetDataRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_IBIVinylInstallVadRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::ARI_IBIVinylInstallVadRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk30ARI_IBIVinylInstallFwRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::ARI_IBIVinylInstallFwRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_IBIVinylSwitchModeRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::ARI_IBIVinylSwitchModeRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_IBIVinylGetEidRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x68uLL);
  AriSdk::ARI_IBIVinylGetEidRspCb_SDK::ARI_IBIVinylGetEidRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk25ARI_IBIVinylTapeRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x90uLL);
  AriSdk::ARI_IBIVinylTapeRspCb_SDK::ARI_IBIVinylTapeRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk34ARI_IBIVinylHwIdSimConfigRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x60uLL);
  AriSdk::ARI_IBIVinylHwIdSimConfigRspCb_SDK::ARI_IBIVinylHwIdSimConfigRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylInitPsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x78uLL);
  AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::ARI_IBIVinylInitPsoRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylAuthPsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x78uLL);
  AriSdk::ARI_IBIVinylAuthPsoRspCb_SDK::ARI_IBIVinylAuthPsoRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk32ARI_IBIVinylFinalizePsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x58uLL);
  AriSdk::ARI_IBIVinylFinalizePsoRspCb_SDK::ARI_IBIVinylFinalizePsoRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk32ARI_IBIVinylValidatePsoRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x78uLL);
  AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::ARI_IBIVinylValidatePsoRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk28ARI_IBIVinylPairingRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x90uLL);
  AriSdk::ARI_IBIVinylPairingRspCb_SDK::ARI_IBIVinylPairingRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk33ARI_IBIVinylSimCardResetRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::ARI_IBIVinylSimCardResetRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t KTLCalculate8bitXor(int8x16_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 8)
  {
    if (a2 >= 0x20)
    {
      v2 = a2 & 0xFFFFFFE0;
      v5 = a1 + 1;
      v6 = 0uLL;
      v7 = v2;
      v8 = 0uLL;
      do
      {
        v6 = veorq_s8(v5[-1], v6);
        v8 = veorq_s8(*v5, v8);
        v5 += 2;
        v7 -= 32;
      }

      while (v7);
      v9 = veorq_s8(v8, v6);
      *v9.i8 = veor_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
      v10 = v9.i64[0] ^ HIDWORD(v9.i64[0]) ^ ((v9.i64[0] ^ HIDWORD(v9.i64[0])) >> 16);
      v3 = v10 ^ BYTE1(v10);
      if (v2 == a2)
      {
        return v3;
      }

      if ((a2 & 0x18) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 0;
      v2 = 0;
    }

    v11 = v2;
    v2 = a2 & 0xFFFFFFF8;
    v12 = v3;
    v13 = &a1->i8[v11];
    v14 = v11 - v2;
    do
    {
      v15 = *v13++;
      v12 = veor_s8(v15, v12);
      v14 += 8;
    }

    while (v14);
    v16 = *&v12 ^ HIDWORD(*&v12) ^ ((*&v12 ^ HIDWORD(*&v12)) >> 16);
    v3 = v16 ^ BYTE1(v16);
    if (v2 == a2)
    {
      return v3;
    }

    goto LABEL_14;
  }

  v2 = 0;
  v3 = 0;
LABEL_14:
  v17 = a2 - v2;
  v18 = &a1->i8[v2];
  do
  {
    v19 = *v18++;
    v3 ^= v19;
    --v17;
  }

  while (v17);
  return v3;
}

uint64_t ktl::CommandDriver::perform(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 8);
  if (!v9 && *(v8 + 16))
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3002000000;
    v53 = __Block_byref_object_copy__1;
    v54 = __Block_byref_object_dispose__1;
    object = 0xAAAAAAAAAAAAAAAALL;
    object = dispatch_semaphore_create(0);
    v29 = *(*a2 + 2) - **a2;
    v30 = *(*(a1 + 16) + 16);
    v31 = AriHost::Send();
    if (v31)
    {
      _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v32, v33, v34, v35, v36, v37, v31);
    }

    else
    {
      v38 = v51;
      v39 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
      if (!dispatch_semaphore_wait(v38[5], v39))
      {
        v46 = 1;
        _Block_object_dispose(&v50, 8);
        v47 = object;
        if (!object)
        {
          return v46;
        }

        goto LABEL_17;
      }

      _KTLErrorPrint("perform", "Timeout waiting for response.\n", v40, v41, v42, v43, v44, v45, v48);
    }

    v46 = 0;
    _Block_object_dispose(&v50, 8);
    v47 = object;
    if (!object)
    {
      return v46;
    }

LABEL_17:
    dispatch_release(v47);
    return v46;
  }

  v10 = **a2;
  v11 = (*a2)[1] - v10;
  v12 = *(v8 + 20);
  LODWORD(v50) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, a4, a5, a6, a7, a8, v11);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v10);
  }

  if (*v9)
  {
    if ((*v9)(v9, v10, v11, &v50, 1, v12, 0) && v50 == v11)
    {
      return 1;
    }
  }

  _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v13, v14, v15, v16, v17, v18, v11);
  _KTLErrorPrint("perform", "error sending\n", v20, v21, v22, v23, v24, v25, v49);
  return 0;
}

void sub_297A2F798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  _Block_object_dispose(&a17, 8);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ktl::CommandDriver::registerIndication(float *a1, Ari *a2, const void **a3)
{
  v40 = a2;
  if (*(Ari::MsgDefById((a2 >> 26)) + 8) == 2)
  {
    v6 = *(*(a1 + 2) + 16);
    Ari::MsgNameById(a2);
    _KTLDebugPrint("registerIndication", "Command driver with ariId=%d registering for indication: %s (%u, 0x%x)", v7, v8, v9, v10, v11, v12, v6);
    v13 = *a1;
    v14 = *(a1 + 1);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(*(a1 + 2) + 16);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = AriHost::RegIndication();
    v17 = *(*(a1 + 2) + 16);
    if (v16)
    {
      Ari::MsgNameById(a2);
      _KTLErrorPrint("registerIndication", "Command driver with ariId=%d failed to register indication: %s (%u, 0x%x)", v18, v19, v20, v21, v22, v23, v17);
    }

    else
    {
      Ari::MsgNameById(a2);
      _KTLDebugPrint("registerIndication", "Command driver with ariId=%d successfully registered for indication: %s (%u, 0x%x)", v31, v32, v33, v34, v35, v36, v17);
      if (*a3)
      {
        v37 = _Block_copy(*a3);
      }

      else
      {
        v37 = 0;
      }

      v38 = std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 6, a2, &v40);
      v39 = v38[3];
      v38[3] = v37;
      if (v39)
      {
        _Block_release(v39);
      }
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    v24 = Ari::MsgNameById(a2);
    _KTLErrorPrint("registerIndication", "%s is not an indication, not registering it", v25, v26, v27, v28, v29, v30, v24);
  }
}

void sub_297A2F9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    if (!v19)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v19)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3ktl13CommandDriver18registerIndicationEjN8dispatch5blockIU13block_pointerFiPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (*(a1 + 40))
  {
    v7 = *(a1 + 56);
    v6 = (a1 + 56);
    v8 = std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v3 + 24), v7, v6)[3];
    v9 = *v6;
    if (v8)
    {
      v10 = Ari::MsgNameById(v9);
      _KTLErrorPrint("registerIndication_block_invoke", "%s indication received; calling indication handler", v11, v12, v13, v14, v15, v16, v10);
      v17 = std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v3 + 24), *v6, v6);
      (*(v17[3] + 16))();
      result = 0;
      if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return result;
      }

      goto LABEL_6;
    }

    v20 = Ari::MsgNameById(v9);
    _KTLErrorPrint("registerIndication_block_invoke", "%s indication received but no indication handler exists", v21, v22, v23, v24, v25, v26, v20);
  }

  result = 0xFFFFFFFFLL;
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_6:
    v19 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v19;
  }

  return result;
}

void sub_297A2FBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3ktl13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ktl::CommandDriver::deregisterIndication(ktl::CommandDriver *this, Ari *a2)
{
  v43 = a2;
  v4 = Ari::MsgNameById(a2);
  if (*(Ari::MsgDefById((a2 >> 26)) + 8) != 2)
  {
    _KTLErrorPrint("deregisterIndication", "%s is not an indication, not deregistering it", v5, v6, v7, v8, v9, v10, v4);
    return;
  }

  if (!std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 6, a2, &v43)[3])
  {
    _KTLErrorPrint("deregisterIndication", "Indication %s is not currently registered, no need to deregister it", v11, v12, v13, v14, v15, v16, v4);
    return;
  }

  _KTLDebugPrint("deregisterIndication", "Command driver with ariId=%d deregistering for indication: %s (%u, 0x%x)", v11, v12, v13, v14, v15, v16, *(*(this + 2) + 16));
  v17 = *(*(this + 2) + 16);
  v18 = AriHost::DeregIndication(a2);
  v19 = *(*(this + 2) + 16);
  Ari::MsgNameById(a2);
  if (v18)
  {
    _KTLErrorPrint("deregisterIndication", "Command driver with ariId=%d failed to deregister indication: %s (%u, 0x%x)", v20, v21, v22, v23, v24, v25, v19);
    return;
  }

  _KTLDebugPrint("deregisterIndication", "Command driver with ariId=%d successfully deregistered for indication: %s (%u, 0x%x)", v20, v21, v22, v23, v24, v25, v19);
  v26 = *(this + 4);
  if (v26)
  {
    v27 = a2;
    v28 = vcnt_s8(v26);
    v28.i16[0] = vaddlv_u8(v28);
    if (v28.u32[0] > 1uLL)
    {
      v29 = a2;
      if (v26 <= a2)
      {
        v29 = a2 % v26;
      }
    }

    else
    {
      v29 = (v26 - 1) & a2;
    }

    v30 = *(this + 3);
    v31 = *(v30 + 8 * v29);
    if (v31)
    {
      v32 = *v31;
      if (*v31)
      {
        v33 = v26 - 1;
        if (v28.u32[0] < 2uLL)
        {
          while (1)
          {
            v34 = *(v32 + 1);
            if (v34 == a2)
            {
              if (v32[4] == a2)
              {
                goto LABEL_30;
              }
            }

            else if ((v34 & v33) != v29)
            {
              return;
            }

            v32 = *v32;
            if (!v32)
            {
              return;
            }
          }
        }

        do
        {
          v35 = *(v32 + 1);
          if (v35 == a2)
          {
            if (v32[4] == a2)
            {
LABEL_30:
              if (v28.u32[0] > 1uLL)
              {
                if (v26 <= a2)
                {
                  v27 = a2 % v26;
                }
              }

              else
              {
                v27 = v33 & a2;
              }

              v36 = *(v30 + 8 * v27);
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36 != v32);
              if (v37 == (this + 40))
              {
                goto LABEL_47;
              }

              v38 = v37[1];
              if (v28.u32[0] > 1uLL)
              {
                if (v38 >= v26)
                {
                  v38 %= v26;
                }
              }

              else
              {
                v38 &= v33;
              }

              if (v38 != v27)
              {
LABEL_47:
                if (!*v32)
                {
                  goto LABEL_48;
                }

                v39 = *(*v32 + 8);
                if (v28.u32[0] > 1uLL)
                {
                  if (v39 >= v26)
                  {
                    v39 %= v26;
                  }
                }

                else
                {
                  v39 &= v33;
                }

                if (v39 != v27)
                {
LABEL_48:
                  *(v30 + 8 * v27) = 0;
                }
              }

              v40 = *v32;
              if (*v32)
              {
                v41 = *(v40 + 8);
                if (v28.u32[0] > 1uLL)
                {
                  if (v41 >= v26)
                  {
                    v41 %= v26;
                  }
                }

                else
                {
                  v41 &= v33;
                }

                if (v41 != v27)
                {
                  *(v30 + 8 * v41) = v37;
                  v40 = *v32;
                }
              }

              *v37 = v40;
              *v32 = 0;
              --*(this + 6);
              v42 = *(v32 + 3);
              if (v42)
              {
                _Block_release(v42);
              }

              operator delete(v32);
              return;
            }
          }

          else
          {
            if (v35 >= v26)
            {
              v35 %= v26;
            }

            if (v35 != v29)
            {
              return;
            }
          }

          v32 = *v32;
        }

        while (v32);
      }
    }
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD *a3)
{
  v5 = a2;
  v6 = *(a1 + 1);
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
  v10[3] = 0;
  v13 = (*(a1 + 3) + 1);
  v14 = a1[8];
  if (v6 && (v14 * v6) >= v13)
  {
    v5 = v8;
    v15 = *a1;
    v16 = *(*a1 + 8 * v8);
    if (!v16)
    {
      goto LABEL_85;
    }

LABEL_70:
    *v10 = *v16;
    goto LABEL_71;
  }

  v17 = 1;
  if (v6 >= 3)
  {
    v17 = (v6 & (v6 - 1)) != 0;
  }

  v18 = v17 | (2 * v6);
  v19 = vcvtps_u32_f32(v13 / v14);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 1);
  }

  if (prime > v6)
  {
LABEL_36:
    if (prime >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = operator new(8 * prime);
    v22 = *a1;
    *a1 = v21;
    if (v22)
    {
      operator delete(v22);
      v21 = *a1;
    }

    *(a1 + 1) = prime;
    bzero(v21, 8 * prime);
    v24 = (a1 + 4);
    v23 = *(a1 + 2);
    if (!v23)
    {
      goto LABEL_66;
    }

    v25 = v23[1];
    v26 = prime - 1;
    if ((prime & (prime - 1)) == 0)
    {
      v27 = v25 & v26;
      v21[v27] = v24;
      for (i = *v23; *v23; i = *v23)
      {
        v29 = i[1] & v26;
        if (v29 == v27)
        {
          v23 = i;
        }

        else if (v21[v29])
        {
          *v23 = *i;
          *i = *v21[v29];
          *v21[v29] = i;
        }

        else
        {
          v21[v29] = v23;
          v23 = i;
          v27 = v29;
        }
      }

      goto LABEL_66;
    }

    if (v25 >= prime)
    {
      v25 %= prime;
    }

    v21[v25] = v24;
    v33 = *v23;
    if (!*v23)
    {
LABEL_66:
      v6 = prime;
      if ((prime & (prime - 1)) != 0)
      {
        goto LABEL_67;
      }

      goto LABEL_84;
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 >= prime)
      {
        v34 %= prime;
      }

      if (v34 == v25)
      {
        goto LABEL_60;
      }

      if (v21[v34])
      {
        *v23 = *v33;
        *v33 = *v21[v34];
        *v21[v34] = v33;
        v33 = v23;
LABEL_60:
        v23 = v33;
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v21[v34] = v23;
        v23 = v33;
        v33 = *v33;
        v25 = v34;
        if (!v33)
        {
          goto LABEL_66;
        }
      }
    }
  }

  if (prime < v6)
  {
    v30 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
    if (v6 < 3 || (v31 = vcnt_s8(v6), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
    {
      v30 = std::__next_prime(v30);
    }

    else
    {
      v32 = 1 << -__clz(v30 - 1);
      if (v30 >= 2)
      {
        v30 = v32;
      }
    }

    if (prime <= v30)
    {
      prime = v30;
    }

    if (prime < v6)
    {
      if (!prime)
      {
        v36 = *a1;
        *a1 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        v6 = 0;
        *(a1 + 1) = 0;
        goto LABEL_84;
      }

      goto LABEL_36;
    }

    v6 = *(a1 + 1);
  }

  if ((v6 & (v6 - 1)) != 0)
  {
LABEL_67:
    if (v6 <= v5)
    {
      v5 %= v6;
    }

    v15 = *a1;
    v16 = *(*a1 + 8 * v5);
    if (!v16)
    {
      goto LABEL_85;
    }

    goto LABEL_70;
  }

LABEL_84:
  v5 = (v6 - 1) & v5;
  v15 = *a1;
  v16 = *(*a1 + 8 * v5);
  if (v16)
  {
    goto LABEL_70;
  }

LABEL_85:
  *v10 = *(a1 + 2);
  *(a1 + 2) = v10;
  v15[v5] = a1 + 4;
  if (!*v10)
  {
    goto LABEL_72;
  }

  v37 = *(*v10 + 8);
  if ((v6 & (v6 - 1)) != 0)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }

    v16 = &v15[v37];
  }

  else
  {
    v16 = &v15[v37 & (v6 - 1)];
  }

LABEL_71:
  *v16 = v10;
LABEL_72:
  ++*(a1 + 3);
  return v10;
}

void sub_297A303F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,dispatch::block<int({block_pointer})(unsigned char *,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        _Block_release(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

BOOL KTLAudioEnableHWLoopback(uint64_t a1)
{
  v2 = *(a1 + 16);
  v39 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v31 = 0;
    v40 = 0;
    v41 = v2;
    v35 = 0;
    if (ARI_CsiIceAudEnableLoopbackHWReq_ENC() || (v10 = operator new(0x18uLL), v11 = v35, v10[2] = v40, *(v10 + 2) = v11, *v10 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v10)))
    {
      v16 = 0;
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
      if (KTLUTACopyReceiveData(a1, &v31))
      {
        v13 = v31;
        LODWORD(v35) = -1;
        (*(*v31 + 16))(v31);
        v14 = v13[2];
        v15 = ARI_CsiIceAudEnableLoopbackHWRespCb_Extract();
        (*(*v13 + 8))(v13);
        v16 = v15 == 0;
        v12 = v35;
        if (!v35)
        {
          return !v12 && v16;
        }
      }

      else
      {
        v16 = 0;
      }
    }

LABEL_27:
    _KTLErrorPrint("KTLAudioEnableHWLoopback", "Error on the result: %d\n", v4, v5, v6, v7, v8, v9, v12);
    return !v12 && v16;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = -1;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = -1;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (ARI_CsiIceAudEnableLoopbackHWReq_BLK())
  {
    v16 = 0;
    v12 = *(v36 + 6);
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = dispatch_time(0, 1000000 * *(a1 + 20));
  v27 = dispatch_semaphore_wait(v18, v20);
  if (v27)
  {
    _KTLErrorPrint("KTLAudioEnableHWLoopback", "Timeout waiting for response.\n", v21, v22, v23, v24, v25, v26, v29);
  }

  if (v39)
  {
    AriHost::ExitTrx(v39);
  }

  v12 = *(v36 + 6);
  if (v27)
  {
    v16 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = *(v32 + 6) == 0;
  v19 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v19);
  }

LABEL_24:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  if (v12)
  {
    goto LABEL_27;
  }

  return !v12 && v16;
}

void sub_297A30788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLAudioEnableHWLoopback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceAudEnableLoopbackHWRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

void __copy_helper_block_e8_32r40r48c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  v4 = *(a2 + 48);
  a1[6] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLAudioDisableHWLoopback(uint64_t a1)
{
  v2 = *(a1 + 16);
  v33 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v25 = 0;
    v34 = 0;
    v35 = v2;
    v29 = 0;
    if (ARI_CsiIceAudDisableLoopbackHWReq_ENC() || (v4 = operator new(0x18uLL), v5 = v29, v4[2] = v34, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)))
    {
      v10 = 0;
      v6 = -1;
    }

    else
    {
      v6 = -1;
      if (KTLUTACopyReceiveData(a1, &v25))
      {
        v7 = v25;
        LODWORD(v29) = -1;
        (*(*v25 + 16))(v25);
        v8 = v7[2];
        v9 = ARI_CsiIceAudDisableLoopbackHWRespCb_Extract();
        (*(*v7 + 8))(v7);
        v10 = v9 == 0;
        v6 = v29;
      }

      else
      {
        v10 = 0;
      }
    }

    return !v6 && v10;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -1;
  v11 = dispatch_semaphore_create(0);
  v12 = v11;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (ARI_CsiIceAudDisableLoopbackHWReq_BLK())
  {
    v10 = 0;
    v6 = *(v30 + 6);
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v14 = dispatch_time(0, 1000000 * *(a1 + 20));
  v21 = dispatch_semaphore_wait(v12, v14);
  if (v21)
  {
    _KTLErrorPrint("KTLAudioDisableHWLoopback", "Timeout waiting for response.\n", v15, v16, v17, v18, v19, v20, v23);
  }

  if (v33)
  {
    AriHost::ExitTrx(v33);
  }

  v6 = *(v30 + 6);
  if (!v21)
  {
    v10 = *(v26 + 6) == 0;
    v13 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = 0;
  v13 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v13);
  }

LABEL_23:
  if (v12)
  {
    dispatch_release(v12);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return !v6 && v10;
}

void sub_297A30B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLAudioDisableHWLoopback_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceAudDisableLoopbackHWRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLStartProvision(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  v33 = v5;
  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1;
    v36 = 0;
    v37 = &v36;
    v38 = 0x4F002000000;
    v39 = __Block_byref_object_copy__2;
    v40 = __Block_byref_object_dispose__2;
    memset(v41, 170, sizeof(v41));
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    v27 = MEMORY[0x29EDCA5F8];
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiIceStartProvisionReq_BLK())
    {
      memcpy(a3, v37 + 5, 0x4C4uLL);
      v16 = 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v25 = dispatch_semaphore_wait(v15, v18);
      if (v25)
      {
        _KTLErrorPrint("KTLStartProvision", "Timeout waiting for response.\n", v19, v20, v21, v22, v23, v24, v27);
      }

      if (v33)
      {
        AriHost::ExitTrx(v33);
      }

      memcpy(a3, v37 + 5, 0x4C4uLL);
      if (v25)
      {
        v16 = 0;
        v17 = object;
        if (!object)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = *(v30 + 6) == 0;
        v17 = object;
        if (!object)
        {
LABEL_23:
          if (v15)
          {
            dispatch_release(v15);
          }

          _Block_object_dispose(&v36, 8);
          _Block_object_dispose(&v29, 8);
          if (v16)
          {
            goto LABEL_26;
          }

LABEL_10:
          result = 0;
          v13 = *MEMORY[0x29EDCA608];
          return result;
        }
      }
    }

    dispatch_release(v17);
    goto LABEL_23;
  }

  v29 = 0;
  v34 = 0;
  v35 = v5;
  v36 = 0;
  if (ARI_CsiIceStartProvisionReq_ENC())
  {
    goto LABEL_10;
  }

  v7 = operator new(0x18uLL);
  v8 = v36;
  v7[2] = v34;
  *(v7 + 2) = v8;
  *v7 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v7))
  {
    goto LABEL_10;
  }

  if ((KTLUTACopyReceiveData(a1, &v29) & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = v29;
  (*(*v29 + 16))(v29);
  v10 = v9[2];
  v11 = ARI_CsiIceStartProvisionResp_Extract();
  (*(*v9 + 8))(v9);
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_26:
  result = a3[1] == 0;
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A30F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLStartProvision_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceStartProvisionResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLFinishProvision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  v52 = v5;
  if (*(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2000000000;
    v51 = -1;
    v55 = 0;
    v56 = &v55;
    v57 = 0xD802000000;
    v58 = __Block_byref_object_copy__2;
    v59 = __Block_byref_object_dispose__3;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60 = v14;
    v61 = v14;
    v62 = v14;
    v63 = v14;
    v64 = v14;
    v65 = v14;
    v66 = v14;
    v67 = v14;
    v68 = v14;
    v69[0] = v14;
    *(v69 + 12) = v14;
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    if (ARI_CsiIceFinishProvisionReq_BLK())
    {
      v17 = 0;
      v18 = v56;
      v19 = *(v56 + 9);
      v20 = *(v56 + 7);
      *a3 = *(v56 + 5);
      *(a3 + 16) = v20;
      *(a3 + 32) = v19;
      v21 = *(v18 + 13);
      v22 = *(v18 + 17);
      v23 = *(v18 + 11);
      *(a3 + 80) = *(v18 + 15);
      *(a3 + 96) = v22;
      *(a3 + 48) = v23;
      *(a3 + 64) = v21;
      v24 = *(v18 + 21);
      v25 = *(v18 + 23);
      v26 = *(v18 + 19);
      *(a3 + 156) = *(v18 + 196);
      *(a3 + 128) = v24;
      *(a3 + 144) = v25;
      *(a3 + 112) = v26;
      v27 = object;
      if (!object)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v29 = dispatch_time(0, 1000000 * *(a1 + 20));
    v36 = dispatch_semaphore_wait(v16, v29);
    if (v36)
    {
      _KTLErrorPrint("KTLFinishProvision", "Timeout waiting for response.\n", v30, v31, v32, v33, v34, v35, v46);
    }

    if (v52)
    {
      AriHost::ExitTrx(v52);
    }

    v37 = v56;
    v38 = *(v56 + 9);
    v39 = *(v56 + 7);
    *a3 = *(v56 + 5);
    *(a3 + 16) = v39;
    *(a3 + 32) = v38;
    v40 = *(v37 + 13);
    v41 = *(v37 + 17);
    v42 = *(v37 + 11);
    *(a3 + 80) = *(v37 + 15);
    *(a3 + 96) = v41;
    *(a3 + 48) = v42;
    *(a3 + 64) = v40;
    v43 = *(v37 + 21);
    v44 = *(v37 + 23);
    v45 = *(v37 + 19);
    *(a3 + 156) = *(v37 + 196);
    *(a3 + 128) = v43;
    *(a3 + 144) = v44;
    *(a3 + 112) = v45;
    if (v36)
    {
      v17 = 0;
      v27 = object;
      if (!object)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = *(v49 + 6) == 0;
      v27 = object;
      if (!object)
      {
LABEL_16:
        if (v16)
        {
          dispatch_release(v16);
        }

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v48, 8);
        if (v17)
        {
          goto LABEL_19;
        }

LABEL_10:
        result = 0;
        v13 = *MEMORY[0x29EDCA608];
        return result;
      }
    }

LABEL_15:
    dispatch_release(v27);
    goto LABEL_16;
  }

  v48 = 0;
  v53 = 0;
  v54 = v5;
  v55 = 0;
  if (ARI_CsiIceFinishProvisionReq_ENC())
  {
    goto LABEL_10;
  }

  v7 = operator new(0x18uLL);
  v8 = v55;
  v7[2] = v53;
  *(v7 + 2) = v8;
  *v7 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v7))
  {
    goto LABEL_10;
  }

  if ((KTLUTACopyReceiveData(a1, &v48) & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = v48;
  (*(*v48 + 16))(v48);
  v10 = v9[2];
  v11 = ARI_CsiIceFinishProvisionResp_Extract();
  (*(*v9 + 8))(v9);
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_19:
  result = *(a3 + 20) == 0;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A3142C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  result = *(a2 + 152);
  v8 = *(a2 + 168);
  v9 = *(a2 + 184);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 184) = v9;
  *(a1 + 168) = v8;
  *(a1 + 152) = result;
  return result;
}

uint64_t __KTLFinishProvision_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceFinishProvisionResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLGetManifestStatus(uint64_t a1, _DWORD *a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v33 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2000000000;
    v32 = -1;
    v36 = 0;
    v37 = &v36;
    v38 = 0x13802000000;
    v39 = __Block_byref_object_copy__7;
    v40 = __Block_byref_object_dispose__8;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v13;
    v56 = v13;
    v57 = v13;
    v41 = v13;
    v42 = v13;
    v43 = v13;
    v44 = v13;
    v45 = v13;
    v46 = v13;
    v47 = v13;
    v48 = v13;
    v49 = v13;
    v50 = v13;
    v51 = v13;
    v52 = v13;
    v53 = v13;
    v54 = v13;
    v14 = dispatch_semaphore_create(0);
    v15 = v14;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (ARI_CsiIceGetManifestStatusReq_BLK())
    {
      memcpy(a2, v37 + 5, 0x110uLL);
      v16 = 0;
      v17 = object;
      if (!object)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = dispatch_time(0, 1000000 * *(a1 + 20));
      v25 = dispatch_semaphore_wait(v15, v18);
      if (v25)
      {
        _KTLErrorPrint("KTLGetManifestStatus", "Timeout waiting for response.\n", v19, v20, v21, v22, v23, v24, v27);
      }

      if (v33)
      {
        AriHost::ExitTrx(v33);
      }

      memcpy(a2, v37 + 5, 0x110uLL);
      if (v25)
      {
        v16 = 0;
        v17 = object;
        if (!object)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = *(v30 + 6) == 0;
        v17 = object;
        if (!object)
        {
LABEL_23:
          if (v15)
          {
            dispatch_release(v15);
          }

          _Block_object_dispose(&v36, 8);
          _Block_object_dispose(&v29, 8);
          if (v16)
          {
            goto LABEL_26;
          }

LABEL_10:
          result = 0;
          v12 = *MEMORY[0x29EDCA608];
          return result;
        }
      }
    }

    dispatch_release(v17);
    goto LABEL_23;
  }

  v29 = 0;
  v34 = 0;
  v35 = v4;
  v36 = 0;
  if (ARI_CsiIceGetManifestStatusReq_ENC())
  {
    goto LABEL_10;
  }

  v6 = operator new(0x18uLL);
  v7 = v36;
  v6[2] = v34;
  *(v6 + 2) = v7;
  *v6 = &unk_2A1E625B0;
  if (!KTLUTASendAndReleaseData(a1, v6))
  {
    goto LABEL_10;
  }

  if ((KTLUTACopyReceiveData(a1, &v29) & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v29;
  (*(*v29 + 16))(v29);
  v9 = v8[2];
  v10 = ARI_CsiIceGetManifestStatusResp_Extract();
  (*(*v8 + 8))(v8);
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_26:
  result = *a2 == 0;
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A318A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLGetManifestStatus_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiIceGetManifestStatusResp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

double Bsp::BspCommandDriver::BspCommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t Bsp::BspCommandDriver::GetIMEIInfo(Bsp::BspCommandDriver *this, AriSdk::ARI_CsiMsCpsReadImeiReq_SDK *a2, AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK **a3)
{
  v22 = 0;
  v23 = 0;
  AriSdk::MsgBase::getRawBytes();
  v20 = 0;
  v21 = 0;
  v9 = ktl::CommandDriver::perform<AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK>(this, 83918848, &v20, a3, v5, v6, v7, v8);
  v16 = v9;
  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v9 & 1) == 0)
  {
LABEL_4:
    _KTLErrorPrint("GetIMEIInfo", "Failed request\n", v10, v11, v12, v13, v14, v15, v20);
  }

LABEL_5:
  v18 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v16;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return v16;
}

void sub_297A31AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_297A31B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ktl::CommandDriver::perform<AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK>(uint64_t a1, uint64_t a2, uint64_t **a3, AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a4 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = **a3;
    v14 = (*a3)[1] - v13;
    v15 = *(v11 + 20);
    LODWORD(v64) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", a3, a4, a5, a6, a7, a8, v14);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((*v12)(v12, v13, v14, &v64, 1, v15, 0) ? (v22 = v64 == v14) : (v22 = 0), v22))
    {
      v64 = 0;
      if (KTLUTACopyReceiveData(*(a1 + 16), &v64))
      {
        v41 = v64;
        if (v64)
        {
          v42 = operator new(0x60uLL);
          v43 = (*(*v41 + 16))(v41);
          v44 = v41[2];
          AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(v42, v43);
          *a4 = v42;
          (*(*v41 + 8))(v41);
          goto LABEL_26;
        }
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v29 = "error while trying to get response from device \n";
LABEL_11:
    _KTLErrorPrint("perform", v29, v23, v24, v25, v26, v27, v28, v63);
    goto LABEL_12;
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x3002000000;
  v67 = __Block_byref_object_copy__3;
  v68 = __Block_byref_object_dispose__3;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v32 = *(*a3 + 2) - **a3;
  v33 = *(*(a1 + 16) + 16);
  v34 = AriHost::Send();
  if (v34)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v35, v36, v37, v38, v39, v40, v34);
    goto LABEL_23;
  }

  v45 = v65;
  v46 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v45[5], v46))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v47, v48, v49, v50, v51, v52, v63);
LABEL_23:
    v53 = 0;
    _Block_object_dispose(&v64, 8);
    v54 = object;
    if (!object)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v53 = 1;
  _Block_object_dispose(&v64, 8);
  v54 = object;
  if (object)
  {
LABEL_24:
    dispatch_release(v54);
  }

LABEL_25:
  if ((v53 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_26:
  hasDeclaredGmid = AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::hasDeclaredGmid(*a4);
  v56 = *a4;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v56) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a4);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v57, v58, v59, v60, v61, v62, a2);
      goto LABEL_12;
    }

    v29 = "Received NACK\n";
    goto LABEL_11;
  }

  if (!AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::unpack(v56))
  {
    return 1;
  }

LABEL_12:
  if (*a4)
  {
    (*(**a4 + 16))(*a4);
  }

  result = 0;
  *a4 = 0;
  return result;
}

void sub_297A31EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  _Block_object_dispose(&a17, 8);
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Bsp::BspCommandDriver::GetBBWakeReason(uint64_t a1, uint64_t a2, AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _KTLErrorPrint("GetBBWakeReason", "Getting Baseband wake reason", a3, a4, a5, a6, a7, a8, v76);
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v16 = *(a1 + 16);
  v17 = *(v16 + 8);
  if (v17 || !*(v16 + 16))
  {
    v18 = MEMORY[0];
    v19 = MEMORY[8] - MEMORY[0];
    v20 = *(v16 + 20);
    LODWORD(v78) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v10, v11, v12, v13, v14, v15, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v18);
    }

    if (*v17 && ((v27 = (*v17)(v17, v18, v19, &v78, 1, v20, 0), v78 == v19) ? (v28 = v27) : (v28 = 0), (v28 & 1) != 0))
    {
      v78 = 0;
      v29 = KTLUTACopyReceiveData(*(a1 + 16), &v78);
      v36 = v78;
      if (v78)
      {
        v37 = v29;
      }

      else
      {
        v37 = 0;
      }

      if (v37 == 1)
      {
        v38 = operator new(0x50uLL);
        v39 = (*(*v36 + 16))(v36);
        v40 = v36[2];
        AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(v38, v39);
        *a3 = v38;
        (*(*v36 + 8))(v36);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v21, v22, v23, v24, v25, v26, v19);
    }

    v41 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v41, v30, v31, v32, v33, v34, v35, v77);
    goto LABEL_17;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3002000000;
  v81 = __Block_byref_object_copy__3;
  v82 = __Block_byref_object_dispose__3;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v50 = *(*(a1 + 16) + 16);
  v51 = AriHost::Send();
  if (v51)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v52, v53, v54, v55, v56, v57, v51);
    goto LABEL_28;
  }

  v58 = v79;
  v59 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v58[5], v59))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v60, v61, v62, v63, v64, v65, v77);
LABEL_28:
    v66 = 0;
    _Block_object_dispose(&v78, 8);
    v67 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v66 = 1;
  _Block_object_dispose(&v78, 8);
  v67 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v67);
  }

LABEL_30:
  if ((v66 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::hasDeclaredGmid(*a3);
  v69 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v69) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v70, v71, v72, v73, v74, v75, 4111007744);
      goto LABEL_17;
    }

    v41 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::unpack(v69))
  {
    v48 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v48 = 0;
  *a3 = 0;
LABEL_20:
  if ((v48 & 1) == 0)
  {
    _KTLErrorPrint("GetBBWakeReason", "Failed request\n", v42, v43, v44, v45, v46, v47, v77);
  }

  return v48;
}

void sub_297A32390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t Bsp::BspCommandDriver::SwTrap(uint64_t a1, uint64_t *a2)
{
  v72 = *MEMORY[0x29EDCA608];
  v57 = 0;
  v58 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v4;
  *v56 = v4;
  v53[3] = v4;
  *__p = v4;
  v53[1] = v4;
  v53[2] = v4;
  v53[0] = v4;
  AriSdk::ARI_CsiBspSwTrapReq_v3_SDK::ARI_CsiBspSwTrapReq_v3_SDK(v53);
  v5 = operator new(8uLL);
  *v5 = 0x600DC0FFEELL;
  v6 = __p[0];
  __p[0] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (!v9)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = operator new(v9);
  v11 = v10;
  if (v9 < 0x20)
  {
    v12 = v8;
    v13 = v10;
    do
    {
LABEL_22:
      v18 = *v12++;
      *v13++ = v18;
    }

    while (v12 != v8 + v9);
    goto LABEL_23;
  }

  v12 = v8;
  v13 = v10;
  if ((v10 - v8) < 0x20)
  {
    goto LABEL_22;
  }

  v12 = v8 + (v9 & 0x7FFFFFFFFFFFFFE0);
  v13 = v10 + (v9 & 0x7FFFFFFFFFFFFFE0);
  v14 = (v10 + 16);
  v15 = (v8 + 2);
  v16 = v9 & 0x7FFFFFFFFFFFFFE0;
  do
  {
    v17 = *v15;
    *(v14 - 1) = *(v15 - 1);
    *v14 = v17;
    v14 += 2;
    v15 += 2;
    v16 -= 32;
  }

  while (v16);
  if (v9 != (v9 & 0x7FFFFFFFFFFFFFE0))
  {
    goto LABEL_22;
  }

LABEL_23:
  v9 += v10;
  v19 = v13 - v10;
  if ((v13 - v10) >= 0x201)
  {
    LogLevels = Ari::GetLogLevels(v10);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v59, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v22);
        v49 = v60 >= 0 ? v59 : v59[0];
        *buf = 136316418;
        *&buf[4] = "ari";
        v62 = 2080;
        v63 = v49;
        v64 = 1024;
        v65 = 360;
        v66 = 2048;
        v67 = &__p[1];
        v68 = 2048;
        v69 = v19;
        v70 = 2048;
        v71 = 512;
        _os_log_error_impl(&dword_297A27000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", buf, 0x3Au);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }
      }

      AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp9ugB6BN4_7o5_ni_nqpzR2zaN46Dzo_3IlW4/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v22);
      if (v64 >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v23, v24, 360, &__p[1], v19, 512);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v11)
    {
      operator delete(v11);
    }

    goto LABEL_33;
  }

LABEL_18:
  if (__p[1])
  {
    *&v55 = __p[1];
    operator delete(__p[1]);
  }

  __p[1] = v11;
  *&v55 = v13;
  *(&v55 + 1) = v9;
LABEL_33:
  v26 = __p[1];
  v25 = v55;
  v27 = operator new(4uLL);
  *v27 = v25 - v26;
  v28 = v56[0];
  v56[0] = v27;
  if (v28)
  {
    operator delete(v28);
  }

  v29 = operator new(4uLL);
  *v29 = 0;
  v30 = v56[1];
  v56[1] = v29;
  if (v30)
  {
    operator delete(v30);
  }

  AriSdk::MsgBase::getRawBytes();
  v51 = v57;
  v52 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = ktl::CommandDriver::perform(a1, &v51, v31, v32, v33, v34, v35, v36);
  v44 = v37;
  v45 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
    if (v44)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if ((v37 & 1) == 0)
  {
LABEL_42:
    _KTLErrorPrint("SwTrap", "Failed to send request (this message does not expect a response)\n", v38, v39, v40, v41, v42, v43, v50);
  }

LABEL_43:
  MEMORY[0x29C279C10](v53);
  v46 = v58;
  if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *MEMORY[0x29EDCA608];
  return v44;
}

void sub_297A32840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  if (v32)
  {
    operator delete(v32);
    MEMORY[0x29C279C10](&a17);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a32);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C279C10](&a17);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE84410, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk29ARI_CsiMsCpsReadImeiRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x60uLL);
  AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk31ARI_CsiIceWakeupReasonRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_CsiIceWakeupReasonRspCb_SDK::ARI_CsiIceWakeupReasonRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

BOOL KTLGetFirmwareVersion(uint64_t a1, char *a2, int *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 170, sizeof(v15));
  result = KTLSysGetInfo(a1, 4, v15, v6, v7, v8, v9, v10);
  if (result)
  {
    if (v15[128] < *a3)
    {
      v12 = v15[128] + 1;
    }

    else
    {
      v12 = *a3;
    }

    *a3 = v12;
    v13 = result;
    memcpy(a2, v15, (v12 - 1));
    result = v13;
    a2[*a3 - 1] = 0;
  }

  else
  {
    *a3 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KTLGetIMEI(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[3] = *MEMORY[0x29EDCA608];
  memset(v20, 170, 24);
  if (*a3 >= 0xFu)
  {
    v11 = KTLGetIMEIInfo(a1, a4, v20, a4, a5, a6, a7, a8);
    result = 0;
    if (a2 && v11)
    {
      bzero(a2, *a3);
      *a2 = (BYTE4(v20[0]) >> 4) | 0x30;
      v12 = BYTE5(v20[0]);
      a2[1] = BYTE5(v20[0]) & 0xF | 0x30;
      a2[2] = (v12 >> 4) | 0x30;
      v13 = BYTE6(v20[0]);
      a2[3] = BYTE6(v20[0]) & 0xF | 0x30;
      a2[4] = (v13 >> 4) | 0x30;
      v14 = HIBYTE(v20[0]);
      a2[5] = HIBYTE(v20[0]) & 0xF | 0x30;
      a2[6] = (v14 >> 4) | 0x30;
      v15 = LOBYTE(v20[1]);
      a2[7] = v20[1] & 0xF | 0x30;
      a2[8] = (v15 >> 4) | 0x30;
      v16 = BYTE1(v20[1]);
      a2[9] = BYTE1(v20[1]) & 0xF | 0x30;
      a2[10] = (v16 >> 4) | 0x30;
      v17 = BYTE2(v20[1]);
      a2[11] = BYTE2(v20[1]) & 0xF | 0x30;
      a2[12] = (v17 >> 4) | 0x30;
      v18 = BYTE3(v20[1]);
      a2[13] = BYTE3(v20[1]) & 0xF | 0x30;
      a2[14] = (v18 >> 4) | 0x30;
      a2[15] = 0;
      result = 1;
      *a3 = 16;
    }
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KTLGetIMEI_V2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = a1;
  *v23 = 0u;
  *v24 = 0u;
  v25 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[2] = v3;
  v18[3] = v3;
  v18[0] = v3;
  v18[1] = v3;
  AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::ARI_CsiMsCpsReadImeiReq_SDK(v18);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(4uLL);
  *v4 = 0;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  IMEIInfo = Bsp::BspCommandDriver::GetIMEIInfo(&v20, v18, &v17);
  if (IMEIInfo)
  {
    *(a2 + 36) = 16;
    *(a2 + 16) = 16;
    *(a2 + 84) = 17;
    *(a2 + 60) = 17;
    v7 = v17;
    v8 = *(v17 + 9);
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = (v8[4] >> 4) | 0x30;
    *(a2 + 1) = v8[5] & 0xF | 0x30;
    *(a2 + 2) = (v8[5] >> 4) | 0x30;
    *(a2 + 3) = v8[6] & 0xF | 0x30;
    *(a2 + 4) = (v8[6] >> 4) | 0x30;
    *(a2 + 5) = v8[7] & 0xF | 0x30;
    *(a2 + 6) = (v8[7] >> 4) | 0x30;
    *(a2 + 7) = v8[8] & 0xF | 0x30;
    *(a2 + 8) = (v8[8] >> 4) | 0x30;
    *(a2 + 9) = v8[9] & 0xF | 0x30;
    *(a2 + 10) = (v8[9] >> 4) | 0x30;
    *(a2 + 11) = v8[10] & 0xF | 0x30;
    *(a2 + 12) = (v8[10] >> 4) | 0x30;
    *(a2 + 13) = v8[11] & 0xF | 0x30;
    *(a2 + 14) = (v8[11] >> 4) | 0x30;
    *(a2 + 15) = 0;
    *(a2 + 16) = 16;
    v9 = *(v7 + 9);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = (v9[12] >> 4) | 0x30;
    *(a2 + 41) = v9[13] & 0xF | 0x30;
    *(a2 + 42) = (v9[13] >> 4) | 0x30;
    *(a2 + 43) = v9[14] & 0xF | 0x30;
    *(a2 + 44) = (v9[14] >> 4) | 0x30;
    *(a2 + 45) = v9[15] & 0xF | 0x30;
    *(a2 + 46) = (v9[15] >> 4) | 0x30;
    *(a2 + 47) = v9[16] & 0xF | 0x30;
    *(a2 + 48) = (v9[16] >> 4) | 0x30;
    *(a2 + 49) = v9[17] & 0xF | 0x30;
    *(a2 + 50) = (v9[17] >> 4) | 0x30;
    *(a2 + 51) = v9[18] & 0xF | 0x30;
    *(a2 + 52) = (v9[18] >> 4) | 0x30;
    *(a2 + 53) = v9[19] & 0xF | 0x30;
    *(a2 + 54) = (v9[19] >> 4) | 0x30;
    *(a2 + 55) = v9[20] & 0xF | 0x30;
    *(a2 + 56) = 0;
    *(a2 + 60) = 17;
    v10 = *(v7 + 10);
    if (v10)
    {
      *(a2 + 28) = 0;
      *(a2 + 20) = 0;
      *(a2 + 20) = (*v10 >> 4) | 0x30;
      *(a2 + 21) = v10[1] & 0xF | 0x30;
      *(a2 + 22) = (v10[1] >> 4) | 0x30;
      *(a2 + 23) = v10[2] & 0xF | 0x30;
      *(a2 + 24) = (v10[2] >> 4) | 0x30;
      *(a2 + 25) = v10[3] & 0xF | 0x30;
      *(a2 + 26) = (v10[3] >> 4) | 0x30;
      *(a2 + 27) = v10[4] & 0xF | 0x30;
      *(a2 + 28) = (v10[4] >> 4) | 0x30;
      *(a2 + 29) = v10[5] & 0xF | 0x30;
      *(a2 + 30) = (v10[5] >> 4) | 0x30;
      *(a2 + 31) = v10[6] & 0xF | 0x30;
      *(a2 + 32) = (v10[6] >> 4) | 0x30;
      *(a2 + 33) = v10[7] & 0xF | 0x30;
      *(a2 + 34) = (v10[7] >> 4) | 0x30;
      *(a2 + 35) = 0;
      *(a2 + 36) = 16;
      v11 = *(v7 + 10);
      *(a2 + 80) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 64) = (v11[8] >> 4) | 0x30;
      *(a2 + 65) = v11[9] & 0xF | 0x30;
      *(a2 + 66) = (v11[9] >> 4) | 0x30;
      *(a2 + 67) = v11[10] & 0xF | 0x30;
      *(a2 + 68) = (v11[10] >> 4) | 0x30;
      *(a2 + 69) = v11[11] & 0xF | 0x30;
      *(a2 + 70) = (v11[11] >> 4) | 0x30;
      *(a2 + 71) = v11[12] & 0xF | 0x30;
      *(a2 + 72) = (v11[12] >> 4) | 0x30;
      *(a2 + 73) = v11[13] & 0xF | 0x30;
      *(a2 + 74) = (v11[13] >> 4) | 0x30;
      *(a2 + 75) = v11[14] & 0xF | 0x30;
      *(a2 + 76) = (v11[14] >> 4) | 0x30;
      *(a2 + 77) = v11[15] & 0xF | 0x30;
      *(a2 + 78) = (v11[15] >> 4) | 0x30;
      *(a2 + 79) = v11[16] & 0xF | 0x30;
      *(a2 + 84) = 17;
      MEMORY[0x29C279C70](v18);
      v12 = v24[0];
      if (!v24[0])
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a2 + 84) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 28) = 0;
      *(a2 + 20) = 0;
      *(a2 + 36) = 0;
      MEMORY[0x29C279C70](v18);
      v12 = v24[0];
      if (!v24[0])
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    *(a2 + 84) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 41) = 0u;
    *(a2 + 68) = 0;
    *(a2 + 60) = 0;
    *(a2 + 73) = 0;
    MEMORY[0x29C279C70](v18);
    v12 = v24[0];
    if (!v24[0])
    {
      goto LABEL_13;
    }
  }

  do
  {
    v15 = *v12;
    v16 = v12[3];
    if (v16)
    {
      _Block_release(v16);
    }

    operator delete(v12);
    v12 = v15;
  }

  while (v15);
LABEL_13:
  v14 = v23[0];
  v23[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (!v21)
  {
    return IMEIInfo;
  }

  std::__shared_weak_count::__release_weak(v21);
  return IMEIInfo;
}

void sub_297A332C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  Bsp::BspCommandDriver::~BspCommandDriver(va);
  _Unwind_Resume(a1);
}

uint64_t KTLGetMEID(uint64_t a1, _BYTE *a2, _DWORD *a3, int a4)
{
  v16[3] = *MEMORY[0x29EDCA608];
  memset(v16, 170, 24);
  if (*a3 >= 0xEu)
  {
    v7 = KTLGetMEIDInfo(a1, a4, v16);
    result = 0;
    if (a2 && v7)
    {
      bzero(a2, *a3);
      v8 = BYTE4(v16[0]);
      *a2 = BYTE4(v16[0]) & 0xF | 0x30;
      a2[1] = (v8 >> 4) | 0x30;
      v9 = BYTE5(v16[0]);
      a2[2] = BYTE5(v16[0]) & 0xF | 0x30;
      a2[3] = (v9 >> 4) | 0x30;
      v10 = BYTE6(v16[0]);
      a2[4] = BYTE6(v16[0]) & 0xF | 0x30;
      a2[5] = (v10 >> 4) | 0x30;
      v11 = HIBYTE(v16[0]);
      a2[6] = HIBYTE(v16[0]) & 0xF | 0x30;
      a2[7] = (v11 >> 4) | 0x30;
      v12 = LOBYTE(v16[1]);
      a2[8] = v16[1] & 0xF | 0x30;
      a2[9] = (v12 >> 4) | 0x30;
      v13 = BYTE1(v16[1]);
      a2[10] = BYTE1(v16[1]) & 0xF | 0x30;
      a2[11] = (v13 >> 4) | 0x30;
      v14 = BYTE2(v16[1]);
      a2[12] = BYTE2(v16[1]) & 0xF | 0x30;
      a2[13] = (v14 >> 4) | 0x30;
      a2[14] = 0;
      result = 1;
      *a3 = 14;
    }
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KTLIsValidIMEIString(const char *a1)
{
  result = strncmp(a1, "00000000000000", 0xFuLL);
  if (result)
  {
    return strncmp(a1, "00499901064000", 0xFuLL) != 0;
  }

  return result;
}

uint64_t KTLGetIMEISV(uint64_t a1, _BYTE *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[3] = *MEMORY[0x29EDCA608];
  memset(v20, 170, 24);
  if (*a3 >= 0x10u)
  {
    v11 = KTLGetIMEIInfo(a1, a4, v20, a4, a5, a6, a7, a8);
    result = 0;
    if (a2 && v11)
    {
      bzero(a2, *a3);
      *a2 = (BYTE4(v20[1]) >> 4) | 0x30;
      v12 = BYTE5(v20[1]);
      a2[1] = BYTE5(v20[1]) & 0xF | 0x30;
      a2[2] = (v12 >> 4) | 0x30;
      v13 = BYTE6(v20[1]);
      a2[3] = BYTE6(v20[1]) & 0xF | 0x30;
      a2[4] = (v13 >> 4) | 0x30;
      v14 = HIBYTE(v20[1]);
      a2[5] = HIBYTE(v20[1]) & 0xF | 0x30;
      a2[6] = (v14 >> 4) | 0x30;
      v15 = LOBYTE(v20[2]);
      a2[7] = v20[2] & 0xF | 0x30;
      a2[8] = (v15 >> 4) | 0x30;
      v16 = BYTE1(v20[2]);
      a2[9] = BYTE1(v20[2]) & 0xF | 0x30;
      a2[10] = (v16 >> 4) | 0x30;
      v17 = BYTE2(v20[2]);
      a2[11] = BYTE2(v20[2]) & 0xF | 0x30;
      a2[12] = (v17 >> 4) | 0x30;
      v18 = BYTE3(v20[2]);
      a2[13] = BYTE3(v20[2]) & 0xF | 0x30;
      a2[14] = (v18 >> 4) | 0x30;
      a2[15] = BYTE4(v20[2]) & 0xF | 0x30;
      a2[16] = 0;
      result = 1;
      *a3 = 17;
    }
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t KTLGetSIMInfo(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1;
  *v26 = 0u;
  *v27 = 0u;
  v28 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  if (*(a1 + 20) >> 4 <= 0x270u)
  {
    *(a1 + 20) = 10000;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v6;
  v21[3] = v6;
  v21[0] = v6;
  v21[1] = v6;
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v21);
  v20 = 0;
  v7 = operator new(4uLL);
  *v7 = a3;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  *(a2 + 4) = 0;
  *a2 = 0;
  VinylType = eUICC::VinylCommandDriver::GetVinylType(&v23, v21, &v20);
  if (!VinylType)
  {
    MEMORY[0x29C27A140](v21);
    v10 = v27[0];
    if (!v27[0])
    {
      goto LABEL_23;
    }

    do
    {
LABEL_30:
      v18 = *v10;
      v19 = v10[3];
      if (v19)
      {
        _Block_release(v19);
      }

      operator delete(v10);
      v10 = v18;
    }

    while (v18);
    goto LABEL_23;
  }

  v11 = v20;
  v12 = **(v20 + 9);
  if (!v12 || v12 == 6 && **(v20 + 16) == 2)
  {
    *(a2 + 4) = 0;
    goto LABEL_22;
  }

  v13 = 1;
  *(a2 + 4) = 1;
  v14 = *(v11 + 17);
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = *v14;
  if (v15 == 2)
  {
    v13 = 3;
    goto LABEL_21;
  }

  if (v15 == 1)
  {
    v13 = 2;
    goto LABEL_21;
  }

  if (!*v14)
  {
    v13 = 1;
LABEL_21:
    *a2 = v13;
    goto LABEL_22;
  }

  *a2 = 0;
LABEL_22:
  (*(*v11 + 16))(v11);
  MEMORY[0x29C27A140](v21);
  v10 = v27[0];
  if (v27[0])
  {
    goto LABEL_30;
  }

LABEL_23:
  v16 = v26[0];
  v26[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  return VinylType;
}

void sub_297A33868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  MEMORY[0x29C27A140](va);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va1);
  _Unwind_Resume(a1);
}

void sub_297A33888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va);
  _Unwind_Resume(a1);
}

uint64_t KTLGetSimSlotMapping(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v30 = 0;
  memset(v29, 170, sizeof(v29));
  *a2 = 0x100000000;
  if (!KTLIsBBSimStackMappingEnabled(a1, &v30))
  {
    v11 = "Treating BB as single-SIM. Using default SIM stack mapping in KTL.\n";
    goto LABEL_7;
  }

  if (v30)
  {
    v11 = "BB internal SIM slot -> stack instance mapping enabled. Using default SIM stack mapping in KTL.\n";
LABEL_7:
    _KTLDebugPrint("KTLGetSimSlotMapping", v11, v5, v6, v7, v8, v9, v10, v27);
    return 1;
  }

  _KTLDebugPrint("KTLGetSimSlotMapping", "BB internal SIM slot -> stack instance mapping disabled. Retrieveing SIM stack mapping from BB.\n.", v5, v6, v7, v8, v9, v10, v27);
  if (KTLGetSimStackMapping(a1, v29))
  {
    if (v29[0])
    {
      v19 = *&v29[4];
    }

    else
    {
      v19 = 255;
    }

    *a2 = v19;
    _KTLDebugPrint("KTLGetSimSlotMapping", "simSlotMapping->slot_instance_id[%lu] = %d\n", v13, v14, v15, v16, v17, v18, 0);
    if (v29[0] <= 1u)
    {
      v26 = 255;
    }

    else
    {
      v26 = *&v29[8];
    }

    *(a2 + 4) = v26;
    _KTLDebugPrint("KTLGetSimSlotMapping", "simSlotMapping->slot_instance_id[%lu] = %d\n", v20, v21, v22, v23, v24, v25, 1);
    return 1;
  }

  else
  {
    _KTLErrorPrint("KTLGetSimSlotMapping", "Failed to retrieve SIM stack mapping from BB.\n", v13, v14, v15, v16, v17, v18, v28);
    return 0;
  }
}

uint64_t KTLGetSimSlotInstance(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a3)
  {
    v10 = a2;
    if (a2 < 2)
    {
      v12 = 0xAAAAAAAAAAAAAAAALL;
      result = KTLGetSimSlotMapping(a1, &v12);
      if (result)
      {
        *a3 = *(&v12 + v10);
      }
    }

    else
    {
      _KTLErrorPrint("KTLGetSimSlotInstance", "simSlot parameter: %d is >= KTL max number of supported SIMs: %d\n", a3, a4, a5, a6, a7, a8, a2);
      return 0;
    }
  }

  return result;
}

uint64_t KTLGetSIMSummary(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    result = KTLGetSimSlotMapping(a1, &v6);
    if (result)
    {
      v5 = result;
      KTLGetSIMInfo(a1, a2, v6);
      KTLGetSIMInfo(a1, a2 + 8, SHIDWORD(v6));
      return v5;
    }
  }

  return result;
}

const char *asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "unknown SIM type";
  }

  else
  {
    return off_29EE84438[a1 - 1];
  }
}

uint64_t KTLEFICheckSIMReady(uint64_t a1, BOOL *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
      v5 = KTLPing(a1, a2);
      result = 0;
      if (v5)
      {
        if (*a2)
        {
          result = KTLIsSIMSlotReady(a1, a2, 0);
          v8 = 0;
          if (result && *a2)
          {
            v6 = result;
            v7 = KTLIsSIMSlotReady(a1, &v8, 1);
            result = v6;
            if (v7)
            {
              *a2 = v8;
            }
          }
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t KTLIsSIMSlotReady(uint64_t a1, char *a2, int a3)
{
  v26 = 0;
  v27 = 0;
  v28 = a1;
  *v29 = 0u;
  *v30 = 0u;
  v31 = 0xAAAAAAAA3F800000;
  _KTLDebugFlags = 15;
  if (*(a1 + 20) >> 4 <= 0x270u)
  {
    *(a1 + 20) = 10000;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v5;
  v24[3] = v5;
  v24[0] = v5;
  v24[1] = v5;
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v24);
  v23 = 0;
  v6 = operator new(4uLL);
  *v6 = a3;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  VinylType = eUICC::VinylCommandDriver::GetVinylType(&v26, v24, &v23);
  if (!VinylType)
  {
    *a2 = 0;
    goto LABEL_15;
  }

  v15 = v23;
  v16 = **(v23 + 9);
  v17 = 1;
  if (v16 <= 6)
  {
    if (((1 << v16) & 0x6D) == 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    *a2 = v17;
LABEL_14:
    (*(*v15 + 16))(v15);
    goto LABEL_15;
  }

  if (v16 - 128 < 3)
  {
    goto LABEL_13;
  }

  if (v16 == 254)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  _KTLErrorPrint("KTLIsSIMSlotReady", "Unknown sim state 0x%x\n", v8, v9, v10, v11, v12, v13, **(v23 + 9));
  v15 = v23;
  *a2 = 0;
  if (v15)
  {
    goto LABEL_14;
  }

LABEL_15:
  MEMORY[0x29C27A140](v24);
  v18 = v30[0];
  if (v30[0])
  {
    do
    {
      v21 = *v18;
      v22 = v18[3];
      if (v22)
      {
        _Block_release(v22);
      }

      operator delete(v18);
      v18 = v21;
    }

    while (v21);
  }

  v19 = v29[0];
  v29[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  return VinylType;
}

void sub_297A33DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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
  MEMORY[0x29C27A140](va);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va1);
  _Unwind_Resume(a1);
}

void sub_297A33E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  eUICC::VinylCommandDriver::~VinylCommandDriver(va);
  _Unwind_Resume(a1);
}

void Bsp::BspCommandDriver::~BspCommandDriver(Bsp::BspCommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

BOOL KTLNVMReadGroupEnumList(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v42 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v38 = 0;
    LODWORD(v34) = v4;
    v43 = 0;
    v44 = 0;
    if (ARI_CsiBspNvmGroupEnumListReq_ENC() || (v6 = operator new(0x18uLL), v7 = v44, v6[2] = v43, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v38))
    {
      v18 = 0;
      v17 = 0;
      goto LABEL_29;
    }

    v8 = v38;
    (*(*v38 + 16))(v38);
    v9 = v8[2];
    v10 = ARI_CsiBspNvmGroupEnumListRespCb_Extract();
    (*(*v8 + 8))(v8);
    v17 = v10 == 0;
    v18 = HIDWORD(v42);
    if (v17)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0xDD802000000;
  v47 = __Block_byref_object_copy__4;
  v48 = __Block_byref_object_dispose__4;
  memset(v49, 170, sizeof(v49));
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = -1;
  v19 = dispatch_semaphore_create(0);
  v20 = v19;
  v32 = MEMORY[0x29EDCA5F8];
  object = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  if (ARI_CsiBspNvmGroupEnumListReq_BLK())
  {
    v18 = *(v39 + 6);
    HIDWORD(v42) = v18;
    memcpy(a2, v45 + 5, 0xDB0uLL);
    v17 = 0;
    v21 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = dispatch_time(0, 1000000 * *(a1 + 20));
  v29 = dispatch_semaphore_wait(v20, v22);
  if (v29)
  {
    _KTLErrorPrint("KTLNVMReadGroupEnumList", "Timeout waiting for response.\n", v23, v24, v25, v26, v27, v28, v32);
  }

  if (v42)
  {
    AriHost::ExitTrx(v42);
  }

  v18 = *(v39 + 6);
  HIDWORD(v42) = v18;
  memcpy(a2, v45 + 5, 0xDB0uLL);
  if (v29)
  {
    v17 = 0;
    v21 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v17 = *(v35 + 6) == 0;
  v21 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v21);
  }

LABEL_24:
  if (v20)
  {
    dispatch_release(v20);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
  if (v17)
  {
LABEL_27:
    if (v18 != 1)
    {
      _KTLErrorPrint("KTLNVMReadGroupEnumList", "Error: CsiBspNvmGroupEnumListRespCb Failure\n", v11, v12, v13, v14, v15, v16, v32);
      v18 = HIDWORD(v42);
    }
  }

LABEL_29:
  result = v18 == 1 && v17;
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A3423C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    dispatch_release(v27);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMReadGroupEnumList_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspNvmGroupEnumListRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMReadGroupStart(uint64_t a1)
{
  v2 = *(a1 + 16);
  v39 = v2;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v31 = 0;
    v40 = 0;
    v41 = v2;
    v35 = 0;
    if (ARI_CsiBspNvmReadGroupReq_ENC() || (v4 = operator new(0x18uLL), v5 = v35, v4[2] = v40, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)) || !KTLUTACopyReceiveData(a1, &v31))
    {
      v16 = 0;
      v15 = 0;
      return v16 == 1 && v15;
    }

    v6 = v31;
    (*(*v31 + 16))(v31);
    v7 = v6[2];
    v8 = ARI_CsiBspNvmReadGroupRespCb_Extract();
    (*(*v6 + 8))(v6);
    v15 = v8 == 0;
    v16 = HIDWORD(v39);
    if (v15)
    {
      goto LABEL_27;
    }

    return v16 == 1 && v15;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = -1;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (ARI_CsiBspNvmReadGroupReq_BLK())
  {
    v15 = 0;
    v16 = *(v36 + 6);
    HIDWORD(v39) = v16;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = dispatch_time(0, 1000000 * *(a1 + 20));
  v27 = dispatch_semaphore_wait(v18, v20);
  if (v27)
  {
    _KTLErrorPrint("KTLNVMReadGroupStart", "Timeout waiting for response.\n", v21, v22, v23, v24, v25, v26, v29);
  }

  if (v39)
  {
    AriHost::ExitTrx(v39);
  }

  v16 = *(v36 + 6);
  HIDWORD(v39) = v16;
  if (v27)
  {
    v15 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = *(v32 + 6) == 0;
  v19 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v19);
  }

LABEL_24:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  if (v15)
  {
LABEL_27:
    if (v16 != 1)
    {
      _KTLErrorPrint("KTLNVMReadGroupStart", "Error: CsiBspNvmReadGroupRespCb Failure\n", v9, v10, v11, v12, v13, v14, v29);
      v16 = HIDWORD(v39);
    }
  }

  return v16 == 1 && v15;
}

void sub_297A345F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMReadGroupStart_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiBspNvmReadGroupRespCb_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMReadGroupBlock(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  v58 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 16);
  v51 = v9;
  if (*(a1 + 8))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0xDD802000000;
    v55 = __Block_byref_object_copy__4;
    v56 = __Block_byref_object_dispose__4;
    memset(v57, 170, sizeof(v57));
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = -1431655766;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = -1;
    v22 = dispatch_semaphore_create(0);
    v23 = v22;
    object = v22;
    if (v22)
    {
      dispatch_retain(v22);
    }

    if (!ARI_CsiBspNvmReadGroupBlockReq_BLK())
    {
      v24 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v23, v24))
      {
        v31 = 1;
LABEL_17:
        *a3 = *(v48 + 6);
        memcpy(a4, v53 + 5, 0xDB0uLL);
        *a5 = *(v44 + 6);
        if (v31)
        {
          v32 = *(v40 + 6) == 0;
          v33 = object;
          if (!object)
          {
LABEL_23:
            if (v23)
            {
              dispatch_release(v23);
            }

            _Block_object_dispose(&v39, 8);
            _Block_object_dispose(&v43, 8);
            _Block_object_dispose(&v52, 8);
            _Block_object_dispose(&v47, 8);
            if (v32)
            {
              goto LABEL_26;
            }

            goto LABEL_29;
          }
        }

        else
        {
          v32 = 0;
          v33 = object;
          if (!object)
          {
            goto LABEL_23;
          }
        }

        dispatch_release(v33);
        goto LABEL_23;
      }

      _KTLErrorPrint("KTLNVMReadGroupBlock", "Timeout waiting for response.\n", v25, v26, v27, v28, v29, v30, v37);
    }

    v31 = 0;
    goto LABEL_17;
  }

  v47 = 0;
  LODWORD(v43) = v9;
  LODWORD(v39) = 0;
  v52 = 0;
  if (ARI_CsiBspNvmReadGroupBlockReq_ENC() || (v17 = operator new(0x18uLL), v18 = v52, v17[2] = v39, *(v17 + 2) = v18, *v17 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v17)) || (KTLUTACopyReceiveData(a1, &v47) & 1) == 0)
  {
    *a5 = 0;
    goto LABEL_29;
  }

  v19 = v47;
  (*(*v47 + 16))(v47);
  v20 = v19[2];
  v21 = ARI_CsiBspNvmReadGroupBlockRespCb_Extract();
  (*(*v19 + 8))(v19);
  *a5 = 0;
  if (v21)
  {
LABEL_29:
    _KTLErrorPrint("KTLNVMReadGroupBlock", "Error: CsiBspNvmReadGroupBlockRespCb Failure\n", v11, v12, v13, v14, v15, v16, v37);
    result = 0;
    v36 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_26:
  if (*a3)
  {
    result = 1;
  }

  else
  {
    _KTLErrorPrint("KTLNVMReadGroupBlock", "Error: CsiBspNvmReadGroupBlockRespCb Failure\n", v11, v12, v13, v14, v15, v16, v37);
    result = *a3 != 0;
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A34A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    dispatch_release(v32);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMReadGroupBlock_block_invoke(void *a1, AriMsg *a2, unsigned int a3)
{
  v6 = *(a1[5] + 8);
  v7 = *(a1[6] + 8) + 40;
  *(*(a1[4] + 8) + 24) = ARI_CsiBspNvmReadGroupBlockRespCb_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  v9 = a1[8];
  *(*(a1[7] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v9);
  return *(*(a1[4] + 8) + 24);
}

void __copy_helper_block_e8_32r40r48r56r64c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  _Block_object_assign(a1 + 7, *(a2 + 56), 8);
  v4 = *(a2 + 64);
  a1[8] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56r64c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLNVMSendRegister(uint64_t a1)
{
  v2 = *(a1 + 16);
  v40 = v2;
  v41 = 14;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v32 = 0;
    v42 = 0;
    v43 = v2;
    v36 = 0;
    if (ARI_CsiFpRegister_ENC() || (v4 = operator new(0x18uLL), v5 = v36, v4[2] = v42, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)) || !KTLUTACopyReceiveData(a1, &v32))
    {
      v15 = 0;
      v16 = 14;
      return !v16 && v15;
    }

    v6 = v32;
    (*(*v32 + 16))(v32);
    v7 = v6[2];
    v8 = ARI_CsiFpRegisterRsp_Extract();
    (*(*v6 + 8))(v6);
    v15 = v8 == 0;
    v16 = v41;
    if (v15)
    {
      goto LABEL_27;
    }

    return !v16 && v15;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 14;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = -1;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (ARI_CsiFpRegister_BLK())
  {
    v15 = 0;
    v16 = *(v37 + 6);
    v41 = v16;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = dispatch_time(0, 1000000 * *(a1 + 20));
  v27 = dispatch_semaphore_wait(v18, v20);
  if (v27)
  {
    _KTLErrorPrint("KTLNVMSendRegister", "Timeout waiting for response.\n", v21, v22, v23, v24, v25, v26, v30);
  }

  if (v40)
  {
    AriHost::ExitTrx(v40);
  }

  v16 = *(v37 + 6);
  v41 = v16;
  if (v27)
  {
    v15 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = *(v33 + 6) == 0;
  v19 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v19);
  }

LABEL_24:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  if (v15)
  {
LABEL_27:
    if (v16)
    {
      if (v16 > 0xE)
      {
        v28 = "Unknown";
      }

      else
      {
        v28 = off_29EE844C8[v16 - 1];
      }

      _KTLErrorPrint("KTLNVMSendRegister", "Error: CsiFpRegisterRsp Failure (%s)\n", v9, v10, v11, v12, v13, v14, v28);
      v16 = v41;
    }
  }

  return !v16 && v15;
}

void sub_297A34F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendRegister_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpRegisterRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

const char *KTLFlashPluginGetResultString(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE84450[a1];
  }
}

BOOL KTLNVMSendDeregister(uint64_t a1)
{
  v2 = *(a1 + 16);
  v40 = v2;
  v41 = 14;
  if (*(a1 + 8))
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v32 = 0;
    v42 = 0;
    v43 = v2;
    v36 = 0;
    if (ARI_CsiFpRegister_ENC() || (v4 = operator new(0x18uLL), v5 = v36, v4[2] = v42, *(v4 + 2) = v5, *v4 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v4)) || !KTLUTACopyReceiveData(a1, &v32))
    {
      v15 = 0;
      v16 = 14;
      return !v16 && v15;
    }

    v6 = v32;
    (*(*v32 + 16))(v32);
    v7 = v6[2];
    v8 = ARI_CsiFpRegisterRsp_Extract();
    (*(*v6 + 8))(v6);
    v15 = v8 == 0;
    v16 = v41;
    if (v15)
    {
      goto LABEL_27;
    }

    return !v16 && v15;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 14;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = -1;
  v17 = dispatch_semaphore_create(0);
  v18 = v17;
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  if (ARI_CsiFpRegister_BLK())
  {
    v15 = 0;
    v16 = *(v37 + 6);
    v41 = v16;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = dispatch_time(0, 1000000 * *(a1 + 20));
  v27 = dispatch_semaphore_wait(v18, v20);
  if (v27)
  {
    _KTLErrorPrint("KTLNVMSendDeregister", "Timeout waiting for response.\n", v21, v22, v23, v24, v25, v26, v30);
  }

  if (v40)
  {
    AriHost::ExitTrx(v40);
  }

  v16 = *(v37 + 6);
  v41 = v16;
  if (v27)
  {
    v15 = 0;
    v19 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = *(v33 + 6) == 0;
  v19 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v19);
  }

LABEL_24:
  if (v18)
  {
    dispatch_release(v18);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  if (v15)
  {
LABEL_27:
    if (v16)
    {
      if (v16 > 0xE)
      {
        v28 = "Unknown";
      }

      else
      {
        v28 = off_29EE844C8[v16 - 1];
      }

      _KTLErrorPrint("KTLNVMSendDeregister", "Error: CsiFpRegisterRsp Failure (%s)\n", v9, v10, v11, v12, v13, v14, v28);
      v16 = v41;
    }
  }

  return !v16 && v15;
}

void sub_297A35348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendDeregister_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpRegisterRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 48));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMSendGetStatus(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v61 = v4;
  v62 = 14;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v47 = 0;
    LODWORD(v43) = v4;
    v63 = 0;
    v51 = 0;
    if (ARI_CsiFpGetStatus_ENC() || (v6 = operator new(0x18uLL), v7 = v51, v6[2] = v63, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v47))
    {
      v17 = 0;
      v18 = 14;
      return !v18 && v17;
    }

    v8 = v47;
    (*(*v47 + 16))(v47);
    v9 = v8[2];
    v10 = ARI_CsiFpGetStatusRsp_Extract();
    (*(*v8 + 8))(v8);
    v17 = v10 == 0;
    v18 = v62;
    if (!v10)
    {
      goto LABEL_27;
    }

    return !v18 && v17;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x7002000000;
  v54 = __Block_byref_object_copy__14;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v19;
  v57 = v19;
  v58 = v19;
  v59 = v19;
  v55 = __Block_byref_object_dispose__15;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 14;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = -1;
  v20 = dispatch_semaphore_create(0);
  v21 = v20;
  object = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  if (ARI_CsiFpGetStatus_BLK())
  {
    v17 = 0;
    v18 = *(v48 + 6);
    v62 = v18;
    v22 = v52;
    *a2 = *(v52 + 5);
    v23 = *(v22 + 9);
    v24 = *(v22 + 11);
    v25 = *(v22 + 7);
    *(a2 + 64) = v22[13];
    *(a2 + 32) = v23;
    *(a2 + 48) = v24;
    *(a2 + 16) = v25;
    v26 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v27 = dispatch_time(0, 1000000 * *(a1 + 20));
  v34 = dispatch_semaphore_wait(v21, v27);
  if (v34)
  {
    _KTLErrorPrint("KTLNVMSendGetStatus", "Timeout waiting for response.\n", v28, v29, v30, v31, v32, v33, v41);
  }

  if (v61)
  {
    AriHost::ExitTrx(v61);
  }

  v18 = *(v48 + 6);
  v62 = v18;
  v35 = v52;
  *a2 = *(v52 + 5);
  v36 = *(v35 + 9);
  v37 = *(v35 + 11);
  v38 = *(v35 + 7);
  *(a2 + 64) = v35[13];
  *(a2 + 32) = v36;
  *(a2 + 48) = v37;
  *(a2 + 16) = v38;
  if (v34)
  {
    v17 = 0;
    v26 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v17 = *(v44 + 6) == 0;
  v26 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v26);
  }

LABEL_24:
  if (v21)
  {
    dispatch_release(v21);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  if (v17)
  {
LABEL_27:
    if (v18)
    {
      if (v18 > 0xE)
      {
        v39 = "Unknown";
      }

      else
      {
        v39 = off_29EE844C8[v18 - 1];
      }

      _KTLErrorPrint("KTLNVMSendGetStatus", "Error: CsiFpGetStatusRsp Failure (%s)\n", v11, v12, v13, v14, v15, v16, v39);
      v18 = v62;
    }
  }

  return !v18 && v17;
}

void sub_297A357BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v27)
  {
    dispatch_release(v27);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

uint64_t __KTLNVMSendGetStatus_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 40;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpGetStatusRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMSendSnapshot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v50 = 0;
  v7 = *(a1 + 16);
  v49 = v7;
  if (*(a1 + 8))
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (v8)
  {
    v41 = 0;
    ++KTLNVMSendSnapshot::seqId;
    LODWORD(v37) = v7;
    v51 = 0;
    v45 = 0;
    if (ARI_CsiFpSnapshot_ENC() || (v9 = operator new(0x18uLL), v10 = v45, v9[2] = v51, *(v9 + 2) = v10, *v9 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v9)) || !KTLUTACopyReceiveData(a1, &v41))
    {
      v21 = 0;
      v20 = 0;
      goto LABEL_32;
    }

    v11 = v41;
    (*(*v41 + 16))(v41);
    v12 = v11[2];
    v13 = ARI_CsiFpSnapshotRsp_Extract();
    (*(*v11 + 8))(v11);
    v20 = v13 == 0;
    v21 = HIDWORD(v50);
    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 14;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = -1431655766;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = -1;
  v22 = dispatch_semaphore_create(0);
  v23 = v22;
  ++KTLNVMSendSnapshot::seqId;
  object = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  if (ARI_CsiFpSnapshot_BLK())
  {
    v20 = 0;
    v21 = *(v46 + 6);
    LODWORD(v50) = *(v42 + 6);
    HIDWORD(v50) = v21;
    v24 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v25 = dispatch_time(0, 1000000 * *(a1 + 20));
  v32 = dispatch_semaphore_wait(v23, v25);
  if (v32)
  {
    _KTLErrorPrint("KTLNVMSendSnapshot", "Timeout waiting for response.\n", v26, v27, v28, v29, v30, v31, v35);
  }

  if (v49)
  {
    AriHost::ExitTrx(v49);
  }

  v21 = *(v46 + 6);
  LODWORD(v50) = *(v42 + 6);
  HIDWORD(v50) = v21;
  if (v32)
  {
    v20 = 0;
    v24 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v20 = *(v38 + 6) == 0;
  v24 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v24);
  }

LABEL_24:
  if (v23)
  {
    dispatch_release(v23);
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  if (v20)
  {
LABEL_27:
    if (v21)
    {
      if (v21 > 0xE)
      {
        v33 = "Unknown";
      }

      else
      {
        v33 = off_29EE844C8[v21 - 1];
      }

      _KTLErrorPrint("KTLNVMSendSnapshot", "Error: CsiFpSnapshotRsp Failure (%s)\n", v14, v15, v16, v17, v18, v19, v33);
      v21 = HIDWORD(v50);
    }
  }

LABEL_32:
  *a5 = v50 != 0;
  return !v21 && v20;
}

void sub_297A35C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendSnapshot_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpSnapshotRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

BOOL KTLNVMReadUpdateHeader(uint64_t a1, _OWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v72 = *MEMORY[0x29EDCA608];
  v61 = 0;
  v8 = *(a1 + 16);
  v60 = v8;
  if (*(a1 + 8))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v56 = 0;
    LODWORD(v52) = v8;
    LODWORD(v48) = 0;
    v62 = 0;
    if (ARI_CsiFpUpdateHeader_ENC() || (v10 = operator new(0x18uLL), v11 = v62, v10[2] = v48, *(v10 + 2) = v11, *v10 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v10)) || !KTLUTACopyReceiveData(a1, &v56))
    {
      v22 = 0;
      v21 = 0;
      *a4 = 0;
      goto LABEL_31;
    }

    v12 = v56;
    (*(*v56 + 16))(v56);
    v13 = v12[2];
    v14 = ARI_CsiFpUpdateHeaderData_Extract();
    (*(*v12 + 8))(v12);
    v21 = v14 == 0;
    v22 = v61;
    *a4 = 0;
    if (v21)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x7802000000;
  v65 = __Block_byref_object_copy__24;
  v66 = __Block_byref_object_dispose__25;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v67 = v23;
  v68 = v23;
  v69 = v23;
  v70 = v23;
  v71 = v23;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 14;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = -1431655766;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -1;
  v24 = dispatch_semaphore_create(0);
  v25 = v24;
  object = v24;
  if (v24)
  {
    dispatch_retain(v24);
  }

  if (ARI_CsiFpUpdateHeader_BLK())
  {
    goto LABEL_16;
  }

  v26 = dispatch_time(0, 1000000 * *(a1 + 20));
  if (dispatch_semaphore_wait(v25, v26))
  {
    _KTLErrorPrint("KTLNVMReadUpdateHeader", "Timeout waiting for response.\n", v27, v28, v29, v30, v31, v32, v42);
LABEL_16:
    v33 = 0;
    goto LABEL_17;
  }

  v33 = 1;
LABEL_17:
  v22 = *(v57 + 6);
  v61 = v22;
  v34 = v63;
  *a2 = *(v63 + 5);
  v35 = *(v34 + 9);
  v36 = *(v34 + 13);
  v37 = *(v34 + 7);
  a2[3] = *(v34 + 11);
  a2[4] = v36;
  a2[1] = v37;
  a2[2] = v35;
  *a3 = *(v53 + 6);
  *a4 = *(v49 + 6);
  if (!v33)
  {
    v21 = 0;
    v38 = object;
    if (!object)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v21 = *(v45 + 6) == 0;
  v38 = object;
  if (object)
  {
LABEL_22:
    dispatch_release(v38);
  }

LABEL_23:
  if (v25)
  {
    dispatch_release(v25);
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);
  if (v21)
  {
LABEL_26:
    if (v22)
    {
      if (v22 > 0xE)
      {
        v39 = "Unknown";
      }

      else
      {
        v39 = off_29EE844C8[v22 - 1];
      }

      _KTLErrorPrint("KTLNVMReadUpdateHeader", "Error: CsiFpUpdateHeaderData Failure (%s)\n", v15, v16, v17, v18, v19, v20, v39);
      v22 = v61;
    }
  }

LABEL_31:
  if (v22)
  {
    result = 0;
  }

  else
  {
    result = v21;
  }

  v41 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297A36128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v33)
  {
    dispatch_release(v33);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 216), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__24(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 56);
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  *(a1 + 56) = result;
  return result;
}

uint64_t __KTLNVMReadUpdateHeader_block_invoke(void *a1, AriMsg *a2, unsigned int a3)
{
  v6 = *(a1[5] + 8);
  v7 = *(a1[6] + 8) + 40;
  v8 = *(a1[7] + 8) + 24;
  *(*(a1[4] + 8) + 24) = ARI_CsiFpUpdateHeaderData_Extract();
  BufCtx = AriMsg::GetBufCtx(a2, a3);
  v10 = a1[9];
  *(*(a1[8] + 8) + 24) = BufCtx;
  dispatch_semaphore_signal(v10);
  return *(*(a1[4] + 8) + 24);
}

void __copy_helper_block_e8_32r40r48r56r64r72c25_ZTSN8dispatch9semaphoreE(void *a1, uint64_t a2)
{
  _Block_object_assign(a1 + 4, *(a2 + 32), 8);
  _Block_object_assign(a1 + 5, *(a2 + 40), 8);
  _Block_object_assign(a1 + 6, *(a2 + 48), 8);
  _Block_object_assign(a1 + 7, *(a2 + 56), 8);
  _Block_object_assign(a1 + 8, *(a2 + 64), 8);
  v4 = *(a2 + 72);
  a1[9] = v4;
  if (v4)
  {

    dispatch_retain(v4);
  }
}

void __destroy_helper_block_e8_32r40r48r56r64r72c25_ZTSN8dispatch9semaphoreE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

BOOL KTLNVMSendUpdateAck(uint64_t a1, BOOL *a2)
{
  v47 = 0;
  v4 = *(a1 + 16);
  v46 = v4;
  if (*(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v38 = 0;
    LODWORD(v34) = v4;
    v48 = 0;
    v42 = 0;
    if (ARI_CsiFpUpdateAck_ENC() || (v6 = operator new(0x18uLL), v7 = v42, v6[2] = v48, *(v6 + 2) = v7, *v6 = &unk_2A1E625B0, !KTLUTASendAndReleaseData(a1, v6)) || !KTLUTACopyReceiveData(a1, &v38))
    {
      v18 = 0;
      v17 = 0;
      goto LABEL_32;
    }

    v8 = v38;
    (*(*v38 + 16))(v38);
    v9 = v8[2];
    v10 = ARI_CsiFpUpdateAckRsp_Extract();
    (*(*v8 + 8))(v8);
    v17 = v10 == 0;
    v18 = HIDWORD(v47);
    if (v17)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 14;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = -1431655766;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = -1;
  v19 = dispatch_semaphore_create(0);
  v20 = v19;
  object = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  if (ARI_CsiFpUpdateAck_BLK())
  {
    v17 = 0;
    v18 = *(v43 + 6);
    LODWORD(v47) = *(v39 + 6);
    HIDWORD(v47) = v18;
    v21 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = dispatch_time(0, 1000000 * *(a1 + 20));
  v29 = dispatch_semaphore_wait(v20, v22);
  if (v29)
  {
    _KTLErrorPrint("KTLNVMSendUpdateAck", "Timeout waiting for response.\n", v23, v24, v25, v26, v27, v28, v32);
  }

  if (v46)
  {
    AriHost::ExitTrx(v46);
  }

  v18 = *(v43 + 6);
  LODWORD(v47) = *(v39 + 6);
  HIDWORD(v47) = v18;
  if (v29)
  {
    v17 = 0;
    v21 = object;
    if (!object)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v17 = *(v35 + 6) == 0;
  v21 = object;
  if (object)
  {
LABEL_23:
    dispatch_release(v21);
  }

LABEL_24:
  if (v20)
  {
    dispatch_release(v20);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  if (v17)
  {
LABEL_27:
    if (v18)
    {
      if (v18 > 0xE)
      {
        v30 = "Unknown";
      }

      else
      {
        v30 = off_29EE844C8[v18 - 1];
      }

      _KTLErrorPrint("KTLNVMSendUpdateAck", "Error: CsiFpUpdateAckRsp Failure (%s)\n", v11, v12, v13, v14, v15, v16, v30);
      v18 = HIDWORD(v47);
    }
  }

LABEL_32:
  *a2 = v47 != 0;
  return !v18 && v17;
}

void sub_297A366C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __KTLNVMSendUpdateAck_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8) + 24;
  v3 = *(*(a1 + 48) + 8) + 24;
  *(*(*(a1 + 32) + 8) + 24) = ARI_CsiFpUpdateAckRsp_Extract();
  dispatch_semaphore_signal(*(a1 + 56));
  return *(*(*(a1 + 32) + 8) + 24);
}

double nvm::ARICommandDriver::ARICommandDriver(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  _KTLDebugFlags = 15;
  return result;
}

uint64_t nvm::ARICommandDriver::NVMSnapshot(uint64_t a1, uint64_t a2, AriSdk::ARI_IBINvmSnapshotRspCb_SDK **a3)
{
  AriSdk::MsgBase::getRawBytes();
  *a3 = 0;
  v11 = *(a1 + 16);
  v12 = *(v11 + 8);
  if (v12 || !*(v11 + 16))
  {
    v13 = MEMORY[0];
    v14 = MEMORY[8] - MEMORY[0];
    v15 = *(v11 + 20);
    LODWORD(v72) = 0;
    _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v5, v6, v7, v8, v9, v10, MEMORY[8] - MEMORY[0]);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Tx:", 0, v13);
    }

    if (*v12 && ((v22 = (*v12)(v12, v13, v14, &v72, 1, v15, 0), v72 == v14) ? (v23 = v22) : (v23 = 0), (v23 & 1) != 0))
    {
      v72 = 0;
      v24 = KTLUTACopyReceiveData(*(a1 + 16), &v72);
      v31 = v72;
      if (v72)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      if (v32 == 1)
      {
        v33 = operator new(0x50uLL);
        v34 = (*(*v31 + 16))(v31);
        v35 = v31[2];
        AriSdk::ARI_IBINvmSnapshotRspCb_SDK::ARI_IBINvmSnapshotRspCb_SDK(v33, v34);
        *a3 = v33;
        (*(*v31 + 8))(v31);
        goto LABEL_31;
      }
    }

    else
    {
      _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v16, v17, v18, v19, v20, v21, v14);
    }

    v36 = "error while trying to get response from device \n";
LABEL_16:
    _KTLErrorPrint("perform", v36, v25, v26, v27, v28, v29, v30, v71);
    goto LABEL_17;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3002000000;
  v75 = __Block_byref_object_copy__47;
  v76 = __Block_byref_object_dispose__48;
  object = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_semaphore_create(0);
  v45 = *(*(a1 + 16) + 16);
  v46 = AriHost::Send();
  if (v46)
  {
    _KTLErrorPrint("perform", "An error occured sending the message. (%d)\n", v47, v48, v49, v50, v51, v52, v46);
    goto LABEL_28;
  }

  v53 = v73;
  v54 = dispatch_time(0, 1000000 * *(*(a1 + 16) + 20));
  if (dispatch_semaphore_wait(v53[5], v54))
  {
    _KTLErrorPrint("perform", "Timeout waiting for response.\n", v55, v56, v57, v58, v59, v60, v71);
LABEL_28:
    v61 = 0;
    _Block_object_dispose(&v72, 8);
    v62 = object;
    if (!object)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = 1;
  _Block_object_dispose(&v72, 8);
  v62 = object;
  if (object)
  {
LABEL_29:
    dispatch_release(v62);
  }

LABEL_30:
  if ((v61 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_31:
  hasDeclaredGmid = AriSdk::ARI_IBINvmSnapshotRspCb_SDK::hasDeclaredGmid(*a3);
  v64 = *a3;
  if ((hasDeclaredGmid & 1) == 0)
  {
    if (AriSdk::MsgBase::getMergedGMID(v64) != 67600384)
    {
      AriSdk::MsgBase::getMergedGMID(*a3);
      _KTLErrorPrint("perform", "expected gmid %d, doesn't match response gmid %d \n", v65, v66, v67, v68, v69, v70, 4178706432);
      goto LABEL_17;
    }

    v36 = "Received NACK\n";
    goto LABEL_16;
  }

  if (!AriSdk::ARI_IBINvmSnapshotRspCb_SDK::unpack(v64))
  {
    v43 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (*a3)
  {
    (*(**a3 + 16))(*a3);
  }

  v43 = 0;
  *a3 = 0;
LABEL_20:
  if ((v43 & 1) == 0)
  {
    _KTLErrorPrint("NVMSnapshot", "Failed IBINvmSnapshotReq\n", v37, v38, v39, v40, v41, v42, v71);
  }

  return v43;
}

void sub_297A36C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  _Block_object_dispose(&a21, 8);
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
    std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::vector<unsigned char> const>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void nvm::ARICommandDriver::~ARICommandDriver(nvm::ARICommandDriver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        _Block_release(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__48(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t ___ZN3ktl13CommandDriver7performIN6AriSdk27ARI_IBINvmSnapshotRspCb_SDKEEEbjNSt3__110shared_ptrIKNS4_6vectorIhNS4_9allocatorIhEEEEEEPPT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v4 = operator new(0x50uLL);
  AriSdk::ARI_IBINvmSnapshotRspCb_SDK::ARI_IBINvmSnapshotRspCb_SDK(v4, a2);
  **(a1 + 40) = v4;
  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
  return 0;
}

uint64_t KTLCDSendStartCoredumpCommand(void *a1, _WORD *a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __size = 0;
  if (a3 <= 8)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "maxLen( %u) is less than sizeof command(%lu)\n", a3, a4, a5, a6, a7, a8, a3);
    return 0;
  }

  *a2 = a3;
  a2[2] = 16;
  a2[3] = a3 ^ WORD1(a3) ^ 0x10;
  __size_4 = 0;
  _KTLDebugPrint("KTLPSISendEnhancedCommand", "Sending PSI enhanced command: command %d, param %d\n", a3, a4, a5, a6, a7, a8, 16);
  if (!*a1 || !(*a1)(a1, a2, 8, &__size_4, 1, a4, 0) || __size_4 != 8)
  {
    v35 = "Failed to send PSI\n";
LABEL_16:
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", v35, v13, v14, v15, v16, v17, v18, v49);
    return 0;
  }

  v19 = a1[1];
  if (!v19 || (v19(a1, a2, a3, &__size, 1, a4, 0) & 1) == 0)
  {
    v35 = "Failed to read coredump list table\n";
    goto LABEL_16;
  }

  v20 = __size;
  if (__size < 8 || __size > a3)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "read byte (%u) is less than the dump list size (%lu) or more than maxlen(%u)\n", v13, v14, v15, v16, v17, v18, __size);
    return 0;
  }

  v21 = malloc(__size);
  if (!v21)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Failed to allocate memory for core dump lists\n", v22, v23, v24, v25, v26, v27, v49);
    return 1;
  }

  v28 = v21;
  memcpy(v21, a2, v20);
  if (!v28[1] || *v28 < 0x10000)
  {
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Failed after checking of core dump lists:\n", v29, v30, v31, v32, v33, v34, v49);
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Number of entries: %u\n", v37, v38, v39, v40, v41, v42, v28[1]);
    _KTLDebugPrint("KTLCDSendStartCoredumpCommand", "Version: %u\n", v43, v44, v45, v46, v47, v48, *v28);
    if ((_KTLDebugFlags & 2) != 0)
    {
      off_2A18991C8("Read Buffer as CoreDump Header List:", 1, a2);
    }

    free(v28);
    return 0;
  }

  *a5 = v28;
  return 1;
}

void *KTLCDProcessCoredumpEntry(void *a1, void *a2, uint64_t a3, unsigned int *a4, uint64_t __size, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  if (!__size)
  {
    _KTLDebugPrint("KTLCDProcessCoredumpEntry", "Chunk size cannot be zero\n", a3, a4, __size, a6, a7, a8, v34);
    return 0;
  }

  v11 = __size;
  v13 = a3;
  v37 = 0;
  v38 = 0xAAAA0011AAAAAAAALL;
  result = malloc(__size);
  if (!result)
  {
    return result;
  }

  v17 = result;
  LODWORD(v38) = v13;
  HIWORD(v38) = v13 ^ HIWORD(v13) ^ 0x11;
  if (!*a1)
  {
    goto LABEL_30;
  }

  v24 = (*a1)(a1, &v38, 8, &v37 + 4, 1, a8, 0);
  v25 = 0;
  if (!v24)
  {
    goto LABEL_31;
  }

  v36 = a7;
  if (HIDWORD(v37) != 8)
  {
    goto LABEL_31;
  }

  v26 = *a4;
  a6[1] = *a4;
  v27 = a6[2];
  if (!v27)
  {
    v27 = 1;
    a6[2] = 1;
  }

  v28 = v26 / v27;
  if (v28 < v11)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28 / v11;
  }

  if (v26)
  {
    v35 = v29;
    while (1)
    {
      v30 = v11 >= v26 ? v26 : v11;
      v31 = a1[1];
      if (!v31)
      {
        break;
      }

      if (!v31(a1, v17, v30, &v37, 0, a8, 0) || v37 == 0)
      {
        break;
      }

      v26 -= v37;
      if (!--v29)
      {
        *a6 = *a4 - v26;
        (*(v36 + 16))(v36, a6, a4);
        v29 = v35;
      }

      if (!*a2)
      {
        goto LABEL_30;
      }

      v25 = (*a2)(a2, v17, v37, &v37 + 4, 1, a8, 0);
      if (!v26 || (v25 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    _KTLDebugPrint("KTLCDProcessCoredumpEntry", "Read failed. success = %u, read %u of %u\n", v18, v19, v20, v21, v22, v23, 0);
LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  v25 = 1;
LABEL_31:
  v33 = v25;
  free(v17);
  return v33;
}

uint64_t KTLCDSendEndCoredumpCommand(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  if (!a2 || a3 <= 8)
  {
    _KTLDebugPrint("KTLCDSendEndCoredumpCommand", "maxLen( %u) is less than sizeof command(%lu)\n", a3, a4, a5, a6, a7, a8, a3);
    return 0;
  }

  *a2 = a3;
  *(a2 + 4) = 18;
  *(a2 + 6) = a3 ^ WORD1(a3) ^ 0x12;
  v24 = 0;
  _KTLDebugPrint("KTLPSISendEnhancedCommand", "Sending PSI enhanced command: command %d, param %d\n", a3, a4, a5, a6, a7, a8, 18);
  if (!*a1 || !(*a1)(a1, a2, 8, &v24, 1, a4, 0) || v24 != 8)
  {
    v21 = "Failed to send PSI command\n";
    goto LABEL_11;
  }

  v18 = a1[1];
  if (!v18 || (v19 = v18(a1, a2, a3, &v23, 1, a4, 0), result = 1, (v19 & 1) == 0))
  {
    v21 = "Failed to read response\n";
LABEL_11:
    _KTLDebugPrint("KTLCDSendEndCoredumpCommand", v21, v12, v13, v14, v15, v16, v17, v22);
    return 0;
  }

  return result;
}

BOOL KTLGetAntennaPort(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    _KTLErrorPrint("KTLGetAntennaPort", "These parameters cannot be NULL: opt: %p, antennaPort: %p\n", a3, a4, a5, a6, a7, a8, a1);
    return 0;
  }

  v67 = 0x7FFFFFFF;
  v68 = -1;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65[2] = v10;
  v65[3] = v10;
  v65[0] = v10;
  v65[1] = v10;
  AriSdk::ARI_CsiIceGetTxAntennaReq_SDK::ARI_CsiIceGetTxAntennaReq_SDK(v65);
  v63 = 0;
  v64 = 0;
  AriSdk::MsgBase::getRawBytes();
  v17 = *(a1 + 8);
  if (!v17 && *(a1 + 16))
  {
    v35 = dispatch_semaphore_create(0);
    v36 = v35;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2000000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2000000000;
    v58 = -1;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2000000000;
    v54 = 0x7FFFFFFF;
    v37 = *(v63 + 2) - *v63;
    v38 = *(a1 + 16);
    object = v35;
    if (v35)
    {
      dispatch_retain(v35);
    }

    v39 = *(a1 + 20);
    if (AriHost::Send())
    {
      v46 = "Failed to send the message of CsiIceGetTxAntennaReq.\n";
    }

    else
    {
      v47 = dispatch_time(0, 1000000 * *(a1 + 20));
      if (!dispatch_semaphore_wait(v36, v47))
      {
        if (*(v60 + 24) == 1)
        {
          v30 = *(v56 + 6);
          v31 = *(v52 + 6);
          v67 = v31;
          v68 = v30;
          v29 = 1;
          v48 = object;
          if (!object)
          {
LABEL_34:
            _Block_object_dispose(&v51, 8);
            _Block_object_dispose(&v55, 8);
            _Block_object_dispose(&v59, 8);
            if (v36)
            {
              dispatch_release(v36);
            }

            goto LABEL_16;
          }

LABEL_33:
          dispatch_release(v48);
          goto LABEL_34;
        }

LABEL_32:
        v29 = 0;
        v30 = -1;
        v31 = 0x7FFFFFFF;
        v48 = object;
        if (!object)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v46 = "Timeout waiting for response.\n";
    }

    _KTLErrorPrint("KTLGetAntennaPort", v46, v40, v41, v42, v43, v44, v45, v49);
    goto LABEL_32;
  }

  v18 = *v63;
  v19 = v63[1] - *v63;
  v20 = *(a1 + 20);
  LODWORD(v59) = 0;
  _KTLDebugPrint("KTLRawSendData", "Sending %u bytes to device timeout=%u\n", v11, v12, v13, v14, v15, v16, v19);
  if ((_KTLDebugFlags & 2) != 0)
  {
    off_2A18991C8("Tx:", 0, v18);
  }

  if (!*v17 || ((v27 = (*v17)(v17, v18, v19, &v59, 1, v20, 0), v59 == v19) ? (v28 = v27) : (v28 = 0), (v28 & 1) == 0))
  {
    _KTLDebugPrint("KTLRawSendData", "Failed sending %d bytes - amount written %u\n", v21, v22, v23, v24, v25, v26, v19);
    goto LABEL_15;
  }

  v59 = 0;
  if (!KTLUTACopyReceiveData(a1, &v59))
  {
LABEL_15:
    v29 = 0;
    v30 = -1;
    v31 = 0x7FFFFFFF;
    goto LABEL_16;
  }

  v29 = KTLGetAntennaPortParseAndRelease(v59, &v68, &v67);
  v31 = v67;
  v30 = v68;
LABEL_16:
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  *a2 = v31;
  v33 = v64;
  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  MEMORY[0x29C279E00](v65);
  return v32;
}