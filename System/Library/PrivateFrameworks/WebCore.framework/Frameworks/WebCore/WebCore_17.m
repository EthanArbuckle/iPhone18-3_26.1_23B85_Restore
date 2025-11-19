uint64_t webrtc::DtlsSrtpTransport::ExtractParams(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    v3 = result;
    result = (*(*result + 96))(result);
    if (result)
    {
      if ((*(*v3 + 136))(v3, a2))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          (*(*v3 + 16))(v3);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
        }

        v11 = *a2 - 1;
        if (v11 < 8 && ((0xC3u >> v11) & 1) != 0)
        {
          operator new[]();
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
        }
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_srtp_transport.cc");
      }

      return 0;
    }
  }

  return result;
}

uint64_t webrtc::BufferT<unsigned char,true>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    bzero(*(a1 + 16), v4);
  }

  *a1 = *a2;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  if (v5)
  {
    MEMORY[0x2743DA520](v5, 0x1000C8077774924);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return a1;
}

void webrtc::DtlsSrtpTransport::~DtlsSrtpTransport(webrtc::DtlsSrtpTransport *this)
{
  *this = &unk_288292AD8;
  v2 = this + 752;
  v3 = *(this + 97);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if (*(this + 736) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(this + 736) == 1)
  {
LABEL_7:
    v4 = *(this + 89);
    if (v4)
    {
      *(this + 90) = v4;
      operator delete(v4);
    }
  }

LABEL_9:
  if (*(this + 704) == 1)
  {
    v5 = *(this + 85);
    if (v5)
    {
      *(this + 86) = v5;
      operator delete(v5);
    }
  }

  webrtc::SrtpTransport::~SrtpTransport(this);
}

{
  *this = &unk_288292AD8;
  v2 = this + 752;
  v3 = *(this + 97);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if (*(this + 736) != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if (*(this + 736) != 1)
    {
LABEL_9:
      if (*(this + 704) == 1)
      {
        v5 = *(this + 85);
        if (v5)
        {
          *(this + 86) = v5;
          operator delete(v5);
        }
      }

      webrtc::SrtpTransport::~SrtpTransport(this);

      JUMPOUT(0x2743DA540);
    }
  }

  v4 = *(this + 89);
  if (v4)
  {
    *(this + 90) = v4;
    operator delete(v4);
  }

  goto LABEL_9;
}

void webrtc::SrtpTransport::~SrtpTransport(webrtc::SrtpTransport *this)
{
  *this = &unk_28829FF10;
  v2 = *(this + 78);
  if (v2)
  {
    bzero(*(this + 79), v2);
  }

  v3 = *(this + 79);
  *(this + 79) = 0;
  if (v3)
  {
    MEMORY[0x2743DA520](v3, 0x1000C8077774924);
  }

  v4 = *(this + 75);
  if (v4)
  {
    bzero(*(this + 76), v4);
  }

  v5 = *(this + 76);
  *(this + 76) = 0;
  if (v5)
  {
    MEMORY[0x2743DA520](v5, 0x1000C8077774924);
  }

  v6 = *(this + 71);
  *(this + 71) = 0;
  if (v6)
  {
    webrtc::SrtpSession::~SrtpSession(v6);
    MEMORY[0x2743DA540]();
  }

  v7 = *(this + 70);
  *(this + 70) = 0;
  if (v7)
  {
    webrtc::SrtpSession::~SrtpSession(v7);
    MEMORY[0x2743DA540]();
  }

  v8 = *(this + 69);
  *(this + 69) = 0;
  if (v8)
  {
    webrtc::SrtpSession::~SrtpSession(v8);
    MEMORY[0x2743DA540]();
  }

  v9 = *(this + 68);
  *(this + 68) = 0;
  if (v9)
  {
    webrtc::SrtpSession::~SrtpSession(v9);
    MEMORY[0x2743DA540]();
  }

  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  *this = &unk_28829DC80;
  v10 = *(this + 64);
  *(v10 + 4) = 0;
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::RtpDemuxer::~RtpDemuxer((this + 280));
  *this = &unk_288292B80;
  if (*(this + 240) == 1)
  {
    goto LABEL_67;
  }

  v15 = *(this + 27);
  if (v15)
  {
    v16 = *(this + 28);
    v17 = *(this + 27);
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 8);
        if (v18)
        {
          v18(v16 - 48);
        }

        v16 -= 56;
      }

      while (v16 != v15);
      v17 = *(this + 27);
    }

    *(this + 28) = v15;
    operator delete(v17);
  }

  if (*(this + 208) == 1)
  {
    goto LABEL_67;
  }

  v19 = *(this + 23);
  if (v19)
  {
    v20 = *(this + 24);
    v21 = *(this + 23);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 8);
        if (v22)
        {
          v22(v20 - 48);
        }

        v20 -= 56;
      }

      while (v20 != v19);
      v21 = *(this + 23);
    }

    *(this + 24) = v19;
    operator delete(v21);
  }

  if (*(this + 176) == 1)
  {
    goto LABEL_67;
  }

  v23 = *(this + 19);
  if (v23)
  {
    v24 = *(this + 20);
    v25 = *(this + 19);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 8);
        if (v26)
        {
          v26(v24 - 48);
        }

        v24 -= 56;
      }

      while (v24 != v23);
      v25 = *(this + 19);
    }

    *(this + 20) = v23;
    operator delete(v25);
  }

  (*(this + 17))(1, this + 120, this + 120);
  if (*(this + 112) == 1)
  {
    goto LABEL_67;
  }

  v27 = *(this + 11);
  if (v27)
  {
    v28 = *(this + 12);
    v29 = *(this + 11);
    if (v28 != v27)
    {
      do
      {
        v30 = *(v28 - 8);
        if (v30)
        {
          v30(v28 - 48);
        }

        v28 -= 56;
      }

      while (v28 != v27);
      v29 = *(this + 11);
    }

    *(this + 12) = v27;
    operator delete(v29);
  }

  if (*(this + 80) == 1)
  {
LABEL_67:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v11, v12, v13, v14, v36);
    webrtc::RtpTransportInternal::~RtpTransportInternal(v35);
  }

  v31 = *(this + 7);
  if (v31)
  {
    v32 = *(this + 8);
    v33 = *(this + 7);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 8);
        if (v34)
        {
          v34(v32 - 48);
        }

        v32 -= 56;
      }

      while (v32 != v31);
      v33 = *(this + 7);
    }

    *(this + 8) = v31;
    operator delete(v33);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
}

{
  webrtc::SrtpTransport::~SrtpTransport(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::DtlsSrtpTransport::SetDtlsTransport(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportInternal **)::$_0>(webrtc::DtlsSrtpTransport **a1, uint64_t a2, int a3)
{
  v4 = *a1;
  v5 = *(*a1 + 97);
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  if (a3 == 2)
  {

    webrtc::DtlsSrtpTransport::MaybeSetupDtlsSrtp(v4);
  }

  else
  {

    webrtc::SrtpTransport::ResetParams(v4);
  }
}

void webrtc::DtlsStunPiggybackController::DtlsStunPiggybackController(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  (*(a2 + 16))(0);
  *(a1 + 56) = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  *(a1 + 88) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  operator new[]();
}

void webrtc::DtlsStunPiggybackController::~DtlsStunPiggybackController(webrtc::DtlsStunPiggybackController *this)
{
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    MEMORY[0x2743DA520](v2, 0x1000C8077774924);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  (*(this + 11))(1, this + 72, this + 72);
  (*(this + 7))(1, this + 40, this + 40);
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 3);
    v6 = *(this + 2);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 8);
        *(v5 - 8) = 0;
        if (v7)
        {
          v8 = *(v7 + 16);
          *(v7 + 16) = 0;
          if (v8)
          {
            MEMORY[0x2743DA520](v8, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v7, 0x1010C40A79CA2DELL);
        }

        v5 -= 16;
      }

      while (v5 != v4);
      v6 = *(this + 2);
    }

    *(this + 3) = v4;
    operator delete(v6);
  }
}

void webrtc::DtlsStunPiggybackController::ReportDataPiggybacked(webrtc::DtlsStunPiggybackController *this, char **a2, const webrtc::StunByteStringAttribute *a3)
{
  v3 = *this;
  if ((*this - 3) < 2)
  {
    return;
  }

  if (!a3 && !a2 && !v3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_stun_piggyback_controller.cc");
    }

    *this = 4;
    return;
  }

  if (!a3 && !a2 && v3 == 2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_stun_piggyback_controller.cc");
    }

    *this = 3;
    v19 = *(this + 2);
    for (i = *(this + 3); i != v19; i -= 16)
    {
      v21 = *(i - 8);
      *(i - 8) = 0;
      if (v21)
      {
        v22 = *(v21 + 16);
        *(v21 + 16) = 0;
        if (v22)
        {
          MEMORY[0x2743DA520](v22, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v21, 0x1010C40A79CA2DELL);
      }
    }

    goto LABEL_146;
  }

  if (!v3)
  {
    *this = 1;
  }

  v106 = a2;
  if (!a3)
  {
    if (a2)
    {
      goto LABEL_124;
    }

    return;
  }

  if (*(this + 2) == *(this + 3))
  {
    goto LABEL_123;
  }

  v107 = xmmword_273B91FB0;
  v23 = *(a3 + 5);
  if (*(a3 + 5))
  {
    v24 = *(a3 + 2);
  }

  else
  {
    v24 = 0;
  }

  if (v23 >= 4)
  {
    v25 = 0;
    do
    {
      v37 = bswap32(*(v24 + v25));
      if (v107 > 1)
      {
        v30 = 0;
        _X9 = v108;
        __asm { PRFM            #4, [X9] }

        v45 = (((&absl::hash_internal::MixingHashState::kSeed + v37) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::hash_internal::MixingHashState::kSeed + v37));
        v31 = (v108 >> 12) ^ (v45 >> 7);
        v46 = vdup_n_s8(v45 & 0x7F);
        while (1)
        {
          v26 = v31 & v107;
          v27 = *&v108[v26];
          v28 = vceq_s8(v27, v46);
          if (v28)
          {
            break;
          }

LABEL_32:
          v29 = vceq_s8(v27, 0x8080808080808080);
          if (v29)
          {
            inserted = absl::container_internal::PrepareInsertNonSoo(&v107, v45, (v26 + (__clz(__rbit64(v29)) >> 3)) & v107, v30, &absl::container_internal::raw_hash_set<absl::container_internal::FlatHashSetPolicy<unsigned int>,absl::hash_internal::Hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::GetPolicyFunctions(void)::value);
            if (!v109)
            {
              goto LABEL_162;
            }

            v38 = v109 + inserted;
            goto LABEL_43;
          }

          v30 += 8;
          v31 = v30 + v26;
        }

        while (*(v109 + ((v26 + (__clz(__rbit64(v28)) >> 3)) & v107)) != v37)
        {
          v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v28)
          {
            goto LABEL_32;
          }
        }
      }

      else if (*(&v107 + 1) > 1uLL)
      {
        if (v108 != v37)
        {
          absl::container_internal::raw_hash_set<absl::container_internal::FlatHashSetPolicy<unsigned int>,absl::hash_internal::Hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::resize_impl(&v107, 3);
        }
      }

      else
      {
        *(&v107 + 1) = 2;
        v38 = &v108;
LABEL_43:
        *v38 = v37;
      }

      v25 += 4;
    }

    while ((v23 - v25) > 3);
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    goto LABEL_120;
  }

  memset(&v110, 0, sizeof(v110));
  if (*(&v107 + 1) < 2uLL)
  {
    goto LABEL_166;
  }

  if (v107 >= 2)
  {
    v50 = v108;
    v24 = v109;
    if (*v108 <= -2)
    {
      do
      {
        v51 = __clz(__rbit64((*v50 | ~(*v50 >> 7)) & 0x101010101010101)) >> 3;
        v50 += v51;
        v24 = (v24 + 4 * v51);
      }

      while (*v50 < -1);
    }
  }

  else
  {
    v24 = &v108;
    v50 = &absl::container_internal::kSooControl;
  }

LABEL_53:
  v52 = 0;
  v53 = &absl::container_internal::kEmptyGroup;
  if (v50)
  {
    goto LABEL_57;
  }

  while (1)
  {
    if (v50 == &unk_273BA1AE0)
    {
      absl::raw_log_internal::RawLog(3, "raw_hash_set.h", 1720, "Invalid iterator comparison. %s", v33, v34, v35, v36, "Comparing default-constructed hashtable iterator with a non-default-constructed hashtable iterator.");
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (!v50)
    {
      break;
    }

    if (*v50 < 0)
    {
LABEL_163:
      v104 = "operator*()";
LABEL_165:
      absl::raw_log_internal::RawLog(3, "raw_hash_set.h", 1647, "%s called on invalid iterator. The element might have been erased or the table might have rehashed. Consider running with --config=asan to diagnose rehashing issues.", v33, v34, v35, v36, v104);
      __break(1u);
LABEL_166:
      v50 = 0;
      goto LABEL_53;
    }

    if (v52)
    {
      size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = 22;
      }

      else
      {
        v55 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v110.__r_.__value_.__l.__size_;
      }

      if (v55 == size)
      {
        std::string::__grow_by_and_replace(&v110, v55, 1uLL, v55, v55, 0, 1uLL, ",");
      }

      else
      {
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v110;
        }

        else
        {
          v56 = v110.__r_.__value_.__r.__words[0];
        }

        v57 = v56 + size;
        if (v56 + size <= "," && v57 + 1 > ",")
        {
          goto LABEL_162;
        }

        *v57 = 44;
        v58 = size + 1;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          v110.__r_.__value_.__l.__size_ = v58;
        }

        else
        {
          *(&v110.__r_.__value_.__s + 23) = v58 & 0x7F;
        }

        v56->__r_.__value_.__s.__data_[v58] = 0;
      }
    }

    v59 = *v24;
    __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v60 = absl::numbers_internal::FastIntToBuffer(v59, &__p, v48);
    v61 = v60 - &__p;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ < v61)
      {
LABEL_167:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__l.__size_ = v60 - &__p;
    }

    else
    {
      if (v61 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_167;
      }

      *(&__p.__r_.__value_.__s + 23) = v60 - &__p;
      p_p = &__p;
    }

    p_p->__r_.__value_.__s.__data_[v61] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = __p.__r_.__value_.__l.__size_;
    }

    if (!v36 && v35)
    {
      goto LABEL_162;
    }

    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = 22;
    }

    else
    {
      v47 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v110.__r_.__value_.__l.__size_;
    }

    if (v47 - v63 >= v35)
    {
      if (v35)
      {
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v110;
        }

        else
        {
          v64 = v110.__r_.__value_.__r.__words[0];
        }

        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_162;
        }

        v65 = v53;
        v66 = v64 + v63;
        if ((v64 + v63) <= v36 && &v66[v35] > v36)
        {
          goto LABEL_162;
        }

        v67 = v35;
        memmove(v66, v36, v35);
        v68 = v63 + v67;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          v110.__r_.__value_.__l.__size_ = v63 + v67;
        }

        else
        {
          *(&v110.__r_.__value_.__s + 23) = v68 & 0x7F;
        }

        v53 = v65;
        v64->__r_.__value_.__s.__data_[v68] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v110, v47, v63 + v35 - v47, v63, v63, 0, v35, v36);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*v50 < 0)
    {
      v104 = "operator++";
      goto LABEL_165;
    }

    v70 = *++v50;
    LOBYTE(v69) = v70;
    v24 = (v24 + 4);
    if (v70 <= -2)
    {
      do
      {
        v71 = __clz(__rbit64((*v50 | ~(*v50 >> 7)) & 0x101010101010101)) >> 3;
        v50 += v71;
        v24 = (v24 + 4 * v71);
        v69 = *v50;
      }

      while (v69 < -1);
    }

    ++v52;
    if (v69 == 255)
    {
      v50 = 0;
    }

    else if (v50)
    {
LABEL_57:
      if (v50 != v53 + 16 && *v50 < 0)
      {
        goto LABEL_162;
      }
    }
  }

  __p = v110;
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v47, v48, v49, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_stun_piggyback_controller.cc");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_120:
  webrtc::PacketStash::Prune(this + 1, &v107);
  if (v107 >= 2)
  {
    operator delete(&v108[-(BYTE8(v107) & 1) - 8]);
  }

  a2 = v106;
LABEL_123:
  if (a2)
  {
LABEL_124:
    v72 = *(a2 + 5);
    if (!*(a2 + 5))
    {
      return;
    }

    if (v72 < 0xD || (v73 = a2[2], *v73 - 20 >= 0x2C))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v79, v80, v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_stun_piggyback_controller.cc");
      }

      return;
    }

    ++*(this + 38);
    v24 = &unk_280905000;
    {
      a2 = v106;
      if (v105)
      {
        webrtc::LoadCrc32Table(v105);
        webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table = webrtc::LoadCrc32Table(void)::kCrc32Table;
        a2 = v106;
      }
    }

    v74 = -1;
    do
    {
      v75 = *v73++;
      v74 = *(webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table + 4 * (v75 ^ v74)) ^ (v74 >> 8);
      --v72;
    }

    while (v72);
    v76 = ~v74;
    LODWORD(__p.__r_.__value_.__l.__data_) = ~v74;
    v77 = *(this + 13);
    v78 = *(this + 14);
    if (v77 != v78)
    {
      while (*v77 != v76)
      {
        if (++v77 == v78)
        {
          goto LABEL_149;
        }
      }
    }

    if (v77 != v78)
    {
      goto LABEL_158;
    }

LABEL_149:
    std::vector<unsigned int>::push_back[abi:sn200100](this + 13, &__p);
    LODWORD(v107) = bswap32(v76);
    webrtc::ByteBufferWriterT<webrtc::BufferT<unsigned char,false>>::WriteBytesInternal(this + 16, &v107);
    a2 = v106;
    if (*(this + 16) < 0x11uLL)
    {
      goto LABEL_158;
    }

    v97 = *(this + 13);
    v96 = *(this + 14);
    if (v96 != v97)
    {
      v98 = v96 - (v97 + 4);
      if (v96 != v97 + 4)
      {
        memmove(*(this + 13), (v97 + 4), v96 - (v97 + 4));
        a2 = v106;
      }

      v99 = *(this + 13);
      *(this + 14) = v97 + v98;
      *(this + 16) = 0;
      if (v99 != v97 + v98)
      {
        v100 = 0;
        do
        {
          v101 = v100 + 4;
          if (*(this + 17) < (v100 + 4))
          {
            operator new[]();
          }

          *(*(this + 18) + v100) = bswap32(*(v99 + v100));
          *(this + 16) = v101;
          v100 += 4;
        }

        while (v99 + v101 != v97 + v98);
      }

LABEL_158:
      v102 = a2[2];
      v103 = *(a2 + 5);
      if (!*(a2 + 5))
      {
        v102 = 0;
      }

      *&v107 = v102;
      *(&v107 + 1) = v103;
      (*(this + 8))(this + 40, &v107);
      return;
    }

    goto LABEL_162;
  }

  if (*this != 2)
  {
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v86, v87, v88, v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_stun_piggyback_controller.cc");
  }

  *this = 3;
  v19 = *(this + 2);
  for (j = *(this + 3); j != v19; j -= 16)
  {
    v94 = *(j - 8);
    *(j - 8) = 0;
    if (v94)
    {
      v95 = *(v94 + 16);
      *(v94 + 16) = 0;
      if (v95)
      {
        MEMORY[0x2743DA520](v95, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v94, 0x1010C40A79CA2DELL);
    }
  }

LABEL_146:
  *(this + 3) = v19;
  *(this + 2) = 0;
  *(this + 16) = 0;
  *(this + 14) = *(this + 13);
}

unint64_t *webrtc::ByteBufferWriterT<webrtc::BufferT<unsigned char,false>>::WriteBytesInternal(unint64_t *result, _DWORD *a2)
{
  v2 = *result + 4;
  if (result[1] < v2)
  {
    operator new[]();
  }

  *(result[2] + *result) = *a2;
  *result = v2;
  return result;
}

void webrtc::DtlsTransport::DtlsTransport(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = &unk_288292C38;
  *(a1 + 8) = 0;
  {
    {
      operator new();
    }
  }

  *(a1 + 16) = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  pthread_mutexattr_init(&v5);
  pthread_mutexattr_setpolicy_np(&v5, 3);
  pthread_mutex_init((a1 + 24), &v5);
  pthread_mutexattr_destroy(&v5);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 144) = v4;
  (*(*v4 + 216))(v4);
  operator new();
}

uint64_t webrtc::DtlsTransport::UpdateInformation(webrtc::DtlsTransport *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    pthread_mutex_lock((this + 24));
    *(this + 22) = 3;
    *(this + 92) = 0;
    *(this + 96) = 0;
    *(this + 100) = 0;
    *(this + 104) = 0;
    *(this + 108) = 0;
    *(this + 112) = 0;
    *(this + 116) = 0;
    *(this + 120) = 0;
    v6 = *(this + 16);
    *(this + 16) = 0;
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = v6[1];
        v9 = *v6;
        if (v8 == v7)
        {
          goto LABEL_31;
        }

        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            (*(*v10 + 8))(v10);
          }
        }

        while (v8 != v7);
LABEL_30:
        v9 = *v6;
LABEL_31:
        v6[1] = v7;
        operator delete(v9);
      }

LABEL_32:
      MEMORY[0x2743DA540](v6, 0x20C40960023A9);
    }

