void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538F837 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538F837 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E526BD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)8>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 112);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v36 = *(a4 + 28);
    v37 = *(a1 + 108);
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", a6, a7, a8, *(a1 + 112));
    v11 = gBBULogMaskGet(void)::once == -1;
  }

  v12 = *(a4 + 28);
  v14 = *(a1 + 108);
  v13 = *(a1 + 112);
  if (v13 >= v12)
  {
    v13 = *(a4 + 28);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = v14 + 1;
  *(a1 + 108) = v14 + 1;
  if (v11)
  {
    v17 = *gBBULogMaskGet(void)::sBBULogMask;
    v18 = gBBULogVerbosity;
    if (v16 > v15)
    {
      goto LABEL_13;
    }

LABEL_23:
    if ((v17 & 0x200000) != 0 && (v18 & 0x80000000) == 0)
    {
      _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n", a6, a7, a8, v35);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      v23 = operator new(0x38uLL);
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v25 = dispatch_queue_create("BBUError", v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      if (v25)
      {
        v26 = v25;
        dispatch_retain(v25);
        v23[3] = 0;
        dispatch_release(v26);
      }

      else
      {
        v23[3] = 0;
      }

      v23[4] = 0;
      v23[5] = 0;
      v23[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v23);
      v27 = *&block.__r_.__value_.__l.__data_;
      *&block.__r_.__value_.__l.__data_ = 0uLL;
      v28 = *(&off_1ED944120 + 1);
      off_1ED944120 = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }

      size = block.__r_.__value_.__l.__size_;
      if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v22 = off_1ED944120;
    }

    v30 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
    v38[3] = &__block_descriptor_tmp_9;
    v38[4] = v22;
    v39 = v38;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v41 = &__block_descriptor_tmp_13_0;
    v42 = v22;
    v43 = &v39;
    v31 = *(v22 + 16);
    if (*(v22 + 24))
    {
      dispatch_async_and_wait(v31, &block);
      if (!v30)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_sync(v31, &block);
      if (!v30)
      {
        goto LABEL_45;
      }
    }

    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_47:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", v32, v33, v34, *(a1 + 108));
        }
      }
    }

    BBUpdaterController::personalize(*(a1 + 16), 8);
    return 1;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v17 = *gBBULogMaskGet(void)::sBBULogMask;
  v18 = gBBULogVerbosity;
  if (v16 <= v15)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v17 & 2) != 0 && (v18 & 0x80000000) == 0)
  {
    _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", a6, a7, a8, v15);
  }

  v19 = *(a1 + 16);
  v20 = *(a4 + 24);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
  }

  else
  {
    block = *a4;
  }

  v41 = v20;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v19, &block);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::performAction<(BBUStage)8>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 124);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v36 = *(a4 + 28);
    v37 = *(a1 + 120);
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", a6, a7, a8, *(a1 + 124));
    v11 = gBBULogMaskGet(void)::once == -1;
  }

  v12 = *(a4 + 28);
  v14 = *(a1 + 120);
  v13 = *(a1 + 124);
  if (v13 >= v12)
  {
    v13 = *(a4 + 28);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = v14 + 1;
  *(a1 + 120) = v14 + 1;
  if (v11)
  {
    v17 = *gBBULogMaskGet(void)::sBBULogMask;
    v18 = gBBULogVerbosity;
    if (v16 > v15)
    {
      goto LABEL_13;
    }

LABEL_23:
    if ((v17 & 0x200000) != 0 && (v18 & 0x80000000) == 0)
    {
      _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n", a6, a7, a8, v35);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      v23 = operator new(0x38uLL);
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v25 = dispatch_queue_create("BBUError", v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      if (v25)
      {
        v26 = v25;
        dispatch_retain(v25);
        v23[3] = 0;
        dispatch_release(v26);
      }

      else
      {
        v23[3] = 0;
      }

      v23[4] = 0;
      v23[5] = 0;
      v23[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v23);
      v27 = *&block.__r_.__value_.__l.__data_;
      *&block.__r_.__value_.__l.__data_ = 0uLL;
      v28 = *(&off_1ED944120 + 1);
      off_1ED944120 = v27;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }

      size = block.__r_.__value_.__l.__size_;
      if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v22 = off_1ED944120;
    }

    v30 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
    v38[3] = &__block_descriptor_tmp_9;
    v38[4] = v22;
    v39 = v38;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v41 = &__block_descriptor_tmp_13_0;
    v42 = v22;
    v43 = &v39;
    v31 = *(v22 + 16);
    if (*(v22 + 24))
    {
      dispatch_async_and_wait(v31, &block);
      if (!v30)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_sync(v31, &block);
      if (!v30)
      {
        goto LABEL_45;
      }
    }

    if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_47:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", v32, v33, v34, *(a1 + 120));
        }
      }
    }

    BBUpdaterController::personalize(*(a1 + 16), 8);
    return 1;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v17 = *gBBULogMaskGet(void)::sBBULogMask;
  v18 = gBBULogVerbosity;
  if (v16 <= v15)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v17 & 2) != 0 && (v18 & 0x80000000) == 0)
  {
    _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", a6, a7, a8, v15);
  }

  v19 = *(a1 + 16);
  v20 = *(a4 + 24);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
  }

  else
  {
    block = *a4;
  }

  v41 = v20;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v19, &block);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 136);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v39 = *(a4 + 28);
    v40 = *(a1 + 132);
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", a6, a7, a8, *(a1 + 136));
    v11 = gBBULogMaskGet(void)::once == -1;
  }

  v12 = *(a4 + 28);
  v14 = *(a1 + 132);
  v13 = *(a1 + 136);
  if (v13 >= v12)
  {
    v13 = *(a4 + 28);
  }

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v16 = v14 + 1;
  *(a1 + 132) = v14 + 1;
  if (v11)
  {
    v17 = *gBBULogMaskGet(void)::sBBULogMask;
    v18 = gBBULogVerbosity;
    if (v16 > v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v17 = *gBBULogMaskGet(void)::sBBULogMask;
    v18 = gBBULogVerbosity;
    if (v16 > v15)
    {
LABEL_13:
      if ((v17 & 2) != 0 && (v18 & 0x80000000) == 0)
      {
        _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", a6, a7, a8, v15);
      }

      v19 = *(a1 + 16);
      v20 = *(a4 + 24);
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
      }

      else
      {
        block = *a4;
      }

      v44 = v20;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v19, &block);
      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
      }

      return 2;
    }
  }

  if ((v17 & 0x200000) != 0 && (v18 & 0x80000000) == 0)
  {
    _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n", a6, a7, a8, v38);
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v22 = off_1ED944120;
  if (!off_1ED944120)
  {
    v23 = operator new(0x38uLL);
    v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v25 = dispatch_queue_create("BBUError", v24);
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v25;
    if (v25)
    {
      v26 = v25;
      dispatch_retain(v25);
      v23[3] = 0;
      dispatch_release(v26);
    }

    else
    {
      v23[3] = 0;
    }

    v23[4] = 0;
    v23[5] = 0;
    v23[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v23);
    v27 = *&block.__r_.__value_.__l.__data_;
    *&block.__r_.__value_.__l.__data_ = 0uLL;
    v28 = *(&off_1ED944120 + 1);
    off_1ED944120 = v27;
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    size = block.__r_.__value_.__l.__size_;
    if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v22 = off_1ED944120;
  }

  v30 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v41[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
  v41[3] = &__block_descriptor_tmp_9;
  v41[4] = v22;
  v42 = v41;
  block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  block.__r_.__value_.__l.__size_ = 0x40000000;
  block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v44 = &__block_descriptor_tmp_13_0;
  v45 = v22;
  v46 = &v42;
  v31 = *(v22 + 16);
  if (*(v22 + 24))
  {
    dispatch_async_and_wait(v31, &block);
    if (!v30)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_sync(v31, &block);
    if (!v30)
    {
      goto LABEL_45;
    }
  }

  if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_45:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
    {
LABEL_47:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", v32, v33, v34, *(a1 + 132));
      }
    }
  }

  v35 = *(a1 + 16);
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v35, 0);
  BBUpdaterController::parsePreflightArgs(v35);
  BBUpdaterController::queryInfoFirstStageInternal(v35, v37);
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>(a1 + 280, a4))
  {
    v6 = (_MergedGlobals_1[*(a1 + 304) + 38])(a1 + 280, 0);
    v7 = v6;
    if ((*(a1 + 369) & 1) == 0 && !v6)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(a1 + 280, a1 + 280, *(a1 + 304));
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 4 * a2 + 32) = 3;
  return v7;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 38])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v34 = v20;
        v35.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v20.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v20.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v34, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    v4 = v21;
    v35.__r_.__value_.__r.__words[0] = v21;
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v38 = v34;
      v39.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v4 = v35.__r_.__value_.__r.__words[0];
    v39.__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v42 = v38;
      v43.__r_.__value_.__r.__words[0] = v4;
      *v46 = a1;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    v4 = v39.__r_.__value_.__r.__words[0];
    v43.__r_.__value_.__r.__words[0] = v39.__r_.__value_.__r.__words[0];
    *v46 = a1;
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v46[8] = *&v42.__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[0] = v42.__r_.__value_.__r.__words[2];
      v47.__r_.__value_.__l.__size_ = v4;
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v46[8], v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    v47.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v22 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRetry>;
        *(&v22 + 1) = 0;
        v23 = *v46;
        if (v47.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v46[8], *&v46[16]);
          *(&v25 + 1) = v47.__r_.__value_.__l.__size_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if (v47.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v46[8]);
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v29 = v22;
              v6 = v23;
              v30 = v23;
              if (SBYTE7(v25) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, __p, *(&__p + 1));
                v6 = v30;
              }

              else
              {
                *&v31.__r_.__value_.__l.__data_ = __p;
                v31.__r_.__value_.__r.__words[2] = v25;
              }

              v7 = *(&v25 + 1);
              v32 = *(&v25 + 1);
              v8 = v26;
              v33 = v26;
              v27 = 0;
              *&v34.__r_.__value_.__l.__data_ = v29;
              v34.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v35, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
                v7 = v32;
                v8 = v33;
                v6 = v34.__r_.__value_.__r.__words[2];
              }

              else
              {
                v35 = v31;
              }

              v36 = v7;
              v37 = v8;
              *&v38.__r_.__value_.__l.__data_ = *&v34.__r_.__value_.__l.__data_;
              v38.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v39, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
                v7 = v36;
                v8 = v37;
                v6 = v38.__r_.__value_.__r.__words[2];
              }

              else
              {
                v39 = v35;
              }

              v40 = v7;
              v41 = v8;
              *&v42.__r_.__value_.__l.__data_ = *&v38.__r_.__value_.__l.__data_;
              v42.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v43, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
                v7 = v40;
                v8 = v41;
                v6 = v42.__r_.__value_.__r.__words[2];
              }

              else
              {
                v43 = v39;
              }

              v44 = v7;
              v45 = v8;
              *v46 = *&v42.__r_.__value_.__l.__data_;
              *&v46[16] = v6;
              if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v47, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
                v7 = v44;
                v8 = v45;
              }

              else
              {
                v47 = v43;
              }

              v48 = v7;
              v49 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v46;
              v9->__r_.__value_.__r.__words[2] = *&v46[16];
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                v11 = v49;
                v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v48;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v28[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v47;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v28[0] = v9;
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v43.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v39.__r_.__value_.__l.__data_);
                    v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v35.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v31.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 40);
                    v14 = *(a1 + 48);
                    v15 = *(a1 + 40);
                    v16 = 16 * (v14 - v15) - 1;
                    if (v14 == v15)
                    {
                      v16 = 0;
                    }

                    v17 = *(a1 + 72) + *(a1 + 64);
                    if (v16 == v17)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
                      v15 = *(a1 + 40);
                      v17 = *(a1 + 72) + *(a1 + 64);
                    }

                    v18 = (*(v15 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F));
                    *v18 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v18, &v27);
                    ++*(a1 + 72);
                    if (v27)
                    {
                      if ((v27 & 1) == 0 && *v27)
                      {
                        (*v27)(v28, v28, 2);
                      }

                      v27 = 0;
                    }

                    if (SBYTE7(v25) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v20.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v46[8];
          v25 = *&v47.__r_.__value_.__l.__data_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v34.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v38.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 88) = 1;
  return v3 ^ 1u;
}

