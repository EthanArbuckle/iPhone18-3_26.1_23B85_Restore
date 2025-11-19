void sub_296D95A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      _Block_release(v4);
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

void *awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver26sendEnableMetricSubmissionENSt3__110shared_ptrINS2_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENS9_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = *(v2 + 48);
  v6 = std::__shared_weak_count::lock(v3);
  v22 = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19[3] = v8;
    v20 = v8;
    v19[1] = v8;
    v19[2] = v8;
    v19[0] = v8;
    AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::ARI_CsiAwdsMetricSubSwitchRspCb_SDK(v19, a2);
    if (ice::isARIResponseValid() && !AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::unpack(v19))
    {
      v16 = **(&v20 + 1);
      AppID = awd::AppContext::getAppID(*(v2 + 24));
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = *v20 == AppID;
      }

      v9 = v18;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        v11 = "disabled";
        v12 = "error";
        if (*(v2 + 44))
        {
          v11 = "enabled";
        }

        if (v9)
        {
          v12 = "success";
        }

        *buf = 136315394;
        *&buf[4] = v11;
        v24 = 2080;
        v25 = v12;
        _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Metric submission %s %s", buf, 0x16u);
      }
    }

    v13 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v13)
    {
      v13 = _Block_copy(v13);
    }

    *buf = v13;
    awd::AppContext::operator()();
    if (*buf)
    {
      _Block_release(*buf);
    }

    MEMORY[0x29C265240](v19);
  }

  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_296D95E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c168_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver26sendEnableMetricSubmissionENS0_INS1_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c168_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver26sendEnableMetricSubmissionENS0_INS1_10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A1D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = a1;
  v98 = *MEMORY[0x29EDCA608];
  v71 = *a1;
  v3 = v71[3];
  v2 = v71[4];
  v66 = v71;
  v64 = v2 - v3;
  v69 = v71[9];
  v4 = *(v69 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v71 + 16);
    *buf = 136315394;
    *&buf[4] = awd::asString();
    *&buf[12] = 2048;
    *&buf[14] = v2 - v3;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I Requesting to add configuration type: %s, payload size: %lu", buf, 0x16u);
  }

  if (v2 != v3 && (v64 + 3839) >= 0xF00)
  {
    v68 = 0;
    LODWORD(v6) = 0;
    v7 = v71;
    v67 = (v64 + 3839) / 0xF00uLL;
    v63 = v71[3];
    while (1)
    {
      v97 = 0xAAAAAAAAAAAAAAAALL;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v95 = v8;
      v96 = v8;
      v9 = v63 + (3840 * v6);
      if (v63 + v64 >= v9 + 3840)
      {
        v10 = v9 + 3840;
      }

      else
      {
        v10 = v63 + v64;
      }

      v93 = v8;
      v94 = v8;
      v91 = v8;
      v92 = v8;
      *buf = v8;
      *&buf[16] = v8;
      AriSdk::ARI_CsiAwdsAddConfigReq_SDK::ARI_CsiAwdsAddConfigReq_SDK(buf);
      AppID = awd::AppContext::getAppID(*v7);
      v12 = operator new(4uLL);
      *v12 = AppID;
      v13 = v93;
      *&v93 = v12;
      if (v13)
      {
        operator delete(v13);
      }

      v14 = *(v7 + 16);
      v15 = operator new(1uLL);
      *v15 = v14;
      v16 = *(&v93 + 1);
      *(&v93 + 1) = v15;
      if (v16)
      {
        operator delete(v16);
      }

      v17 = operator new(4uLL);
      *v17 = v64;
      v18 = v94;
      *&v94 = v17;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = operator new(4uLL);
      v20 = v10 - v9;
      *v19 = v10 - v9;
      v21 = *(&v94 + 1);
      *(&v94 + 1) = v19;
      if (v21)
      {
        operator delete(v21);
      }

      v22 = operator new(2uLL);
      *v22 = v6;
      v23 = v95;
      *&v95 = v22;
      if (v23)
      {
        operator delete(v23);
      }

      LogLevels = operator new(1uLL);
      v65 = AppID;
      v62 = v6 + 1;
      *LogLevels = v67 == v62;
      v25 = *(&v95 + 1);
      *(&v95 + 1) = LogLevels;
      if (v25)
      {
        operator delete(v25);
      }

      if (v20 >= 1)
      {
        for (i = 0; i < v20; ++i)
        {
          v28 = v96;
          v29 = *(&v96 + 1) - v96;
          if (*(&v96 + 1) - v96 >= 0xF00uLL)
          {
            LogLevels = Ari::GetLogLevels(LogLevels);
            if ((LogLevels & 8) != 0)
            {
              OsLog = AriOsa::GetOsLog(LogLevels);
              if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
              {
                AriOsa::LogSrcInfo(&v74, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v36);
                v39 = &v74;
                if (SHIBYTE(v76) < 0)
                {
                  v39 = v74;
                }

                LODWORD(__p[0]) = 136315650;
                *(__p + 4) = "ari";
                WORD2(__p[1]) = 2080;
                *(&__p[1] + 6) = v39;
                HIWORD(__p[2]) = 1024;
                LODWORD(v82) = 371;
                _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array is full, cannot add new values", __p, 0x1Cu);
                if (SHIBYTE(v76) < 0)
                {
                  operator delete(v74);
                }
              }

              AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v36);
              v38 = __p;
              if (SHIBYTE(__p[2]) < 0)
              {
                v38 = __p[0];
              }

              LogLevels = AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array is full, cannot add new values", v37, v38, 371);
              if (SHIBYTE(__p[2]) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          else
          {
            v30 = *(v63 + v68 + i);
            if (*(&v96 + 1) < v97)
            {
              **(&v96 + 1) = v30;
              v27 = *(&v28 + 1) + 1;
            }

            else
            {
              v31 = v97 - v96;
              if (2 * (v97 - v96) <= v29 + 1)
              {
                v32 = v29 + 1;
              }

              else
              {
                v32 = 2 * v31;
              }

              if (v31 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v33 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              v34 = operator new(v33);
              v34[v29] = v30;
              v27 = &v34[v29 + 1];
              LogLevels = memcpy(v34, v28, v29);
              *&v96 = v34;
              *(&v96 + 1) = v27;
              v97 = &v34[v33];
              if (v28)
              {
                operator delete(v28);
              }
            }

            *(&v96 + 1) = v27;
          }
        }
      }

      v40 = *(v69 + 5);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        awd::AppContext::getAppID(*v66);
        v41 = awd::asString();
        v42 = *(v66 + 16);
        v43 = awd::asString();
        LODWORD(__p[0]) = 136317186;
        *(__p + 4) = v41;
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = v43;
        HIWORD(__p[2]) = 1024;
        LODWORD(v82) = v64;
        WORD2(v82) = 2048;
        *(&v82 + 6) = (v64 + 3839) / 0xF00uLL;
        HIWORD(v82) = 2048;
        *v83 = v63 + (3840 * v6);
        *&v83[8] = 2048;
        *&v83[10] = v10;
        v84 = 1024;
        v85 = v20;
        v86 = 1024;
        v87 = v6;
        v88 = 1024;
        v89 = v67 == v62;
        _os_log_impl(&dword_296D7D000, v40, OS_LOG_TYPE_DEFAULT, "#I AppID: %s, config type: %s, total length: %d, number of segments: %lu, start: %p, end: %p, segment length: %d, segment number: %d, is last segment: %d", __p, 0x4Cu);
      }

      v44 = *(v69 + 11);
      v46 = v66[7];
      v45 = v66[8];
      __p[0] = v46;
      __p[1] = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(v45 + 2, 1uLL, memory_order_relaxed);
      }

      v47 = v66[6];
      if (!v47)
      {
        break;
      }

      v48 = _Block_copy(v47);
      __p[2] = v48;
      v49 = *v66;
      *&v82 = *v66;
      v50 = v66[1];
      *(&v82 + 1) = v50;
      if (v50)
      {
        goto LABEL_54;
      }

LABEL_55:
      *v83 = v65;
      *&v83[8] = v69;
      v51 = operator new(0x50uLL);
      v51->__shared_owners_ = 0;
      p_shared_owners = &v51->__shared_owners_;
      v51->__shared_weak_owners_ = 0;
      v51->__vftable = &unk_2A1E0A258;
      v51[1].__vftable = v46;
      memset(__p, 0, sizeof(__p));
      v51[1].__shared_owners_ = v45;
      v51[1].__shared_weak_owners_ = v48;
      v51[2].__vftable = v49;
      v51[2].__shared_owners_ = v50;
      v82 = 0uLL;
      *&v51[2].__shared_weak_owners_ = *v83;
      v74 = MEMORY[0x29EDCA5F8];
      v75 = 1174405120;
      v76 = ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS2_10AppContextEEENS2_11PayloadTypeERKNS4_6vectorIhNS4_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENSG_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
      v77 = &__block_descriptor_tmp_16_0;
      v78 = v51 + 1;
      v79 = v51;
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_0;
      aBlock[3] = &unk_29EE5B668;
      aBlock[4] = &v74;
      v53 = _Block_copy(aBlock);
      v54 = v79;
      if (!v79 || atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_59;
        }

LABEL_58:
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
        goto LABEL_59;
      }

      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_58;
      }

LABEL_59:
      *&v55 = 0xAAAAAAAAAAAAAAAALL;
      *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v72[0] = v55;
      v72[1] = v55;
      v73 = 0xAAAAAAAAAAAAAAAALL;
      v56 = *(v44 + 16);
      v74 = *(v44 + 8);
      v7 = v66;
      if (!v56)
      {
        v75 = 0;
LABEL_85:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v75 = std::__shared_weak_count::lock(v56);
      if (!v75)
      {
        goto LABEL_85;
      }

      ice::SendMsgBaseProxy::SendMsgBaseProxy();
      v57 = v75;
      if (v75 && !atomic_fetch_add((v75 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v57->__on_zero_shared)(v57);
        std::__shared_weak_count::__release_weak(v57);
      }

      aBlock[0] = v53;
      ice::SendMsgBaseProxy::callback();
      if (aBlock[0])
      {
        _Block_release(aBlock[0]);
      }

      MEMORY[0x29C263BF0](v72);
      v58 = *(&v82 + 1);
      if (*(&v82 + 1) && !atomic_fetch_add((*(&v82 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v58->__on_zero_shared)(v58);
        std::__shared_weak_count::__release_weak(v58);
        v59 = __p[2];
        if (!__p[2])
        {
          goto LABEL_70;
        }

LABEL_69:
        _Block_release(v59);
        goto LABEL_70;
      }

      v59 = __p[2];
      if (__p[2])
      {
        goto LABEL_69;
      }

LABEL_70:
      if (__p[1])
      {
        std::__shared_weak_count::__release_weak(__p[1]);
      }

      MEMORY[0x29C264400](buf);
      v6 = (v6 + 1);
      v68 += 3840;
      if (v67 <= v6)
      {
        v1 = a1;
        std::unique_ptr<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v71);
        if (a1)
        {
          goto LABEL_79;
        }

        goto LABEL_83;
      }
    }

    v48 = 0;
    __p[2] = 0;
    v49 = *v66;
    *&v82 = *v66;
    v50 = v66[1];
    *(&v82 + 1) = v50;
    if (!v50)
    {
      goto LABEL_55;
    }

LABEL_54:
    atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_55;
  }

  std::unique_ptr<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v71);
LABEL_79:
  v60 = v1[2];
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  operator delete(v1);
LABEL_83:
  v61 = *MEMORY[0x29EDCA608];
}