LABEL_33:
    *(this + 136) = 0;
    *(this + 140) = 0;

    return pthread_mutex_unlock((this + 24));
  }

  if ((*(*v2 + 80))(v2) != 2)
  {
    v12 = (*(**(this + 18) + 80))(*(this + 18));
    pthread_mutex_lock((this + 24));
    *(this + 22) = v12;
    *(this + 92) = 0;
    *(this + 96) = 0;
    *(this + 100) = 0;
    *(this + 104) = 0;
    *(this + 108) = 0;
    *(this + 112) = 0;
    *(this + 116) = 0;
    *(this + 120) = 0;
    v6 = *(this + 16);
    *(this + 16) = 0;
    if (v6)
    {
      v7 = *v6;
      if (*v6)
      {
        v13 = v6[1];
        v9 = *v6;
        if (v13 == v7)
        {
          goto LABEL_31;
        }

        do
        {
          v15 = *--v13;
          v14 = v15;
          *v13 = 0;
          if (v15)
          {
            (*(*v14 + 8))(v14);
          }
        }

        while (v13 != v7);
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v60 = 0;
  v61 = 0;
  v3 = (*(**(this + 18) + 104))(*(this + 18), &v61 + 4);
  if (!v3)
  {
LABEL_21:
    v4 = 0;
    v5 = 0;
    goto LABEL_22;
  }

  if (HIDWORD(v61) != 1)
  {
    if (!HIDWORD(v61))
    {
      v4 = 0x100000000;
      v5 = 1;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v4 = 0x100000000;
LABEL_22:
  v16 = (*(**(this + 18) + 120))(*(this + 18), &v60 + 4);
  v17 = v16 & (*(**(this + 18) + 144))(*(this + 18), &v61);
  if ((v3 & (*(**(this + 18) + 136))(*(this + 18), &v60) & v17) == 1)
  {
    v18 = (*(**(this + 18) + 80))(*(this + 18));
    v19 = v5 | v4;
    v20 = HIDWORD(v60);
    v21 = v61;
    v22 = v60;
    (*(**(this + 18) + 184))(&v59);
    v23 = v20 | 0x100000000;
    v24 = (*(**(this + 18) + 128))(*(this + 18)) | 0x100000000;
    v25 = v59;
    v59 = 0;
    pthread_mutex_lock((this + 24));
    *(this + 22) = v18;
    *(this + 92) = v19;
    *(this + 100) = v23;
    *(this + 108) = v21 | 0x100000000;
    *(this + 120) = 1;
    *(this + 29) = v22;
    v26 = *(this + 16);
    *(this + 16) = v25;
    if (v26)
    {
      v27 = *v26;
      if (*v26)
      {
        v28 = v26[1];
        v29 = *v26;
        if (v28 != v27)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              (*(*v30 + 8))(v30);
            }
          }

          while (v28 != v27);
          v29 = *v26;
        }

        v26[1] = v27;
        operator delete(v29);
      }

      MEMORY[0x2743DA540](v26, 0x20C40960023A9);
    }

    *(this + 34) = v24;
    *(this + 140) = BYTE4(v24);
    result = pthread_mutex_unlock((this + 24));
    v49 = v59;
    v59 = 0;
    if (v49)
    {
      v50 = *v49;
      if (*v49)
      {
        v51 = v49[1];
        v52 = *v49;
        if (v51 == v50)
        {
          goto LABEL_67;
        }

        do
        {
          v54 = *--v51;
          v53 = v54;
          *v51 = 0;
          if (v54)
          {
            (*(*v53 + 8))(v53);
          }
        }

        while (v51 != v50);
LABEL_66:
        v52 = *v49;
LABEL_67:
        v49[1] = v50;
        operator delete(v52);
        return MEMORY[0x2743DA540](v49, 0x20C40960023A9);
      }

      return MEMORY[0x2743DA540](v49, 0x20C40960023A9);
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtls_transport.cc");
    }

    v40 = (*(**(this + 18) + 80))(*(this + 18));
    v41 = v5 | v4;
    (*(**(this + 18) + 184))(&v58);
    v42 = v58;
    v58 = 0;
    pthread_mutex_lock((this + 24));
    *(this + 22) = v40;
    *(this + 92) = v41;
    *(this + 108) = 0;
    *(this + 100) = 0;
    *(this + 113) = 0;
    v43 = *(this + 16);
    *(this + 16) = v42;
    if (v43)
    {
      v44 = *v43;
      if (*v43)
      {
        v45 = v43[1];
        v46 = *v43;
        if (v45 != v44)
        {
          do
          {
            v48 = *--v45;
            v47 = v48;
            *v45 = 0;
            if (v48)
            {
              (*(*v47 + 8))(v47);
            }
          }

          while (v45 != v44);
          v46 = *v43;
        }

        v43[1] = v44;
        operator delete(v46);
      }

      MEMORY[0x2743DA540](v43, 0x20C40960023A9);
    }

    *(this + 140) = 0;
    *(this + 34) = 0;
    result = pthread_mutex_unlock((this + 24));
    v49 = v58;
    v58 = 0;
    if (v49)
    {
      v50 = *v49;
      if (*v49)
      {
        v55 = v49[1];
        v52 = *v49;
        if (v55 == v50)
        {
          goto LABEL_67;
        }

        do
        {
          v57 = *--v55;
          v56 = v57;
          *v55 = 0;
          if (v57)
          {
            (*(*v56 + 8))(v56);
          }
        }

        while (v55 != v50);
        goto LABEL_66;
      }

      return MEMORY[0x2743DA540](v49, 0x20C40960023A9);
    }
  }

  return result;
}

void webrtc::DtlsTransport::~DtlsTransport(webrtc::DtlsTransport *this)
{
  *this = &unk_288292C38;
  v2 = *(this + 19);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = v4[1];
      v7 = *v4;
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 8))(v8);
          }
        }

        while (v6 != v5);
        v7 = *v4;
      }

      v4[1] = v5;
      operator delete(v7);
    }

    MEMORY[0x2743DA540](v4, 0x20C40960023A9);
  }

  pthread_mutex_destroy((this + 24));
}

uint64_t webrtc::DtlsTransport::Information@<X0>(webrtc::DtlsTransport *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock((this + 24));
  *a2 = *(this + 22);
  *(a2 + 4) = *(this + 92);
  *(a2 + 20) = *(this + 108);
  v4 = *(this + 16);
  if (v4)
  {
    webrtc::SSLCertChain::Clone(v4);
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = *(this + 17);

  return pthread_mutex_unlock((this + 24));
}

uint64_t (***webrtc::DtlsTransport::ice_transport@<X0>(webrtc::DtlsTransport *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 19);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::DtlsTransport::Clear(webrtc::DtlsTransport *this)
{
  v2 = (*(**(this + 18) + 80))(*(this + 18));
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(*(this + 19) + 16) = 0;
  result = webrtc::DtlsTransport::UpdateInformation(this);
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v2 == 3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    (*(*this + 40))(v13, this);
    result = (**v5)(v5, v13);
    v7 = v14;
    v14 = 0;
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];
        v10 = *v7;
        if (v9 != v8)
        {
          do
          {
            v12 = *--v9;
            v11 = v12;
            *v9 = 0;
            if (v12)
            {
              (*(*v11 + 8))(v11);
            }
          }

          while (v9 != v8);
          v10 = *v7;
        }

        v7[1] = v8;
        operator delete(v10);
      }

      return MEMORY[0x2743DA540](v7, 0x20C40960023A9);
    }
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::IceTransportWithPointer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 6, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::webrtc_function_impl::CallHelpers<void ()(webrtc::DtlsTransportInternal *,webrtc::DtlsTransportState)>::CallInlineStorage<webrtc::DtlsTransport::DtlsTransport(std::unique_ptr<webrtc::DtlsTransportInternal>)::$_0>(webrtc::DtlsTransport **a1)
{
  v1 = *a1;
  result = webrtc::DtlsTransport::UpdateInformation(*a1);
  v3 = *(v1 + 1);
  if (v3)
  {
    (*(*v1 + 40))(v10, v1);
    result = (**v3)(v3, v10);
    v4 = v11;
    v11 = 0;
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = v4[1];
        v7 = *v4;
        if (v6 != v5)
        {
          do
          {
            v9 = *--v6;
            v8 = v9;
            *v6 = 0;
            if (v9)
            {
              (*(*v8 + 8))(v8);
            }
          }

          while (v6 != v5);
          v7 = *v4;
        }

        v4[1] = v5;
        operator delete(v7);
      }

      return MEMORY[0x2743DA540](v4, 0x20C40960023A9);
    }
  }

  return result;
}

uint64_t webrtc::StreamInterfaceChannel::Read(uint64_t a1, void *__dst, size_t a3, size_t *a4)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    return 3;
  }

  if (v6 == 1)
  {
    return 2;
  }

  v7 = *(a1 + 176);
  if (!v7)
  {
    return 2;
  }

  v17[7] = v4;
  v17[8] = v5;
  v9 = *(a1 + 144);
  v10 = *(a1 + 168);
  v11 = (*(v9 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)))[v10 & 0x1FF];
  v17[0] = v11;
  *(a1 + 168) = ++v10;
  *(a1 + 176) = v7 - 1;
  if (v10 >= 0x400)
  {
    v13 = __dst;
    v14 = a3;
    operator delete(*v9);
    a3 = v14;
    __dst = v13;
    *(a1 + 144) += 8;
    *(a1 + 168) -= 512;
  }

  if (*v11 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = *v11;
  }

  memcpy(__dst, *(v11 + 16), v15);
  *a4 = v15;
  std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100]((a1 + 184), v17);
  return 1;
}

uint64_t webrtc::StreamInterfaceChannel::Write(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = a3 ? a2 : 0;
    if (a3 >= 0xD && *a2 - 20 <= 0x2B)
    {
      if ((*(v6 + 4) & 1) == 0)
      {
        v9 = *(v6 + 16);
        for (i = *(v6 + 24); i != v9; i -= 16)
        {
          v10 = *(i - 8);
          *(i - 8) = 0;
          if (v10)
          {
            v11 = *(v10 + 16);
            *(v10 + 16) = 0;
            if (v11)
            {
              MEMORY[0x2743DA520](v11, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v10, 0x1010C40A79CA2DELL);
          }
        }

        *(v6 + 24) = v9;
        *(v6 + 8) = 0;
        *(v6 + 4) = 1;
      }

      webrtc::PacketStash::Add(v6 + 8, v7, a3);
    }
  }

  v13 = -1;
  v14 = 0;
  v15 = -1;
  v16 = -1;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v20 = -1;
  v21 = -1;
  v22 = 0;
  v23 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 0;
  (*(**(a1 + 96) + 40))(*(a1 + 96), a2, a3, &v13, 0);
  *a4 = a3;
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return 1;
}

uint64_t webrtc::StreamInterfaceChannel::Flush(webrtc::StreamInterfaceChannel *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    *(v1 + 4) = 0;
  }

  return 0;
}

BOOL webrtc::StreamInterfaceChannel::OnPacketReceived(webrtc::StreamInterfaceChannel *this, const char *a2, size_t __n)
{
  if (*(this + 22) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
  }

  v13 = webrtc::BufferQueue::WriteBack((this + 120), a2, __n, 0);
  if (!v13 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
  }

  v21 = *(this + 11);
  if (v21)
  {
    v21(this + 64, 2, 0);
  }

  v22 = *(this + 4);
  for (*(this + 6) = v22; v22 != (this + 24); v22 = *(this + 6))
  {
    v24 = v22[2];
    v23 = v22 + 2;
    *(this + 6) = *(v23 - 1);
    v24(v23, this, 2, 0);
  }

  return v13;
}

void webrtc::StreamInterfaceChannel::Close(webrtc::StreamInterfaceChannel *this)
{
  if (*(this + 22))
  {
    v2 = *(this + 18);
    v3 = *(this + 21);
    while (1)
    {
      std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](this + 23, *(v2 + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + (v3 & 0x1FF));
      v4 = *(this + 22);
      if (!v4)
      {
        break;
      }

      v2 = *(this + 18);
      v5 = *(this + 21);
      if (!*(v2 + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)))
      {
        break;
      }

      v6 = v4 - 1;
      v3 = v5 + 1;
      *(this + 21) = v5 + 1;
      *(this + 22) = v6;
      if (v5 + 1 >= 0x400)
      {
        operator delete(*v2);
        v2 = (*(this + 18) + 8);
        *(this + 18) = v2;
        v6 = *(this + 22);
        v3 = *(this + 21) - 512;
        *(this + 21) = v3;
      }

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *(this + 28) = 0;
  }
}

uint64_t webrtc::DtlsTransportInternalImpl::DtlsTransportInternalImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = webrtc::PacketTransportInternal::PacketTransportInternal(a1);
  *(v10 + 408) = 0;
  *(v10 + 416) = 0;
  *(v10 + 432) = 0;
  *(v10 + 424) = 0;
  *(v10 + 448) = 0;
  *(v10 + 456) = 0;
  *(v10 + 440) = 0;
  *(v10 + 464) = 0;
  *v10 = &unk_288292D10;
  *(a1 + 472) = (*(*a2 + 96))(a2);
  *(a1 + 480) = a2;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  if (*(a3 + 1) == 1)
  {
    std::vector<unsigned int>::push_back[abi:sn200100]((a1 + 504), &webrtc::kSrtpAes128CmSha1_32);
    if (*(a3 + 2) != 1)
    {
LABEL_3:
      if (*a3 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (*(a3 + 2) != 1)
  {
    goto LABEL_3;
  }

  std::vector<unsigned int>::push_back[abi:sn200100]((a1 + 504), &webrtc::kSrtpAes128CmSha1_80);
  if (*a3 != 1)
  {
LABEL_4:
    if (*(a1 + 504) != *(a1 + 512))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  std::vector<unsigned int>::push_back[abi:sn200100]((a1 + 504), &webrtc::kSrtpAeadAes256Gcm);
  std::vector<unsigned int>::push_back[abi:sn200100]((a1 + 504), &webrtc::kSrtpAeadAes128Gcm);
  if (*(a1 + 504) != *(a1 + 512))
  {
LABEL_5:
    *(a1 + 544) = 0;
    *(a1 + 528) = 0u;
    v16 = *(a3 + 8);
    v15 = *(a3 + 16);
    if (v15 != v16)
    {
      if (((v15 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 552) = 0;
    *(a1 + 560) = 0;
    *(a1 + 568) = 0;
    *(a1 + 572) = 0;
    *(a1 + 576) = a5;
    *(a1 + 632) = 0;
    *(a1 + 584) = 0uLL;
    *(a1 + 600) = 0uLL;
    *(a1 + 616) = 0uLL;
    *(a1 + 640) = 0;
    *(a1 + 656) = 0;
    *(a1 + 648) = 0;
    *(a1 + 663) = 0;
    *(a1 + 672) = a4;
    *(a1 + 680) = 0;
    v18[0] = a1;
    v18[3] = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::DtlsTransportInternalImpl(webrtc::IceTransportInternal *,webrtc::CryptoOptions const&,webrtc::RtcEventLog *,webrtc::SSLProtocolVersion)::$_0 &,webrtc::ArrayView<unsigned char const,-4711l>>;
    v18[2] = absl::internal_any_invocable::LocalManagerTrivial;
    webrtc::DtlsStunPiggybackController::DtlsStunPiggybackController(a1 + 688, v18);
  }

LABEL_12:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/crypto/crypto_options.cc", 55, "!crypto_suites.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v11, v12, v13, v14, v18[0]);
  *(a1 + 680) = 0;
  return a1;
}

void webrtc::DtlsTransportInternalImpl::~DtlsTransportInternalImpl(webrtc::DtlsTransportInternalImpl *this)
{
  *this = &unk_288292D10;
  v2 = *(this + 60);
  if (v2)
  {
    (*(*v2 + 288))(v2);
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(this + 60) + 344), this);
  }

  v3 = *(this + 111);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  (*(this + 108))(1, this + 848, this + 848);
  webrtc::DtlsStunPiggybackController::~DtlsStunPiggybackController((this + 688));
  v11 = *(this + 80);
  if (v11)
  {
    v12 = *(this + 81);
    v13 = *(this + 80);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 8);
        *(v12 - 8) = 0;
        if (v14)
        {
          v15 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v15)
          {
            MEMORY[0x2743DA520](v15, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v14, 0x1010C40A79CA2DELL);
        }

        v12 -= 16;
      }

      while (v12 != v11);
      v13 = *(this + 80);
    }

    *(this + 81) = v11;
    operator delete(v13);
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  v16 = *(this + 75);
  *(this + 75) = 0;
  if (v16)
  {
    MEMORY[0x2743DA520](v16, 0x1000C8077774924);
  }

  v17 = *(this + 70);
  if (v17 && atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    v18 = *(v17 + 8);
    *(v17 + 8) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    MEMORY[0x2743DA540](v17, 0x1020C40D5A9D86FLL);
  }

  v19 = *(this + 66);
  if (v19)
  {
    *(this + 67) = v19;
    operator delete(v19);
  }

  v20 = *(this + 63);
  if (v20)
  {
    *(this + 64) = v20;
    operator delete(v20);
  }

  v21 = *(this + 61);
  *(this + 61) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  webrtc::DtlsTransportInternal::~DtlsTransportInternal(this, v4, v5, v6, v7, v8, v9, v10);
}

{
  webrtc::DtlsTransportInternalImpl::~DtlsTransportInternalImpl(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::DtlsTransportInternalImpl::SetLocalCertificate(uint64_t a1, atomic_uint **a2)
{
  if (*(a1 + 552) == 1)
  {
    if (*a2 != *(a1 + 560))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0;
      }

      webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return 1;
    }

    webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

LABEL_17:
    operator delete(__p.__r_.__value_.__l.__data_);
    return 1;
  }

  v4 = *a2;
  if (!*a2)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return 1;
    }

    webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_17;
  }

  result = 1;
  atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  v5 = *(a1 + 560);
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    MEMORY[0x2743DA540](v5, 0x1020C40D5A9D86FLL);
    result = 1;
  }

  *(a1 + 560) = v4;
  *(a1 + 552) = 1;
  return result;
}

double webrtc::DtlsTransportInternalImpl::ToString(std::string *this, unsigned int *a2)
{
  *&v57.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v57 <= "DtlsTransport[" && &v57.__r_.__value_.__r.__words[1] + 6 > "DtlsTransport[")
  {
    goto LABEL_149;
  }

  qmemcpy(&v57, "DtlsTransport[", 14);
  *(&v57.__r_.__value_.__s + 23) = 14;
  v5 = (*(*a2 + 16))(a2);
  v7 = *(v5 + 23);
  v8 = v7 >= 0 ? v5 : *v5;
  v9 = v7 >= 0 ? *(v5 + 23) : *(v5 + 8);
  if (!v8 && v9 != 0)
  {
    goto LABEL_149;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = 22;
  }

  else
  {
    v11 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v57.__r_.__value_.__l.__size_;
  }

  if (v11 - size >= v9)
  {
    if (v9)
    {
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v57;
      }

      else
      {
        v13 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_149;
      }

      if (v13 + size <= v8 && v13 + size + v9 > v8)
      {
        goto LABEL_149;
      }

      v15 = v9;
      memmove(v13 + size, v8, v9);
      v16 = size + v15;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        v57.__r_.__value_.__l.__size_ = size + v15;
      }

      else
      {
        *(&v57.__r_.__value_.__s + 23) = v16 & 0x7F;
      }

      v13->__r_.__value_.__s.__data_[v16] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v57, v11, size + v9 - v11, size, size, 0, v9, v8);
  }

  v17 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = 22;
  }

  else
  {
    v18 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v57.__r_.__value_.__l.__size_;
  }

  if (v18 == v17)
  {
    std::string::__grow_by_and_replace(&v57, v18, 1uLL, v18, v18, 0, 1uLL, "|");
  }

  else
  {
    v19 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v57.__r_.__value_.__r.__words[0];
    }

    v20 = v19 + v17;
    if (v19 + v17 <= "|" && v20 + 1 > "|")
    {
      goto LABEL_149;
    }

    *v20 = 124;
    v21 = v17 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v21;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v21 & 0x7F;
    }

    v19->__r_.__value_.__s.__data_[v21] = 0;
  }

  v22 = a2[118];
  v59 = 0;
  v60 = 0x1600000000000000;
  __p = 0;
  v23 = absl::numbers_internal::FastIntToBuffer(v22, &__p, v6);
  v24 = v23 - &__p;
  if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
  {
    if (v59 < v24)
    {
      goto LABEL_150;
    }

    p_p = __p;
    v59 = v23 - &__p;
  }

  else
  {
    if (v24 > SHIBYTE(v60))
    {
      goto LABEL_150;
    }

    HIBYTE(v60) = v23 - &__p;
    p_p = &__p;
  }

  p_p[v24] = 0;
  if (v60 >= 0)
  {
    v26 = &__p;
  }

  else
  {
    v26 = __p;
  }

  if (v60 >= 0)
  {
    v27 = HIBYTE(v60);
  }

  else
  {
    v27 = v59;
  }

  if (!v26 && v27)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = 22;
  }

  else
  {
    v28 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v57.__r_.__value_.__l.__size_;
  }

  if (v28 - v29 >= v27)
  {
    if (v27)
    {
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v57;
      }

      else
      {
        v30 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_149;
      }

      v31 = v30 + v29;
      if (v30 + v29 <= v26 && &v31[v27] > v26)
      {
        goto LABEL_149;
      }

      v32 = v27;
      memmove(v31, v26, v27);
      v33 = v29 + v32;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        v57.__r_.__value_.__l.__size_ = v29 + v32;
        v30->__r_.__value_.__s.__data_[v33] = 0;
        if ((SHIBYTE(v60) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_73;
      }

      *(&v57.__r_.__value_.__s + 23) = v33 & 0x7F;
      v30->__r_.__value_.__s.__data_[v33] = 0;
    }

    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_73;
  }

  std::string::__grow_by_and_replace(&v57, v28, v29 + v27 - v28, v29, v29, 0, v27, v26);
  if (SHIBYTE(v60) < 0)
  {
LABEL_73:
    operator delete(__p);
  }