void sub_1E526D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538F91DLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538F91DLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538F810 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E526DEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::eventRetry,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 268) = 0;
  *(a1 + 32 + 4 * a2) = 4;
  v5 = *(a1 + 16);
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v5, 0);
  BBUpdaterController::parsePreflightArgs(v5);
  BBUpdaterController::queryInfoFirstStageInternal(v5, v7);
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  *(v4 + 4 * a2) = 4;
  v8 = a1 + 280;
  v9 = *(a1 + 364);
  *(a1 + 304) = v9;
  *(a1 + 296) = *(a1 + 16);
  ++*(a1 + 24);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 108;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v10 = 96;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = 132;
      goto LABEL_12;
    }

    if (v9 == 1)
    {
      v10 = 120;
LABEL_12:
      ++*(v8 + v10);
    }
  }

  *(a1 + 368) = 0;
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v8);
  *(v4 + 4 * a2) = 3;
  return 1;
}

void sub_1E526E110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::checkManifest,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 432);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v39 = *(a4 + 28);
    v40 = *(a1 + 428);
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", a6, a7, a8, *(a1 + 432));
    v11 = gBBULogMaskGet(void)::once == -1;
  }

  v12 = *(a4 + 28);
  v13 = *(a1 + 432);
  if (v13 >= v12)
  {
    v13 = *(a4 + 28);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  v15 = *(a1 + 428) + 1;
  *(a1 + 428) = v15;
  if (v11)
  {
    v16 = *gBBULogMaskGet(void)::sBBULogMask;
    v17 = gBBULogVerbosity;
    if (v15 > v14)
    {
      goto LABEL_13;
    }

LABEL_23:
    if ((v16 & 0x200000) != 0 && (v17 & 0x80000000) == 0)
    {
      _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n", a6, a7, a8, v38);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v21 = off_1ED944120;
    if (!off_1ED944120)
    {
      v22 = operator new(0x38uLL);
      v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v24 = dispatch_queue_create("BBUError", v23);
      *v22 = 0;
      v22[1] = 0;
      v22[2] = v24;
      if (v24)
      {
        v25 = v24;
        dispatch_retain(v24);
        v22[3] = 0;
        dispatch_release(v25);
      }

      else
      {
        v22[3] = 0;
      }

      v22[4] = 0;
      v22[5] = 0;
      v22[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v22);
      v26 = *&block.__r_.__value_.__l.__data_;
      *&block.__r_.__value_.__l.__data_ = 0uLL;
      v27 = *(&off_1ED944120 + 1);
      off_1ED944120 = v26;
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }

      size = block.__r_.__value_.__l.__size_;
      if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v21 = off_1ED944120;
    }

    v29 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 0x40000000;
    v41[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
    v41[3] = &__block_descriptor_tmp_9;
    v41[4] = v21;
    v42 = v41;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v44 = &__block_descriptor_tmp_13_0;
    v45 = v21;
    v46 = &v42;
    v30 = *(v21 + 16);
    if (*(v21 + 24))
    {
      dispatch_async_and_wait(v30, &block);
      if (!v29)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_sync(v30, &block);
      if (!v29)
      {
        goto LABEL_45;
      }
    }

    if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_47:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", v35, v36, v37, *(a1 + 428));
        }
      }
    }

    BBUpdaterController::checkManifest(*(a1 + 16), v31, v32, v33, v34, v35, v36, v37);
    return 1;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v16 = *gBBULogMaskGet(void)::sBBULogMask;
  v17 = gBBULogVerbosity;
  if (v15 <= v14)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v16 & 2) != 0 && (v17 & 0x80000000) == 0)
  {
    _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", a6, a7, a8, v14);
  }

  v18 = *(a1 + 16);
  v19 = *(a4 + 24);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
  }

  else
  {
    block = *a4;
  }

  v44 = v19;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v18, &block);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::eventRetry,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::bootup<true>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRetry>>::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 444);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = 1;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v35 = *(a4 + 28);
    v36 = *(a1 + 440);
    _BBULog(21, 0, "allowRetry", "", "Retry limits are src.retryLimit:%u  evt.retryLimit:%u src.retryCounter:%u\n", a6, a7, a8, *(a1 + 444));
    v11 = gBBULogMaskGet(void)::once == -1;
  }

  v12 = *(a4 + 28);
  v13 = *(a1 + 444);
  if (v13 >= v12)
  {
    v13 = *(a4 + 28);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  v15 = *(a1 + 440) + 1;
  *(a1 + 440) = v15;
  if (v11)
  {
    v16 = *gBBULogMaskGet(void)::sBBULogMask;
    v17 = gBBULogVerbosity;
    if (v15 > v14)
    {
      goto LABEL_13;
    }

LABEL_23:
    if ((v16 & 0x200000) != 0 && (v17 & 0x80000000) == 0)
    {
      _BBULog(21, 0, "allowRetry", "", "Clearing error states since we are retrying.\n", a6, a7, a8, v34);
    }

    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v21 = off_1ED944120;
    if (!off_1ED944120)
    {
      v22 = operator new(0x38uLL);
      v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v24 = dispatch_queue_create("BBUError", v23);
      *v22 = 0;
      v22[1] = 0;
      v22[2] = v24;
      if (v24)
      {
        v25 = v24;
        dispatch_retain(v24);
        v22[3] = 0;
        dispatch_release(v25);
      }

      else
      {
        v22[3] = 0;
      }

      v22[4] = 0;
      v22[5] = 0;
      v22[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&block, v22);
      v26 = *&block.__r_.__value_.__l.__data_;
      *&block.__r_.__value_.__l.__data_ = 0uLL;
      v27 = *(&off_1ED944120 + 1);
      off_1ED944120 = v26;
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
      }

      size = block.__r_.__value_.__l.__size_;
      if (block.__r_.__value_.__l.__size_ && !atomic_fetch_add((block.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v21 = off_1ED944120;
    }

    v29 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v37[2] = ___ZN8BBUError11clearErrorsEv_block_invoke;
    v37[3] = &__block_descriptor_tmp_9;
    v37[4] = v21;
    v38 = v37;
    block.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    block.__r_.__value_.__l.__size_ = 0x40000000;
    block.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v40 = &__block_descriptor_tmp_13_0;
    v41 = v21;
    v42 = &v38;
    v30 = *(v21 + 16);
    if (*(v21 + 24))
    {
      dispatch_async_and_wait(v30, &block);
      if (!v29)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_sync(v30, &block);
      if (!v29)
      {
        goto LABEL_45;
      }
    }

    if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

LABEL_45:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
      {
LABEL_47:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(21, 0, "allowRetry", "", "attempting %u out of %u\n", v31, v32, v33, *(a1 + 440));
        }
      }
    }

    BBUpdaterController::bootup(*(a1 + 16));
    return 1;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  v16 = *gBBULogMaskGet(void)::sBBULogMask;
  v17 = gBBULogVerbosity;
  if (v15 <= v14)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v16 & 2) != 0 && (v17 & 0x80000000) == 0)
  {
    _BBULog(1, 0, "allowRetry", "", "too many retries: %u\n", a6, a7, a8, v14);
  }

  v18 = *(a1 + 16);
  v19 = *(a4 + 24);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&block, *a4, *(a4 + 8));
  }

  else
  {
    block = *a4;
  }

  v40 = v19;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v18, &block);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventContinue>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED948668 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948660 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948658 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948650 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948648 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948640 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948638 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948630 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948628 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    qword_1ED948620[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventContinue>>::flag_false;
    v17 = (qword_1ED948620[*(a1 + 32)])(a1);
    v18 = (qword_1ED948620[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventContinue>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventContinue>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventContinue>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948A98 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948A98 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventContinue>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538FA3BLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538FA3BLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventContinue>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventContinue>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538FA11 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538FA11 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E526F7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v2 = a1 + 4 * a2;
  *(a1 + 136) = 0;
  *(v2 + 32) = 6;
  ++*(a1 + 452);
  *(v2 + 32) = 0;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::eventContinue,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::front::none,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 32;
  *(a1 + 268) = 0;
  *(a1 + 32 + 4 * a2) = 4;
  v4 = *(a1 + 364);
  *(a1 + 304) = v4;
  *(a1 + 296) = *(a1 + 16);
  ++*(a1 + 24);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 108;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 96;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 132;
      goto LABEL_10;
    }

    if (v4 == 1)
    {
      v5 = 120;
LABEL_10:
      ++*(a1 + 280 + v5);
    }
  }

  *(a1 + 368) = 0;
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  *(v3 + 4 * a2) = 3;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v2 = a1 + 4 * a2;
  *(a1 + 428) = 0;
  *(v2 + 32) = 2;
  ++*(a1 + 452);
  *(v2 + 32) = 0;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::eventContinue,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::front::none,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v2 = a1 + 4 * a2;
  *(a1 + 440) = 0;
  *(v2 + 32) = 1;
  ++*(a1 + 452);
  *(v2 + 32) = 0;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRepersonalize>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED9486B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED9486B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED9486A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED9486A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED948698 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED948690 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED948688 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED948680 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED948678 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    qword_1ED948670[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRepersonalize>>::flag_false;
    v17 = (qword_1ED948670[*(a1 + 32)])(a1);
    v18 = (qword_1ED948670[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRepersonalize>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRepersonalize>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRepersonalize>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948AF0 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948AF0 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRepersonalize>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538FB53 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538FB53 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRepersonalize>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRepersonalize>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538FB24 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538FB24 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E5270714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::eventRepersonalize,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,BBUpdaterControllerFSM::ControllerFSM_TOP::allowRePerso>>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 28);
  v10 = *(a1 + 24) + 1;
  *(a1 + 24) = v10;
  if (v10 <= v9)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
      {
        goto LABEL_9;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v22 = *(a1 + 28);
      _BBULog(21, 0, "allowRePerso", "", "attempting %u out of %u\n", a6, a7, a8, *(a1 + 24));
    }

LABEL_9:
    v15 = a1 + 32;
    *(a1 + 136) = 0;
    *(a1 + 32 + 4 * a2) = 6;
    v16 = *(a1 + 16);
    FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v16, 0);
    BBUpdaterController::parsePreflightArgs(v16);
    BBUpdaterController::queryInfoFirstStageInternal(v16, v18);
    if (FirmwareDataSource)
    {
      (*(*FirmwareDataSource + 16))(FirmwareDataSource);
    }

    v19 = a1 + 280;
    *(v15 + 4 * a2) = 6;
    v20 = *(a1 + 364);
    *(a1 + 304) = v20;
    *(a1 + 296) = *(a1 + 16);
    ++*(a1 + 24);
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = 108;
        goto LABEL_20;
      }

      if (v20 == 3)
      {
        v21 = 96;
        goto LABEL_20;
      }
    }

    else
    {
      if (!v20)
      {
        v21 = 132;
        goto LABEL_20;
      }

      if (v20 == 1)
      {
        v21 = 120;
LABEL_20:
        ++*(v19 + v21);
      }
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v19);
    *(v15 + 4 * a2) = 3;
    return 1;
  }

  v11 = *(a1 + 16);
  v12 = operator new(0x20uLL);
  strcpy(v12, "too many repersonalizations");
  std::string::__init_copy_ctor_external(&v23, v12, 0x1BuLL);
  v24 = 43;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v11, &v23);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  operator delete(v12);
  return 2;
}

