uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::SignalingThreadCallback::Resolve(webrtc::RTCError const&)::{lambda(void)#1}>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 63) < 0)
      {
        operator delete(*(v3 + 40));
      }

      (*(v3 + 16))(1, v3, v3);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void std::vector<std::string>::__emplace_back_slow_path<std::string const&>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v2 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    else
    {
      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetFrameEncryptor(webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>)::$_0>(uint64_t a1)
{
  v1 = *(*a1 + 336);
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 360);
  v5 = v3;
  if (v3)
  {
    (**v3)(v3);
  }

  (*(*v1 + 120))(v1, v2, &v5);
  result = v5;
  if (v5)
  {
    return ((*v5)[1])(v5);
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpParameters webrtc::Thread::BlockingCall<webrtc::RtpSenderBase::GetParametersInternal(void)::$_0,webrtc::RtpParameters,void>(webrtc::RtpSenderBase::GetParametersInternal(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = **(a1 + 8);
  (*(**(v2 + 336) + 152))(v3);
  webrtc::RtpParameters::operator=(*a1, v3);
  webrtc::RtpParameters::~RtpParameters(&v3[0].__r_.__value_.__l.__data_);
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpParameters webrtc::Thread::BlockingCall<webrtc::RtpSenderBase::GetParametersInternalWithAllLayers(void)::$_0,webrtc::RtpParameters,void>(webrtc::RtpSenderBase::GetParametersInternalWithAllLayers(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  (*(**(**(a1 + 8) + 336) + 152))(v2);
  webrtc::RtpParameters::operator=(*a1, v2);
  webrtc::RtpParameters::~RtpParameters(&v2[0].__r_.__value_.__l.__data_);
}

void _ZZN6webrtc13RtpSenderBase21SetParametersInternalERKNS_13RtpParametersEN4absl12AnyInvocableIFvNS_8RTCErrorEOEEEbEN3__0clEv(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 200);
  webrtc::RtpParameters::RtpParameters(&__dst, (a1 + 32));
  (*(**(v2 + 336) + 152))(v64);
  v7 = *(v2 + 400);
  v8 = *(v2 + 408);
  if (v7 == v8)
  {
    goto LABEL_54;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) - 0xF0F0F0F0F0F0F0FLL * ((*(a1 + 136) - *(a1 + 128)) >> 4);
  if (v9 == 0xF0F0F0F0F0F0F0F1 * ((v66 - v65) >> 4))
  {
    webrtc::RtpParameters::RtpParameters(&v68, (a1 + 32));
    v10 = v72;
    v11 = v71;
    while (v10 != v11)
    {
      webrtc::RtpEncodingParameters::~RtpEncodingParameters((v10 - 272));
    }

    v72 = v11;
    v12 = v65;
    v44 = v66;
    if (v65 != v66)
    {
      v13 = 0;
      do
      {
        v15 = *(v2 + 400);
        v14 = *(v2 + 408);
        if (v15 == v14)
        {
          goto LABEL_30;
        }

        v16 = *(v12 + 151);
        v17 = v16 >= 0 ? *(v12 + 151) : *(v12 + 136);
        v18 = v16 >= 0 ? (v12 + 128) : *(v12 + 128);
        while (1)
        {
          v19 = *(v15 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v15 + 8);
          }

          if (v19 == v17)
          {
            v21 = v20 >= 0 ? v15 : *v15;
            if (!memcmp(v21, v18, v17))
            {
              break;
            }
          }

          v15 += 24;
          if (v15 == v14)
          {
            goto LABEL_30;
          }
        }

        if (v15 == v14)
        {
LABEL_30:
          v27 = *(a1 + 128);
          if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 136) - v27) >> 4) <= v13)
          {
            goto LABEL_84;
          }

          v28 = v27 + 272 * v13;
          if (v11 >= v73)
          {
            std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<webrtc::RtpEncodingParameters const&>(&v71);
          }

          if (!v11)
          {
LABEL_84:
            __break(1u);
          }

          *v11 = *v28;
          v29 = *(v28 + 16);
          v30 = *(v28 + 32);
          v31 = *(v28 + 48);
          *(v11 + 57) = *(v28 + 57);
          *(v11 + 32) = v30;
          *(v11 + 48) = v31;
          *(v11 + 16) = v29;
          *(v11 + 80) = 0;
          v32 = (v11 + 80);
          *(v11 + 104) = 0;
          if (*(v28 + 104) == 1)
          {
            if (*(v28 + 103) < 0)
            {
              std::string::__init_copy_ctor_external(v32, *(v28 + 80), *(v28 + 88));
            }

            else
            {
              v33 = *(v28 + 80);
              *(v11 + 96) = *(v28 + 96);
              *&v32->__r_.__value_.__l.__data_ = v33;
            }

            *(v11 + 104) = 1;
          }

          v34 = *(v28 + 112);
          *(v11 + 117) = *(v28 + 117);
          *(v11 + 112) = v34;
          if (*(v28 + 151) < 0)
          {
            std::string::__init_copy_ctor_external((v11 + 128), *(v28 + 128), *(v28 + 136));
          }

          else
          {
            v35 = *(v28 + 128);
            *(v11 + 144) = *(v28 + 144);
            *(v11 + 128) = v35;
          }

          v36 = *(v28 + 152);
          *(v11 + 160) = 0;
          *(v11 + 152) = v36;
          *(v11 + 264) = 0;
          if (*(v28 + 264) == 1)
          {
            webrtc::RtpCodec::RtpCodec((v11 + 160), (v28 + 160));
            *(v11 + 264) = 1;
          }

          v11 += 272;
          ++v13;
        }

        else
        {
          if (v11 >= v73)
          {
            std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<webrtc::RtpEncodingParameters const&>(&v71);
          }

          if (!v11)
          {
            goto LABEL_84;
          }

          *v11 = *v12;
          v22 = *(v12 + 16);
          v23 = *(v12 + 32);
          v24 = *(v12 + 48);
          *(v11 + 57) = *(v12 + 57);
          *(v11 + 32) = v23;
          *(v11 + 48) = v24;
          *(v11 + 16) = v22;
          *(v11 + 80) = 0;
          v25 = (v11 + 80);
          *(v11 + 104) = 0;
          if (*(v12 + 104) == 1)
          {
            if (*(v12 + 103) < 0)
            {
              std::string::__init_copy_ctor_external(v25, *(v12 + 80), *(v12 + 88));
            }

            else
            {
              v26 = *(v12 + 80);
              *(v11 + 96) = *(v12 + 96);
              *&v25->__r_.__value_.__l.__data_ = v26;
            }

            *(v11 + 104) = 1;
          }

          v37 = *(v12 + 112);
          *(v11 + 117) = *(v12 + 117);
          *(v11 + 112) = v37;
          if (*(v12 + 151) < 0)
          {
            std::string::__init_copy_ctor_external((v11 + 128), *(v12 + 128), *(v12 + 136));
          }

          else
          {
            v38 = *(v12 + 128);
            *(v11 + 144) = *(v12 + 144);
            *(v11 + 128) = v38;
          }

          v39 = *(v12 + 152);
          *(v11 + 160) = 0;
          *(v11 + 152) = v39;
          *(v11 + 264) = 0;
          if (*(v12 + 264) == 1)
          {
            webrtc::RtpCodec::RtpCodec((v11 + 160), (v12 + 160));
            *(v11 + 264) = 1;
          }

          v11 += 272;
        }

        v72 = v11;
        v12 += 272;
      }

      while (v12 != v44);
    }

    webrtc::RtpParameters::operator=(&__dst, &v68);
    webrtc::RtpParameters::~RtpParameters(&v68);
LABEL_54:
    v40 = *(v2 + 32);
    LOBYTE(v68) = 0;
    v74 = 0;
    webrtc::CheckRtpParametersInvalidModificationAndValues(v64, &__dst, 0, 0, &v68, v40, &v61);
    if (v74 == 1)
    {
      webrtc::Codec::~Codec(&v68);
    }

    if (v61)
    {
      v55 = v61;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v56, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v56 = __p;
      }

      v57[0] = v63[0];
      *(v57 + 3) = *(v63 + 3);
      webrtc::InvokeSetParametersCallback(a1, &v55, v58);
      if (v60 < 0)
      {
        operator delete(v59);
        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_69;
        }
      }

      else if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_69:
        operator delete(v56.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }

LABEL_78:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_79:
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_80:
      webrtc::RtpParameters::~RtpParameters(v64);
      webrtc::RtpParameters::~RtpParameters(&__dst.__r_.__value_.__l.__data_);
      return;
    }

    (*(*v2 + 272))(&v68, v2, &__dst);
    v41 = v68;
    v61 = v68;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v41 = v61;
    }

    __p = v69;
    v63[0] = v70[0];
    *(v63 + 3) = *(v70 + 3);
    if (!v41)
    {
      v42 = *(v2 + 336);
      v43 = *(v2 + 80);
      (*(a1 + 16))(0, a1, v45);
      v46 = *(a1 + 16);
      *(a1 + 16) = absl::internal_any_invocable::EmptyManager;
      *(a1 + 24) = 0;
      (*(*v42 + 128))(v47, v42, v43, &__dst, v45);
      if (v48 < 0)
      {
        operator delete(v47[1]);
      }

      (v46)(1, v45, v45);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    v49 = v41;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v50 = __p;
    }

    v51[0] = v63[0];
    *(v51 + 3) = *(v63 + 3);
    webrtc::InvokeSetParametersCallback(a1, &v49, v52);
    if (v54 < 0)
    {
      operator delete(v53);
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }
    }

    else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc", 100, "parameters.encodings.size() + removed_rids.size() == all_layers.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v3, v4, v5, v6, v9);
  _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc13RtpSenderBase21SetParametersInternalERKNS2_13RtpParametersENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEbE3__0JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE();
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc13RtpSenderBase21SetParametersInternalERKNS2_13RtpParametersENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEbE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESE_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      webrtc::RtpParameters::~RtpParameters((v3 + 32));
      (*(v3 + 16))(1, v3, v3);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

__n128 webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::RtpSenderBase::SetParametersInternalWithAllLayers(webrtc::RtpParameters const&)::$_0,webrtc::RTCError,void>(webrtc::RtpSenderBase::SetParametersInternalWithAllLayers(webrtc::RtpParameters const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *(v2 + 8);
  webrtc::RtpParameters::RtpParameters(&v15, *v2);
  v4 = *(v3 + 336);
  v13 = absl::internal_any_invocable::EmptyManager;
  v14 = 0;
  (*(*v4 + 128))(&v8);
  (v13)(1, v12, v12);
  webrtc::RtpParameters::~RtpParameters(&v15.__r_.__value_.__l.__data_);
  v5 = *a1;
  *v5 = v8;
  if (*(v5 + 31) < 0)
  {
    operator delete(*(v5 + 8));
  }

  result = v9;
  *(v5 + 24) = v10;
  *(v5 + 8) = result;
  v7 = v11[0];
  *(v5 + 35) = *(v11 + 3);
  *(v5 + 32) = v7;
  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpSenderBase::SetParameters(webrtc::RtpParameters const&)::$_0 &&,webrtc::RTCError>(uint64_t *a1, int *a2)
{
  v11 = *a2;
  v3 = v11;
  *__p = *(a2 + 2);
  v13 = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v14[0] = a2[8];
  *(v14 + 3) = *(a2 + 35);
  v4 = a1[1];
  *v4 = v3;
  v5 = (v4 + 8);
  if (v4 != &v11)
  {
    if (*(v4 + 31) < 0)
    {
      if (v13 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v13 >= 0)
      {
        v8 = HIBYTE(v13);
      }

      else
      {
        v8 = __p[1];
      }

      std::string::__assign_no_alias<false>(v5, v7, v8);
    }

    else if (v13 < 0)
    {
      std::string::__assign_no_alias<true>(v5, __p[0], __p[1]);
    }

    else
    {
      v6 = *__p;
      *(v4 + 24) = v13;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }
  }

  v9 = v14[0];
  *(v4 + 35) = *(v14 + 3);
  *(v4 + 32) = v9;
  v10 = *a1;
  pthread_mutex_lock(v10);
  *(v10 + 113) = 1;
  pthread_cond_broadcast((v10 + 64));
  pthread_mutex_unlock(v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc13RtpSenderBase18SetParametersAsyncERKNS2_13RtpParametersENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEE3__0JS8_EEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  *v9 = *(a2 + 24);
  *&v9[3] = *(a2 + 27);
  v6 = *(a2 + 31);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *v8 = *(a2 + 32);
  *&v8[3] = *(a2 + 35);
  v7 = *v2;
  if (*(*v2 + 392) == 1)
  {
    if (*(v7 + 391) < 0)
    {
      operator delete(*(v7 + 368));
    }

    *(v7 + 392) = 0;
  }

  v10 = v3;
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&v11, v4, v5);
  }

  else
  {
    v11.__r_.__value_.__r.__words[0] = v4;
    v11.__r_.__value_.__l.__size_ = v5;
    LODWORD(v11.__r_.__value_.__r.__words[2]) = *v9;
    *(&v11.__r_.__value_.__r.__words[2] + 3) = *&v9[3];
    *(&v11.__r_.__value_.__s + 23) = v6;
  }

  v12[0] = *v8;
  *(v12 + 3) = *&v8[3];
  webrtc::InvokeSetParametersCallback((v2 + 1), &v10, v13);
  if (v15 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_10:
      if ((v6 & 0x80000000) == 0)
      {
        return;
      }

LABEL_14:
      operator delete(v4);
      return;
    }
  }

  else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v6 < 0)
  {
    goto LABEL_14;
  }
}

uint64_t _ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc13RtpSenderBase18SetParametersAsyncERKNS2_13RtpParametersENS_12AnyInvocableIFvNS2_8RTCErrorEOEEEE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESE_(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      (*(v3 + 24))(1, v3 + 8, v3 + 8);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::SignalingThreadCallback>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (!*(v3 + 32))
      {
        (*(v3 + 24))(1, v3 + 8, v3 + 8);

        JUMPOUT(0x2743DA540);
      }

      *v5 = 10;
      v6 = 0;
      memset(&v5[4], 0, 29);
      webrtc::RTCError::~RTCError(v5);
      webrtc::webrtc_checks_impl::UnreachableCodeReached(v4);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetSsrc(unsigned int)::$_0>(_DWORD **a1)
{
  v2 = *a1;
  (*(**(*a1 + 42) + 152))(v30);
  if (!*a1[1])
  {
    goto LABEL_29;
  }

  v7 = v2[30];
  v8 = v2[31];
  if (0xF0F0F0F0F0F0F0F1 * ((v32 - v31) >> 4) < 0xF0F0F0F0F0F0F0F1 * ((v8 - v7) >> 4))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc", 535, "current_parameters.encodings.size() >= init_parameters_.encodings.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v3, v4, v5, v6, 0xF0F0F0F0F0F0F0F1 * ((v32 - v31) >> 4));
    webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetFrameTransformer(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>(v24);
    return;
  }

  if (v8 == v7)
  {
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  while (0xF0F0F0F0F0F0F0F1 * ((v32 - v31) >> 4) > v10)
  {
    v11 = &v7[v9];
    v12 = *&v31[v9];
    v11[4] = v31[v9 + 4];
    *v11 = v12;
    if (0xF0F0F0F0F0F0F0F1 * ((v32 - v31) >> 4) <= v10)
    {
      break;
    }

    v13 = v2[30];
    if (0xF0F0F0F0F0F0F0F1 * ((v2[31] - v13) >> 4) <= v10)
    {
      break;
    }

    if (v13 == v31)
    {
      goto LABEL_20;
    }

    v14 = &v31[v9 + 128];
    v15 = &v13[v9];
    v16 = v31[v9 + 151];
    if (v15[151] < 0)
    {
      if (v16 >= 0)
      {
        v19 = &v31[v9 + 128];
      }

      else
      {
        v19 = *v14;
      }

      if (v16 >= 0)
      {
        v20 = v31[v9 + 151];
      }

      else
      {
        v20 = *&v31[v9 + 136];
      }

      std::string::__assign_no_alias<false>((v15 + 128), v19, v20);
LABEL_20:
      v18 = v2[30];
      if (0xF0F0F0F0F0F0F0F1 * ((v2[31] - v18) >> 4) <= v10)
      {
        break;
      }

      goto LABEL_21;
    }

    if (v31[v9 + 151] < 0)
    {
      std::string::__assign_no_alias<true>(v15 + 128, *v14, *&v31[v9 + 136]);
      v18 = v2[30];
      if (0xF0F0F0F0F0F0F0F1 * ((v2[31] - v18) >> 4) <= v10)
      {
        break;
      }
    }

    else
    {
      v17 = *v14;
      *(v15 + 18) = *&v31[v9 + 144];
      *(v15 + 8) = v17;
      v18 = v2[30];
      if (0xF0F0F0F0F0F0F0F1 * ((v2[31] - v18) >> 4) <= v10)
      {
        break;
      }
    }

LABEL_21:
    if (0xF0F0F0F0F0F0F0F1 * ((v32 - v31) >> 4) <= v10)
    {
      break;
    }

    webrtc::RtpEncodingParameters::operator=(&v31[v9], &v18[v9]);
    ++v10;
    v7 = v2[30];
    v9 += 272;
    if (v10 >= 0xF0F0F0F0F0F0F0F1 * ((v2[31] - v7) >> 4))
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  v33 = *(v2 + 76);
  v34 = *(v2 + 308);
  v21 = v2[42];
  v26 = absl::internal_any_invocable::EmptyManager;
  v27 = 0;
  (*(*v21 + 128))(v28);
  if (v29 < 0)
  {
    operator delete(v28[1]);
  }

  (v26)(1, v25, v25);
LABEL_29:
  v23 = v2[30];
    ;
  }

  v2[31] = v23;
  if (*(v2 + 308) == 1)
  {
    *(v2 + 308) = 0;
  }

  webrtc::RtpParameters::~RtpParameters(v30);
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetFrameTransformer(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>(uint64_t a1)
{
  v1 = *(*a1 + 336);
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 448);
  v5 = v3;
  if (v3)
  {
    (**v3)(v3);
  }

  (*(*v1 + 136))(v1, v2, &v5);
  result = v5;
  if (v5)
  {
    return ((*v5)[1])(v5);
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::AudioRtpSender>::~RefCountedObject(webrtc::AudioRtpSender *a1)
{
  webrtc::AudioRtpSender::~AudioRtpSender(a1);

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::AudioRtpSender>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 128, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

BOOL non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioRtpSender>::Release(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 504), 0xFFFFFFFF);
  if (add == 1)
  {
    (*(*(a1 - 8) + 24))();
  }

  return add != 1;
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioRtpSender>::~RefCountedObject(uint64_t a1)
{
  webrtc::AudioRtpSender::~AudioRtpSender((a1 - 8));
}

{
  webrtc::AudioRtpSender::~AudioRtpSender((a1 - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::AudioRtpSender::~AudioRtpSender((a1 - 16));
}

{
  webrtc::AudioRtpSender::~AudioRtpSender((a1 - 16));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::AudioRtpSender::~AudioRtpSender((a1 - 24));
}

{
  webrtc::AudioRtpSender::~AudioRtpSender((a1 - 24));

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 6, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829CEA0;
  v14 = a1;
  v15 = webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[1];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

uint64_t webrtc::RefCountedObject<webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829CEA0;
  v14 = a1;
  v15 = webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[1];
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v15(v14 + (v16 >> 1));
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return MEMORY[0x2743DA540](a1, 0x10A1C40F4A7E088);
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 16);
  v18 = webrtc::DtmfSenderInterface::RegisterObserver;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 8);
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v10)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == v3)
  {
    v7 = v18;
    v8 = (v17 + (v19 >> 1));
    if (v19)
    {
      v7 = *(*v8 + v18);
    }

    (v7)(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,void,webrtc::DtmfSenderObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::UnregisterObserver(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 16);
  v14 = webrtc::DtmfSenderInterface::UnregisterObserver;
  v15 = 0;
  webrtc::Event::Event(&v16, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v7)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v14(v13 + (v15 >> 1));
  }

  else
  {
    v10.n128_u64[0] = &v13;
    v11 = absl::internal_any_invocable::LocalManagerTrivial;
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::CanInsertDtmf(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::DtmfSenderInterface::CanInsertDtmf;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6 & 1;
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::InsertDtmf(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  v15 = a5;
  v23 = *(a1 + 16);
  v24 = webrtc::DtmfSenderInterface::InsertDtmf;
  v25 = 0;
  v27 = a2;
  v28 = &v17;
  v29 = &v16;
  v30 = &v15;
  webrtc::Event::Event(&v31, 0, 0);
  v6 = *(a1 + 8);
  v7 = &unk_280905000;
  {
    v7 = &unk_280905000;
    if (v14)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v7[403] + 88)) == v6)
  {
    v11 = v24;
    v12 = (v23 + (v25 >> 1));
    if (v25)
    {
      v11 = *(*v12 + v24);
    }

    v10 = (v11)(v12, v27, *v28, *v29, *v30);
    v26 = v10;
  }

  else
  {
    v20.n128_u64[0] = &v23;
    v21 = absl::internal_any_invocable::LocalManagerTrivial;
    v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,BOOL,std::string const&,int,int,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v6 + 8))(v6, &v20, &v19, &v18);
    v21(1, &v20, &v20);
    v8.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v9.var0 = 3000000;
    webrtc::Event::Wait(&v31, v8, v9);
    v10 = v26;
  }

  pthread_mutex_destroy(&v31);
  pthread_cond_destroy(&v32);
  return v10 & 1;
}

void webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::tones(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 16);
  v16 = webrtc::DtmfSenderInterface::tones;
  memset(__p, 0, sizeof(__p));
  webrtc::Event::Event(&v18, 0, 0);
  v4 = *(a1 + 8);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) != v4)
  {
    *&v12 = &v15;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DtmfSenderInterface,std::string>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v4 + 8))(v4, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v7.var0 = 3000000;
    webrtc::Event::Wait(&v18, v6, v7);
    goto LABEL_10;
  }

  v8 = (v15 + (__p[0] >> 1));
  if (__p[0])
  {
    (*(*v8 + v16))(&v12);
    if (SHIBYTE(__p[3]) < 0)
    {
LABEL_8:
      operator delete(__p[1]);
    }
  }

  else
  {
    (v16)(&v12, v8);
    if (SHIBYTE(__p[3]) < 0)
    {
      goto LABEL_8;
    }
  }

  *&__p[1] = v12;
  __p[3] = v13;
LABEL_10:
  *a2 = *&__p[1];
  *(a2 + 16) = __p[3];
  memset(&__p[1], 0, 24);
  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::duration(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::DtmfSenderInterface::duration;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DtmfSenderInterface,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::inter_tone_gap(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::DtmfSenderInterface::inter_tone_gap;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DtmfSenderInterface,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::comma_delay(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::DtmfSenderInterface::comma_delay;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v8)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v15(v14 + (v16 >> 1));
    v17 = v6;
  }

  else
  {
    v11.n128_u64[0] = &v14;
    v12 = absl::internal_any_invocable::LocalManagerTrivial;
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DtmfSenderInterface,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v18, v4, v5);
    v6 = v17;
  }

  pthread_mutex_destroy(&v18);
  pthread_cond_destroy(&v19);
  return v6;
}