LABEL_84:
  v34 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = 22;
  }

  else
  {
    v35 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v57.__r_.__value_.__l.__size_;
  }

  if (v35 == v34)
  {
    std::string::__grow_by_and_replace(&v57, v35, 1uLL, v35, v35, 0, 1uLL, "|");
  }

  else
  {
    v36 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v57.__r_.__value_.__r.__words[0];
    }

    v37 = v36 + v34;
    if (v36 + v34 <= "|" && v37 + 1 > "|")
    {
      goto LABEL_149;
    }

    *v37 = 124;
    v38 = v34 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v38;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v38 & 0x7F;
    }

    v36->__r_.__value_.__s.__data_[v38] = 0;
  }

  v39 = (&off_279E93CF8)[2 * (*(*a2 + 32))(a2)];
  if (!v39)
  {
    goto LABEL_149;
  }

  v40 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = 22;
  }

  else
  {
    v41 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = v57.__r_.__value_.__l.__size_;
  }

  if (v41 == v40)
  {
    std::string::__grow_by_and_replace(&v57, v41, 1uLL, v41, v41, 0, 1uLL, v39);
  }

  else
  {
    v42 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v57.__r_.__value_.__r.__words[0];
    }

    v43 = v42 + v40;
    if (v42 + v40 <= v39 && v43 + 1 > v39)
    {
      goto LABEL_149;
    }

    *v43 = *v39;
    v44 = v40 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v44;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v44 & 0x7F;
    }

    v42->__r_.__value_.__s.__data_[v44] = 0;
  }

  v45 = (&off_279E93D18)[2 * (*(*a2 + 24))(a2)];
  if (!v45)
  {
    goto LABEL_149;
  }

  v46 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = 22;
  }

  else
  {
    v47 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v46 = v57.__r_.__value_.__l.__size_;
  }

  if (v47 == v46)
  {
    std::string::__grow_by_and_replace(&v57, v47, 1uLL, v47, v47, 0, 1uLL, v45);
  }

  else
  {
    v48 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v57.__r_.__value_.__r.__words[0];
    }

    v49 = v48 + v46;
    if (v48 + v46 <= v45 && v49 + 1 > v45)
    {
      goto LABEL_149;
    }

    *v49 = *v45;
    v50 = v46 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v50;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v50 & 0x7F;
    }

    v48->__r_.__value_.__s.__data_[v50] = 0;
  }

  v51 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = 22;
  }

  else
  {
    v52 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v51 = v57.__r_.__value_.__l.__size_;
  }

  if (v52 == v51)
  {
    std::string::__grow_by_and_replace(&v57, v52, 1uLL, v52, v52, 0, 1uLL, "]");
  }

  else
  {
    v53 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v53 = v57.__r_.__value_.__r.__words[0];
    }

    v54 = v53 + v51;
    if (v53 + v51 <= "]" && v54 + 1 > "]")
    {
      goto LABEL_149;
    }

    *v54 = 93;
    v55 = v51 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v55;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v55 & 0x7F;
    }

    v53->__r_.__value_.__s.__data_[v55] = 0;
  }

  result = *&v57.__r_.__value_.__l.__data_;
  *this = v57;
  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::GetLocalCertificate@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 560);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return this;
}