void sub_1E5270A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    operator delete(v16);
    _Unwind_Resume(a1);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1E5270AB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void BBUProvisioningParameters::~BBUProvisioningParameters(BBUProvisioningParameters *this)
{
  v2 = *this;
  if (*this)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete(v8);
  }
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventFinalize>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED948708 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED948700 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    qword_1ED9486C0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFinalize>>::flag_false;
    v17 = (qword_1ED9486C0[*(a1 + 32)])(a1);
    v18 = (qword_1ED9486C0[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventFinalize>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFinalize>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFinalize>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948B48 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948B48 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFinalize>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538FC6BLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538FC6BLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFinalize>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538FC41 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538FC41 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E52718D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::finalize,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 32 + 4 * a2) = 5;
  v5 = *(a1 + 168);
  if (v5 == 1)
  {
    v6 = 96;
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = 108;
LABEL_5:
    *(a1 + 144 + v6) = 0;
  }

  *(v4 + 4 * a2) = 5;
  BBUpdaterController::finalize(*(a1 + 16));
  *(v4 + 4 * a2) = 5;
  ++*(a1 + 136);
  *(v4 + 4 * a2) = 6;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,BBUpdaterControllerFSM::ControllerFSM_TOP::finalize,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 32 + 4 * a2) = 3;
  v5 = *(a1 + 304);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 108;
      goto LABEL_10;
    }

    if (v5 == 3)
    {
      v6 = 96;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      v6 = 132;
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v6 = 120;
LABEL_10:
      *(a1 + 280 + v6) = 0;
    }
  }

  *(v4 + 4 * a2) = 3;
  BBUpdaterController::finalize(*(a1 + 16));
  *(v4 + 4 * a2) = 3;
  ++*(a1 + 136);
  *(v4 + 4 * a2) = 6;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED948758 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948750 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948748 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948740 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948738 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948730 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948728 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948720 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948718 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    qword_1ED948710[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventCmdQueryInfo>>::flag_false;
    v17 = (qword_1ED948710[*(a1 + 32)])(a1);
    v18 = (qword_1ED948710[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948BA0 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948BA0 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538FD82 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538FD82 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E5272820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeFirst,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute(uint64_t a1)
{
  v1 = *(a1 + 16);
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v1, 0);
  BBUpdaterController::parsePreflightArgs(v1);
  BBUpdaterController::queryInfoFirstStageInternal(v1, v3);
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  return 1;
}

void sub_1E52729F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_irow_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::stateProvisionStart,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::front::none,BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::gatherParam,boost::msm::front::none>>::execute(uint64_t a1)
{
  v1 = *(a1 + 16);
  v17 = -86;
  v2 = operator new(0x38uLL);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *(v2 + 6) = 0;
  v16 = v2;
  BBUFeedback::handleComment(*(v1 + 56), "Getting manifest status for provisioning");
  v6 = (*(**(v1 + 72) + 96))(*(v1 + 72), v1 + 152, *(v1 + 96), &v17, v1 + 240, 1);
  if (!v6)
  {
    BBUFeedback::handleComment(*(v1 + 56), "Gathering provisioning parameters from BB");
    v6 = (*(**(v1 + 72) + 88))(*(v1 + 72), v1 + 152, v2);
    if (!v6)
    {
      BBUpdaterController::updateProvisioningInfo(v1, &v16);
      goto LABEL_4;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_15:
    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to gather provisioning parameters");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v13 = __p;
      goto LABEL_18;
    }

LABEL_17:
    std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_18;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v3, v4, v5, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to get manifest status");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }

  v13 = __p;
LABEL_18:
  v14 = v6;
  v15 = 0;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v1, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_4:
  BBUProvisioningParameters::~BBUProvisioningParameters(v2);
  operator delete(v10);
  return 1;
}

void sub_1E5272D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a17 & 0x80000000) == 0)
  {
    std::unique_ptr<BBUProvisioningParameters>::~unique_ptr[abi:ne200100]((v23 - 48));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::unique_ptr<BBUProvisioningParameters>::~unique_ptr[abi:ne200100]((v23 - 48));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>::execute(uint64_t a1, int a2)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdQueryInfo,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1 + 280))
  {
    v4 = (_MergedGlobals_1[*(a1 + 304) + 43])(a1 + 280, 0);
    v5 = v4;
    if ((*(a1 + 369) & 1) == 0 && !v4)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1 + 280, a1 + 280, *(a1 + 304));
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 4 * a2 + 32) = 3;
  return v5;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdQueryInfo,BBUpdaterControllerFSM::eventCmdQueryInfo>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 43])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdQueryInfo,BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = operator new(0x20uLL);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = 16 * (v5 - v6) - 1;
    *v3 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    v3[1] = 0;
    v3[2] = a1;
    *(v3 + 25) = 5;
    v11 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>)::stored_vtable;
    v12[0] = v3;
    if (v5 == v6)
    {
      v7 = 0;
    }

    v8 = *(a1 + 72) + *(a1 + 64);
    if (v7 == v8)
    {
      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 72) + *(a1 + 64);
    }

    v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
    *v9 = 0;
    boost::function0<boost::msm::back::HandledEnum>::move_assign(v9, &v11);
    ++*(a1 + 72);
    if (v11 && (v11 & 1) == 0)
    {
      if (*v11)
      {
        (*v11)(v12, v12, 2);
      }
    }

    return 0;
  }

  else
  {
    *(a1 + 88) = 1;
    return v2 ^ 1u;
  }
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538FE6FLL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538FE6FLL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E52738A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>::execute(uint64_t a1, int a2)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdQueryInfo,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1 + 144))
  {
    v4 = (_MergedGlobals_1[*(a1 + 168) + 27])(a1 + 144, 0);
    v5 = v4;
    if ((*(a1 + 233) & 1) == 0 && !v4)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1 + 144, a1 + 144, *(a1 + 168));
    }

    *(a1 + 232) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 144);
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 4 * a2 + 32) = 5;
  return v5;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdQueryInfo,BBUpdaterControllerFSM::eventCmdQueryInfo>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 27])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventCmdQueryInfo,BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = operator new(0x20uLL);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = 16 * (v5 - v6) - 1;
    *v3 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>;
    v3[1] = 0;
    v3[2] = a1;
    *(v3 + 25) = 5;
    v11 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>)::stored_vtable;
    v12[0] = v3;
    if (v5 == v6)
    {
      v7 = 0;
    }

    v8 = *(a1 + 72) + *(a1 + 64);
    if (v7 == v8)
    {
      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 72) + *(a1 + 64);
    }

    v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
    *v9 = 0;
    boost::function0<boost::msm::back::HandledEnum>::move_assign(v9, &v11);
    ++*(a1 + 72);
    if (v11 && (v11 & 1) == 0)
    {
      if (*v11)
      {
        (*v11)(v12, v12, 2);
      }
    }

    return 0;
  }

  else
  {
    *(a1 + 88) = 1;
    return v2 ^ 1u;
  }
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538FF6ALL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538FF6ALL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventCmdQueryInfo>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventCmdQueryInfo>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527446C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    while (1)
    {
      *&v2 = 0xAAAAAAAAAAAAAAAALL;
      *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v18 = 0xAAAAAAAAAAAAAAAALL;
      *&v18[8] = v2;
      v3 = *(v1 + 40);
      v4 = *(v1 + 64);
      v5 = v4 >> 7;
      v6 = v4 & 0x7F;
      v7 = *(v3 + 8 * (v4 >> 7)) + 32 * v6;
      v17 = 0;
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }

      v17 = *v7;
      if ((v8 & 1) == 0)
      {
        break;
      }

      v13 = *(v7 + 8);
      *&v18[16] = *(v7 + 24);
      *v18 = v13;
      v9 = (*(v3 + 8 * v5) + 32 * v6);
      v10 = *v9;
      if (*v9)
      {
LABEL_16:
        if ((v10 & 1) == 0)
        {
          v14 = *v10;
          if (v14)
          {
            v14(v9 + 1, v9 + 1, 2);
            v4 = *(v1 + 64);
          }
        }

        *v9 = 0;
        v15 = *(v1 + 72) - 1;
        v16 = v4 + 1;
        *(v1 + 64) = v16;
        *(v1 + 72) = v15;
        if (v16 < 0x100)
        {
          goto LABEL_10;
        }

LABEL_9:
        operator delete(**(v1 + 40));
        *(v1 + 40) += 8;
        *(v1 + 64) -= 128;
        goto LABEL_10;
      }