uint64_t webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderProxyWithInternal<webrtc::DtmfSenderInterface>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,void,webrtc::DtmfSenderObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::DtmfSenderInterface,BOOL,std::string const&,int,int,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  v8 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v8 + v2);
  }

  *(v1 + 24) = v2(v8, v4, *v5, *v6, *v7);
  pthread_mutex_lock((v1 + 64));
  *(v1 + 177) = 1;
  pthread_cond_broadcast((v1 + 128));

  return pthread_mutex_unlock((v1 + 64));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DtmfSenderInterface,std::string>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v6);
    if (*(v1 + 47) < 0)
    {
LABEL_5:
      operator delete(*(v1 + 24));
    }
  }

  else
  {
    v2(&v6, v4);
    if (*(v1 + 47) < 0)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 24) = v6;
  *(v1 + 40) = v7;
  pthread_mutex_lock((v1 + 56));
  *(v1 + 169) = 1;
  pthread_cond_broadcast((v1 + 120));
  return pthread_mutex_unlock((v1 + 56));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::DtmfSenderInterface,int>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  *(v1 + 24) = v2(v4);
  pthread_mutex_lock((v1 + 32));
  *(v1 + 145) = 1;
  pthread_cond_broadcast((v1 + 96));

  return pthread_mutex_unlock((v1 + 32));
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::CanInsertDtmf(void)::$_0,BOOL,void>(webrtc::AudioRtpSender::CanInsertDtmf(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 344);
  v3 = (*(*v2 + 24))(v2);
  result = (*(*v3 + 208))(v3);
  **a1 = result;
  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::InsertDtmf(int,int)::$_0,BOOL,void>(webrtc::AudioRtpSender::InsertDtmf(int,int)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = (*(**(*v2 + 43) + 24))(*(*v2 + 43));
  result = (*(*v4 + 216))(v4, v3[22], *v2[1], *v2[2]);
  **a1 = result;
  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::SetSend(void)::$_0,BOOL,void>(webrtc::AudioRtpSender::SetSend(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = (*(**(*v2 + 344) + 24))(*(*v2 + 344));
  v5 = *(v3 + 504);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  result = (*(*v4 + 200))(v4, *(v3 + 88), *v2[1], v2[2], v6);
  **a1 = result;
  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::ClearSend(void)::$_0,BOOL,void>(webrtc::AudioRtpSender::ClearSend(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = (*(**(*v2 + 344) + 24))(*(*v2 + 344));
  result = (*(*v4 + 200))(v4, *(v3 + 88), 0, v2[1], 0);
  **a1 = result;
  return result;
}

BOOL webrtc::RefCountedObject<webrtc::VideoRtpSender>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 117, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::VideoRtpSender>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28829C988;
  *(a1 + 8) = &unk_28829CB20;
  *(a1 + 16) = &unk_28829CB48;
  if ((*(a1 + 84) & 1) == 0)
  {
    v2 = *(a1 + 344);
    if (v2)
    {
      v3 = a1;
      (*(*(v2 + 8) + 8))(v2 + 8);
      a1 = v3;
      if (*(v3 + 344) && *(v3 + 80))
      {
        (*(*v3 + 344))(v3);
        (*(*v3 + 376))(v3);
        a1 = v3;
      }

      v1 = vars8;
    }

    *(a1 + 336) = 0;
    *(a1 + 424) = 0;
    *(a1 + 84) = 1;
  }

  webrtc::RtpSenderBase::~RtpSenderBase(a1);
}

void webrtc::RefCountedObject<webrtc::VideoRtpSender>::~RefCountedObject(webrtc::RtpSenderBase *this)
{
  *this = &unk_28829C988;
  *(this + 1) = &unk_28829CB20;
  *(this + 2) = &unk_28829CB48;
  if ((*(this + 84) & 1) == 0)
  {
    v2 = *(this + 43);
    if (v2)
    {
      (*(*(v2 + 8) + 8))();
      if (*(this + 43))
      {
        if (*(this + 20))
        {
          (*(*this + 344))(this);
          (*(*this + 376))(this);
        }
      }
    }

    *(this + 42) = 0;
    *(this + 53) = 0;
    *(this + 84) = 1;
  }

  webrtc::RtpSenderBase::~RtpSenderBase(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::VideoRtpSender>::~RefCountedObject(uint64_t a1)
{
  v1 = (a1 - 8);
  *(a1 - 8) = &unk_28829C988;
  *a1 = &unk_28829CB20;
  *(a1 + 8) = &unk_28829CB48;
  if ((*(a1 + 76) & 1) == 0)
  {
    v3 = *(a1 + 336);
    if (v3)
    {
      (*(*(v3 + 8) + 8))();
      if (*(a1 + 336))
      {
        if (*(a1 + 72))
        {
          (*(*v1 + 344))(v1);
          (*(*v1 + 376))(v1);
        }
      }
    }

    *(a1 + 328) = 0;
    *(a1 + 416) = 0;
    *(a1 + 76) = 1;
  }

  webrtc::RtpSenderBase::~RtpSenderBase(v1);
}

{
  webrtc::RefCountedObject<webrtc::VideoRtpSender>::~RefCountedObject((a1 - 8));
}

{
  v1 = (a1 - 16);
  *(a1 - 16) = &unk_28829C988;
  *(a1 - 8) = &unk_28829CB20;
  *a1 = &unk_28829CB48;
  if ((*(a1 + 68) & 1) == 0)
  {
    v3 = *(a1 + 328);
    if (v3)
    {
      (*(*(v3 + 8) + 8))();
      if (*(a1 + 328))
      {
        if (*(a1 + 64))
        {
          (*(*v1 + 344))(v1);
          (*(*v1 + 376))(v1);
        }
      }
    }

    *(a1 + 320) = 0;
    *(a1 + 408) = 0;
    *(a1 + 68) = 1;
  }

  webrtc::RtpSenderBase::~RtpSenderBase(v1);
}

{
  webrtc::RefCountedObject<webrtc::VideoRtpSender>::~RefCountedObject((a1 - 16));
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::VideoRtpSender::GenerateKeyFrame(std::vector<std::string> const&)::$_1 &&>(uint64_t a1)
{
  v1 = *(*(*(**(*(*a1 + 24) + 336) + 16))(*(*(*a1 + 24) + 336)) + 208);

  return v1();
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::VideoRtpSender::GenerateKeyFrame(std::vector<std::string> const&)::$_1>(uint64_t result, void ****a2, void ****a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = v3[1];
        v6 = *v3;
        if (v5 != v4)
        {
          do
          {
            v7 = *(v5 - 1);
            v5 -= 3;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v4);
          v6 = *v3;
        }

        v3[1] = v4;
        operator delete(v6);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::VideoRtpSender::SetSend(void)::$_0,BOOL,void>(webrtc::VideoRtpSender::SetSend(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = (*(**(*v2 + 336) + 16))(*(*v2 + 336));
  v5 = *(v3 + 80);
  v6 = v2[1];
  v7 = *(v3 + 344);
  if (v7)
  {
    v8 = v4;
    (**v7)(v7);
    v4 = v8;
    v9 = v7 + 16;
  }

  else
  {
    v9 = 0;
  }

  result = (*(*v4 + 200))(v4, v5, v6, v9);
  v11 = result;
  if (v7)
  {
    result = (*(*v7 + 8))(v7);
  }

  **a1 = v11;
  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpSender::ClearSend(void)::$_0>(uint64_t a1)
{
  v1 = *(*(*(**(*a1 + 336) + 16))(*(*a1 + 336)) + 200);

  return v1();
}

uint64_t webrtc::RTPSender::RTPSender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = (*(*v9 + 16))(v9);
  *(a1 + 16) = *a3;
  *(a1 + 20) = *(a3 + 180);
  *(a1 + 24) = *(a3 + 184);
  v10 = *(a3 + 112);
  if (v10)
  {
    v11 = (*(*v10 + 24))(v10);
    *(a1 + 32) = v11;
    *(a1 + 36) = BYTE4(v11);
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  pthread_mutexattr_init(&v16);
  pthread_mutexattr_setpolicy_np(&v16, 3);
  pthread_mutex_init((a1 + 56), &v16);
  pthread_mutexattr_destroy(&v16);
  *(a1 + 120) = 1;
  *(a1 + 158) = *(a3 + 177);
  *(a1 + 150) = 0;
  *(a1 + 128) = 1472;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (*(a3 + 223) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 184), *(a3 + 200), *(a3 + 208));
  }

  else
  {
    v12 = *(a3 + 200);
    *(a1 + 200) = *(a3 + 216);
    *(a1 + 184) = v12;
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = *(a3 + 178);
  *(a1 + 233) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 280) = 0;
  *(a1 + 288) = *(a3 + 136);
  v13 = *(a1 + 8) ^ (*(a1 + 8) >> 12);
  v14 = v13 ^ (v13 << 25) ^ ((v13 ^ (v13 << 25)) >> 27);
  *(a1 + 8) = v14;
  *(a1 + 176) = 1332534557 * v14;
  webrtc::RTPSender::UpdateHeaderSizes(a1);
  return a1;
}

void webrtc::RTPSender::UpdateHeaderSizes(webrtc::RTPSender *this)
{
  v1 = this;
  v2 = 4 * *(this + 30);
  v3 = *(this + 141);
  if (v3 <= 0xE)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (*(this + 137) <= 0xEu)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  v6 = v3 == 0;
  v7 = v3 != 0;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (*(this + 137))
  {
    v4 = v5;
    v7 = v9;
    v10 = v8 + 3;
  }

  else
  {
    v10 = v8;
  }

  if (*(this + 144))
  {
    ++v7;
    v10 += 2;
  }

  v11 = v10 + 3;
  if (*(this + 146))
  {
    v12 = v7 + 1;
  }

  else
  {
    v12 = v7;
  }

  if (!*(this + 146))
  {
    v11 = v10;
  }

  v13 = *(this + 144) > 0xEu || *(this + 146) > 0xEu;
  v14 = *(this + 152);
  if (v13 || v14 > 0xE)
  {
    v16 = 2;
  }

  else
  {
    v16 = v4;
  }

  v17 = v14 == 0;
  if (*(this + 152))
  {
    v18 = v12 + 1;
  }

  else
  {
    v18 = v12;
  }

  if (v17)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + 16;
  }

  if (*(this + 149))
  {
    if (*(this + 149) > 0xEu)
    {
      v16 = 2;
    }

    v19 += 13;
    ++v18;
    v20 = v2 + 12;
LABEL_43:
    *(this + 21) = ((v19 + v18 * v16 + 7) & 0xFFFFFFFC) + v20;
    v21 = *(this + 232);
    if (*(this + 28))
    {
      goto LABEL_44;
    }

LABEL_48:
    v22 = 0;
    if (v21)
    {
      v23 = 1;
      goto LABEL_51;
    }

LABEL_50:
    v23 = *(this + 233) ^ 1;
    goto LABEL_51;
  }

  v20 = v2 + 12;
  if (v19)
  {
    goto LABEL_43;
  }

  *(this + 21) = v20;
  v21 = *(this + 232);
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_44:
  if ((v21 & 1) == 0)
  {
    v22 = *(this + 234) ^ 1;
    goto LABEL_50;
  }

  v22 = 1;
  v23 = 1;
LABEL_51:
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (*(this + 16))
  {
  }

  else
  {
  }

  v25 = 13;
  if (*(this + 16))
  {
    v25 = 7;
  }

  v26 = v23 | v22;
  if (v23 & 1 | ((v22 & 1) == 0))
  {
    if (v23)
    {
      v27 = 8 * v25;
      while (1)
      {
        v28 = *v24;
        if (*v24 > 9)
        {
          break;
        }

        if (v28 > 4)
        {
          if ((v28 - 6) < 2)
          {
            goto LABEL_61;
          }

          if ((v28 - 8) >= 2 && v28 != 5)
          {
            goto LABEL_203;
          }

          goto LABEL_60;
        }

        if ((v28 - 1) < 3)
        {
          goto LABEL_60;
        }

        if (v28 && v28 != 4)
        {
          goto LABEL_203;
        }

LABEL_61:
        ++v24;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_176;
        }
      }

      if (v28 > 0x16)
      {
        goto LABEL_78;
      }

      if (((1 << v28) & 0x788000) != 0)
      {
        goto LABEL_61;
      }

      if (((1 << v28) & 0x60000) != 0)
      {
        goto LABEL_60;
      }

      if (v28 == 16)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_61;
        }

        v29 = *(v1 + 231);
        if (v29 < 0)
        {
          if (!*(v1 + 27))
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }
      }

      else
      {
LABEL_78:
        if ((v28 - 10) < 4)
        {
          goto LABEL_61;
        }

        if (v28 != 14)
        {
          goto LABEL_203;
        }

        v29 = *(v1 + 207);
        if (v29 < 0)
        {
          if (!*(v1 + 24))
          {
            goto LABEL_61;
          }

LABEL_60:
          this = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&v59, v24);
          goto LABEL_61;
        }
      }

      if (!v29)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (((v23 | v22) & 1) == 0)
    {
      v40 = 8 * v25;
      while (*v24 <= 0x16u)
      {
        if (((1 << *v24) & 0x79FCD1) == 0)
        {
          this = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&v59, v24);
        }

        ++v24;
        v40 -= 8;
        if (!v40)
        {
          goto LABEL_176;
        }
      }

LABEL_203:
      webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
    }

    v35 = 8 * v25;
    while (1)
    {
      if (*v24 > 0x16u)
      {
        goto LABEL_203;
      }

      v42 = 1 << *v24;
      if ((v42 & 0x78FCD1) == 0)
      {
        if ((v42 & 0x6032E) != 0)
        {
          goto LABEL_159;
        }

        if ((*(v1 + 231) & 0x8000000000000000) == 0)
        {
          if (!*(v1 + 231))
          {
            goto LABEL_160;
          }

LABEL_159:
          this = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&v59, v24);
          goto LABEL_160;
        }

        if (*(v1 + 27))
        {
          goto LABEL_159;
        }
      }

LABEL_160:
      ++v24;
      v35 -= 8;
      if (!v35)
      {
        goto LABEL_176;
      }
    }
  }

  if (v23)
  {
    v31 = 8 * v25;
    while (1)
    {
      v32 = *v24;
      if (*v24 <= 9)
      {
        if (v32 > 4)
        {
          if ((v32 - 6) < 2)
          {
            goto LABEL_92;
          }

          if ((v32 - 8) >= 2 && v32 != 5)
          {
            goto LABEL_203;
          }

          goto LABEL_91;
        }

        if ((v32 - 1) < 3)
        {
          goto LABEL_91;
        }

        if (v32 && v32 != 4)
        {
          goto LABEL_203;
        }
      }

      else
      {
        if (v32 <= 15)
        {
          if ((v32 - 10) < 4)
          {
            goto LABEL_92;
          }

          if (v32 != 14 && v32 != 15)
          {
            goto LABEL_203;
          }

          v33 = *(v1 + 207);
          if (v33 < 0)
          {
            if (!*(v1 + 24))
            {
              goto LABEL_92;
            }

LABEL_91:
            this = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&v59, v24);
            goto LABEL_92;
          }

          goto LABEL_99;
        }

        if ((v32 - 19) < 4)
        {
          goto LABEL_92;
        }

        if ((v32 - 17) < 2)
        {
          goto LABEL_91;
        }

        if (v32 != 16)
        {
          goto LABEL_203;
        }

        if (v26)
        {
          v33 = *(v1 + 231);
          if (v33 < 0)
          {
            if (!*(v1 + 27))
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

LABEL_99:
          if (!v33)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }
      }

LABEL_92:
      ++v24;
      v31 -= 8;
      if (!v31)
      {
        goto LABEL_176;
      }
    }
  }

  if ((v23 | v22))
  {
    v36 = 8 * v25;
    while (1)
    {
      v37 = *v24;
      if (*v24 > 9)
      {
        break;
      }

      if (v37 > 4)
      {
        if ((v37 - 6) < 2)
        {
          goto LABEL_126;
        }

        if ((v37 - 8) >= 2 && v37 != 5)
        {
          goto LABEL_203;
        }

        goto LABEL_125;
      }

      if ((v37 - 1) < 3)
      {
        goto LABEL_125;
      }

      if (v37 && v37 != 4)
      {
        goto LABEL_203;
      }

LABEL_126:
      ++v24;
      v36 -= 8;
      if (!v36)
      {
        goto LABEL_176;
      }
    }

    if (v37 <= 15)
    {
      if ((v37 - 10) < 5)
      {
        goto LABEL_126;
      }

      if (v37 != 15)
      {
        goto LABEL_203;
      }

      v38 = *(v1 + 207);
      if (v38 < 0)
      {
        if (!*(v1 + 24))
        {
          goto LABEL_126;
        }

LABEL_125:
        this = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&v59, v24);
        goto LABEL_126;
      }
    }

    else
    {
      if ((v37 - 19) < 4)
      {
        goto LABEL_126;
      }

      if ((v37 - 17) < 2)
      {
        goto LABEL_125;
      }

      if (v37 != 16)
      {
        goto LABEL_203;
      }

      v38 = *(v1 + 231);
      if (v38 < 0)
      {
        if (!*(v1 + 27))
        {
          goto LABEL_126;
        }

        goto LABEL_125;
      }
    }

    if (!v38)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  v41 = 8 * v25;
  do
  {
    if (*v24 > 0x16u)
    {
      goto LABEL_203;
    }

    v43 = 1 << *v24;
    if ((v43 & 0x797CD1) == 0)
    {
      if ((v43 & 0x6032E) != 0)
      {
        goto LABEL_168;
      }

      if ((*(v1 + 207) & 0x8000000000000000) != 0)
      {
        if (!*(v1 + 24))
        {
          goto LABEL_169;
        }

LABEL_168:
        this = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100](&v59, v24);
        goto LABEL_169;
      }

      if (*(v1 + 207))
      {
        goto LABEL_168;
      }
    }

LABEL_169:
    ++v24;
    v41 -= 8;
  }

  while (v41);
LABEL_176:
  v44 = v59;
  if (v60 == v59)
  {
    v45 = 0;
  }

  else
  {
    v45 = v59;
  }

  if (v60 == v59)
  {
    v58 = v20;
    *(v1 + 20) = v20;
    if (*(v1 + 28))
    {
      goto LABEL_195;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = v1 + 136;
    v49 = (v45 + v60 - v59);
    v50 = 1;
    v51 = v59;
    do
    {
      if (v48[*v51])
      {
        v52 = v51[1];
        if (v52 > 16 || v48[*v51] > 0xEu)
        {
          v50 = 2;
        }

        v46 += v52;
        ++v47;
      }

      v51 += 2;
    }

    while (v51 != v49);
    v54 = v46 + v47 * v50 + 7;
    v55 = v54 & 3;
    if (v54 <= 0)
    {
      v55 = -(-v54 & 3);
    }

    v56 = v54 - v55;
    if (v46)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57 + v20;
    *(v1 + 20) = v58;
    if (*(v1 + 28))
    {
LABEL_195:
      *(v1 + 20) = v58 + 2;
    }
  }

  if (v44)
  {

    operator delete(v44);
  }
}

uint64_t webrtc::RTPSender::SetRtxPayloadType(webrtc::RTPSender *this, int a2, char a3)
{
  pthread_mutex_lock((this + 56));
  if (a2 < 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender.cc");
    }
  }

  else
  {
    v6 = *(this + 33);
    if (!v6)
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = *(v6 + 25);
        if (v8 <= a3)
        {
          break;
        }

        v6 = *v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a3)
      {
        break;
      }

      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    *(v7 + 26) = a2;
  }

  return pthread_mutex_unlock((this + 56));
}

uint64_t webrtc::RTPSender::ReSendPacket(webrtc::RTPSender *this, unsigned int a2)
{
  *&v20[1] = 0;
  pthread_mutex_lock((this + 56));
  v4 = *(this + 248);
  pthread_mutex_unlock((this + 56));
  *v20 = v4 & 1;
  v5 = *(this + 5);
  v18[0] = &v20[1];
  v18[1] = this;
  v18[2] = v20;
  webrtc::RtpPacketHistory::GetPacketAndMarkAsPending(v5, a2, v18, webrtc::FunctionView<std::unique_ptr<webrtc::RtpPacketToSend> ()(webrtc::RtpPacketToSend const&)>::CallVoidPtr<webrtc::RTPSender::ReSendPacket(unsigned short)::$_0>, &v19);
  if (*&v20[1])
  {
    v6 = v19;
    if (v19)
    {
      v7 = *(v19 + 120);
      if (*(v19 + 128) == 1 && v7 == 0)
      {
        v10 = 0;
      }

      else
      {
        if (*(v19 + 128))
        {
          v9 = v7 == 1;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
LABEL_18:
          *(v6 + 120) = 2;
          *(v6 + 128) = 1;
          *(v6 + 186) = 0;
          operator new();
        }

        v10 = 1;
      }

      *(v19 + 136) = v10;
      *(v6 + 140) = 1;
      goto LABEL_18;
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
    v12 = v19;
    v19 = 0;
    if (v12)
    {
      v13 = v12[22];
      if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = v12[11];
      if (v14 && atomic_fetch_add((v14 + 24), 0xFFFFFFFF) == 1)
      {
        v15 = *(v14 + 16);
        *(v14 + 16) = 0;
        if (v15)
        {
          MEMORY[0x2743DA520](v15, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v14, 0x1010C40EE34DA14);
      }

      v16 = v12[7];
      if (v16)
      {
        v12[8] = v16;
        operator delete(v16);
      }

      MEMORY[0x2743DA540](v12, 0x1020C4060F6C936);
    }
  }

  return v11;
}

void webrtc::RTPSender::OnReceivedNack(webrtc::RTPSender *a1, unsigned __int16 **a2, uint64_t a3)
{
  v5 = *(a1 + 5);
  v6 = 1000 * a3 + 5000;
  pthread_mutex_lock((v5 + 16));
  *(v5 + 96) = v6;
  if (*(v5 + 88))
  {
    webrtc::RtpPacketHistory::CullOldPackets(v5);
  }

  pthread_mutex_unlock((v5 + 16));
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    while ((webrtc::RTPSender::ReSendPacket(a1, *v7) & 0x80000000) == 0)
    {
      if (++v7 == v8)
      {
        return;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender.cc");
    }
  }
}

void webrtc::RTPSender::GeneratePadding(webrtc::RTPSender *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a2;
  v19 = a2;
  pthread_mutex_lock((this + 56));
  if (*(this + 120) == 1 && (*(this + 280) & 1) != 0)
  {
    v5 = *(this + 62);
    pthread_mutex_unlock((this + 56));
    if (a2 >= 0x32 && (v5 & 2) != 0)
    {
      v6 = *(this + 5);
      v16[0] = &v19;
      v16[1] = &v18;
      v16[2] = this;
      webrtc::RtpPacketHistory::GetPayloadPaddingPacket(v6, v16, webrtc::FunctionView<std::unique_ptr<webrtc::RtpPacketToSend> ()(webrtc::RtpPacketToSend const&)>::CallVoidPtr<webrtc::RTPSender::GeneratePadding(unsigned long,BOOL,BOOL)::$_0>, &v17);
      v7 = v17;
      if (v17)
      {
        v8 = *(v17 + 24);
        v9 = v18 >= v8;
        v10 = v18 - v8;
        if (!v9)
        {
          v10 = 0;
        }

        v18 = v10;
        v11 = *(v17 + 120);
        if (*(v17 + 128) == 1 && v11 == 0)
        {
          v14 = 0;
        }

        else
        {
          if (*(v17 + 128))
          {
            v13 = v11 == 1;
          }

          else
          {
            v13 = 0;
          }

          if (!v13)
          {
LABEL_26:
            *(v7 + 120) = 4;
            *(v7 + 128) = 1;
            operator new();
          }

          v14 = 1;
        }

        *(v17 + 136) = v14;
        *(v7 + 140) = 1;
        goto LABEL_26;
      }
    }
  }

  else
  {
    pthread_mutex_unlock((this + 56));
  }

  pthread_mutex_lock((this + 56));
  if (*(this + 120) == 1)
  {
    if (*(this + 16) == 1)
    {
      if (!v18)
      {
        goto LABEL_10;
      }
    }

    else if (!v18)
    {
      goto LABEL_10;
    }

    operator new();
  }

LABEL_10:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  pthread_mutex_unlock((this + 56));
}

void webrtc::RTPSender::EnqueuePackets(void *a1, char **a2)
{
  v4 = (*(**a1 + 16))(*a1);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
LABEL_8:
    v12 = a1[6];
    __p = v9;
    v23 = v10;
    v24 = a2[2];
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    (*(*v12 + 16))(v12, &__p);
    v13 = __p;
    if (__p)
    {
      v14 = v23;
      v15 = __p;
      if (v23 != __p)
      {
        do
        {
          v17 = *(v14 - 1);
          v14 -= 8;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            v18 = v16[22];
            if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 8))(v18);
            }

            v19 = v16[11];
            if (v19 && atomic_fetch_add((v19 + 24), 0xFFFFFFFF) == 1)
            {
              v20 = *(v19 + 16);
              *(v19 + 16) = 0;
              if (v20)
              {
                MEMORY[0x2743DA520](v20, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v19, 0x1010C40EE34DA14);
            }

            v21 = v16[7];
            if (v21)
            {
              v16[8] = v21;
              operator delete(v21);
            }

            MEMORY[0x2743DA540](v16, 0x1020C4060F6C936);
          }
        }

        while (v14 != v13);
        v15 = __p;
      }

      v23 = v13;
      operator delete(v15);
    }
  }

  else
  {
    while (1)
    {
      v11 = *v9;
      if ((*(*v9 + 128) & 1) == 0)
      {
        break;
      }

      if (*(v11 + 112) <= 0)
      {
        *(v11 + 112) = v4;
      }

      v9 += 8;
      if (v9 == v10)
      {
        v9 = *a2;
        v10 = a2[1];
        goto LABEL_8;
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender.cc", 497, "packet->packet_type().has_value()", "\t", v5, v6, v7, v8, "Packet type must be set before sending.");
    webrtc::RTPSender::AllocatePacket();
  }
}

void webrtc::RTPSender::AllocatePacket(uint64_t a1, uint64_t a2, unint64_t a3)
{
  pthread_mutex_lock((a1 + 56));
  if (a3 > *(a1 + 240))
  {
    *(a1 + 240) = a3;
    webrtc::RTPSender::UpdateHeaderSizes(a1);
  }

  operator new();
}

uint64_t webrtc::RTPSender::SetMid(uint64_t a1, __int128 *a2, size_t a3)
{
  pthread_mutex_lock((a1 + 56));
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v9) = a3;
  v6 = (&v8 + a3);
  if (&v8 <= a2 && v6 > a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    memmove(&v8, a2, a3);
  }

  *v6 = 0;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  *(a1 + 208) = v8;
  *(a1 + 224) = v9;
  webrtc::RTPSender::UpdateHeaderSizes(a1);
  return pthread_mutex_unlock((a1 + 56));
}