uint64_t webrtc::DtlsTransportInternalImpl::SetDtlsRole(uint64_t result, int a2)
{
  if (*(result + 488))
  {
    if (*(result + 572))
    {
      if (*(result + 568) == a2)
      {
        return 1;
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        }

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(result + 568) = a2;
    v2 = result;
    result = 1;
    *(v2 + 572) = 1;
  }

  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::GetDtlsRole(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 572);
  if (result == 1)
  {
    *a2 = *(a1 + 568);
  }

  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::GetSslCipherSuite(webrtc::DtlsTransportInternalImpl *this, int *a2)
{
  if ((*(*this + 80))(this) != 2)
  {
    return 0;
  }

  v3 = *(**(this + 61) + 144);

  return v3();
}

uint64_t webrtc::DtlsTransportInternalImpl::GetTlsCipherSuiteName@<X0>(webrtc::DtlsTransportInternalImpl *this@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*this + 80))(this);
  if (result == 2)
  {
    v5 = *(**(this + 61) + 152);

    return v5();
  }

  else
  {
    *a2 = 0;
    a2[16] = 0;
  }

  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::SetRemoteParameters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a5)
  {
    operator new[]();
  }

  if (*(a1 + 552) != 1)
  {
    if ((a6 & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (*(a1 + 584))
  {
    if ((a6 & 0x100000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((a6 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

  if (memcmp(*(a1 + 600), 0, 0))
  {
LABEL_12:
    *(a1 + 568) = a6;
    *(a1 + 572) = 1;
    goto LABEL_13;
  }

LABEL_9:
  if (((*(*a1 + 112))(a1, a6) & 1) == 0)
  {
    *a7 = 3;
    operator new();
  }

LABEL_13:
  result = (*(*a1 + 200))(a1, a2, a3, a4, 0);
  if ((result & 1) == 0)
  {
    *a7 = 3;
    operator new();
  }

  *a7 = 0;
  *(a7 + 38) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 8) = 0;
  *(a7 + 29) = 0;
  return result;
}

BOOL webrtc::DtlsTransportInternalImpl::SetRemoteFingerprint(uint64_t a1, std::string *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    operator new[]();
  }

  if (*(a1 + 552) != 1)
  {
    if (a3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      return 0;
    }

    goto LABEL_44;
  }

  v8 = *(a1 + 584);
  if (v8 || memcmp(*(a1 + 600), 0, 0))
  {
    if (a3)
    {
      *(a1 + 584) = 0;
      *(a1 + 592) = 0;
      v9 = *(a1 + 600);
      *(a1 + 600) = 0;
      if (v9)
      {
        MEMORY[0x2743DA520](v9, 0x1000C8077774924);
      }

      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        if (a3 > 0x16)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = a3;
        if (&__p > a2 || (&__p + a3) <= a2)
        {
          memmove(&__p, a2, a3);
          __p.__r_.__value_.__s.__data_[a3] = 0;
          v18 = (a1 + 608);
          if (*(a1 + 631) < 0)
          {
            operator delete(*v18);
          }

          *v18 = *&__p.__r_.__value_.__l.__data_;
          *(a1 + 624) = *(&__p.__r_.__value_.__l + 2);
          v19 = *(a1 + 488);
          if (!v19 || v8)
          {
            if (v8 && v19)
            {
              *(a1 + 488) = 0;
              (*(*v19 + 8))(v19);
              webrtc::DtlsTransportInternalImpl::set_dtls_state(a1, 0);
              webrtc::DtlsTransportInternalImpl::set_writable(a1, 0);
            }

            webrtc::DtlsTransportInternalImpl::SetupDtls(a1);
          }

          v20 = *(a1 + 631);
          if (v20 < 0)
          {
            v18 = *(a1 + 608);
            v20 = *(a1 + 616);
          }

          if (*(a1 + 584))
          {
            v21 = *(a1 + 600);
          }

          else
          {
            v21 = 0;
          }

          v22 = (*(*v19 + 120))(v19, v18, v20, v21);
          if (!v22)
          {
            return 1;
          }

          v23 = v22;
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
            webrtc::webrtc_logging_impl::Log("\r\n\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          webrtc::DtlsTransportInternalImpl::set_dtls_state(a1, 4);
          return v23 == 3;
        }

        __break(1u);
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_44:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(a1 + 552) = 0;
    return 1;
  }

  if (!a3)
  {
    goto LABEL_44;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void webrtc::DtlsTransportInternalImpl::set_dtls_state(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 476) != a2)
  {
    if (*(a1 + 672))
    {
      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__p, a1);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(a1 + 476) = a2;
    if (a2 == 4)
    {
      if (*(a1 + 688) <= 2u && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_stun_piggyback_controller.cc");
      }

      *(a1 + 688) = 4;
    }

    if (*(a1 + 464) == 1)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v25);
      webrtc::DtlsTransportInternalImpl::set_writable(v23, v24);
    }

    else
    {
      v18 = (a1 + 464);
      *(a1 + 464) = 1;
      v19 = *(a1 + 440);
      v20 = *(a1 + 448);
      if (v19 == v20)
      {
        *v18 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          (*(v19 + 40))(v19 + 8, a1, a2);
          v22 = *v19;
          v19 += 56;
          v21 |= v22 == v18;
        }

        while (v19 != v20);
        *v18 = 0;
        if (v21)
        {
          webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((a1 + 440), (a1 + 464));
        }
      }
    }
  }
}

void webrtc::DtlsTransportInternalImpl::set_writable(webrtc::DtlsTransportInternalImpl *this, int a2)
{
  if (*(this + 665) != a2)
  {
    v27 = v2;
    v28 = v3;
    if (a2 && (*(this + 666) & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      if (*(this + 84))
      {
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *(this + 665) = a2;
      if (a2)
      {
        v20 = *(this + 17);
        for (*(this + 19) = v20; v20 != (this + 128); v20 = *(this + 19))
        {
          v22 = v20[2];
          v21 = v20 + 2;
          *(this + 19) = *(v21 - 1);
          v22(v21, this);
        }
      }

      v23 = *(this + 10);
      for (*(this + 12) = v23; v23 != (this + 72); v23 = *(this + 12))
      {
        v25 = v23[2];
        v24 = v23 + 2;
        *(this + 12) = *(v24 - 1);
        v25(v24, this);
      }
    }
  }
}

uint64_t webrtc::DtlsTransportInternalImpl::GetRemoteSSLCertChain@<X0>(webrtc::DtlsTransportInternalImpl *this@<X0>, void *a2@<X8>)
{
  result = *(this + 61);
  if (result)
  {
    return (*(*result + 136))();
  }

  *a2 = 0;
  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::ExportSrtpKeyingMaterial(uint64_t a1)
{
  result = *(a1 + 488);
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

void webrtc::DtlsTransportInternalImpl::MaybeStartDtls(webrtc::DtlsTransportInternalImpl *this)
{
  if (!*(this + 61) || ((*(**(this + 60) + 24))(*(this + 60)) & 1) == 0 && *(this + 680) != 1)
  {
    return;
  }

  webrtc::DtlsTransportInternalImpl::ConfigureHandshakeTimeout(this);
  if ((*(**(this + 61) + 112))(*(this + 61)))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    webrtc::DtlsTransportInternalImpl::set_dtls_state(this, 4);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v9 = webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
    (*(*this + 96))(this, v9);
    if ((*(this + 572) & 1) == 0)
    {
      goto LABEL_42;
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  webrtc::DtlsTransportInternalImpl::set_dtls_state(this, 1);
  v17 = *(this + 80);
  v18 = *(this + 81);
  if (v17 == v18)
  {
    return;
  }

  if ((*(this + 572) & 1) == 0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  if (*(this + 142) == 1)
  {
    v19 = (v18 - v17) >> 4;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v19 >= 1)
    {
      do
      {
        v27 = *(this + 158);
        v28 = *(this + 80);
        v29 = (*(this + 81) - v28) >> 4;
        *(this + 158) = (v27 + 1) % v29;
        if (v29 <= v27)
        {
          goto LABEL_42;
        }

        v30 = *(v28 + 16 * v27 + 8);
        if (*v30)
        {
          v31 = v30[2];
        }

        else
        {
          v31 = 0;
        }

        if (!webrtc::StreamInterfaceChannel::OnPacketReceived(*(this + 62), v31, *v30))
        {
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
          {
            break;
          }

          webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
          webrtc::webrtc_logging_impl::Log("\r\n\t", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_33;
        }

        LODWORD(v19) = v19 - 1;
      }

      while (v19);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_33:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v46 = *(this + 81);
  for (i = *(this + 80); v46 != i; v46 -= 16)
  {
    v48 = *(v46 - 8);
    *(v46 - 8) = 0;
    if (v48)
    {
      v49 = *(v48 + 16);
      *(v48 + 16) = 0;
      if (v49)
      {
        MEMORY[0x2743DA520](v49, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v48, 0x1010C40A79CA2DELL);
    }
  }

  *(this + 81) = i;
  *(this + 158) = 0;
}

uint64_t webrtc::DtlsTransportInternalImpl::GetSrtpCryptoSuite(webrtc::DtlsTransportInternalImpl *this, int *a2)
{
  if ((*(*this + 80))(this) != 2)
  {
    return 0;
  }

  v3 = *(**(this + 61) + 200);

  return v3();
}

uint64_t webrtc::DtlsTransportInternalImpl::GetSslVersionBytes(webrtc::DtlsTransportInternalImpl *this, int *a2)
{
  if ((*(*this + 80))(this) != 2)
  {
    return 0;
  }

  v3 = *(**(this + 61) + 168);

  return v3();
}

uint64_t webrtc::DtlsTransportInternalImpl::GetSslPeerSignatureAlgorithm(webrtc::DtlsTransportInternalImpl *this)
{
  if ((*(*this + 80))(this) != 2)
  {
    return 0;
  }

  v2 = *(**(this + 61) + 184);

  return v2();
}

unint64_t webrtc::DtlsTransportInternalImpl::SendPacket(webrtc::DtlsTransportInternalImpl *this, const char *a2, unint64_t a3, const webrtc::AsyncSocketPacketOptions *a4, char a5)
{
  if (*(this + 552))
  {
    v9 = (*(*this + 80))(this);
    if (v9 == 4)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0xFFFFFFFFLL;
      }

      webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          if ((a5 & 1) == 0)
          {
            v10 = 0;
            v30 = 0;
            v11 = *(this + 61);
            __p.__r_.__value_.__r.__words[0] = 0;
            while (a3 > v10)
            {
              v12 = (*(*v11 + 32))(v11, &a2[v10], a3 - v10, &__p, &v30);
              v10 += __p.__r_.__value_.__r.__words[0];
              if (v12 != 1)
              {
                return 0xFFFFFFFFLL;
              }
            }

            return a3;
          }

          if (a3 >= 0xC && (*a2 & 0xC0) == 0x80)
          {
            v13 = *(**(this + 60) + 40);
            goto LABEL_11;
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return 0xFFFFFFFFLL;
      }

      webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    return 0xFFFFFFFFLL;
  }

  v13 = *(**(this + 60) + 40);
LABEL_11:

  return v13();
}

void webrtc::DtlsTransportInternalImpl::OnWritableState(webrtc::DtlsTransportInternalImpl *this, webrtc::PacketTransportInternal *a2)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_50;
  }

  v40[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc";
  v40[1] = 5489;
  v40[2] = &v39;
  v3 = webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
  v41[0] = &__p;
  v41[1] = v40;
  v42[0] = ": ice_transport writable state changed to ";
  v42[1] = v41;
  v43[0] = (*(**(this + 60) + 24))(*(this + 60), v3);
  v43[1] = v42;
  v44[0] = " dtls_state: ";
  v44[1] = v43;
  v4 = (*(*this + 80))(this);
  v12 = 0;
  size = 0;
  memset(&__dst, 0, sizeof(__dst));
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v15 = "kClosed";
    }

    else
    {
      if (v4 != 4)
      {
        v14 = 0;
        if (v4 != 5)
        {
          goto LABEL_27;
        }

        v15 = "kNumValues";
        v16 = 10;
        if (!"kNumValues")
        {
          goto LABEL_76;
        }

        goto LABEL_21;
      }

      v15 = "kFailed";
    }

    v16 = 7;
    if (!v15)
    {
      goto LABEL_76;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      v15 = "kConnecting";
      v16 = 11;
      if (!"kConnecting")
      {
        goto LABEL_76;
      }
    }

    else
    {
      v14 = 0;
      if (v4 != 2)
      {
        goto LABEL_27;
      }

      v15 = "kConnected";
      v16 = 10;
      if (!"kConnected")
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    v15 = "kNew";
    v16 = 4;
    if (!"kNew")
    {
      goto LABEL_76;
    }
  }

LABEL_21:
  v17 = &__dst + v16;
  if (&__dst <= v15 && v17 > v15)
  {
    goto LABEL_76;
  }

  memmove(&__dst, v15, v16);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v16;
  }

  *v17 = 0;
  v12 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  size = __dst.__r_.__value_.__l.__size_;
  v14 = __dst.__r_.__value_.__r.__words[0];
LABEL_27:
  if ((v12 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = v14;
  }

  if ((v12 & 0x80u) == 0)
  {
    size = v12;
  }

  if (!p_dst && size)
  {
    goto LABEL_76;
  }

  if (size > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_77;
  }

  if (size > 0x16)
  {
    operator new();
  }

  *(&v47.__r_.__value_.__s + 23) = size;
  v19 = (&v47 + size);
  if (&v47 <= p_dst && v19 > p_dst)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (size)
  {
    memmove(&v47, p_dst, size);
  }

  v19->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    __dst = v47;
    v20 = v44;
    v46 = v44;
    goto LABEL_48;
  }

  std::string::__init_copy_ctor_external(&__dst, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  v20 = v44;
  v46 = v44;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
    v20 = v46;
  }

LABEL_48:
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal const&)::t, v5, v6, v7, v8, v9, v10, v11, **(*(*(v20[1] + 8) + 8) + 8));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }

LABEL_50:
    v21 = *(this + 666);
    *(this + 666) = 1;
    if (*(this + 552))
    {
      goto LABEL_51;
    }

LABEL_70:
    v30 = (*(**(this + 60) + 24))(*(this + 60));
    webrtc::DtlsTransportInternalImpl::set_writable(this, v30);
    return;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_64:
  operator delete(__p.__r_.__value_.__l.__data_);
  v21 = *(this + 666);
  *(this + 666) = 1;
  if ((*(this + 552) & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_51:
  v22 = (*(*this + 80))(this);
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 == 1 && *(this + 680) == 1 && *(this + 61))
      {
        webrtc::DtlsTransportInternalImpl::ConfigureHandshakeTimeout(this);
        webrtc::DtlsTransportInternalImpl::PeriodicRetransmitDtlsPacketUntilDtlsConnected(this);
      }
    }

    else
    {
      webrtc::DtlsTransportInternalImpl::MaybeStartDtls(this);
    }

    return;
  }

  if (v22 == 2)
  {
    if (*(this + 680) == 1 && *(this + 61) && (v21 & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ConfigureHandshakeTimeout(this);
      webrtc::DtlsTransportInternalImpl::PeriodicRetransmitDtlsPacketUntilDtlsConnected(this);
    }

    goto LABEL_70;
  }

  if (v22 == 3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__dst, this);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_74;
      }
    }
  }

  else if (v22 == 4 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::DtlsTransportInternalImpl::ToString(&__dst, this);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_74:
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t webrtc::DtlsTransportInternalImpl::OnSentPacket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 240;
  result = *(a1 + 248);
  for (*(a1 + 264) = result; result != v4; result = *(a1 + 264))
  {
    v8 = *(result + 16);
    v7 = result + 16;
    *(a1 + 264) = *(v7 - 8);
    v8(v7, a1, a3);
  }

  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::OnReadyToSend(void *a1)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    result = a1[17];
    for (a1[19] = result; result != a1 + 16; result = a1[19])
    {
      v4 = *(result + 16);
      v3 = result + 16;
      a1[19] = *(v3 - 8);
      v4(v3, a1);
    }
  }

  return result;
}

void *webrtc::DtlsTransportInternalImpl::OnReceivingState(webrtc::DtlsTransportInternalImpl *this, webrtc::PacketTransportInternal *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0 && (v3 = webrtc::DtlsTransportInternalImpl::ToString(&__p, this), (*(**(this + 60) + 32))(*(this + 60), v3), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc"), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (*(this + 552) == 1)
    {
LABEL_4:
      result = (*(*this + 80))(this);
      if (result != 2)
      {
        return result;
      }
    }
  }

  else if (*(this + 552) == 1)
  {
    goto LABEL_4;
  }

  result = (*(**(this + 60) + 32))(*(this + 60));
  if (*(this + 664) != result)
  {
    *(this + 664) = result;
    result = *(this + 24);
    for (*(this + 26) = result; result != (this + 184); result = *(this + 26))
    {
      v13 = result[2];
      v12 = result + 2;
      *(this + 26) = *(v12 - 1);
      v13(v12, this);
    }
  }

  return result;
}

uint64_t webrtc::DtlsTransportInternalImpl::OnNetworkRouteChanged(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  v3 = a1 + 296;
  result = *(a1 + 304);
  for (*(a1 + 320) = result; result != v3; result = *(a1 + 320))
  {
    v6 = *(result + 16);
    v5 = result + 16;
    *(a1 + 320) = *(v5 - 8);
    v10[0] = v7;
    v10[1] = v8;
    v11 = v9;
    v6(v5, v10);
  }

  return result;
}

void webrtc::DtlsTransportInternalImpl::ConfigureHandshakeTimeout(webrtc::DtlsTransportInternalImpl *this)
{
  v2 = (*(**(this + 60) + 248))(*(this + 60));
  if ((v2 & 0x100000000) != 0)
  {
    v12 = 2 * v2;
    if (2 * v2 <= 50)
    {
      v12 = 50;
    }

    if (v2 >= 1500)
    {
      v13 = 3000;
    }

    else
    {
      v13 = v12;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    (*(**(this + 61) + 96))(*(this + 61), v13);
  }

  else
  {
    v3 = *(this + 680);
    v4 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (v3 == 1)
    {
      if ((v4 & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      (*(**(this + 61) + 96))(*(this + 61), 86400000);
    }

    else if ((v4 & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(&__p, this);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

uint64_t webrtc::DtlsTransportInternalImpl::PeriodicRetransmitDtlsPacketUntilDtlsConnected(uint64_t this)
{
  if ((*(this + 880) & 1) == 0)
  {
    v2 = this;
    this = (*(**(this + 480) + 24))(*(this + 480));
    if (!this || *(v2 + 680) != 1)
    {
      goto LABEL_16;
    }

    if (*(v2 + 688) != 3)
    {
      v3 = *(v2 + 704);
      v4 = *(v2 + 712);
      if (v3 != v4)
      {
        v5 = *(v2 + 696);
        v6 = (v4 - v3) >> 4;
        *(v2 + 696) = (v5 + 1) % v6;
        if (v6 <= v5 || ((v7 = *(v3 + 16 * v5 + 8), (v8 = *v7) != 0) ? (v9 = v7[2]) : (v9 = 0), v8 < 0 || (v8 ? (v10 = v9 == 0) : (v10 = 0), v10)))
        {
          __break(1u);
LABEL_22:
          {
            operator new();
          }

LABEL_17:
          pthread_getspecific(*(v1[403] + 88));
          v11 = *(v2 + 888);
          if (v11)
          {
            atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
          }

          operator new();
        }

        (*(**(v2 + 480) + 40))(*(v2 + 480), v9);
LABEL_16:
        (*(**(v2 + 480) + 248))(*(v2 + 480));
        *(v2 + 880) = 1;
        v1 = &unk_280905000;
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }
    }
  }

  return this;
}

void webrtc::DtlsTransportInternalImpl::OnReadPacket(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 552) & 1) == 0)
  {

    webrtc::PacketTransportInternal::NotifyPacketReceived(a1, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  v10 = (*(*a1 + 80))(a1);
  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      return;
    }

    if (*(a1 + 488))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_28;
      }

      webrtc::DtlsTransportInternalImpl::ToString(__p, a1);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if ((SBYTE7(v58) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_28;
      }

      webrtc::DtlsTransportInternalImpl::ToString(__p, a1);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if ((SBYTE7(v58) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }
    }

    operator delete(__p[0]);
LABEL_28:
    if (a2[1] < 0x12 || **a2 != 22)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        return;
      }

      goto LABEL_43;
    }

    v35 = (*a2)[13];
    v36 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (v35 != 1)
    {
      if (v36)
      {
        return;
      }

      goto LABEL_43;
    }

    if ((v36 & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(__p, a1);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SBYTE7(v58) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v44 = (a1 + 632);
    webrtc::PacketStash::AddIfUnique(a1 + 632, *a2, a2[1]);
    v45 = *(a1 + 640);
    v46 = (*(a1 + 648) - v45) >> 4;
    if (v46 >= 5)
    {
      v47 = v46 - 4;
      std::vector<webrtc::PacketStash::StashedPacket>::erase((a1 + 640), v45, v45 + 16 * (v46 - 4));
      v48 = *v44;
      if (v47 >= v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = v48 - v47;
      }

      *v44 = v49;
    }

    if (!*(a1 + 488) && *(a1 + 560))
    {
      (*(*a1 + 112))(a1, 1);
      webrtc::DtlsTransportInternalImpl::SetupDtls(a1);
    }

    return;
  }

  v11 = a2[1];
  if (v11 < 0xD || **a2 - 20 > 0x2B)
  {
    if ((*(*a1 + 80))(a1) != 2)
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return;
      }

      goto LABEL_43;
    }

    v25 = a2[1];
    if (v25 >= 0xC && (**a2 & 0xC0) == 0x80)
    {
      v26 = a2[4];
      v27 = *(a2 + 10);
      __p[0] = *a2;
      __p[1] = v25;
      v58 = *(a2 + 1);
      v59 = v26;
      v60 = v27;
      v61 = 2;
      webrtc::PacketTransportInternal::NotifyPacketReceived(a1, __p, v19, v20, v21, v22, v23, v24);
      return;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
LABEL_43:
      webrtc::DtlsTransportInternalImpl::ToString(__p, a1);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SBYTE7(v58) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (!webrtc::StreamInterfaceChannel::OnPacketReceived(*(a1 + 496), *a2, v11) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    goto LABEL_43;
  }
}

void webrtc::StreamInterfaceChannel::~StreamInterfaceChannel(void (**this)(uint64_t, char *, char *))
{
  *this = &unk_288292CC8;
  webrtc::BufferQueue::~BufferQueue((this + 15));
  *this = &unk_2882A01E0;
  this[10](1, this + 64, this + 64);
  for (i = this[5]; i; i = this[5])
  {
    v3 = this[4];
    v4 = *(v3 + 3);
    v6 = *v3;
    v5 = *(v3 + 1);
    *(v6 + 8) = v5;
    *v5 = v6;
    this[5] = (i - 1);
    operator delete(v3);
    (*(v4 + 16))(v4, this + 8);
  }

  this[6] = (this + 3);
}

{
  *this = &unk_288292CC8;
  webrtc::BufferQueue::~BufferQueue((this + 15));
  *this = &unk_2882A01E0;
  this[10](1, this + 64, this + 64);
  for (i = this[5]; i; i = this[5])
  {
    v3 = this[4];
    v4 = *(v3 + 3);
    v6 = *v3;
    v5 = *(v3 + 1);
    *(v6 + 8) = v5;
    *v5 = v6;
    this[5] = (i - 1);
    operator delete(v3);
    (*(v4 + 16))(v4, this + 8);
  }

  this[6] = (this + 3);

  JUMPOUT(0x2743DA540);
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::DtlsTransportInternalImpl(webrtc::IceTransportInternal *,webrtc::CryptoOptions const&,webrtc::RtcEventLog *,webrtc::SSLProtocolVersion)::$_0 &,webrtc::ArrayView<unsigned char const,-4711l>>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 872);
  if (v4)
  {
    v7 = a2;
    v5 = *a2;
    v6 = v7[1];
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    v10 = &unk_28828CE50;
    v15 = 0;
    memset(&v16[1], 0, 20);
    v11 = 0;
    if (!v6)
    {
      v5 = 0;
    }

    v12 = *(&v16[1] + 4);
    v13 = 0;
    v14 = 0;
    v16[0] = v5;
    *&v16[1] = v6;
    v16[3] = 0;
    v16[4] = __p;
    v16[5] = 0;
    v4(v3 + 848, v3, v16);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::SetupDtls(void)::$_0 &,webrtc::SSLHandshakeError>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (*(*result + 432) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v15);
    return absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::SetupDtls(void)::$_1 &,int,int>();
  }

  else
  {
    v9 = (v8 + 432);
    *(v8 + 432) = 1;
    v10 = *(v8 + 408);
    v11 = *(v8 + 416);
    if (v10 == v11)
    {
      *v9 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        result = (*(v10 + 40))(v10 + 8, a2);
        v14 = *v10;
        v10 += 56;
        v13 |= v14 == v9;
      }

      while (v10 != v11);
      *v9 = 0;
      if (v13)
      {

        return webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v8 + 408), (v8 + 432));
      }
    }
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::SetupDtls(void)::$_1 &,int,int>(uint64_t *a1, char a2, int a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::DtlsTransportInternalImpl::ToString(__p, v5);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if ((*(**(v5 + 488) + 16))(*(v5 + 488)) == 2)
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = 0;
      (*(**(v5 + 488) + 168))(*(v5 + 488), __p);
      v13 = *(v5 + 572);
      if (*(v5 + 568))
      {
        v13 = 0;
      }

      if (v13 != (LODWORD(__p[0].__r_.__value_.__l.__data_) == 65276))
      {
        v14 = *(v5 + 712);
        for (i = *(v5 + 704); v14 != i; v14 -= 16)
        {
          v16 = *(v14 - 8);
          *(v14 - 8) = 0;
          if (v16)
          {
            v17 = *(v16 + 16);
            *(v16 + 16) = 0;
            if (v17)
            {
              MEMORY[0x2743DA520](v17, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v16, 0x1010C40A79CA2DELL);
          }
        }

        *(v5 + 712) = i;
        *(v5 + 696) = 0;
      }

      if (*(v5 + 688) != 4)
      {
        *(v5 + 688) = 2;
      }

      *(*(v5 + 496) + 104) = 0;
      webrtc::DtlsTransportInternalImpl::set_dtls_state(v5, 2);
      webrtc::DtlsTransportInternalImpl::set_writable(v5, 1);
    }
  }

  if ((a2 & 2) != 0)
  {
    v73 = 0;
    v72 = 0;
    while (1)
    {
      v18 = (*(**(v5 + 488) + 24))(*(v5 + 488), __p, 2048, &v73, &v72);
      if (v18 != 1)
      {
        break;
      }

      v19 = v73;
      memset(&v59, 0, sizeof(v59));
      v60 = &unk_28828CE50;
      v65 = 0;
      v67 = 0;
      v68 = 0;
      LODWORD(v69) = 0;
      v61 = 0;
      v62 = 0u;
      v63 = 0;
      v64 = 0;
      if (webrtc::g_clock)
      {
        v20 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v20 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      if (v19)
      {
        v27 = __p;
      }

      else
      {
        v27 = 0;
      }

      v66 = v27;
      v67 = v19;
      v68 = v20 / 1000;
      v69 = 1;
      v70 = &v59;
      v71 = 0x100000000;
      webrtc::PacketTransportInternal::NotifyPacketReceived(v5, &v66, v21, v22, v23, v24, v25, v26);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }

    if (v18)
    {
      if (v18 != 3)
      {
        goto LABEL_44;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(&v59, v5);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }

      v35 = 3;
    }

    else
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(&v59, v5);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }

      v35 = 4;
    }

    webrtc::DtlsTransportInternalImpl::set_writable(v5, 0);
    webrtc::DtlsTransportInternalImpl::set_dtls_state(v5, v35);
    webrtc::PacketTransportInternal::NotifyOnClose(v5);
  }

LABEL_44:
  if ((a2 & 8) != 0)
  {
    webrtc::DtlsTransportInternalImpl::set_writable(v5, 0);
    v43 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (a3)
    {
      if ((v43 & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(__p, v5);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      v51 = 4;
    }

    else
    {
      if ((v43 & 1) == 0)
      {
        webrtc::DtlsTransportInternalImpl::ToString(__p, v5);
        webrtc::webrtc_logging_impl::Log("\r\n\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/dtls/dtls_transport.cc");
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      v51 = 3;
    }

    webrtc::DtlsTransportInternalImpl::set_dtls_state(v5, v51);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::DtlsTransportInternalImpl,webrtc::PacketTransportInternal *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::DtlsTransportInternalImpl,webrtc::PacketTransportInternal *,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::DtlsTransportInternalImpl,std::optional<webrtc::NetworkRoute>>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v11 = v2;
  v12 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  return v4(v6, v9);
}

uint64_t *absl::internal_any_invocable::LocalInvoker<false,std::pair<std::optional<std::string_view>,std::optional<std::string_view>>,webrtc::DtlsTransportInternalImpl::ConnectToIceTransport(void)::$_1 &,webrtc::StunMessageType>@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *result;
  if (*(*result + 680) != 1)
  {
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v9) = 0;
    goto LABEL_5;
  }

  v8 = *(v7 + 688);
  LODWORD(v9) = v8 - 3;
  if (v8 == 3)
  {
    v4 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
LABEL_5:
    *a3 = v11;
    *(a3 + 1) = v4;
    *(a3 + 7) = BYTE6(v4);
    *(a3 + 5) = WORD2(v4);
    *(a3 + 8) = v3;
    *(a3 + 16) = v10;
    *(a3 + 24) = v9;
    *(a3 + 25) = v6;
    *(a3 + 31) = BYTE6(v6);
    *(a3 + 29) = WORD2(v6);
    *(a3 + 32) = v5;
    *(a3 + 40) = v12;
    return result;
  }

  if (a2 != 17 && v8 == 4)
  {
    v4 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    LOBYTE(v9) = 0;
    goto LABEL_5;
  }

  v13 = *(v7 + 704);
  v3 = *(v7 + 712);
  if (v13 == v3)
  {
    LOBYTE(v11) = 0;
    v10 = 0;
    v4 = 0;
    if (v9 < 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *(v7 + 696);
    v15 = (v14 + 1);
    v16 = (v3 - v13) >> 4;
    v5 = v15 / v16;
    *(v7 + 696) = v15 % v16;
    if (v16 <= v14)
    {
      goto LABEL_29;
    }

    v17 = *(v13 + 16 * v14 + 8);
    v3 = *v17;
    if (*v17 < 0)
    {
      goto LABEL_29;
    }

    v18 = v17[2];
    v11 = v3 ? v18 : 0;
    if (v3 && v11 == 0)
    {
      goto LABEL_29;
    }

    v10 = 1;
    v4 = v11 >> 8;
    if (v9 < 2)
    {
LABEL_20:
      v12 = 0;
      LOBYTE(v9) = 0;
      goto LABEL_5;
    }
  }

  v5 = *(v7 + 816);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = *(v7 + 832);
    if (v9 || v5 == 0)
    {
      v6 = v9 >> 8;
      v12 = 1;
      goto LABEL_5;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::ConnectToIceTransport(void)::$_2 &,webrtc::StunByteStringAttribute const*,webrtc::StunByteStringAttribute const*>(uint64_t a1, char **a2, const webrtc::StunByteStringAttribute *a3)
{
  if (*(*a1 + 680) == 1)
  {
    webrtc::DtlsStunPiggybackController::ReportDataPiggybacked((*a1 + 688), a2, a3);
  }
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::ConnectToIceTransport(void)::$_3 &,webrtc::PacketTransportInternal *,webrtc::ReceivedIpPacket const&>(uint64_t *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*(v8 + 552) == 1 && a3[1] >= 0xD && **a3 - 20 <= 0x2B)
  {
    webrtc::DtlsTransportInternalImpl::OnReadPacket(v8, a3, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtlsTransportInternalImpl::PeriodicRetransmitDtlsPacketUntilDtlsConnected(void)::$_0 &&>(webrtc::DtlsTransportInternalImpl **a1)
{
  v1 = *a1;
  *(v1 + 880) = 0;
  return webrtc::DtlsTransportInternalImpl::PeriodicRetransmitDtlsPacketUntilDtlsConnected(v1);
}

void webrtc::DtlsTransportInternal::~DtlsTransportInternal(webrtc::DtlsTransportInternal *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_288292E00;
  if (*(this + 464) == 1)
  {
    goto LABEL_22;
  }

  v9 = *(this + 55);
  if (v9)
  {
    v10 = *(this + 56);
    v11 = *(this + 55);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12)
        {
          v12(v10 - 48);
        }

        v10 -= 56;
      }

      while (v10 != v9);
      v11 = *(this + 55);
    }

    *(this + 56) = v9;
    operator delete(v11);
  }

  if (*(this + 432) == 1)
  {
LABEL_22:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v18);
    webrtc::DtlsTransportInternal::~DtlsTransportInternal(v17);
  }

  v13 = *(this + 51);
  if (v13)
  {
    v14 = *(this + 52);
    v15 = *(this + 51);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16)
        {
          v16(v14 - 48);
        }

        v14 -= 56;
      }

      while (v14 != v13);
      v15 = *(this + 51);
    }

    *(this + 52) = v13;
    operator delete(v15);
  }

  webrtc::PacketTransportInternal::~PacketTransportInternal(this);
}

uint64_t webrtc::PacketStash::AddIfUnique(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  {
    if (v13)
    {
      webrtc::LoadCrc32Table(v13);
      webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table = webrtc::LoadCrc32Table(void)::kCrc32Table;
    }
  }

  if (!a3)
  {
    v9 = 0;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v10 != v11)
    {
      goto LABEL_11;
    }

LABEL_13:
    operator new();
  }

  v6 = -1;
  v7 = a3;
  do
  {
    v8 = *v5++;
    v6 = *(webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table + 4 * (v8 ^ v6)) ^ (v6 >> 8);
    --v7;
  }

  while (v7);
  v9 = ~v6;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v10 == v11)
  {
    goto LABEL_13;
  }

LABEL_11:
  while (v9 != *v10)
  {
    v10 += 4;
    if (v10 == v11)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

void webrtc::PacketStash::Add(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  {
    if (v8)
    {
      webrtc::LoadCrc32Table(v8);
      webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table = webrtc::LoadCrc32Table(void)::kCrc32Table;
    }
  }

  if (a3)
  {
    v5 = -1;
    v6 = a3;
    do
    {
      v7 = *v4++;
      v5 = *(webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table + 4 * (v7 ^ v5)) ^ (v5 >> 8);
      --v6;
    }

    while (v6);
  }

  operator new();
}

void *webrtc::PacketStash::Prune(void *result, uint64_t *a2)
{
  if (a2[1] < 2)
  {
    return result;
  }

  v3 = result;
  v6 = result[1];
  v5 = result[2];
  v4 = result + 1;
  v7 = ((v5 - v6) >> 4);
  if (v5 == v6)
  {
    goto LABEL_16;
  }

  v8 = *a2;
  if (*a2 <= 1)
  {
    while (*(a2 + 4) != *v6)
    {
      v6 += 4;
      if (v6 == v5)
      {
        goto LABEL_38;
      }
    }

LABEL_16:
    if (v6 != v5)
    {
      v21 = v6 + 4;
      if (v6 + 4 == v5)
      {
        v37 = result[2];
        v5 = v6;
        goto LABEL_41;
      }

      v40 = v7;
      v7 = v6;
      while (1)
      {
        v22 = v6;
        v6 = v21;
        v23 = v22[4];
        v24 = *a2;
        if (*a2 > 1)
        {
          break;
        }

        if (a2[1] < 2 || *(a2 + 4) != v23)
        {
          goto LABEL_35;
        }

LABEL_21:
        v21 = v6 + 4;
        if (v6 + 4 == v5)
        {
          v37 = v3[2];
          v5 = v7;
          LODWORD(v7) = v40;
          goto LABEL_41;
        }
      }

      v26 = 0;
      _X12 = a2[2];
      __asm { PRFM            #4, [X12] }

      v29 = (((&absl::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::hash_internal::MixingHashState::kSeed + v23));
      v30 = vdup_n_s8(v29 & 0x7F);
      v31 = ((_X12 >> 12) ^ (v29 >> 7)) & v24;
      v32 = *(_X12 + v31);
      v33 = vceq_s8(v32, v30);
      if (!v33)
      {
        goto LABEL_31;
      }

LABEL_29:
      while (*(a2[3] + 4 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v24)) != v23)
      {
        v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v33)
        {
LABEL_31:
          while (!*&vceq_s8(v32, 0x8080808080808080))
          {
            v26 += 8;
            v31 = (v26 + v31) & v24;
            v32 = *(_X12 + v31);
            v33 = vceq_s8(v32, v30);
            if (v33)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_35;
        }
      }

      if (_X12)
      {
        goto LABEL_21;
      }

LABEL_35:
      *v7 = v23;
      v34 = *(v22 + 3);
      *(v22 + 3) = 0;
      v35 = *(v7 + 1);
      *(v7 + 1) = v34;
      if (v35)
      {
        v36 = *(v35 + 16);
        *(v35 + 16) = 0;
        if (v36)
        {
          MEMORY[0x2743DA520](v36, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v35, 0x1010C40A79CA2DELL);
      }

      v7 += 4;
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  _X10 = a2[2];
  do
  {
    v10 = 0;
    v11 = *v6;
    __asm { PRFM            #4, [X10] }

    v16 = (((&absl::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::hash_internal::MixingHashState::kSeed + v11));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((_X10 >> 12) ^ (v16 >> 7)) & v8;
    v19 = *(_X10 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      if (*(a2[3] + 4 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v8)) == v11)
      {
        goto LABEL_16;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v20);
LABEL_11:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v10 += 8;
      v18 = (v10 + v18) & v8;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_9;
      }
    }

    v6 += 4;
  }

  while (v6 != v5);
LABEL_38:
  v37 = result[2];
LABEL_41:
  result = std::vector<webrtc::PacketStash::StashedPacket>::erase(v4, v5, v37);
  v38 = v7 - ((v3[2] - v3[1]) >> 4);
  _CF = *v3 >= v38;
  v39 = *v3 - v38;
  if (_CF)
  {
    *v3 = v39;
  }

  return result;
}

void *std::vector<webrtc::PacketStash::StashedPacket>::erase(void *result, unint64_t a2, unint64_t a3)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    if (a3 != a2)
    {
      v4 = result;
      v5 = result[1];
      if (a3 == v5)
      {
        v14 = a2;
      }

      else
      {
        v6 = *result;
        v7 = *result + a2;
        v8 = -*result;
        v9 = *result + a3;
        do
        {
          v10 = v7 + v8;
          *v10 = *(v9 + v8);
          v11 = *(v9 + v8 + 8);
          *(v9 + v8 + 8) = 0;
          v12 = *(v7 + v8 + 8);
          *(v10 + 8) = v11;
          if (v12)
          {
            v13 = *(v12 + 16);
            *(v12 + 16) = 0;
            if (v13)
            {
              MEMORY[0x2743DA520](v13, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v12, 0x1010C40A79CA2DELL);
          }

          v7 += 16;
          v9 += 16;
        }

        while (v9 + v8 != v5);
        v5 = v4[1];
        v14 = v7 - v6;
      }

      while (v5 != v14)
      {
        v15 = *(v5 - 8);
        *(v5 - 8) = 0;
        if (v15)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v16)
          {
            MEMORY[0x2743DA520](v16, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v15, 0x1010C40A79CA2DELL);
        }

        v5 -= 16;
      }

      v4[1] = v14;
    }

    return a2;
  }

  return result;
}

void std::vector<webrtc::PacketStash::StashedPacket>::__emplace_back_slow_path<webrtc::PacketStash::StashedPacket>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 4) + 1;
  if (!(v1 >> 60))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 3 > v1)
    {
      v1 = v2 >> 3;
    }

    v3 = v2 >= 0x7FFFFFFFFFFFFFF0;
    v4 = 0xFFFFFFFFFFFFFFFLL;
    if (!v3)
    {
      v4 = v1;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::DtmfBuffer::~DtmfBuffer(webrtc::DtmfBuffer *this)
{
  *this = &unk_288292EF0;
  if (*(this + 4))
  {
    v2 = this + 16;
    v3 = *(this + 3);
    v4 = *(*(this + 2) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 4) = 0;
    if (v3 != this + 16)
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }
}

{
  *this = &unk_288292EF0;
  if (*(this + 4))
  {
    v2 = this + 16;
    v3 = *(this + 3);
    v4 = *(*(this + 2) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 4) = 0;
    if (v3 != this + 16)
    {
      do
      {
        v6 = *(v3 + 1);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::DtmfBuffer::Flush(void *this)
{
  if (this[4])
  {
    v1 = this + 2;
    v2 = this;
    this = this[3];
    v3 = *(v2[2] + 8);
    v4 = *this;
    *(v4 + 8) = v3;
    *v3 = v4;
    v2[4] = 0;
    if (this != v1)
    {
      do
      {
        v5 = this[1];
        operator delete(this);
        this = v5;
      }

      while (v5 != v1);
    }
  }

  return this;
}

uint64_t webrtc::DtmfBuffer::InsertEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (v2 <= 0xF && *(a2 + 8) <= 0x3Fu && (v3 = *(a2 + 12), (v3 - 0x10000) > 0xFFFF0000))
  {
    v12 = *(a1 + 24);
    if (v12 == a1 + 16)
    {
LABEL_13:
      operator new();
    }

    while (*(v12 + 20) != v2 || *(v12 + 16) != *a2)
    {
      v12 = *(v12 + 8);
      if (v12 == a1 + 16)
      {
        goto LABEL_13;
      }
    }

    if ((*(v12 + 32) & 1) == 0)
    {
      v14 = *(v12 + 28);
      if (v3 > v14)
      {
        v14 = *(a2 + 12);
      }

      *(v12 + 28) = v14;
    }

    result = 0;
    if (*(a2 + 16) == 1)
    {
      *(v12 + 32) = 1;
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_coding/neteq/dtmf_buffer.cc");
    }

    return 3;
  }

  return result;
}

BOOL webrtc::DtmfBuffer::CompareEvents(_DWORD *a1, _DWORD *a2)
{
  if (*a2 == *a1)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return (*a2 - *a1) < 0x7FFFFFFF;
  }
}

uint64_t webrtc::DtmfBuffer::GetEvent(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = (a1 + 16);
  result = *(a1 + 24);
  if (result == v4)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(result + 16);
    v9 = *(result + 28);
    v10 = v9 + v8;
    v11 = *(result + 32);
    if ((v11 & 1) != 0 || (v10 += *(a1 + 8), v12 = *(result + 8), v12 == v4))
    {
      v14 = 0;
      if (v8 <= a2 && v10 >= a2)
      {
        break;
      }

      goto LABEL_18;
    }

    v13 = *(v12 + 16);
    if (v13 < v10)
    {
      v10 = v13;
    }

    v14 = 1;
    if (v8 <= a2 && v10 >= a2)
    {
      break;
    }

LABEL_18:
    if (v10 >= a2)
    {
      result = *(result + 8);
      if (result == v4)
      {
        return 0;
      }
    }

    else
    {
      if ((v14 & 1) == 0)
      {
        if (a3)
        {
          *(a3 + 16) = v11;
          *(a3 + 4) = *(result + 20);
          *(a3 + 12) = v9;
          *a3 = v8;
        }

        goto LABEL_31;
      }

      if (result == v4)
      {
        goto LABEL_33;
      }

      v17 = *result;
      v18 = *(result + 8);
      *(v17 + 8) = v18;
      *v18 = v17;
      --*(a1 + 32);
      operator delete(result);
      result = v18;
      if (v18 == v4)
      {
        return 0;
      }
    }
  }

  if (!a3)
  {
    if (*(result + 32))
    {
      goto LABEL_29;
    }

    return 1;
  }

  *(a3 + 16) = v11;
  *(a3 + 4) = *(result + 20);
  *(a3 + 12) = v9;
  *a3 = v8;
  if ((*(result + 32) & 1) == 0)
  {
    return 1;
  }

LABEL_29:
  if (*(a1 + 12) + a2 < v10)
  {
    return 1;
  }

LABEL_31:
  if (result == v4)
  {
LABEL_33:
    __break(1u);
  }

  else
  {
    v20 = *result;
    v19 = *(result + 8);
    *(v20 + 8) = v19;
    *v19 = v20;
    --*(a1 + 32);
    operator delete(result);
    return 1;
  }

  return result;
}

uint64_t webrtc::DtmfBuffer::SetSampleRate(webrtc::DtmfBuffer *this, int a2)
{
  result = 4;
  if (a2 <= 31999)
  {
    if (a2 != 8000 && a2 != 16000)
    {
      return result;
    }

LABEL_7:
    result = 0;
    *(this + 2) = 7 * a2 / 0x64u;
    *(this + 3) = a2 / 0x64u;
    return result;
  }

  if (a2 == 48000 || a2 == 32000)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *std::list<webrtc::DtmfEvent>::__sort<BOOL (*)(webrtc::DtmfEvent const&,webrtc::DtmfEvent const&)>(uint64_t **a1, uint64_t **a2, unint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a3 < 2)
  {
    return v4;
  }

  if (a3 == 2)
  {
    v8 = *a2;
    if ((*a4)((*a2 + 2), (a1 + 2)))
    {
      v10 = *v8;
      v9 = v8[1];
      *(v10 + 8) = v9;
      *v9 = v10;
      v11 = *v4;
      v11[1] = v8;
      *v8 = v11;
      *v4 = v8;
      v8[1] = v4;
      return v8;
    }
  }

  else
  {
    v13 = a3 >> 1;
    v14 = (a3 >> 1) + 1;
    v15 = a1;
    do
    {
      v15 = v15[1];
      --v14;
    }

    while (v14 > 1);
    v16 = std::list<webrtc::DtmfEvent>::__sort<BOOL (*)(webrtc::DtmfEvent const&,webrtc::DtmfEvent const&)>(a1, v15, a3 >> 1, a4);
    v4 = std::list<webrtc::DtmfEvent>::__sort<BOOL (*)(webrtc::DtmfEvent const&,webrtc::DtmfEvent const&)>(v15, a2, a3 - v13, a4);
    if ((*a4)((v4 + 2), (v16 + 2)))
    {
      for (i = v4[1]; i != a2; i = i[1])
      {
        if (!(*a4)((i + 2), (v16 + 2)))
        {
          break;
        }
      }

      v18 = *i;
      v19 = *(*i + 8);
      v20 = *v4;
      v20[1] = v19;
      *v19 = v20;
      v21 = *v16;
      v22 = v16[1];
      v21[1] = v4;
      *v4 = v21;
      *v16 = v18;
      v18[1] = v16;
      if (v22 == i)
      {
        return v4;
      }
    }

    else
    {
      v22 = v16[1];
      i = v4;
      v4 = v16;
      if (v22 == i)
      {
        return v4;
      }
    }

    if (i != a2)
    {
      v23 = i;
      do
      {
        if ((*a4)((i + 2), (v22 + 2)))
        {
          for (j = i[1]; j != a2; j = j[1])
          {
            if (!(*a4)((j + 2), (v22 + 2)))
            {
              break;
            }
          }

          v25 = *j;
          v26 = *(*j + 8);
          v27 = *i;
          *(v27 + 8) = v26;
          *v26 = v27;
          if (v23 == i)
          {
            v23 = j;
          }

          v29 = *v22;
          v28 = v22[1];
          *(v29 + 8) = i;
          *i = v29;
          *v22 = v25;
          *(v25 + 8) = v22;
          v22 = v28;
          i = j;
          if (v28 == v23)
          {
            return v4;
          }
        }

        else
        {
          v22 = v22[1];
          if (v22 == v23)
          {
            return v4;
          }
        }
      }

      while (i != a2);
    }
  }

  return v4;
}

uint64_t (***webrtc::DtmfSender::CanInsertDtmf(webrtc::DtmfSender *this))(void)
{
  result = *(this + 3);
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::DtmfSender::InsertDtmf(uint64_t a1, __int128 *a2, int a3, int a4, int a5)
{
  if ((a3 - 6001) < 0xFFFFE8B7 || a4 < 30 || a5 <= 29)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtmf_sender.cc");
    }
  }

  else
  {
    v19 = (*(*a1 + 48))(a1);
    if (v19)
    {
      v20 = (a1 + 32);
      if ((a1 + 32) != a2)
      {
        v21 = *(a2 + 23);
        if ((*(a1 + 55) & 0x80000000) == 0)
        {
          if ((*(a2 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v20, *a2, *(a2 + 1));
            *(a1 + 56) = a3;
            *(a1 + 60) = a4;
            *(a1 + 64) = a5;
            v23 = *(a1 + 72);
            if (!v23)
            {
LABEL_29:
              operator new();
            }
          }

          else
          {
            v22 = *a2;
            *(a1 + 48) = *(a2 + 2);
            *&v20->__r_.__value_.__l.__data_ = v22;
            *(a1 + 56) = a3;
            *(a1 + 60) = a4;
            *(a1 + 64) = a5;
            v23 = *(a1 + 72);
            if (!v23)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          *(v23 + 4) = 0;
          goto LABEL_29;
        }

        if (v21 >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        if (v21 >= 0)
        {
          v33 = *(a2 + 23);
        }

        else
        {
          v33 = *(a2 + 1);
        }

        std::string::__assign_no_alias<false>(v20, v32, v33);
      }

      *(a1 + 56) = a3;
      *(a1 + 60) = a4;
      *(a1 + 64) = a5;
      v23 = *(a1 + 72);
      if (!v23)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtmf_sender.cc");
    }
  }

  return 0;
}

void webrtc::DtmfSender::tones(webrtc::DtmfSender *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

BOOL webrtc::RefCountedObject<webrtc::DtmfSender>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 20, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::DtmfSender>::~RefCountedObject(uint64_t result)
{
  *result = &unk_288292F40;
  v1 = *(result + 72);
  if (v1)
  {
    *(v1 + 4) = 0;
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      result = v2;
    }
  }

  if (*(result + 55) < 0)
  {
    v3 = result;
    operator delete(*(result + 32));
    return v3;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::DtmfSender>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288292F40;
  v1 = *(a1 + 72);
  if (v1)
  {
    *(v1 + 4) = 0;
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      a1 = v2;
    }
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  JUMPOUT(0x2743DA540);
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DtmfSender::QueueInsertDtmf(unsigned int)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 + 32);
  v3 = *(*a1 + 55);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = *a1 + 32;
    v5 = *(*a1 + 55);
    if (!*(*a1 + 55))
    {
      goto LABEL_19;
    }

LABEL_5:
    v6 = -1;
    v7 = 1;
    while (1)
    {
      v8 = *(v4 + v7 - 1);
      v9 = (v8 - 42) > 0x3A || ((1 << (v8 - 42)) & 0x78000000780FFC5) == 0;
      if (!v9 || v8 == 35)
      {
        break;
      }

      ++v7;
      --v6;
      if (v7 - v5 == 1)
      {
        goto LABEL_19;
      }
    }

    if (v7 - v5 == 1 || !v7)
    {
      goto LABEL_19;
    }

    v10 = v7 - 1;
    if ((v3 & 0x80000000) != 0)
    {
      if (*(v1 + 40) < v10)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }
    }

    else if (v3 < v10)
    {
      goto LABEL_96;
    }

    v13 = *a1 + 32;
    if ((v3 & 0x80000000) != 0)
    {
      v13 = v2->__r_.__value_.__r.__words[0];
    }

    v14 = __toupper(*(v13 + v7 - 1));
    v15 = memchr(",0123456789*#ABCD", v14, 0x12uLL);
    if (v15)
    {
      v16 = v15 + ~",0123456789*#ABCD";
      if (v16 == -1)
      {
        v17 = *(v1 + 64);
        v18 = *(v1 + 8);
        if (!v18)
        {
          goto LABEL_85;
        }

LABEL_38:
        v21 = *(v1 + 55);
        if ((v21 & 0x8000000000000000) != 0)
        {
          v22 = *(v1 + 40);
          if (v22 < v10)
          {
            goto LABEL_97;
          }

          v23 = v2->__r_.__value_.__r.__words[0];
        }

        else
        {
          v22 = *(v1 + 55);
          v23 = v2;
          if (v10 > v21)
          {
            goto LABEL_97;
          }
        }

        v31 = v7 - v22;
        v32 = (&v23->__r_.__value_.__l + v7 - 1);
        HIBYTE(v51) = v31 != 1;
        if (v31 == 1)
        {
          p_p = &__p;
        }

        else
        {
          p_p = (&__p + 1);
        }

        if (&__p <= v32 && p_p > v32)
        {
          goto LABEL_96;
        }

        if (v31 != 1)
        {
          memmove(&__p, v32, v31 != 1);
        }

        *p_p = 0;
        if ((v21 & 0x80000000) != 0)
        {
          v21 = *(v1 + 40);
          if (v21 <= v10)
          {
            goto LABEL_97;
          }

          v34 = v2->__r_.__value_.__r.__words[0];
          v35 = v21 - v7;
          if (v21 - v7 < 0x7FFFFFFFFFFFFFF8)
          {
LABEL_57:
            v36 = (&v34->__r_.__value_.__l.__data_ + v7);
            HIWORD(v46) = HIWORD(v17);
            if (v35 > 0x16)
            {
              operator new();
            }

            v48 = v35;
            v37 = &v47 + v21;
            if (&v47 <= v36 && &v37[-v7] > v36)
            {
              goto LABEL_96;
            }

            if (v21 != v7)
            {
              memmove(&v47, v36, v35);
            }

            v37[v6] = 0;
            (**v18)(v18, &__p, &v47);
            if (v48 < 0)
            {
              operator delete(v47);
              if ((SHIBYTE(v51) & 0x80000000) == 0)
              {
LABEL_66:
                v38 = *(v1 + 8);
                v39 = *(v1 + 55);
                if ((v39 & 0x8000000000000000) == 0)
                {
                  goto LABEL_67;
                }

                goto LABEL_74;
              }
            }

            else if ((SHIBYTE(v51) & 0x80000000) == 0)
            {
              goto LABEL_66;
            }

            operator delete(__p);
            v38 = *(v1 + 8);
            v39 = *(v1 + 55);
            if ((v39 & 0x8000000000000000) == 0)
            {
LABEL_67:
              v40 = v2;
              if (v10 > v39)
              {
LABEL_97:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

LABEL_76:
              v41 = v7 - v39;
              v42 = (&v40->__r_.__value_.__l + v7 - 1);
              HIBYTE(v51) = v41 != 1;
              if (v41 == 1)
              {
                v43 = &__p;
              }

              else
              {
                v43 = (&__p + 1);
              }

              if (&__p <= v42 && v43 > v42)
              {
                goto LABEL_96;
              }

              if (v41 != 1)
              {
                memmove(&__p, v42, v41 != 1);
              }

              *v43 = 0;
              (*(*v38 + 8))(v38, &__p);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(__p);
              }

LABEL_85:
              if (*(v1 + 55) < 0)
              {
                if (v7 == -1)
                {
                  v45 = *(v1 + 32);
                  *(v1 + 40) = 0;
                  *v45 = 0;
                  v44 = *(v1 + 72);
                  if (!v44)
                  {
LABEL_92:
                    operator new();
                  }

LABEL_91:
                  atomic_fetch_add_explicit(v44, 1u, memory_order_relaxed);
                  goto LABEL_92;
                }
              }

              else if (v7 == -1)
              {
                *(v1 + 55) = 0;
                v2->__r_.__value_.__s.__data_[0] = 0;
                v44 = *(v1 + 72);
                if (!v44)
                {
                  goto LABEL_92;
                }

                goto LABEL_91;
              }

              std::string::__erase_external_with_move(v2, 0, v7);
              v44 = *(v1 + 72);
              if (!v44)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }

LABEL_74:
            v39 = *(v1 + 40);
            if (v39 < v10)
            {
              goto LABEL_97;
            }

            v40 = v2->__r_.__value_.__r.__words[0];
            goto LABEL_76;
          }
        }

        else
        {
          v34 = v2;
          if (v10 >= v21)
          {
            goto LABEL_97;
          }

          v35 = v21 - v7;
          if (v21 - v7 < 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_57;
          }
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = *(v1 + 24);
    if (v19)
    {
      v20 = *(v1 + 60);
      if ((*(*v19 + 8))(v19, v16, *(v1 + 56)))
      {
        v17 = *(v1 + 56) + v20;
        v18 = *(v1 + 8);
        if (!v18)
        {
          goto LABEL_85;
        }

        goto LABEL_38;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
        return;
      }
    }

    else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return;
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/dtmf_sender.cc");
    return;
  }

  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_19:
  if ((v3 & 0x80000000) != 0)
  {
    **(v1 + 32) = 0;
    *(v1 + 40) = 0;
    v11 = *(v1 + 8);
    if (!v11)
    {
      return;
    }
  }

  else
  {
    *(v1 + 32) = 0;
    *(v1 + 55) = 0;
    v11 = *(v1 + 8);
    if (!v11)
    {
      return;
    }
  }

  __p = 0;
  v50 = 0;
  v51 = 0;
  (**v11)(v11, &__p, v2);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }

  v12 = *(v1 + 8);
  __p = 0;
  v50 = 0;
  v51 = 0;
  (*(*v12 + 8))(v12, &__p);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::DtmfToneGenerator::Init(webrtc::DtmfToneGenerator *this, int a2, unsigned int a3, unsigned int a4)
{
  *(this + 8) = 0;
  if (a2 <= 31999)
  {
    if (a2 != 8000)
    {
LABEL_8:
      v4 = 1;
      if (a3 > 0xF)
      {
        return 4294967294;
      }

      goto LABEL_13;
    }

    v4 = 0;
    if (a3 <= 0xF)
    {
      goto LABEL_13;
    }

    return 4294967294;
  }

  if (a2 == 32000)
  {
    v4 = 2;
    if (a3 <= 0xF)
    {
      goto LABEL_13;
    }

    return 4294967294;
  }

  if (a2 != 48000)
  {
    goto LABEL_8;
  }

  v4 = 3;
  if (a3 > 0xF)
  {
    return 4294967294;
  }

LABEL_13:
  if (a4 > 0x3F)
  {
    return 4294967294;
  }

  v6 = v4 << 6;
  *(this + 3) = *(&webrtc::DtmfToneGenerator::kCoeff1[a3] + v6);
  *(this + 4) = *(&webrtc::DtmfToneGenerator::kCoeff2[a3] + v6);
  *(this + 5) = webrtc::DtmfToneGenerator::kAmplitude[a4];
  *(this + 12) = *(&webrtc::DtmfToneGenerator::kInitValue1[a3] + v6);
  *(this + 13) = 0;
  *(this + 14) = *(&webrtc::DtmfToneGenerator::kInitValue2[a3] + v6);
  *(this + 15) = 0;
  *(this + 8) = 1;
  return 0;
}

uint64_t webrtc::DtmfToneGenerator::Generate(uint64_t this, unint64_t a2, webrtc::AudioMultiVector *a3)
{
  v4 = *(this + 8);
  if (v4 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 4294967294;
  }

  v6 = *(a3 + 1);
  v7 = *(a3 + 2);
  if (v7 == v6)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = ((*v6)[3] + (*v6)[1] - (*v6)[2]) % (*v6)[1];
  v10 = a2 - v9;
  if (a2 > v9)
  {
    v11 = this;
    do
    {
      v12 = *v6++;
      webrtc::AudioVector::InsertZerosByPushBack(v12, v10, (*(v12 + 1) + *(v12 + 3) - *(v12 + 2)) % *(v12 + 1));
    }

    while (v6 != v7);
    v6 = *(a3 + 1);
    v7 = *(a3 + 2);
    this = v11;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v3 = *(this + 12);
  v4 = *(this + 16);
  if (v7 == v6)
  {
LABEL_22:
    v25 = ((v3 * *(this + 26) + 0x2000) >> 14) - *(this + 24);
    v26 = *(this + 30);
    v27 = ((v4 * v26 + 0x2000) >> 14) - *(this + 28);
    *(this + 24) = *(this + 26);
    *(this + 26) = v25;
    *(this + 28) = v26;
    *(this + 30) = v27;
    __break(1u);
    return this;
  }

  v13 = *(this + 20);
  v15 = (*v6)[1];
  v14 = (*v6)[2];
  v16 = **v6 + 2 * v14;
  v17 = a2;
  do
  {
    v18 = *(this + 26);
    v19 = ((v3 * v18 + 0x2000) >> 14) - *(this + 24);
    v20 = *(this + 30);
    v21 = *(this + 28);
    *(this + 24) = v18;
    *(this + 26) = v19;
    *(this + 28) = v20;
    *(this + 30) = ((v4 * v20 + 0x2000) >> 14) - v21;
    v22 = (v13 * ((23171 * v19 + ((((v4 * v20 + 0x2000) >> 14) - v21) << 15) + 0x4000) >> 15) + 0x2000) >> 14;
    if (v14 >= v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = 0;
    }

    *(v16 - 2 * v23) = v22;
    v16 += 2;
    v14 = v14 + 1;
    --v17;
  }

  while (v17);
LABEL_15:
  if ((v7 - v6) >= 9)
  {
    v24 = 1;
    do
    {
      webrtc::AudioVector::CopyTo(*v6, v6[v24++]);
      v6 = *(a3 + 1);
    }

    while (v24 < (*(a3 + 2) - v6) >> 3);
  }

  return a2;
}

float32x4_t *webrtc::EchoAudibility::UpdateRenderNoiseEstimator(float32x4_t *result, int *a2, uint64_t a3, char a4, float32x4_t a5)
{
  v5 = result;
  v6 = a2[8];
  if ((result->i8[4] & 1) == 0)
  {
    result->i32[0] = v6;
    result->i8[4] = 1;
    result->i32[2] = *(a3 + 32);
    return result;
  }

  if (result->i8[12] & 1) != 0 || (a4)
  {
    if (!result->i8[12])
    {
      goto LABEL_53;
    }

LABEL_43:
    v32 = v5->i32[0];
    if (v5->i32[0] == v6)
    {
      goto LABEL_53;
    }

    while (1)
    {
      v33 = v32;
      v34 = *(a2 + 1);
      if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - v34) >> 3) <= v33)
      {
        break;
      }

      v35 = (v34 + 24 * v33);
      v36 = *v35;
      v37 = v35[1] - *v35;
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      result = webrtc::StationarityEstimator::NoiseSpectrum::Update((v5 + 24), v38, -1057222719 * (v37 >> 2), a5);
      v39 = *a2;
      if (v33 > 0)
      {
        v39 = v33;
      }

      v32 = v39 - 1;
      if (v32 == v6)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v8 = *(a3 + 8);
    v9 = *(a3 + 16);
    v10 = v9 - v8;
    if (v9 != v8)
    {
      v11 = *(a3 + 32);
      v12 = result->i32[2];
      if (v11 != v12)
      {
        v13 = *(v8 + 4);
        if (v13 >= 1)
        {
          v14 = v10 >> 5;
          v15 = *a3 - 1;
          a5.i32[0] = 10.0;
LABEL_8:
          if (v14 > v12)
          {
            v16 = 0;
            v17 = 0;
            v18 = *(v8 + 32 * v12 + 8);
            result = (v18 + 12);
            v19 = 0.0;
            while (1)
            {
              v22 = (v17 << 6);
              if ((*(v8 + 32 * v12 + 16) - v18) >> 2 <= v22)
              {
                break;
              }

              f32 = result[v16].f32;
              v24 = (v18 + 4 * v22);
              v25 = v24 + 1;
              v26 = v24[1];
              if (v26 >= *v24)
              {
                v27 = v24;
              }

              else
              {
                v27 = v24 + 1;
              }

              if (v26 >= *v24)
              {
                v26 = *v24;
              }

              else
              {
                v25 = v24;
              }

              v28 = 248;
              v29 = 2;
              do
              {
                while (1)
                {
                  v30 = *(f32 - 1);
                  v31 = *f32;
                  if (*f32 < v30)
                  {
                    break;
                  }

                  if (v30 < v26)
                  {
                    v26 = *(f32 - 1);
                    v27 = f32 - 1;
                  }

                  if (v31 >= *v25)
                  {
                    v25 = f32;
                  }

                  v29 += 2;
                  f32 += 2;
                  v28 -= 8;
                  if (!v28)
                  {
                    goto LABEL_10;
                  }
                }

                v26 = *v27;
                if (v31 < *v27)
                {
                  v26 = *f32;
                  v27 = f32;
                }

                if (v30 >= *v25)
                {
                  v25 = &v24[v29];
                }

                v29 += 2;
                f32 += 2;
                v28 -= 8;
              }

              while (v28);
LABEL_10:
              v20 = fabsf(*v27);
              v21 = fabsf(*v25);
              if (v20 < v21)
              {
                v20 = v21;
              }

              if (v19 < v20)
              {
                v19 = v20;
              }

              ++v17;
              v16 += 16;
              if (v17 == v13)
              {
                if (v19 < 10.0)
                {
                  goto LABEL_52;
                }

                if (v15 > v12)
                {
                  ++v12;
                }

                else
                {
                  v12 = 0;
                }

                if (v12 == v11)
                {
                  v5->i32[2] = v11;
                  v5->i8[12] = 1;
                  goto LABEL_43;
                }

                goto LABEL_8;
              }
            }
          }

          goto LABEL_54;
        }
      }

LABEL_52:
      v5->i32[2] = v11;
      v5->i8[12] = 0;
LABEL_53:
      v5->i32[0] = v6;
      v5->i8[4] = 1;
      return result;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

BOOL webrtc::FieldTrialsView::IsEnabled(uint64_t a1)
{
  (*(*a1 + 16))(__p);
  v1 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  if (v1 >= 7)
  {
    v3 = __p[0];
    if ((v9 & 0x80u) == 0)
    {
      v3 = __p;
    }

    v4 = *v3;
    v5 = *(v3 + 3);
    v2 = v4 == 1650552389 && v5 == 1684368482;
    if (v9 < 0)
    {
      goto LABEL_16;
    }

    return v2;
  }

  v2 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    return v2;
  }

LABEL_16:
  operator delete(__p[0]);
  return v2;
}

void webrtc::anonymous namespace::RetrieveFieldTrialValue(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float a5)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v28 = a2;
  v29 = a3;
  (*(*a1 + 16))(v26);
  v7 = *a4;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v19 = &unk_2882937C0;
  v20 = 0;
  v25 = v7;
  v30[0] = &v19;
  if ((v27 & 0x80u) == 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v9 = v27;
  }

  else
  {
    v9 = v26[1];
  }

  webrtc::ParseFieldTrial(v30, 1, v8, v9);
  v10 = v25;
  v11 = v10 < 0.0 || v10 > a5;
  if (!v11 && *a4 != v10)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\v\t\a\t\a", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/echo_canceller3.cc");
    }

    *a4 = v10;
  }

  v19 = &unk_288293910;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

void webrtc::anonymous namespace::RetrieveFieldTrialValue(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int *a5)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v28 = a3;
  (*(*a1 + 16))(v25);
  v7 = *a5;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  LOBYTE(__p) = 0;
  v18 = &unk_2882937F0;
  v19 = 0;
  v24 = v7;
  v29[0] = &v18;
  if ((v26 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v9 = v26;
  }

  else
  {
    v9 = v25[1];
  }

  webrtc::ParseFieldTrial(v29, 1, v8, v9);
  if ((v24 & 0x80000000) == 0)
  {
    v10 = v24;
    if (v24 <= a4 && v10 != *a5)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/echo_canceller3.cc");
      }

      *a5 = v10;
    }
  }

  v18 = &unk_288293910;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }
}

void *std::vector<std::vector<std::vector<float>>>::vector[abi:sn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::EchoCanceller3::RenderWriter::~RenderWriter(webrtc::EchoCanceller3::RenderWriter *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      v5 = *(this + 5);
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v12 = *(v10 - 3);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 2) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  v13 = *(this + 3);
  *(this + 3) = 0;
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = *(v13 + 16);
      v16 = *(v13 + 8);
      if (v15 != v14)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            v19 = *v17;
            if (*v17)
            {
              *(v17 + 8) = v19;
              operator delete(v19);
            }

            MEMORY[0x2743DA540](v17, 0x20C40960023A9);
          }
        }

        while (v15 != v14);
        v16 = *(v13 + 8);
      }

      *(v13 + 16) = v14;
      operator delete(v16);
    }

    MEMORY[0x2743DA540](v13, 0x1020C40E72D6CFBLL);
  }
}