LABEL_8:
      v11 = *(v1 + 72) - 1;
      v12 = v4 + 1;
      *(v1 + 64) = v12;
      *(v1 + 72) = v11;
      if (v12 >= 0x100)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (!v17)
      {
        std::runtime_error::runtime_error(&v19, "call to empty boost::function");
        v19.__vftable = &unk_1F5EFF7C8;
        boost::throw_exception<boost::bad_function_call>(&v19);
      }

      result = (*((v17 & 0xFFFFFFFFFFFFFFFELL) + 8))(v18);
      if ((v17 & 1) == 0)
      {
        if (*v17)
        {
          result = (*v17)(v18, v18, 2);
        }
      }

      if (!*(v1 + 72))
      {
        return result;
      }
    }

    (*v8)(v7 + 8, v18, 0);
    v3 = *(v1 + 40);
    v4 = *(v1 + 64);
    v5 = v4 >> 7;
    v6 = v4 & 0x7F;
LABEL_7:
    v9 = (*(v3 + 8 * v5) + 32 * v6);
    v10 = *v9;
    if (*v9)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  return result;
}

void sub_1E5274754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  std::runtime_error::~runtime_error(&a13);
  boost::function<boost::msm::back::HandledEnum ()(void)>::~function(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,BBUpdaterControllerFSM::eventCmdQueryInfo,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::queryAction<(BBUStage)2>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 452) = 0;
  *(a1 + 32 + 4 * a2) = 0;
  v5 = *(a1 + 16);
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v5, 0);
  BBUpdaterController::parsePreflightArgs(v5);
  BBUpdaterController::queryInfoFirstStageInternal(v5, v7);
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  *(v4 + 4 * a2) = 0;
  v8 = a1 + 280;
  v9 = *(a1 + 364);
  *(a1 + 304) = v9;
  *(a1 + 296) = *(a1 + 16);
  ++*(a1 + 24);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 108;
      goto LABEL_12;
    }

    if (v9 == 3)
    {
      v10 = 96;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = 132;
      goto LABEL_12;
    }

    if (v9 == 1)
    {
      v10 = 120;
LABEL_12:
      ++*(v8 + v10);
    }
  }

  *(a1 + 368) = 0;
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(v8);
  *(v4 + 4 * a2) = 3;
  return 1;
}