uint64_t webrtc::RTPSender::BuildRtxPacket(webrtc::RTPSender *this, const webrtc::RtpPacketToSend *a2, uint64_t a3)
{
  pthread_mutex_lock((a2 + 56));
  if (*(a2 + 120))
  {
    v6 = *(a2 + 33);
    if (v6)
    {
      v7 = *(a3 + 1);
      v8 = a2 + 264;
      do
      {
        if (v6[25] >= v7)
        {
          v8 = v6;
        }

        v6 = *&v6[8 * (v6[25] < v7)];
      }

      while (v6);
      if (v8 != a2 + 264 && v7 >= v8[25])
      {
        operator new();
      }
    }
  }

  *this = 0;

  return pthread_mutex_unlock((a2 + 56));
}

uint64_t webrtc::FunctionView<std::unique_ptr<webrtc::RtpPacketToSend> ()(webrtc::RtpPacketToSend const&)>::CallVoidPtr<webrtc::RTPSender::ReSendPacket(unsigned short)::$_0>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 24) + *(a2 + 16) + *(a2 + 2);
  v7 = *(a1 + 8);
  **a1 = v6;
  *a3 = 0;
  v8 = *(v7 + 36);
  if (!v8 || (result = webrtc::RateLimiter::TryUseRate(v8, v6), result))
  {
    if ((**(a1 + 16) & 1) == 0)
    {
      operator new();
    }

    result = webrtc::RTPSender::BuildRtxPacket(&v11, v7, a2);
    v10 = v11;
    *a3 = v11;
    if (v10)
    {
      *(v10 + 170) = *(a2 + 4);
      *(v10 + 172) = 1;
      *(v10 + 144) = *(a2 + 12);
      *(v10 + 148) = 1;
    }
  }

  return result;
}

uint64_t webrtc::FunctionView<std::unique_ptr<webrtc::RtpPacketToSend> ()(webrtc::RtpPacketToSend const&)>::CallVoidPtr<webrtc::RTPSender::GeneratePadding(unsigned long,BOOL,BOOL)::$_0>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, webrtc::RTPSender *a3@<X8>)
{
  if (*(a2 + 24) + 2 <= **(result + 8) + (**result * 2.0 + 0.5))
  {
    return webrtc::RTPSender::BuildRtxPacket(a3, *(result + 16), a2);
  }

  *a3 = 0;
  return result;
}

uint64_t webrtc::RTPSenderAudio::RTPSenderAudio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 8) = a3;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_setpolicy_np(&v6, 3);
  pthread_mutex_init((a1 + 16), &v6);
  pthread_mutexattr_destroy(&v6);
  *(a1 + 80) = 0;
  *(a1 + 82) = -1;
  *(a1 + 84) = 8000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_setpolicy_np(&v6, 3);
  pthread_mutex_init((a1 + 120), &v6);
  pthread_mutexattr_destroy(&v6);
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 209) = -1;
  *(a1 + 213) = -1;
  *(a1 + 216) = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_setpolicy_np(&v6, 3);
  pthread_mutex_init((a1 + 224), &v6);
  pthread_mutexattr_destroy(&v6);
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = a2;
  *(a1 + 304) = 0x8000000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  return a1;
}

BOOL webrtc::RTPSenderAudio::SendAudio(void *a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 2));
  v4 = *(a1 + 21);
  if (*(a2 + 40) != 1)
  {
    goto LABEL_27;
  }

  v5 = *(a1 + 292) == 1 ? *(a1 + 72) : 0;
  v6 = *(a1[1] + 20);
  v7 = *(a2 + 28);
  v8 = (*(**a1 + 24))(*a1, *(a2 + 32));
  v9 = (*(*a1[37] + 16))(a1[37]);
  v10 = a1[38];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x8000000000000000)
  {
    goto LABEL_25;
  }

  v12 = v9 == 0x8000000000000000 || v10 == 0x7FFFFFFFFFFFFFFFLL;
  v13 = v12 || v9 - v10 <= 1000000;
  if (!v13 || *(a1 + 78) != v6 || v5 < 1 || *(a1 + 80) != v5 || *(a1 + 344) != 1 || a1[42])
  {
    goto LABEL_25;
  }

  v14 = v8 - a1[41] - ((v7 - *(a1 + 79)) << 32) / v5;
  if (v14 < 0)
  {
    v14 = ((v7 - *(a1 + 79)) << 32) / v5 - (v8 - a1[41]);
  }

  if (llround(v14 * 0.000000232830644) < 2)
  {
LABEL_27:
    pthread_mutex_unlock((a1 + 2));
    if (a1[10])
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_25:
    *(a1 + 78) = v6;
    *(a1 + 79) = v7;
    *(a1 + 80) = v5;
    a1[41] = v8;
    a1[42] = 0;
    *(a1 + 344) = 1;
    a1[38] = v9;
    pthread_mutex_unlock((a1 + 2));
    if (a1[10])
    {
      goto LABEL_39;
    }
  }

  pthread_mutex_lock((a1 + 15));
  v15 = a1[25];
  pthread_mutex_unlock((a1 + 15));
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = (*(**a1 + 16))();
  v17 = v16 / 0x3E8uLL;
  if (v16 % 0x3E8uLL > 0x1F3)
  {
    ++v17;
  }

  if (-v16 % 0x3E8uLL <= 0x1F4)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  if (v16 < 0)
  {
    v17 = v18 - -v16 / 0x3E8uLL;
  }

  if ((v17 - a1[12]) < 51)
  {
LABEL_39:
    if (*(a1 + 80) == 1)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

  *(a1 + 22) = *(a2 + 28);
  pthread_mutex_lock((a1 + 15));
  v19 = a1[25];
  if (v19)
  {
    v20 = a1[24];
    v21 = v20[20];
    *(a1 + 27) = *(v20 + 4);
    *(a1 + 112) = v21;
    v23 = *v20;
    v22 = *(v20 + 1);
    *(v23 + 8) = v22;
    *v22 = v23;
    a1[25] = v19 - 1;
    operator delete(v20);
    pthread_mutex_unlock((a1 + 15));
    *(a1 + 23) = v4 / 0x3E8 * *(a1 + 54);
    *(a1 + 40) = 1;
    goto LABEL_39;
  }

  pthread_mutex_unlock((a1 + 15));
  if (*(a1 + 80) == 1)
  {
LABEL_40:
    if (*a2)
    {
      v24 = *(a2 + 28);
    }

    else
    {
      v24 = *(a2 + 28);
      if (v24 - *(a1 + 26) < 50 * v4 / 0x3E8)
      {
        return 1;
      }
    }

    *(a1 + 26) = v24;
    v25 = *(a1 + 22);
    v26 = v24 - v25;
    if (*(a1 + 23) <= (v24 - v25))
    {
      *(a1 + 80) = 0;
      v27 = (*(**a1 + 16))();
      v28 = v27 / 0x3E8uLL;
      if (v27 % 0x3E8uLL > 0x1F3)
      {
        ++v28;
      }

      if (-v27 % 0x3E8uLL <= 0x1F4)
      {
        v29 = 0;
      }

      else
      {
        v29 = -1;
      }

      if (v27 < 0)
      {
        v28 = v29 - -v27 / 0x3E8uLL;
      }

      a1[12] = v28;
LABEL_53:
      if (v26 >= 0x10000)
      {
        webrtc::RTPSenderAudio::SendTelephoneEventPacket(a1);
      }

      webrtc::RTPSenderAudio::SendTelephoneEventPacket(a1);
    }

    if (v24 != v25)
    {
      goto LABEL_53;
    }

    return 1;
  }

LABEL_57:
  if (*(a2 + 16))
  {
    webrtc::RTPSender::AllocatePacket(a1[1], *(a2 + 56), *(a2 + 64));
  }

  return *a2 == 0;
}

void webrtc::RtpSenderEgress::NonPacedPacketSender::~NonPacedPacketSender(webrtc::RtpSenderEgress::NonPacedPacketSender *this)
{
  *this = &unk_28829D108;
  v1 = *(this + 5);
  *(v1 + 4) = 0;
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
  }
}

{
  *this = &unk_28829D108;
  v2 = *(this + 5);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::RtpSenderEgress::NonPacedPacketSender::EnqueuePackets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
    }

    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;
    operator new();
  }

  v17 = *v10;
  v18 = v10[1];
  if (*v10 != v18)
  {
    do
    {
      v19 = *v17;
      v20 = *(*(a1 + 24) + 68);
      if ((v20 & 0x100000000) == 0 || *(v19 + 3) != v20)
      {
        webrtc::PacketSequencer::Sequence(*(a1 + 32), *v17);
      }

      v21 = *(a1 + 16);
      *(a1 + 16) = v21 + 1;
      v22 = *(v19 + 40);
      if (*(v19 + 40) && (v22 < 0xF) | *(v19 + 54) & 1)
      {
        RawExtension = webrtc::RtpPacket::AllocateRawExtension(v19, v22, 2, v11, v12, v13, v14, v15);
        if (v24)
        {
          *RawExtension = bswap32(*(a1 + 16)) >> 16;
          v25 = *(v19 + 33);
          v26 = v25 < 0xF;
          if (*(v19 + 33))
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }

        v21 = *(a1 + 16) - 1;
      }

      *(a1 + 16) = v21;
      v25 = *(v19 + 33);
      v26 = v25 < 0xF;
      if (*(v19 + 33))
      {
LABEL_20:
        if ((v26 | *(v19 + 54)))
        {
          v27 = webrtc::RtpPacket::AllocateRawExtension(v19, v25, 3, v11, v12, v13, v14, v15);
          if (v28)
          {
            *(v27 + 2) = 0;
            *v27 = 0;
          }
        }
      }

LABEL_23:
      v29 = *(v19 + 37);
      if (*(v19 + 37))
      {
        if ((v29 < 0xF) | *(v19 + 54) & 1)
        {
          v30 = webrtc::RtpPacket::AllocateRawExtension(v19, v29, 3, v11, v12, v13, v14, v15);
          if (v31)
          {
            *(v30 + 2) = 0;
            *v30 = 0;
          }
        }
      }

      v32 = *(a1 + 24);
      v33 = *v17;
      *v17 = 0;
      v60 = v33;
      v61 = 0;
      v62 = xmmword_273B921F0;
      webrtc::RtpSenderEgress::SendPacket(v32, &v60, &v61);
      v34 = v60;
      v60 = 0;
      if (v34)
      {
        v35 = *(v34 + 22);
        if (v35 && atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v35 + 8))(v35);
        }

        v36 = *(v34 + 11);
        if (v36 && atomic_fetch_add((v36 + 24), 0xFFFFFFFF) == 1)
        {
          v37 = *(v36 + 16);
          *(v36 + 16) = 0;
          if (v37)
          {
            MEMORY[0x2743DA520](v37, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v36, 0x1010C40EE34DA14);
        }

        v38 = *(v34 + 7);
        if (v38)
        {
          *(v34 + 8) = v38;
          operator delete(v38);
        }

        MEMORY[0x2743DA540](v34, 0x1020C4060F6C936);
      }

      ++v17;
    }

    while (v17 != v18);
  }

  v39 = *(*(a1 + 24) + 104);
  if (v39)
  {
    (*(*v39 + 64))(&v61);
    v40 = v61;
    if (v61 != v62)
    {
      __p = v61;
      v59 = v62;
      v62 = 0uLL;
      v61 = 0;
      (*(*a1 + 16))(a1, &__p);
      v41 = __p;
      if (__p)
      {
        v42 = v59;
        v43 = __p;
        if (v59 != __p)
        {
          do
          {
            v45 = *--v42;
            v44 = v45;
            *v42 = 0;
            if (v45)
            {
              v46 = v44[22];
              if (v46 && atomic_fetch_add(v46 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v46 + 8))(v46);
              }

              v47 = v44[11];
              if (v47 && atomic_fetch_add((v47 + 24), 0xFFFFFFFF) == 1)
              {
                v48 = *(v47 + 16);
                *(v47 + 16) = 0;
                if (v48)
                {
                  MEMORY[0x2743DA520](v48, 0x1000C8077774924);
                }

                MEMORY[0x2743DA540](v47, 0x1010C40EE34DA14);
              }

              v49 = v44[7];
              if (v49)
              {
                v44[8] = v49;
                operator delete(v49);
              }

              MEMORY[0x2743DA540](v44, 0x1020C4060F6C936);
            }
          }

          while (v42 != v41);
          v43 = __p;
        }

        *&v59 = v41;
        operator delete(v43);
      }

      v40 = v61;
    }

    if (v40)
    {
      v50 = v62;
      v51 = v40;
      if (v62 != v40)
      {
        do
        {
          v53 = *--v50;
          v52 = v53;
          *v50 = 0;
          if (v53)
          {
            v54 = v52[22];
            if (v54 && atomic_fetch_add(v54 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v54 + 8))(v54);
            }

            v55 = v52[11];
            if (v55 && atomic_fetch_add((v55 + 24), 0xFFFFFFFF) == 1)
            {
              v56 = *(v55 + 16);
              *(v55 + 16) = 0;
              if (v56)
              {
                MEMORY[0x2743DA520](v56, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v55, 0x1010C40EE34DA14);
            }

            v57 = v52[7];
            if (v57)
            {
              v52[8] = v57;
              operator delete(v57);
            }

            MEMORY[0x2743DA540](v52, 0x1020C4060F6C936);
          }
        }

        while (v50 != v40);
        v51 = v61;
      }

      *&v62 = v40;
      operator delete(v51);
    }
  }
}

void webrtc::RtpSenderEgress::SendPacket(uint64_t a1, webrtc::RtpPacket **a2, uint64_t a3)
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 3);
  if (v7 != *(a1 + 56) || (*(v6 + 32) & 1) != 0 && *(v6 + 15) == 2)
  {
    if (*(a1 + 64) != 1 || v7 != *(a1 + 60))
    {
      goto LABEL_12;
    }

    v9 = (a1 + 118);
    *(a1 + 116) = *(v6 + 2);
  }

  else
  {
    v9 = (a1 + 114);
    *(a1 + 112) = *(v6 + 2);
  }

  *v9 = 1;