void webrtc::EchoCanceller3::EchoCanceller3(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_288293078;
  v2 = *a2;
  *(a1 + 8) = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  v3 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  operator new();
}

void webrtc::EchoCanceller3::Initialize(webrtc::EchoCanceller3 *this)
{
  if (*(this + 2000))
  {
    v2 = *(this + 89);
    *(this + 90) = v2;
    v3 = 608;
    if (!*(this + 1952))
    {
      v3 = 0;
    }

    v4 = this + v3 + 736;
  }

  else
  {
    LODWORD(v2) = 1;
    *(this + 90) = 1;
    v4 = this + 736;
  }

  *(this + 245) = v4;
  *(this + 559) = v2;
  v5 = (*(this + 558) * v2) << 6;
  v6 = *(this + 281);
  v7 = *(this + 280);
  v8 = (v6 - v7) >> 2;
  if (v5 <= v8)
  {
    if (v5 < v8)
    {
      v6 = &v7[4 * v5];
      *(this + 281) = v6;
    }
  }

  else
  {
    std::vector<float>::__append((this + 2240), v5 - v8);
    v7 = *(this + 280);
    v6 = *(this + 281);
  }

  if (v6 - v7 >= 1)
  {
    bzero(v7, v6 - v7);
  }

  operator new();
}