void sub_1E52748AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventEUICC>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED9487A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED9487A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948798 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948790 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948788 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948780 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948778 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948770 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948768 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    qword_1ED948760[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventEUICC>>::flag_false;
    v17 = (qword_1ED948760[*(a1 + 32)])(a1);
    v18 = (qword_1ED948760[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventEUICC>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948BF8 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948BF8 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E539008ALL & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E539008ALL & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E5275608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::eventEUICC,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeEUICC,BBUpdaterControllerFSM::performAction<(BBUStage)32>,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 4 * a2;
  *(a1 + 108) = 0;
  *(v3 + 24) = 2;
  BBUpdaterController::personalize(*(a1 + 16), 32);
  *(v3 + 24) = 2;
  ++*(a1 + 96);
  *(v3 + 24) = 3;
  return 1;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>::execute(uint64_t a1, int a2)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventEUICC,BBUpdaterControllerFSM::eventEUICC>(a1 + 280))
  {
    v4 = (_MergedGlobals_1[*(a1 + 304) + 48])(a1 + 280, 0);
    v5 = v4;
    if ((*(a1 + 369) & 1) == 0 && !v4)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>(a1 + 280, a1 + 280, *(a1 + 304));
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 4 * a2 + 32) = 3;
  return v5;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventEUICC>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventEUICC,BBUpdaterControllerFSM::eventEUICC>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 48])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventEUICC,BBUpdaterControllerFSM::eventEUICC>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = operator new(0x20uLL);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = 16 * (v5 - v6) - 1;
    *v3 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventEUICC>;
    v3[1] = 0;
    v3[2] = a1;
    *(v3 + 25) = 5;
    v11 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>)::stored_vtable;
    v12[0] = v3;
    if (v5 == v6)
    {
      v7 = 0;
    }

    v8 = *(a1 + 72) + *(a1 + 64);
    if (v7 == v8)
    {
      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 72) + *(a1 + 64);
    }

    v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
    *v9 = 0;
    boost::function0<boost::msm::back::HandledEnum>::move_assign(v9, &v11);
    ++*(a1 + 72);
    if (v11 && (v11 & 1) == 0)
    {
      if (*v11)
      {
        (*v11)(v12, v12, 2);
      }
    }

    return 0;
  }

  else
  {
    *(a1 + 88) = 1;
    return v2 ^ 1u;
  }
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390170 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390170 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventEUICC>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventEUICC>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390063 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E5276244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventFuse>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED9487F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    qword_1ED9487B0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventFuse>>::flag_false;
    v17 = (qword_1ED9487B0[*(a1 + 32)])(a1);
    v18 = (qword_1ED9487B0[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventFuse>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFuse>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFuse>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948C50 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948C50 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFuse>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390289 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390289 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventFuse>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E5390264 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E5390264 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E527704C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventFuse,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,BBUpdaterControllerFSM::ControllerFSM_TOP::fuse,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  *(a1 + 32 + 4 * a2) = 3;
  v5 = *(a1 + 304);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 108;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v6 = 96;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_11;
    }

    v6 = 120;
  }

  else
  {
    v6 = 132;
  }

  *(a1 + 280 + v6) = 0;