void sub_296D96938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *aBlock, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  std::unique_ptr<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&a30);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v2[6];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[3];
    if (v5)
    {
      v2[4] = v5;
      operator delete(v5);
    }

    v6 = v2[1];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS2_10AppContextEEENS2_11PayloadTypeERKNS4_6vectorIhNS4_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENSG_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  buf[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = *(v2 + 48);
  v6 = std::__shared_weak_count::lock(v3);
  v21 = v6;
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18[3] = v8;
    v19 = v8;
    v18[1] = v8;
    v18[2] = v8;
    v18[0] = v8;
    AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::ARI_CsiAwdsAddConfigRspCb_SDK(v18, a2);
    if (!ice::isARIResponseValid())
    {
      goto LABEL_20;
    }

    if (AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::unpack(v18))
    {
      v9 = 0;
      v10 = *(v4 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:
        v15 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v15)
        {
          v15 = _Block_copy(v15);
        }

        buf[0] = v15;
        awd::AppContext::operator()();
        if (buf[0])
        {
          _Block_release(buf[0]);
        }

        MEMORY[0x29C264810](v18);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = **(&v19 + 1);
      AppID = awd::AppContext::getAppID(*(v2 + 24));
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v19 == AppID;
      }

      v9 = v13;
      v10 = *(v4 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    v14 = "error";
    if (v9)
    {
      v14 = "success";
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v14;
    _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Added configuration %s", buf, 0xCu);
    goto LABEL_20;
  }

LABEL_25:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_27:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296D96D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c212_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver20sendAddConfigurationENS0_INS1_10AppContextEEENS1_11PayloadTypeERKNS_6vectorIhNS_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c212_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver20sendAddConfigurationENS0_INS1_10AppContextEEENS1_11PayloadTypeERKNS_6vectorIhNS_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v27 = v1;
  v2 = v1[5];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    awd::AppContext::getAppID(v1[2]);
    *buf = 136315138;
    *&buf[4] = awd::asString();
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Requesting to clear configuration for app: %s", buf, 0xCu);
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v4;
  v47 = v4;
  *buf = v4;
  v45 = v4;
  AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK::ARI_CsiAwdsDeleteConfigReq_SDK(buf);
  AppID = awd::AppContext::getAppID(v1[2]);
  v6 = operator new(4uLL);
  *v6 = AppID;
  v7 = v48;
  v48 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(v2 + 88);
  v10 = *v1;
  v9 = v1[1];
  v28 = *v1;
  v29 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v1[4];
  if (!v11)
  {
    v12 = 0;
    v30 = 0;
    v13 = v1[2];
    v31 = v13;
    v14 = v1[3];
    v32 = v14;
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = _Block_copy(v11);
  v30 = v12;
  v13 = v1[2];
  v31 = v13;
  v14 = v1[3];
  v32 = v14;
  if (v14)
  {
LABEL_9:
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_10:
  LODWORD(v33) = AppID;
  *(&v33 + 1) = v2;
  v15 = operator new(0x50uLL);
  v15->__shared_owners_ = 0;
  p_shared_owners = &v15->__shared_owners_;
  v15->__shared_weak_owners_ = 0;
  v15->__vftable = &unk_2A1E0A2D8;
  v15[1].__vftable = v10;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15[1].__shared_owners_ = v9;
  v15[1].__shared_weak_owners_ = v12;
  v15[2].__vftable = v13;
  v15[2].__shared_owners_ = v14;
  v31 = 0;
  v32 = 0;
  *&v15[2].__shared_weak_owners_ = v33;
  *&v35 = MEMORY[0x29EDCA5F8];
  *(&v35 + 1) = 1174405120;
  *&v36 = ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS2_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENS9_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v36 + 1) = &__block_descriptor_tmp_18_0;
  v37 = &v15[1];
  v38 = v15;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v40 = 0x40000000;
  v41 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_0;
  v42 = &unk_29EE5B668;
  v43 = &v35;
  v17 = _Block_copy(&aBlock);
  v18 = v38;
  if (!v38 || atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_13:
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

LABEL_14:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v19;
  v36 = v19;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *(v8 + 16);
  aBlock = *(v8 + 8);
  if (!v20)
  {
    v40 = 0;
LABEL_40:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v40 = std::__shared_weak_count::lock(v20);
  if (!v40)
  {
    goto LABEL_40;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v21 = v40;
  if (v40 && !atomic_fetch_add((v40 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v34 = v17;
  ice::SendMsgBaseProxy::callback();
  if (v17)
  {
    _Block_release(v17);
  }

  MEMORY[0x29C263BF0](&v35);
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v22 = v30;
    if (!v30)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  (v32->__on_zero_shared)(v32);
  std::__shared_weak_count::__release_weak(v32);
  v22 = v30;
  if (v30)
  {
LABEL_24:
    _Block_release(v22);
  }

LABEL_25:
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  MEMORY[0x29C2649B0](buf);
  std::unique_ptr<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v27);
  v23 = a1;
  if (a1)
  {
    v24 = a1[2];
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v23 = a1;
    }

    operator delete(v23);
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_296D973F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver22sendClearConfigurationENSt3__110shared_ptrINS2_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENS9_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  buf[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_27;
  }

  v4 = *(v2 + 48);
  v6 = std::__shared_weak_count::lock(v3);
  v21 = v6;
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18[3] = v8;
    v19 = v8;
    v18[1] = v8;
    v18[2] = v8;
    v18[0] = v8;
    AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::ARI_CsiAwdsDeleteConfigRspCb_SDK(v18, a2);
    if (!ice::isARIResponseValid())
    {
      goto LABEL_20;
    }

    if (AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::unpack(v18))
    {
      v9 = 0;
      v10 = *(v4 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:
        v15 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v15)
        {
          v15 = _Block_copy(v15);
        }

        buf[0] = v15;
        awd::AppContext::operator()();
        if (buf[0])
        {
          _Block_release(buf[0]);
        }

        MEMORY[0x29C264E70](v18);
        goto LABEL_25;
      }
    }

    else
    {
      v11 = **(&v19 + 1);
      AppID = awd::AppContext::getAppID(*(v2 + 24));
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v19 == AppID;
      }

      v9 = v13;
      v10 = *(v4 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    v14 = "error";
    if (v9)
    {
      v14 = "success";
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v14;
    _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Clear configuration %s", buf, 0xCu);
    goto LABEL_20;
  }

LABEL_25:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_27:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296D977B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c163_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver22sendClearConfigurationENS0_INS1_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c163_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver22sendClearConfigurationENS0_INS1_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A2D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v31 = v1;
  v2 = v1[5];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D Requesting to update properties", buf, 2u);
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __p = v4;
  v40 = v4;
  v41 = v4;
  *buf = v4;
  v39 = v4;
  AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK::ARI_CsiAwdsPiiLocConfigReq_SDK(buf);
  AppID = awd::AppContext::getAppID(v1[2]);
  Properties = awd::AppContext::getProperties(v1[2]);
  v7 = operator new(4uLL);
  *v7 = AppID;
  v8 = __p;
  *&__p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = operator new(1uLL);
  *v9 = BYTE1(Properties) & 1;
  v10 = *(&__p + 1);
  *(&__p + 1) = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(1uLL);
  *v11 = BYTE2(Properties) & 1;
  v12 = v43;
  v43 = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(v2 + 88);
  v15 = *v1;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1[4];
  if (!v16)
  {
    v17 = 0;
    v34 = 0;
    v18 = v1[2];
    v35 = v18;
    v19 = v1[3];
    v36 = v19;
    if (!v19)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = _Block_copy(v16);
  v34 = v17;
  v18 = v1[2];
  v35 = v18;
  v19 = v1[3];
  v36 = v19;
  if (v19)
  {
LABEL_13:
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_14:
  LODWORD(v37) = AppID;
  *(&v37 + 1) = v2;
  v20 = operator new(0x50uLL);
  v20->__shared_owners_ = 0;
  p_shared_owners = &v20->__shared_owners_;
  v20->__shared_weak_owners_ = 0;
  v20->__vftable = &unk_2A1E0A358;
  v20[1].__vftable = v15;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v20[1].__shared_owners_ = v14;
  v20[1].__shared_weak_owners_ = v17;
  v20[2].__vftable = v18;
  v20[2].__shared_owners_ = v19;
  v35 = 0;
  v36 = 0;
  *&v20[2].__shared_weak_owners_ = v37;
  *&v45 = MEMORY[0x29EDCA5F8];
  *(&v45 + 1) = 1174405120;
  *&v46 = ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver20sendUpdatePropertiesENSt3__110shared_ptrINS2_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENS9_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v46 + 1) = &__block_descriptor_tmp_20;
  v47 = &v20[1];
  v48 = v20;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v50 = 0x40000000;
  v51 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_0;
  v52 = &unk_29EE5B668;
  v53 = &v45;
  v22 = _Block_copy(&aBlock);
  v23 = v48;
  if (!v48 || atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_18:
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v24;
  v46 = v24;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v25 = *(v13 + 16);
  aBlock = *(v13 + 8);
  if (!v25)
  {
    v50 = 0;
LABEL_44:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v50 = std::__shared_weak_count::lock(v25);
  if (!v50)
  {
    goto LABEL_44;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v26 = v50;
  if (v50 && !atomic_fetch_add((v50 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v44 = v22;
  ice::SendMsgBaseProxy::callback();
  if (v44)
  {
    _Block_release(v44);
  }

  MEMORY[0x29C263BF0](&v45);
  if (!v36 || atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v27 = v34;
    if (!v34)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  (v36->__on_zero_shared)(v36);
  std::__shared_weak_count::__release_weak(v36);
  v27 = v34;
  if (v34)
  {
LABEL_28:
    _Block_release(v27);
  }

LABEL_29:
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  MEMORY[0x29C2649F0](buf);
  std::unique_ptr<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v31);
  v28 = a1;
  if (a1)
  {
    v29 = a1[2];
    if (v29)
    {
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
        v28 = a1;
      }
    }

    operator delete(v28);
  }
}

void sub_296D97E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *aBlock, char a31)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a31);
  awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C2649F0](&a19);
  std::unique_ptr<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver20sendUpdatePropertiesENSt3__110shared_ptrINS2_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENS9_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  buf[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = *(v2 + 48);
  v6 = std::__shared_weak_count::lock(v3);
  v23 = v6;
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[3] = v8;
    v21 = v8;
    v20[1] = v8;
    v20[2] = v8;
    v20[0] = v8;
    AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::ARI_CsiAwdsPiiLocConfigRspCb_SDK(v20, a2);
    if (!ice::isARIResponseValid())
    {
      v11 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (!v11)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::unpack(v20))
    {
      v9 = 0;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = **(&v21 + 1);
      AppID = awd::AppContext::getAppID(*(v2 + 24));
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v21 == AppID;
      }

      v9 = v15;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_26:
        v18 = "error";
        if (v9)
        {
          v18 = "success";
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v18;
        _os_log_debug_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEBUG, "#D Update properties %s", buf, 0xCu);
        v11 = *(v2 + 16);
        v19 = *(v2 + 24);
        if (!v11)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v11 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (!v11)
    {
LABEL_20:
      buf[0] = v11;
      awd::AppContext::operator()();
      if (buf[0])
      {
        _Block_release(buf[0]);
      }

      MEMORY[0x29C264ED0](v20);
      goto LABEL_23;
    }

LABEL_19:
    v11 = _Block_copy(v11);
    goto LABEL_20;
  }

LABEL_23:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296D98260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c161_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver20sendUpdatePropertiesENS0_INS1_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c161_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver20sendUpdatePropertiesENS0_INS1_10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v41 = v1;
  v2 = *(v1 + 72);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    awd::asString();
    v39 = (SBYTE7(v43) & 0x80u) == 0 ? v42 : v42[0];
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v39;
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D Querying metric: %s", &buf, 0xCu);
    if (SBYTE7(v43) < 0)
    {
      operator delete(v42[0]);
    }
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v47 = v4;
  *v48 = v4;
  v45 = v4;
  *__p = v4;
  v43 = v4;
  v44 = v4;
  *v42 = v4;
  AriSdk::ARI_CsiAwdsQueryReq_SDK::ARI_CsiAwdsQueryReq_SDK(v42);
  AppID = awd::AppContext::getAppID(*(v1 + 16));
  v6 = operator new(4uLL);
  *v6 = AppID;
  v7 = __p[0];
  __p[0] = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(v1 + 44);
  v9 = operator new(4uLL);
  *v9 = v8;
  v10 = __p[1];
  __p[1] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(v1 + 36);
  v12 = operator new(4uLL);
  *v12 = v11;
  v13 = v47[1];
  v47[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(4uLL);
  *v14 = 0;
  v15 = v47[0];
  v47[0] = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = operator new(4uLL);
  *v16 = 0;
  v17 = v48[0];
  v48[0] = v16;
  if (v17)
  {
    operator delete(v17);
  }

  v18 = operator new(4uLL);
  *v18 = 0;
  v19 = v48[1];
  v48[1] = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(v2 + 88);
  v22 = *v1;
  v21 = *(v1 + 8);
  *&buf = *v1;
  *(&buf + 1) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
  }

  v23 = *(v1 + 64);
  if (!v23)
  {
    v24 = 0;
    v61 = 0;
    v25 = *(v1 + 16);
    v62 = v25;
    v26 = *(v1 + 24);
    v63 = v26;
    if (!v26)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v24 = _Block_copy(v23);
  v61 = v24;
  v25 = *(v1 + 16);
  v62 = v25;
  v26 = *(v1 + 24);
  v63 = v26;
  if (v26)
  {
LABEL_18:
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_19:
  LODWORD(v64) = AppID;
  *(&v64 + 1) = v2;
  v27 = operator new(0x50uLL);
  v27->__shared_owners_ = 0;
  p_shared_owners = &v27->__shared_owners_;
  v27->__shared_weak_owners_ = 0;
  v27->__vftable = &unk_2A1E0A3D8;
  v27[1].__vftable = v22;
  v61 = 0;
  buf = 0uLL;
  v27[1].__shared_owners_ = v21;
  v27[1].__shared_weak_owners_ = v24;
  v27[2].__vftable = v25;
  v27[2].__shared_owners_ = v26;
  v62 = 0;
  v63 = 0;
  *&v27[2].__shared_weak_owners_ = v64;
  *&v51 = MEMORY[0x29EDCA5F8];
  *(&v51 + 1) = 1174405120;
  *&v52 = ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS2_10AppContextEEERKNS2_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENSC_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v52 + 1) = &__block_descriptor_tmp_22;
  v53 = &v27[1];
  v54 = v27;
  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v56 = 0x40000000;
  v57 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_0;
  v58 = &unk_29EE5B668;
  v59 = &v51;
  v29 = _Block_copy(&aBlock);
  v30 = v54;
  if (!v54 || atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v30->__on_zero_shared)(v30);
  std::__shared_weak_count::__release_weak(v30);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

LABEL_23:
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v31;
  v52 = v31;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v32 = *(v20 + 16);
  aBlock = *(v20 + 8);
  if (!v32)
  {
    v56 = 0;
LABEL_54:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v56 = std::__shared_weak_count::lock(v32);
  if (!v56)
  {
    goto LABEL_54;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v33 = v56;
  if (v56 && !atomic_fetch_add((v56 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  v50 = v29;
  ice::SendMsgBaseProxy::callback();
  if (v50)
  {
    _Block_release(v50);
  }

  MEMORY[0x29C263BF0](&v51);
  v34 = v63;
  if (!v63 || atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v35 = v61;
    if (!v61)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  v35 = v61;
  if (v61)
  {
LABEL_33:
    _Block_release(v35);
  }

LABEL_34:
  if (*(&buf + 1))
  {
    std::__shared_weak_count::__release_weak(*(&buf + 1));
  }

  MEMORY[0x29C263F10](v42);
  std::unique_ptr<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v41);
  v36 = a1;
  if (a1)
  {
    v37 = a1[2];
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
      v36 = a1;
    }

    operator delete(v36);
  }

  v38 = *MEMORY[0x29EDCA608];
}

void sub_296D989E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *aBlock, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS2_10AppContextEEERKNS2_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENSC_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  buf[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = *(v2 + 48);
  v6 = std::__shared_weak_count::lock(v3);
  v23 = v6;
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[3] = v8;
    v21 = v8;
    v20[1] = v8;
    v20[2] = v8;
    v20[0] = v8;
    AriSdk::ARI_CsiAwdsQueryRspCb_SDK::ARI_CsiAwdsQueryRspCb_SDK(v20, a2);
    if (!ice::isARIResponseValid())
    {
      v11 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (!v11)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (AriSdk::ARI_CsiAwdsQueryRspCb_SDK::unpack(v20))
    {
      v9 = 0;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = **(&v21 + 1);
      AppID = awd::AppContext::getAppID(*(v2 + 24));
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v21 == AppID;
      }

      v9 = v15;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_26:
        v18 = "error";
        if (v9)
        {
          v18 = "success";
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v18;
        _os_log_debug_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEBUG, "#D Metric query %s", buf, 0xCu);
        v11 = *(v2 + 16);
        v19 = *(v2 + 24);
        if (!v11)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v11 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (!v11)
    {
LABEL_20:
      buf[0] = v11;
      awd::AppContext::operator()();
      if (buf[0])
      {
        _Block_release(buf[0]);
      }

      MEMORY[0x29C264170](v20);
      goto LABEL_23;
    }

LABEL_19:
    v11 = _Block_copy(v11);
    goto LABEL_20;
  }

LABEL_23:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296D98DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c179_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENS0_INS1_10AppContextEEERKNS1_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c179_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENS0_INS1_10AppContextEEERKNS1_10MetricInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A3D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v45 = v1;
  v2 = *(v1 + 96);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    awd::asString();
    awd::asString();
    v42 = v52;
    if (SBYTE7(v53) < 0)
    {
      v42 = v52[0];
    }

    if (SHIBYTE(v48) >= 0)
    {
      v43 = &v46;
    }

    else
    {
      v43 = v46;
    }

    *buf = 136315394;
    *&buf[4] = v42;
    *&buf[12] = 2080;
    *&buf[14] = v43;
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D Querying metric: %s with trigger: %s", buf, 0x16u);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v46);
    }

    if (SBYTE7(v53) < 0)
    {
      operator delete(v52[0]);
    }
  }

  v59 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  v58 = v4;
  __p = v4;
  v54 = v4;
  v55 = v4;
  *v52 = v4;
  v53 = v4;
  AriSdk::ARI_CsiAwdsQueryReq_SDK::ARI_CsiAwdsQueryReq_SDK(v52);
  AppID = awd::AppContext::getAppID(*(v1 + 16));
  v6 = operator new(4uLL);
  *v6 = AppID;
  v7 = __p;
  *&__p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(v1 + 68);
  v9 = operator new(4uLL);
  *v9 = v8;
  v10 = *(&__p + 1);
  *(&__p + 1) = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(v1 + 72);
  v12 = operator new(4uLL);
  *v12 = v11;
  v13 = v57;
  *&v57 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(v1 + 64);
  v15 = operator new(4uLL);
  *v15 = v14;
  v16 = *(&v57 + 1);
  *(&v57 + 1) = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(v1 + 32);
  v18 = operator new(4uLL);
  *v18 = v17;
  v19 = v58;
  *&v58 = v18;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(v1 + 36);
  v21 = operator new(4uLL);
  *v21 = v20;
  v22 = *(&v58 + 1);
  *(&v58 + 1) = v21;
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(v2 + 88);
  v25 = *v1;
  v24 = *(v1 + 8);
  v46 = *v1;
  v47 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(v1 + 88);
  if (!v26)
  {
    v27 = 0;
    v48 = 0;
    v28 = *(v1 + 16);
    v49 = v28;
    v29 = *(v1 + 24);
    v50 = v29;
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v27 = _Block_copy(v26);
  v48 = v27;
  v28 = *(v1 + 16);
  v49 = v28;
  v29 = *(v1 + 24);
  v50 = v29;
  if (v29)
  {
LABEL_18:
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_19:
  LODWORD(v51) = AppID;
  *(&v51 + 1) = v2;
  v30 = operator new(0x50uLL);
  v30->__shared_owners_ = 0;
  p_shared_owners = &v30->__shared_owners_;
  v30->__shared_weak_owners_ = 0;
  v30->__vftable = &unk_2A1E0A458;
  v30[1].__vftable = v25;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v30[1].__shared_owners_ = v24;
  v30[1].__shared_weak_owners_ = v27;
  v30[2].__vftable = v28;
  v30[2].__shared_owners_ = v29;
  v49 = 0;
  v50 = 0;
  *&v30[2].__shared_weak_owners_ = v51;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 1174405120;
  *&buf[16] = ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS2_10AppContextEEERKNS2_10MetricInfoERKNS2_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENSF_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  *&buf[24] = &__block_descriptor_tmp_24;
  v67 = &v30[1];
  v68 = v30;
  atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v62 = 0x40000000;
  v63 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_0;
  v64 = &unk_29EE5B668;
  v65 = buf;
  v32 = _Block_copy(&aBlock);
  v33 = v68;
  if (!v68 || atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_22:
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

LABEL_23:
  *&v34 = 0xAAAAAAAAAAAAAAAALL;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v34;
  *&buf[16] = v34;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v35 = *(v23 + 16);
  aBlock = *(v23 + 8);
  if (!v35)
  {
    v62 = 0;
LABEL_58:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v62 = std::__shared_weak_count::lock(v35);
  if (!v62)
  {
    goto LABEL_58;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v36 = v62;
  if (v62 && !atomic_fetch_add((v62 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v60 = v32;
  ice::SendMsgBaseProxy::callback();
  if (v60)
  {
    _Block_release(v60);
  }

  MEMORY[0x29C263BF0](buf);
  v37 = v50;
  if (!v50 || atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v38 = v48;
    if (!v48)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v37->__on_zero_shared)(v37);
  std::__shared_weak_count::__release_weak(v37);
  v38 = v48;
  if (v48)
  {
LABEL_33:
    _Block_release(v38);
  }

LABEL_34:
  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  MEMORY[0x29C263F10](v52);
  std::unique_ptr<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v45);
  v39 = a1;
  if (a1)
  {
    v40 = a1[2];
    if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
      v39 = a1;
    }

    operator delete(v39);
  }

  v41 = *MEMORY[0x29EDCA608];
}

void sub_296D995A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *aBlock)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[11];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENSt3__110shared_ptrINS2_10AppContextEEERKNS2_10MetricInfoERKNS2_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_vEENSF_IU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  buf[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = *(v2 + 48);
  v6 = std::__shared_weak_count::lock(v3);
  v23 = v6;
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  if (*v2)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20[3] = v8;
    v21 = v8;
    v20[1] = v8;
    v20[2] = v8;
    v20[0] = v8;
    AriSdk::ARI_CsiAwdsQueryRspCb_SDK::ARI_CsiAwdsQueryRspCb_SDK(v20, a2);
    if (!ice::isARIResponseValid())
    {
      v11 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (!v11)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (AriSdk::ARI_CsiAwdsQueryRspCb_SDK::unpack(v20))
    {
      v9 = 0;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = **(&v21 + 1);
      AppID = awd::AppContext::getAppID(*(v2 + 24));
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v21 == AppID;
      }

      v9 = v15;
      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
LABEL_26:
        v18 = "error";
        if (v9)
        {
          v18 = "success";
        }

        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v18;
        _os_log_debug_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEBUG, "#D Metric query %s", buf, 0xCu);
        v11 = *(v2 + 16);
        v19 = *(v2 + 24);
        if (!v11)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    v11 = *(v2 + 16);
    v16 = *(v2 + 24);
    if (!v11)
    {
LABEL_20:
      buf[0] = v11;
      awd::AppContext::operator()();
      if (buf[0])
      {
        _Block_release(buf[0]);
      }

      MEMORY[0x29C264170](v20);
      goto LABEL_23;
    }

LABEL_19:
    v11 = _Block_copy(v11);
    goto LABEL_20;
  }

LABEL_23:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_25:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296D999A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c199_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENS0_INS1_10AppContextEEERKNS1_10MetricInfoERKNS1_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c199_ZTSNSt3__110shared_ptrIZZNK3awd19ARIAwdCommandDriver19sendQueriableMetricENS0_INS1_10AppContextEEERKNS1_10MetricInfoERKNS1_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<awd::ARIAwdCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = a1[5];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::ARIAwdCommandDriver::init(void)::$_0>(awd::ARIAwdCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::ARIAwdCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<awd::ARIAwdCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEBUG, "#D Init", buf, 2u);
    v44 = v2[2].~__shared_weak_count_0;
    v6 = v2->~__shared_weak_count_0;
    on_zero_shared = v2->__on_zero_shared;
    if (!on_zero_shared)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v4 = v2[2].~__shared_weak_count_0;
    v6 = v2->~__shared_weak_count_0;
    on_zero_shared = v2->__on_zero_shared;
    if (!on_zero_shared)
    {
      goto LABEL_68;
    }
  }

  v7 = std::__shared_weak_count::lock(on_zero_shared);
  v47 = v7;
  if (!v7)
  {
    goto LABEL_68;
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = operator new(0x38uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0A4D8;
  v10[1].__vftable = v6;
  v10[1].__shared_owners_ = v8;
  v10[1].__shared_weak_owners_ = awd::ARIAwdCommandDriver::handleClientStarted_sync;
  v10[2].__vftable = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v49 = 1174405120;
  v50 = ___ZN3ice6detail17wrapEventCallbackIZNS_6Client15setEventHandlerIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJEEEvNS2_5EventENSt3__110shared_ptrIT_EEMT0_FT1_DpT2_EEUlvE_vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENS8_17integral_constantIiLi0EEEOSA__block_invoke;
  v51 = &__block_descriptor_tmp_27;
  v52 = v10 + 1;
  v53 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v55 = 0x40000000;
  v56 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_0;
  v57 = &unk_29EE5B690;
  v58 = buf;
  v12 = _Block_copy(&aBlock);
  v13 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

LABEL_12:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v12)
  {
LABEL_10:
    v14 = _Block_copy(v12);
    goto LABEL_14;
  }

LABEL_13:
  v14 = 0;
LABEL_14:
  *buf = v14;
  ice::Client::regEventHandlerInternal();
  if (*buf)
  {
    _Block_release(*buf);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  std::__shared_weak_count::__release_weak(v8);
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  v15 = v2[2].~__shared_weak_count_0;
  shared_owners = v1->__shared_owners_;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (shared_weak_owners)
  {
    atomic_fetch_add_explicit((shared_weak_owners + 16), 1uLL, memory_order_relaxed);
  }

  v18 = operator new(0x30uLL);
  v18->__shared_owners_ = 0;
  v19 = &v18->__shared_owners_;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v2;
  v18->__vftable = &unk_2A1E0A558;
  v18[1].__shared_owners_ = shared_owners;
  v18[1].__shared_weak_owners_ = shared_weak_owners;
  *buf = MEMORY[0x29EDCA5F8];
  v49 = 1174405120;
  v50 = ___ZN3ice6detail17wrapEventCallbackIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE_vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v51 = &__block_descriptor_tmp_31_2;
  v52 = v18 + 1;
  v53 = v18;
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v55 = 0x40000000;
  v56 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_0;
  v57 = &unk_29EE5B690;
  v58 = buf;
  v20 = _Block_copy(&aBlock);
  v21 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v19, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_26;
    }

LABEL_29:
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (!atomic_fetch_add(v19, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

LABEL_26:
  if (v20)
  {
LABEL_27:
    v22 = _Block_copy(v20);
    goto LABEL_31;
  }

LABEL_30:
  v22 = 0;
LABEL_31:
  *buf = v22;
  ice::Client::regEventHandlerInternal();
  if (*buf)
  {
    _Block_release(*buf);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  v23 = v2[2].~__shared_weak_count_0;
  v25 = v1->__shared_owners_;
  v24 = v1->__shared_weak_owners_;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 16), 1uLL, memory_order_relaxed);
  }

  v26 = operator new(0x30uLL);
  v26->__shared_owners_ = 0;
  v27 = &v26->__shared_owners_;
  v26->__shared_weak_owners_ = 0;
  v26[1].__vftable = v2;
  v26->__vftable = &unk_2A1E0A5D8;
  v26[1].__shared_owners_ = v25;
  v26[1].__shared_weak_owners_ = v24;
  *buf = MEMORY[0x29EDCA5F8];
  v49 = 1174405120;
  v50 = ___ZN3ice6detail17wrapEventCallbackIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE0_vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v51 = &__block_descriptor_tmp_33_0;
  v52 = v26 + 1;
  v53 = v26;
  atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v55 = 0x40000000;
  v56 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_0;
  v57 = &unk_29EE5B690;
  v58 = buf;
  v28 = _Block_copy(&aBlock);
  v29 = v53;
  if (!v53 || atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v27, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_40;
    }

LABEL_43:
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    if (v28)
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  if (!atomic_fetch_add(v27, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_43;
  }

LABEL_40:
  if (v28)
  {
LABEL_41:
    v30 = _Block_copy(v28);
    goto LABEL_45;
  }

LABEL_44:
  v30 = 0;
LABEL_45:
  *buf = v30;
  ice::Client::regEventHandlerInternal();
  if (*buf)
  {
    _Block_release(*buf);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  v31 = v2[2].~__shared_weak_count_0;
  v33 = v2->~__shared_weak_count_0;
  v32 = v2->__on_zero_shared;
  *buf = v33;
  if (!v32)
  {
    goto LABEL_68;
  }

  v34 = std::__shared_weak_count::lock(v32);
  v49 = v34;
  if (!v34)
  {
    goto LABEL_68;
  }

  v35 = v34;
  ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(v31, 3452829696, v33, v34, awd::ARIAwdCommandDriver::handleMetricSubmissionInd_sync, 0);
  if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = v2[2].~__shared_weak_count_0;
  v38 = v2->~__shared_weak_count_0;
  v37 = v2->__on_zero_shared;
  aBlock = v38;
  if (!v37 || (v39 = std::__shared_weak_count::lock(v37), (v55 = v39) == 0))
  {
LABEL_68:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v40 = v39;
  ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(v36, 3452796928, v38, v39, awd::ARIAwdCommandDriver::handleTriggerSubmissionInd_sync, 0);
  if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  ice::Client::setIndShouldWake(v2[2].~__shared_weak_count_0);
  ice::Client::setIndShouldWake(v2[2].~__shared_weak_count_0);
  ice::Client::start(v2[2].~__shared_weak_count_0);
  if (__p)
  {
    v41 = __p->__shared_weak_owners_;
    if (v41)
    {
      std::__shared_weak_count::__release_weak(v41);
    }

    operator delete(__p);
  }

  v42 = a1;
  if (a1)
  {
    v43 = a1[2];
    if (v43)
    {
      if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
        v42 = a1;
      }
    }

    operator delete(v42);
  }
}

void sub_296D9A438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, void *aBlock, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a22);
  std::unique_ptr<awd::ARIAwdCommandDriver::init(void)::$_0,std::default_delete<awd::ARIAwdCommandDriver::init(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::ARIAwdCommandDriver::init(void)::$_0,std::default_delete<awd::ARIAwdCommandDriver::init(void)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(uint64_t a1, uint64_t a2, std::__shared_weak_count_vtbl *a3, std::__shared_weak_count *a4, uint64_t a5, std::__shared_weak_count_vtbl *a6)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&a4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a4->__on_zero_shared)(a4);
      std::__shared_weak_count::__release_weak(a4);
    }

    atomic_fetch_add_explicit(&a4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = operator new(0x38uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0A658;
  v10[1].__vftable = a3;
  v10[1].__shared_owners_ = a4;
  v10[1].__shared_weak_owners_ = a5;
  v10[2].__vftable = a6;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN3ice6detail12wrapCallbackIZNS_6Client13regIndicationIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJPKhjEEEvjNSt3__110shared_ptrIT_EEMT0_FT1_DpT2_EEUlS8_jE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENS9_17integral_constantIiLi2EEEOSB__block_invoke;
  v14[3] = &__block_descriptor_tmp_35_0;
  v14[4] = &v10[1];
  v15 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_0;
  aBlock[3] = &unk_29EE5B668;
  aBlock[4] = v14;
  v12 = _Block_copy(aBlock);
  v13 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_9:
  v14[0] = v12;
  ice::Client::regIndicationInternal();
  if (v14[0])
  {
    _Block_release(v14[0]);
  }

  if (a4)
  {
    std::__shared_weak_count::__release_weak(a4);
  }
}

void sub_296D9A7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3ice6detail17wrapEventCallbackIZNS_6Client15setEventHandlerIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJEEEvNS2_5EventENSt3__110shared_ptrIT_EEMT0_FT1_DpT2_EEUlvE_vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENS8_17integral_constantIiLi0EEEOSA__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        if (*v1)
        {
          v5 = v1[2];
          v6 = v1[3];
          v7 = (*v1 + (v6 >> 1));
          if (v6)
          {
            v5 = *(*v7 + v5);
          }

          v5(v7);
        }

        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c153_ZTSNSt3__110shared_ptrIZN3ice6Client15setEventHandlerIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJEEEvNS2_5EventENS0_IT_EEMT0_FT1_DpT2_EEUlvE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c153_ZTSNSt3__110shared_ptrIZN3ice6Client15setEventHandlerIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJEEEvNS2_5EventENS0_IT_EEMT0_FT1_DpT2_EEUlvE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZN3ice6Client15setEventHandlerIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJEEEvNS2_5EventENS_10shared_ptrIT_EEMT0_FT1_DpT2_EEUlvE_NS_9allocatorISH_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A4D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZN3ice6Client15setEventHandlerIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJEEEvNS2_5EventENS_10shared_ptrIT_EEMT0_FT1_DpT2_EEUlvE_NS_9allocatorISH_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail17wrapEventCallbackIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE_vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      v3 = *v1;
      v4 = std::__shared_weak_count::lock(v2);
      if (v4)
      {
        v5 = v4;
        if (v1[1])
        {
          awd::AwdCommandDriver::broadcastState_sync();
        }

        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c78_ZTSNSt3__110shared_ptrIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c78_ZTSNSt3__110shared_ptrIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#1}>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail17wrapEventCallbackIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE0_vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      v3 = *v1;
      v4 = std::__shared_weak_count::lock(v2);
      if (v4)
      {
        v5 = v4;
        if (v1[1])
        {
          awd::AwdCommandDriver::broadcastState_sync();
        }

        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE0_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZZN3awd19ARIAwdCommandDriver4initEvENK3__0clEvEUlvE0_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2},std::allocator<awd::ARIAwdCommandDriver::init(void)::$_0::operator() const(void)::{lambda(void)#2}>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZNS_6Client13regIndicationIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJPKhjEEEvjNSt3__110shared_ptrIT_EEMT0_FT1_DpT2_EEUlS8_jE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENS9_17integral_constantIiLi2EEEOSB__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = a3;
        v9 = v7;
        if (*v3)
        {
          v10 = v3[2];
          v11 = v3[3];
          v12 = (*v3 + (v11 >> 1));
          if (v11)
          {
            v10 = *(*v12 + v10);
          }

          v10(v12, a2, v8);
        }

        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN3ice6Client13regIndicationIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJPKhjEEEvjNS0_IT_EEMT0_FT1_DpT2_EEUlS8_jE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c148_ZTSNSt3__110shared_ptrIZN3ice6Client13regIndicationIN3awd16AwdCommandDriverENS4_19ARIAwdCommandDriverEvJPKhjEEEvjNS0_IT_EEMT0_FT1_DpT2_EEUlS8_jE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<awd::AwdCommandDriver>,void (awd::ARIAwdCommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<awd::AwdCommandDriver>,void (awd::ARIAwdCommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<awd::AwdCommandDriver>,void (awd::ARIAwdCommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void ice::Client::regIndication<awd::AwdCommandDriver,awd::ARIAwdCommandDriver,void,unsigned char const*,unsigned int>(unsigned int,std::shared_ptr<awd::AwdCommandDriver>,void (awd::ARIAwdCommandDriver::*)(unsigned char const*,unsigned int))::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

atomic_ullong *std::shared_ptr<awd::ARIAwdCommandDriver>::shared_ptr[abi:ne200100]<awd::ARIAwdCommandDriver,std::shared_ptr<awd::ARIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::ARIAwdCommandDriver>(awd::ARIAwdCommandDriver*)::{lambda(awd::ARIAwdCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0A6A8;
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

void sub_296D9B164(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<awd::ARIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::ARIAwdCommandDriver>(awd::ARIAwdCommandDriver*)::{lambda(awd::ARIAwdCommandDriver*)#1}::operator() const(awd::ARIAwdCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<awd::ARIAwdCommandDriver *,std::shared_ptr<awd::ARIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::ARIAwdCommandDriver>(awd::ARIAwdCommandDriver*)::{lambda(awd::ARIAwdCommandDriver *)#1},std::allocator<awd::ARIAwdCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<awd::ARIAwdCommandDriver *,std::shared_ptr<awd::ARIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::ARIAwdCommandDriver>(awd::ARIAwdCommandDriver*)::{lambda(awd::ARIAwdCommandDriver *)#1},std::allocator<awd::ARIAwdCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19ARIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19ARIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19ARIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_19ARIAwdCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<awd::ARIAwdCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::ARIAwdCommandDriver>(awd::ARIAwdCommandDriver*)::{lambda(awd::ARIAwdCommandDriver*)#1}::operator() const(awd::ARIAwdCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void ___ZN3ice6detail12wrapCallbackIZNK3awd19ARIAwdCommandDriver21sendGlobalSwitch_syncEbE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = v2[2];
      v6 = std::__shared_weak_count::lock(v3);
      v15 = v6;
      if (v6)
      {
        v7 = v6;
        if (*v2)
        {
          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v12[3] = v8;
          v13 = v8;
          v12[1] = v8;
          v12[2] = v8;
          v12[0] = v8;
          AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::ARI_CsiAwdsGlobalSwitchRspCb_SDK(v12, a2);
          if (ice::isARIResponseValid())
          {
            v9 = "disabled";
            if (!AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::unpack(v12) && *v13)
            {
              v9 = "enabled";
            }

            v10 = *(v4 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v17 = v9;
              _os_log_debug_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEBUG, "#D Global switch %s", buf, 0xCu);
            }
          }

          MEMORY[0x29C264EA0](v12);
        }

        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_296D9B3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  MEMORY[0x29C264EA0](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void sub_296D9B418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c84_ZTSNSt3__110shared_ptrIZNK3awd19ARIAwdCommandDriver21sendGlobalSwitch_syncEbE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c84_ZTSNSt3__110shared_ptrIZNK3awd19ARIAwdCommandDriver21sendGlobalSwitch_syncEbE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendGlobalSwitch_sync(BOOL)::$_0,std::allocator<awd::ARIAwdCommandDriver::sendGlobalSwitch_sync(BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::ARIAwdCommandDriver::sendGlobalSwitch_sync(BOOL)::$_0,std::allocator<awd::ARIAwdCommandDriver::sendGlobalSwitch_sync(BOOL)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

double ARICommandDriverFactory::create_default_global@<D0>(void *a1@<X8>)
{
  v3 = operator new(0xA8uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A1E0A868;
  CommandDriverFactory::CommandDriverFactory((v3 + 3));
  v3[3] = &unk_2A1E0A778;
  result = 0.0;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  v3[20] = 0;
  *a1 = v5;
  a1[1] = v3;
  return result;
}

void sub_296D9B5BC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ARICommandDriverFactory::ARICommandDriverFactory(ARICommandDriverFactory *this)
{
  CommandDriverFactory::CommandDriverFactory(this);
  *v1 = &unk_2A1E0A778;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
}

{
  CommandDriverFactory::CommandDriverFactory(this);
  *v1 = &unk_2A1E0A778;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
}

void ARICommandDriverFactory::createRadioCommandDriver(ARICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 13);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = dispatch_workloop_create("radio.wl");
  v7 = *(this + 13);
  *(this + 13) = v4;
  if (v7)
  {
    dispatch_release(v7);
    v4 = *(this + 13);
  }

  if (!v4)
  {
    *(this + 13) = 0;
    goto LABEL_17;
  }

  dispatch_retain(v4);
  v8 = *(this + 13);
  *(this + 13) = v4;
  if (v8)
  {
    dispatch_release(v8);
    v4 = *(this + 13);
    if (!v4)
    {
LABEL_17:
      if ((atomic_load_explicit(&qword_2A18CA850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA850))
      {
        qword_2A18CA858 = 0;
        qword_2A18CA860 = 0;
        __cxa_guard_release(&qword_2A18CA850);
      }

      if (_MergedGlobals_0 == -1)
      {
        v9 = qword_2A18CA860;
        if (!os_log_type_enabled(qword_2A18CA860, OS_LOG_TYPE_DEFAULT))
        {
LABEL_21:
          *a2 = 0;
          a2[1] = 0;
          return;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
        v9 = qword_2A18CA860;
        if (!os_log_type_enabled(qword_2A18CA860, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_296D7D000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create radio workloop!", buf, 2u);
      goto LABEL_21;
    }
  }

LABEL_2:
  object = v4;
  dispatch_retain(v4);
  v5 = *(this + 1);
  v6 = *(this + 2);
  v10[0] = v5;
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::ARICommandDriver::create(&object, v10, buf);
  *a2 = *buf;
  memset(buf, 0, sizeof(buf));
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_296D9B85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  dispatch_release(v2);
  _Unwind_Resume(a1);
}

void ARICommandDriverFactory::getRadioWorkloop(ARICommandDriverFactory *this@<X0>, NSObject **a2@<X8>)
{
  v4 = *(this + 13);
  if (v4)
  {
    *a2 = v4;

LABEL_4:
    dispatch_retain(v4);
    return;
  }

  v4 = dispatch_workloop_create("radio.wl");
  v5 = *(this + 13);
  *(this + 13) = v4;
  if (v5)
  {
    dispatch_release(v5);
    v4 = *(this + 13);
  }

  *a2 = v4;
  if (v4)
  {

    goto LABEL_4;
  }
}

void ARICommandDriverFactory::weakRadioCommandDriver(ARICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 11);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 11))
    {
      ARICommandDriverFactory::createRadioCommandDriver(this, &v9);
      v6 = v9;
      v9 = 0uLL;
      v7 = *(this + 12);
      *(this + 88) = v6;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *(&v9 + 1);
      if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 11);
    a2 = v4;
  }

  v5 = *(this + 12);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void ARICommandDriverFactory::createRFSCommandDriver(ARICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::ARIRFSCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void ARICommandDriverFactory::weakRFSCommandDriver(ARICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 14))
    {
      v6 = *(this + 2);
      v10[0] = *(this + 1);
      v10[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      radio::ARIRFSCommandDriver::create(v10, &v11);
      v7 = v11;
      v11 = 0uLL;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = v7;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v7 = v9;
      }

      v8 = *(this + 15);
      *(this + 7) = v7;
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 14);
    a2 = v4;
  }

  v5 = *(this + 15);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_296D9BC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

void ARICommandDriverFactory::createCoexCommandDriver(ARICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coex::ARICommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void ARICommandDriverFactory::createAntennaCommandDriver(uint64_t a1@<X0>, NSObject **a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::ARICommandDriver::create(&object, v8, &v10);
  *a3 = v10;
  v10 = 0uLL;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_296D9BDE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void ARICommandDriverFactory::createAwdCommandDriver(ARICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::ARIAwdCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void ARICommandDriverFactory::weakDataCommandDriver(ARICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 16);
  if (!v4)
  {
    std::mutex::lock((this + 24));
    if (!*(this + 16))
    {
      v6 = *(this + 17);
      *(this + 17) = 0;
      if (v6)
      {
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }

    std::mutex::unlock((this + 24));
    v4 = *(this + 16);
  }

  v5 = *(this + 17);
  *a2 = v4;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void ARICommandDriverFactory::createCPMSCommandDriver(ARICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  cpms::ARICommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void ARICommandDriverFactory::createTraceCommandDriver(ARICommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = capabilities::radio::vendor(this);
  if (v3 == 2)
  {
    v5 = operator new(0x78uLL);
    trace::ARICommandDriver::ARICommandDriver(v5);
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<trace::ARICommandDriver>::shared_ptr[abi:ne200100]<trace::ARICommandDriver,std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver*)#1},0>(&v7, v5);
    (*(*v7 + 216))(v7);
    goto LABEL_5;
  }

  if (v3 == 3)
  {
    v4 = operator new(0xF0uLL);
    trace::ARICommandDriverINT::ARICommandDriverINT(v4);
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<trace::ARICommandDriverINT>::shared_ptr[abi:ne200100]<trace::ARICommandDriverINT,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1},0>(&v7, v4);
    (*(*v7 + 216))(v7);
LABEL_5:
    *a2 = v7;
    return;
  }

  if ((atomic_load_explicit(&qword_2A18CA850, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A18CA850))
    {
      qword_2A18CA858 = 0;
      qword_2A18CA860 = 0;
      __cxa_guard_release(&qword_2A18CA850);
    }
  }

  if (_MergedGlobals_0 == -1)
  {
    v6 = qword_2A18CA860;
    if (os_log_type_enabled(qword_2A18CA860, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_296D7D000, v6, OS_LOG_TYPE_ERROR, "Unsupported or unknown radio vendor!", &v7, 2u);
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
    v6 = qword_2A18CA860;
    if (os_log_type_enabled(qword_2A18CA860, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }
  }
}

void sub_296D9C20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void sub_296D9C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

void sub_296D9C244(_Unwind_Exception *a1)
{
  v3 = v2;
  operator delete(v3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ARICommandDriverFactory::createDesenseCommandDriver(ARICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  desense::ARICommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

double ARICommandDriverFactory::createCellularCertCommandDriver@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x50uLL);
  ARICellularCertCommandDriver::ARICellularCertCommandDriver(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ARICellularCertCommandDriver>::shared_ptr[abi:ne200100]<ARICellularCertCommandDriver,std::shared_ptr<ARICellularCertCommandDriver> ctu::SharedSynchronizable<CellularCertCommandDriver>::make_shared_ptr<ARICellularCertCommandDriver>(ARICellularCertCommandDriver*)::{lambda(ARICellularCertCommandDriver*)#1},0>(&v5, v3);
  (*(*v5 + 40))(v5);
  result = *&v5;
  *a1 = v5;
  return result;
}

void ARICommandDriverFactory::createWorkoutCommandDriver(ARICommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ARIWorkoutCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void ___ZL16sGetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "ari.driver.factory");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::__shared_ptr_emplace<ARICommandDriverFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0A868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ARICommandDriverFactory>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E0A778;
  v2 = *(a1 + 160);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 144);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 120);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    *(a1 + 24) = MEMORY[0x29EDC9138] + 16;
    std::mutex::~mutex((a1 + 48));
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x29EDC9138] + 16;
    std::mutex::~mutex((a1 + 48));
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

double trace::ARICommandDriver::create@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x78uLL);
  trace::ARICommandDriver::ARICommandDriver(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<trace::ARICommandDriver>::shared_ptr[abi:ne200100]<trace::ARICommandDriver,std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver*)#1},0>(&v5, v3);
  (*(*v5 + 216))(v5);
  result = *&v5;
  *a1 = v5;
  return result;
}

trace::ARICommandDriver *trace::ARICommandDriver::ARICommandDriver(trace::ARICommandDriver *this)
{
  *this = &unk_2A1E0AC98;
  v2 = (this + 8);
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", "trace.drv");
  ctu::SharedLoggable<trace::CommandDriver,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v2, "trace.drv", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v6);
  *this = &unk_2A1E0A8B8;
  v3 = *(this + 3);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  *(this + 56) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  return this;
}

void sub_296D9C8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  ctu::SharedLoggable<CellularCertCommandDriver,ctu::OsLogLogger>::~SharedLoggable(v10);
  _Unwind_Resume(a1);
}

void sub_296D9C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void trace::ARICommandDriver::~ARICommandDriver(trace::ARICommandDriver *this)
{
  *this = &unk_2A1E0A8B8;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 13);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 7);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  MEMORY[0x29C263A00](v2);
  v11 = *(this + 4);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  trace::ARICommandDriver::~ARICommandDriver(this);

  operator delete(v1);
}

void trace::ARICommandDriver::init(trace::ARICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5trace16ARICommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_9;
  v1[4] = this;
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t ___ZN5trace16ARICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  *(v1 + 112) = capabilities::radio::supportsBBTraceV2(v3);
  v4 = *(v1 + 48);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN5trace16ARICommandDriver4initEv_block_invoke_1;
  v12[3] = &__block_descriptor_tmp_2;
  v12[4] = v1;
  *buf = v12;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v4, 0, buf);
  v5 = *(v1 + 48);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN5trace16ARICommandDriver4initEv_block_invoke_2;
  v11[3] = &__block_descriptor_tmp_3;
  v11[4] = v1;
  *buf = v11;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v5, 1, buf);
  v6 = *(v1 + 48);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN5trace16ARICommandDriver4initEv_block_invoke_4;
  v10[3] = &__block_descriptor_tmp_6;
  v10[4] = v1;
  *buf = v10;
  ice::Client::setEventHandler<void({block_pointer})(dispatch::group_session)>(v6, 2, buf);
  v7 = *(v1 + 48);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN5trace16ARICommandDriver4initEv_block_invoke_7;
  v9[3] = &__block_descriptor_tmp_8;
  v9[4] = v1;
  *buf = v9;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v7, 3, buf);
  result = ice::Client::start(*(v1 + 48));
  *(v1 + 113) = 1;
  return result;
}

void ___ZN5trace16ARICommandDriver4initEv_block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D ARI Started event received.", v8, 2u);
    v3 = v1[8];
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = v1[8];
    if (!v3)
    {
      return;
    }
  }

  if (v1[9])
  {
    v4 = _Block_copy(v3);
    v5 = v4;
    v6 = v1[9];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
    v8[3] = &__block_descriptor_tmp_57;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
LABEL_9:
        if (v5)
        {
          _Block_release(v5);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
        goto LABEL_9;
      }
    }

    _Block_release(v7);
    goto LABEL_9;
  }
}

void ___ZN5trace16ARICommandDriver4initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D ARI Stopped event received.", v2, 2u);
  }
}

void ___ZN5trace16ARICommandDriver4initEv_block_invoke_4(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Enter event received", v9, 2u);
  }

  v5 = v3[10];
  if (v5 && v3[11])
  {
    v6 = *a2;
    if (v6 && (dispatch_retain(v6), dispatch_group_enter(v6), (v5 = v3[10]) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = _Block_copy(v5);
    }

    v8 = v3[11];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEclIJS1_EEEvDpT__block_invoke;
    v9[3] = &__block_descriptor_tmp_60;
    if (v7)
    {
      aBlock = _Block_copy(v7);
      group = v6;
      if (!v6)
      {
LABEL_15:
        dispatch_async(v8, v9);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v7)
        {
          _Block_release(v7);
        }

        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      group = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    dispatch_retain(v6);
    if (group)
    {
      dispatch_group_enter(group);
    }

    goto LABEL_15;
  }
}

void ___ZN5trace16ARICommandDriver4initEv_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Exit event received", v8, 2u);
  }

  v3 = v1[12];
  if (v3 && v1[13])
  {
    v4 = _Block_copy(v3);
    v5 = v4;
    v6 = v1[13];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
    v8[3] = &__block_descriptor_tmp_57;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
LABEL_10:
        if (v5)
        {
          _Block_release(v5);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
        goto LABEL_10;
      }
    }

    _Block_release(v7);
    goto LABEL_10;
  }
}

void trace::ARICommandDriver::pauseTraceTraffic(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
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

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_10_1;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[3] = v3;
  __p = v3;
  v26[1] = v3;
  v26[2] = v3;
  v26[0] = v3;
  AriSdk::ARI_CsiTraceProfileSelectReq_SDK::ARI_CsiTraceProfileSelectReq_SDK(v26);
  v4 = operator new(4uLL);
  *v4 = 0;
  v5 = __p;
  *&__p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = *(&__p + 1);
  *(&__p + 1) = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(v2 + 48);
  v10 = a1[5];
  v9 = a1[6];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a1[7];
  if (v11)
  {
    v12 = _Block_copy(v11);
    v13 = a1[8];
    v22 = v12;
    object = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = 0;
  v13 = a1[8];
  v22 = 0;
  object = v13;
  if (v13)
  {
LABEL_9:
    dispatch_retain(v13);
  }

LABEL_10:
  v14 = operator new(0x40uLL);
  v14->__shared_owners_ = 0;
  p_shared_owners = &v14->__shared_owners_;
  v14->__shared_weak_owners_ = 0;
  v14->__vftable = &unk_2A1E0AED0;
  v14[1].__vftable = v10;
  v14[1].__shared_owners_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    v14[1].__shared_weak_owners_ = 0;
    v14[2].__vftable = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14[1].__shared_weak_owners_ = _Block_copy(v12);
  v14[2].__vftable = v13;
  if (v13)
  {
LABEL_14:
    dispatch_retain(v13);
  }

LABEL_15:
  v14[2].__shared_owners_ = v2;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 1174405120;
  v30 = ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v31 = &__block_descriptor_tmp_66_0;
  v32 = v14 + 1;
  v33 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v28;
  v16 = _Block_copy(aBlock);
  v17 = v33;
  if (!v33 || atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_18:
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_19:
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v18;
  v24[1] = v18;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v19 = *(v8 + 16);
  v28 = *(v8 + 8);
  if (!v19)
  {
    v29 = 0;
LABEL_40:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = std::__shared_weak_count::lock(v19);
  if (!v29)
  {
    goto LABEL_40;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v20 = v29;
  if (v29 && !atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  aBlock[0] = v16;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v24);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return MEMORY[0x29C264FD0](v26);
}

void sub_296D9D654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v4 = *(v2 - 120);
  if (v4)
  {
    _Block_release(v4);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_EN3__0D1Ev(va);
  MEMORY[0x29C264FD0](va2);
  _Unwind_Resume(a1);
}

void sub_296D9D688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
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
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 168);
  if (v2)
  {
    _Block_release(v2);
  }

  _ZZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_EN3__0D1Ev(va);
  MEMORY[0x29C264FD0](va1);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_EN3__0D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
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

void trace::ARICommandDriver::enableSleepProfile(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_11_0;
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

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

uint64_t ___ZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[3] = v3;
  __p = v3;
  v29[1] = v3;
  v29[2] = v3;
  v29[0] = v3;
  AriSdk::ARI_CsiTraceProfileSelectReq_SDK::ARI_CsiTraceProfileSelectReq_SDK(v29);
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  *&__p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 0;
  v7 = *(&__p + 1);
  *(&__p + 1) = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v2[2];
  if (!v8 || (v9 = v2[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = v2[6];
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = a1[5];
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
    v13 = v2[6];
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v14 = a1[5];
    if (v14)
    {
LABEL_9:
      v15 = _Block_copy(v14);
      v16 = a1[6];
      v25 = v15;
      object = v16;
      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v15 = 0;
  v16 = a1[6];
  v25 = 0;
  object = v16;
  if (v16)
  {
LABEL_10:
    dispatch_retain(v16);
  }

LABEL_11:
  v17 = operator new(0x40uLL);
  v17->__shared_owners_ = 0;
  p_shared_owners = &v17->__shared_owners_;
  v17->__shared_weak_owners_ = 0;
  v17->__vftable = &unk_2A1E0AF50;
  v17[1].__vftable = v9;
  v17[1].__shared_owners_ = v11;
  if (!v15)
  {
    v17[1].__shared_weak_owners_ = 0;
    v17[2].__vftable = v16;
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17[1].__shared_weak_owners_ = _Block_copy(v15);
  v17[2].__vftable = v16;
  if (v16)
  {
LABEL_13:
    dispatch_retain(v16);
  }

LABEL_14:
  v17[2].__shared_owners_ = v2;
  v31 = MEMORY[0x29EDCA5F8];
  v32 = 1174405120;
  v33 = ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__1vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v34 = &__block_descriptor_tmp_72_0;
  v35 = v17 + 1;
  v36 = v17;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v31;
  v19 = _Block_copy(aBlock);
  v20 = v36;
  if (!v36 || atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_18:
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v21;
  v27[1] = v21;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v22 = *(v13 + 16);
  v31 = *(v13 + 8);
  if (!v22)
  {
    v32 = 0;
LABEL_39:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v32 = std::__shared_weak_count::lock(v22);
  if (!v32)
  {
    goto LABEL_39;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v23 = v32;
  if (v32 && !atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  aBlock[0] = v19;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v27);
  if (object)
  {
    dispatch_release(object);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  std::__shared_weak_count::__release_weak(v11);
  return MEMORY[0x29C264FD0](v29);
}

void sub_296D9DD50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v5 = *(v3 - 120);
  if (v5)
  {
    _Block_release(v5);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__1D1Ev(va);
  std::__shared_weak_count::__release_weak(v2);
  MEMORY[0x29C264FD0](va2);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__1D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(uint64_t a1)
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

void trace::ARICommandDriver::enableActiveProfile(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
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

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_14_1;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[3] = v3;
  __p = v3;
  v26[1] = v3;
  v26[2] = v3;
  v26[0] = v3;
  AriSdk::ARI_CsiTraceProfileSelectReq_SDK::ARI_CsiTraceProfileSelectReq_SDK(v26);
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  *&__p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = *(&__p + 1);
  *(&__p + 1) = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(v2 + 48);
  v10 = a1[5];
  v9 = a1[6];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a1[7];
  if (v11)
  {
    v12 = _Block_copy(v11);
    v13 = a1[8];
    v22 = v12;
    object = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = 0;
  v13 = a1[8];
  v22 = 0;
  object = v13;
  if (v13)
  {
LABEL_9:
    dispatch_retain(v13);
  }

LABEL_10:
  v14 = operator new(0x40uLL);
  v14->__shared_owners_ = 0;
  p_shared_owners = &v14->__shared_owners_;
  v14->__shared_weak_owners_ = 0;
  v14->__vftable = &unk_2A1E0AFD0;
  v14[1].__vftable = v10;
  v14[1].__shared_owners_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    v14[1].__shared_weak_owners_ = 0;
    v14[2].__vftable = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14[1].__shared_weak_owners_ = _Block_copy(v12);
  v14[2].__vftable = v13;
  if (v13)
  {
LABEL_14:
    dispatch_retain(v13);
  }

LABEL_15:
  v14[2].__shared_owners_ = v2;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 1174405120;
  v30 = ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__2vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v31 = &__block_descriptor_tmp_76;
  v32 = v14 + 1;
  v33 = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v28;
  v16 = _Block_copy(aBlock);
  v17 = v33;
  if (!v33 || atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_18:
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_19:
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v18;
  v24[1] = v18;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v19 = *(v8 + 16);
  v28 = *(v8 + 8);
  if (!v19)
  {
    v29 = 0;
LABEL_40:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = std::__shared_weak_count::lock(v19);
  if (!v29)
  {
    goto LABEL_40;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v20 = v29;
  if (v29 && !atomic_fetch_add((v29 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  aBlock[0] = v16;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v24);
  if (object)
  {
    dispatch_release(object);
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return MEMORY[0x29C264FD0](v26);
}

void sub_296D9E3EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v4 = *(v2 - 120);
  if (v4)
  {
    _Block_release(v4);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__2D1Ev(va);
  MEMORY[0x29C264FD0](va2);
  _Unwind_Resume(a1);
}

void sub_296D9E420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
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
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 168);
  if (v2)
  {
    _Block_release(v2);
  }

  _ZZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__2D1Ev(va);
  MEMORY[0x29C264FD0](va1);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__2D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void trace::ARICommandDriver::getTraceMode(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
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

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE_block_invoke;
  v13[3] = &__block_descriptor_tmp_15_0;
  v13[4] = a1;
  v13[5] = v6;
  v14 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a2 + 8);
  aBlock = v11;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v5, v13);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

uint64_t ___ZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiXsioGetReq_SDK::ARI_CsiXsioGetReq_SDK(v24);
  v4 = *(v2 + 48);
  v6 = a1[5];
  v5 = a1[6];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = _Block_copy(v7);
    v9 = a1[8];
    v20 = v8;
    object = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v9 = a1[8];
  v20 = 0;
  object = v9;
  if (v9)
  {
LABEL_5:
    dispatch_retain(v9);
  }

LABEL_6:
  v10 = operator new(0x40uLL);
  v11 = v10;
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0B050;
  v10[1].__vftable = v6;
  v13 = &v10[1].__vftable;
  v10[1].__shared_owners_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10[1].__shared_weak_owners_ = v2;
  if (!v8)
  {
    v10[2].__vftable = 0;
    v10[2].__shared_owners_ = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10[2].__vftable = _Block_copy(v8);
  v11[2].__shared_owners_ = v9;
  if (v9)
  {
LABEL_10:
    dispatch_retain(v9);
  }

LABEL_11:
  v25 = MEMORY[0x29EDCA5F8];
  v26 = 1174405120;
  v27 = ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_E3__3vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v28 = &__block_descriptor_tmp_80;
  v29 = v13;
  v30 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v25;
  v14 = _Block_copy(aBlock);
  v15 = v30;
  if (!v30 || atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_14:
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_15:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v16;
  v22[1] = v16;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(v4 + 16);
  v25 = *(v4 + 8);
  if (!v17)
  {
    v26 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v26 = std::__shared_weak_count::lock(v17);
  if (!v26)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v26;
  if (v26 && !atomic_fetch_add((v26 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return MEMORY[0x29C263E50](v24);
}

void sub_296D9E9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v4 = *(v2 - 120);
  if (v4)
  {
    _Block_release(v4);
  }

  MEMORY[0x29C263BF0](va1);
  _ZZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_EN3__3D1Ev(va);
  MEMORY[0x29C263E50](va2);
  _Unwind_Resume(a1);
}

void sub_296D9E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  if (v30)
  {
    _Block_release(v30);
  }

  _ZZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_EN3__3D1Ev(&a10);
  MEMORY[0x29C263E50](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_EN3__3D1Ev(void *a1)
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

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE56c90_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE56c90_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void trace::ARICommandDriver::setTraceMode(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
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

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5trace16ARICommandDriver12setTraceModeENS_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_18_1;
  v19 = a2;
  v15[4] = a1;
  v15[5] = v7;
  v16 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = *a3;
  if (*a3)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a3 + 8);
  aBlock = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5trace16ARICommandDriver12setTraceModeENS_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[2] = v3;
  v27[3] = v3;
  v27[0] = v3;
  v27[1] = v3;
  AriSdk::ARI_CsiXsioSetReq_SDK::ARI_CsiXsioSetReq_SDK(v27);
  if (*(a1 + 72) != 2)
  {
    v6 = operator new(4uLL);
    *v6 = 0;
    v5 = __p;
    __p = v6;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = operator new(4uLL);
  *v4 = 2;
  v5 = __p;
  __p = v4;
  if (v5)
  {
LABEL_5:
    operator delete(v5);
  }

LABEL_6:
  v7 = *(v2 + 48);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = _Block_copy(v10);
    v12 = *(a1 + 64);
    v21 = v11;
    object = v12;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  v21 = 0;
  object = v12;
  if (v12)
  {
LABEL_10:
    dispatch_retain(v12);
  }

LABEL_11:
  v23 = v2;
  v24 = *(a1 + 72);
  v13 = operator new(0x48uLL);
  v13->__shared_owners_ = 0;
  p_shared_owners = &v13->__shared_owners_;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E0B100;
  v13[1].__vftable = v9;
  v13[1].__shared_owners_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    v13[1].__shared_weak_owners_ = 0;
    v13[2].__vftable = v12;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13[1].__shared_weak_owners_ = _Block_copy(v11);
  v13[2].__vftable = v12;
  if (v12)
  {
LABEL_15:
    dispatch_retain(v12);
  }

LABEL_16:
  v13[2].__shared_owners_ = v23;
  LODWORD(v13[2].__shared_weak_owners_) = v24;
  v29 = MEMORY[0x29EDCA5F8];
  v30 = 1174405120;
  v31 = ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver12setTraceModeENS2_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_E3__4vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v32 = &__block_descriptor_tmp_85;
  v33 = v13 + 1;
  v34 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v29;
  v15 = _Block_copy(aBlock);
  v16 = v34;
  if (!v34 || atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_19:
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_20:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[0] = v17;
  v25[1] = v17;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *(v7 + 16);
  v29 = *(v7 + 8);
  if (!v18)
  {
    v30 = 0;
LABEL_41:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v30 = std::__shared_weak_count::lock(v18);
  if (!v30)
  {
    goto LABEL_41;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v30;
  if (v30 && !atomic_fetch_add((v30 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  aBlock[0] = v15;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v25);
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return MEMORY[0x29C263E70](v27);
}

void *_ZZZN5trace16ARICommandDriver12setTraceModeENS_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_EN3__4D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

uint64_t trace::ARICommandDriver::profileMaskV1_sync(uint64_t a1, const void **a2, const void **a3, std::__shared_weak_count **a4, NSObject **a5)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v47 = v10;
  v48 = v10;
  *__p = v10;
  v46 = v10;
  v44[2] = v10;
  v44[3] = v10;
  v44[0] = v10;
  v44[1] = v10;
  AriSdk::ARI_CsiTraceProfileInitReq_SDK::ARI_CsiTraceProfileInitReq_SDK(v44);
  v12 = *a2;
  v11 = a2[1];
  v13 = operator new(4uLL);
  *v13 = v11 - v12;
  v14 = __p[0];
  __p[0] = v13;
  if (v14)
  {
    operator delete(v14);
  }

  AriSdk::TlvArray<char,960ul>::operator=(&__p[1], a2);
  v16 = *a3;
  v15 = a3[1];
  v17 = operator new(4uLL);
  *v17 = v15 - v16;
  v18 = v47[0];
  v47[0] = v17;
  if (v18)
  {
    operator delete(v18);
  }

  AriSdk::TlvArray<char,960ul>::operator=(&v47[1], a3);
  v19 = *(a1 + 48);
  v20 = a4[1];
  v40[0] = *a4;
  v40[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *a5;
  if (*a5)
  {
    v21 = _Block_copy(v21);
  }

  v22 = a5[1];
  object[0] = v21;
  object[1] = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v24 = *a2;
  v23 = a2[1];
  v25 = v23 - *a2;
  if (v23 != *a2)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v26 = operator new(v23 - *a2);
    v27 = &v26[v25];
    memcpy(v26, v24, v25);
    v28 = *a3;
    v29 = a3[1] - *a3;
    if (v29)
    {
      goto LABEL_14;
    }

LABEL_17:
    v31 = 0;
    v30 = 0;
    goto LABEL_18;
  }

  v27 = 0;
  v26 = 0;
  v28 = *a3;
  v29 = a3[1] - *a3;
  if (!v29)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((v29 & 0x8000000000000000) != 0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v30 = operator new(v29);
  v31 = &v30[v29];
  memcpy(v30, v28, v29);
LABEL_18:
  v32 = operator new(0x70uLL);
  *&v32->__shared_owners_ = 0u;
  p_shared_owners = &v32->__shared_owners_;
  v32[1].std::__shared_count = *v40;
  v32->__vftable = &unk_2A1E0B180;
  *&v32[1].__shared_weak_owners_ = *object;
  v32[2].__shared_owners_ = a1;
  v32[2].__shared_weak_owners_ = v26;
  v32[3].__vftable = v27;
  v32[3].__shared_owners_ = v27;
  v32[3].__shared_weak_owners_ = v30;
  v32[4].__vftable = v31;
  v32[4].__shared_owners_ = v31;
  v49 = MEMORY[0x29EDCA5F8];
  v50 = 1174405120;
  v51 = ___ZN3ice6detail12wrapCallbackIZN5trace16ARICommandDriver18profileMaskV1_syncENSt3__16vectorIcNS4_9allocatorIcEEEES8_NS4_8weak_ptrINS2_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENSC_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  v52 = &__block_descriptor_tmp_92;
  v53 = v32 + 1;
  v54 = v32;
  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v49;
  v34 = _Block_copy(aBlock);
  v35 = v54;
  if (!v54 || atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_21:
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_22:
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[0] = v36;
  v42[1] = v36;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v37 = *(v19 + 16);
  v49 = *(v19 + 8);
  if (!v37)
  {
    v50 = 0;
LABEL_33:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v50 = std::__shared_weak_count::lock(v37);
  if (!v50)
  {
    goto LABEL_33;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v38 = v50;
  if (v50 && !atomic_fetch_add((v50 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  aBlock[0] = v34;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v42);
  return MEMORY[0x29C264B80](v44);
}

void sub_296D9F61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    _Block_release(v29);
  }

  MEMORY[0x29C263BF0](&a21);
  trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264B80](&a27);
  _Unwind_Resume(a1);
}

void sub_296D9F650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v28 - 168);
  if (v27)
  {
    _Block_release(v27);
  }

  trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(&a9);
  MEMORY[0x29C264B80](&a27);
  _Unwind_Resume(a1);
}

char **AriSdk::TlvArray<char,960ul>::operator=(char **a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((v5 - v4) < 0x3C1)
  {
    if (a1 != a2)
    {
      std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(a1, v4, v5, v5 - v4);
    }
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v16, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v9);
        v14 = v17 >= 0 ? v16 : v16[0];
        v15 = *(a2 + 8) - *a2;
        *__p = 136316418;
        *&__p[4] = "ari";
        v19 = 2080;
        v20 = v14;
        v21 = 1024;
        v22 = 349;
        v23 = 2048;
        v24 = a1;
        v25 = 2048;
        v26 = v15;
        v27 = 2048;
        v28 = 960;
        _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%d) max(%d)", __p, 0x3Au);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v9);
      if (v21 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%d) max(%d)", v10, v11, 349, a1, *(a2 + 8) - *a2, 960);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296D9F93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void trace::ARICommandDriver::profileMaskV2_sync(uint64_t a1, const void **a2, __int16 a3, std::__shared_weak_count_vtbl **a4, uint64_t a5)
{
  v91 = *MEMORY[0x29EDCA608];
  v5 = a2[1];
  if (v5 != *a2)
  {
    v6 = a3;
    v7 = 0;
    v8 = 0;
    v58 = vcvtpd_u64_f64((v5 - *a2) / 3840.0) - 1;
    v61 = v5 - *a2;
    v9 = v61;
    while (1)
    {
      v10 = v9 - 3840;
      if (v9 >= 0xF00)
      {
        v11 = 3840;
      }

      else
      {
        v11 = v9;
      }

      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v75 = v12;
      v76 = v12;
      *__p = v12;
      *v74 = v12;
      v71 = v12;
      v72 = v12;
      *v69 = v12;
      v70 = v12;
      AriSdk::ARI_CsiTraceProfilePacketsReq_SDK::ARI_CsiTraceProfilePacketsReq_SDK(v69);
      v13 = operator new(2uLL);
      *v13 = v6;
      v14 = __p[0];
      __p[0] = v13;
      if (v14)
      {
        operator delete(v14);
      }

      v15 = operator new(2uLL);
      *v15 = v8;
      v16 = __p[1];
      __p[1] = v15;
      if (v16)
      {
        operator delete(v16);
      }

      v17 = operator new(4uLL);
      *v17 = v61;
      v18 = v74[0];
      v74[0] = v17;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = operator new(4uLL);
      *v19 = v7;
      v20 = v74[1];
      v74[1] = v19;
      if (v20)
      {
        operator delete(v20);
      }

      v21 = operator new(4uLL);
      *v21 = v11;
      v22 = v75[0];
      v75[0] = v21;
      if (v22)
      {
        operator delete(v22);
      }

      v23 = a2[1];
      v63 = v10;
      v64 = v7;
      v24 = *a2 + v7;
      v25 = v23 - v24;
      if (v23 == v24)
      {
        break;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v26 = operator new(v23 - v24);
      v27 = &v26[v25];
      v34 = memmove(v26, v24, v25);
      if (v25 < 0xF01)
      {
        goto LABEL_29;
      }

      LogLevels = Ari::GetLogLevels(v34);
      v29 = a1;
      if ((LogLevels & 8) == 0)
      {
        goto LABEL_25;
      }

      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(&v77, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v31);
        v54 = SHIBYTE(v79) >= 0 ? &v77 : v77;
        *buf = 136316418;
        *&buf[4] = "ari";
        *&buf[12] = 2080;
        *&buf[14] = v54;
        *&buf[22] = 1024;
        v85 = 360;
        v86 = 2048;
        *v87 = &v75[1];
        *&v87[8] = 2048;
        v88 = v25;
        LOWORD(v89) = 2048;
        *(&v89 + 2) = 3840;
        _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", buf, 0x3Au);
        if (SHIBYTE(v79) < 0)
        {
          operator delete(v77);
        }
      }

      AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v31);
      v33 = buf[23] >= 0 ? buf : *buf;
      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v32, v33, 360, &v75[1], v25, 3840);
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_25:
        if (!v26)
        {
          goto LABEL_32;
        }

LABEL_26:
        operator delete(v26);
        goto LABEL_32;
      }

      operator delete(*buf);
      if (v26)
      {
        goto LABEL_26;
      }

LABEL_32:
      v35 = *(v29 + 48);
      v36 = *a4;
      v37 = a4[1];
      *buf = *a4;
      *&buf[8] = v37;
      if (v37)
      {
        atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
      }

      *&buf[16] = v29;
      LOWORD(v85) = v6;
      v88 = 0;
      *&v89 = 0;
      *&v87[2] = 0;
      v39 = *a2;
      v38 = a2[1];
      v40 = v38 - *a2;
      if (v38 == *a2)
      {
        v42 = 0;
        v41 = 0;
        v43 = *a5;
        if (!*a5)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v41 = operator new(v38 - *a2);
        v42 = &v41[v40];
        *&v87[2] = v41;
        *&v89 = &v41[v40];
        memcpy(v41, v39, v40);
        v88 = &v41[v40];
        v43 = *a5;
        if (!*a5)
        {
LABEL_59:
          v44 = 0;
          v45 = *(a5 + 8);
          *(&v89 + 1) = 0;
          v90 = v45;
          if (!v45)
          {
            goto LABEL_39;
          }

LABEL_38:
          dispatch_retain(v45);
          goto LABEL_39;
        }
      }

      v44 = _Block_copy(v43);
      v45 = *(a5 + 8);
      *(&v89 + 1) = v44;
      v90 = v45;
      if (v45)
      {
        goto LABEL_38;
      }

LABEL_39:
      v46 = operator new(0x60uLL);
      v46->__shared_owners_ = 0;
      p_shared_owners = &v46->__shared_owners_;
      v46->__shared_weak_owners_ = 0;
      v46->__vftable = &unk_2A1E0B200;
      v46[1].__vftable = v36;
      *buf = 0;
      *&buf[8] = 0;
      v48 = *&buf[16];
      v46[1].__shared_owners_ = v37;
      v46[1].__shared_weak_owners_ = v48;
      LOWORD(v46[2].__vftable) = v85;
      v46[2].__shared_owners_ = v41;
      v46[2].__shared_weak_owners_ = v42;
      v88 = 0;
      *&v89 = 0;
      *&v87[2] = 0;
      v46[3].__vftable = v42;
      v46[3].__shared_owners_ = v44;
      v46[3].__shared_weak_owners_ = v45;
      *(&v89 + 1) = 0;
      v90 = 0;
      v77 = MEMORY[0x29EDCA5F8];
      v78 = 1174405120;
      v79 = ___ZN3ice6detail12wrapCallbackIZN5trace16ARICommandDriver18profileMaskV2_syncENSt3__16vectorIcNS4_9allocatorIcEEEEtNS4_8weak_ptrINS2_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENSC_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
      v80 = &__block_descriptor_tmp_97;
      v81 = v46 + 1;
      v82 = v46;
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
      aBlock[3] = &unk_29EE5B7C0;
      aBlock[4] = &v77;
      v49 = _Block_copy(aBlock);
      v50 = v82;
      if (v82 && !atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
        if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_43;
        }

LABEL_42:
        (v46->__on_zero_shared)(v46);
        std::__shared_weak_count::__release_weak(v46);
        goto LABEL_43;
      }

      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_42;
      }

LABEL_43:
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v67[0] = v51;
      v67[1] = v51;
      v68 = 0xAAAAAAAAAAAAAAAALL;
      v52 = *(v35 + 16);
      v77 = *(v35 + 8);
      if (!v52)
      {
        v78 = 0;
LABEL_74:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v78 = std::__shared_weak_count::lock(v52);
      if (!v78)
      {
        goto LABEL_74;
      }

      v6 = a3;
      ice::SendMsgBaseProxy::SendMsgBaseProxy();
      v53 = v78;
      if (v78 && !atomic_fetch_add((v78 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v53->__on_zero_shared)(v53);
        std::__shared_weak_count::__release_weak(v53);
      }

      aBlock[0] = v49;
      ice::SendMsgBaseProxy::callback();
      if (aBlock[0])
      {
        _Block_release(aBlock[0]);
      }

      MEMORY[0x29C263BF0](v67);
      if (v90)
      {
        dispatch_release(v90);
      }

      if (*(&v89 + 1))
      {
        _Block_release(*(&v89 + 1));
      }

      if (*&v87[2])
      {
        operator delete(*&v87[2]);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_weak(*&buf[8]);
      }

      MEMORY[0x29C2650B0](v69);
      ++v8;
      v7 = v64 + 3840;
      v9 = v63;
      if (v8 > v58)
      {
        goto LABEL_71;
      }
    }

    v26 = 0;
    v27 = 0;
LABEL_29:
    if (v75[1])
    {
      *&v76 = v75[1];
      operator delete(v75[1]);
    }

    v75[1] = v26;
    *&v76 = v27;
    *(&v76 + 1) = v27;
    v29 = a1;
    goto LABEL_32;
  }

  v55 = *(a1 + 40);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    *v69 = 0;
    _os_log_error_impl(&dword_296D7D000, v55, OS_LOG_TYPE_ERROR, "Nothing have to be sent!", v69, 2u);
    v57 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_71:
    v56 = *MEMORY[0x29EDCA608];
  }
}

void sub_296DA0144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (v50)
  {
    operator delete(v50);
    MEMORY[0x29C2650B0](&a33);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C2650B0](&a33);
  _Unwind_Resume(a1);
}

void *trace::ARICommandDriver::profileMaskV2_sync(std::vector<char>,unsigned short,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void trace::ARICommandDriver::setTraceMasks(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v26 = v6;
  v27 = a3;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = a2[1];
    v12 = a2[2];
    v14 = v12 - v13;
    if (v12 != v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
    v13 = a2[1];
    v12 = a2[2];
    v14 = v12 - v13;
    if (v12 != v13)
    {
LABEL_5:
      if ((v14 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v15 = operator new(v14);
      memcpy(v15, v13, v14);
      v28 = v15;
      v17 = a2[4];
      v16 = a2[5];
      v18 = v16 - v17;
      if (v16 != v17)
      {
        goto LABEL_7;
      }

LABEL_11:
      v19 = 0;
      goto LABEL_12;
    }
  }

  v28 = 0;
  v17 = a2[4];
  v16 = a2[5];
  v18 = v16 - v17;
  if (v16 == v17)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v18 & 0x8000000000000000) != 0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v19 = operator new(v18);
  memcpy(v19, v17, v18);
LABEL_12:
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 1174405120;
  v29[2] = ___ZN5trace16ARICommandDriver13setTraceMasksERNS_13TraceMaskInfoEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v29[3] = &__block_descriptor_tmp_20_0;
  v29[4] = a1;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v12 != v13)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v20 = operator new(v14);
    v21 = &v20[v14];
    v30 = v20;
    v32 = &v20[v14];
    memcpy(v20, v28, v14);
    v31 = v21;
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  if (v16 != v17)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v22 = operator new(v18);
    v23 = &v22[v18];
    __p = v22;
    v35 = &v22[v18];
    memcpy(v22, v19, v18);
    v34 = v23;
  }

  v24 = *v27;
  if (*v27)
  {
    v24 = _Block_copy(v24);
  }

  v25 = *(v27 + 8);
  aBlock = v24;
  object = v25;
  if (v25)
  {
    dispatch_retain(v25);
  }

  v38 = v26;
  v39 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v7, v29);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v19)
  {
    operator delete(v19);
  }

  if (v28)
  {
    operator delete(v28);
  }

  std::__shared_weak_count::__release_weak(v11);
}

void sub_296DA0584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a18;
    if (!a18)
    {
LABEL_3:
      if (!v23)
      {
LABEL_8:
        if (a12)
        {
          operator delete(a12);
        }

        std::__shared_weak_count::__release_weak(v22);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v23);
      goto LABEL_8;
    }
  }

  else
  {
    v25 = a18;
    if (!a18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_296DA05F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CFTypeRef cf, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_begin_catch(a1);
  v36 = *(v34 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *(v35 - 144) = 0;
    _os_log_error_impl(&dword_296D7D000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not downcastable to TraceMaskInfo", (v35 - 144), 2u);
    if (!*a11)
    {
      goto LABEL_17;
    }
  }

  else if (!*a11)
  {
    goto LABEL_17;
  }

  if (*(a11 + 8))
  {
    *(v35 - 152) = 0xAAAAAAAAAAAAAAAALL;
    std::string::basic_string[abi:ne200100]<0>(&__p, "Invalid parameter not downcastable to TraceMaskInfo");
    CreateError();
    if (a34 < 0)
    {
      operator delete(__p);
    }

    ctu::cf::CFSharedRef<__CFError>::CFSharedRef(&cf, *(v35 - 152));
    if (*a11)
    {
      v37 = _Block_copy(*a11);
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a11 + 8);
    *(v35 - 144) = MEMORY[0x29EDCA5F8];
    *(v35 - 136) = 1174405120;
    *(v35 - 128) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    *(v35 - 120) = &__block_descriptor_tmp_64_0;
    if (v37)
    {
      v39 = _Block_copy(v37);
    }

    else
    {
      v39 = 0;
    }

    *(v35 - 112) = v39;
    ctu::cf::CFSharedRef<__CFError>::CFSharedRef((v35 - 104), cf);
    dispatch_async(v38, (v35 - 144));
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v35 - 104));
    v40 = *(v35 - 112);
    if (v40)
    {
      _Block_release(v40);
    }

    if (v37)
    {
      _Block_release(v37);
    }

    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&cf);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v35 - 152));
  }

LABEL_17:
  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x296DA052CLL);
  }

  JUMPOUT(0x296DA0524);
}

void sub_296DA0788(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x296DA05D4);
}

void *ctu::cf::CFSharedRef<__CFError>::CFSharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void ___ZN5trace16ARICommandDriver13setTraceMasksERNS_13TraceMaskInfoEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_22;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v5 - v4;
  if ((v5 - v4) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 <= 0x16)
  {
    HIBYTE(v70) = v5 - v4;
    v7 = __dst;
    if (v5 == v4)
    {
      goto LABEL_11;
    }

LABEL_10:
    memmove(v7, v4, v5 - v4);
    goto LABEL_11;
  }

  if ((v6 | 7) == 0x17)
  {
    v8 = 25;
  }

  else
  {
    v8 = (v6 | 7) + 1;
  }

  v7 = operator new(v8);
  __dst[1] = (v5 - v4);
  v70 = v8 | 0x8000000000000000;
  __dst[0] = v7;
  if (v5 != v4)
  {
    goto LABEL_10;
  }

LABEL_11:
  *(v7 + v6) = 0;
  if (v70 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = v11 - v10;
  if ((v11 - v10) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 <= 0x16)
  {
    HIBYTE(v68) = v11 - v10;
    v13 = v67;
    if (v11 == v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v12 | 7) == 0x17)
  {
    v31 = 25;
  }

  else
  {
    v31 = (v12 | 7) + 1;
  }

  v13 = operator new(v31);
  v67[1] = (v11 - v10);
  v68 = v31 | 0x8000000000000000;
  v67[0] = v13;
  if (v11 != v10)
  {
LABEL_17:
    memmove(v13, v10, v11 - v10);
  }

LABEL_18:
  *(v13 + v12) = 0;
  v14 = v67;
  if (v68 < 0)
  {
    v14 = v67[0];
  }

  *buf = 134218754;
  *&buf[4] = v6;
  *&buf[12] = 2080;
  *&buf[14] = v9;
  *&buf[22] = 2048;
  v72 = (v11 - v10);
  LOWORD(v73) = 2080;
  *(&v73 + 2) = v14;
  _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting trace masks\nActive[%zu]: %s\nSleep[%zu]: %s", buf, 0x2Au);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
    if (SHIBYTE(v70) < 0)
    {
      goto LABEL_69;
    }

LABEL_22:
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = v15 - v16;
    if (v15 == v16)
    {
      goto LABEL_70;
    }

    goto LABEL_23;
  }

  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_69:
  operator delete(__dst[0]);
  v16 = *(a1 + 40);
  v38 = *(a1 + 48);
  v17 = v38 - v16;
  if (v38 == v16)
  {
LABEL_70:
    v39 = *(v2 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296D7D000, v39, OS_LOG_TYPE_ERROR, "Cannot set trace mask of size zero", buf, 2u);
      if (!*(a1 + 88))
      {
        goto LABEL_91;
      }
    }

    else if (!*(a1 + 88))
    {
      goto LABEL_91;
    }

    if (!*(a1 + 96))
    {
      goto LABEL_91;
    }

    v40 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], 2, 0);
    v41 = v40;
    if (v40)
    {
      CFRetain(v40);
    }

    v42 = *(a1 + 88);
    if (v42)
    {
      v43 = _Block_copy(v42);
    }

    else
    {
      v43 = 0;
    }

    v44 = *(a1 + 96);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 1174405120;
    *&buf[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    v72 = &__block_descriptor_tmp_64_0;
    if (v43)
    {
      *&v73 = _Block_copy(v43);
      *(&v73 + 1) = v41;
      if (!v41)
      {
        goto LABEL_83;
      }
    }

    else
    {
      *&v73 = 0;
      *(&v73 + 1) = v41;
      if (!v41)
      {
LABEL_83:
        dispatch_async(v44, buf);
        if (*(&v73 + 1))
        {
          CFRelease(*(&v73 + 1));
        }

        if (v73)
        {
          _Block_release(v73);
        }

        if (v43)
        {
          _Block_release(v43);
        }

        if (v41)
        {
          CFRelease(v41);
          CFRelease(v41);
        }

        goto LABEL_91;
      }
    }

    CFRetain(v41);
    goto LABEL_83;
  }

LABEL_23:
  v19 = *(a1 + 64);
  v18 = *(a1 + 72);
  v20 = v18 - v19;
  if (v18 == v19)
  {
    goto LABEL_70;
  }

  if (*(v2 + 112) == 1)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v21 = operator new(v17);
    v64 = v21;
    v66 = &v21[v17];
    memcpy(v21, v16, v17);
    v65 = &v21[v17];
    v22 = *(a1 + 112);
    v63[0] = *(a1 + 104);
    v63[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
    }

    v62[0] = 0;
    v62[1] = 0;
    trace::ARICommandDriver::profileMaskV2_sync(v2, &v64, 1, v63, v62);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    v65 = v21;
    operator delete(v21);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v24 = *(a1 + 64);
    v23 = *(a1 + 72);
    v25 = v23 - v24;
    if (v23 == v24)
    {
      v26 = 0;
      v27 = *(a1 + 112);
      v57 = *(a1 + 104);
      v58 = v27;
      if (v27)
      {
LABEL_33:
        atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v26 = operator new(v23 - v24);
      v59 = v26;
      v61 = &v26[v25];
      memcpy(v26, v24, v25);
      v60 = &v26[v25];
      v27 = *(a1 + 112);
      v57 = *(a1 + 104);
      v58 = v27;
      if (v27)
      {
        goto LABEL_33;
      }
    }

    v28 = *(a1 + 88);
    if (v28)
    {
      v29 = _Block_copy(v28);
      v30 = *(a1 + 96);
      v55 = v29;
      v56 = v30;
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v29 = 0;
      v30 = *(a1 + 96);
      v55 = 0;
      v56 = v30;
      if (!v30)
      {
LABEL_37:
        trace::ARICommandDriver::profileMaskV2_sync(v2, &v59, 0, &v57, &v55);
        if (v30)
        {
          dispatch_release(v30);
        }

        if (v29)
        {
          _Block_release(v29);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        if (!v26)
        {
          goto LABEL_91;
        }

LABEL_67:
        operator delete(v26);
        goto LABEL_91;
      }
    }

    dispatch_retain(v30);
    goto LABEL_37;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v52 = operator new(v17);
  v54 = &v52[v17];
  memcpy(v52, v16, v17);
  v53 = &v52[v17];
  v50 = 0;
  v51 = 0;
  __p = 0;
  if ((v20 & 0x8000000000000000) != 0)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v32 = operator new(v20);
  v33 = &v32[v20];
  __p = v32;
  v51 = &v32[v20];
  memcpy(v32, v19, v20);
  v50 = v33;
  v34 = *(a1 + 112);
  v48[0] = *(a1 + 104);
  v48[1] = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    v36 = _Block_copy(v35);
    v37 = *(a1 + 96);
    v46 = v36;
    v47 = v37;
    if (!v37)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v36 = 0;
  v37 = *(a1 + 96);
  v46 = 0;
  v47 = v37;
  if (v37)
  {
LABEL_56:
    dispatch_retain(v37);
  }

LABEL_57:
  trace::ARICommandDriver::profileMaskV1_sync(v2, &v52, &__p, v48, &v46);
  if (v37)
  {
    dispatch_release(v37);
  }

  if (v36)
  {
    _Block_release(v36);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  v26 = v52;
  if (v52)
  {
    v53 = v52;
    goto LABEL_67;
  }

LABEL_91:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_296DA0E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<std::__wrap_iter<char const*>,0>(_BYTE *__dst, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 <= 0x16)
  {
    __dst[23] = v3;
    v6 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v3 | 7) == 0x17)
  {
    v7 = 25;
  }

  else
  {
    v7 = (v3 | 7) + 1;
  }

  v8 = a2;
  v9 = operator new(v7);
  a2 = v8;
  v6 = v9;
  *(__dst + 1) = v3;
  *(__dst + 2) = v7 | 0x8000000000000000;
  *__dst = v9;
  if (a3 != a2)
  {
LABEL_9:
    memmove(v6, a2, v3);
  }

LABEL_10:
  *(v6 + v3) = 0;
  return __dst;
}

void __copy_helper_block_e8_40c39_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE64c39_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE88c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE104c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE(void *a1, void *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v5 = a2[5];
  v4 = a2[6];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    a1[5] = v7;
    a1[6] = v7;
    v8 = &v7[v6];
    a1[7] = &v7[v6];
    memcpy(v7, v5, v6);
    a1[6] = v8;
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  v10 = a2[8];
  v9 = a2[9];
  v11 = v9 - v10;
  if (v9 != v10)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = operator new(v9 - v10);
    a1[8] = v12;
    a1[9] = v12;
    v13 = &v12[v11];
    a1[10] = &v12[v11];
    memcpy(v12, v10, v11);
    a1[9] = v13;
  }

  v14 = a2[11];
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  v15 = a2[12];
  a1[11] = v14;
  a1[12] = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v16 = a2[14];
  a1[13] = a2[13];
  a1[14] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_296DA1134(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE64c39_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE88c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE104c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[6] = v6;

    operator delete(v6);
  }
}

void trace::ARICommandDriver::setTraceParams(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
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

  v13 = *(a2 + 8);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN5trace16ARICommandDriver14setTraceParamsERNS_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_23_0;
  v21 = v13;
  v20 = *(a2 + 12);
  v16[4] = a1;
  v16[5] = v7;
  v17 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = *a3;
  if (*a3)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a3 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v16);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5trace16ARICommandDriver14setTraceParamsERNS_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(int32x2_t *a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v36 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v3;
  *v35 = v3;
  v33[2] = v3;
  v33[3] = v3;
  v33[0] = v3;
  v33[1] = v3;
  AriSdk::ARI_CsiTraceModeInitReq_SDK::ARI_CsiTraceModeInitReq_SDK(v33);
  v4 = operator new(4uLL);
  *v4 = a1[10].u8[0];
  v5 = __p[0];
  __p[0] = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[10].u8[1];
  v7 = operator new(4uLL);
  *v7 = v6;
  v8 = __p[1];
  __p[1] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = operator new(4uLL);
  *v9 = a1[9].i32[0];
  v10 = v35[0];
  v35[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(4uLL);
  *v11 = a1[9].i32[1];
  v12 = v35[1];
  v35[1] = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(4uLL);
  *v13 = 0;
  v14 = v36;
  v36 = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(*&v2 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    _os_log_impl(&dword_296D7D000, v15, OS_LOG_TYPE_DEFAULT, "#I Setting trace timeout of %u", buf, 8u);
  }

  v16 = *(*&v2 + 48);
  v18 = a1[5];
  v17 = a1[6];
  *buf = v18;
  v45 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a1[7];
  if (v19)
  {
    v20 = _Block_copy(v19);
    v21 = a1[8];
    v46 = v20;
    v47 = v21;
    if (!v21)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v20 = 0;
  v21 = a1[8];
  v46 = 0;
  v47 = v21;
  if (v21)
  {
LABEL_17:
    dispatch_retain(v21);
  }

LABEL_18:
  *v48 = v2;
  *&v48[8] = a1[10].i16[0];
  *&v48[12] = vrev64_s32(a1[9]);
  v22 = operator new(0x50uLL);
  v22->__shared_owners_ = 0;
  p_shared_owners = &v22->__shared_owners_;
  v22->__shared_weak_owners_ = 0;
  v22->__vftable = &unk_2A1E0B280;
  v22[1].__vftable = v18;
  v22[1].__shared_owners_ = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v20)
  {
    v22[1].__shared_weak_owners_ = 0;
    v22[2].__vftable = v21;
    if (!v21)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v22[1].__shared_weak_owners_ = _Block_copy(v20);
  v22[2].__vftable = v21;
  if (v21)
  {
LABEL_22:
    dispatch_retain(v21);
  }

LABEL_23:
  *&v22[2].__shared_owners_ = *v48;
  LODWORD(v22[3].__vftable) = *&v48[16];
  v37 = MEMORY[0x29EDCA5F8];
  v38 = 1174405120;
  v39 = ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver14setTraceParamsERNS2_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__7vEENS6_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v40 = &__block_descriptor_tmp_101;
  v41 = v22 + 1;
  v42 = v22;
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_1;
  aBlock[3] = &unk_29EE5B7C0;
  aBlock[4] = &v37;
  v24 = _Block_copy(aBlock);
  v25 = v42;
  if (!v42 || atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_26:
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_27:
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[0] = v26;
  v31[1] = v26;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v27 = *(v16 + 16);
  v37 = *(v16 + 8);
  if (!v27)
  {
    v38 = 0;
LABEL_48:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v38 = std::__shared_weak_count::lock(v27);
  if (!v38)
  {
    goto LABEL_48;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v28 = v38;
  if (v38 && !atomic_fetch_add((v38 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  aBlock[0] = v24;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v31);
  if (v47)
  {
    dispatch_release(v47);
  }

  if (v46)
  {
    _Block_release(v46);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  result = MEMORY[0x29C264550](v33);
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296DA1804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *_ZZZN5trace16ARICommandDriver14setTraceParamsERNS_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_EN3__7D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void trace::ARICommandDriver::setDriverStartedAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace16ARICommandDriver22setDriverStartedActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_24_0;
  v8[4] = a1;
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

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_105;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace16ARICommandDriver22setDriverStartedActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 72);
  *(v3 + 72) = v5;
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

void trace::ARICommandDriver::setLPMEnterAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace16ARICommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_25_0;
  v8[4] = a1;
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

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_105;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace16ARICommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 88);
  *(v3 + 88) = v5;
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

void trace::ARICommandDriver::setLPMExitAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace16ARICommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_28_0;
  v8[4] = a1;
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

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_105;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace16ARICommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 104);
  *(v3 + 104) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void trace::ARICommandDriver::setETBMasks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
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

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN5trace16ARICommandDriver11setETBMasksENSt3__16vectorIcNS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v16[3] = &__block_descriptor_tmp_30_2;
  v16[4] = a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v12 = *a2;
  v13 = *(a2 + 8) - *a2;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v13);
    v19 = __p + v13;
    memcpy(__p, v12, v13);
    v18 = __p + v13;
  }

  v20 = v7;
  v21 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *a3;
  if (*a3)
  {
    v14 = _Block_copy(v14);
  }

  v15 = *(a3 + 8);
  aBlock = v14;
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v16);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v11);
}

void sub_296DA2128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void ___ZN5trace16ARICommandDriver11setETBMasksENSt3__16vectorIcNS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

  v4 = a1[5];
  v5 = a1[6];
  v6 = v5 - v4;
  if ((v5 - v4) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 <= 0x16)
  {
    HIBYTE(v36) = v5 - v4;
    p_dst = &__dst;
    if (v5 == v4)
    {
      goto LABEL_11;
    }

LABEL_10:
    memmove(p_dst, v4, v5 - v4);
    goto LABEL_11;
  }

  if ((v6 | 7) == 0x17)
  {
    v8 = 25;
  }

  else
  {
    v8 = (v6 | 7) + 1;
  }

  p_dst = operator new(v8);
  v35 = v5 - v4;
  v36 = v8 | 0x8000000000000000;
  __dst = p_dst;
  if (v5 != v4)
  {
    goto LABEL_10;
  }

LABEL_11:
  *(p_dst + v6) = 0;
  v9 = &__dst;
  if (v36 < 0)
  {
    v9 = __dst;
  }

  *buf = 134218242;
  v41 = v5 - v4;
  v42 = 2080;
  v43 = v9;
  _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Setting ETB [%zu]: %s", buf, 0x16u);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_14:
    if (*(v2 + 112) == 1)
    {
      goto LABEL_15;
    }

LABEL_34:
    if (!a1[10] || !a1[11])
    {
      goto LABEL_55;
    }

    v25 = operator new(0x30uLL);
    strcpy(v25, "ETB configuration works on only bb trace v2!");
    CreateError();
    v19 = a1[10];
    if (v19)
    {
      v20 = _Block_copy(v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = a1[11];
    __dst = MEMORY[0x29EDCA5F8];
    v35 = 1174405120;
    v36 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
    v37 = &__block_descriptor_tmp_64_0;
    if (v20)
    {
      v22 = _Block_copy(v20);
      v23 = cf;
      aBlock = v22;
      v39 = cf;
      if (!cf)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v23 = cf;
      aBlock = 0;
      v39 = cf;
      if (!cf)
      {
LABEL_46:
        dispatch_async(v21, &__dst);
        if (v39)
        {
          CFRelease(v39);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v20)
        {
          _Block_release(v20);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v18 = v25;
        goto LABEL_30;
      }
    }

    CFRetain(v23);
    goto LABEL_46;
  }

  operator delete(__dst);
  if (*(v2 + 112) != 1)
  {
    goto LABEL_34;
  }

LABEL_15:
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = a1[5];
  v10 = a1[6];
  v12 = v10 - v11;
  if (v10 == v11)
  {
    v13 = 0;
    v14 = a1[9];
    v29 = a1[8];
    v30 = v14;
    if (v14)
    {
LABEL_18:
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = operator new(v10 - v11);
    v31 = v13;
    v33 = &v13[v12];
    memcpy(v13, v11, v12);
    v32 = &v13[v12];
    v14 = a1[9];
    v29 = a1[8];
    v30 = v14;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  v15 = a1[10];
  if (v15)
  {
    v16 = _Block_copy(v15);
    v17 = a1[11];
    v27 = v16;
    v28 = v17;
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = 0;
  v17 = a1[11];
  v27 = 0;
  v28 = v17;
  if (v17)
  {
LABEL_21:
    dispatch_retain(v17);
  }

LABEL_22:
  trace::ARICommandDriver::profileMaskV2_sync(v2, &v31, 2, &v29, &v27);
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v13)
  {
    v18 = v13;
LABEL_30:
    operator delete(v18);
  }

LABEL_55:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_296DA2500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE64c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE80c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  v5 = a2[5];
  v4 = a2[6];
  v6 = v4 - v5;
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v4 - v5);
    a1[5] = v7;
    a1[6] = v7;
    v8 = &v7[v6];
    a1[7] = &v7[v6];
    memcpy(v7, v5, v6);
    a1[6] = v8;
  }

  v9 = a2[9];
  a1[8] = a2[8];
  a1[9] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = a2[10];
  if (v10)
  {
    v10 = _Block_copy(v10);
  }

  v11 = a2[11];
  a1[10] = v10;
  a1[11] = v11;
  if (v11)
  {

    dispatch_retain(v11);
  }
}

void sub_296DA265C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__16vectorIcNS_9allocatorIcEEEE64c46_ZTSNSt3__18weak_ptrIN5trace13CommandDriverEEE80c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;

    operator delete(v5);
  }
}

void trace::ARICommandDriver::start(trace::ARICommandDriver *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN5trace16ARICommandDriver5startEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_31;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_105;
  block[4] = this + 8;
  block[5] = &v4;
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

uint64_t ___ZN5trace16ARICommandDriver5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = ice::Client::start(*(v1 + 48));
  *(v1 + 113) = 1;
  return result;
}

void trace::ARICommandDriver::stop(trace::ARICommandDriver *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5trace16ARICommandDriver4stopEN8dispatch5groupE_block_invoke;
  v6[3] = &__block_descriptor_tmp_32_0;
  v6[4] = this;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v5 = a2->gr_name;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(this + 1, v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (gr_name)
  {
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
  }
}

void ___ZN5trace16ARICommandDriver4stopEN8dispatch5groupE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  v3 = *(a1 + 48);
  object.gr_name = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ice::Client::stop(v2, &object);
  if (object.gr_name)
  {
    dispatch_release(object.gr_name);
  }

  *(v1 + 113) = 0;
}

void sub_296DA293C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

uint64_t trace::ARICommandDriver::isStarted(trace::ARICommandDriver *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -86;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5trace16ARICommandDriver9isStartedEv_block_invoke;
  v5[3] = &unk_29EE5B798;
  v5[4] = &v6;
  v5[5] = this;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_105;
  block[4] = this + 8;
  block[5] = &v10;
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

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

const char *trace::ARICommandDriver::toString(trace::ARICommandDriver *this, unsigned int a2)
{
  if (a2 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE5B800[a2];
  }
}

void *ctu::SharedLoggable<trace::CommandDriver,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t qos_class)
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v6 = dispatch_queue_create(a2, v5);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    a1[3] = 0;
    dispatch_release(v7);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C2639F0](a1 + 4, v9);
  MEMORY[0x29C263A00](v9);
  return a1;
}

char *std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v6;
    if (2 * v6 <= a4)
    {
      v10 = a4;
    }

    if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = operator new(v11);
    v12 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v11];
    v13 = a3 - a2;
    if (v13)
    {
      result = memcpy(result, a2, v13);
    }

LABEL_17:
    a1[1] = &v12[v13];
    return result;
  }

  v12 = a1[1];
  v14 = v12 - result;
  if (v12 - result < a4)
  {
    v15 = &a2[v14];
    if (v12 != result)
    {
      result = memmove(result, a2, v14);
      v12 = a1[1];
    }

    v13 = a3 - v15;
    if (v13)
    {
      result = memmove(v12, v15, v13);
    }

    goto LABEL_17;
  }

  v16 = a3 - a2;
  if (v16)
  {
    v17 = result;
    memmove(result, a2, v16);
    result = v17;
  }

  a1[1] = &result[v16];
  return result;
}