LABEL_12:
  v15 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v16 = *a2;
  if (*(a1 + 97) == 1 && (*(v16 + 32) & 1) != 0 && *(v16 + 15) == 1)
  {
    webrtc::RtpSequenceNumberMap::InsertPacket(*(a1 + 464), *(v16 + 2), (*(v16 + 2) - *(a1 + 148)) | (*(v16 + 184) << 32) | (*v16 << 40));
    v16 = *a2;
  }

  v17 = *(a1 + 104);
  if (v17 && *(v16 + 186) == 1)
  {
    LOBYTE(v114) = 0;
    v116 = 0;
    if (*(a1 + 456))
    {
      v114 = *(a1 + 432);
      v115 = *(a1 + 448);
      v116 = 1;
      *(a1 + 456) = 0;
      (*(*v17 + 48))(v17, &v114, &v114 | 0xC);
      v16 = *a2;
    }

    if (*(v16 + 187) == 1)
    {
      v18 = *v16;
      v19 = *(v16 + 1);
      v20 = *(v16 + 2);
      *&v117[47] = *(v16 + 47);
      *&v117[16] = v19;
      *&v117[32] = v20;
      *v117 = v18;
      v119 = 0;
      v120 = 0;
      __p = 0;
      v22 = *(v16 + 7);
      v21 = *(v16 + 8);
      if (v21 != v22)
      {
        if (((v21 - v22) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v23 = *(v16 + 11);
      v121 = *(v16 + 10);
      v122 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 24), 1u, memory_order_relaxed);
      }

      v24 = *(v16 + 6);
      v25 = *(v16 + 7);
      v26 = *(v16 + 8);
      v27 = *(v16 + 9);
      *(v126 + 13) = *(v16 + 157);
      v125 = v26;
      v126[0] = v27;
      v123 = v24;
      v124 = v25;
      v28 = *(v16 + 22);
      v127 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1u, memory_order_relaxed);
      }

      v29 = *(v16 + 184);
      v129 = *(v16 + 200);
      v128 = v29;
      v30 = *a2;
      v31 = *(*a2 + 11);
      v32 = *a2;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 24), 1u, memory_order_relaxed);
        v32 = *a2;
      }

      v117[1] = *(*(v31 + 16) + *(v30 + 12) + *(v32 + 2));
      v33 = *(*(v122 + 16) + v123 + 1) & 0x80 | v117[1];
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(&v122, *(v122 + 8) - v123);
      *(*(v122 + 16) + v123 + 1) = v33;
      *&v117[24] = *(*a2 + 3) - 1;
      webrtc::CopyOnWriteBuffer::SetSize(&v122, *&v117[16] + *&v117[24]);
      v34 = *&v117[16];
      v35 = v122;
      if (v122)
      {
        webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(&v122, *(v122 + 8) - v123);
        v35 = *(v122 + 16) + v123;
      }

      v36 = *a2;
      v37 = *(*a2 + 11);
      if (v37)
      {
        v37 = *(v37 + 16) + *(v36 + 12);
        v38 = *(v36 + 2);
        v39 = *(v36 + 3);
        v40 = v37 + v38;
        v41 = v39 == 0;
        if (!v39)
        {
          v40 = 0;
        }
      }

      else
      {
        v38 = *(v36 + 2);
        v39 = *(v36 + 3);
        v41 = v39 == 0;
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0;
        }
      }

      v42 = (v40 + 1);
      v43 = v37 + v38;
      if (v41)
      {
        v43 = 0;
      }

      v44 = (v43 + v39);
      v45 = v44 - v42;
      if (v44 != v42)
      {
        memmove((v35 + v34), v42, v45);
      }

      (*(**(a1 + 104) + 56))(*(a1 + 104), v117, v45);
      if (atomic_fetch_add((v31 + 24), 0xFFFFFFFF) == 1)
      {
        v46 = *(v31 + 16);
        *(v31 + 16) = 0;
        if (v46)
        {
          MEMORY[0x2743DA520](v46, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v31, 0x1010C40EE34DA14);
      }

      v47 = v127;
      if (v127 && atomic_fetch_add((v127 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v47 + 8))(v47);
      }

      v48 = v122;
      if (v122 && atomic_fetch_add((v122 + 24), 0xFFFFFFFF) == 1)
      {
        v49 = *(v48 + 16);
        *(v48 + 16) = 0;
        if (v49)
        {
          MEMORY[0x2743DA520](v49, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v48, 0x1010C40EE34DA14);
      }

      if (__p)
      {
        v119 = __p;
        operator delete(__p);
      }
    }

    else
    {
      (*(**(a1 + 104) + 56))(*(a1 + 104), v16);
    }

    v16 = *a2;
  }

  v50 = *(v16 + 33);
  if (*(v16 + 33))
  {
    v51 = *(v16 + 7);
    v52 = *(v16 + 8);
    if (v51 != v52)
    {
      while (*v51 != v50)
      {
        v51 += 4;
        if (v51 == v52)
        {
          goto LABEL_63;
        }
      }

      v61 = *(v16 + 14);
      if (v61 >= 1)
      {
        v62 = 0x7FFFFFFFFFFFFFFFLL;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL && ((v62 = 0x8000000000000000, v15 == 0x8000000000000000) || v61 == 0x7FFFFFFFFFFFFFFFLL || (v62 = v15 - v61, v15 - v61 < 0)))
        {
          v98 = -v62;
          v99 = v98 / 0x3E8;
          if (v98 % 0x3E8 <= 0x1F4)
          {
            v100 = 0;
          }

          else
          {
            v100 = -1;
          }

          v63 = v100 - v99;
          if (v50 < 0xF)
          {
LABEL_162:
            RawExtension = webrtc::RtpPacket::AllocateRawExtension(v16, v50, 3, v10, v11, v12, v13, v14);
            if (v102)
            {
              *RawExtension = (90 * v63) >> 16;
              RawExtension[1] = (90 * v63) >> 8;
              RawExtension[2] = 90 * v63;
            }

            goto LABEL_63;
          }
        }

        else
        {
          if (v62 % 0x3E8 <= 0x1F3)
          {
            v63 = v62 / 0x3E8;
          }

          else
          {
            v63 = v62 / 0x3E8 + 1;
          }

          if (v50 < 0xF)
          {
            goto LABEL_162;
          }
        }

        if ((*(v16 + 54) & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_162;
      }
    }
  }

LABEL_63:
  v53 = *a2;
  v54 = *(*a2 + 37);
  if (*(*a2 + 37))
  {
    v55 = *(v53 + 7);
    v56 = *(v53 + 8);
    if (v55 != v56)
    {
      while (*v55 != v54)
      {
        v55 += 4;
        if (v55 == v56)
        {
          goto LABEL_67;
        }
      }

      if (*(a1 + 512) == 1)
      {
        v64 = (*(**(a1 + 16) + 24))(*(a1 + 16), v15);
        v65 = *(v53 + 37);
        if (*(v53 + 37))
        {
          if ((v65 < 0xF) | *(v53 + 54) & 1)
          {
            v66 = v64;
            v67 = webrtc::RtpPacket::AllocateRawExtension(v53, v65, 3, v10, v11, v12, v13, v14);
            if (v68)
            {
              v69 = v66 >> 14;
              *v67 = v66 >> 30;
              v70 = v66 >> 22;
LABEL_136:
              v67[1] = v70;
              v67[2] = v69;
            }
          }
        }
      }

      else if (v54 < 0xF || (*(v53 + 54) & 1) != 0)
      {
        v67 = webrtc::RtpPacket::AllocateRawExtension(*a2, v54, 3, v10, v11, v12, v13, v14);
        if (v92)
        {
          v69 = ((v15 % 64000000) << 18) / 1000000;
          *v67 = BYTE2(v69);
          v70 = v69 >> 8;
          goto LABEL_136;
        }
      }
    }
  }

LABEL_67:
  v57 = *a2;
  v58 = *(*a2 + 40);
  if (*(*a2 + 40))
  {
    v59 = *(v57 + 7);
    v60 = *(v57 + 8);
    if (v59 != v60)
    {
      while (*v59 != v58)
      {
        v59 += 4;
        if (v59 == v60)
        {
          goto LABEL_92;
        }
      }

      if (*(v57 + 40))
      {
        v71 = *(v57 + 19);
        if (v58 < 0xF || (*(v57 + 54) & 1) != 0)
        {
          v72 = webrtc::RtpPacket::AllocateRawExtension(v57, v58, 2, v10, v11, v12, v13, v14);
          if (v73)
          {
            *v72 = bswap32(v71) >> 16;
          }
        }
      }
    }
  }

LABEL_92:
  v74 = *a2;
  v75 = *(*a2 + 45);
  if (!*(*a2 + 45))
  {
    goto LABEL_96;
  }

  v76 = *(v74 + 7);
  v77 = *(v74 + 8);
  if (v76 == v77)
  {
    goto LABEL_96;
  }

  while (*v76 != v75)
  {
    v76 += 4;
    if (v76 == v77)
    {
      goto LABEL_96;
    }
  }

  v85 = *(v74 + 14);
  v87 = v15 == 0x7FFFFFFFFFFFFFFFLL || v85 == 0x8000000000000000;
  if (*(a1 + 76) == 1)
  {
    if (v87)
    {
      v88 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v88 = 0x8000000000000000;
      if (v15 == 0x8000000000000000 || v85 == 0x7FFFFFFFFFFFFFFFLL || (v88 = v15 - v85, v15 - v85 < 0))
      {
        v103 = -v88;
        v104 = -v88 / 0x3E8uLL;
        if (v103 % 0x3E8 <= 0x1F4)
        {
          v105 = 0;
        }

        else
        {
          v105 = -1;
        }

        v94 = v105 - v104;
        v95 = ((v105 - v104) >> 63) | (2 * ((v105 - v104) >= 0x10000));
        if (v95 <= 1)
        {
          goto LABEL_146;
        }

LABEL_168:
        if (v95 == 2)
        {
          LOBYTE(v94) = -1;
          LOBYTE(v96) = -1;
LABEL_177:
          if (v75 < 0xF || (*(v74 + 54) & 1) != 0)
          {
            v109 = webrtc::RtpPacket::AllocateRawExtension(v74, v75, 13, v10, v11, v12, v13, v14);
            if (v110)
            {
              v111 = 12;
              v112 = 11;
LABEL_186:
              *(v109 + v112) = v96;
              *(v109 + v111) = v94;
              goto LABEL_96;
            }
          }

          goto LABEL_96;
        }

LABEL_191:
        webrtc::webrtc_checks_impl::UnreachableCodeReached(v74);
      }
    }

    if (v88 % 0x3E8 <= 0x1F3)
    {
      v94 = v88 / 0x3E8;
    }

    else
    {
      v94 = v88 / 0x3E8 + 1;
    }

    v95 = (v94 >> 63) | (2 * (v94 >= 0x10000));
    if (v95 <= 1)
    {
LABEL_146:
      if (v95)
      {
        LOBYTE(v94) = 0;
        LOBYTE(v96) = 0;
      }

      else
      {
        v96 = v94 >> 8;
      }

      goto LABEL_177;
    }

    goto LABEL_168;
  }

  if (v87)
  {
    v93 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v93 = 0x8000000000000000;
    if (v15 == 0x8000000000000000 || v85 == 0x7FFFFFFFFFFFFFFFLL || (v93 = v15 - v85, v15 - v85 < 0))
    {
      v106 = -v93;
      v107 = -v93 / 0x3E8uLL;
      if (v106 % 0x3E8 <= 0x1F4)
      {
        v108 = 0;
      }

      else
      {
        v108 = -1;
      }

      v94 = v108 - v107;
      v97 = ((v108 - v107) >> 63) | (2 * ((v108 - v107) >= 0x10000));
      if (v97 <= 1)
      {
        goto LABEL_155;
      }

      goto LABEL_174;
    }
  }

  if (v93 % 0x3E8 <= 0x1F3)
  {
    v94 = v93 / 0x3E8;
  }

  else
  {
    v94 = v93 / 0x3E8 + 1;
  }

  v97 = (v94 >> 63) | (2 * (v94 >= 0x10000));
  if (v97 <= 1)
  {
LABEL_155:
    if (v97)
    {
      LOBYTE(v94) = 0;
      LOBYTE(v96) = 0;
    }

    else
    {
      v96 = v94 >> 8;
    }

    goto LABEL_182;
  }

LABEL_174:
  if (v97 != 2)
  {
    goto LABEL_191;
  }

  LOBYTE(v94) = -1;
  LOBYTE(v96) = -1;
LABEL_182:
  if (v75 < 0xF || (*(v74 + 54) & 1) != 0)
  {
    v109 = webrtc::RtpPacket::AllocateRawExtension(v74, v75, 13, v10, v11, v12, v13, v14);
    if (v113)
    {
      v111 = 8;
      v112 = 7;
      goto LABEL_186;
    }
  }

LABEL_96:
  v78 = *a2;
  *a2 = 0;
  *v117 = v78;
  *&v117[8] = *a3;
  *&v117[24] = *(a3 + 16);
  *&v117[32] = v15;
  if (*(a1 + 40) != 1 || (*(a1 + 96) & 1) != 0)
  {
    webrtc::RtpSenderEgress::CompleteSendPacket(a1, v117, 0, v10, v11, v12, v13, v14);
    goto LABEL_99;
  }

  v83 = *(a1 + 488);
  v84 = *(a1 + 496);
  if (v83 >= v84)
  {
    v89 = *(a1 + 480);
    v90 = 0xCCCCCCCCCCCCCCCDLL * ((v83 - v89) >> 3) + 1;
    if (v90 > 0x666666666666666)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v91 = 0xCCCCCCCCCCCCCCCDLL * ((v84 - v89) >> 3);
    if (2 * v91 > v90)
    {
      v90 = 2 * v91;
    }

    if (v91 >= 0x333333333333333)
    {
      v90 = 0x666666666666666;
    }

    if (v90)
    {
      if (v90 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_187:
    __break(1u);
  }

  if (!v83)
  {
    goto LABEL_187;
  }

  *v83 = v78;
  *(v83 + 8) = *&v117[8];
  *(v83 + 24) = *&v117[24];
  *(a1 + 488) = v83 + 40;
  v78 = 0;
LABEL_99:
  *v117 = 0;
  if (v78)
  {
    v79 = *(v78 + 22);
    if (v79 && atomic_fetch_add(v79 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v79 + 8))(v79);
    }

    v80 = *(v78 + 11);
    if (v80 && atomic_fetch_add((v80 + 24), 0xFFFFFFFF) == 1)
    {
      v81 = *(v80 + 16);
      *(v80 + 16) = 0;
      if (v81)
      {
        MEMORY[0x2743DA520](v81, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v80, 0x1010C40EE34DA14);
    }

    v82 = *(v78 + 7);
    if (v82)
    {
      *(v78 + 8) = v82;
      operator delete(v82);
    }

    MEMORY[0x2743DA540](v78, 0x1020C4060F6C936);
  }
}

void webrtc::RtpSenderEgress::RtpSenderEgress(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a2;
  *a1 = *a2;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  }

  v12 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v12;
  *(a1 + 40) = *(a3 + 224);
  *(a1 + 56) = *(a3 + 180);
  *(a1 + 60) = *(a3 + 184);
  v13 = *(a3 + 112);
  if (v13)
  {
    v14 = (*(*v13 + 24))(v13);
    *(a1 + 68) = v14;
    *(a1 + 72) = BYTE4(v14);
  }

  else
  {
    *(a1 + 68) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 76) = *(a3 + 156);
  *(a1 + 80) = a4;
  *(a1 + 88) = *(a3 + 16);
  *(a1 + 96) = *a3;
  *(a1 + 97) = *(a3 + 192);
  *(a1 + 104) = *(a3 + 112);
  *(a1 + 112) = 0;
  *(a1 + 114) = 0;
  *(a1 + 116) = 0;
  *(a1 + 118) = 0;
  *(a1 + 120) = *(a3 + 128);
  *(a1 + 128) = *(a3 + 144);
  *(a1 + 136) = *(a3 + 120);
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 288) = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v18 = 0;
  v19 = -1;
  v20 = 0;
  v21 = 0x45FA000000000000;
  v22 = vdupq_n_s64(0x3E8uLL);
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  operator new();
}

void webrtc::RtpSenderEgress::~RtpSenderEgress(webrtc::RtpSenderEgress *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 59) = 0;
  }

  v3 = *(this + 63);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 60);
  if (v4)
  {
    v5 = *(this + 61);
    v6 = *(this + 60);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 5);
        v5 -= 5;
        v7 = v8;
        *v5 = 0;
        if (v8)
        {
          v9 = v7[22];
          if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v9 + 8))(v9);
          }

          v10 = v7[11];
          if (v10 && atomic_fetch_add((v10 + 24), 0xFFFFFFFF) == 1)
          {
            v11 = *(v10 + 16);
            *(v10 + 16) = 0;
            if (v11)
            {
              MEMORY[0x2743DA520](v11, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v10, 0x1010C40EE34DA14);
          }

          v12 = v7[7];
          if (v12)
          {
            v7[8] = v12;
            operator delete(v12);
          }

          MEMORY[0x2743DA540](v7, 0x1020C4060F6C936);
        }
      }

      while (v5 != v4);
      v6 = *(this + 60);
    }

    *(this + 61) = v4;
    operator delete(v6);
  }

  v13 = *(this + 59);
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v14 = *(this + 58);
  *(this + 58) = 0;
  if (v14)
  {
    std::deque<webrtc::RtpSequenceNumberMap::Association>::~deque[abi:sn200100]((v14 + 8));
    MEMORY[0x2743DA540](v14, 0x1080C40E0B7A938);
  }

  v15 = *(this + 51);
  if (v15)
  {
    v16 = *(this + 52);
    v17 = *(this + 51);
    if (v16 != v15)
    {
      do
      {
        v16 = std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](v16 - 12);
      }

      while (v16 != v15);
      v17 = *(this + 51);
    }

    *(this + 52) = v15;
    operator delete(v17);
  }

  v18 = *this;
  if (*this)
  {
    if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 8))(v18);
    }
  }
}

void webrtc::RtpSenderEgress::CompleteSendPacket(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (!*a2)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_egress.cc", 276, "packet", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v33);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v34 = -1;
  v35 = 0;
  v36 = 0;
  BYTE2(v35) = *(a1 + 145);
  v11 = *(v8 + 120);
  v12 = *(v8 + 128);
  if ((v12 & 1) == 0 || v11)
  {
    LOBYTE(v35) = v12 & (v11 == 1);
    v13 = *(v8 + 40);
    if (!*(v8 + 40))
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOBYTE(v35) = 1;
    v13 = *(v8 + 40);
    if (!*(v8 + 40))
    {
      goto LABEL_15;
    }
  }

  v14 = *(v8 + 56);
  v15 = *(v8 + 64);
  if (v14 != v15)
  {
    while (*v14 != v13)
    {
      v14 += 4;
      if (v14 == v15)
      {
        goto LABEL_15;
      }
    }

    v16 = *(v8 + 88);
    if (v16)
    {
      v16 = *(v16 + 16) + *(v8 + 96);
    }

    if (v14[1] == 2)
    {
      v34 = (*(v16 + *(v14 + 1)) << 8) | *(v16 + *(v14 + 1) + 1);
      *(&v35 + 1) = 257;
      goto LABEL_17;
    }
  }

LABEL_15:
  if (*(v8 + 160))
  {
    v34 = *(v8 + 152);
  }

LABEL_17:
  v18 = v11 == 4 || v11 == 2;
  if ((v12 & v18 & 1) == 0)
  {
    v19 = *(a1 + 120);
    if (v19)
    {
      if ((*(v8 + 112) + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = a3;
        (*(*v19 + 16))(v19);
        a3 = v20;
        v8 = *a2;
      }
    }
  }

  HIBYTE(v35) = *(v8 + 188);
  if (*(a1 + 40) == 1)
  {
    LOBYTE(v36) = (*(a1 + 96) ^ 1) & 1;
    HIBYTE(v36) = a3;
    v21 = *(a1 + 88);
    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
    LOBYTE(v36) = 0;
    HIBYTE(v36) = a3;
    v21 = *(a1 + 88);
    if (!v21)
    {
      goto LABEL_38;
    }
  }

  v22 = *(v8 + 88);
  if (v22)
  {
    v22 = *(v22 + 16) + *(v8 + 96);
  }

  v23 = *(v8 + 24) + *(v8 + 16) + *(v8 + 2);
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if ((**v21)(v21, v24, v23, &v34))
  {
    operator new();
  }

LABEL_38:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    v32 = *a2;
    if (v35 != 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_egress.cc");
    v32 = *a2;
    if (v35 != 1)
    {
      goto LABEL_44;
    }
  }

  if (*(v32 + 168) == 1)
  {
    operator new();
  }

LABEL_44:
  if ((*(v32 + 170) & 0x10000) != 0)
  {
    webrtc::RtpPacketHistory::MarkPacketAsSent(*(a1 + 80), *(v32 + 170));
  }
}

void webrtc::RtpSenderEgress::OnBatchComplete(webrtc::RtpSenderEgress *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 60);
  v10 = *(this + 61);
  if (v9 == v10)
  {
LABEL_5:
    while (v10 != v9)
    {
      v13 = *(v10 - 5);
      v10 -= 5;
      v12 = v13;
      *v10 = 0;
      if (v13)
      {
        v14 = v12[22];
        if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = v12[11];
        if (v15 && atomic_fetch_add((v15 + 24), 0xFFFFFFFF) == 1)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v16)
          {
            MEMORY[0x2743DA520](v16, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v15, 0x1010C40EE34DA14);
        }

        v17 = v12[7];
        if (v17)
        {
          v12[8] = v17;
          operator delete(v17);
        }

        MEMORY[0x2743DA540](v12, 0x1020C4060F6C936);
      }
    }

    *(this + 61) = v9;
  }

  else
  {
    while (1)
    {
      v11 = *(this + 61);
      if (*(this + 60) == v11)
      {
        break;
      }

      webrtc::RtpSenderEgress::CompleteSendPacket(this, v9, v9 == (v11 - 40), a4, a5, a6, a7, a8);
      v9 += 5;
      if (v9 == v10)
      {
        v9 = *(this + 60);
        v10 = *(this + 61);
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

webrtc::RateStatistics *webrtc::RtpSenderEgress::GetSendRates@<X0>(webrtc::RtpSenderEgress *this@<X0>, Timestamp a2@<0:X1>, webrtc::RateStatistics **a3@<X8>)
{
  v6 = (this + 408);
  result = *(this + 51);
  if (v6[1] == result || ((v8 = a2.var0 / 0x3E8, a2.var0 % 0x3E8 <= 0x1F3) ? (v9 = a2.var0 / 0x3E8) : (v9 = v8 + 1), -a2.var0 % 0x3E8uLL <= 0x1F4 ? (v10 = 0) : (v10 = -1), (v11 = v10 - -a2.var0 / 0x3E8uLL, a2.var0 < 0) ? (v12 = v11) : (v12 = v9), (result = webrtc::RateStatistics::Rate(result, v12), (v13 & 1) == 0) ? (v14 = 0) : (v14 = result), (*a3 = v14, v15 = *(this + 51), 0xAAAAAAAAAAAAAAABLL * ((*(this + 52) - v15) >> 5) < 2) || (a2.var0 - 1000 * v8 <= 0x1F3 ? (v16 = v8) : (v16 = v8 + 1), -a2.var0 % 0x3E8uLL <= 0x1F4 ? (v17 = 0) : (v17 = -1), (v18 = v17 - -a2.var0 / 0x3E8uLL, a2.var0 < 0) ? (v19 = v18) : (v19 = v16), (result = webrtc::RateStatistics::Rate((v15 + 96), v19), (v20 & 1) == 0) ? (v21 = 0) : (v21 = result), (a3[1] = v21, v22 = *(this + 51), 0xAAAAAAAAAAAAAAABLL * ((*(this + 52) - v22) >> 5) < 3) || (a2.var0 - 1000 * v8 <= 0x1F3 ? (v23 = v8) : (v23 = v8 + 1), -a2.var0 % 0x3E8uLL <= 0x1F4 ? (v24 = 0) : (v24 = -1), (v25 = v24 - -a2.var0 / 0x3E8uLL, a2.var0 < 0) ? (v26 = v25) : (v26 = v23), (result = webrtc::RateStatistics::Rate((v22 + 192), v26), (v27 & 1) == 0) ? (v28 = 0) : (v28 = result), (a3[2] = v28, v29 = *(this + 51), 0xAAAAAAAAAAAAAAABLL * ((*(this + 52) - v29) >> 5) < 4) || (a2.var0 - 1000 * v8 <= 0x1F3 ? (v30 = v8) : (v30 = v8 + 1), -a2.var0 % 0x3E8uLL <= 0x1F4 ? (v31 = 0) : (v31 = -1), (v32 = v31 - -a2.var0 / 0x3E8uLL, a2.var0 < 0) ? (v33 = v32) : (v33 = v30), (result = webrtc::RateStatistics::Rate((v29 + 288), v33), (v34 & 1) == 0) ? (v35 = 0) : (v35 = result), a3[3] = v35, v36 = *(this + 51), 0xAAAAAAAAAAAAAAABLL * ((*(this + 52) - v36) >> 5) < 5)))))
  {
    __break(1u);
  }

  else
  {
    if (a2.var0 < 0)
    {
      if (-a2.var0 % 0x3E8uLL <= 0x1F4)
      {
        v38 = 0;
      }

      else
      {
        v38 = -1;
      }

      v37 = v38 - -a2.var0 / 0x3E8uLL;
    }

    else if (a2.var0 - 1000 * v8 <= 0x1F3)
    {
      v37 = v8;
    }

    else
    {
      v37 = v8 + 1;
    }

    result = webrtc::RateStatistics::Rate((v36 + 384), v37);
    if (v39)
    {
      v40 = result;
    }

    else
    {
      v40 = 0;
    }

    a3[4] = v40;
  }

  return result;
}

uint64_t webrtc::RtpSenderEgress::GetSentRtpPacketInfos@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  if (*(result + 97))
  {
    if (a2)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::RtpSenderEgress::NonPacedPacketSender::EnqueuePackets(std::vector<std::unique_ptr<webrtc::RtpPacketToSend>>)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  *__p = *(v1 + 1);
  v13 = v1[3];
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  (*(*v2 + 16))(v2, __p);
  v3 = __p[0];
  if (__p[0])
  {
    v4 = __p[1];
    v5 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = v6[22];
          if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v8 + 8))(v8);
          }

          v9 = v6[11];
          if (v9 && atomic_fetch_add((v9 + 24), 0xFFFFFFFF) == 1)
          {
            v10 = *(v9 + 16);
            *(v9 + 16) = 0;
            if (v10)
            {
              MEMORY[0x2743DA520](v10, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v9, 0x1010C40EE34DA14);
          }

          v11 = v6[7];
          if (v11)
          {
            v6[8] = v11;
            operator delete(v11);
          }

          MEMORY[0x2743DA540](v6, 0x1020C4060F6C936);
        }
      }

      while (v4 != v3);
      v5 = __p[0];
    }

    __p[1] = v3;
    operator delete(v5);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RtpSenderEgress::NonPacedPacketSender::EnqueuePackets(std::vector<std::unique_ptr<webrtc::RtpPacketToSend>>)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 8);
        if (v5 != v4)
        {
          do
          {
            v8 = *--v5;
            v7 = v8;
            *v5 = 0;
            if (v8)
            {
              v9 = v7[22];
              if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 8))(v9);
              }

              v10 = v7[11];
              if (v10 && atomic_fetch_add((v10 + 24), 0xFFFFFFFF) == 1)
              {
                v11 = *(v10 + 16);
                *(v10 + 16) = 0;
                if (v11)
                {
                  MEMORY[0x2743DA520](v11, 0x1000C8077774924);
                }

                MEMORY[0x2743DA540](v10, 0x1010C40EE34DA14);
              }

              v12 = v7[7];
              if (v12)
              {
                v7[8] = v12;
                operator delete(v12);
              }

              MEMORY[0x2743DA540](v7, 0x1020C4060F6C936);
            }
          }

          while (v5 != v4);
          v6 = *(v3 + 8);
        }

        *(v3 + 16) = v4;
        operator delete(v6);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::RtpSenderEgress::RtpSenderEgress(webrtc::Environment const&,webrtc::RtpRtcpInterface::Configuration const&,webrtc::RtpPacketHistory *)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2.var0 = (*(**(*a1 + 16) + 16))(*(*a1 + 16));
  webrtc::RtpSenderEgress::GetSendRates(v1, v2, &v16);
  if (v16 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  v3 = 0x8000000000000000;
  v4 = v17 == 0x8000000000000000 || v16 == 0x8000000000000000;
  v5 = v4 ? 0x8000000000000000 : (v16 + v17);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  v7 = v18 == 0x8000000000000000 || v5 == 0x8000000000000000;
  v8 = v5 + v18;
  if (!v7)
  {
    v3 = v8;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_23:
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = v19 == 0x8000000000000000 || v3 == 0x8000000000000000;
    v13 = v19 + v3;
    if (v12)
    {
      v13 = 0x8000000000000000;
    }

    v14 = v20 == 0x8000000000000000 || v13 == 0x8000000000000000;
    v15 = v20 + v13;
    if (v14)
    {
      v15 = 0;
    }

    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = -1;
    }

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = v15;
    }
  }

  (*(**(v1 + 136) + 16))(*(v1 + 136), v10, v18, *(v1 + 56));
  return 1000000;
}