void webrtc::EchoCanceller3::~EchoCanceller3(webrtc::EchoCanceller3 *this)
{
  *this = &unk_288293078;
  v2 = *(this + 297);
  *(this + 297) = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v2 + 24);
      v5 = *(v2 + 16);
      if (v4 != v3)
      {
        v6 = *(v2 + 24);
        do
        {
          v9 = *(v6 - 3);
          v6 -= 3;
          v8 = v9;
          if (v9)
          {
            v10 = *(v4 - 2);
            v7 = v8;
            if (v10 != v8)
            {
              v11 = *(v4 - 2);
              do
              {
                v13 = *(v11 - 3);
                v11 -= 24;
                v12 = v13;
                if (v13)
                {
                  *(v10 - 2) = v12;
                  operator delete(v12);
                }

                v10 = v11;
              }

              while (v11 != v8);
              v7 = *v6;
            }

            *(v4 - 2) = v8;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 16);
      }

      *(v2 + 24) = v3;
      operator delete(v5);
    }

    MEMORY[0x2743DA540](v2, 0x1020C40C2CF8CA0);
  }

  v14 = *(this + 294);
  if (v14)
  {
    v15 = *(this + 295);
    v16 = *(this + 294);
    if (v15 != v14)
    {
      v17 = *(this + 295);
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v14);
      v16 = *(this + 294);
    }

    *(this + 295) = v14;
    operator delete(v16);
  }

  v20 = *(this + 291);
  if (v20)
  {
    v21 = *(this + 292);
    v22 = *(this + 291);
    if (v21 != v20)
    {
      v23 = *(this + 292);
      do
      {
        v25 = *(v23 - 24);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 16) = v24;
          operator delete(v24);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = *(this + 291);
    }

    *(this + 292) = v20;
    operator delete(v22);
  }

  v26 = *(this + 288);
  if (v26)
  {
    v27 = *(this + 289);
    v28 = *(this + 288);
    if (v27 != v26)
    {
      v29 = *(this + 289);
      do
      {
        v31 = *(v29 - 24);
        v29 -= 24;
        v30 = v31;
        if (v31)
        {
          *(v27 - 16) = v30;
          operator delete(v30);
        }

        v27 = v29;
      }

      while (v29 != v26);
      v28 = *(this + 288);
    }

    *(this + 289) = v26;
    operator delete(v28);
  }

  v32 = *(this + 285);
  if (v32)
  {
    *(this + 286) = v32;
    operator delete(v32);
  }

  v33 = *(this + 283);
  *(this + 283) = 0;
  if (v33)
  {
    v34 = *(v33 + 8);
    if (v34)
    {
      *(v33 + 16) = v34;
      operator delete(v34);
    }

    MEMORY[0x2743DA540](v33, 0x1080C409938AC02);
  }

  v35 = *(this + 280);
  if (v35)
  {
    *(this + 281) = v35;
    operator delete(v35);
  }

  v36 = *(this + 275);
  if (v36)
  {
    v37 = *(this + 276);
    v38 = *(this + 275);
    if (v37 != v36)
    {
      v39 = *(this + 276);
      do
      {
        v42 = *(v39 - 3);
        v39 -= 3;
        v41 = v42;
        if (v42)
        {
          v43 = *(v37 - 2);
          v40 = v41;
          if (v43 != v41)
          {
            v44 = *(v37 - 2);
            do
            {
              v46 = *(v44 - 3);
              v44 -= 24;
              v45 = v46;
              if (v46)
              {
                *(v43 - 2) = v45;
                operator delete(v45);
              }

              v43 = v44;
            }

            while (v44 != v41);
            v40 = *v39;
          }

          *(v37 - 2) = v41;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = *(this + 275);
    }

    *(this + 276) = v36;
    operator delete(v38);
  }

  v47 = *(this + 274);
  *(this + 274) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(this + 271);
  if (v48)
  {
    v49 = *(this + 272);
    v50 = *(this + 271);
    if (v49 != v48)
    {
      v51 = *(this + 272);
      do
      {
        v54 = *(v51 - 3);
        v51 -= 3;
        v53 = v54;
        if (v54)
        {
          v55 = *(v49 - 2);
          v52 = v53;
          if (v55 != v53)
          {
            v56 = *(v49 - 2);
            do
            {
              v59 = *(v56 - 3);
              v56 -= 3;
              v58 = v59;
              if (v59)
              {
                v60 = *(v55 - 2);
                v57 = v58;
                if (v60 != v58)
                {
                  v61 = *(v55 - 2);
                  do
                  {
                    v63 = *(v61 - 3);
                    v61 -= 24;
                    v62 = v63;
                    if (v63)
                    {
                      *(v60 - 2) = v62;
                      operator delete(v62);
                    }

                    v60 = v61;
                  }

                  while (v61 != v58);
                  v57 = *v56;
                }

                *(v55 - 2) = v58;
                operator delete(v57);
              }

              v55 = v56;
            }

            while (v56 != v53);
            v52 = *v51;
          }

          *(v49 - 2) = v53;
          operator delete(v52);
        }

        v49 = v51;
      }

      while (v51 != v48);
      v50 = *(this + 271);
    }

    *(this + 272) = v48;
    operator delete(v50);
  }

  v64 = *(this + 264);
  *(this + 264) = 0;
  if (v64)
  {
    v65 = *(v64 + 16);
    if (v65)
    {
      v66 = *(v64 + 24);
      v67 = *(v64 + 16);
      if (v66 != v65)
      {
        v68 = *(v64 + 24);
        do
        {
          v71 = *(v68 - 3);
          v68 -= 3;
          v70 = v71;
          if (v71)
          {
            v72 = *(v66 - 2);
            v69 = v70;
            if (v72 != v70)
            {
              v73 = *(v66 - 2);
              do
              {
                v75 = *(v73 - 3);
                v73 -= 24;
                v74 = v75;
                if (v75)
                {
                  *(v72 - 2) = v74;
                  operator delete(v74);
                }

                v72 = v73;
              }

              while (v73 != v70);
              v69 = *v68;
            }

            *(v66 - 2) = v70;
            operator delete(v69);
          }

          v66 = v68;
        }

        while (v68 != v65);
        v67 = *(v64 + 16);
      }

      *(v64 + 24) = v65;
      operator delete(v67);
    }

    MEMORY[0x2743DA540](v64, 0x1020C40DB654AE0);
  }

  v76 = *(this + 261);
  if (v76)
  {
    v77 = *(this + 262);
    v78 = *(this + 261);
    if (v77 != v76)
    {
      v79 = *(this + 262);
      do
      {
        v82 = *(v79 - 3);
        v79 -= 3;
        v81 = v82;
        if (v82)
        {
          v83 = *(v77 - 2);
          v80 = v81;
          if (v83 != v81)
          {
            v84 = *(v77 - 2);
            do
            {
              v86 = *(v84 - 3);
              v84 -= 24;
              v85 = v86;
              if (v86)
              {
                *(v83 - 2) = v85;
                operator delete(v85);
              }

              v83 = v84;
            }

            while (v84 != v81);
            v80 = *v79;
          }

          *(v77 - 2) = v81;
          operator delete(v80);
        }

        v77 = v79;
      }

      while (v79 != v76);
      v78 = *(this + 261);
    }

    *(this + 262) = v76;
    operator delete(v78);
  }

  v87 = *(this + 256);
  if (v87)
  {
    v88 = *(this + 257);
    v89 = *(this + 256);
    if (v88 != v87)
    {
      v90 = *(this + 257);
      do
      {
        v93 = *(v90 - 3);
        v90 -= 3;
        v92 = v93;
        if (v93)
        {
          v94 = *(v88 - 2);
          v91 = v92;
          if (v94 != v92)
          {
            v95 = *(v88 - 2);
            do
            {
              v97 = *(v95 - 3);
              v95 -= 24;
              v96 = v97;
              if (v97)
              {
                *(v94 - 2) = v96;
                operator delete(v96);
              }

              v94 = v95;
            }

            while (v95 != v92);
            v91 = *v90;
          }

          *(v88 - 2) = v92;
          operator delete(v91);
        }

        v88 = v90;
      }

      while (v90 != v87);
      v89 = *(this + 256);
    }

    *(this + 257) = v87;
    operator delete(v89);
  }

  v98 = *(this + 253);
  *(this + 253) = 0;
  if (v98)
  {
    v99 = *(v98 + 16);
    if (v99)
    {
      v100 = *(v98 + 24);
      v101 = *(v98 + 16);
      if (v100 != v99)
      {
        v102 = *(v98 + 24);
        do
        {
          v105 = *(v102 - 3);
          v102 -= 3;
          v104 = v105;
          if (v105)
          {
            v106 = *(v100 - 2);
            v103 = v104;
            if (v106 != v104)
            {
              v107 = *(v100 - 2);
              do
              {
                v109 = *(v107 - 3);
                v107 -= 24;
                v108 = v109;
                if (v109)
                {
                  *(v106 - 2) = v108;
                  operator delete(v108);
                }

                v106 = v107;
              }

              while (v107 != v104);
              v103 = *v102;
            }

            *(v100 - 2) = v104;
            operator delete(v103);
          }

          v100 = v102;
        }

        while (v102 != v99);
        v101 = *(v98 + 16);
      }

      *(v98 + 24) = v99;
      operator delete(v101);
    }

    MEMORY[0x2743DA540](v98, 0x1020C40DB654AE0);
  }

  v110 = *(this + 249);
  *(this + 249) = 0;
  if (v110)
  {
    if (*v110 >= 500)
    {
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (CountsLinear)
      {
        webrtc::metrics::HistogramAdd(CountsLinear, *(v110 + 8));
      }
    }

    MEMORY[0x2743DA540](v110, 0x1000C4005A209FELL);
  }

  v112 = *(this + 11);
  *(this + 11) = 0;
  if (v112)
  {
    MEMORY[0x2743DA540](v112, 0xC400A2AC0F1);
  }

  v113 = *(this + 10);
  *(this + 10) = 0;
  if (v113)
  {
    webrtc::EchoCanceller3::RenderWriter::~RenderWriter(v113);
    MEMORY[0x2743DA540]();
  }

  v114 = *(this + 1);
  if (v114)
  {
    if (atomic_fetch_add(v114 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v114 + 8))(v114);
    }
  }
}

{
  webrtc::EchoCanceller3::~EchoCanceller3(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::EchoCanceller3::ProcessCapture(webrtc::EchoCanceller3 *this, webrtc::AudioBuffer *a2, webrtc::AudioBuffer *a3, unsigned int a4)
{
  if (a3 && !*(this + 253) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/echo_canceller3.cc");
  }

  webrtc::ApiCallJitterMetrics::ReportCaptureCall((this + 2384));
  if (*(*(this + 245) + 56))
  {
    webrtc::BlockDelayBuffer::DelaySignal(*(this + 297), a2);
  }

  if (atomic_load_explicit(this + 270, memory_order_acquire))
  {
    v15 = *(this + 269);
    v16 = *(this + 271);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 272) - v16) >> 3) > v15)
    {
      v17 = (v16 + 24 * v15);
      v18 = *(this + 275);
      *(this + 275) = *v17;
      *v17 = v18;
      v19 = *(this + 276);
      *(this + 276) = v17[1];
      v17[1] = v19;
      v20 = *(this + 277);
      *(this + 277) = v17[2];
      v17[2] = v20;
      atomic_fetch_add_explicit(this + 270, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
      v21 = *(this + 269);
      if (v21 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*(this + 272) - *(this + 271)) >> 3))
      {
        v22 = 0;
      }

      else
      {
        v22 = v21 + 1;
      }

      *(this + 269) = v22;
      if (*(this + 2408) != 1)
      {
        goto LABEL_15;
      }

LABEL_13:
      ++*(this + 600);
      *(this + 2408) = 1;
      if (webrtc::MultiChannelContentDetector::UpdateDetection(this + 1968, this + 2200))
      {
LABEL_22:
        webrtc::EchoCanceller3::Initialize(this);
      }

      while (1)
      {
        v25 = *(this + 264);
        v26 = v25[2];
        if (v25[3] == v26)
        {
          break;
        }

        v27 = *v26;
        if (*(v25[2] + 8) == v27)
        {
          break;
        }

        if (v27[1] - *v27 == 256)
        {
          v28 = *(this + 274);
          webrtc::FrameBlocker::ExtractBlock(v25, this + 2232);
          (*(*v28 + 40))(v28, this + 2232);
        }

        if (!atomic_load_explicit(this + 270, memory_order_acquire))
        {
          goto LABEL_34;
        }

        v29 = *(this + 269);
        v30 = *(this + 271);
        if (0xAAAAAAAAAAAAAAABLL * ((*(this + 272) - v30) >> 3) <= v29)
        {
          goto LABEL_116;
        }

        v31 = (v30 + 24 * v29);
        v32 = *(this + 275);
        *(this + 275) = *v31;
        *v31 = v32;
        v33 = *(this + 276);
        *(this + 276) = v31[1];
        v31[1] = v33;
        v34 = *(this + 277);
        *(this + 277) = v31[2];
        v31[2] = v34;
        atomic_fetch_add_explicit(this + 270, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
        v35 = *(this + 269);
        if (v35 + 1 == 0xAAAAAAAAAAAAAAABLL * ((*(this + 272) - *(this + 271)) >> 3))
        {
          v36 = 0;
        }

        else
        {
          v36 = v35 + 1;
        }

        *(this + 269) = v36;
        if (*(this + 2408) == 1)
        {
          goto LABEL_13;
        }

LABEL_15:
        if (*(this + 2409) == 1)
        {
          v23 = *(this + 600);
          v24 = *(this + 599);
          if (v24 >= v23)
          {
            v24 = *(this + 600);
          }

          *(this + 599) = v24;
          if (*(this + 598) > v23)
          {
            v23 = *(this + 598);
          }

          *(this + 598) = v23;
        }

        *(this + 600) = 1;
        *(this + 2408) = 1;
        if (webrtc::MultiChannelContentDetector::UpdateDetection(this + 1968, this + 2200))
        {
          goto LABEL_22;
        }
      }
    }

    goto LABEL_116;
  }