LABEL_11:
  *(v4 + 4 * a2) = 3;
  v7 = *(a1 + 16);
  v8 = capabilities::updater::supportsBBFusing(a1);
  if (!v8)
  {
    v37 = BBUFusing::create(*(v7 + 56), v7 + 152);
    if (!v37)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x35Eu, "Assertion failure(fuser && Error in creating fusing process.)", v70, v71, v72, v77);
    }

    v38 = v37;
    FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v7, 0);
    v43 = FirmwareDataSource;
    if (FirmwareDataSource)
    {
      if ((*(*FirmwareDataSource + 64))(FirmwareDataSource))
      {
        v50 = (*(*v38 + 16))(v38, v43, 0);
        if (!v50)
        {
          v54 = (*(**(v7 + 72) + 72))(*(v7 + 72), v7 + 152, *(v7 + 96));
          if (!v54)
          {
            (*(**(v7 + 64) + 40))(*(v7 + 64), v7 + 152);
            BBUFeedback::handleComment(*(v7 + 56), "Powercycle after fusing");
            if ((*(**(v7 + 72) + 32))(*(v7 + 72), *(v7 + 48)))
            {
              BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(v7 + 16), *(v7 + 24), &v83);
LABEL_39:
              v58 = MEMORY[0x1E695E4D0];
LABEL_40:
              CFDictionarySetValue(*(v7 + 32), @"fuseAttemptSucceeded", *v58);
LABEL_41:
              (*(*v43 + 16))(v43);
LABEL_42:
              (*(*v38 + 8))(v38);
              goto LABEL_70;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
                goto LABEL_112;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
LABEL_112:
                if (gBBULogVerbosity >= 6)
                {
                  _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
                }
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&v82, "Fail to powercycle modem after fusing");
            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
            }

            else
            {
              v83 = v82;
            }

            v84 = 39;
            BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
            if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v83.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v82.__r_.__value_.__l.__data_);
            }

            goto LABEL_39;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_108;
            }
          }

          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          }