uint64_t webrtc::RTPSenderVideo::RTPSenderVideo(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829D230;
  *(a1 + 8) = vextq_s8(*a2, *a2, 8uLL);
  *(a1 + 24) = 0;
  if (*(a2 + 41))
  {
    v4 = 6;
  }

  else
  {
    v4 = 10;
  }

  *(a1 + 40) = v4;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 2;
  *(a1 + 392) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  v5 = *(a2 + 56);
  *v25.__opaque = 0;
  v26 = 0;
  v27 = 0;
  v29 = 6;
  if (v28 <= "min_ms" && v28 + 6 > "min_ms" || (strcpy(v28, "min_ms"), v30 = 0, v25.__sig = &unk_2882938B0, v31 = 0, v17 = 0, v18 = 0, v19 = 0, v21 = 6, v20 <= "max_ms") && v20 + 6 > "max_ms")
  {
    __break(1u);
  }

  strcpy(v20, "max_ms");
  v22 = 0;
  v16 = &unk_2882938B0;
  v23 = 0;
  v24[0] = &v16;
  v24[1] = &v25;
  (*(*v5 + 16))(__p);
  if ((v15 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v7 = v15;
  }

  else
  {
    v7 = __p[1];
  }

  webrtc::ParseFieldTrial(v24, 2, v6, v7);
  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (BYTE4(v23) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (BYTE4(v23) != 1)
  {
LABEL_21:
    *(a1 + 672) = 0;
    *(a1 + 688) = 0;
    v16 = &unk_288293910;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (BYTE4(v31) != 1)
  {
    goto LABEL_21;
  }

  v8.var0 = 1000 * v31;
  v9.var0 = 1000 * v23;
  webrtc::VideoPlayoutDelay::VideoPlayoutDelay((a1 + 672), v8, v9);
  *(a1 + 688) = 1;
  v16 = &unk_288293910;
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_22:
  operator delete(v20[0]);
LABEL_23:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v25.__sig = &unk_288293910;
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (*v25.__opaque)
  {
    v26 = *v25.__opaque;
    operator delete(*v25.__opaque);
  }

  pthread_mutexattr_init(&v25);
  pthread_mutexattr_setpolicy_np(&v25, 3);
  pthread_mutex_init((a1 + 696), &v25);
  pthread_mutexattr_destroy(&v25);
  *(a1 + 760) = *(a2 + 44);
  *(a1 + 768) = *(a2 + 16);
  *(a1 + 776) = *(a2 + 24);
  pthread_mutexattr_init(&v25);
  pthread_mutexattr_setpolicy_np(&v25, 3);
  pthread_mutex_init((a1 + 784), &v25);
  pthread_mutexattr_destroy(&v25);
  *(a1 + 896) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 904) = -1;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0x45FA000000000000;
  *(a1 + 928) = vdupq_n_s64(0x3E8uLL);
  *(a1 + 952) = 0u;
  *(a1 + 944) = a1 + 952;
  *(a1 + 968) = 0;
  pthread_mutexattr_init(&v25);
  pthread_mutexattr_setpolicy_np(&v25, 3);
  pthread_mutex_init((a1 + 976), &v25);
  pthread_mutexattr_destroy(&v25);
  *(a1 + 1040) = *(a2 + 32);
  *(a1 + 1048) = *(a2 + 40);
  (*(**(a2 + 56) + 16))(&v25);
  v10 = HIBYTE(v26);
  if (v26 < 0)
  {
    v10 = *v25.__opaque;
  }

  if (v10 < 8)
  {
    v11 = 1;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  sig = v25.__sig;
  if (v26 >= 0)
  {
    sig = &v25;
  }

  v11 = *sig != 0x64656C6261736944;
  if (SHIBYTE(v26) < 0)
  {
LABEL_37:
    operator delete(v25.__sig);
  }

LABEL_38:
  *(a1 + 1049) = v11;
  *(a1 + 1056) = *a2;
  *(a1 + 1064) = 0x8000000000000000;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  if (*(a2 + 64))
  {
    operator new();
  }

  *(a1 + 1144) = 0;
  return a1;
}

void webrtc::RTPSenderVideo::~RTPSenderVideo(webrtc::RTPSenderVideo *this)
{
  *this = &unk_28829D230;
  v2 = *(this + 143);
  if (v2)
  {
    (*(**(v2 + 80) + 64))(*(v2 + 80), *(v2 + 88));
    v3 = *(v2 + 80);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(v2 + 80) = 0;
    pthread_mutex_lock((v2 + 8));
    *(v2 + 72) = 0;
    pthread_mutex_unlock((v2 + 8));
    v4 = *(this + 143);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  pthread_mutex_destroy((this + 976));
  std::__tree<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::__map_value_compare<int,std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>>>::destroy(*(this + 119));
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 106);
  pthread_mutex_destroy((this + 784));
  pthread_mutex_destroy((this + 696));
  if (*(this + 632) == 1 && *(this + 50))
  {
    absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(this + 50);
  }

  if (*(this + 376) == 1 && *(this + 18))
  {
    absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(this + 18);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    webrtc::FrameDependencyStructure::~FrameDependencyStructure(v5);
    MEMORY[0x2743DA540]();
  }
}

{
  webrtc::RTPSenderVideo::~RTPSenderVideo(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RTPSenderVideo::SetVideoStructureInternal(webrtc::RTPSenderVideo *this, const webrtc::FrameDependencyStructure *a2)
{
  result = *(this + 16);
  if (a2)
  {
    if (!result || (result = webrtc::operator==(result, a2), (result & 1) == 0))
    {
      operator new();
    }
  }

  else
  {
    *(this + 16) = 0;
    if (result)
    {
      webrtc::FrameDependencyStructure::~FrameDependencyStructure(result);

      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

uint64_t webrtc::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = (2 * v2) & 0x7FFFFFFFFFFFFFFCLL;
  if (v4 != ((2 * v3) & 0x7FFFFFFFFFFFFFFCLL))
  {
    return 0;
  }

  if (v3)
  {
    v6 = *(a2 + 24);
  }

  else
  {
    v6 = (a2 + 24);
  }

  if (v2)
  {
    v8 = *(a1 + 24);
  }

  else
  {
    v8 = (a1 + 24);
  }

  if (memcmp(v8, v6, v4))
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 64);
  if ((v11 & 1) == 0)
  {
    v10 = (a1 + 72);
  }

  v12 = (a2 + 72);
  v13 = *(a2 + 64);
  if (v13)
  {
    v12 = *(a2 + 72);
  }

  if (v11 >> 1 != v13 >> 1)
  {
    return 0;
  }

  v14 = a1;
  v15 = a2;
  v16 = &v10[2 * (v11 >> 1)];
  v17 = &v12[2 * (v13 >> 1)];
  if (v11 >= 2 && v13 >= 2)
  {
    while (*v10 == *v12 && v10[1] == v12[1])
    {
      v10 += 2;
      v12 += 2;
      if (v10 == v16 || v12 == v17)
      {
        goto LABEL_28;
      }
    }

    return 0;
  }

LABEL_28:
  result = 0;
  if (v10 == v16 && v12 == v17)
  {
    v20 = *(a1 + 104);
    v19 = *(v14 + 112);
    v21 = *(v15 + 104);
    if (v19 - v20 == *(v15 + 112) - v21)
    {
      if (v20 == v19)
      {
        return 1;
      }

      while (*v20 == *v21 && *(v20 + 4) == *(v21 + 4))
      {
        v22 = *(v20 + 16);
        v23 = *(v20 + 8);
        if ((v23 & 1) == 0)
        {
          v22 = (v20 + 16);
        }

        v24 = (v21 + 16);
        v25 = *(v21 + 8);
        if (v25)
        {
          v24 = *(v21 + 16);
        }

        v26 = v23 >> 1;
        v27 = v25 >> 1;
        if (v23 >> 1 != v25 >> 1)
        {
          break;
        }

        if (v23 >= 2 && v25 >= 2)
        {
          v28 = 4 * v26 - 4;
          v29 = 4 * v27 - 4;
          v30 = v22;
          v31 = v24;
          while (*v30 == *v31)
          {
            ++v30;
            ++v31;
            if (v28)
            {
              v28 -= 4;
              v32 = v29;
              v29 -= 4;
              if (v32)
              {
                continue;
              }
            }

            goto LABEL_47;
          }

          return 0;
        }

        v31 = v24;
        v30 = v22;
LABEL_47:
        result = 0;
        if (v30 != &v22[v26] || v31 != &v24[v27])
        {
          return result;
        }

        v33 = *(v20 + 56);
        v34 = *(v21 + 56);
        v35 = (2 * v33) & 0x7FFFFFFFFFFFFFFCLL;
        if (v35 != ((2 * v34) & 0x7FFFFFFFFFFFFFFCLL))
        {
          return 0;
        }

        v36 = (v34 & 1) != 0 ? *(v21 + 64) : (v21 + 64);
        v37 = (v33 & 1) != 0 ? *(v20 + 64) : (v20 + 64);
        if (memcmp(v37, v36, v35))
        {
          return 0;
        }

        v38 = *(v20 + 80);
        v39 = *(v21 + 80);
        v40 = (2 * v38) & 0x7FFFFFFFFFFFFFFCLL;
        if (v40 != ((2 * v39) & 0x7FFFFFFFFFFFFFFCLL))
        {
          return 0;
        }

        v41 = (v39 & 1) != 0 ? *(v21 + 88) : (v21 + 88);
        v42 = (v38 & 1) != 0 ? *(v20 + 88) : (v20 + 88);
        if (memcmp(v42, v41, v40))
        {
          return 0;
        }

        v20 += 104;
        v21 += 104;
        result = 1;
        if (v20 == v19)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void webrtc::RTPSenderVideo::SetVideoLayersAllocation(uint64_t a1, uint64_t a2)
{
  v25[26] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1144);
  if (v2)
  {
    v22 = *a2;
    v23 = *(a2 + 4);
    v3 = v24;
    v4 = *(a2 + 8);
    if (v4)
    {
      v16 = *(a2 + 24);
      v24[1] = *(a2 + 16);
      v24[2] = v16;
      v24[0] = v4;
      *(a2 + 8) = 0;
      webrtc::RTPSenderVideoFrameTransformerDelegate::SetVideoLayersAllocationUnderLock(v2, &v22);
      if (!v24[0])
      {
        return;
      }
    }

    else
    {
      if (v4)
      {
        v5 = v4 >> 1;
        v6 = a2 + 16;
        v7 = v25;
        do
        {
          v8 = *(v6 + 16);
          *(v7 - 1) = *v6;
          *v7 = v8;
          *(v7 + 1) = *(v6 + 32);
          *(v6 + 8) = 0;
          *(v7 + 8) = *(v6 + 48);
          v9 = *(v6 + 52);
          v6 += 56;
          *(v7 + 36) = v9;
          v7 += 7;
          --v5;
        }

        while (v5);
        v4 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
      }

      v24[0] = v4;
      webrtc::RTPSenderVideoFrameTransformerDelegate::SetVideoLayersAllocationUnderLock(v2, &v22);
      if (!v24[0])
      {
        return;
      }
    }

    goto LABEL_17;
  }

  v18 = *a2;
  v19 = *(a2 + 4);
  v3 = v20;
  v10 = *(a2 + 8);
  if (v10)
  {
    v17 = *(a2 + 24);
    v20[1] = *(a2 + 16);
    v20[2] = v17;
    v20[0] = v10;
    *(a2 + 8) = 0;
    webrtc::RTPSenderVideo::SetVideoLayersAllocationInternal(a1, &v18);
    if (!v20[0])
    {
      return;
    }

    goto LABEL_17;
  }

  if (v10)
  {
    v11 = v10 >> 1;
    v12 = a2 + 16;
    v13 = &v21;
    do
    {
      v14 = *(v12 + 16);
      *(v13 - 1) = *v12;
      *v13 = v14;
      *(v13 + 1) = *(v12 + 32);
      *(v12 + 8) = 0;
      *(v13 + 8) = *(v12 + 48);
      v15 = *(v12 + 52);
      v12 += 56;
      *(v13 + 36) = v15;
      v13 += 7;
      --v11;
    }

    while (v11);
    v10 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
  }

  v20[0] = v10;
  webrtc::RTPSenderVideo::SetVideoLayersAllocationInternal(a1, &v18);
  if (v20[0])
  {
LABEL_17:
    absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(v3);
  }
}

void webrtc::RTPSenderVideo::SetVideoLayersAllocationInternal(uint64_t a1, int *a2)
{
  v4 = (a1 + 136);
  v5 = *(a1 + 376);
  if (v5 == 1)
  {
    v6 = *(a2 + 1);
    if ((*(a1 + 144) ^ v6) <= 1)
    {
      v7 = *(a1 + 384);
      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_7:
          v8 = *a2;
          *(a1 + 140) = *(a2 + 4);
          *v4 = v8;
          goto LABEL_42;
        }

        *(a1 + 384) = 1;
      }

      if (v6 >= 2)
      {
        if (*(a1 + 632) == 1)
        {
          v9 = v6 >> 1;
          v10 = *(a1 + 400);
          v11 = v10 >> 1;
          if (v6)
          {
            v15 = *(a2 + 2);
            if (v10)
            {
              v21 = 52;
              while (v11)
              {
                v22 = *(v15 + v21) - *(*(a1 + 408) + v21);
                if (v22 < 0)
                {
                  v22 = *(*(a1 + 408) + v21) - *(v15 + v21);
                }

                if (v22 > 5)
                {
                  goto LABEL_40;
                }

                v21 += 56;
                --v11;
                if (!--v9)
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              v16 = (v15 + 52);
              v17 = (a1 + 460);
              while (v11)
              {
                v18 = *v16 - *v17;
                if (v18 < 0)
                {
                  v18 = *v17 - *v16;
                }

                if (v18 > 5)
                {
                  goto LABEL_40;
                }

                v16 += 56;
                v17 += 56;
                --v11;
                if (!--v9)
                {
                  goto LABEL_41;
                }
              }
            }
          }

          else
          {
            v12 = (a2 + 17);
            if (v10)
            {
              v19 = 52;
              while (v11)
              {
                v20 = *v12 - *(*(a1 + 408) + v19);
                if (v20 < 0)
                {
                  v20 = *(*(a1 + 408) + v19) - *v12;
                }

                if (v20 > 5)
                {
                  goto LABEL_40;
                }

                v12 += 56;
                v19 += 56;
                --v11;
                if (!--v9)
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              v13 = (a1 + 460);
              while (v11)
              {
                v14 = *v12 - *v13;
                if (v14 < 0)
                {
                  v14 = *v13 - *v12;
                }

                if (v14 > 5)
                {
                  goto LABEL_40;
                }

                v12 += 56;
                v13 += 56;
                --v11;
                if (!--v9)
                {
                  goto LABEL_41;
                }
              }
            }
          }
        }

        goto LABEL_108;
      }

      goto LABEL_7;
    }
  }

LABEL_40:
  *(a1 + 384) = 0;
LABEL_41:
  v23 = *a2;
  *(a1 + 140) = *(a2 + 4);
  *v4 = v23;
  if (v5)
  {
LABEL_42:
    if (v4 == a2)
    {
      return;
    }

    v24 = *(a2 + 1);
    if (v24)
    {
      v45 = *(a1 + 144);
      v46 = v45 & 1;
      v47 = (a1 + 152);
      v48 = (a1 + 152);
      if (v45)
      {
        v48 = *v47;
      }

      if (v45 >= 2)
      {
        if (!v48)
        {
          goto LABEL_108;
        }

        v49 = v45 >> 1;
        v50 = v48 + 56 * (v45 >> 1) - 48;
        do
        {
          if (*v50)
          {
            operator delete(*(v50 + 8));
          }

          v50 -= 56;
          --v49;
        }

        while (v49);
        v46 = *(a1 + 144) & 1;
      }

      if (v46)
      {
        operator delete(*v47);
      }

      v56 = *(a2 + 1);
      if (v56)
      {
        *(a1 + 144) = v56;
        v57 = *(a2 + 2);
        *v47 = *(a2 + 1);
        *(a1 + 168) = v57;
        v58 = *(a2 + 3);
        v59 = *(a2 + 4);
        v60 = *(a2 + 6);
        *(a1 + 216) = *(a2 + 5);
        *(a1 + 232) = v60;
        *(a1 + 184) = v58;
        *(a1 + 200) = v59;
        v61 = *(a2 + 7);
        v62 = *(a2 + 8);
        v63 = *(a2 + 10);
        *(a1 + 280) = *(a2 + 9);
        *(a1 + 296) = v63;
        *(a1 + 248) = v61;
        *(a1 + 264) = v62;
        v64 = *(a2 + 11);
        v65 = *(a2 + 12);
        v66 = *(a2 + 14);
        *(a1 + 344) = *(a2 + 13);
        *(a1 + 360) = v66;
        *(a1 + 312) = v64;
        *(a1 + 328) = v65;
        *(a2 + 1) = 0;
        return;
      }

      goto LABEL_108;
    }

    v25 = a2 + 4;
    v26 = v24 >> 1;
    v27 = *(a1 + 144);
    v67 = *(a2 + 1);
    if (v27)
    {
      v29 = *(a1 + 152);
      v28 = *(a1 + 160);
      v30 = v27 >> 1;
      if (v28 >= v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v28 = 4;
      v29 = a1 + 152;
      v30 = v27 >> 1;
      if (v26 <= 4)
      {
LABEL_46:
        if (v30 < v26)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30 - v26;
        }

        if (v30 < v26)
        {
          v32 = 0;
        }

        else
        {
          v32 = v29 + 56 * v26;
        }

        if (v30 < v26)
        {
          v33 = v26 - v30;
        }

        else
        {
          v33 = 0;
        }

        if (v30 < v26)
        {
          v34 = v29 + 56 * v30;
        }

        else
        {
          v34 = 0;
        }

        if (v30 < v26)
        {
          v35 = v30;
        }

        else
        {
          v35 = v26;
        }

        for (; v35; --v35)
        {
          *v29 = *v25;
          if (v29 != v25)
          {
            if (*(v29 + 8))
            {
              operator delete(*(v29 + 16));
            }

            *(v29 + 8) = *(v25 + 1);
            v36 = *(v25 + 2);
            *(v29 + 16) = *(v25 + 1);
            *(v29 + 32) = v36;
            *(v25 + 1) = 0;
          }

          v37 = v25[12];
          *(v29 + 52) = *(v25 + 52);
          *(v29 + 48) = v37;
          v25 += 14;
          v29 += 56;
        }

        if (!v33)
        {
          if (v31)
          {
            goto LABEL_92;
          }

          goto LABEL_106;
        }

        if (v34)
        {
          do
          {
            *v34 = *v25;
            *(v34 + 8) = 0;
            *(v34 + 8) = *(v25 + 1);
            v53 = *(v25 + 2);
            *(v34 + 16) = *(v25 + 1);
            *(v34 + 32) = v53;
            *(v25 + 1) = 0;
            v54 = v25[12];
            *(v34 + 52) = *(v25 + 52);
            *(v34 + 48) = v54;
            v25 += 14;
            v34 += 56;
            --v33;
          }

          while (v33);
          if (v31)
          {
LABEL_92:
            if (v32)
            {
              v55 = v32 + 56 * v31 - 48;
              do
              {
                if (*v55)
                {
                  operator delete(*(v55 + 8));
                }

                v55 -= 56;
                --v31;
              }

              while (v31);
              goto LABEL_106;
            }

            goto LABEL_108;
          }

LABEL_106:
          *(a1 + 144) = *(a1 + 144) & 1 | v67;
          return;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }
    }

    if (2 * v28 <= v26)
    {
      v52 = v26;
    }

    else
    {
      v52 = 2 * v28;
    }

    if (v52 < 0x492492492492493)
    {
      operator new();
    }

LABEL_109:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 144) = 0;
  v38 = *(a2 + 1);
  if (v38)
  {
    v51 = *(a2 + 3);
    *(a1 + 152) = *(a2 + 2);
    *(a1 + 160) = v51;
    *(a1 + 144) = *(a2 + 1) | 1;
    *(a2 + 1) = 0;
  }

  else
  {
    if (v38)
    {
      v39 = a1 + 152;
      v40 = v38 >> 1;
      v41 = a2 + 4;
      do
      {
        *v39 = *v41;
        *(v39 + 8) = 0;
        *(v39 + 8) = *(v41 + 1);
        v42 = *(v41 + 2);
        *(v39 + 16) = *(v41 + 1);
        *(v39 + 32) = v42;
        *(v41 + 1) = 0;
        v43 = v41[12];
        *(v39 + 52) = *(v41 + 52);
        *(v39 + 48) = v43;
        v41 += 14;
        v39 += 56;
        --v40;
      }

      while (v40);
      v44 = *(a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v44 = 0;
    }

    *(a1 + 144) = v44;
  }

  *(a1 + 376) = 1;
}

void webrtc::RTPSenderVideo::SetVideoLayersAllocationAfterTransformation(uint64_t a1, uint64_t a2)
{
  v12[26] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(a2 + 4);
  v2 = *(a2 + 8);
  if (v2)
  {
    v8 = *(a2 + 24);
    v11[1] = *(a2 + 16);
    v11[2] = v8;
    v11[0] = v2;
    *(a2 + 8) = 0;
    webrtc::RTPSenderVideo::SetVideoLayersAllocationInternal(a1, &v9);
    if (!v11[0])
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2)
  {
    v3 = v2 >> 1;
    v4 = a2 + 16;
    v5 = v12;
    do
    {
      v6 = *(v4 + 16);
      *(v5 - 1) = *v4;
      *v5 = v6;
      *(v5 + 1) = *(v4 + 32);
      *(v4 + 8) = 0;
      *(v5 + 8) = *(v4 + 48);
      v7 = *(v4 + 52);
      v4 += 56;
      *(v5 + 36) = v7;
      v5 += 7;
      --v3;
    }

    while (v3);
    v2 = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL;
  }

  v11[0] = v2;
  webrtc::RTPSenderVideo::SetVideoLayersAllocationInternal(a1, &v9);
  if (v11[0])
  {
LABEL_9:
    absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(v11);
  }
}

void webrtc::RTPSenderVideo::AddRtpHeaderExtensions(webrtc::RTPSenderVideo *this, const webrtc::RTPVideoHeader *a2, int a3, uint64_t a4, webrtc::RtpPacketToSend *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v186 = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 284);
  v14 = v13 ^ *(this + 116);
  if (v13 == 1 && (*(this + 116) & 1) != 0)
  {
    if (*(a2 + 216) != *(this + 48) || *(a2 + 217) != *(this + 49) || *(a2 + 218) != *(this + 50) || *(a2 + 55) != *(this + 13) || *(a2 + 56) != *(this + 14) || *(a2 + 57) != *(this + 15))
    {
      v15 = (a2 + 152);
      v16 = 1;
      goto LABEL_14;
    }

    v14 = std::operator==[abi:sn200100]<webrtc::HdrMetadata,webrtc::HdrMetadata>(a2 + 232, this + 64) ^ 1;
  }

  v15 = (a2 + 152);
  v16 = 1;
  if ((v14 & 1) == 0 && *(a2 + 38) != 3)
  {
    v16 = *(this + 120);
  }

LABEL_14:
  if (((v9 ^ 1) & 1) == 0 && (v16 & 1) != 0 && v13)
  {
    v17 = *(a2 + 280) ? 28 : 4;
    v18 = *(a5 + 54);
    if (!*(a2 + 280) || *(a5 + 54))
    {
      v24 = *(a5 + 51);
      if (v24 < 0xF)
      {
        v18 = 1;
      }

      if (*(a5 + 51))
      {
        if (v18)
        {
          RawExtension = webrtc::RtpPacket::AllocateRawExtension(a5, v24, v17, a4, a5, a6, a7, a8);
          if (v26)
          {
            *RawExtension = *(a2 + 216);
            RawExtension[1] = *(a2 + 217);
            RawExtension[2] = *(a2 + 218);
            RawExtension[3] = (4 * *(a2 + 224)) | (16 * *(a2 + 220)) | *(a2 + 57);
            if (*(a2 + 280) == 1)
            {
              if (v26 <= 4)
              {
                v27 = 0;
              }

              else
              {
                v27 = RawExtension + 4;
              }

              if (v26 - 4 >= v26)
              {
                v28 = v26;
              }

              else
              {
                v28 = v26 - 4;
              }

              if (v26 <= 4)
              {
                v29 = 0;
              }

              else
              {
                v29 = v28;
              }

              webrtc::ColorSpaceExtension::WriteHdrMetadata(v27, v29, a2 + 232);
            }
          }
        }
      }
    }
  }

  if (*v15 == 3)
  {
    if ((v9 ^ 1))
    {
      goto LABEL_51;
    }
  }

  else if (((*(this + 11) | *(a2 + 40)) == 0) | (v9 ^ 1) & 1)
  {
    goto LABEL_51;
  }

  v19 = *(a5 + 39);
  if (*(a5 + 39))
  {
    if ((v19 < 0xF) | *(a5 + 54) & 1)
    {
      v20 = webrtc::RtpPacket::AllocateRawExtension(a5, v19, 1, a4, a5, a6, a7, a8);
      if (v21)
      {
        v22 = *(a2 + 40);
        if (v22 == 270)
        {
          v23 = 3;
        }

        else if (v22 == 180)
        {
          v23 = 2;
        }

        else
        {
          v23 = v22 == 90;
        }

        *v20 = v23;
      }
    }
  }

LABEL_51:
  if (v9)
  {
    if (*v15 == 3)
    {
      if (*(a2 + 164))
      {
        v30 = *(a5 + 43);
        if (*(a5 + 43))
        {
          if ((v30 < 0xF) | *(a5 + 54) & 1)
          {
            v31 = webrtc::RtpPacket::AllocateRawExtension(a5, v30, 1, a4, a5, a6, a7, a8);
            if (v32)
            {
              *v31 = *(a2 + 164);
            }
          }
        }
      }
    }
  }

  if (v9)
  {
    if (*(a2 + 212) != 255)
    {
      v33 = *(a5 + 45);
      if (*(a5 + 45))
      {
        if ((v33 < 0xF) | *(a5 + 54) & 1)
        {
          v34 = webrtc::RtpPacket::AllocateRawExtension(a5, v33, 13, a4, a5, a6, a7, a8);
          if (v35)
          {
            *v34 = *(a2 + 212);
            *(v34 + 1) = bswap32(*(a2 + 100)) >> 16;
            *(v34 + 3) = bswap32(*(a2 + 101)) >> 16;
            *(v34 + 5) = bswap32(*(a2 + 102)) >> 16;
            *(v34 + 7) = bswap32(*(a2 + 103)) >> 16;
            *(v34 + 9) = bswap32(*(a2 + 104)) >> 16;
            *(v34 + 11) = bswap32(*(a2 + 105)) >> 16;
          }
        }
      }
    }
  }

  if (*(this + 664) == 1 && *(this + 656) == 1)
  {
    v36 = *(a5 + 42);
    if (*(a5 + 42))
    {
      if ((v36 < 0xF) | *(a5 + 54) & 1)
      {
        v37 = webrtc::RtpPacket::AllocateRawExtension(a5, v36, 3, a4, a5, a6, a7, a8);
        if (v38)
        {
          v39 = *(this + 81) / 10000;
          v40 = v39 | ((*(this + 80) / 10000) << 12);
          *v37 = BYTE2(v40);
          v37[1] = BYTE1(v40);
          v37[2] = v39;
        }
      }
    }
  }

  if (a3)
  {
    if (*(a2 + 1968) == 1)
    {
      v41 = *(a5 + 38);
      if (*(a5 + 38))
      {
        if ((v41 < 0xF) | *(a5 + 54) & 1)
        {
          v42 = *(a2 + 1960) ? 16 : 8;
          v43 = webrtc::RtpPacket::AllocateRawExtension(a5, v41, v42, a4, a5, a6, a7, a8);
          if (v44)
          {
            *v43 = bswap64(*(a2 + 243));
            if (v44 != 8)
            {
              if ((*(a2 + 1960) & 1) == 0)
              {
LABEL_305:
                std::__throw_bad_optional_access[abi:sn200100]();
                goto LABEL_306;
              }

              v43[1] = bswap64(*(a2 + 244));
            }
          }
        }
      }
    }
  }

  if (*(a2 + 144) == 1)
  {
    if (!*(a5 + 50) || !*(this + 16))
    {
      v57 = 0;
      v58 = *(a5 + 49);
      if (!*(a5 + 49))
      {
        goto LABEL_196;
      }

      goto LABEL_130;
    }

    *(&v181 + 1) = 0;
    LOBYTE(v183) = 0;
    BYTE8(v183) = 0;
    BYTE12(v183) = 0;
    LOBYTE(v184) = 0;
    v185 = 0;
    v180[0] = 0;
    *&v176[16] = 0;
    v176[0] = a3;
    v176[1] = v9;
    *&v176[4] = *a2;
    v45 = *(a2 + 8);
    if (v45)
    {
      v46 = *(a2 + 9);
    }

    else
    {
      v46 = (a2 + 72);
    }

    *&v176[8] = *(a2 + 1);
    if (v45 >= 2)
    {
      v47 = 8 * (v45 >> 1);
      do
      {
        if ((*(a2 + 144) & 1) == 0)
        {
          goto LABEL_304;
        }

        v48 = *a2 - *v46;
        LODWORD(v165) = v48;
        v49 = v180[0];
        v50 = v180[1];
        if (v180[0])
        {
          v51 = v181;
        }

        else
        {
          v50 = &v180[1];
          v51 = 4;
        }

        if (v180[0] >> 1 == v51)
        {
          absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::EmplaceBackSlow<int>(v180);
        }

        if (!v50)
        {
          goto LABEL_304;
        }

        *(v50 + (v180[0] >> 1)) = v48;
        v180[0] = v49 + 2;
        ++v46;
        v47 -= 8;
      }

      while (v47);
      if ((*(a2 + 144) & 1) == 0)
      {
        goto LABEL_304;
      }
    }

    if (&v181 + 8 != a2 + 112)
    {
      v52 = *(a2 + 14);
      v53 = (v52 & 1) != 0 ? *(a2 + 15) : (a2 + 120);
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(&v181 + 1, v53, v52 >> 1);
      if ((*(a2 + 144) & 1) == 0)
      {
        goto LABEL_304;
      }
    }

    if (v176 != a2)
    {
      v54 = *(a2 + 2);
      if (v54)
      {
        v55 = *(a2 + 3);
      }

      else
      {
        v55 = a2 + 24;
      }

      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(&v176[16], v55, v54 >> 1);
    }

    if (a3)
    {
      if (*(this + 278))
      {
        v56 = *(this + 280) | 0x100000000;
      }

      else
      {
        v56 = 0;
      }

      HIDWORD(v183) = v56;
      LOBYTE(v184) = BYTE4(v56);
    }

    if (*v15 == 3)
    {
      if ((*(a2 + 144) & 1) == 0)
      {
        goto LABEL_304;
      }

      if (*(a2 + 8) <= 1uLL)
      {
        if (a3)
        {
          v59 = v185;
          v185 = *(this + 16);
          if (v59)
          {
            webrtc::FrameDependencyStructure::~FrameDependencyStructure(v59);
            MEMORY[0x2743DA540]();
          }
        }
      }
    }

    v60 = *(this + 16);
    v61 = *(this + 141);
    v62 = webrtc::RtpDependencyDescriptorExtension::ValueSize(v60, v61, v176);
    if (v62 - 256 < 0xFFFFFFFFFFFFFF01)
    {
      goto LABEL_125;
    }

    v63 = *(a5 + 54);
    if (v62 >= 0x11 && !*(a5 + 54))
    {
      goto LABEL_125;
    }

    v57 = 0;
    v77 = *(a5 + 50);
    if (v77 < 0xF)
    {
      v63 = 1;
    }

    if (*(a5 + 50) && v63)
    {
      v78 = webrtc::RtpPacket::AllocateRawExtension(a5, v77, v62, a4, a5, a6, a7, a8);
      if (!v79)
      {
LABEL_125:
        v57 = 0;
        goto LABEL_126;
      }

      LOBYTE(v165) = 0;
      *(&v165 + 1) = v176;
      v166 = v60;
      v167 = v61;
      v168[0] = v78;
      v168[1] = v79;
      v169 = 0uLL;
      *&v170 = 0;
      v80 = *(v60 + 8);
      if ((v80 & 0x80000000) != 0 || *(&v181 + 1) >> 1 != v80 || (v81 = *(v60 + 4), (v81 & 0x80000000) != 0) || *&v176[16] >> 1 != v81)
      {
        LOBYTE(v165) = 1;
      }

      else
      {
        webrtc::RtpDependencyDescriptorWriter::FindBestTemplate(&v165);
      }

      v57 = webrtc::RtpDependencyDescriptorWriter::Write(&v165);
    }

LABEL_126:
    v185 = 0;
    if (BYTE8(v181))
    {
      operator delete(__p[0]);
      if ((v180[0] & 1) == 0)
      {
LABEL_128:
        if ((v176[16] & 1) == 0)
        {
          goto LABEL_129;
        }

        goto LABEL_150;
      }
    }

    else if ((v180[0] & 1) == 0)
    {
      goto LABEL_128;
    }

    operator delete(v180[1]);
    if ((v176[16] & 1) == 0)
    {
LABEL_129:
      v58 = *(a5 + 49);
      if (!*(a5 + 49))
      {
        goto LABEL_196;
      }

LABEL_130:
      if (v57)
      {
        goto LABEL_196;
      }

      *&v176[2] = 0x10000;
      *&v176[8] = 0;
      v178[0] = 0;
      v176[0] = a3;
      v176[1] = v9;
      if (!a3)
      {
        v72 = *(a5 + 54);
        v73 = 1;
LABEL_144:
        if ((v72 & 1) != 0 || v58 <= 0xE)
        {
          v74 = webrtc::RtpPacket::AllocateRawExtension(a5, v58, v73, a4, a5, a6, a7, a8);
          if (v75)
          {
            webrtc::RtpGenericFrameDescriptorExtension00::Write(v74, v75, v176);
          }
        }

        goto LABEL_196;
      }

      if (*(a2 + 144))
      {
        v64 = *a2;
        *&v176[2] = *a2;
        v65 = *(a2 + 8);
        v66 = *(a2 + 9);
        if ((v65 & 1) == 0)
        {
          v66 = (a2 + 72);
        }

        if (v65 >= 2)
        {
          v67 = 0;
          v76 = 8 * (v65 >> 1);
          do
          {
            if (v67 != 8 && v64 != *v66)
            {
              *&v176[2 * v67++ + 16] = v64 - *v66;
              *&v176[8] = v67;
            }

            v66 += 4;
            v76 -= 8;
          }

          while (v76);
        }

        else
        {
          v67 = 0;
        }

        v68 = *(a2 + 3);
        v176[4] = 1 << *(a2 + 2);
        v176[5] = v68;
        if (*(a2 + 38) == 3)
        {
          v69 = *(a2 + 79);
          LODWORD(v178[0]) = *(a2 + 78);
          HIDWORD(v178[0]) = v69;
        }

        if (!v67)
        {
          v82 = 4;
          goto LABEL_184;
        }

        v70 = (v67 - 1) & 0x7FFFFFFFFFFFFFFFLL;
        if (v70 < 3)
        {
          v82 = 4;
          v71 = &v176[16];
          goto LABEL_180;
        }

        v83 = v70 + 1;
        if (v70 >= 0xF)
        {
          v84 = v83 & 0xFFFFFFFFFFFFFFF0;
          v85 = 0uLL;
          v86.i64[0] = 0x3F003F003F003FLL;
          v86.i64[1] = 0x3F003F003F003FLL;
          v87 = vdupq_n_s64(2uLL);
          v88 = xmmword_273BA34C0;
          v89 = v178;
          v90 = v83 & 0xFFFFFFFFFFFFFFF0;
          v91 = 0uLL;
          v92 = 0uLL;
          v93 = 0uLL;
          v94 = 0uLL;
          v95 = 0uLL;
          v96 = 0uLL;
          do
          {
            v97 = vcgtq_u16(*(v89 - 1), v86);
            v98 = vmovl_high_s16(v97);
            v99.i64[0] = v98.i32[2];
            v99.i64[1] = v98.i32[3];
            v100 = v99;
            v99.i64[0] = v98.i32[0];
            v99.i64[1] = v98.i32[1];
            v101 = v99;
            v102 = vmovl_s16(*v97.i8);
            v99.i64[0] = v102.i32[2];
            v99.i64[1] = v102.i32[3];
            v103 = v99;
            v99.i64[0] = v102.i32[0];
            v99.i64[1] = v102.i32[1];
            v104 = v99;
            v105 = vcgtq_u16(*v89, v86);
            v106 = vmovl_high_s16(v105);
            v99.i64[0] = v106.i32[2];
            v99.i64[1] = v106.i32[3];
            v107 = v99;
            v99.i64[0] = v106.i32[0];
            v99.i64[1] = v106.i32[1];
            v108 = v99;
            v109 = vmovl_s16(*v105.i8);
            v99.i64[0] = v109.i32[2];
            v99.i64[1] = v109.i32[3];
            v110 = v99;
            v99.i64[0] = v109.i32[0];
            v99.i64[1] = v109.i32[1];
            v92 = vaddq_s64(vsubq_s64(vandq_s8(v100, v87), vmvnq_s8(v100)), v92);
            v91 = vaddq_s64(vsubq_s64(vandq_s8(v101, v87), vmvnq_s8(v101)), v91);
            v85 = vaddq_s64(vsubq_s64(vandq_s8(v103, v87), vmvnq_s8(v103)), v85);
            v88 = vaddq_s64(vsubq_s64(vandq_s8(v104, v87), vmvnq_s8(v104)), v88);
            v96 = vaddq_s64(vsubq_s64(vandq_s8(v107, v87), vmvnq_s8(v107)), v96);
            v95 = vaddq_s64(vsubq_s64(vandq_s8(v108, v87), vmvnq_s8(v108)), v95);
            v94 = vaddq_s64(vsubq_s64(vandq_s8(v110, v87), vmvnq_s8(v110)), v94);
            v93 = vaddq_s64(vsubq_s64(vandq_s8(v99, v87), vmvnq_s8(v99)), v93);
            v89 += 4;
            v90 -= 16;
          }

          while (v90);
          v82 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v93, v88), vaddq_s64(v95, v91)), vaddq_s64(vaddq_s64(v94, v85), vaddq_s64(v96, v92))));
          if (v83 == v84)
          {
            goto LABEL_184;
          }

          if ((v83 & 0xC) == 0)
          {
            v71 = &v176[2 * v84 + 16];
            do
            {
LABEL_180:
              v120 = *v71;
              v71 += 2;
              if (v120 <= 0x3F)
              {
                v121 = 1;
              }

              else
              {
                v121 = 2;
              }

              v82 += v121;
            }

            while (v71 != &v176[2 * v67 + 16]);
LABEL_184:
            if (v67)
            {
              v122 = 1;
            }

            else
            {
              v122 = SHIDWORD(v178[0]) <= 0;
            }

            if (v122 || SLODWORD(v178[0]) <= 0)
            {
              v73 = v82;
            }

            else
            {
              v73 = v82 + 4;
            }

            if (v73 - 256 < 0xFFFFFFFFFFFFFF01)
            {
              goto LABEL_196;
            }

            v72 = *(a5 + 54);
            if (v73 >= 0x11 && (*(a5 + 54) & 1) == 0)
            {
              goto LABEL_196;
            }

            goto LABEL_144;
          }
        }

        else
        {
          v84 = 0;
          v82 = 4;
        }

        v71 = &v176[2 * (v83 & 0xFFFFFFFFFFFFFFFCLL) + 16];
        v111 = 0uLL;
        v112 = v82;
        v113 = &v176[2 * v84 + 16];
        v114 = v84 - (v83 & 0xFFFFFFFFFFFFFFFCLL);
        v115 = vdupq_n_s64(2uLL);
        do
        {
          v116 = *v113++;
          v117 = vmovl_s16(vcgt_u16(v116, 0x3F003F003F003FLL));
          v118.i64[0] = v117.i32[2];
          v118.i64[1] = v117.i32[3];
          v119 = v118;
          v118.i64[0] = v117.i32[0];
          v118.i64[1] = v117.i32[1];
          v111 = vaddq_s64(vsubq_s64(vandq_s8(v119, v115), vmvnq_s8(v119)), v111);
          v112 = vaddq_s64(vsubq_s64(vandq_s8(v118, v115), vmvnq_s8(v118)), v112);
          v114 += 4;
        }

        while (v114);
        v82 = vaddvq_s64(vaddq_s64(v112, v111));
        if (v83 == (v83 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_184;
        }

        goto LABEL_180;
      }

LABEL_304:
      __break(1u);
    }

LABEL_150:
    operator delete(v177);
    v58 = *(a5 + 49);
    if (!*(a5 + 49))
    {
      goto LABEL_196;
    }

    goto LABEL_130;
  }

LABEL_196:
  if (!*(a5 + 44))
  {
    goto LABEL_214;
  }

  if (!a3)
  {
    goto LABEL_214;
  }

  v124 = *(this + 96);
  if (v124 == 2)
  {
    goto LABEL_214;
  }

  if (*v15 == 3)
  {
LABEL_200:
    if (*(this + 376))
    {
      v125 = *(this + 18);
      *v176 = *(this + 34);
      v176[4] = *(this + 140);
      *&v176[8] = 0;
      if (v125 >= 2)
      {
        absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::InitFrom(&v176[8], this + 18);
        v124 = *(this + 96);
      }

      v176[4] = v124 == 0;
      v126 = webrtc::RtpVideoLayersAllocationExtension::ValueSize(v176);
      if (v126 - 256 >= 0xFFFFFFFFFFFFFF01)
      {
        v127 = *(a5 + 54);
        if (v126 < 0x11 || *(a5 + 54))
        {
          v128 = *(a5 + 44);
          if (v128 < 0xF)
          {
            v127 = 1;
          }

          if (*(a5 + 44))
          {
            if (v127)
            {
              v129 = webrtc::RtpPacket::AllocateRawExtension(a5, v128, v126, a4, a5, a6, a7, a8);
              if (v130)
              {
                webrtc::RtpVideoLayersAllocationExtension::Write(v129, v130, v176);
              }
            }
          }
        }
      }

      if (*&v176[8])
      {
        absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(&v176[8]);
      }

      goto LABEL_214;
    }

    goto LABEL_305;
  }

  if (*(a2 + 144) != 1)
  {
    v143 = *(a2 + 43);
    if (v143 == 2)
    {
      if (*(a2 + 484) == 2)
      {
        if (*(a2 + 308) - 255 >= 0xFFFFFF02)
        {
          goto LABEL_214;
        }

        goto LABEL_200;
      }
    }

    else
    {
      if (v143 != 1)
      {
        goto LABEL_200;
      }

      if (*(a2 + 484) == 1)
      {
        if (*(a2 + 302) - 255 >= 0xFFFFFF02)
        {
          goto LABEL_214;
        }

        goto LABEL_200;
      }
    }

LABEL_306:
    v164 = std::__throw_bad_variant_access[abi:sn200100]();
    return;
  }

  v137 = *(a2 + 3);
  if (!v137 || v137 == 255)
  {
    v138 = a2 + 24;
    v139 = *(a2 + 2);
    if (v139)
    {
      v138 = *(a2 + 3);
    }

    v140 = v139 >> 1;
    if (v139 >= 2)
    {
      v144 = 4 * v140;
      v141 = v138;
      while (*v141 != 1)
      {
        v141 += 4;
        v144 -= 4;
        if (!v144)
        {
          goto LABEL_200;
        }
      }
    }

    else
    {
      v141 = v138;
    }

    if (v141 == &v138[4 * v140])
    {
      goto LABEL_200;
    }
  }

LABEL_214:
  if (a3)
  {
    if (*(a2 + 290) == 1)
    {
      v131 = *(a5 + 52);
      if (*(a5 + 52))
      {
        if ((v131 < 0xF) | *(a5 + 54) & 1)
        {
          v132 = webrtc::RtpPacket::AllocateRawExtension(a5, v131, 2, a4, a5, a6, a7, a8);
          if (v133)
          {
            *v132 = bswap32(*(a2 + 144)) >> 16;
          }
        }
      }
    }
  }

  if (v9 && *(a2 + 2032) == 1)
  {
    v134 = (a2 + 1976);
    v176[0] = 0;
    LOBYTE(v185) = 0;
    v135 = *(a2 + 506);
    if (v135)
    {
      if (v135 == 1)
      {
        webrtc::ConvertFrameInstrumentationDataToCorruptionDetectionMessage(v134, &v165);
        if (v185 == v175)
        {
          if (v185)
          {
            *v176 = v165;
            *&v176[16] = v166;
            if (v167)
            {
              v136 = v168[0];
            }

            else
            {
              v136 = v168;
            }

            absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<double>,double const*>>(&v177, v136, v167 >> 1);
          }
        }

        else if (v185)
        {
          if (v177)
          {
            operator delete(v178[0]);
          }

          LOBYTE(v185) = 0;
        }

        else
        {
          *v176 = v165;
          *&v176[16] = v166;
          v177 = 0;
          if (v167 >= 2)
          {
            if (v167)
            {
              absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::InitFrom(&v177, &v167);
            }

            else
            {
              v177 = v167;
              *__p = v172;
              v183 = v173;
              v184 = v174;
              *v178 = *v168;
              v179 = v169;
              *v180 = v170;
              v181 = v171;
            }
          }

          LOBYTE(v185) = 1;
        }

        if (v175 == 1 && (v167 & 1) != 0)
        {
          operator delete(v168[0]);
        }

        if (v185)
        {
          goto LABEL_268;
        }
      }
    }

    else if (!(*v134 >> 14))
    {
      v142 = *v134 & 0x7F;
      if (*(a2 + 1980))
      {
        v142 = *v134 >> 7;
      }

      v165 = 0uLL;
      v166 = 0;
      *v176 = v142;
      v176[4] = 1;
      *&v176[5] = 0uLL;
      *&v176[20] = 0 >> 120;
      v177 = 0;
      LOBYTE(v185) = 1;
LABEL_268:
      if (v177 <= 1)
      {
        v145 = 1;
      }

      else
      {
        v145 = (v177 >> 1) + 3;
      }

      if (v145 - 256 >= 0xFFFFFFFFFFFFFF01)
      {
        v146 = *(a5 + 54);
        if (v145 < 0x11 || *(a5 + 54))
        {
          v147 = *(a5 + 53);
          if (v147 < 0xF)
          {
            v146 = 1;
          }

          if (*(a5 + 53))
          {
            if (v146)
            {
              v148 = webrtc::RtpPacket::AllocateRawExtension(a5, v147, v145, a4, a5, a6, a7, a8);
              if (v149)
              {
                v150 = v177 <= 1 ? 1 : (v177 >> 1) + 3;
                if (v149 <= 0x10 && v149 == v150)
                {
                  v151 = v176[0];
                  *v148 = v176[0] & 0x7F;
                  if (v176[4] == 1)
                  {
                    *v148 = v151 | 0x80;
                  }

                  if (v177 >= 2)
                  {
                    v152 = 0;
                    v148[1] = llround(*&v176[8] / 40.0 * 255.0);
                    v148[2] = v176[20] & 0xF | (16 * v176[16]);
                    v153 = v148 + 3;
                    if (v149 <= 3)
                    {
                      v153 = 0;
                    }

                    while (1)
                    {
                      v163 = v177 >> 1;
                      if (v177)
                      {
                        if (v152 >= v163)
                        {
                          goto LABEL_292;
                        }

                        v161 = v178[0];
                      }

                      else
                      {
                        v161 = v178;
                        if (v152 >= v163)
                        {
                          goto LABEL_292;
                        }
                      }

                      if (v177 >= 2)
                      {
                        v162 = v161;
                      }

                      else
                      {
                        v162 = 0;
                      }

                      v153[v152] = vcvtmd_s64_f64(*&v162[v152]);
                      ++v152;
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_292;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v154, v155, v156, v157, v158, v159, v160, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_video.cc");
    }

LABEL_292:
    if (v185 == 1 && (v177 & 1) != 0)
    {
      operator delete(v178[0]);
    }
  }
}

uint64_t webrtc::anonymous namespace::PacketWillLikelyBeRequestedForRestransmissionIfLost(uint64_t a1)
{
  if (*(a1 + 144) != 1)
  {
    v9 = *(a1 + 172);
    if (v9 == 2)
    {
      if (*(a1 + 1936) == 2)
      {
        return *(a1 + 308) - 255 < 0xFFFFFF02;
      }
    }

    else
    {
      if (v9 != 1)
      {
        return 1;
      }

      if (*(a1 + 1936) == 1)
      {
        return *(a1 + 302) - 255 <= 0xFFFFFF01;
      }
    }

    v10 = std::__throw_bad_variant_access[abi:sn200100]();
    return webrtc::RTPSenderVideo::SendVideo(v10);
  }

  v1 = *(a1 + 12);
  if (v1 && v1 != 255)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  v5 = *(v2 - 1);
  if ((v5 & 1) == 0)
  {
    v3 = v2;
  }

  v6 = &v3[v5 >> 1];
  if (v5 >= 2)
  {
    v7 = 4 * (v5 >> 1);
    while (*v3 != 1)
    {
      ++v3;
      v7 -= 4;
      if (!v7)
      {
        v3 = v6;
        return v3 == v6;
      }
    }
  }

  return v3 == v6;
}

uint64_t webrtc::RTPSenderVideo::SendVideo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64_t a10, uint64_t *a11)
{
  v14 = pthread_self();
  v15 = *(a1 + 24);
  *(a1 + 24) = v15 + 1;
  if (!v15)
  {
    *(a1 + 32) = v14;
  }

  if (!pthread_equal(*(a1 + 32), v14))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_video.cc", 521, "!race_checker521.RaceDetected()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v16, v17, v18, v19, v80);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v20 = a9;
  if (*(a9 + 152))
  {
    if (a7)
    {
      v21 = *(a1 + 8);
      pthread_mutex_lock((v21 + 56));
      v22 = *(v21 + 120);
      pthread_mutex_unlock((v21 + 56));
      if (v22 == 1)
      {
        if ((a3 & 0x1FFFFFFFFLL) == 0x100000004)
        {
          v23 = 6;
        }

        else
        {
          v23 = *(a1 + 40);
        }

        v24 = *(a9 + 1936);
        if (v24 == -1)
        {
          std::__throw_bad_variant_access[abi:sn200100]();
LABEL_139:
          webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/api/units/frequency.h", 77, "frequency.IsFinite()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v52, v53, v54, v55, v80);
          webrtc::webrtc_checks_impl::UnreachableCodeReached(v79);
        }

        v85 = &v84;
        v25 = (off_28829D258[v24])(&v85, a9 + 296);
        v26 = 0;
        if ((a10 - 0x7FFFFFFFFFFFFFFFLL) < 2 || !v23)
        {
LABEL_89:
          if (*(a1 + 688))
          {
            v59 = a1 + 672;
          }

          else
          {
            v59 = v20 + 176;
          }

          v60 = *(v59 + 16);
          if (v60)
          {
            *(a1 + 640) = *v59;
            *(a1 + 656) = v60;
            *(a1 + 664) = 1;
          }

          v61 = *(v20 + 152);
          if (v61 == 3)
          {
            if (*(a1 + 656) == 1)
            {
              *(a1 + 664) = 1;
            }

            if (*(a1 + 376) == 1)
            {
              *(a1 + 384) = 0;
            }
          }

          v62 = *(a1 + 128);
          if (v62 && *(v20 + 144) == 1)
          {
            v58 = v61 == 3;
            v65 = *(v62 + 24);
            v64 = v62 + 24;
            v63 = v65;
            v66 = v58;
            v67 = *(v64 - 8);
            if ((v67 & 1) == 0)
            {
              v63 = v64;
            }

            v68 = *(v20 + 112);
            v69 = v20 + 120;
            if (v68)
            {
              v69 = *(v20 + 120);
            }

            if (v67 >= 2)
            {
              v70 = v63;
            }

            else
            {
              v70 = 0;
            }

            if (v68 >= 2)
            {
              v71 = v69;
            }

            else
            {
              v71 = 0;
            }

            webrtc::ActiveDecodeTargetsHelper::OnFrame(a1 + 1112, v70, v67 >> 1, *(v20 + 136), v66, *v20, v71, v68 >> 1);
          }

          v72 = *(a1 + 772);
          if ((v25 - 255) >= 0xFFFFFF02)
          {
            v72 = 0;
          }

          v73 = *(a1 + 8);
          if (v72 == 1 && *(a1 + 764) == 1 && *(a1 + 768) == 1)
          {
            pthread_mutex_lock((v73 + 56));
            pthread_mutex_unlock((v73 + 56));
            v73 = *(a1 + 8);
          }

          if (v26)
          {
            pthread_mutex_lock((v73 + 56));
            pthread_mutex_unlock((v73 + 56));
            v73 = *(a1 + 8);
          }

          v74 = a11[1] - *a11;
          if (v74)
          {
            v75 = *a11;
          }

          else
          {
            v75 = 0;
          }

          webrtc::RTPSender::AllocatePacket(v73, v75, v74 >> 2);
        }

        pthread_mutex_lock((a1 + 784));
        v82 = v23;
        if ((v23 & 8) != 0)
        {
          v81 = (*(**(a1 + 16) + 16))(*(a1 + 16));
          v27 = v25;
          v28 = (a1 + 952);
          v29 = *(a1 + 952);
          if (!v29)
          {
LABEL_22:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v31 = v29;
              v32 = *(v29 + 32);
              if (v32 <= v25)
              {
                break;
              }

              v29 = *v31;
              if (!*v31)
              {
                goto LABEL_22;
              }
            }

            if (v32 >= v25)
            {
              break;
            }

            v29 = v31[1];
            if (!v29)
            {
              goto LABEL_22;
            }
          }

          v33 = v81 / 0x3E8;
          if (v81 % 0x3E8 <= 0x1F3)
          {
            v34 = v81 / 0x3E8;
          }

          else
          {
            v34 = v33 + 1;
          }

          if (-v81 % 0x3E8uLL <= 0x1F4)
          {
            v35 = 0;
          }

          else
          {
            v35 = -1;
          }

          v36 = v35 - -v81 / 0x3E8uLL;
          if ((v81 & 0x8000000000000000) != 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = v34;
          }

          webrtc::RateStatistics::Update((v31 + 5), 1, v37);
          v38 = v31[17];
          v31[17] = v81;
          v39 = v25 - 1;
          if (v81 == 0x7FFFFFFFFFFFFFFFLL || v38 == 0x8000000000000000)
          {
            if (v39 >= 0xFE)
            {
              goto LABEL_81;
            }
          }

          else
          {
            if (v39 >= 0xFE)
            {
              goto LABEL_81;
            }

            if (v81 == 0x8000000000000000 || v38 == 0x7FFFFFFFFFFFFFFFLL || (v81 - v38) <= 131999)
            {
              if (v81 % 0x3E8 <= 0x1F3)
              {
                v40 = v81 / 0x3E8;
              }

              else
              {
                v40 = v33 + 1;
              }

              if (-v81 % 0x3E8uLL <= 0x1F4)
              {
                v41 = 0;
              }

              else
              {
                v41 = -1;
              }

              v42 = v41 - -v81 / 0x3E8uLL;
              if ((v81 & 0x8000000000000000) == 0)
              {
                v42 = v40;
              }

              v83 = v42;
              v43 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                v46 = v27--;
                v47 = *v28;
                if (!*v28)
                {
LABEL_59:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v48 = v47;
                    v49 = *(v47 + 32);
                    if (v46 > v49)
                    {
                      break;
                    }

                    v47 = *v48;
                    if (!*v48)
                    {
                      goto LABEL_59;
                    }
                  }

                  if (v49 >= v27)
                  {
                    break;
                  }

                  v47 = v48[1];
                  if (!v47)
                  {
                    goto LABEL_59;
                  }
                }

                v50 = webrtc::RateStatistics::Rate((v48 + 5), v83);
                if (v51)
                {
                  v56 = v50;
                }

                else
                {
                  v56 = 0;
                }

                if ((v51 & 1) != 0 && v56 >= 1)
                {
                  if (v56 >= 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_139;
                  }

                  v45 = v48[17];
                  v57 = 0x7FFFFFFFFFFFFFFFLL;
                  if (v45 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v45 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    if (v45 != 0x8000000000000000)
                    {
                      v45 += 0x3B9ACA00 / v50;
                    }

                    v58 = v45 == 0x7FFFFFFFFFFFFFFFLL || v81 == 0x8000000000000000;
                    if (!v58)
                    {
                      v57 = v45 - v81;
                      if (v45 == 0x8000000000000000)
                      {
                        v57 = 0x8000000000000000;
                      }
                    }
                  }

                  v44 = 0x8000000000000000;
                  if (a10 == 0x8000000000000000)
                  {
                    v44 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else if (a10 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v44 = -a10;
                  }

                  if (v45 >= v43)
                  {
                    v45 = v43;
                  }

                  if (v57 > v44)
                  {
                    v43 = v45;
                  }
                }
              }

              while (v46 > 1);
              v76 = v43 - v81;
              if (v43 == 0x8000000000000000)
              {
                v76 = 0x8000000000000000;
              }

              if (v81 == 0x8000000000000000 || v43 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v76 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v20 = a9;
              if (v76 <= a10)
              {
                goto LABEL_81;
              }
            }
          }

          v82 |= 4u;
        }

LABEL_81:
        if (v25 == 255 || !v25 && (v82 & 2) != 0)
        {
          v26 = 1;
        }

        else if (v25)
        {
          v26 = (v82 >> 2) & 1;
        }

        else
        {
          v26 = 0;
        }

        pthread_mutex_unlock((a1 + 784));
        goto LABEL_89;
      }
    }

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  --*(a1 + 24);
  return v30;
}

uint64_t webrtc::anonymous namespace::IsBaseLayer(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v1 = *(a1 + 12);
    return !v1 || v1 == 255;
  }

  else
  {
    v4 = *(a1 + 172);
    if (v4 == 2)
    {
      if (*(a1 + 1936) == 2)
      {
        return *(a1 + 308) - 255 < 0xFFFFFF02;
      }
    }

    else
    {
      if (v4 != 1)
      {
        return 1;
      }

      if (*(a1 + 1936) == 1)
      {
        return *(a1 + 302) - 255 < 0xFFFFFF02;
      }
    }

    v5 = std::__throw_bad_variant_access[abi:sn200100]();
    return webrtc::RTPSenderVideo::SendEncodedImage(v5);
  }
}

uint64_t webrtc::RTPSenderVideo::SendEncodedImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v32 = *MEMORY[0x277D85DE8];
  v16 = *(v3 + 1144);
  if (v16)
  {
    v17 = v31;
    webrtc::RTPVideoHeader::RTPVideoHeader(v31, v5);
    v18 = webrtc::RTPSenderVideoFrameTransformerDelegate::TransformFrame(v16, v15, v13, v11, v9, v31, v7);
  }

  else
  {
    v19 = v3;
    v20 = v4[2];
    if (v20 <= 0)
    {
      v21 = 0x8000000000000000;
    }

    else
    {
      v21 = 1000 * v20;
    }

    v22 = v4[17];
    if (v22)
    {
      v23 = (*(*v22 + 40))(v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = v9[18];
    v17 = v30;
    webrtc::RTPVideoHeader::RTPVideoHeader(v30, v8);
    __p = 0;
    v28 = 0;
    v29 = 0;
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v18 = (**v19)(v19, v15, v13, v11, v21, v25, v24, v24, v30, v7, &__p);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
      v17 = v30;
    }
  }

  webrtc::RTPVideoHeader::~RTPVideoHeader(v17);
  return v18;
}

void absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(unint64_t *a1)
{
  v3 = a1 + 1;
  v2 = *a1;
  v4 = *a1 & 1;
  v5 = a1 + 1;
  if (*a1)
  {
    v5 = *v3;
  }

  if (v2 >= 2)
  {
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v2 >> 1;
    v7 = &v5[7 * (v2 >> 1) - 6];
    do
    {
      if (*v7)
      {
        operator delete(*(v7 + 8));
      }

      v7 -= 56;
      --v6;
    }

    while (v6);
    v4 = *a1 & 1;
  }

  if (v4)
  {
    v8 = *v3;

    operator delete(v8);
  }
}

uint64_t std::operator==[abi:sn200100]<webrtc::HdrMetadata,webrtc::HdrMetadata>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = v2 ^ *(a2 + 48) ^ 1;
  if (v2 != 1 || (*(a2 + 48) & 1) == 0)
  {
    return v3 & 1;
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32))
  {
    v3 = *(a1 + 36) == *(a2 + 36);
    return v3 & 1;
  }

  return 0;
}

unint64_t *absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2 >> 1;
  if (v2)
  {
    if (v2 < 0x924924924924926)
    {
      operator new();
    }

LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1 + 1;
  v7 = a2 + 1;
  do
  {
    *v6 = *v7;
    v6[1] = 0;
    result = v6 + 1;
    v10 = v7[1];
    if (v10 >= 2)
    {
      if (v10)
      {
        result = absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::InitFrom(result, v7 + 1);
      }

      else
      {
        v6[1] = v10;
        v11 = *(v7 + 2);
        *(v6 + 1) = *(v7 + 1);
        *(v6 + 2) = v11;
      }
    }

    v9 = *(v7 + 12);
    *(v6 + 52) = *(v7 + 52);
    *(v6 + 12) = v9;
    v7 += 7;
    v6 += 7;
    --v5;
  }

  while (v5);
  *a1 = *a2;
  return result;
}

uint64_t std::__optional_move_assign_base<webrtc::VideoLayersAllocation,false>::operator=[abi:sn200100](uint64_t result, int *a2)
{
  if (*(result + 240) == *(a2 + 240))
  {
    if (*(result + 240))
    {
      v2 = *a2;
      *(result + 4) = *(a2 + 4);
      *result = v2;
      if (result != a2)
      {
        v5 = *(a2 + 2);
        v3 = a2 + 4;
        v4 = v5;
        v6 = *(v3 - 1);
        if (v6)
        {
          v7 = v4;
        }

        else
        {
          v7 = v3;
        }

        v8 = v6 >> 1;
        v9 = *(result + 8);
        if (v9)
        {
          v70 = *(result + 16);
          v10 = *(result + 24);
          v11 = v9 >> 1;
          v67 = *(v3 - 1);
          v68 = result;
          if (v10 >= v8)
          {
LABEL_9:
            v12 = v70 + 56 * v8;
            if (v11 < v8)
            {
              v13 = 0;
            }

            else
            {
              v13 = v11 - v8;
            }

            if (v11 < v8)
            {
              v12 = 0;
            }

            v66 = v12;
            if (v11 < v8)
            {
              v14 = v8 - v11;
            }

            else
            {
              v14 = 0;
            }

            if (v11 < v8)
            {
              v15 = v70 + 56 * v11;
            }

            else
            {
              v15 = 0;
            }

            if (v11 < v8)
            {
              v16 = v11;
            }

            else
            {
              v16 = v6 >> 1;
            }

            v69 = v16;
            if (v16)
            {
              v17 = 0;
              while (1)
              {
                v18 = v70 + 56 * v17;
                *v18 = *v7;
                if (v7 != v18)
                {
                  break;
                }

LABEL_66:
                v51 = v7[12];
                *(v18 + 52) = *(v7 + 52);
                *(v18 + 48) = v51;
                v7 += 14;
                if (++v17 == v69)
                {
                  goto LABEL_67;
                }
              }

              v19 = *(v7 + 1);
              if (v19)
              {
                v20 = *(v7 + 2);
              }

              else
              {
                v20 = v7 + 4;
              }

              v21 = *(v18 + 8);
              if (v21)
              {
                v22 = *(v18 + 16);
                v23 = *(v18 + 24);
                v24 = v19 >> 1;
                if (v23 < v19 >> 1)
                {
LABEL_49:
                  if (2 * v23 <= v24)
                  {
                    v41 = v24;
                  }

                  else
                  {
                    v41 = 2 * v23;
                  }

                  if (!(v41 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_98;
                }
              }

              else
              {
                v22 = v18 + 16;
                v23 = 4;
                v24 = v19 >> 1;
                if (v19 >> 1 > 4)
                {
                  goto LABEL_49;
                }
              }

              v25 = v21 >> 1;
              v26 = v24 - v25;
              if (v24 < v25)
              {
                v26 = 0;
              }

              if (v25 >= v24)
              {
                v27 = v24;
              }

              else
              {
                v27 = v25;
              }

              if (v27)
              {
                v28 = 0;
                if (v27 < 4)
                {
                  goto LABEL_42;
                }

                if ((v22 - v20) < 0x20)
                {
                  goto LABEL_42;
                }

                v28 = v27 & 0x7FFFFFFFFFFFFFFCLL;
                v29 = &v20[2 * (v27 & 0x7FFFFFFFFFFFFFFCLL)];
                v30 = (v22 + 16);
                v31 = (v20 + 4);
                v32 = v27 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v33 = *v31;
                  *(v30 - 1) = *(v31 - 1);
                  *v30 = v33;
                  v30 += 2;
                  v31 += 2;
                  v32 -= 4;
                }

                while (v32);
                v20 += 2 * (v27 & 0x7FFFFFFFFFFFFFFCLL);
                if (v27 != v28)
                {
LABEL_42:
                  v34 = v27 - v28;
                  v35 = (v22 + 8 * v28);
                  v29 = v20;
                  do
                  {
                    v36 = *v29++;
                    *v35++ = v36;
                    --v34;
                  }

                  while (v34);
                }

                if (v25 < v24)
                {
LABEL_45:
                  if (!v22)
                  {
                    goto LABEL_97;
                  }

                  v37 = v26;
                  v38 = v29;
                  v39 = v22 + 8 * v25;
                  v40 = 0;
                  if (v37 < 4 || (v39 - v29) < 0x20)
                  {
                    v42 = v29;
                  }

                  else
                  {
                    v40 = v37 & 0xFFFFFFFFFFFFFFFCLL;
                    v42 = &v29[v37 & 0xFFFFFFFFFFFFFFFCLL];
                    v43 = (v39 + 16);
                    v44 = (v38 + 2);
                    v45 = v37 & 0xFFFFFFFFFFFFFFFCLL;
                    do
                    {
                      v46 = *v44;
                      *(v43 - 1) = *(v44 - 1);
                      *v43 = v46;
                      v43 += 2;
                      v44 += 2;
                      v45 -= 4;
                    }

                    while (v45);
                    if (v37 == v40)
                    {
                      goto LABEL_62;
                    }
                  }

                  v47 = v37 - v40;
                  v48 = (v39 + 8 * v40);
                  do
                  {
                    v49 = *v42++;
                    *v48++ = v49;
                    --v47;
                  }

                  while (v47);
LABEL_62:
                  v50 = *(v18 + 8);
LABEL_65:
                  *(v18 + 8) = v19 & 0xFFFFFFFFFFFFFFFELL | v50 & 1;
                  goto LABEL_66;
                }
              }

              else
              {
                v29 = v20;
                if (v25 < v24)
                {
                  goto LABEL_45;
                }
              }

              v50 = *(v18 + 8);
              goto LABEL_65;
            }

LABEL_67:
            if (v14)
            {
              if (!v15)
              {
                goto LABEL_97;
              }

              do
              {
                *v15 = *v7;
                *(v15 + 8) = 0;
                v62 = *(v7 + 1);
                if (v62 >= 2)
                {
                  if (v62)
                  {
                    absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::InitFrom((v15 + 8), v7 + 1);
                  }

                  else
                  {
                    *(v15 + 8) = v62;
                    v63 = *(v7 + 2);
                    *(v15 + 16) = *(v7 + 1);
                    *(v15 + 32) = v63;
                  }
                }

                v61 = v7[12];
                *(v15 + 52) = *(v7 + 52);
                *(v15 + 48) = v61;
                v7 += 14;
                v15 += 56;
                --v14;
              }

              while (v14);
              v64 = v66;
              if (!v13)
              {
                goto LABEL_95;
              }
            }

            else
            {
              v64 = v66;
              if (!v13)
              {
LABEL_95:
                result = v68;
                *(v68 + 8) = v67 & 0xFFFFFFFFFFFFFFFELL | *(v68 + 8) & 1;
                return result;
              }
            }

            if (v64)
            {
              v65 = v64 + 56 * v13 - 48;
              do
              {
                if (*v65)
                {
                  operator delete(*(v65 + 8));
                }

                v65 -= 56;
                --v13;
              }

              while (v13);
              goto LABEL_95;
            }

LABEL_97:
            __break(1u);
            goto LABEL_98;
          }
        }

        else
        {
          v10 = 4;
          v70 = result + 16;
          v11 = v9 >> 1;
          v67 = *(v3 - 1);
          v68 = result;
          if (v8 <= 4)
          {
            goto LABEL_9;
          }
        }

        if (2 * v10 <= v8)
        {
          v60 = v6 >> 1;
        }

        else
        {
          v60 = 2 * v10;
        }

        if (v60 < 0x492492492492493)
        {
          operator new();
        }

LABEL_98:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }
  }

  else if (*(result + 240))
  {
    v52 = result;
    v54 = *(result + 8);
    v53 = (result + 8);
    if (v54)
    {
      absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(v53);
    }

    result = v52;
    *(v52 + 240) = 0;
  }

  else
  {
    v55 = *a2;
    *(result + 4) = *(a2 + 4);
    *result = v55;
    v56 = result;
    *(result + 8) = 0;
    v57 = (result + 8);
    v59 = *(a2 + 1);
    v58 = (a2 + 2);
    if (v59 >= 2)
    {
      absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::InitFrom(v57, v58);
    }

    result = v56;
    *(v56 + 240) = 1;
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::RTPSenderVideoFrameTransformerDelegate>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 27, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::RTPSenderVideoFrameTransformerDelegate>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28829D2D8;
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  pthread_mutex_destroy((a1 + 8));
  return a1;
}

void webrtc::RefCountedObject<webrtc::RTPSenderVideoFrameTransformerDelegate>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_28829D2D8;
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (**v2)(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  pthread_mutex_destroy((a1 + 8));

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::__map_value_compare<int,std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::__map_value_compare<int,std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>>>::destroy(*a1);
    std::__tree<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::__map_value_compare<int,std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RTPSenderVideo::TemporalLayerStats>>>::destroy(a1[1]);
    std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](a1 + 5);

    operator delete(a1);
  }
}

uint64_t webrtc::RTPSenderVideoFrameTransformerDelegate::TransformFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, const webrtc::RTPVideoHeader *a6, uint64_t a7)
{
  v31 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 104) != 1)
  {
    pthread_mutex_unlock((a1 + 8));
    operator new();
  }

  v14 = *(a1 + 72);
  v15 = a5[2];
  v16 = 1000 * v15;
  v17 = v15 <= 0;
  v18 = 0x8000000000000000;
  if (!v17)
  {
    v18 = v16;
  }

  v25 = v18;
  v19 = a5[17];
  v26 = a4;
  if (v19)
  {
    (**v19)(v19);
  }

  v20 = (*(*v19 + 40))(v19);
  v21 = (*(*v19 + 48))(v19);
  v22 = a5[18];
  webrtc::RTPVideoHeader::RTPVideoHeader(v30, a6);
  __p = 0;
  v28 = 0;
  v29 = 0;
  if (v21)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  (**v14)(v14, a2, a3, v26, v25, v23, v21, v22, v30, a7, &__p);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  webrtc::RTPVideoHeader::~RTPVideoHeader(v30);
  (*(*v19 + 8))(v19);
  pthread_mutex_unlock((a1 + 8));
  return 1;
}

uint64_t webrtc::RTPSenderVideoFrameTransformerDelegate::OnTransformedFrame(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 72))
  {
    (**a1)(a1);
    v4 = *(a1 + 96);
    v5 = *a2;
    *a2 = 0;
    v9[0] = a1;
    v9[1] = v5;
    v10 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RTPSenderVideoFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>;
    v11 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RTPSenderVideoFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>;
    (*(*v4 + 8))(v4, v9, &v8, &v7);
    v10(1, v9, v9);
  }

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t webrtc::RTPSenderVideoFrameTransformerDelegate::StartShortCircuiting(webrtc::RTPSenderVideoFrameTransformerDelegate *this)
{
  pthread_mutex_lock((this + 8));
  *(this + 104) = 1;

  return pthread_mutex_unlock((this + 8));
}

uint64_t webrtc::RTPSenderVideoFrameTransformerDelegate::SetVideoLayersAllocationUnderLock(uint64_t a1, int *a2)
{
  v21[26] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 8));
  v8 = *(a1 + 72);
  if (!v8)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_video_frame_transformer_delegate.cc", 270, "sender_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v17);
  }

  v18 = *a2;
  v19 = *(a2 + 4);
  v9 = *(a2 + 1);
  if (v9)
  {
    v15 = *(a2 + 3);
    v20[1] = *(a2 + 2);
    v20[2] = v15;
    v20[0] = v9;
    *(a2 + 1) = 0;
  }

  else
  {
    if (v9)
    {
      v10 = v9 >> 1;
      v11 = a2 + 4;
      v12 = v21;
      do
      {
        v13 = *(v11 + 1);
        *(v12 - 1) = *v11;
        *v12 = v13;
        *(v12 + 1) = *(v11 + 2);
        *(v11 + 1) = 0;
        *(v12 + 8) = v11[12];
        v14 = *(v11 + 52);
        v11 += 14;
        *(v12 + 36) = v14;
        v12 += 7;
        --v10;
      }

      while (v10);
      v9 = *(a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    }

    v20[0] = v9;
  }

  (*(*v8 + 16))(v8, &v18);
  if (v20[0])
  {
    absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(v20);
  }

  return pthread_mutex_unlock((a1 + 8));
}

void webrtc::CloneSenderVideoFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  (*(*v3 + 16))(v3);
  (*(*v3 + 16))(v3);
  operator new();
}

void webrtc::TransformableVideoSenderFrame::~TransformableVideoSenderFrame(webrtc::TransformableVideoSenderFrame *this)
{
  *this = &unk_28829D318;
  v2 = *(this + 266);
  if (v2)
  {
    *(this + 267) = v2;
    operator delete(v2);
  }

  webrtc::RTPVideoHeader::~RTPVideoHeader((this + 24));
  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_28829D318;
  v2 = *(this + 266);
  if (v2)
  {
    *(this + 267) = v2;
    operator delete(v2);
  }

  webrtc::RTPVideoHeader::~RTPVideoHeader((this + 24));
  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::TransformableVideoSenderFrame::GetData(webrtc::TransformableVideoSenderFrame *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 40))(v1);
  if ((*(*v1 + 48))(v1))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void webrtc::TransformableVideoSenderFrame::GetMimeType(webrtc::TransformableVideoSenderFrame *this@<X0>, unint64_t a2@<X8>)
{
  if ((*(this + 2076) & 1) == 0)
  {
    *(a2 + 23) = 15;
    if (a2 > "video/x-unknown" || a2 + 15 <= "video/x-unknown")
    {
      strcpy(a2, "video/x-unknown");
      return;
    }

    goto LABEL_19;
  }

  v11 = 6;
  if (__p <= "video/" && __p + 6 > "video/")
  {
    goto LABEL_19;
  }

  strcpy(__p, "video/");
  v3 = *(this + 518);
  if (v3 >= 6)
  {
    goto LABEL_20;
  }

  v4 = (&off_279E949D0)[v3];
  v5 = strlen(v4);
  v6 = v5 + 6;
  if (v5 + 6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = v5;
  if (v6 > 0x16)
  {
    operator new();
  }

  if ((*(a2 + 8) = 0, *(a2 + 16) = 0, *a2 = 0, *(a2 + 23) = v6, this = (a2 + 6), __p >= a2) && this > __p || (v8 = __p[0], *(a2 + 4) = WORD2(__p[0]), *a2 = v8, (v7 & 0x8000000000000000) != 0) || (v9 = this + v7, this <= v4) && v9 > v4)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(this);
  }

  if (v7)
  {
    memcpy(this, v4, v7);
  }

  *v9 = 0;
}

void webrtc::TransformableVideoSenderFrame::Metadata(webrtc::TransformableVideoSenderFrame *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  webrtc::RTPVideoHeader::GetAsMetadata((this + 24), a2, a3);
  *(a4 + 1792) = *(this + 530);
  v6 = *(this + 266);
  v7 = *(this + 267);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = *(a4 + 1800);
  if (v8)
  {
    *(a4 + 1808) = v8;
    operator delete(v8);
  }

  *(a4 + 1800) = 0;
  *(a4 + 1808) = 0;
  *(a4 + 1816) = 0;
}

void webrtc::TransformableVideoSenderFrame::SetMetadata(webrtc::TransformableVideoSenderFrame *this, const webrtc::VideoFrameMetadata *a2)
{
  webrtc::RTPVideoHeader::SetFromMetadata((this + 24), a2);
  *(this + 530) = *(a2 + 448);
  v4 = *(a2 + 225);
  v5 = *(a2 + 226);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = *(this + 266);
  if (v6)
  {
    *(this + 267) = v6;
    operator delete(v6);
  }

  *(this + 266) = 0;
  *(this + 267) = 0;
  *(this + 268) = 0;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8sn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264EEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRNS0_6__baseILSE_1EJS8_SA_SB_SC_EEEEEEDcSG_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *(a2 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RTPSenderVideoFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0 &&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v71 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v4 = v3[1];
  v3[1] = 0;
  pthread_mutex_lock((v5 + 8));
  if (*(v5 + 72))
  {
    if ((*(*v4 + 96))(v4) == 2)
    {
      (*(*v4 + 120))(v4);
      if ((v10 & 1) == 0)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_video_frame_transformer_delegate.cc", 232, "transformed_video_frame->CaptureTime().has_value()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v33);
        return absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RTPSenderVideoFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(v30, v31, v32);
      }

      v11 = *(v5 + 72);
      v12 = (*(*v4 + 32))(v4);
      v13 = v4[259];
      v14 = (*(*v4 + 64))(v4);
      v15 = (*(*v4 + 120))(v4);
      if ((v16 & 1) == 0)
      {
        __break(1u);
      }

      v17 = v15;
      v18 = (*(*v4 + 16))(v4);
      v35 = v4[2];
      v36 = v19;
      webrtc::RTPVideoHeader::RTPVideoHeader(v70, (v4 + 3));
      v34 = v4[264];
      (*(*v4 + 160))(v60, v4);
      __p = 0;
      v42 = 0;
      v43 = 0;
      if (v69 != v68)
      {
        if (((v69 - v68) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_40;
      }

      (**v11)(v11, v12, v13 & 0xFFFFFFFFFFLL, v14, v17, v18, v36, v35, v70, v34, &__p);
      if (__p)
      {
        v42 = __p;
        operator delete(__p);
      }

      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v67 != -1)
      {
        (off_28829D3C8[v67])(&v44, v66);
      }

      v67 = -1;
      if (v63)
      {
        operator delete(v64);
      }

      if (v61)
      {
        operator delete(v62);
      }

      webrtc::RTPVideoHeader::~RTPVideoHeader(v70);
    }

    else
    {
      (*(*v4 + 160))(v60, v4);
      v21 = *(v5 + 72);
      v22 = (*(*v4 + 32))(v4);
      v23 = v65;
      v24 = (*(*v4 + 64))(v4);
      v25 = (*(*v4 + 16))(v4);
      v27 = v26;
      (*(*v4 + 16))(v4);
      v37 = v28;
      v45[0] = 0;
      v45[144] = 0;
      memset(&v45[152], 0, 15);
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      *&v50[6] = 0xFF000000000000;
      *v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      webrtc::RTPVideoHeader::SetFromMetadata(v45, v60);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      if (v69 != v68)
      {
        if (((v69 - v68) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_40:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      (**v21)(v21, v22, v23 | 0x100000000, v24, 0x8000000000000000, v25, v27, v37, v45, 10000, &v38);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      webrtc::RTPVideoHeader::~RTPVideoHeader(v45);
      if (v68)
      {
        v69 = v68;
        operator delete(v68);
      }

      if (v67 != -1)
      {
        (off_28829D3C8[v67])(&v44, v66);
      }

      v67 = -1;
      if (v63)
      {
        operator delete(v64);
      }

      if (v61)
      {
        operator delete(v62);
      }
    }

    pthread_mutex_unlock((v5 + 8));
  }

  else
  {
    result = pthread_mutex_unlock((v5 + 8));
    if (!v4)
    {
      return result;
    }
  }

  v29 = *(*v4 + 8);

  return v29(v4);
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RTPSenderVideoFrameTransformerDelegate::OnTransformedFrame(std::unique_ptr<webrtc::TransformableFrameInterface>)::$_0>(char a1, uint64_t *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v4 = *a2;
    *a2 = 0;
    a2[1] = 0;
    *a3 = v4;
  }

  v5 = a2[1];
  a2[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = *a2;
  if (*a2)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void webrtc::RtpSeqNumOnlyRefFinder::ManageFrame(uint64_t a1@<X0>, webrtc::RtpFrameObject **a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = webrtc::RtpSeqNumOnlyRefFinder::ManageFrameInternal(a1, *a2);
  *a3 = 0;
  if (v6 == 2)
  {
    return;
  }

  if (v6 == 1)
  {
    v7 = *a2;
    *a2 = 0;
    *a3 = 2;
    a3[1] = v7;

    webrtc::RtpSeqNumOnlyRefFinder::RetryStashedFrames(a1, a3);
    return;
  }

  v8 = *(a1 + 88);
  if (v8 >= 0x65)
  {
    v9 = *(a1 + 80);
    v10 = v8 - 1;
    v11 = v9 + v8 - 1;
    v12 = *(a1 + 56);
    v13 = *(v12 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8));
    if (!v13)
    {
      __break(1u);
      goto LABEL_37;
    }

    v14 = v11 & 0x1FF;
    v15 = *(v13 + 8 * v14);
    *(v13 + 8 * v14) = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      v12 = *(a1 + 56);
      v9 = *(a1 + 80);
      v8 = *(a1 + 88);
      v10 = v8 - 1;
    }

    v16 = *(a1 + 64);
    *(a1 + 88) = v10;
    if (v16 == v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = ((v16 - v12) << 6) - 1;
    }

    if (v17 - (v9 + v8) + 1 >= 0x400)
    {
      operator delete(*(v16 - 8));
      *(a1 + 64) -= 8;
    }
  }

  v18 = *(a1 + 80);
  if (!v18)
  {
    v20 = *(a1 + 56);
    v19 = *(a1 + 64);
    v21 = ((v19 - v20) << 6) - 1;
    v22 = v19 - v20;
    if (v19 == v20)
    {
      v21 = 0;
    }

    if ((v21 - *(a1 + 88)) >= 0x200)
    {
      *(a1 + 80) = 512;
      v31 = *(v19 - 8);
      *(a1 + 64) = v19 - 8;
      std::__split_buffer<std::unique_ptr<webrtc::RtpFrameObject> *,std::allocator<std::unique_ptr<webrtc::RtpFrameObject> *>>::emplace_front<std::unique_ptr<webrtc::RtpFrameObject> *>((a1 + 48), &v31);
      v18 = *(a1 + 80);
      goto LABEL_29;
    }

    v23 = *(a1 + 72);
    v24 = *(a1 + 48);
    if (v22 < v23 - v24)
    {
      if (v20 != v24)
      {
        operator new();
      }

      operator new();
    }

    if (v23 == v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = (v23 - v24) >> 2;
    }

    if (!(v25 >> 61))
    {
      operator new();
    }

LABEL_37:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_29:
  v26 = *(a1 + 56);
  v27 = (v26 + 8 * (v18 >> 9));
  if (*(a1 + 64) == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = *v27 + 8 * (v18 & 0x1FF);
  }

  if (v28 == *v27)
  {
    v28 = *(v27 - 1) + 4096;
  }

  v29 = *a2;
  *a2 = 0;
  *(v28 - 8) = v29;
  v30 = *(a1 + 88) + 1;
  *(a1 + 80) = v18 - 1;
  *(a1 + 88) = v30;
}

uint64_t webrtc::RtpSeqNumOnlyRefFinder::ManageFrameInternal(webrtc::RtpSeqNumOnlyRefFinder *this, webrtc::RtpFrameObject *a2)
{
  if (*(a2 + 666) == 3)
  {
    v4 = *(a2 + 2279);
    v5 = *(this + 1);
    if (!v5)
    {
LABEL_15:
      operator new();
    }

    v6 = *(v5 + 13);
    while (v6 != v4)
    {
      v8 = v6;
      v9 = v6 - v4;
      v10 = v6 > v4;
      v11 = (v6 - v4) >= 0;
      if (v9 == 0x8000)
      {
        v11 = v10;
      }

      if (v11)
      {
        v7 = *v5;
        if (!*v5)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v12 = v4 - v8;
        v13 = v4 > v8;
        if (v12 == 0x8000)
        {
          v14 = v13;
        }

        else
        {
          v14 = (v12 & 0x8000u) == 0;
        }

        if (!v14)
        {
          break;
        }

        v7 = v5[1];
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      v6 = *(v7 + 13);
      v5 = v7;
    }
  }

  if (!*(this + 2))
  {
    return 0;
  }

  v15 = *(a2 + 2279);
  v17 = (this + 8);
  i = *(this + 1);
  v18 = this + 8;
  if (i)
  {
    v19 = v15 - 100;
    v18 = this + 8;
    v20 = *(this + 1);
    do
    {
      while (1)
      {
        v26 = *(v20 + 13);
        if (v26 != v19)
        {
          break;
        }

        v18 = v20;
        v20 = *v20;
        if (!v20)
        {
          goto LABEL_30;
        }
      }

      v21 = (v15 - 100) - v26;
      v22 = v26 < v19;
      v23 = (v19 - v26) >= 0;
      if (v21 == 0x8000)
      {
        v23 = v22;
      }

      v24 = !v23;
      if (v23)
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v18 = v20;
      }

      v20 = *&v20[v25];
    }

    while (v20);
  }

LABEL_30:
  v27 = *this;
  if (*this == v18)
  {
    if (!i)
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  do
  {
    v28 = *(this + 2);
    v29 = v28 > 1;
    v30 = v28 - 1;
    if (!v29)
    {
      break;
    }

    v31 = v27[1];
    v32 = v27;
    if (v31)
    {
      do
      {
        v33 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      do
      {
        v33 = v32[2];
        v24 = *v33 == v32;
        v32 = v33;
      }

      while (!v24);
    }

    if (*this == v27)
    {
      *this = v33;
    }

    *(this + 2) = v30;
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(this + 1), v27);
    operator delete(v27);
    v27 = v33;
  }

  while (v33 != v18);
  v15 = *(a2 + 2279);
  for (i = *v17; i; i = *v40)
  {
LABEL_44:
    v34 = *(i + 26);
    if (v34 - v15 == 0x8000)
    {
      v35 = v34 > v15;
    }

    else
    {
      v35 = (v34 - v15) >= 0;
    }

    v36 = !v35;
    if (v35)
    {
      v37 = 0;
    }

    else
    {
      v37 = 8;
    }

    v38 = (i + v37);
    if (v36)
    {
      v39 = v17;
    }

    else
    {
      v39 = i;
    }

    v40 = (i + 8);
    if (v34 != v15)
    {
      v40 = v38;
      v17 = v39;
    }
  }

LABEL_56:
  if (v17 != *this)
  {
    v41 = *v17;
    if (*v17)
    {
      do
      {
        v42 = v41;
        v41 = *(v41 + 8);
      }

      while (v41);
    }

    else
    {
      do
      {
        v42 = v17[2];
        v24 = *v42 == v17;
        v17 = v42;
      }

      while (v24);
    }

    v43 = *(v42 + 28);
    v44 = *(a2 + 666);
    if (v44 != 4 || *(v42 + 30) == (*(a2 + 2278) - 1))
    {
      *(a2 + 312) = v15;
      *(a2 + 44) = v44 == 4;
      v45 = v43;
      if (*(this + 106))
      {
        v46 = *(this + 52);
        v47 = v43 >= v46;
        LODWORD(v48) = v43 - v46;
        v49 = v48 != 0 && v47;
        v50 = (v48 & 0x8000u) == 0;
        if (v48 == 0x8000)
        {
          v50 = v49;
        }

        if (v50)
        {
          v48 = v48;
        }

        else
        {
          v48 |= 0xFFFFFFFFFFFF0000;
        }

        v45 = v48 + *(this + 12);
      }

      *(this + 12) = v45;
      *(this + 52) = v43;
      *(this + 106) = 1;
      *(a2 + 45) = v45;
      v51 = *(a2 + 312);
      if (v43 != v51)
      {
        v52 = *(a2 + 312) - v43;
        v53 = v43 < v51;
        v54 = (v51 - v43) >= 0;
        if (v52 == 0x8000)
        {
          v54 = v53;
        }

        if (v54)
        {
          *(v42 + 28) = v51;
          *(v42 + 30) = v51;
        }
      }

      webrtc::RtpSeqNumOnlyRefFinder::UpdateLastPictureIdWithPadding(this, v51);
      *(a2 + 196) = 1;
      *(a2 + 48) = 0;
      v55 = *(a2 + 312);
      if (*(this + 106))
      {
        v56 = *(this + 52);
        v57 = v55 - v56;
        v58 = (v55 - v56);
        v59 = (v55 - v56);
        v60 = *(a2 + 312) - v56;
        v61 = v56 < v55;
        v62 = v58 >= 0;
        if (v60 != 0x8000)
        {
          v61 = v62;
        }

        if (v61)
        {
          v63 = v59;
        }

        else
        {
          v63 = v57 | 0xFFFFFFFFFFFF0000;
        }

        v64 = v63 + *(this + 12);
      }

      else
      {
        v64 = *(a2 + 312);
      }

      *(this + 12) = v64;
      *(this + 52) = v55;
      result = 1;
      *(this + 106) = 1;
      *(a2 + 312) = v64;
      return result;
    }

    return 0;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/rtp_seq_num_only_ref_finder.cc");
  }

  return 2;
}

int64x2_t *webrtc::RtpSeqNumOnlyRefFinder::RetryStashedFrames(int64x2_t *this, unint64_t *a2)
{
  v3 = this;
  v4 = a2 + 1;
  v5 = this[3].i64[1];
  v6 = this[4].i64[0];
LABEL_3:
  v7 = v5 + 8 * (v3[5].i64[0] >> 9);
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*v7 + 8 * (v3[5].i64[0] & 0x1FF));
  }

  v9 = 0;
  while (1)
  {
    if (v6 == v5)
    {
      if (!v8)
      {
LABEL_2:
        if ((v9 & 1) == 0)
        {
          return this;
        }

        goto LABEL_3;
      }
    }

    else
    {
      v11 = v3[5].i64[1] + v3[5].i64[0];
      if (v8 == (*(v5 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF)))
      {
        goto LABEL_2;
      }
    }

    this = webrtc::RtpSeqNumOnlyRefFinder::ManageFrameInternal(v3, *v8);
    if (this == 2)
    {
      goto LABEL_8;
    }

    if (this == 1)
    {
      break;
    }

    if ((++v8 - *v7) == 4096)
    {
      v16 = *(v7 + 8);
      v7 += 8;
      v8 = v16;
    }

LABEL_9:
    v5 = v3[3].i64[1];
    v6 = v3[4].i64[0];
  }

  v12 = *a2;
  v13 = a2[1];
  if (*a2)
  {
    v14 = a2[2];
  }

  else
  {
    v13 = v4;
    v14 = 3;
  }

  if (v12 >> 1 == v14)
  {
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::EmplaceBackSlow<std::unique_ptr<webrtc::RtpFrameObject>>(a2);
  }

  if (v13)
  {
    v15 = *v8;
    *v8 = 0;
    v13[v12 >> 1] = v15;
    *a2 = v12 + 2;
    v9 = 1;
LABEL_8:
    this = std::deque<std::unique_ptr<webrtc::RtpFrameObject>>::erase(v3 + 3, v7, v8);
    v7 = this;
    v8 = v10;
    goto LABEL_9;
  }

  __break(1u);
  return this;
}

void webrtc::RtpSeqNumOnlyRefFinder::UpdateLastPictureIdWithPadding(webrtc::RtpSeqNumOnlyRefFinder *this, unsigned int a2)
{
  v2 = a2;
  v5 = this + 8;
  v4 = *(this + 1);
  v6 = (this + 8);
  if (v4)
  {
    v6 = (this + 8);
    do
    {
      v7 = *(v4 + 26);
      if (v7 - a2 == 0x8000)
      {
        v8 = v7 > a2;
      }

      else
      {
        v8 = (v7 - a2) >= 0;
      }

      v9 = !v8;
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = 8;
      }

      v11 = (v4 + v10);
      if (v9)
      {
        v12 = v6;
      }

      else
      {
        v12 = v4;
      }

      v13 = (v4 + 8);
      if (v7 != a2)
      {
        v13 = v11;
        v6 = v12;
      }

      v4 = *v13;
    }

    while (v4);
  }

  if (v6 != *this)
  {
    v14 = *v6;
    if (*v6)
    {
      do
      {
        v15 = v14;
        v14 = *(v14 + 8);
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v6[2];
        v9 = *v15 == v6;
        v6 = v15;
      }

      while (v9);
    }

    v17 = this + 32;
    v16 = *(this + 4);
    if (v16)
    {
      v18 = *(v15 + 30) + 1;
      v19 = this + 32;
      do
      {
        while (1)
        {
          v25 = *(v16 + 13);
          if (v25 != v18)
          {
            break;
          }

          v19 = v16;
          v16 = *v16;
          if (!v16)
          {
            goto LABEL_33;
          }
        }

        v20 = (*(v15 + 30) + 1) - v25;
        v21 = v25 < v18;
        v22 = (v18 - v25) >= 0;
        if (v20 == 0x8000)
        {
          v22 = v21;
        }

        v23 = !v22;
        if (v22)
        {
          v24 = 8;
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          v19 = v16;
        }

        v16 = *&v16[v24];
      }

      while (v16);
LABEL_33:
      if (v19 != v17)
      {
        do
        {
          if (*(v19 + 13) != v18)
          {
            break;
          }

          *(v15 + 30) = v18;
          v27 = *(v19 + 1);
          v28 = v19;
          if (v27)
          {
            do
            {
              v29 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v29 = *(v28 + 2);
              v9 = *v29 == v28;
              v28 = v29;
            }

            while (!v9);
          }

          if (*(this + 3) == v19)
          {
            *(this + 3) = v29;
          }

          ++v18;
          v26 = *(this + 4);
          --*(this + 5);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v26, v19);
          operator delete(v19);
          v19 = v29;
        }

        while (v29 != v17);
      }
    }

    if ((v2 - *(v15 + 26)) >= 0x2711u)
    {
      std::__tree<sigslot::_signal_base_interface *>::destroy(this, *(this + 1));
      *(this + 1) = 0;
      *(this + 2) = 0;
      *this = v5;
      operator new();
    }
  }
}