LABEL_34:
  v37 = *(this + 2001);
  v38 = *(this + 2224);
  v39 = *(this + 253);
  v40 = *(this + 274);
  v41 = *(this + 283);
  v42 = *(this + 295);
  v43 = *(this + 294);
  if (v42 != v43)
  {
    v44 = 0;
    do
    {
      v45 = v42 - v43;
      if (v42 == v43)
      {
        goto LABEL_116;
      }

      if (*(v43 + 1) != *v43)
      {
        v46 = 0;
        v47 = 0;
        do
        {
          v48 = *(a2 + 11);
          if (!v48)
          {
            v48 = *(a2 + 10);
          }

          if (0xAAAAAAAAAAAAAAABLL * (v45 >> 3) <= v44)
          {
            goto LABEL_116;
          }

          v50 = &v43[24 * v44];
          v49 = *v50;
          if (v47 >= (*(v50 + 1) - *v50) >> 4)
          {
            goto LABEL_116;
          }

          v51 = (v49 + v46);
          *v51 = *(*(v48 + 16) + 8 * *(v48 + 56) * v47 + 8 * v44);
          v51[1] = 80;
          v42 = *(this + 295);
          v43 = *(this + 294);
          v45 = v42 - v43;
          if (v42 == v43)
          {
            goto LABEL_116;
          }

          ++v47;
          v46 += 16;
        }

        while (v47 < (*(v43 + 1) - *v43) >> 4);
      }
    }

    while (++v44 < 0xAAAAAAAAAAAAAAABLL * (v45 >> 3));
  }

  if (a3)
  {
    v52 = *(this + 292);
    v53 = *(this + 291);
    if (v52 != v53)
    {
      v54 = 0;
      do
      {
        v55 = v52 - v53;
        if (v52 == v53)
        {
          goto LABEL_116;
        }

        if (*(v53 + 1) != *v53)
        {
          v56 = 0;
          v57 = 0;
          do
          {
            v58 = *(a3 + 11);
            if (!v58)
            {
              v58 = *(a3 + 10);
            }

            if (0xAAAAAAAAAAAAAAABLL * (v55 >> 3) <= v54)
            {
              goto LABEL_116;
            }

            v60 = &v53[24 * v54];
            v59 = *v60;
            if (v57 >= (*(v60 + 1) - *v60) >> 4)
            {
              goto LABEL_116;
            }

            v61 = (v59 + v56);
            *v61 = *(*(v58 + 16) + 8 * *(v58 + 56) * v57 + 8 * v54);
            v61[1] = 80;
            v52 = *(this + 292);
            v53 = *(this + 291);
            v55 = v52 - v53;
            if (v52 == v53)
            {
              goto LABEL_116;
            }

            ++v57;
            v56 += 16;
          }

          while (v57 < (*(v53 + 1) - *v53) >> 4);
        }
      }

      while (++v54 < 0xAAAAAAAAAAAAAAABLL * (v55 >> 3));
    }
  }

  v62 = (this + 2032);
  webrtc::FrameBlocker::InsertSubFrameAndExtractBlock(this + 259, this + 294, this + 2272);
  (*(*v40 + 32))(v40, v37 | a4, v38, v41, this + 2272);
  webrtc::BlockFramer::InsertBlockAndExtractSubFrame(this + 254, this + 2272, this + 294);
  if (a3)
  {
    webrtc::BlockFramer::InsertBlockAndExtractSubFrame(v39, v41, this + 291);
  }

  v63 = *(this + 2001);
  v64 = *(this + 2224);
  v65 = *(this + 253);
  v66 = *(this + 274);
  v67 = *(this + 283);
  v68 = *(this + 295);
  v69 = *(this + 294);
  if (v68 != v69)
  {
    v70 = 0;
    do
    {
      v71 = v68 - v69;
      if (v68 == v69)
      {
        goto LABEL_116;
      }

      if (*(v69 + 1) != *v69)
      {
        v72 = 0;
        v73 = 0;
        do
        {
          v74 = *(a2 + 11);
          if (!v74)
          {
            v74 = *(a2 + 10);
          }

          if (0xAAAAAAAAAAAAAAABLL * (v71 >> 3) <= v70)
          {
            goto LABEL_116;
          }

          v76 = &v69[24 * v70];
          v75 = *v76;
          if (v73 >= (*(v76 + 1) - *v76) >> 4)
          {
            goto LABEL_116;
          }

          v77 = (v75 + v72);
          *v77 = *(*(v74 + 16) + 8 * *(v74 + 56) * v73 + 8 * v70) + 320;
          v77[1] = 80;
          v68 = *(this + 295);
          v69 = *(this + 294);
          v71 = v68 - v69;
          if (v68 == v69)
          {
            goto LABEL_116;
          }

          ++v73;
          v72 += 16;
        }

        while (v73 < (*(v69 + 1) - *v69) >> 4);
      }
    }

    while (++v70 < 0xAAAAAAAAAAAAAAABLL * (v71 >> 3));
  }

  if (a3)
  {
    v78 = *(this + 292);
    v79 = *(this + 291);
    if (v78 != v79)
    {
      v80 = 0;
      do
      {
        v81 = v78 - v79;
        if (v78 == v79)
        {
          goto LABEL_116;
        }

        if (*(v79 + 1) != *v79)
        {
          v82 = 0;
          v83 = 0;
          do
          {
            v84 = *(a3 + 11);
            if (!v84)
            {
              v84 = *(a3 + 10);
            }

            if (0xAAAAAAAAAAAAAAABLL * (v81 >> 3) <= v80)
            {
              goto LABEL_116;
            }

            v86 = &v79[24 * v80];
            v85 = *v86;
            if (v83 >= (*(v86 + 1) - *v86) >> 4)
            {
              goto LABEL_116;
            }

            v87 = (v85 + v82);
            *v87 = *(*(v84 + 16) + 8 * *(v84 + 56) * v83 + 8 * v80) + 320;
            v87[1] = 80;
            v78 = *(this + 292);
            v79 = *(this + 291);
            v81 = v78 - v79;
            if (v78 == v79)
            {
              goto LABEL_116;
            }

            ++v83;
            v82 += 16;
          }

          while (v83 < (*(v79 + 1) - *v79) >> 4);
        }
      }

      while (++v80 < 0xAAAAAAAAAAAAAAABLL * (v81 >> 3));
    }
  }

  webrtc::FrameBlocker::InsertSubFrameAndExtractBlock(this + 259, this + 294, this + 2272);
  (*(*v66 + 32))(v66, v63 | a4, v64, v67, this + 2272);
  webrtc::BlockFramer::InsertBlockAndExtractSubFrame(this + 254, this + 2272, this + 294);
  if (a3)
  {
    webrtc::BlockFramer::InsertBlockAndExtractSubFrame(v65, v67, this + 291);
  }

  v88 = *(this + 261);
  if (*(this + 262) == v88 || (v89 = *v88, *(*(this + 261) + 8) == v89))
  {
LABEL_116:
    __break(1u);
    return;
  }

  if (v89[1] - *v89 != 256)
  {
    return;
  }

  v90 = *(this + 2001);
  v91 = *(this + 2224);
  v92 = *(this + 253);
  v93 = *(this + 274);
  v94 = *(this + 283);
  webrtc::FrameBlocker::ExtractBlock(this + 259, this + 2272);
  (*(*v93 + 32))(v93, v90 | a4, v91, v94, this + 2272);
  v95 = *v62;
  if (*v62 && *(this + 255))
  {
    v96 = 0;
    v97 = 1;
    while (!v97)
    {
LABEL_98:
      if (++v96 >= v95)
      {
        goto LABEL_105;
      }
    }

    v98 = 0;
    v99 = 0;
    while (1)
    {
      v100 = *(this + 256);
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 257) - v100) >> 3) <= v96)
      {
        goto LABEL_116;
      }

      v102 = (v100 + 24 * v96);
      v101 = *v102;
      if (0xAAAAAAAAAAAAAAABLL * ((v102[1] - *v102) >> 3) <= v99)
      {
        goto LABEL_116;
      }

      v103 = *(this + 285) + 4 * ((v99 + v96 * *(this + 569)) << 6);
      std::vector<float>::__insert_with_size[abi:sn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v101 + v98, *(v101 + v98), v103, (v103 + 256), 64);
      ++v99;
      v97 = *(this + 255);
      v98 += 24;
      if (v99 >= v97)
      {
        v95 = *v62;
        goto LABEL_98;
      }
    }
  }

LABEL_105:
  if (v92)
  {
    v104 = *v92;
    if (*v92)
    {
      if (v92[1])
      {
        v105 = 0;
        v106 = 1;
        while (!v106)
        {
LABEL_109:
          if (++v105 >= v104)
          {
            return;
          }
        }

        v107 = 0;
        v108 = 0;
        while (1)
        {
          v109 = v92[2];
          if (0xAAAAAAAAAAAAAAABLL * ((v92[3] - v109) >> 3) <= v105)
          {
            goto LABEL_116;
          }

          v111 = (v109 + 24 * v105);
          v110 = *v111;
          if (0xAAAAAAAAAAAAAAABLL * ((v111[1] - *v111) >> 3) <= v108)
          {
            goto LABEL_116;
          }

          v112 = *(v94 + 8) + 4 * ((v108 + v105 * *(v94 + 4)) << 6);
          std::vector<float>::__insert_with_size[abi:sn200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(v110 + v107, *(v110 + v107), v112, (v112 + 256), 64);
          ++v108;
          v106 = v92[1];
          v107 += 24;
          if (v108 >= v106)
          {
            v104 = *v92;
            goto LABEL_109;
          }
        }
      }
    }
  }
}

unint64_t webrtc::anonymous namespace::BufferRenderFrameContent(unint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v8 != *a2 && a7[1] != *a7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3);
    if (v10 <= (*(*a7 + 8) - **a7) >> 4)
    {
      v40 = 0;
      v41 = 80 * a3;
      while (1)
      {
        result = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
        if (result <= v40)
        {
          break;
        }

        v42 = &v7[3 * v40];
        v43 = *v42;
        if (v42[1] != *v42)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          do
          {
            v47 = *(v43 + v44);
            if (v41 >= (*(v43 + v44 + 8) - v47) >> 2)
            {
              goto LABEL_75;
            }

            result = 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3);
            if (result <= v40)
            {
              goto LABEL_75;
            }

            v49 = (*a7 + 24 * v40);
            v48 = *v49;
            result = v49[1] - *v49;
            if (v46 >= result >> 4)
            {
              goto LABEL_75;
            }

            v50 = (v48 + v45);
            *v50 = v47 + 4 * v41;
            v50[1] = 80;
            v7 = *a2;
            v8 = *(a2 + 8);
            result = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
            if (result <= v40)
            {
              goto LABEL_75;
            }

            ++v46;
            v43 = v7[3 * v40];
            v45 += 16;
            v44 += 24;
          }

          while (v46 < 0xAAAAAAAAAAAAAAABLL * ((v7[3 * v40 + 1] - v43) >> 3));
        }

        if (++v40 >= result)
        {
LABEL_72:
          webrtc::FrameBlocker::InsertSubFrameAndExtractBlock(a4, a7, a6);
          v74 = *(*a5 + 40);

          return v74(a5, a6);
        }
      }
    }

    else if (result)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
      v12 = 80 * a3;
      v13 = 1.0 / v10;
      v14 = -80 * a3;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      if (v10 <= 1)
      {
        v51 = 0;
        v52 = (320 * a3) | 0x10;
LABEL_50:
        v53 = v7[3 * v51];
        result = v7[3 * v51 + 1];
        if (result != v53)
        {
          v54 = *v53;
          v55 = (v53[1] - *v53) >> 2;
          if (v55 <= v12)
          {
            v55 = v12;
          }

          v56 = v55 + v14;
          if (v56 > 7)
          {
            if (v56 >= 0x4F)
            {
              v57 = 79;
            }

            else
            {
              v57 = v56;
            }

            v58 = v57 + 1;
            v59 = v58 & 7;
            if ((v58 & 7) == 0)
            {
              v59 = 8;
            }

            result = v58 - v59;
            v60 = (v54 + v52);
            v61 = result;
            do
            {
              v62 = vmulq_n_f32(*v60, v13);
              v60[-1] = vmulq_n_f32(v60[-1], v13);
              *v60 = v62;
              v60 += 2;
              v61 -= 8;
            }

            while (v61);
          }

          else
          {
            result = 0;
          }

          v63 = v54 + 4 * v12;
          while (v56 != result)
          {
            *(v63 + 4 * result) = v13 * *(v63 + 4 * result);
            if (++result == 80)
            {
              if (++v51 != v11)
              {
                goto LABEL_50;
              }

              goto LABEL_66;
            }
          }
        }
      }

      else
      {
        v15 = 0;
        v16 = (320 * a3) | 0x10;
        result = 8;
LABEL_9:
        v17 = &v7[3 * v15];
        v19 = *v17;
        v18 = v17[1];
        v20 = 0xAAAAAAAAAAAAAAABLL * (v18 - *v17);
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        v22 = 1;
LABEL_13:
        if (v22 != v21)
        {
          v23 = &v19[3 * v22];
          v24 = *v23;
          v25 = (v23[1] - *v23) >> 2;
          if (v25 <= v12)
          {
            v26 = v12;
          }

          else
          {
            v26 = v25;
          }

          v27 = v12;
          v28 = 320;
          while (v26 != v27)
          {
            v29 = *v19;
            v30 = (v19[1] - *v19) >> 2;
            if (v30 <= v27)
            {
              break;
            }

            *(v29 + 4 * v27) = *(v24 + 4 * v27) + *(v29 + 4 * v27);
            ++v27;
            v28 -= 4;
            if (!v28)
            {
              if (++v22 != v10)
              {
                goto LABEL_13;
              }

              if (v18 != v19)
              {
                v31 = v30 + v14;
                if (v30 + v14 > 7)
                {
                  if (v31 >= 0x4F)
                  {
                    v33 = 79;
                  }

                  else
                  {
                    v33 = v30 + v14;
                  }

                  v34 = v33 + 1;
                  v35 = v34 & 7;
                  if ((v34 & 7) == 0)
                  {
                    v35 = 8;
                  }

                  v32 = v34 - v35;
                  v36 = (v29 + v16);
                  v37 = v32;
                  do
                  {
                    v38 = vmulq_n_f32(*v36, v13);
                    v36[-1] = vmulq_n_f32(v36[-1], v13);
                    *v36 = v38;
                    v36 += 2;
                    v37 -= 8;
                  }

                  while (v37);
                }

                else
                {
                  v32 = 0;
                }

                v39 = v29 + 4 * v12;
                while (v31 != v32)
                {
                  *(v39 + 4 * v32) = v13 * *(v39 + 4 * v32);
                  if (++v32 == 80)
                  {
                    if (++v15 != v11)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_66;
                  }
                }
              }

              break;
            }
          }
        }
      }
    }

    else
    {
      v12 = 80 * a3;
LABEL_66:
      v64 = 0;
      v65 = 0;
      while (1)
      {
        v67 = &v7[v64];
        v66 = v7[v64];
        if (v67[1] == v66)
        {
          break;
        }

        v69 = v66;
        v68 = *v66;
        if (v12 >= (v69[1] - v68) >> 2)
        {
          break;
        }

        v70 = *a7;
        if (0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3) <= v65)
        {
          break;
        }

        v72 = v70 + v64 * 8;
        v71 = *(v70 + v64 * 8);
        if (*(v72 + 8) == v71)
        {
          break;
        }

        *v71 = v68 + 4 * v12;
        v71[1] = 80;
        ++v65;
        v7 = *a2;
        v64 += 3;
        if (v65 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3))
        {
          goto LABEL_72;
        }
      }
    }
  }

LABEL_75:
  __break(1u);
  return result;
}

char *webrtc::EchoCanceller3::AnalyzeRender(char *this, webrtc::AudioBuffer *a2)
{
  v2 = *(this + 10);
  v3 = v2[1];
  if (v3 != *(a2 + 8))
  {
    return this;
  }

  v4 = v2[2];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = 0;
LABEL_7:
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 11);
      if (!v10)
      {
        v10 = *(a2 + 10);
      }

      v11 = v2[4];
      if (0xAAAAAAAAAAAAAAABLL * ((v2[5] - v11) >> 3) <= v7)
      {
        goto LABEL_39;
      }

      v13 = (v11 + 24 * v7);
      v12 = *v13;
      if (0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3) <= v9)
      {
        goto LABEL_39;
      }

      this = memmove(*(v12 + v8), *(*(v10 + 16) + 8 * *(v10 + 56) * v9++ + 8 * v7), 0x280uLL);
      v8 += 24;
      if (v4 == v9)
      {
        if (++v7 != v3)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v14 = v2[3];
  if (v14)
  {
    v15 = v2[4];
    if (v2[5] == v15)
    {
      goto LABEL_39;
    }

    v16 = *v15;
    v17 = *(v2[4] + 8);
    v18 = v17 - v16;
    if (v17 != v16)
    {
      v19 = 0;
      v21 = v14 + 8;
      v20 = *(v14 + 8);
      v22 = (*(v21 + 8) - v20) >> 3;
      v23 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
      if (v23 <= 1)
      {
        v23 = 1;
      }

      while (v19 != v22)
      {
        v24 = *(v20 + 8 * v19);
        v25 = *v24;
        v26 = v24[1];
        if (v25 != v26)
        {
          v27 = (v16 + 24 * v19);
          v28 = *v27;
          this = v27[1];
          v29 = this == *v27;
          v30 = this == *v27 ? 0 : *v27;
          if (!v29)
          {
            v31 = (this - v28) >> 2;
            do
            {
              v32 = *v25;
              v33 = v25[1];
              v35 = v25[7];
              v34 = v25[8];
              v37 = v25[5];
              v36 = v25[6];
              v38 = v25[2];
              v39 = -v25[3];
              v40 = -v25[4];
              this = v30;
              v41 = v31;
              do
              {
                v42 = v36;
                v43 = v34;
                v36 = v37;
                v34 = v35;
                v37 = *this;
                v35 = ((((v33 * v36) + (v32 * *this)) + (v38 * v42)) + (v39 * v35)) + (v40 * v43);
                *this = v35;
                this += 4;
                --v41;
              }

              while (v41);
              v25[5] = v37;
              v25[6] = v36;
              v25[7] = v35;
              v25[8] = v34;
              v25 += 9;
            }

            while (v25 != v26);
          }
        }

        if (++v19 == v23)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_39;
    }
  }

LABEL_32:
  v44 = v2[7];
  explicit = atomic_load_explicit(v44 + 5, memory_order_acquire);
  v46 = v44[6];
  v47 = 0xAAAAAAAAAAAAAAABLL * ((v44[7] - v46) >> 3);
  if (explicit == v47)
  {
    return this;
  }

  v48 = v44[3];
  if (v47 <= v48)
  {
LABEL_39:
    __break(1u);
    return this;
  }

  v49 = (v46 + 24 * v48);
  v50 = v2[4];
  v2[4] = *v49;
  *v49 = v50;
  v51 = v2[5];
  v2[5] = v49[1];
  v49[1] = v51;
  v52 = v2[6];
  v2[6] = v49[2];
  v49[2] = v52;
  atomic_fetch_add_explicit(v44 + 5, 1uLL, memory_order_release);
  v53 = v44[3];
  if (v53 + 1 == 0xAAAAAAAAAAAAAAABLL * ((v44[7] - v44[6]) >> 3))
  {
    v54 = 0;
  }

  else
  {
    v54 = v53 + 1;
  }

  v44[3] = v54;
  return this;
}

uint64_t webrtc::EchoCanceller3::AnalyzeCapture(uint64_t this, webrtc::AudioBuffer *a2)
{
  v2 = *(*(a2 + 10) + 8);
  *(this + 2224) = 0;
  v3 = *(a2 + 7);
  if (v3)
  {
    v4 = *(a2 + 3);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v2 + 8 * v5);
        if (fabsf(*v6) >= 32700.0)
        {
          break;
        }

        v7 = 0;
        v8 = v6 + 1;
        while (v4 - 1 != v7)
        {
          v9 = fabsf(v8[v7++]);
          if (v9 >= 32700.0)
          {
            if (v7 < v4)
            {
              goto LABEL_10;
            }

            break;
          }
        }

        if (++v5 == v3)
        {
          return this;
        }
      }

LABEL_10:
      *(this + 2224) = 1;
    }
  }

  return this;
}

double webrtc::EchoCanceller3Config::EchoCanceller3Config(webrtc::EchoCanceller3Config *this)
{
  *this = xmmword_273B92A70;
  *(this + 1) = xmmword_273B92A80;
  *(this + 2) = xmmword_273B92A90;
  *(this + 3) = xmmword_273B91FB0;
  *(this + 8) = vdup_n_s32(0x3F333333u);
  *(this + 18) = 1045220557;
  *(this + 76) = 0x1400000005;
  *(this + 42) = 0;
  *(this + 44) = 256;
  *(this + 23) = 1176256512;
  *(this + 96) = 1;
  *(this + 50) = 256;
  *(this + 26) = 1176256512;
  *(this + 108) = 0;
  *(this + 112) = 1;
  *(this + 15) = 13;
  *(this + 8) = xmmword_273B92AA0;
  *(this + 36) = 1268328872;
  *(this + 19) = 13;
  *(this + 20) = 0x4B9929A83F333333;
  *(this + 21) = 12;
  *(this + 11) = xmmword_273B92AB0;
  *(this + 48) = 1268328872;
  *(this + 25) = 12;
  *(this + 26) = 0x4B9929A83F666666;
  *(this + 27) = 250;
  *(this + 28) = 0x1940200000;
  *(this + 58) = 65792;
  *(this + 236) = 0;
  *(this + 30) = 0x408000003F800000;
  *(this + 62) = 1069547520;
  *(this + 252) = 1;
  *(this + 32) = 1;
  *(this + 132) = 257;
  *(this + 34) = 0x3F547AE13F800000;
  *(this + 70) = 1062501089;
  *(this + 71) = 16777217;
  *(this + 18) = xmmword_273B92AC0;
  __asm { FMOV            V0.2S, #10.0 }

  *(this + 38) = _D0;
  *(this + 156) = 0;
  *(this + 316) = xmmword_273B92AD0;
  *(this + 166) = 0;
  *(this + 42) = 50;
  *(this + 344) = xmmword_273B92AE0;
  *(this + 45) = 1;
  *(this + 46) = 1;
  *(this + 376) = 1;
  *(this + 96) = -1027600016;
  *(this + 49) = 4;
  *(this + 25) = xmmword_273B92AF0;
  *(this + 26) = xmmword_273B92B00;
  *(this + 27) = xmmword_273B92B10;
  *(this + 28) = xmmword_273B92B20;
  *(this + 464) = 1;
  *(this + 468) = xmmword_273B92B30;
  *(this + 121) = 1048576000;
  *(this + 61) = 0x41F0000041200000;
  *(this + 62) = 0xC00000032;
  *(this + 252) = 257;
  _Q0 = vdupq_n_s64(1uLL);
  *(this + 32) = _Q0;
  *(this + 33) = _Q0;
  *(this + 68) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 69) = _Q0.i64[0];
  *(this + 560) = 0;
  result = 0.00781250185;
  *(this + 564) = xmmword_273B92B40;
  *(this + 145) = 925353388;
  *(this + 584) = 0;
  *(this + 592) = 1;
  *(this + 596) = 0x12C00000000;
  *(this + 151) = 0x40000000;
  return result;
}

webrtc *WebRtcAecm_Create()
{
  v0 = malloc_type_calloc(1uLL, 0x188uLL, 0x1020040E14E9EFFuLL);
  Core = webrtc::WebRtcAecm_CreateCore(v0);
  *(v0 + 48) = Core;
  if (Core)
  {
    v3 = malloc_type_malloc(0x30uLL, 0x1010040521CD160uLL);
    if (v3)
    {
      v4 = v3;
      v5 = malloc_type_malloc(0x1F40uLL, 0xC5FABF8DuLL);
      v4[5] = v5;
      if (v5)
      {
        *(v4 + 1) = xmmword_273B92B90;
        *(v4 + 8) = 0;
        *v4 = 0;
        v4[1] = 0;
        bzero(v5, 0x1F40uLL);
        *(v0 + 47) = v4;
        return v0;
      }

      free(v4);
    }

    *(v0 + 47) = 0;
    Core = *(v0 + 48);
  }

  webrtc::WebRtcAecm_FreeCore(Core, v2);
  v7 = *(v0 + 47);
  if (v7)
  {
    free(v7[5]);
    free(v7);
  }

  free(v0);
  return 0;
}

uint64_t WebRtcAecm_Init(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 != 16000 && a2 != 8000)
  {
    return 12004;
  }

  *a1 = a2;
  if (webrtc::WebRtcAecm_InitCore(*(a1 + 384), a2) == -1)
  {
    return 12000;
  }

  v3 = *(a1 + 376);
  *(v3 + 32) = 0;
  *v3 = 0;
  *(v3 + 8) = 0;
  bzero(*(v3 + 40), *(v3 + 24) * *(v3 + 16));
  result = 0;
  *(a1 + 12) = 0u;
  v5 = a1 + 12;
  *(v5 + 348) = 0x100000001;
  *(v5 + 330) = 0;
  *(v5 + 340) = 0x100000000;
  *(v5 + 320) = 0x2A00000000;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  v6 = *(v5 + 372);
  *(v6 + 17230) = 1;
  *(v5 + 328) = 0;
  *(v5 - 4) = 0;
  *(v5 + 336) = 0;
  *(v5 + 356) = 0;
  *(v5 + 358) = 3;
  *(v6 + 17266) = 0x1000C0001000100;
  *(v6 + 17274) = 83887616;
  return result;
}