LABEL_108:
          std::string::basic_string[abi:ne200100]<0>(&v82, "Failed gathering personalization parameters");
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
          }

          else
          {
            v83 = v82;
          }

          v84 = v54;
          BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
          if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v83.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_156:
              if (gBBULogMaskGet(void)::once == -1)
              {
                goto LABEL_157;
              }

              goto LABEL_162;
            }
          }

          else if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_156;
          }

          operator delete(v82.__r_.__value_.__l.__data_);
          if (gBBULogMaskGet(void)::once == -1)
          {
LABEL_157:
            v58 = MEMORY[0x1E695E4D0];
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_158;
          }

LABEL_162:
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v58 = MEMORY[0x1E695E4D0];
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_40;
          }

LABEL_158:
          if (gBBULogVerbosity < 6)
          {
            goto LABEL_40;
          }

          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          goto LABEL_39;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_100:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
            }
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v82, "Failed performing fusing.");
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
        }

        else
        {
          v83 = v82;
        }

        v84 = v50;
        BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        v58 = MEMORY[0x1E695E4C0];
        goto LABEL_40;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_88:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
          }
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v82, "Fusing is requested but no fusing program was given yet. ");
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
      }

      else
      {
        v83 = v82;
      }

      v84 = 24;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
      goto LABEL_126;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_76:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v82, "Fail to get update source for fuse");
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
    }

    else
    {
      v83 = v82;
    }

    v84 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
LABEL_126:
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    CFDictionaryRemoveValue(*(v7 + 32), @"fuseAttemptSucceeded");
    if (!v43)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  valuePtr = capabilities::updater::intermittentFailureRetryCount(v8);
  v9 = CFDictionaryContainsValue(*(v7 + 32), @"fuseRetrial");
  v10 = MEMORY[0x1E695E480];
  if (!v9 || (Value = CFDictionaryGetValue(*(v7 + 32), @"fuseRetrial"), TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(Value)) || (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr), v13 = *v10, (v14 = CFNumberCreate(*v10, kCFNumberIntType, &valuePtr)) == 0))
  {
    v13 = *v10;
    v14 = CFNumberCreate(*v10, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*(v7 + 32), @"fuseRetrial", v14);
  }

  allocator = v13;
  v15 = BBUFusing::create(*(v7 + 56), v7 + 152);
  if (!v15)
  {
    v73 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v73, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x313u, "Assertion failure(fuser && Error in creating fusing process.)", v74, v75, v76, v77);
  }

  v16 = BBUpdaterController::getFirmwareDataSource(v7, 0);
  v20 = v16;
  v78 = v4;
  if (!v16)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_82:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v82, "Fail to get update source for fuse");
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
    }

    else
    {
      v83 = v82;
    }

    v84 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
    goto LABEL_134;
  }

  if (!(*(*v16 + 64))(v16))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_94:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v82, "Fusing is requested but no fusing program was given yet. ");
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
    }

    else
    {
      v83 = v82;
    }

    v84 = 24;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
LABEL_134:
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    CFDictionaryRemoveValue(*(v7 + 32), @"fuseAttemptSucceeded");
    goto LABEL_64;
  }

  v27 = (*(*v15 + 16))(v15, v20, 0);
  if (v27)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_25;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(19, 0, "BBUpdaterController", "", "Failed performing fusing with %d trials\n", v24, v25, v26, valuePtr);
    }

LABEL_25:
    if (valuePtr--)
    {
      (*(**(v7 + 72) + 32))(*(v7 + 72), *(v7 + 48));
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_30;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_30:
      std::to_string(&v82, valuePtr);
      v32 = std::string::insert(&v82, 0, "Failed performing fusing. Retry: ", 0x21uLL);
      v34 = v32->__r_.__value_.__r.__words[0];
      size = v32->__r_.__value_.__l.__size_;
      *v80 = v32->__r_.__value_.__r.__words[2];
      *&v80[3] = *(&v32->__r_.__value_.__r.__words[2] + 3);
      v35 = SHIBYTE(v32->__r_.__value_.__r.__words[2]);
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v36 = valuePtr;
      if (v35 < 0)
      {
        std::string::__init_copy_ctor_external(&v83, v34, size);
      }

      else
      {
        v83.__r_.__value_.__r.__words[0] = v34;
        v83.__r_.__value_.__l.__size_ = size;
        LODWORD(v83.__r_.__value_.__r.__words[2]) = *v80;
        *(&v83.__r_.__value_.__r.__words[2] + 3) = *&v80[3];
        *(&v83.__r_.__value_.__s + 23) = v35;
      }

      v84 = __PAIR64__(v36, v27);
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(v7, &v83);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
        if ((v35 & 0x80000000) == 0)
        {
LABEL_61:
          if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_62:
            v62 = MEMORY[0x1E695E4C0];
            goto LABEL_63;
          }

LABEL_73:
          operator delete(v82.__r_.__value_.__l.__data_);
          goto LABEL_62;
        }
      }

      else if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      operator delete(v34);
      if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_73;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_53:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    v63 = operator new(0x20uLL);
    strcpy(v63, "Failed performing fusing.");
    std::string::__init_copy_ctor_external(&v83, v63, 0x19uLL);
    v84 = v27;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    operator delete(v63);
    goto LABEL_62;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_48;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(19, 1, "BBUpdaterController", "", "Succeeded to perform fusing with %d trials\n", v24, v25, v26, valuePtr);
  }

LABEL_48:
  (*(**(v7 + 64) + 40))(*(v7 + 64), v7 + 152);
  BBUFeedback::handleComment(*(v7 + 56), "Powercycle after fusing");
  if (((*(**(v7 + 72) + 32))(*(v7 + 72), *(v7 + 48)) & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_149;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_149:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v82, "Fail to powercycle modem after fusing");
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
    }

    else
    {
      v83 = v82;
    }

    v84 = 39;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v7, &v83);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
    }

    goto LABEL_50;
  }

  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventContinue>(*(v7 + 16), *(v7 + 24), &v83);
LABEL_50:
  v62 = MEMORY[0x1E695E4D0];
LABEL_63:
  CFDictionarySetValue(*(v7 + 32), @"fuseAttemptSucceeded", *v62);
LABEL_64:
  v64 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr);
  if (v14)
  {
    CFRelease(v14);
  }

  CFDictionarySetValue(*(v7 + 32), @"fuseRetrial", v64);
  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  (*(*v15 + 8))(v15);
  v4 = v78;
  if (v64)
  {
    CFRelease(v64);
  }

LABEL_70:
  *(v4 + 4 * a2) = 3;
  ++*(a1 + 268);
  *(v4 + 4 * a2) = 4;
  return 1;
}

void sub_1E5278390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  (*(*v30 + 16))(v30);
  (*(*v29 + 8))(v29);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a16);
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventProvision>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED948848 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948840 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948838 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948830 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948828 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948820 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948818 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948810 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948808 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    qword_1ED948800[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventProvision>>::flag_false;
    v17 = (qword_1ED948800[*(a1 + 32)])(a1);
    v18 = (qword_1ED948800[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventProvision>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventProvision>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventProvision>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED948CA8 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED948CA8 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventProvision>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E5390398 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5390398 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventProvision>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E539036DLL & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E539036DLL & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v35 | 7) + 1;
    }

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E52793B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::_row_<boost::msm::front::Row<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventProvision,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::front::none,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v3 = a1 + 32;
  *(a1 + 32 + 4 * a2) = 3;
  v4 = *(a1 + 304);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 108;
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_11;
      }

      v5 = 96;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    v5 = 120;
  }

  else
  {
    v5 = 132;
  }

  *(a1 + 280 + v5) = 0;
LABEL_11:
  *(v3 + 4 * a2) = 3;
  v6 = *(a1 + 228);
  *(a1 + 168) = v6;
  *(a1 + 160) = *(a1 + 16);
  if (v6 == 1)
  {
    v7 = 96;
    goto LABEL_15;
  }

  if (!v6)
  {
    v7 = 108;
LABEL_15:
    ++*(a1 + 144 + v7);
  }

  *(a1 + 232) = 0;
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 144);
  *(v3 + 4 * a2) = 5;
  return 1;
}

_BYTE *std::stringbuf::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 48);
    if (v4 < v5)
    {
      *(a2 + 88) = v5;
      v4 = v5;
    }

    v6 = *(a2 + 40);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      __dst[23] = 0;
LABEL_4:
      *__dst = 0;
      return __dst;
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 32) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_17:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v2[1] = v7;
    v2[2] = v8 | 0x8000000000000000;
    *v2 = v9;
    v2 = v9;
  }

  else
  {
    __dst[23] = v7;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  __dst = memmove(v2, v6, v7);
  *(v2 + v7) = 0;
  return __dst;
}