uint64_t WebRtcAecm_Process(uint64_t a1, char *a2, char *__src, char *__dst, uint64_t a5, int a6)
{
  v77 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2;
  v7 = 12003;
  if (a2)
  {
    v8 = __dst;
    if (__dst)
    {
      if (*(a1 + 336) != 42)
      {
        return 12002;
      }

      if (a5 != 160 && a5 != 80)
      {
        return 12004;
      }

      if (a6 >= 500)
      {
        v11 = 500;
      }

      else
      {
        v11 = a6;
      }

      v12 = v11 & ~(v11 >> 31);
      if (a6 <= 0x1F4)
      {
        v7 = 0;
      }

      else
      {
        v7 = 12100;
      }

      *(a1 + 346) = v12 + 10;
      v13 = a5 / 0x50u;
      if (*(a1 + 356))
      {
        v14 = *(*(a1 + 384) + 568);
        if (__src)
        {
          v6 = __src;
          if (__dst == __src)
          {
            goto LABEL_17;
          }
        }

        else if (__dst == a2)
        {
LABEL_17:
          v15 = *(a1 + 376);
          if (v15)
          {
            v16 = *v15;
            if (*(v15 + 8))
            {
              v17 = v15[2] - v16 + v15[1];
              if (!*(a1 + 360))
              {
                goto LABEL_88;
              }

LABEL_85:
              v62 = *(a1 + 344) + 1;
              *(a1 + 344) = v62;
              v63 = *(a1 + 338);
              v64 = v13 / v14;
              if (v63)
              {
                v65 = *(a1 + 342);
                v66 = *(a1 + 346);
              }

              else
              {
                v66 = *(a1 + 346);
                *(a1 + 342) = v66;
                *(a1 + 340) = 0;
                v65 = v66;
              }

              v68 = v65 - v66;
              if (v68 < 0)
              {
                v68 = -v68;
              }

              if (fmax(v66 * 0.2, 8.0) <= v68)
              {
                *(a1 + 338) = 0;
              }

              else
              {
                *(a1 + 340) += v66;
                v69 = v63 + 1;
                *(a1 + 338) = v69;
                if ((v64 * v69) >= 6)
                {
                  v70 = *(*(a1 + 384) + 568);
                  v67 = 3 * *(a1 + 340) * v70 / (40 * v69);
                  if (v67 >= 50)
                  {
                    LOWORD(v67) = 50;
                  }

                  *(a1 + 8) = v67;
                  *(a1 + 360) = 0;
                  if ((v64 * v62) <= 0x32)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_100;
                }
              }

              if ((v64 * v62) < 0x33)
              {
                return v7;
              }

              v70 = *(*(a1 + 384) + 568);
LABEL_100:
              v71 = 3 * v66 * v70;
              if (v71 >= 2000)
              {
                LOWORD(v67) = 50;
              }

              else
              {
                LOWORD(v67) = v71 / 40;
              }

              *(a1 + 8) = v67;
              *(a1 + 360) = 0;
              goto LABEL_104;
            }

            v17 = v15[1] - v16;
            if (*(a1 + 360))
            {
              goto LABEL_85;
            }
          }

          else
          {
            LOWORD(v17) = 0;
            if (*(a1 + 360))
            {
              goto LABEL_85;
            }
          }

LABEL_88:
          LOWORD(v67) = *(a1 + 8);
LABEL_104:
          v72 = ((26215 * v17) >> 21) + ((26215 * v17) >> 31);
          if (v72 == v67)
          {
LABEL_112:
            *(a1 + 356) = 0;
            return v7;
          }

          if (v72 > v67)
          {
            if (v15)
            {
              v73 = *v15;
              if (*(v15 + 8))
              {
                v74 = v15[2] - v73 + v15[1];
              }

              else
              {
                v74 = v15[1] - v73;
              }
            }

            else
            {
              LODWORD(v74) = 0;
            }

            WebRtc_MoveReadPtr(v15, v74 - 80 * v67);
            goto LABEL_112;
          }

          return v7;
        }

        memcpy(__dst, v6, 2 * a5);
        goto LABEL_17;
      }

      v18 = 0;
      v19 = 16;
      v20 = __src;
      do
      {
        __srca = 0;
        v21 = *(a1 + 376);
        if (v21)
        {
          v22 = *v21;
          if (*(v21 + 32))
          {
            if ((*(v21 + 16) - v22 + *(v21 + 8)) >= 80)
            {
              goto LABEL_27;
            }
          }

          else if ((*(v21 + 8) - v22) >= 80)
          {
LABEL_27:
            WebRtc_ReadBuffer(v21, &__srca, __dsta, 0x50uLL);
            v23 = (a1 + v19);
            v24 = __srca;
            v25 = *(__srca + 1);
            *v23 = *__srca;
            v23[1] = v25;
            v26 = v24[5];
            v28 = v24[2];
            v27 = v24[3];
            v23[4] = v24[4];
            v23[5] = v26;
            v23[2] = v28;
            v23[3] = v27;
            v29 = v24[9];
            v31 = v24[6];
            v30 = v24[7];
            v23[8] = v24[8];
            v23[9] = v29;
            v23[6] = v31;
            v23[7] = v30;
            if (v18 != 1)
            {
              goto LABEL_32;
            }

            goto LABEL_28;
          }
        }

        v32 = *(a1 + v19 + 112);
        __dsta[6] = *(a1 + v19 + 96);
        __dsta[7] = v32;
        v33 = *(a1 + v19 + 144);
        __dsta[8] = *(a1 + v19 + 128);
        __dsta[9] = v33;
        v34 = *(a1 + v19 + 48);
        __dsta[2] = *(a1 + v19 + 32);
        __dsta[3] = v34;
        v35 = *(a1 + v19 + 80);
        __dsta[4] = *(a1 + v19 + 64);
        __dsta[5] = v35;
        v36 = *(a1 + v19 + 16);
        __dsta[0] = *(a1 + v19);
        __dsta[1] = v36;
        __srca = __dsta;
        if (v18 != 1)
        {
LABEL_32:
          if (v18 || *a1 != 8000)
          {
            goto LABEL_74;
          }

          goto LABEL_34;
        }

LABEL_28:
        if (*a1 != 16000)
        {
          goto LABEL_74;
        }

LABEL_34:
        v37 = *(a1 + 346);
        v38 = *(a1 + 376);
        if (v38)
        {
          v39 = *(v38 + 8);
          v40 = *v38;
          v41 = v38[1];
          if (v39)
          {
            v42 = v38[2] - v40 + v41;
          }

          else
          {
            LOWORD(v42) = v41 - v40;
          }

          v43 = (8 * v37 * *(*(a1 + 384) + 568) - v42);
          if (v43 >= 80)
          {
            goto LABEL_59;
          }

          v44 = *(v38 + 4);
          v45 = v39 == 0;
          if (v39)
          {
            v46 = *(v38 + 4);
          }

          else
          {
            v46 = 0;
          }

          if (v45)
          {
            v47 = *(v38 + 4);
          }

          else
          {
            v47 = 0;
          }

          v48 = v46 - v40 + v41;
          v49 = v41 - v40 - v47;
          if (v48 >= 80)
          {
            v48 = 80;
          }

          if (v48 <= v49)
          {
            v48 = v49;
          }

          v50 = v48 + v40;
          if (v50 <= v44)
          {
            v51 = 0;
          }

          else
          {
            v51 = *(v38 + 4);
          }

          v52 = v50 - v51;
          if (v50 > v44 || v52 < 0)
          {
            *(v38 + 8) = v52 >> 31;
          }

          *v38 = (v44 & (v52 >> 31)) + v52;
        }

        else
        {
          v43 = (8 * v37 * *(*(a1 + 384) + 568));
          if (v43 >= 80)
          {
            goto LABEL_59;
          }
        }

        LOWORD(v43) = v43 + 80;
LABEL_59:
        v53 = 8 * *(a1 + 348) + 2 * v43;
        if (v53 >= -9)
        {
          v54 = v53 / 10;
        }

        else
        {
          v54 = 0;
        }

        *(a1 + 348) = v54;
        v55 = *(a1 + 12);
        v56 = (v54 - v55);
        if (v56 < 225)
        {
          if (v55 < 1 || v56 > 95 || *(a1 + 368) >= 225)
          {
LABEL_68:
            *(a1 + 352) = 0;
            *(a1 + 368) = v56;
            goto LABEL_74;
          }
        }

        else if (*(a1 + 368) < 96)
        {
          goto LABEL_68;
        }

        v57 = *(a1 + 352);
        *(a1 + 352) = v57 + 1;
        *(a1 + 368) = v56;
        if (v57 >= 25)
        {
          v58 = __OFSUB__(v54, 160);
          v59 = v54 - 160;
          if ((v59 < 0) ^ v58 | (v59 == 0))
          {
            v59 = 0;
          }

          *(a1 + 12) = v59;
        }

LABEL_74:
        if (__src)
        {
          v60 = v20;
        }

        else
        {
          v60 = 0;
        }

        if (webrtc::WebRtcAecm_ProcessFrame(*(a1 + 384), __srca, v6, v60, v8) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        ++v18;
        v8 += 160;
        v20 += 160;
        v6 += 160;
        v19 += 160;
      }

      while (v13 != v18);
    }
  }

  return v7;
}

void webrtc::EchoControlMobileImpl::~EchoControlMobileImpl(webrtc::EchoControlMobileImpl *this, void *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    MEMORY[0x2743DA540](v4, 0x1000C40D315E998);
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = *(this + 1);
    if (v6 != v5)
    {
      do
      {
        v9 = *--v6;
        v8 = v9;
        *v6 = 0;
        if (v9)
        {
          v10 = *v8;
          if (*v8)
          {
            webrtc::WebRtcAecm_FreeCore(v10[48], a2);
            v11 = v10[47];
            if (v11)
            {
              free(v11[5]);
              free(v11);
            }

            free(v10);
          }

          MEMORY[0x2743DA540](v8, 0x80C40B8603338);
        }
      }

      while (v6 != v5);
      v7 = *(this + 1);
    }

    *(this + 2) = v5;
    operator delete(v7);
  }
}

void *webrtc::EchoControlMobileImpl::PackRenderAudioBuffer(void *result, uint64_t a2, int a3, uint64_t a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  *(a4 + 8) = *a4;
  if (a2)
  {
    v9 = result;
    if (result[7])
    {
      v12 = 0;
      v13 = 0;
      v14 = 1;
      v15 = vdupq_n_s32(0x46FFFE00u);
      v38 = v15;
      while (!v14)
      {
LABEL_4:
        if (++v13 == a2)
        {
          return result;
        }
      }

      v16 = 0;
      while (1)
      {
        v17 = v9[11];
        if (!v17)
        {
          v17 = v9[10];
        }

        v18 = v12;
        v19 = v9[9];
        a9.i32[0] = 0.5;
        v20.i64[0] = 0x8000000080000000;
        v20.i64[1] = 0x8000000080000000;
        v21.i64[0] = 0xC7000000C7000000;
        v21.i64[1] = 0xC7000000C7000000;
        v22.i64[0] = 0x3F0000003F000000;
        v22.i64[1] = 0x3F0000003F000000;
        if (!v19)
        {
          goto LABEL_7;
        }

        v23 = *(*(v17 + 16) + 8 * *(v17 + 56) * v12);
        if (v19 < 8)
        {
          break;
        }

        v24 = v19 & 0xFFFFFFFFFFFFFFF8;
        v25 = __src;
        v26 = v19 & 0xFFFFFFFFFFFFFFF8;
        v27 = v23;
        do
        {
          v28 = *v27;
          v29 = v27[1];
          v27 += 2;
          v30 = vbslq_s8(vcgtq_f32(v28, v38), v38, v28);
          v31 = vbslq_s8(vcgtq_f32(v29, v38), v38, v29);
          v32 = vbslq_s8(vcgtq_f32(v21, v30), v21, v30);
          v33 = vbslq_s8(vcgtq_f32(v21, v31), v21, v31);
          v15 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v32, vbslq_s8(v20, v22, v32))), vcvtq_s32_f32(vaddq_f32(v33, vbslq_s8(v20, v22, v33))));
          *v25++ = v15;
          v26 -= 8;
        }

        while (v26);
        if (v19 != v24)
        {
          goto LABEL_16;
        }

LABEL_7:
        result = std::vector<short>::__insert_with_size[abi:sn200100]<short *,short *>(a4, *(a4 + 8), __src, &__src[2 * v19], v19);
        v14 = v9[7];
        v12 = (v18 + 1) % v14;
        if (++v16 >= v14)
        {
          goto LABEL_4;
        }
      }

      v24 = 0;
LABEL_16:
      v34 = v19 - v24;
      v35 = &__src[2 * v24];
      v36 = &v23->i32[v24];
      do
      {
        v37 = *v36++;
        *v15.i32 = v37;
        if (v37 > 32767.0)
        {
          *v15.i32 = 32767.0;
        }

        if (*v15.i32 < -32768.0)
        {
          *v15.i32 = -32768.0;
        }

        *v35 = (*v15.i32 + *vbslq_s8(v20, a9, v15).i32);
        v35 += 2;
        --v34;
      }

      while (v34);
      goto LABEL_7;
    }
  }

  return result;
}

void webrtc::EchoControlMobileImpl::ProcessCaptureAudio(webrtc::EchoControlMobileImpl *this, webrtc::AudioBuffer *a2, __int16 a3, int8x16_t a4, double a5, double a6, double a7, int8x16_t a8)
{
  if (*(a2 + 7))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    a8.i32[0] = 0.5;
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v14 = vdupq_n_s32(0x46FFFE00u);
    v15.i64[0] = 0xC7000000C7000000;
    v15.i64[1] = 0xC7000000C7000000;
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    v62 = v14;
    v63 = a3;
    do
    {
      if (*(this + 64) == 1)
      {
        v17 = *(this + 5);
        if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v17) >> 6) <= v11)
        {
LABEL_62:
          __break(1u);
          return;
        }

        v18 = (v17 + 320 * v11);
        v19 = *(a2 + 11);
        if (!v19)
        {
LABEL_6:
          v20 = *(*(*(a2 + 10) + 16) + 8 * *(*(a2 + 10) + 56) * v11);
          if (!v20)
          {
            goto LABEL_7;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(a2 + 11);
        if (!v19)
        {
          goto LABEL_6;
        }
      }

      v20 = *(*(v19 + 16) + 8 * *(v19 + 56) * v11);
      if (!v20)
      {
LABEL_7:
        v21 = 0;
        goto LABEL_22;
      }

LABEL_10:
      v22 = *(a2 + 9);
      if (!v22)
      {
        goto LABEL_16;
      }

      if (v22 >= 8)
      {
        v23 = v22 & 0xFFFFFFFFFFFFFFF8;
        v24 = v64;
        v25 = v22 & 0xFFFFFFFFFFFFFFF8;
        v26 = v20;
        do
        {
          v27 = *v26;
          v28 = v26[1];
          v26 += 2;
          v29 = vbslq_s8(vcgtq_f32(v27, v14), v14, v27);
          v30 = vbslq_s8(vcgtq_f32(v28, v14), v14, v28);
          v31 = vbslq_s8(vcgtq_f32(v15, v29), v15, v29);
          v32 = vbslq_s8(vcgtq_f32(v15, v30), v15, v30);
          a4 = vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(v31, vbslq_s8(v13, v16, v31))), vcvtq_s32_f32(vaddq_f32(v32, vbslq_s8(v13, v16, v32))));
          *v24++ = a4;
          v25 -= 8;
        }

        while (v25);
        if (v22 == v23)
        {
LABEL_16:
          v21 = v64;
          goto LABEL_22;
        }
      }

      else
      {
        v23 = 0;
      }

      do
      {
        a4.i32[0] = v20->i32[v23];
        if (*a4.i32 > 32767.0)
        {
          *a4.i32 = 32767.0;
        }

        if (*a4.i32 < -32768.0)
        {
          *a4.i32 = -32768.0;
        }

        v21 = v64;
        v64[v23++] = (*a4.i32 + *vbslq_s8(v13, a8, a4).i32);
      }

      while (v22 != v23);
LABEL_22:
      if (v18)
      {
        v33 = v18;
      }

      else
      {
        v33 = v21;
      }

      if (v18)
      {
        v34 = v21;
      }

      else
      {
        v34 = 0;
      }

      if (*(*(this + 4) + 8))
      {
        v35 = a3;
        v36 = 0;
        if (v21)
        {
          while (1)
          {
            v37 = *(this + 1);
            if (v12 >= (*(this + 2) - v37) >> 3)
            {
              goto LABEL_62;
            }

            v38 = WebRtcAecm_Process(**(v37 + 8 * v12), v33, v34, v21, *(a2 + 9), v35);
            v39 = *(a2 + 11);
            if (v39)
            {
              v40 = *(a2 + 9);
              if (v40)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v40 = *(a2 + 9);
              v39 = *(a2 + 10);
              if (v40)
              {
LABEL_35:
                v41 = *(*(v39 + 16) + 8 * *(v39 + 56) * v11);
                if (v40 < 4)
                {
                  v42 = 0;
LABEL_46:
                  v54 = v40 - v42;
                  v55 = (v41 + 4 * v42);
                  v56 = &v21[2 * v42];
                  do
                  {
                    v57 = *v56;
                    v56 += 2;
                    *v55++ = v57;
                    --v54;
                  }

                  while (v54);
                  goto LABEL_48;
                }

                if (v40 >= 0x10)
                {
                  v42 = v40 & 0xFFFFFFFFFFFFFFF0;
                  v43 = v41 + 32;
                  v44 = v40 & 0xFFFFFFFFFFFFFFF0;
                  v45 = (v21 + 16);
                  do
                  {
                    v46 = *v45[-2].i8;
                    v47 = vcvtq_f32_s32(vmovl_s16(*v45));
                    v48 = vmovl_high_s16(*v45->i8);
                    *(v43 - 32) = vcvtq_f32_s32(vmovl_s16(*v46.i8));
                    *(v43 - 16) = vcvtq_f32_s32(vmovl_high_s16(v46));
                    a4 = vcvtq_f32_s32(v48);
                    *v43 = v47;
                    *(v43 + 16) = a4;
                    v43 += 64;
                    v45 += 4;
                    v44 -= 16;
                  }

                  while (v44);
                  if (v40 == v42)
                  {
                    goto LABEL_48;
                  }

                  if ((v40 & 0xC) == 0)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v42 = 0;
                }

                v49 = v42;
                v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
                v50 = &v21[2 * v49];
                v51 = (v41 + 4 * v49);
                v52 = v49 - (v40 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v53 = *v50++;
                  a4 = vcvtq_f32_s32(vmovl_s16(v53));
                  *v51++ = a4;
                  v52 += 4;
                }

                while (v52);
                if (v40 == v42)
                {
                  goto LABEL_48;
                }

                goto LABEL_46;
              }
            }

LABEL_48:
            if (v38)
            {
              return;
            }

            ++v12;
            if (++v36 >= *(*(this + 4) + 8))
            {
              goto LABEL_50;
            }
          }
        }

        do
        {
          v60 = *(this + 1);
          if (v12 + v36 >= (*(this + 2) - v60) >> 3)
          {
            goto LABEL_62;
          }

          if (WebRtcAecm_Process(**(v60 + 8 * v12 + 8 * v36), v33, v34, 0, *(a2 + 9), v35))
          {
            return;
          }

          ++v36;
        }

        while (v36 < *(*(this + 4) + 8));
        v12 += v36;
        if (*(a2 + 8) < 2uLL)
        {
          goto LABEL_59;
        }

LABEL_51:
        v58 = 1;
        do
        {
          v59 = *(a2 + 11);
          if (!v59)
          {
            v59 = *(a2 + 10);
          }

          bzero(*(*(v59 + 16) + v10 * *(v59 + 56) + 8 * v58++), 4 * *(a2 + 9));
        }

        while (v58 < *(a2 + 8));
        goto LABEL_59;
      }

LABEL_50:
      if (*(a2 + 8) >= 2uLL)
      {
        goto LABEL_51;
      }

LABEL_59:
      ++v11;
      v10 += 8;
      a3 = v63;
      a8.i32[0] = 0.5;
      v13.i64[0] = 0x8000000080000000;
      v13.i64[1] = 0x8000000080000000;
      v14 = v62;
      v15.i64[0] = 0xC7000000C7000000;
      v15.i64[1] = 0xC7000000C7000000;
      v16.i64[0] = 0x3F0000003F000000;
      v16.i64[1] = 0x3F0000003F000000;
    }

    while (v11 < *(a2 + 7));
  }
}

void webrtc::EchoControlMobileImpl::Initialize(webrtc::EchoControlMobileImpl *this, int a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = this + 40;
  v9 = *(this + 5);
  v10 = *(v11 + 1);
  v12 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 6);
  v13 = a4 - v12;
  if (a4 > v12)
  {
    v14 = *(this + 7);
    if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v10) >> 6) >= v13)
    {
      v18 = &v10[320 * v13];
      v19 = 320 * a4 - ((v10 - v9) >> 6 << 6);
      while (v10)
      {
        *(v10 + 18) = 0uLL;
        *(v10 + 19) = 0uLL;
        *(v10 + 16) = 0uLL;
        *(v10 + 17) = 0uLL;
        *(v10 + 14) = 0uLL;
        *(v10 + 15) = 0uLL;
        *(v10 + 12) = 0uLL;
        *(v10 + 13) = 0uLL;
        *(v10 + 10) = 0uLL;
        *(v10 + 11) = 0uLL;
        *(v10 + 8) = 0uLL;
        *(v10 + 9) = 0uLL;
        *(v10 + 6) = 0uLL;
        *(v10 + 7) = 0uLL;
        *(v10 + 4) = 0uLL;
        *(v10 + 5) = 0uLL;
        *(v10 + 2) = 0uLL;
        *(v10 + 3) = 0uLL;
        *v10 = 0uLL;
        *(v10 + 1) = 0uLL;
        v10 += 320;
        v19 -= 320;
        if (!v19)
        {
          *(this + 6) = v18;
          v9 = *(this + 5);
          v10 = v18;
          goto LABEL_17;
        }
      }

      __break(1u);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/echo_control_mobile_impl.cc", 79, "state_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v20);
    }

    else
    {
      if (a4 > 0xCCCCCCCCCCCCCCLL)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v9) >> 6);
      v16 = 2 * v15;
      if (2 * v15 <= a4)
      {
        v16 = a4;
      }

      if (v15 >= 0x66666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0xCCCCCCCCCCCCCCLL)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a4 < v12)
  {
    v10 = &v9[320 * a4];
    *(this + 6) = v10;
  }

LABEL_17:
  if (v9 != v10)
  {
    bzero(v9, 320 * ((v10 - v9 - 320) / 0x140uLL) + 320);
  }

  operator new();
}