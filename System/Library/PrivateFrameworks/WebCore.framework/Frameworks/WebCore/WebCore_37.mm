void webrtc::PayloadTypeRecorder::LookupPayloadType(uint64_t a1@<X0>, const webrtc::Codec *a2@<X1>, uint64_t a3@<X8>)
{
  v10[27] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  webrtc::Codec::Codec(v10, a2);
  if (v4 != v5)
  {
    do
    {
      if (webrtc::MatchesWithReferenceAttributes((v4 + 5), v10, v6))
      {
        goto LABEL_2;
      }

      v7 = v4[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
    webrtc::Codec::~Codec(v10);
LABEL_13:
    operator new();
  }

LABEL_2:
  webrtc::Codec::~Codec(v10);
  if (v4 == v5)
  {
    goto LABEL_13;
  }

  *a3 = 0;
  *(a3 + 38) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 29) = 0;
  *(a3 + 40) = *(v4 + 32);
  *(a3 + 41) = 1;
}

void webrtc::webrtc_logging_impl::MakeVal<webrtc::PayloadType,(void *)0>(_BYTE *a1, unsigned __int8 a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  __p = 0;
  v9 = 0;
  v10 = 0;
  v11[0] = a2;
  v11[1] = absl::str_format_internal::FormatArgImpl::Dispatch<unsigned char>;
  p_p = &__p;
  absl::str_format_internal::FormatUntyped(&__p, absl::str_format_internal::FormatRawSinkImpl::Flush<absl::strings_internal::StringifySink>, "%d", 2, v11, 1uLL);
  if (v10 >= 0)
  {
    v4 = HIBYTE(v10);
  }

  else
  {
    p_p = __p;
    v4 = v9;
  }

  if (p_p)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_23;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  a1[23] = v4;
  v6 = &a1[v4];
  if (a1 <= p_p && v6 > p_p)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v4)
  {
    memmove(a1, p_p, v4);
  }

  *v6 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

void std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__tree_node<std::__value_type<webrtc::PayloadType,webrtc::Codec>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v23 = v10[1];
        if (!v23)
        {
          break;
        }

        do
        {
          v10 = v23;
          v23 = *v23;
        }

        while (v23);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      *(v9 + 32) = *(v14 + 32);
      webrtc::Codec::operator=((v9 + 5), (v14 + 5));
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_26:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v16;
      *v17 = v9;
      v18 = **a1;
      if (v18)
      {
        goto LABEL_27;
      }

LABEL_28:
      std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v21 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v22 = v10[1];
              if (!v22)
              {
                break;
              }

              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }

          else
          {
            for (v10[1] = 0; v21; v21 = v10[1])
            {
              do
              {
                v10 = v21;
                v21 = *v21;
              }

              while (v21);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v19 = v14[1];
      if (v19)
      {
        do
        {
          v4 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v4 = v14[2];
          v20 = *v4 == v14;
          v14 = v4;
        }

        while (!v20);
      }

      if (v12)
      {
        v14 = v4;
        v9 = v12;
        if (v4 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v16 = v15;
        if (*(v9 + 32) >= *(v15 + 32))
        {
          break;
        }

        v15 = *v15;
        v17 = v16;
        if (!*v16)
        {
          goto LABEL_26;
        }
      }

      v15 = v15[1];
    }

    while (v15);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v16;
    v16[1] = v9;
    v18 = **a1;
    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_27:
    *a1 = v18;
    goto LABEL_28;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::__map_value_compare<webrtc::PayloadType,std::__value_type<webrtc::PayloadType,webrtc::Codec>,std::less<webrtc::PayloadType>,true>,std::allocator<std::__value_type<webrtc::PayloadType,webrtc::Codec>>>::destroy(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

uint64_t std::operator==[abi:sn200100]<webrtc::NetworkMask,std::allocator<webrtc::NetworkMask>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 == a4 - a3)
  {
    if (a1 == a2)
    {
      return 1;
    }

    for (i = (a3 + 32); ; i += 10)
    {
      v5 = *(a1 + 8);
      if (v5 != *(i - 6))
      {
        break;
      }

      if (v5)
      {
        if (v5 == 30)
        {
          if (*(a1 + 12) != *(i - 5) || *(a1 + 20) != *(i - 3))
          {
            return 0;
          }
        }

        else if (v5 != 2 || *(a1 + 12) != *(i - 5))
        {
          return 0;
        }
      }

      if (*(a1 + 32) != *i)
      {
        return 0;
      }

      a1 += 40;
      if (a1 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void webrtc::PeerConnection::PeerConnection(uint64_t a1, const webrtc::PeerConnectionInterface::RTCConfiguration *a2, uint64_t *a3, atomic_uint **a4, uint64_t *a5, char a6, uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, char a11)
{
  *a1 = &unk_288297A18;
  *(a1 + 8) = &unk_288297DD0;
  *(a1 + 16) = &unk_288297F08;
  v14 = *a3;
  *(a1 + 24) = *a3;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
  }

  v15 = *(a3 + 3);
  *(a1 + 32) = *(a3 + 1);
  *(a1 + 48) = v15;
  v16 = *a4;
  *(a1 + 64) = *a4;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
  }

  v17 = *a5;
  *(a1 + 80) = *(a5 + 2);
  *(a1 + 72) = v17;
  LODWORD(v17) = *(a5 + 4);
  *(a1 + 92) = *(a5 + 20);
  *(a1 + 88) = v17;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  v19 = a5[3];
  v18 = a5[4];
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 120) = *a8;
  *(a1 + 128) = a6;
  *(a1 + 129) = a11;
  *(a1 + 130) = 0u;
  *(a1 + 146) = 0;
  webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration((a1 + 152), a2);
  v21 = a8[1];
  v20 = a8[2];
  *(a8 + 1) = 0u;
  *(a1 + 544) = v20;
  *(a1 + 552) = v21;
  v22 = a8[3];
  a8[3] = 0;
  *(a1 + 560) = v22;
  v23 = a8[5];
  a8[5] = 0;
  *(a1 + 568) = v23;
  v24 = *a7;
  *a7 = 0;
  *(a1 + 576) = v24;
  operator new();
}

void webrtc::PeerConnection::~PeerConnection(webrtc::PeerConnection *this)
{
  *this = &unk_288297A18;
  *(this + 1) = &unk_288297DD0;
  *(this + 2) = &unk_288297F08;
  v1 = *(this + 119);
  if (v1)
  {
    v2 = *(v1 + 424);
    if (v2)
    {
      *v2 = 0;
      if (atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      *(v1 + 424) = 0;
    }
  }

  operator new();
}

uint64_t (***webrtc::PeerConnection::local_streams@<X0>(webrtc::PeerConnection *this@<X0>, uint64_t (****a2)(void)@<X8>))(void)
{
  if ((*(*this + 848))(this))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 816, "!IsUnifiedPlan()", "\t", v4, v5, v6, v7, "local_streams is not available with Unified Plan SdpSemantics. Please use GetSenders instead.");
    goto LABEL_9;
  }

  v8 = *(this + 119);
  if ((*(**(v8 + 8) + 192))(*(v8 + 8)))
  {
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc", 3177, "!IsUnifiedPlan()", "\t", v9, v10, v11, v12, "local_streams is not available with Unified Plan SdpSemantics. Please use GetSenders instead.");
    return webrtc::PeerConnection::remote_streams(v15);
  }

  result = *(v8 + 96);
  *a2 = result;
  if (result)
  {
    v14 = **result;

    return v14();
  }

  return result;
}

uint64_t (***webrtc::PeerConnection::remote_streams@<X0>(webrtc::PeerConnection *this@<X0>, uint64_t (****a2)(void)@<X8>))(void)
{
  if ((*(*this + 848))(this))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 824, "!IsUnifiedPlan()", "\t", v4, v5, v6, v7, "remote_streams is not available with Unified Plan SdpSemantics. Please use GetReceivers instead.");
    goto LABEL_9;
  }

  v8 = *(this + 119);
  if ((*(**(v8 + 8) + 192))(*(v8 + 8)))
  {
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc", 3186, "!IsUnifiedPlan()", "\t", v9, v10, v11, v12, "remote_streams is not available with Unified Plan SdpSemantics. Please use GetReceivers instead.");
    return webrtc::PeerConnection::AddStream();
  }

  result = *(v8 + 104);
  *a2 = result;
  if (result)
  {
    v14 = **result;

    return v14();
  }

  return result;
}

uint64_t webrtc::PeerConnection::AddStream(void *a1, uint64_t a2)
{
  if ((*(*a1 + 848))(a1))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 832, "!IsUnifiedPlan()", "\t", v4, v5, v6, v7, "AddStream is not available with Unified Plan SdpSemantics. Please use AddTrack instead.");
    return webrtc::PeerConnection::RemoveStream();
  }

  else if (*(a1[8] + 96))
  {
    v8 = a1[119];

    return webrtc::SdpOfferAnswerHandler::AddStream(v8, a2);
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    return 0;
  }
}

void webrtc::PeerConnection::RemoveStream(void *a1, uint64_t a2)
{
  if ((*(*a1 + 848))(a1))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 845, "!IsUnifiedPlan()", "\t", v4, v5, v6, v7, "RemoveStream is not available with Unified Plan SdpSemantics. Please use RemoveTrack instead.");
    webrtc::PeerConnection::AddTrack();
  }

  else
  {
    v8 = a1[119];

    webrtc::SdpOfferAnswerHandler::RemoveStream(v8, a2);
  }
}

void webrtc::PeerConnection::AddTrack(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a2 = 0;
  v6 = v4;
  webrtc::PeerConnection::AddTrack(a4, a1, &v6, a3, 0);
  if (v4)
  {
    v5 = *(*v4 + 8);

    v5(v4);
  }
}

void webrtc::PeerConnection::AddTrack(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  if (!*(*(a2 + 64) + 96))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = "UNSUPPORTED_OPERATION";
      __p.__r_.__value_.__l.__size_ = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  if (!*a3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
      __p.__r_.__value_.__l.__size_ = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    HIBYTE(v110) = 14;
    if (&__p.__r_.__value_.__r.__words[1] > "Track is null." || &__p.__r_.__value_.__r.__words[2] + 6 <= "Track is null.")
    {
      strcpy(&__p.__r_.__value_.__s.__data_[8], "Track is null.");
      *v111 = 0;
      v111[4] = 0;
      v111[6] = 0;
      *a1 = 3;
      *(a1 + 24) = v110;
      *(a1 + 8) = *&__p.__r_.__value_.__r.__words[1];
      *(a1 + 32) = 0;
      *(a1 + 35) = *&v111[3];
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return;
    }

    goto LABEL_231;
  }

  (*(**a3 + 32))(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_20;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 5)
    {
      goto LABEL_20;
    }

    p_p = &__p;
  }

  data = p_p->__r_.__value_.__l.__data_;
  v26 = p_p->__r_.__value_.__s.__data_[4];
  if (data == *"audio" && v26 == webrtc::kMediaTypeAudio[4])
  {
    v29 = 0;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_20:
  (*(**a3 + 32))(&__src);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    v29 = __src.__r_.__value_.__l.__size_ != 5 || *__src.__r_.__value_.__l.__data_ != *"video" || *(__src.__r_.__value_.__r.__words[0] + 4) != webrtc::kMediaTypeVideo[4];
    operator delete(__src.__r_.__value_.__l.__data_);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_38:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v29)
      {
        goto LABEL_39;
      }

LABEL_59:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        p_src = &__src;
        (*(**a3 + 32))(&__src);
        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __src.__r_.__value_.__l.__size_;
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = 22;
        }

        else
        {
          v58 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v58 - size < 0x18)
        {
          if (0x7FFFFFFFFFFFFFF6 - v58 >= size + 24 - v58)
          {
            operator new();
          }

          goto LABEL_232;
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_src = __src.__r_.__value_.__r.__words[0];
        }

        v59 = "Track has invalid kind: ";
        if (size)
        {
          if ((size & 0x8000000000000000) != 0)
          {
            goto LABEL_231;
          }

          v60 = p_src + size <= "Track has invalid kind: " || p_src > "Track has invalid kind: ";
          v61 = 24;
          if (v60)
          {
            v61 = 0;
          }

          v59 = &aTrackHasInvali[v61];
          v62 = &__src;
          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v62 = __src.__r_.__value_.__r.__words[0];
          }

          memmove(&v62[1], p_src, size);
        }

        *&p_src->__r_.__value_.__l.__data_ = *v59;
        p_src->__r_.__value_.__r.__words[2] = *(v59 + 2);
        v63 = size + 24;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          __src.__r_.__value_.__l.__size_ = size + 24;
        }

        else
        {
          *(&__src.__r_.__value_.__s + 23) = v63 & 0x7F;
        }

        p_src->__r_.__value_.__s.__data_[v63] = 0;
        __p = __src;
        memset(&__src, 0, sizeof(__src));
        v107.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
        v107.__r_.__value_.__l.__size_ = 17;
        webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }
      }

      v67 = &v107;
      (*(**a3 + 32))(&v107);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v68 = v107.__r_.__value_.__l.__size_;
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = 22;
      }

      else
      {
        v69 = (v107.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v69 - v68 < 0x18)
      {
        if (0x7FFFFFFFFFFFFFF6 - v69 >= v68 + 24 - v69)
        {
          operator new();
        }

LABEL_232:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v67 = v107.__r_.__value_.__r.__words[0];
      }

      v70 = "Track has invalid kind: ";
      if (v68)
      {
        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_231;
        }

        v71 = v67 + v68 <= "Track has invalid kind: " || v67 > "Track has invalid kind: ";
        v72 = 24;
        if (v71)
        {
          v72 = 0;
        }

        v70 = &aTrackHasInvali[v72];
        v73 = &v107;
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v73 = v107.__r_.__value_.__r.__words[0];
        }

        memmove(&v73[1], v67, v68);
      }

      *&v67->__r_.__value_.__l.__data_ = *v70;
      v67->__r_.__value_.__r.__words[2] = *(v70 + 2);
      v74 = v68 + 24;
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        v107.__r_.__value_.__l.__size_ = v68 + 24;
      }

      else
      {
        *(&v107.__r_.__value_.__s + 23) = v74 & 0x7F;
      }

      v67->__r_.__value_.__s.__data_[v74] = 0;
      __src = v107;
      memset(&v107, 0, sizeof(v107));
      v75 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v75 = __src.__r_.__value_.__l.__size_;
        v76 = __src.__r_.__value_.__r.__words[0];
        LODWORD(__p.__r_.__value_.__l.__data_) = 3;
        if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_232;
        }

        if (__src.__r_.__value_.__l.__size_ <= 0x16)
        {
LABEL_118:
          HIBYTE(v110) = v75;
          v77 = (&__p.__r_.__value_.__r.__words[1] + v75);
          if (&__p.__r_.__value_.__r.__words[1] > v76 || v77 <= v76)
          {
            if (v75)
            {
              memmove(&__p.__r_.__value_.__r.__words[1], v76, v75);
            }

            v77->__r_.__value_.__s.__data_[0] = 0;
            *v111 = 0;
            v111[4] = 0;
            v111[6] = 0;
            *a1 = __p.__r_.__value_.__l.__data_;
            *(a1 + 8) = *&__p.__r_.__value_.__r.__words[1];
            *(a1 + 24) = v110;
            *&__p.__r_.__value_.__r.__words[1] = 0uLL;
            v110 = 0;
            *(a1 + 32) = 0;
            *(a1 + 35) = *&v111[3];
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                return;
              }
            }

            else if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return;
            }

            operator delete(v107.__r_.__value_.__l.__data_);
            return;
          }

          goto LABEL_231;
        }
      }

      else
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 3;
        v76 = &__src;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) <= 0x16)
        {
          goto LABEL_118;
        }
      }

      operator new();
    }
  }

  else if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 5)
  {
    v29 = LODWORD(__src.__r_.__value_.__l.__data_) != *"video" || __src.__r_.__value_.__s.__data_[4] != webrtc::kMediaTypeVideo[4];
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v29 = 1;
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_58:
  if (v29)
  {
    goto LABEL_59;
  }

LABEL_39:
  if ((*(*a2 + 704))(a2))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = "INVALID_STATE";
      __p.__r_.__value_.__l.__size_ = 13;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  v38 = (*(*a2 + 760))(a2);
  webrtc::RtpTransmissionManager::FindSenderForTrack(v38, &__p);
  if (!__p.__r_.__value_.__r.__words[0])
  {
    v64 = (*(*a2 + 760))(a2);
    v65 = *a3;
    v105 = v65;
    if (v65)
    {
      v66 = v64;
      (**v65)(v65);
      webrtc::RtpTransmissionManager::AddTrack(v66, &v105, a4, a5, a1);
      (*(*v65 + 8))(v65);
    }

    else
    {
      webrtc::RtpTransmissionManager::AddTrack(v64, &v105, a4, a5, a1);
    }

    if (!*a1)
    {
      webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(*(a2 + 952));
      webrtc::LegacyStatsCollector::AddTrack(*(a2 + 616), *a3);
    }

    return;
  }

  (*(*__p.__r_.__value_.__l.__data_ + 8))(__p.__r_.__value_.__r.__words[0]);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v39 = &v107;
    (*(**a3 + 40))(&v107);
    v46 = v107.__r_.__value_.__r.__words[2];
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = v107.__r_.__value_.__l.__size_;
    }

    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = 22;
    }

    else
    {
      v48 = (v107.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v48 - v47 >= 0x20)
    {
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v107.__r_.__value_.__r.__words[0];
      }

      v78 = "Sender already exists for track ";
      if (v47)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_231;
        }

        v79 = v39 + v47 <= "Sender already exists for track " || v39 > "Sender already exists for track ";
        v80 = 32;
        if (v79)
        {
          v80 = 0;
        }

        v78 = &aSenderAlreadyE[v80];
        v81 = &v107;
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v81 = v107.__r_.__value_.__r.__words[0];
        }

        memmove(&v81[1].__r_.__value_.__r.__words[1], v39, v47);
      }

      *&v39->__r_.__value_.__l.__data_ = *v78;
      *&v39->__r_.__value_.__r.__words[2] = *(v78 + 1);
      v82 = v47 + 32;
      if ((v46 & 0x8000000000000000) != 0)
      {
        v107.__r_.__value_.__l.__size_ = v47 + 32;
      }

      else
      {
        *(&v107.__r_.__value_.__s + 23) = v82 & 0x7F;
      }

      v39->__r_.__value_.__s.__data_[v82] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v107, v48, v47 - v48 + 32, v47, 0, 0, 0x20uLL, "Sender already exists for track ");
    }

    __src = v107;
    memset(&v107, 0, sizeof(v107));
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v83 = 22;
    }

    else
    {
      v83 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v84 = __src.__r_.__value_.__l.__size_;
    }

    if (v83 == v84)
    {
      std::string::__grow_by_and_replace(&__src, v83, 1uLL, v83, v83, 0, 1uLL, ".");
    }

    else
    {
      v85 = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v85 = __src.__r_.__value_.__r.__words[0];
      }

      v86 = v85 + v84;
      if (v85 + v84 <= "." && v86 + 1 > ".")
      {
        goto LABEL_231;
      }

      *v86 = 46;
      v87 = v84 + 1;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v87;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v87 & 0x7F;
      }

      v85->__r_.__value_.__s.__data_[v87] = 0;
    }

    __p = __src;
    memset(&__src, 0, sizeof(__src));
    v106.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
    v106.__r_.__value_.__l.__size_ = 17;
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v83, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

LABEL_196:
        operator delete(v107.__r_.__value_.__l.__data_);
        goto LABEL_170;
      }
    }

    else if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_169;
    }

    operator delete(__src.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_196;
  }

LABEL_170:
  v88 = &v106;
  (*(**a3 + 40))(&v106);
  v89 = v106.__r_.__value_.__r.__words[2];
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v90 = v106.__r_.__value_.__l.__size_;
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = 22;
  }

  else
  {
    v91 = (v106.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v91 - v90 < 0x20)
  {
    if (0x7FFFFFFFFFFFFFF6 - v91 >= v90 + 32 - v91)
    {
      operator new();
    }

    goto LABEL_232;
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v88 = v106.__r_.__value_.__r.__words[0];
  }

  v92 = "Sender already exists for track ";
  if (v90)
  {
    if ((v90 & 0x8000000000000000) == 0)
    {
      v93 = v88 + v90 <= "Sender already exists for track " || v88 > "Sender already exists for track ";
      v94 = 32;
      if (v93)
      {
        v94 = 0;
      }

      v92 = &aSenderAlreadyE[v94];
      v95 = &v106;
      if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v95 = v106.__r_.__value_.__r.__words[0];
      }

      memmove(&v95[1].__r_.__value_.__r.__words[1], v88, v90);
      goto LABEL_192;
    }

LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

LABEL_192:
  *&v88->__r_.__value_.__l.__data_ = *v92;
  *&v88->__r_.__value_.__r.__words[2] = *(v92 + 1);
  v96 = v90 + 32;
  if ((v89 & 0x8000000000000000) != 0)
  {
    v106.__r_.__value_.__l.__size_ = v90 + 32;
  }

  else
  {
    *(&v106.__r_.__value_.__s + 23) = v96 & 0x7F;
  }

  v88->__r_.__value_.__s.__data_[v96] = 0;
  v107 = v106;
  memset(&v106, 0, sizeof(v106));
  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = 22;
  }

  else
  {
    v97 = (v107.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v98 = v107.__r_.__value_.__l.__size_;
  }

  if (v97 == v98)
  {
    std::string::__grow_by_and_replace(&v107, v97, 1uLL, v97, v97, 0, 1uLL, ".");
  }

  else
  {
    v99 = &v107;
    if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v99 = v107.__r_.__value_.__r.__words[0];
    }

    v100 = v99 + v98;
    if (v99 + v98 <= "." && v100 + 1 > ".")
    {
      goto LABEL_231;
    }

    *v100 = 46;
    v101 = v98 + 1;
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      v107.__r_.__value_.__l.__size_ = v101;
    }

    else
    {
      *(&v107.__r_.__value_.__s + 23) = v101 & 0x7F;
    }

    v99->__r_.__value_.__s.__data_[v101] = 0;
  }

  __src = v107;
  memset(&v107, 0, sizeof(v107));
  v102 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 3;
    v103 = &__src;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) <= 0x16)
    {
      goto LABEL_216;
    }

LABEL_220:
    operator new();
  }

  v102 = __src.__r_.__value_.__l.__size_;
  v103 = __src.__r_.__value_.__r.__words[0];
  LODWORD(__p.__r_.__value_.__l.__data_) = 3;
  if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_232;
  }

  if (__src.__r_.__value_.__l.__size_ > 0x16)
  {
    goto LABEL_220;
  }

LABEL_216:
  HIBYTE(v110) = v102;
  v104 = (&__p.__r_.__value_.__r.__words[1] + v102);
  if (&__p.__r_.__value_.__r.__words[1] <= v103 && v104 > v103)
  {
    goto LABEL_231;
  }

  if (v102)
  {
    memmove(&__p.__r_.__value_.__r.__words[1], v103, v102);
  }

  v104->__r_.__value_.__s.__data_[0] = 0;
  *v111 = 0;
  v111[4] = 0;
  v111[6] = 0;
  *a1 = __p.__r_.__value_.__l.__data_;
  *(a1 + 8) = *&__p.__r_.__value_.__r.__words[1];
  *(a1 + 24) = v110;
  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  v110 = 0;
  *(a1 + 32) = 0;
  *(a1 + 35) = *&v111[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_226:
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_230;
      }

      return;
    }
  }

  else if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_226;
  }

  operator delete(v107.__r_.__value_.__l.__data_);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_230:
    operator delete(v106.__r_.__value_.__l.__data_);
  }
}

void webrtc::PeerConnection::AddTrack(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a2 = 0;
  v7 = v5;
  webrtc::PeerConnection::AddTrack(a5, a1, &v7, a3, a4);
  if (v5)
  {
    v6 = *(*v5 + 8);

    v6(v5);
  }
}

void webrtc::PeerConnection::RemoveTrackOrError(uint64_t a1@<X0>, webrtc::RtpSenderInterface **a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(*(a1 + 64) + 96))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __src.__r_.__value_.__r.__words[0] = "UNSUPPORTED_OPERATION";
      __src.__r_.__value_.__l.__size_ = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 1;
    operator new();
  }

  if (!*a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __src.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
      __src.__r_.__value_.__l.__size_ = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 3;
    *(a3 + 31) = 15;
    if (a3 + 8 > "Sender is null." || a3 + 23 <= "Sender is null.")
    {
      strcpy((a3 + 8), "Sender is null.");
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      *(a3 + 38) = 0;
      return;
    }

    goto LABEL_154;
  }

  if ((*(*a1 + 704))(a1))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      __src.__r_.__value_.__r.__words[0] = "INVALID_STATE";
      __src.__r_.__value_.__l.__size_ = 13;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 6;
    operator new();
  }

  v27 = (*(*a1 + 848))(a1);
  v28 = *a2;
  if (!v27)
  {
    if ((*(*v28 + 64))(*a2))
    {
      v36 = (*(*a1 + 760))(a1);
      webrtc::RtpTransmissionManager::GetVideoTransceiver(v36, &__src);
    }

    else
    {
      v37 = (*(*a1 + 760))(a1);
      webrtc::RtpTransmissionManager::GetAudioTransceiver(v37, &__src);
    }

    v38 = webrtc::RtpTransceiver::RemoveSender(*(__src.__r_.__value_.__r.__words[0] + 16), *a2);
    if (__src.__r_.__value_.__r.__words[0])
    {
      (*(*__src.__r_.__value_.__l.__data_ + 8))(__src.__r_.__value_.__r.__words[0]);
    }

    if (v38)
    {
      goto LABEL_55;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_93;
    }

    v39 = &v74;
    (*(**a2 + 72))(&v74);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v74.__r_.__value_.__l.__size_;
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = 22;
    }

    else
    {
      v46 = (v74.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v46 - size >= 0x15)
    {
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v74.__r_.__value_.__r.__words[0];
      }

      v47 = "Couldn't find sender ";
      if (size)
      {
        if ((size & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        v48 = v39 + size <= "Couldn't find sender " || v39 > "Couldn't find sender ";
        v49 = 21;
        if (v48)
        {
          v49 = 0;
        }

        v47 = &aCouldnTFindSen[v49];
        v50 = &v74;
        if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = v74.__r_.__value_.__r.__words[0];
        }

        memmove(&v50->__r_.__value_.__r.__words[2] + 5, v39, size);
      }

      *&v39->__r_.__value_.__l.__data_ = *v47;
      *(&v39->__r_.__value_.__r.__words[1] + 5) = *(v47 + 13);
      v51 = size + 21;
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        v74.__r_.__value_.__l.__size_ = size + 21;
      }

      else
      {
        *(&v74.__r_.__value_.__s + 23) = v51 & 0x7F;
      }

      v39->__r_.__value_.__s.__data_[v51] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v74, v46, size - v46 + 21, size, 0, 0, 0x15uLL, "Couldn't find sender ");
    }

    v75 = v74;
    memset(&v74, 0, sizeof(v74));
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = 22;
    }

    else
    {
      v52 = (v75.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v75.__r_.__value_.__l.__size_;
    }

    if (v52 - v53 >= 0xB)
    {
      v54 = &v75;
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = v75.__r_.__value_.__r.__words[0];
      }

      v55 = v54 + v53;
      if (v54 + v53 <= " to remove." && v55 + 11 > " to remove.")
      {
        goto LABEL_154;
      }

      *(v55 + 7) = 778401391;
      *v55 = *" to remove.";
      v56 = v53 + 11;
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        v75.__r_.__value_.__l.__size_ = v53 + 11;
      }

      else
      {
        *(&v75.__r_.__value_.__s + 23) = v56 & 0x7F;
      }

      v54->__r_.__value_.__s.__data_[v56] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v75, v52, v53 - v52 + 11, v53, v53, 0, 0xBuLL, " to remove.");
    }

    __src = v75;
    memset(&v75, 0, sizeof(v75));
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v52, v40, v53, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_92:
        if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_93:
          v57 = &v74;
          (*(**a2 + 72))(&v74);
          if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v58 = v74.__r_.__value_.__l.__size_;
          }

          if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = 22;
          }

          else
          {
            v59 = (v74.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if (v59 - v58 < 0x15)
          {
            if (0x7FFFFFFFFFFFFFF6 - v59 >= v58 + 21 - v59)
            {
              operator new();
            }

LABEL_155:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v57 = v74.__r_.__value_.__r.__words[0];
          }

          v60 = "Couldn't find sender ";
          if (v58)
          {
            if ((v58 & 0x8000000000000000) != 0)
            {
              goto LABEL_154;
            }

            v61 = v57 + v58 <= "Couldn't find sender " || v57 > "Couldn't find sender ";
            v62 = 21;
            if (v61)
            {
              v62 = 0;
            }

            v60 = &aCouldnTFindSen[v62];
            v63 = &v74;
            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v63 = v74.__r_.__value_.__r.__words[0];
            }

            memmove(&v63->__r_.__value_.__r.__words[2] + 5, v57, v58);
          }

          *&v57->__r_.__value_.__l.__data_ = *v60;
          *(&v57->__r_.__value_.__r.__words[1] + 5) = *(v60 + 13);
          v64 = v58 + 21;
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            v74.__r_.__value_.__l.__size_ = v58 + 21;
          }

          else
          {
            *(&v74.__r_.__value_.__s + 23) = v64 & 0x7F;
          }

          v57->__r_.__value_.__s.__data_[v64] = 0;
          v75 = v74;
          memset(&v74, 0, sizeof(v74));
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = 22;
          }

          else
          {
            v65 = (v75.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v66 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v66 = v75.__r_.__value_.__l.__size_;
          }

          if (v65 - v66 >= 0xB)
          {
            v67 = &v75;
            if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v67 = v75.__r_.__value_.__r.__words[0];
            }

            v68 = v67 + v66;
            if (v67 + v66 <= " to remove." && v68 + 11 > " to remove.")
            {
              goto LABEL_154;
            }

            *(v68 + 7) = 778401391;
            *v68 = *" to remove.";
            v69 = v66 + 11;
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              v75.__r_.__value_.__l.__size_ = v66 + 11;
            }

            else
            {
              *(&v75.__r_.__value_.__s + 23) = v69 & 0x7F;
            }

            v67->__r_.__value_.__s.__data_[v69] = 0;
          }

          else
          {
            std::string::__grow_by_and_replace(&v75, v65, v66 - v65 + 11, v66, v66, 0, 0xBuLL, " to remove.");
          }

          __src = v75;
          memset(&v75, 0, sizeof(v75));
          v70 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v72 = __src.__r_.__value_.__l.__size_;
            p_src = __src.__r_.__value_.__r.__words[0];
            *a3 = 3;
            if (v72 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_155;
            }
          }

          else
          {
            *a3 = 3;
            p_src = &__src;
            v72 = v70;
          }

          if (v72 > 0x16)
          {
            operator new();
          }

          *(a3 + 31) = v72;
          v73 = (a3 + 8 + v72);
          if (a3 + 8 > p_src || v73 <= p_src)
          {
            if (v72)
            {
              memmove((a3 + 8), p_src, v72);
            }

            v73->__r_.__value_.__s.__data_[0] = 0;
            *(a3 + 32) = 0;
            *(a3 + 36) = 0;
            *(a3 + 38) = 0;
            if ((v70 & 0x80000000) != 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_149:
                if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  return;
                }

                goto LABEL_153;
              }
            }

            else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_149;
            }

            operator delete(v75.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return;
            }

LABEL_153:
            operator delete(v74.__r_.__value_.__l.__data_);
            return;
          }

LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

LABEL_119:
        operator delete(v74.__r_.__value_.__l.__data_);
        goto LABEL_93;
      }
    }

    else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    operator delete(v75.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_119;
  }

  if (v28)
  {
    (**v28)(*a2);
  }

  v29 = (*(*a1 + 760))(a1);
  if (v28)
  {
    (**v28)(v28);
  }

  v30 = *(v29 + 48);
  v31 = *(v29 + 56);
  if (v30 == v31)
  {
LABEL_28:
    v32 = 0;
  }

  else
  {
    while (1)
    {
      v32 = *v30;
      if (*v30)
      {
        (**v32)(*v30);
      }

      (*(*v32 + 48))(&__src, v32);
      v33 = __src.__r_.__value_.__r.__words[0];
      if (__src.__r_.__value_.__r.__words[0])
      {
        (*(*__src.__r_.__value_.__l.__data_ + 8))(__src.__r_.__value_.__r.__words[0]);
      }

      if (v33 == v28)
      {
        break;
      }

      (*(*v32 + 8))(v32);
      if (++v30 == v31)
      {
        goto LABEL_28;
      }
    }
  }

  if (v28)
  {
    (*(*v28 + 8))(v28);
    (*(*v28 + 8))(v28);
  }

  if (!v32)
  {
    goto LABEL_56;
  }

  (*(**a2 + 40))(&__src);
  v34 = __src.__r_.__value_.__r.__words[0];
  if (__src.__r_.__value_.__r.__words[0])
  {
    (*(*__src.__r_.__value_.__l.__data_ + 8))(__src.__r_.__value_.__r.__words[0]);
    (*(**a2 + 32))(*a2, 0);
    if ((*(*v32 + 80))(v32))
    {
      if ((*(*v32 + 80))(v32) != 1)
      {
        goto LABEL_54;
      }

      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    *(v32[2] + 84) = v35;
  }

  else
  {
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
  }

LABEL_54:
  (*(*v32 + 8))(v32);
  if (v34)
  {
LABEL_55:
    webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(*(a1 + 952));
LABEL_56:
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
  }
}

uint64_t webrtc::PeerConnection::AddTransceiver(void *a1, uint64_t *a2)
{
  if (!*(a1[8] + 96))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v18 = "UNSUPPORTED_OPERATION";
      v19[0] = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  v22 = *a2;
  if (v22)
  {
    v2 = a1;
    (**v22)(v22);
    a1 = v2;
  }

  LODWORD(v18) = 0;
  *v19 = 0u;
  *__p = 0u;
  v21 = 0u;
  (*(*a1 + 96))(a1, &v22, &v18);
  v3 = __p[1];
  if (__p[1])
  {
    v4 = v21;
    v5 = __p[1];
    if (v21 != __p[1])
    {
      do
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v4 - 272));
      }

      while (v4 != v3);
      v5 = __p[1];
    }

    *&v21 = v3;
    operator delete(v5);
  }

  v6 = v19[0];
  if (v19[0])
  {
    v7 = v19[1];
    v8 = v19[0];
    if (v19[1] != v19[0])
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v19[0];
    }

    v19[1] = v6;
    operator delete(v8);
  }

  result = v22;
  if (v22)
  {
    return (*(*v22 + 8))(v22);
  }

  return result;
}

void webrtc::PeerConnection::AddTransceiver(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a1[8] + 96))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v37 = "UNSUPPORTED_OPERATION";
      *&v38 = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  if (((*(*a1 + 848))() & 1) == 0)
  {
LABEL_56:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 972, "IsUnifiedPlan()", "\t", v8, v9, v10, v11, "AddTransceiver is only available with Unified Plan SdpSemantics");
    webrtc::PeerConnection::AddTransceiver();
    return;
  }

  if (!*a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v37 = "INVALID_PARAMETER";
      *&v38 = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v21, v22, v23, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    HIBYTE(v39) = 13;
    if (&v38 > "track is null" || &v38 + 13 <= "track is null")
    {
      strcpy(&v38, "track is null");
      *v40 = 0;
      v40[4] = 0;
      v40[6] = 0;
      *a4 = 3;
      *(a4 + 24) = v39;
      *(a4 + 8) = v38;
      *(a4 + 32) = 0;
      *(a4 + 35) = *&v40[3];
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      return;
    }

    __break(1u);
    goto LABEL_56;
  }

  (*(**a2 + 32))(&v37);
  if (SHIBYTE(v38) < 0)
  {
    if (v38 != 5)
    {
      operator delete(v37);
LABEL_30:
      (*(**a2 + 32))(&v37);
      if (SHIBYTE(v38) < 0)
      {
        if (v38 != 5)
        {
          operator delete(v37);
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
          {
LABEL_38:
            operator new();
          }

LABEL_37:
          v37 = "INVALID_PARAMETER";
          *&v38 = 17;
          webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
          goto LABEL_38;
        }

        v34 = *v37 != *"video" || v37[4] != webrtc::kMediaTypeVideo[4];
        operator delete(v37);
        if (v34)
        {
LABEL_36:
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(v38) != 5)
        {
          goto LABEL_36;
        }

        if (v37 != *"video" || BYTE4(v37) != webrtc::kMediaTypeVideo[4])
        {
          goto LABEL_36;
        }
      }

      v13 = 1;
      goto LABEL_49;
    }

    v13 = *v37 != *"audio" || v37[4] != webrtc::kMediaTypeAudio[4];
    operator delete(v37);
    if (v13)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (SHIBYTE(v38) != 5)
    {
      goto LABEL_30;
    }

    if (v37 != *"audio" || BYTE4(v37) != webrtc::kMediaTypeAudio[4])
    {
      goto LABEL_30;
    }

    v13 = 0;
  }

LABEL_49:
  v35 = *a2;
  v36 = v35;
  if (v35)
  {
    (**v35)(v35);
  }

  (*(*a1 + 896))(a1, v13, &v36, a3, 1);
  if (v36)
  {
    (*v36)[1](v36);
  }
}

void webrtc::PeerConnection::AddTransceiver(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  *v10 = 0u;
  *__p = 0u;
  v12 = 0u;
  (*(*a1 + 112))(a1, a2, &v9);
  v2 = __p[1];
  if (__p[1])
  {
    v3 = v12;
    v4 = __p[1];
    if (v12 != __p[1])
    {
      do
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v3 - 272));
      }

      while (v3 != v2);
      v4 = __p[1];
    }

    *&v12 = v2;
    operator delete(v4);
  }

  v5 = v10[0];
  if (v10[0])
  {
    v6 = v10[1];
    v7 = v10[0];
    if (v10[1] != v10[0])
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v10[0];
    }

    v10[1] = v5;
    operator delete(v7);
  }
}

uint64_t webrtc::PeerConnection::AddTransceiver(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1[8] + 96))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v26 = "UNSUPPORTED_OPERATION";
      v27 = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  if ((*(*a1 + 848))())
  {
    if (a2 >= 2)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        v26 = "INVALID_PARAMETER";
        v27 = 17;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      operator new();
    }

    v25 = 0;
    (*(*a1 + 896))(a1, a2, &v25, a3, 1);
    result = v25;
    if (v25)
    {
      return (*(*v25 + 8))(v25);
    }
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 1002, "IsUnifiedPlan()", "\t", v6, v7, v8, v9, "AddTransceiver is only available with Unified Plan SdpSemantics");
    return webrtc::PeerConnection::AddTransceiver();
  }

  return result;
}

void webrtc::PeerConnection::AddTransceiver(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v174 = *MEMORY[0x277D85DE8];
  if (!*(a1[8] + 96))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      *&v146 = "UNSUPPORTED_OPERATION";
      *(&v146 + 1) = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  v10 = a1;
  v12 = *(a4 + 32);
  v13 = *(a4 + 40);
  v11 = (a4 + 32);
  if (v12 == v13)
  {
    goto LABEL_41;
  }

  v14 = v13 - v12 - 272;
  if (v14 < 0x110)
  {
    v15 = 0;
    v16 = *(a4 + 32);
    do
    {
LABEL_19:
      v31 = *(v16 + 136);
      if (*(v16 + 151) >= 0)
      {
        v31 = *(v16 + 151);
      }

      if (v31)
      {
        ++v15;
      }

      v16 += 272;
    }

    while (v16 != v13);
    goto LABEL_24;
  }

  v24 = 0;
  v25 = 0;
  v26 = v14 / 0x110 + 1;
  v16 = v12 + 272 * (v26 & 0x1FFFFFFFFFFFFFELL);
  v27 = *(a4 + 32);
  v28 = v26 & 0x1FFFFFFFFFFFFFELL;
  do
  {
    v29 = *(v27 + 136);
    v30 = *(v27 + 408);
    a5 = *(v27 + 151);
    a6 = *(v27 + 423);
    if (a5 >= 0)
    {
      v29 = *(v27 + 151);
    }

    if ((a6 & 0x80u) == 0)
    {
      v30 = *(v27 + 423);
    }

    if (v29)
    {
      ++v24;
    }

    if (v30)
    {
      ++v25;
    }

    v27 += 544;
    v28 -= 2;
  }

  while (v28);
  v15 = v25 + v24;
  if (v26 != (v26 & 0x1FFFFFFFFFFFFFELL))
  {
    goto LABEL_19;
  }

LABEL_24:
  if (!v15)
  {
LABEL_41:
    v38 = 1;
    goto LABEL_42;
  }

  if (v15 != 0xF0F0F0F0F0F0F0F1 * ((v13 - v12) >> 4))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      *&v146 = "INVALID_PARAMETER";
      *(&v146 + 1) = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  v131 = a3;
  v133 = a2;
  v33 = MEMORY[0x277D85DE0];
  do
  {
    v34 = *(v12 + 151);
    if (v34 >= 0)
    {
      v35 = *(v12 + 151);
    }

    else
    {
      v35 = *(v12 + 136);
    }

    if ((v35 - 17) < 0xFFFFFFFFFFFFFFF0)
    {
LABEL_54:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        *&v146 = "INVALID_PARAMETER";
        *(&v146 + 1) = 17;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      operator new();
    }

    if (v34 >= 0)
    {
      v36 = (v12 + 128);
    }

    else
    {
      v36 = *(v12 + 128);
    }

    do
    {
      v37 = *v36;
      if ((v37 & 0x80000000) != 0)
      {
        if (!__maskrune(v37, 0x500uLL))
        {
          goto LABEL_54;
        }
      }

      else if ((*(v33 + 4 * v37 + 60) & 0x500) == 0)
      {
        goto LABEL_54;
      }

      ++v36;
      --v35;
    }

    while (v35);
    v12 += 272;
  }

  while (v12 != v13);
  v38 = 0;
  v12 = *(a4 + 32);
  v13 = *(a4 + 40);
  v10 = a1;
  a2 = v133;
  a3 = v131;
LABEL_42:
  if (v12 != v13)
  {
    v39 = v12;
    do
    {
      if (*(v39 + 4) == 1)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          *&v146 = "UNSUPPORTED_PARAMETER";
          *(&v146 + 1) = 21;
          webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        }

        operator new();
      }

      v39 += 272;
    }

    while (v39 != v13);
  }

  v130 = a9;
  v132 = a3;
  v134 = a2;
  v165 = 0;
  v168 = 0;
  v166 = 0;
  v167 = 0;
  v169 = 256;
  memset(v159, 0, sizeof(v159));
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  memset(__p, 0, sizeof(__p));
  v170 = 0;
  v171 = 0;
  if (__p == v11)
  {
    v41 = 0;
    v40 = 0;
  }

  else
  {
    std::vector<webrtc::RtpEncodingParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpEncodingParameters*,webrtc::RtpEncodingParameters*>(__p, v12, v13, 0xF0F0F0F0F0F0F0F1 * ((v13 - v12) >> 4));
    v40 = *&__p[8];
    v41 = *__p;
  }

  v63 = 3;
  if (v134 != 1)
  {
    v63 = 1;
  }

  if (0xF0F0F0F0F0F0F0F1 * ((v40 - v41) >> 4) > v63)
  {
    v64 = (16 * v63) | (v63 << 8);
    if (v64 + v41 > v40)
    {
      goto LABEL_195;
    }

    if (v64 + v41 != v40)
    {
      v65 = v40;
      v40 = v41 + v64;
      while (v65 != v40)
      {
        webrtc::RtpEncodingParameters::~RtpEncodingParameters((v65 - 272));
      }

      *&__p[8] = v40;
      v41 = *__p;
    }
  }

  if (v40 - v41 == 272)
  {
    if ((*(v41 + 151) & 0x8000000000000000) != 0)
    {
      if (!*(v41 + 136))
      {
        goto LABEL_79;
      }
    }

    else if (!*(v41 + 151))
    {
      goto LABEL_79;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      if (*&__p[8] == *__p)
      {
        goto LABEL_195;
      }

      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v66, v67, v68, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    v40 = *&__p[8];
    v41 = *__p;
    if (*&__p[8] == *__p)
    {
      goto LABEL_195;
    }

    if (*(*__p + 151) < 0)
    {
      **(*__p + 128) = 0;
      *(v41 + 136) = 0;
      v40 = *&__p[8];
      v41 = *__p;
    }

    else
    {
      *(*__p + 128) = 0;
      *(v41 + 151) = 0;
    }
  }

LABEL_79:
  v69 = v38 ^ 1;
  if (0xF0F0F0F0F0F0F0F1 * ((v40 - v41) >> 4) < 2)
  {
    v69 = 1;
  }

  if ((v69 & 1) == 0)
  {
    LODWORD(v146) = 0;
    v147 = 0uLL;
    *(&v146 + 1) = &v147;
    if (v41 != v40)
    {
      if (v147)
      {
        v70 = v146;
        while (1)
        {
          v71 = v70++;
          v72 = v147;
          while (1)
          {
            while (1)
            {
              v73 = v72;
              v74 = *(v72 + 28);
              if (v71 >= v74)
              {
                break;
              }

              v72 = *v73;
              if (!*v73)
              {
                LODWORD(v146) = v70;
LABEL_95:
                operator new();
              }
            }

            if (v74 >= v71)
            {
              break;
            }

            v72 = v73[1];
            if (!v72)
            {
              LODWORD(v146) = v70;
              goto LABEL_95;
            }
          }

          if (v70 == -1)
          {
            LODWORD(v146) = -1;
            webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/unique_id_generator.h", 135, "counter_ < std::numeric_limits<TIntegral>::max()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 0xFFFFFFFFLL);
            goto LABEL_196;
          }
        }
      }

      LODWORD(v146) = v146 + 1;
      goto LABEL_95;
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(&v146 + 8, 0);
    v41 = *__p;
    v40 = *&__p[8];
  }

  if (v41 == v40)
  {
    LOBYTE(v146) = 0;
    BYTE4(v146) = 0;
    *(&v146 + 1) = 0x3FF0000000000000;
    LODWORD(v147) = 1;
    BYTE4(v147) = 0;
    BYTE8(v147) = 0;
    BYTE12(v147) = 0;
    LOBYTE(v148) = 0;
    BYTE8(v148) = 0;
    v149[0] = 0;
    v149[8] = 0;
    v149[12] = 0;
    v149[16] = 0;
    v149[24] = 0;
    LOBYTE(v150) = 0;
    v152 = 0;
    v153[0] = 0;
    v153[8] = 0;
    v153[12] = 1;
    v157[0] = 0;
    v158 = 0;
    v154 = 0uLL;
    v156 = 0;
    v155 = 0;
    if (v40 >= *&__p[16])
    {
      v80 = 0xE1E1E1E1E1E1E1E2 * ((*&__p[16] - v40) >> 4);
      if (v80 <= 1)
      {
        v80 = 1;
      }

      if (0xF0F0F0F0F0F0F0F1 * ((*&__p[16] - v40) >> 4) >= 0x78787878787878)
      {
        v81 = 0xF0F0F0F0F0F0F0;
      }

      else
      {
        v81 = v80;
      }

      if (v81 <= 0xF0F0F0F0F0F0F0)
      {
        operator new();
      }

LABEL_196:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (!v40)
    {
      goto LABEL_195;
    }

    *v40 = v146;
    v75 = v147;
    v76 = v148;
    v77 = *v149;
    *(v40 + 57) = *&v149[9];
    *(v40 + 32) = v76;
    *(v40 + 48) = v77;
    *(v40 + 16) = v75;
    *(v40 + 80) = 0;
    v78 = (v40 + 80);
    *(v40 + 104) = 0;
    if (v152 == 1)
    {
      if (SHIBYTE(v151) < 0)
      {
        std::string::__init_copy_ctor_external(v78, v150, *(&v150 + 1));
      }

      else
      {
        v79 = v150;
        *(v40 + 96) = v151;
        *&v78->__r_.__value_.__l.__data_ = v79;
      }

      *(v40 + 104) = 1;
    }

    v82 = *v153;
    *(v40 + 117) = *&v153[5];
    *(v40 + 112) = v82;
    if (SHIBYTE(v155) < 0)
    {
      std::string::__init_copy_ctor_external((v40 + 128), v154, *(&v154 + 1));
    }

    else
    {
      v83 = v154;
      *(v40 + 144) = v155;
      *(v40 + 128) = v83;
    }

    v84 = v156;
    *(v40 + 160) = 0;
    *(v40 + 152) = v84;
    *(v40 + 264) = 0;
    if (v158 == 1)
    {
      webrtc::RtpCodec::RtpCodec((v40 + 160), v157);
      *(v40 + 264) = 1;
    }

    *&__p[8] = v40 + 272;
    webrtc::RtpEncodingParameters::~RtpEncodingParameters(&v146);
  }

  v85 = HIBYTE(v160);
  if (v160 < 0)
  {
    v85 = v160;
  }

  if (v85)
  {
    goto LABEL_121;
  }

  if (*&__p[8] != *__p)
  {
    v93 = 0xF0F0F0F0F0F0F0F1 * ((*&__p[8] - *__p) >> 4);
    if (v93 >= 2)
    {
      v94 = v93 - 1;
      v95 = (*__p + 288);
      while (1)
      {
        v96 = *(v95 - 1) == 1.0 && *v95 == 1;
        if (!v96)
        {
          break;
        }

        v95 += 34;
        if (!--v94)
        {
          goto LABEL_134;
        }
      }

LABEL_121:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        *&v146 = "UNSUPPORTED_PARAMETER";
        *(&v146 + 1) = 21;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v86, v87, v88, v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      operator new();
    }
  }

LABEL_134:
  v143 = 0;
  v144 = 0;
  v145 = 0;
  webrtc::CodecVendor::CodecVendor(&v146, *(v10[8] + 96), 0, *(v10[8] + 64));
  v97 = v149;
  if (v134 != 1)
  {
    v97 = &v146;
  }

  v98 = *v97;
  v99 = 8;
  if (v134 == 1)
  {
    v99 = 56;
  }

  std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(&v143, v98, *(&v146 + v99), 0x84BDA12F684BDA13 * ((*(&v146 + v99) - v98) >> 3));
  if (v144 == v143)
  {
    v100 = 0;
  }

  else
  {
    v100 = v143;
  }

  v172[0] = 0;
  v173 = 0;
  webrtc::CheckRtpParametersValues(v172, v159, v100, (0x84BDA12F684BDA13 * ((v144 - v143) >> 3)), v10[4], v141);
  if (v173 == 1)
  {
    webrtc::Codec::~Codec(v172);
  }

  if (!LODWORD(v141[0]))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_177;
    }

    if (v134 == 2)
    {
      v138[23] = 4;
      v116 = &v138[4];
      if (v138 <= "data" && &v138[4] > "data")
      {
        goto LABEL_195;
      }

      *v138 = 1635017060;
      goto LABEL_175;
    }

    if (v134 == 1)
    {
      v138[23] = 5;
      v116 = &v138[5];
      v117 = "video";
    }

    else
    {
      if (v134)
      {
        v138[23] = 0;
        v116 = v138;
LABEL_175:
        *v116 = 0;
        webrtc::webrtc_logging_impl::Log("\r\t\n\t", v109, v110, v111, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        if ((v138[23] & 0x80000000) != 0)
        {
          operator delete(*v138);
        }

LABEL_177:
        if (*v132)
        {
          v121 = (*(*v10 + 760))(v10);
          (*(**v132 + 40))(&v135);
          webrtc::RtpTransmissionManager::FindSenderById(v121, &v137);
          if (v137)
          {
            webrtc::CreateRandomUuid(v138);
          }

          (*(**v132 + 40))(v138);
          if (v137)
          {
            (*(*v137 + 8))(v137);
          }

          if (v136 < 0)
          {
            operator delete(v135);
          }

          v122 = (*(*v10 + 760))(v10);
          if (*v132)
          {
            v123 = v122;
            (***v132)(*v132);
            v122 = v123;
          }

          webrtc::RtpTransmissionManager::CreateSender(v122, v134);
        }

        webrtc::CreateRandomUuid(v138);
      }

      v138[23] = 5;
      v116 = &v138[5];
      v117 = "audio";
    }

    if (v138 <= v117 && &v138[5] > v117)
    {
      goto LABEL_195;
    }

    *v138 = *v117;
    v138[4] = v117[4];
    goto LABEL_175;
  }

  if (LODWORD(v141[0]) == 7)
  {
    LODWORD(v141[0]) = 1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v101, v102, v103, v104, v105, v106, v107, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
  }

  if (v142 < 0)
  {
    v108 = v141[1];
    if (!v141[1])
    {
      goto LABEL_195;
    }
  }

  else
  {
    v108 = &v141[1];
  }

  v118 = strlen(v108);
  *v138 = v141[0];
  if (v118 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v118 > 0x16)
  {
    operator new();
  }

  HIBYTE(v139) = v118;
  v119 = &v138[v118 + 8];
  if (&v138[8] <= v108 && v119 > v108)
  {
LABEL_195:
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v118)
  {
    memmove(&v138[8], v108, v118);
  }

  *v119 = 0;
  *v140 = 0;
  v140[4] = 0;
  v140[6] = 0;
  *v130 = *v138;
  *(v130 + 8) = *&v138[8];
  *(v130 + 24) = v139;
  *&v138[8] = 0;
  *&v138[16] = 0;
  v139 = 0;
  *(v130 + 32) = 0;
  *(v130 + 35) = *&v140[3];
  *(v130 + 40) = 0;
  *(v130 + 48) = 0;
  if (v142 < 0)
  {
    operator delete(v141[1]);
    webrtc::CodecVendor::~CodecVendor(&v146);
    v120 = v143;
    if (!v143)
    {
      goto LABEL_124;
    }
  }

  else
  {
    webrtc::CodecVendor::~CodecVendor(&v146);
    v120 = v143;
    if (!v143)
    {
      goto LABEL_124;
    }
  }

  v124 = v120;
  if (v144 != v120)
  {
    v125 = v144 - 216;
    v126 = v144 - 216;
    v127 = (v144 - 216);
    do
    {
      v128 = *v127;
      v127 -= 27;
      (*v128)(v126);
      v125 -= 216;
      v96 = v126 == v120;
      v126 = v127;
    }

    while (!v96);
    v124 = v143;
  }

  v144 = v120;
  operator delete(v124);
LABEL_124:
  webrtc::RtpParameters::~RtpParameters(v159);
}

void webrtc::PeerConnection::CreateSender(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*(a1[8] + 96))
  {
    if ((*(*a1 + 848))(a1))
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 1150, "!IsUnifiedPlan()", "\t", v6, v7, v8, v9, "CreateSender is not available with Unified Plan SdpSemantics. Please use AddTransceiver instead.");
      webrtc::PeerConnection::GetSenders(v18);
    }

    else
    {
      if (!(*(*a1 + 704))(a1))
      {
        memset(&__p[3], 0, 24);
        v17 = *(a2 + 23);
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(a2 + 8);
        }

        if (v17)
        {
          operator new();
        }

        webrtc::CreateRandomUuid(__p);
      }

      *a3 = 0;
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 0;
  }
}

void webrtc::PeerConnection::GetSenders(webrtc::PeerConnection *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(*(this + 8) + 96))
  {
    v2 = (*(*this + 768))(this);
    webrtc::RtpTransmissionManager::GetSendersInternal(v2, &__p);
    v3 = __p;
    if (__p != v9)
    {
      if (*__p)
      {
        (***__p)(*__p);
      }

      operator new();
    }

    if (__p)
    {
      v4 = v9;
      v5 = __p;
      if (v9 != __p)
      {
        do
        {
          v7 = *(v4 - 1);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            (*(*v6 + 8))(v6);
          }
        }

        while (v4 != v3);
        v5 = __p;
      }

      v9 = v3;
      operator delete(v5);
    }
  }
}

void webrtc::PeerConnection::GetReceivers(webrtc::PeerConnection *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(*(this + 8) + 96))
  {
    v2 = (*(*this + 768))(this);
    webrtc::RtpTransmissionManager::GetReceiversInternal(v2, &__p);
    v3 = __p;
    if (__p != v9)
    {
      if (*__p)
      {
        (***__p)(*__p);
      }

      operator new();
    }

    if (__p)
    {
      v4 = v9;
      v5 = __p;
      if (v9 != __p)
      {
        do
        {
          v7 = *(v4 - 1);
          v4 -= 8;
          v6 = v7;
          if (v7)
          {
            (*(*v6 + 8))(v6);
          }
        }

        while (v4 != v3);
        v5 = __p;
      }

      v9 = v3;
      operator delete(v5);
    }
  }
}

uint64_t webrtc::PeerConnection::GetTransceivers@<X0>(webrtc::PeerConnection *this@<X0>, void *a2@<X8>)
{
  result = (*(*this + 848))(this);
  if ((result & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 1223, "IsUnifiedPlan()", "\t", v5, v6, v7, v8, "GetTransceivers is only supported with Unified Plan SdpSemantics.");
    goto LABEL_8;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(*(this + 8) + 96))
  {
    v9 = (*(*this + 768))(this);
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    result = v11 - v10;
    if (v11 != v10)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_8:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t webrtc::PeerConnection::GetStats(uint64_t a1, void (***a2)(void), uint64_t a3)
{
  if (a2)
  {
    webrtc::LegacyStatsCollector::UpdateStats(*(a1 + 616));
    if (a3)
    {
      (*(*a3 + 40))(__p, a3);
      operator new();
    }

    webrtc::PeerConnectionMessageHandler::PostGetStats((a1 + 872), a2, *(a1 + 616), 0);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
  }

  return 0;
}

uint64_t webrtc::PeerConnection::GetStats(uint64_t a1, void (***a2)(void))
{
  v3 = *(a1 + 624);
  if (a2)
  {
    (**a2)(a2);
  }

  v5 = 0;
  v7 = 0;
  v8 = 0;
  v6 = a2;
  webrtc::RTCStatsCollector::GetStatsReportInternal(v3, &v5);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v6;
  if (v6)
  {
    return ((*v6)[1])(v6);
  }

  return result;
}

uint64_t webrtc::PeerConnection::GetStats(void *a1, void *a2, void (****a3)(void))
{
  if (*a2)
  {
    v5 = (*(*a1 + 760))(a1);
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  v8 = a1[78];
  v9 = *a3;
  if (*a3)
  {
    (**v9)(v9);
  }

  v11 = 1;
  v12 = v9;
  v13 = 0;
  v14 = 0;
  webrtc::RTCStatsCollector::GetStatsReportInternal(v8, &v11);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  result = v12;
  if (v12)
  {
    return ((*v12)[1])(v12);
  }

  return result;
}

{
  if (*a2)
  {
    v5 = (*(*a1 + 760))(a1);
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  v8 = a1[78];
  v9 = *a3;
  if (*a3)
  {
    (**v9)(v9);
  }

  v11 = 2;
  v12 = v9;
  v13 = 0;
  v14 = 0;
  webrtc::RTCStatsCollector::GetStatsReportInternal(v8, &v11);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  result = v12;
  if (v12)
  {
    return ((*v12)[1])(v12);
  }

  return result;
}

uint64_t webrtc::PeerConnection::can_trickle_ice_candidates(webrtc::PeerConnection *this)
{
  v2 = (*(*this + 232))(this);
  if (!v2)
  {
    v2 = (*(*this + 248))(this);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = (*(*v2 + 32))();
  if (*(v4 + 32) == *(v4 + 24))
  {
    return 0;
  }

  result = (*(*v3 + 32))(v3);
  v6 = *(result + 24);
  if (*(result + 32) == v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v6 + 24);
    v7 = *(v6 + 32);
    if (v8 != v7)
    {
      for (i = v8; i != v7; i += 24)
      {
        v10 = *(i + 23);
        if (v10 < 0)
        {
          v11 = *i;
          if (*(i + 8) != 7)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v11 = i;
          if (v10 != 7)
          {
            goto LABEL_7;
          }
        }

        v12 = *v11;
        v13 = *(v11 + 3);
        if (v12 == 1667854964 && v13 == 1701604195)
        {
          return (v8 != v7) | 0x100u;
        }

LABEL_7:
        v8 += 24;
      }
    }

    v8 = v7;
    return (v8 != v7) | 0x100u;
  }

  return result;
}

void webrtc::PeerConnection::CreateDataChannelOrError(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(*a1 + 704))(a1))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      *&v27 = "INVALID_STATE";
      *(&v27 + 1) = 13;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  v15 = *(a1 + 824);
  LOWORD(v27) = 256;
  BYTE4(v27) = 0;
  BYTE8(v27) = 0;
  BYTE12(v27) = 0;
  v28 = 0;
  v30 = 0;
  v29 = 0uLL;
  v31[0] = 0;
  *&v31[4] = -1;
  v31[8] = 0;
  v31[10] = 0;
  v32 = 0;
  if (a3)
  {
    webrtc::InternalDataChannelInit::InternalDataChannelInit(__p, a3);
    v27 = *__p;
    v28 = v23[0];
    v29 = *&v23[8];
    v30 = v24;
    *v31 = *v25;
    *&v31[7] = *&v25[7];
    v32 = v26;
  }

  v16 = *(a1 + 952);
  (*(**(v16 + 8) + 32))(__p);
  if (v23[8] == 1)
  {
    if ((v23[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v17 = (*(v16 + 88) >> 8) & 1 | 0x100000000;
  }

  else
  {
    v17 = 0;
  }

  v33 = v17;
  v34 = BYTE4(v17);
  webrtc::DataChannelController::InternalCreateDataChannelWithProxy(a1 + 752, a2, &v27, __p);
  v18 = __p[0];
  if (LODWORD(__p[0]))
  {
    v19 = *v23;
    *(a4 + 8) = __p[1];
    *(a4 + 16) = v19;
    *(a4 + 23) = *&v23[7];
    *(a4 + 32) = *&v23[16];
    *(a4 + 35) = *&v23[19];
    LOBYTE(v19) = v23[15];
    *v23 = 0;
    *&v23[8] = 0;
    __p[1] = 0;
    *a4 = v18;
    *(a4 + 31) = v19;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    if (v25[0] != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if ((v25[0] & 1) == 0)
  {
    __break(1u);
    return;
  }

  v20 = v24;
  v24 = 0;
  v21 = *(a1 + 384);
  if (v21 == 1 || !v21 && !v15)
  {
    webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(*(a1 + 952));
  }

  (*(*a1 + 824))(a1, 4);
  *a4 = 0;
  *(a4 + 38) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  *(a4 + 29) = 0;
  *(a4 + 40) = v20;
  *(a4 + 48) = 1;
  if (v25[0] == 1)
  {
LABEL_21:
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

LABEL_23:
  if ((v23[15] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v29);
    return;
  }

  operator delete(__p[1]);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_27;
  }
}

void webrtc::PeerConnection::RestartIce(webrtc::PeerConnection *this)
{
  v1 = *(this + 119);
  v2 = *(v1 + 28);
  v3 = (*(*v1 + 40))(v1);
  v4 = (*(*v1 + 56))(v1);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2, v2[1]);
  *v2 = (v2 + 1);
  v2[2] = 0;
  v2[1] = 0;
  if (v3)
  {
    webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace::AppendIceCredentialsFromSessionDescription(v2, v3);
  }

  if (v4)
  {
    webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace::AppendIceCredentialsFromSessionDescription(v2, v4);
  }

  webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v1);
}

void webrtc::PeerConnection::SetLocalDescription(uint64_t a1, void (***a2)(void))
{
  webrtc::SdpOfferAnswerHandler::SetLocalDescription(*(a1 + 952), a2);
}

{
  webrtc::SdpOfferAnswerHandler::SetLocalDescription(*(a1 + 952), a2);
}

void webrtc::PeerConnection::SetLocalDescription(uint64_t a1, uint64_t *a2, void (****a3)(void))
{
  v3 = *(a1 + 952);
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  v6 = v5;
  v7 = v4;
  if (v5)
  {
    (**v5)(v5);
  }

  webrtc::SdpOfferAnswerHandler::SetLocalDescription(v3, &v7, &v6);
}

void webrtc::PeerConnection::SetLocalDescription(uint64_t a1, void *a2)
{
  v2 = *(a1 + 952);
  if (*a2)
  {
    (***a2)(*a2);
  }

  webrtc::SdpOfferAnswerHandler::SetLocalDescription(v2);
}

void webrtc::PeerConnection::SetRemoteDescription(uint64_t a1, uint64_t *a2, void (****a3)(void))
{
  v3 = *(a1 + 952);
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  v6 = v5;
  v7 = v4;
  if (v5)
  {
    (**v5)(v5);
  }

  webrtc::SdpOfferAnswerHandler::SetRemoteDescription(v3, &v7, &v6);
}

void webrtc::PeerConnection::SetConfiguration(webrtc::PeerConnection *this@<X0>, const webrtc::PeerConnectionInterface::RTCConfiguration *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*this + 704))(this))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v135[0] = "INVALID_STATE";
      v135[1] = 13;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 6;
    operator new();
  }

  v13 = (*(*this + 208))(this);
  v14 = v13 != 0;
  v15 = *(a2 + 16);
  if (v13)
  {
    v16 = *(this + 54);
    if (HIWORD(v15))
    {
LABEL_7:
      *a3 = 4;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 36) = 0;
      *(a3 + 38) = 0;
      return;
    }
  }

  else
  {
    v16 = 0;
    if (HIWORD(v15))
    {
      goto LABEL_7;
    }
  }

  if (v13)
  {
    v17 = v16 == v15;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v29 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
    if ((v29 & 1) == 0)
    {
      v135[0] = "INVALID_MODIFICATION";
      v135[1] = 20;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  if (v13)
  {
    v18 = *(a2 + 272);
    if (v18 == 1 && *(this + 424))
    {
      if (*(a2 + 240) != *(this + 392) || *(a2 + 241) != *(this + 393) || *(a2 + 242) != *(this + 394) || *(a2 + 243) != *(this + 395) || *(a2 + 244) != *(this + 396) || (v19 = *(a2 + 31), v20 = *(a2 + 32) - v19, v21 = *(this + 50), v20 != *(this + 51) - v21) || memcmp(v19, v21, v20))
      {
LABEL_24:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          v135[0] = "INVALID_MODIFICATION";
          v135[1] = 20;
          webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
        }

        *a3 = 7;
        operator new();
      }
    }

    else if (v18 != *(this + 424))
    {
      goto LABEL_24;
    }
  }

  v121 = v14;
  webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration(&v160, (this + 152));
  if (&v160 != a2)
  {
    std::vector<webrtc::PeerConnectionInterface::IceServer>::__assign_with_size[abi:sn200100]<webrtc::PeerConnectionInterface::IceServer*,webrtc::PeerConnectionInterface::IceServer*>(&v160, *a2, *(a2 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1) - *a2) >> 4));
  }

  *v163 = *(a2 + 6);
  DWORD2(v169) = *(a2 + 16);
  v175 = *(a2 + 148);
  v176 = *(a2 + 38);
  v180 = *(a2 + 159);
  LODWORD(v182) = *(a2 + 44);
  BYTE4(v182) = *(a2 + 180);
  LODWORD(v181) = *(a2 + 40);
  BYTE4(v181) = *(a2 + 164);
  DWORD2(v181) = *(a2 + 42);
  BYTE12(v181) = *(a2 + 172);
  DWORD2(v182) = *(a2 + 46);
  BYTE12(v182) = *(a2 + 188);
  LODWORD(v183) = *(a2 + 48);
  BYTE4(v183) = *(a2 + 196);
  v37 = *(a2 + 50);
  BYTE12(v183) = *(a2 + 204);
  DWORD2(v183) = v37;
  v38 = *(a2 + 52);
  BYTE4(v184) = *(a2 + 212);
  LODWORD(v184) = v38;
  v185 = *(a2 + 27);
  v39 = *(a2 + 56);
  BYTE4(v186) = *(a2 + 228);
  LODWORD(v186) = v39;
  v188 = *(a2 + 236);
  if (&v160 != a2)
  {
    v40 = *(a2 + 311);
    if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v40 >= 0)
      {
        v41 = a2 + 288;
      }

      else
      {
        v41 = *(a2 + 36);
      }

      if (v40 >= 0)
      {
        v42 = *(a2 + 311);
      }

      else
      {
        v42 = *(a2 + 37);
      }

      std::string::__assign_no_alias<false>(&v192, v41, v42);
    }

    else if ((*(a2 + 311) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&v192, *(a2 + 36), *(a2 + 37));
    }

    else
    {
      v192 = *(a2 + 12);
    }
  }

  LODWORD(v196) = *(a2 + 81);
  BYTE4(v196) = *(a2 + 328);
  if (*(a2 + 6) != *v163)
  {
    goto LABEL_137;
  }

  v44 = *a2;
  v43 = *(a2 + 1);
  v45 = v160;
  if ((v43 - *a2) != (v161 - v160))
  {
    goto LABEL_137;
  }

  if (v44 != v43)
  {
    while (webrtc::PeerConnectionInterface::IceServer::operator==(v44, v45))
    {
      v44 += 22;
      v45 += 22;
      if (v44 == v43)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_137;
  }

LABEL_51:
  if (*(a2 + 28) != *&v163[4])
  {
    goto LABEL_137;
  }

  if (*(a2 + 22) != v171)
  {
    goto LABEL_137;
  }

  if (*(a2 + 92) != *(&v171 + 4))
  {
    goto LABEL_137;
  }

  if (*(a2 + 100) != BYTE12(v171))
  {
    goto LABEL_137;
  }

  if (*(a2 + 26) != v172)
  {
    goto LABEL_137;
  }

  if (*(a2 + 108) != *(&v172 + 4))
  {
    goto LABEL_137;
  }

  if (*(a2 + 29) != HIDWORD(v172))
  {
    goto LABEL_137;
  }

  v47 = *(a2 + 5);
  v46 = *(a2 + 6);
  v48 = v167;
  if (v46 - v47 != v168 - v167)
  {
    goto LABEL_137;
  }

  if (v47 != v46)
  {
    while (*v47 == *v48)
    {
      v47 += 8;
      ++v48;
      if (v47 == v46)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_137;
  }

LABEL_62:
  if (*(a2 + 120) != v173 || !webrtc::MediaConfig::operator==(a2 + 124, v174) || *(a2 + 68) != BYTE12(v169) || *(a2 + 18) != v170 || *(a2 + 76) != BYTE4(v170))
  {
    goto LABEL_137;
  }

  v49 = *(a2 + 84);
  v50 = BYTE12(v170);
  if (v49 == 1 && BYTE12(v170))
  {
    v49 = *(a2 + 20);
    v50 = DWORD2(v170);
  }

  if (v49 != v50 || *(a2 + 16) != DWORD2(v169) || *(a2 + 148) != v175 || *(a2 + 38) != v176 || *(a2 + 156) != v177 || *(a2 + 157) != v178 || *(a2 + 158) != v179 || *(a2 + 159) != v180)
  {
    goto LABEL_137;
  }

  v51 = *(a2 + 164);
  v52 = BYTE4(v181);
  if (v51 == 1 && BYTE4(v181))
  {
    v51 = *(a2 + 40);
    v52 = v181;
  }

  if (v51 != v52)
  {
    goto LABEL_137;
  }

  v53 = *(a2 + 172);
  v54 = BYTE12(v181);
  if (v53 == 1 && BYTE12(v181))
  {
    v53 = *(a2 + 42);
    v54 = DWORD2(v181);
  }

  if (v53 != v54)
  {
    goto LABEL_137;
  }

  v55 = *(a2 + 180);
  v56 = BYTE4(v182);
  if (v55 == 1 && BYTE4(v182))
  {
    v55 = *(a2 + 44);
    v56 = v182;
  }

  if (v55 != v56)
  {
    goto LABEL_137;
  }

  v57 = *(a2 + 188);
  v58 = BYTE12(v182);
  if (v57 == 1 && BYTE12(v182))
  {
    v57 = *(a2 + 46);
    v58 = DWORD2(v182);
  }

  if (v57 != v58)
  {
    goto LABEL_137;
  }

  v59 = *(a2 + 196);
  v60 = BYTE4(v183);
  if (v59 == 1 && BYTE4(v183))
  {
    v59 = *(a2 + 48);
    v60 = v183;
  }

  if (v59 != v60)
  {
    goto LABEL_137;
  }

  v61 = *(a2 + 204);
  v62 = BYTE12(v183);
  if (v61 == 1 && BYTE12(v183))
  {
    v61 = *(a2 + 50);
    v62 = DWORD2(v183);
  }

  if (v61 != v62)
  {
    goto LABEL_137;
  }

  v63 = *(a2 + 212);
  v64 = BYTE4(v184);
  if (v63 == 1 && BYTE4(v184))
  {
    v63 = *(a2 + 52);
    v64 = v184;
  }

  if (v63 != v64 || *(a2 + 27) != v185 || *(a2 + 58) != v187)
  {
    goto LABEL_137;
  }

  v65 = *(a2 + 228);
  v66 = BYTE4(v186);
  if (v65 == 1 && BYTE4(v186))
  {
    v65 = *(a2 + 56);
    v66 = v186;
  }

  if (v65 != v66 || *(a2 + 236) != v188)
  {
    goto LABEL_137;
  }

  v67 = *(a2 + 272);
  if (v67 == 1 && v190)
  {
    if (!webrtc::CryptoOptions::operator==(a2 + 240, v189))
    {
      goto LABEL_137;
    }
  }

  else if (v67 != v190)
  {
    goto LABEL_137;
  }

  if (*(a2 + 280) != v191 || !std::operator==[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 36, &v192) || *(a2 + 312) != v193)
  {
    goto LABEL_137;
  }

  v68 = *(a2 + 320);
  v69 = v195;
  if (v68 == 1 && v195)
  {
    v68 = *(a2 + 79);
    v69 = v194;
  }

  if (v68 != v69)
  {
    goto LABEL_137;
  }

  v70 = *(a2 + 328);
  v71 = BYTE4(v196);
  if (v70 == 1 && BYTE4(v196))
  {
    v70 = *(a2 + 81);
    v71 = v196;
  }

  if (v70 != v71 || *(a2 + 83) != v197 || !std::operator==[abi:sn200100]<webrtc::NetworkMask,std::allocator<webrtc::NetworkMask>>(*(a2 + 42), *(a2 + 43), v198, v199) || *(a2 + 90) != v200 || *(a2 + 91) != v201 || *(a2 + 92) != v202)
  {
    goto LABEL_137;
  }

  v72 = *(a2 + 384);
  v73 = v204;
  if (v72 != 1 || !v204)
  {
    goto LABEL_216;
  }

  if (*(a2 + 47) != v203)
  {
LABEL_137:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v135[0] = "INVALID_MODIFICATION";
      v135[1] = 20;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v74, v75, v76, v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    operator new();
  }

  while (1)
  {
    v138 = v181;
    v119 = DWORD1(v172);
    if (DWORD1(v172) == -1)
    {
      v119 = 0;
    }

    LODWORD(v135[0]) = v119;
    BYTE4(v135[0]) = DWORD1(v172) != -1;
    v120 = DWORD2(v172);
    if (DWORD2(v172) == -1)
    {
      v120 = 0;
    }

    LODWORD(v135[1]) = v120;
    BYTE4(v135[1]) = DWORD2(v172) != -1;
    LODWORD(v135[2]) = HIDWORD(v172) == 1;
    BYTE4(v135[2]) = v173;
    v135[3] = v196;
    LOBYTE(v135[4]) = v177;
    BYTE1(v135[4]) = v180;
    BYTE4(v135[4]) = 0;
    LOBYTE(v136) = 0;
    BYTE4(v136) = 0;
    LOBYTE(v137) = 0;
    HIDWORD(v137) = 2;
    v139 = v182;
    v140 = v183;
    v141 = v184;
    v142 = v186;
    v143 = 0;
    v144 = 0;
    webrtc::IceConfig::IsValid(v135, &v123);
    if (v123)
    {
      LODWORD(v135[0]) = v123;
      *&v135[1] = *v124;
      v135[3] = v125;
      v124[0] = 0;
      v124[1] = 0;
      v125 = 0;
      LODWORD(v135[4]) = v126;
      *(&v135[4] + 3) = *(&v126 + 3);
      LOBYTE(v136) = 0;
      v159 = 0;
    }

    else
    {
      LODWORD(v135[0]) = 0;
      BYTE6(v135[4]) = 0;
      memset(&v135[1], 0, 29);
      webrtc::PeerConnectionInterface::RTCConfiguration::RTCConfiguration(&v136, &v160);
      v159 = 1;
      if (SHIBYTE(v125) < 0)
      {
        operator delete(v124[0]);
      }
    }

    webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(&v160);
    if (LODWORD(v135[0]))
    {
      *a3 = v135[0];
      v81 = (a3 + 8);
      if (SHIBYTE(v135[3]) < 0)
      {
        std::string::__init_copy_ctor_external(v81, v135[1], v135[2]);
      }

      else
      {
        *&v81->__r_.__value_.__l.__data_ = *&v135[1];
        *(a3 + 24) = v135[3];
      }

      LODWORD(v83) = 0;
      a2 = 0;
      *(a3 + 32) = v135[4];
      *(a3 + 35) = *(&v135[4] + 3);
      if (v159 != 1)
      {
        goto LABEL_148;
      }

LABEL_147:
      webrtc::PeerConnectionInterface::RTCConfiguration::~RTCConfiguration(&v136);
      goto LABEL_148;
    }

    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = &v133;
    v129 = 0;
    v130 = 0;
    webrtc::ParseAndValidateIceServersFromConfiguration(a2, &v132, &v129, &v160);
    a2 = v161;
    v82 = *v163;
    if (v160)
    {
      LODWORD(v83) = 0;
      v84 = v162;
      v85 = *&v163[8];
      v86 = v164;
      v87 = v165;
      *a3 = v160;
      v88 = v166;
      *(a3 + 8) = a2;
      *(a3 + 16) = v84;
      *(a3 + 24) = v82;
      *(a3 + 32) = v85;
      *(a3 + 36) = v86;
      *(a3 + 37) = v87;
      *(a3 + 38) = v88;
      a2 = 0;
      goto LABEL_194;
    }

    if (v134)
    {
      *(this + 186) |= 2u;
    }

    v73 = v130;
    if (v129 != v130)
    {
      *(this + 186) |= 1u;
    }

    v72 = v159;
    if (v159)
    {
      break;
    }

    __break(1u);
LABEL_216:
    if (v72 != v73)
    {
      goto LABEL_137;
    }
  }

  v89 = v136;
  v90 = v137;
  v91 = *(this + 19);
  if (v137 - v136 != *(this + 20) - v91)
  {
    v96 = 1;
    v94 = v121;
    goto LABEL_182;
  }

  if (v136 == v137)
  {
LABEL_162:
    v92 = *(this + 44);
    if (v92 == DWORD2(v138) || (*(this + 311) & 1) == 0)
    {
      v94 = v121;
      if (v92 != DWORD2(v138))
      {
LABEL_179:
        v96 = 1;
        goto LABEL_182;
      }
    }

    else
    {
      v93 = v92 - 1;
      v94 = v121;
      if (v93 > 2)
      {
        v95 = -1;
      }

      else
      {
        v95 = dword_273BA03A0[v93];
      }

      if ((DWORD2(v138) - 1) > 2)
      {
        v99 = 0;
      }

      else
      {
        v99 = dword_273BA03AC[DWORD2(v138) - 1];
      }

      if ((v99 | v95) != 0xFFFFFFFF)
      {
        goto LABEL_179;
      }
    }

    if (v149)
    {
      v97 = 1;
    }

    else
    {
      v97 = v150;
    }

    if (*(this + 300))
    {
      v98 = 1;
    }

    else
    {
      v98 = *(this + 76);
    }

    v96 = v97 != v98;
    goto LABEL_182;
  }

  while (webrtc::PeerConnectionInterface::IceServer::operator==(v89, v91))
  {
    v89 += 22;
    v91 += 22;
    if (v89 == v90)
    {
      goto LABEL_162;
    }
  }

  v96 = 1;
  v94 = v121;
LABEL_182:
  v100 = v145;
  v101 = v146;
  if (v145 == -1)
  {
    v100 = 0;
  }

  LODWORD(v160) = v100;
  BYTE4(v160) = v145 != -1;
  if (v146 == -1)
  {
    v101 = 0;
  }

  LODWORD(v161) = v101;
  BYTE4(v161) = v146 != -1;
  LODWORD(v162) = v147 == 1;
  BYTE4(v162) = v148;
  *v163 = v158;
  v163[8] = v151;
  v163[9] = v152;
  v164 = 0;
  LOBYTE(v167) = 0;
  BYTE4(v167) = 0;
  LOBYTE(v168) = 0;
  HIDWORD(v168) = 2;
  v169 = v153;
  v170 = v154;
  v171 = v155;
  *&v172 = v156;
  *(&v172 + 1) = v157;
  v173 = 0;
  if (*(this + 129) == 1 && *(&v139 + 1) == v140)
  {
    (*(**(this + 4) + 16))(&v123);
    v114 = HIBYTE(v124[1]);
    if (SHIBYTE(v124[1]) < 0)
    {
      v114 = v124[0];
    }

    if (v114 >= 7)
    {
      v115 = v123;
      if (SHIBYTE(v124[1]) >= 0)
      {
        v115 = &v123;
      }

      v116 = *v115;
      v117 = *(v115 + 3);
      v102 = v116 == 1650552389 && v117 == 1684368482;
    }

    else
    {
      v102 = 0;
    }

    if (SHIBYTE(v124[1]) < 0)
    {
      operator delete(v123);
    }
  }

  else
  {
    v102 = 0;
  }

  v174[0] = v102;
  v103 = *(*(this + 8) + 24);
  v123 = this;
  LOBYTE(v124[0]) = v96;
  v124[1] = &v160;
  v125 = &v132;
  v126 = &v129;
  v127 = &v136;
  v128 = v94;
  v206 = 0;
  v205[0] = &v206;
  v205[1] = &v123;
  (*(*v103 + 96))(v103, v205, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::SetConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0,BOOL,void>(webrtc::PeerConnection::SetConfiguration(webrtc::PeerConnectionInterface::RTCConfiguration const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v122);
  if ((v206 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v123 = "INTERNAL_ERROR";
      v124[0] = 14;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v104, v105, v106, v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 10;
    operator new();
  }

  webrtc::PeerConnectionInterface::RTCConfiguration::operator=(this + 152, &v136);
  *a3 = 0;
  *(a3 + 38) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 29) = 0;
  v83 = v82 >> 63;
LABEL_194:
  v111 = v129;
  if (v129)
  {
    v112 = v130;
    v113 = v129;
    if (v130 != v129)
    {
      do
      {
        webrtc::RelayServerConfig::~RelayServerConfig(v112 - 20);
      }

      while (v112 != v111);
      v113 = v129;
    }

    v130 = v111;
    operator delete(v113);
  }

  std::__tree<webrtc::SocketAddress>::destroy(&v132, v133);
  if (v159 == 1)
  {
    goto LABEL_147;
  }

LABEL_148:
  if (SHIBYTE(v135[3]) < 0)
  {
    operator delete(v135[1]);
    if (v83)
    {
      goto LABEL_152;
    }
  }

  else if (v83)
  {
LABEL_152:
    operator delete(a2);
  }
}

uint64_t webrtc::PeerConnectionInterface::RTCConfiguration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v5 = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 24) = v5;
  }

  else
  {
    std::vector<webrtc::PeerConnectionInterface::IceServer>::__assign_with_size[abi:sn200100]<webrtc::PeerConnectionInterface::IceServer*,webrtc::PeerConnectionInterface::IceServer*>(a1, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 4));
    v4 = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 24) = v4;
    std::vector<webrtc::scoped_refptr<webrtc::RTCCertificate>>::__assign_with_size[abi:sn200100]<webrtc::scoped_refptr<webrtc::RTCCertificate>*,webrtc::scoped_refptr<webrtc::RTCCertificate>*>(a1 + 40, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
  }

  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  *(a1 + 64) = v6;
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v10;
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 208);
  *(a1 + 221) = *(a2 + 221);
  *(a1 + 192) = v12;
  *(a1 + 208) = v13;
  *(a1 + 176) = v11;
  std::__optional_storage_base<webrtc::CryptoOptions,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<webrtc::CryptoOptions,false> const&>(a1 + 240, (a2 + 240));
  *(a1 + 280) = *(a2 + 280);
  if (a1 == a2)
  {
    v16 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v16;
  }

  else
  {
    v14 = *(a2 + 311);
    if (*(a1 + 311) < 0)
    {
      if (v14 >= 0)
      {
        v17 = (a2 + 288);
      }

      else
      {
        v17 = *(a2 + 288);
      }

      if (v14 >= 0)
      {
        v18 = *(a2 + 311);
      }

      else
      {
        v18 = *(a2 + 296);
      }

      std::string::__assign_no_alias<false>((a1 + 288), v17, v18);
    }

    else if ((*(a2 + 311) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 288), *(a2 + 288), *(a2 + 296));
    }

    else
    {
      v15 = *(a2 + 288);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 288) = v15;
    }

    v19 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v19;
    std::vector<webrtc::NetworkMask>::__assign_with_size[abi:sn200100]<webrtc::NetworkMask*,webrtc::NetworkMask*>((a1 + 336), *(a2 + 336), *(a2 + 344), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 344) - *(a2 + 336)) >> 3));
  }

  v20 = *(a2 + 360);
  *(a1 + 369) = *(a2 + 369);
  *(a1 + 360) = v20;
  return a1;
}

BOOL webrtc::PeerConnection::AddIceCandidate(webrtc::SdpOfferAnswerHandler **this, const webrtc::IceCandidateInterface *a2)
{
  (*(*this + 23))(this);
  v4 = webrtc::SdpOfferAnswerHandler::AddIceCandidateInternal(this[119], a2);
  return !v4 || v4 == 5;
}

void webrtc::PeerConnection::AddIceCandidate(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v5 = v4;
      (*(*v3 + 24))(v3, v4);
    }

    else
    {
      v5 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v5 = 0;
  }

  operator new();
}

void webrtc::PeerConnection::SetBitrate(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 + 64) + 40);
  v7 = &unk_280905000;
  {
    goto LABEL_44;
  }

  while (1)
  {
    if (pthread_getspecific(*(v7[403] + 88)) != v6)
    {
      v8 = *(*(a1 + 64) + 40);
      v48[0] = a1;
      v48[1] = a2;
      *a3 = 0;
      *(a3 + 38) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *(a3 + 29) = 0;
      v49 = a3;
      v50 = v48;
      (*(*v8 + 96))(v8, &v49, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::PeerConnection::SetBitrate(webrtc::BitrateSettings const&)::$_0,webrtc::RTCError,void>(webrtc::PeerConnection::SetBitrate(webrtc::BitrateSettings const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v47);
      return;
    }

    if (a2[4] == 1)
    {
      break;
    }

    if ((a2[12] & 1) == 0)
    {
      goto LABEL_18;
    }

    v9 = *(a2 + 2);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    a2 = "curent_bitrate_bps < 0";
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v49 = "INVALID_PARAMETER";
      v50 = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 3;
    *(a3 + 31) = 22;
    if (a3 + 8 > "curent_bitrate_bps < 0" || a3 + 30 <= "curent_bitrate_bps < 0")
    {
      strcpy((a3 + 8), "curent_bitrate_bps < 0");
      goto LABEL_42;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v7 = &unk_280905000;
    if (v46)
    {
      operator new();
    }
  }

  if ((*a2 & 0x80000000) != 0)
  {
    a2 = "min_bitrate_bps <= 0";
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v49 = "INVALID_PARAMETER";
      v50 = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 3;
    *(a3 + 31) = 20;
    if (a3 + 8 > "min_bitrate_bps <= 0" || a3 + 28 <= "min_bitrate_bps <= 0")
    {
      strcpy((a3 + 8), "min_bitrate_bps <= 0");
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ((a2[12] & 1) == 0)
  {
LABEL_18:
    if ((a2[20] & 1) == 0)
    {
      goto LABEL_31;
    }

    v17 = *(a2 + 4);
    goto LABEL_20;
  }

  v9 = *(a2 + 2);
  if (v9 < *a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v49 = "INVALID_PARAMETER";
      v50 = 17;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_12:
  if (!a2[20])
  {
    goto LABEL_31;
  }

  v17 = *(a2 + 4);
  if (v17 < v9)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v49 = "INVALID_PARAMETER";
      v50 = 17;
LABEL_16:
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

LABEL_17:
    *a3 = 3;
    operator new();
  }

LABEL_20:
  if (a2[4] && v17 < *a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v49 = "INVALID_PARAMETER";
      v50 = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    *a3 = 3;
    operator new();
  }

  if ((v17 & 0x80000000) == 0)
  {
LABEL_31:
    (*(**(a1 + 576) + 192))(*(a1 + 576), a2);
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
    return;
  }

  a2 = "max_bitrate_bps < 0";
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v49 = "INVALID_PARAMETER";
    v50 = 17;
    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
  }

  *a3 = 3;
  *(a3 + 31) = 19;
  if (a3 + 8 <= "max_bitrate_bps < 0" && a3 + 27 > "max_bitrate_bps < 0")
  {
    goto LABEL_43;
  }

  strcpy((a3 + 8), "max_bitrate_bps < 0");
LABEL_42:
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 38) = 0;
}

void webrtc::PeerConnection::ReconfigureBandwidthEstimation(uint64_t a1)
{
  v1 = *(a1 + 600);
  if (v1)
  {
    atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
  }

  operator new();
}

webrtc::PeerConnection *webrtc::PeerConnection::SetAudioPlayout(webrtc::PeerConnection *this, uint64_t a2)
{
  v4 = *(*(this + 8) + 40);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = (*(**(*(this + 8) + 96) + 24))(*(*(this + 8) + 96));
    (*(*v8 + 32))(&v11);
    (*(*v11 + 48))(v11, a2);
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  else
  {
    v6 = *(*(this + 8) + 40);
    v11 = this;
    v12 = a2;
    return (*(*v6 + 96))(v6, &v11, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::SetAudioPlayout(BOOL)::$_0>, &v10);
  }

  return result;
}

webrtc::PeerConnection *webrtc::PeerConnection::SetAudioRecording(webrtc::PeerConnection *this, uint64_t a2)
{
  v4 = *(*(this + 8) + 40);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v5[403] + 88)) == v4)
  {
    v8 = (*(**(*(this + 8) + 96) + 24))(*(*(this + 8) + 96));
    (*(*v8 + 32))(&v11);
    (*(*v11 + 56))(v11, a2);
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  else
  {
    v6 = *(*(this + 8) + 40);
    v11 = this;
    v12 = a2;
    return (*(*v6 + 96))(v6, &v11, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::SetAudioRecording(BOOL)::$_0>, &v10);
  }

  return result;
}

void *webrtc::PeerConnection::AddAdaptationResource(uint64_t a1, void (****a2)(void))
{
  v4 = *(*(a1 + 64) + 40);
  v5 = &unk_280905000;
  {
    v5 = &unk_280905000;
    if (v11)
    {
      operator new();
    }
  }

  result = pthread_getspecific(*(v5[403] + 88));
  if (result != v4)
  {
    v7 = *(*(a1 + 64) + 40);
    v8 = *a2;
    v14 = a1;
    v15 = v8;
    if (v8)
    {
      (**v8)(v8);
    }

    (*(*v7 + 96))(v7, &v14, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::AddAdaptationResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0>, &v13);
    result = v15;
    if (!v15)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  v9 = *(a1 + 576);
  if (v9)
  {
    v10 = *a2;
    v12 = v10;
    if (v10)
    {
      (**v10)(v10);
    }

    (*(*v9 + 88))(v9, &v12);
    result = v12;
    if (v12)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t webrtc::PeerConnection::StartRtcEventLog(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = *a2;
  *a2 = 0;
  v9 = a1;
  v10 = v4;
  v13 = 0;
  v11 = a3;
  v12[0] = &v13;
  v12[1] = &v9;
  (*(*v3 + 96))(v3, v12, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::StartRtcEventLog(std::unique_ptr<webrtc::RtcEventLogOutput>,long long)::$_0,BOOL,void>(webrtc::PeerConnection::StartRtcEventLog(std::unique_ptr<webrtc::RtcEventLogOutput>,long long)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v8);
  v5 = v13;
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v5;
}

uint64_t webrtc::PeerConnection::StartRtcEventLog(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a1 + 912))(a1);
  (*(*v4 + 16))(__p);
  v5 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v5 < 8)
  {
    v6 = 5000;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v7 = __p[0];
  if ((v14 & 0x80u) == 0)
  {
    v7 = __p;
  }

  if (*v7 == 0x64656C6261736944)
  {
    v6 = 0;
  }

  else
  {
    v6 = 5000;
  }

  if (v14 < 0)
  {
LABEL_12:
    operator delete(__p[0]);
  }

LABEL_13:
  v8 = *a2;
  *a2 = 0;
  v12 = v8;
  result = (*(*a1 + 480))(a1, &v12, v6);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    v11 = result;
    (*(*v10 + 8))(v10);
    return v11;
  }

  return result;
}

uint64_t webrtc::PeerConnection::StopRtcEventLog(webrtc::PeerConnection *this)
{
  v1 = *(*(this + 8) + 40);
  v4 = this;
  return (*(*v1 + 96))(v1, &v4, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::StopRtcEventLog(void)::$_0>, &v3);
}

void webrtc::PeerConnection::SetDataChannelEventObserver(uint64_t a1, void *a2)
{
  v2 = *(a1 + 592);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  *a2 = 0;
  operator new();
}

uint64_t *webrtc::PeerConnection::LookupDtlsTransportByMid@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 936);
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v4 + 408, a2);
  if ((v4 + 416) == result || (v6 = result[7]) == 0)
  {
    *a3 = 0;
  }

  else
  {
    v7 = *(v6 + 104);
    if (v7)
    {
      result = (**v7)(v7);
    }

    *a3 = v7;
  }

  return result;
}

uint64_t *webrtc::PeerConnection::GetSctpTransport@<X0>(uint64_t *this@<X0>, void *a2@<X8>)
{
  if (*(this + 712) == 1 && (v3 = this[117], this = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3 + 408, this + 86), (v3 + 416) != this) && (v4 = this[7]) != 0)
  {
    v5 = *(v4 + 120);
    if (v5)
    {
      this = (**v5)(v5);
    }

    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t webrtc::PeerConnection::Close(webrtc::LegacyStatsCollector **this)
{
  result = (*(*this + 88))(this);
  if ((result & 1) == 0)
  {
    webrtc::LegacyStatsCollector::UpdateStats(this[77]);
    *(this + 33) = 6;
    v3 = (*(*this + 87))(this);
    (*(*v3 + 64))(v3, *(this + 33));
    this[17] = 0x500000006;
    v4 = (*(*this + 87))(this);
    (*(*v4 + 80))(v4, *(this + 35));
    webrtc::SdpOfferAnswerHandler::ChangeSignalingState(this[119], 5);
    (*(*this + 103))(this, 1024);
    if (*(this[8] + 12))
    {
      v5 = (*(*this + 95))(this);
      v6 = *(v5 + 48);
      v7 = *(v5 + 56);
      if (v7 != v6)
      {
        if (((v7 - v6) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    v8 = this[78];
    if (v8)
    {
      webrtc::RTCStatsCollector::MergeNetworkReport_s(v8);
    }

    webrtc::SdpOfferAnswerHandler::DestroyMediaChannels(this[119]);
    v9 = this[119];
    v10 = *(v9 + 3);
    *(v9 + 3) = 0;
    if (v10)
    {
      webrtc::WebRtcSessionDescriptionFactory::~WebRtcSessionDescriptionFactory(v10);
    }

    v11 = this[8];
    if (*(v11 + 12))
    {
      v12 = this[120];
      *(v12 + 216) = 1;
      *(v12 + 31) = 0;
    }

    v13 = *(v11 + 3);
    v28 = this;
    (*(*v13 + 96))(v13, &v28, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::Close(void)::$_0>, &v27);
    if (*(this + 680) == 1)
    {
      if (*(this + 679) < 0)
      {
        operator delete(this[82]);
      }

      *(this + 680) = 0;
    }

    if (*(this + 743) < 0)
    {
      operator delete(this[90]);
    }

    this[90] = 0;
    *(this + 743) = 0;
    (*(*this + 23))(this);
    v14 = *(this[8] + 5);
    v15 = *v14;
    v28 = this;
    (*(v15 + 96))(v14, &v28, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::Close(void)::$_1>, &v27);
    v16 = this[15];
    if (v16)
    {
      (*(*v16 + 160))(v16, *(this + 186));
      if (*(this + 131) == 1)
      {
LABEL_26:
        v26 = (*(*this + 26))(this);
        (*(*v26 + 56))(v26);
        v24 = this[119];
        v25 = *(v24 + 53);
        if (!v25)
        {
          goto LABEL_30;
        }

LABEL_27:
        *v25 = 0;
        if (atomic_fetch_add((v25 + 4), 0xFFFFFFFF) == 1)
        {
          MEMORY[0x2743DA540]();
        }

        *(v24 + 53) = 0;
LABEL_30:
        operator new();
      }
    }

    else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      if (*(this + 131) == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/usage_pattern.cc");
      if (*(this + 131) == 1)
      {
        goto LABEL_26;
      }
    }

    v24 = this[119];
    v25 = *(v24 + 53);
    if (!v25)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  return result;
}

uint64_t webrtc::PeerConnection::SetIceConnectionState(uint64_t result, int a2)
{
  if (*(result + 132) != a2)
  {
    v3 = result;
    result = (*(*result + 704))(result);
    if ((result & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      v3[33] = a2;
      v11 = *(*(*(*v3 + 696))(v3) + 64);

      return v11();
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::PeerConnection::SetIceConnectionState(uint64_t result, int a2)
{
  if (*(result + 124) != a2)
  {
    v3 = result;
    v4 = result - 8;
    result = (*(*(result - 8) + 704))(result - 8);
    if ((result & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
      }

      *(v3 + 124) = a2;
      v12 = *(*(*(*(v3 - 8) + 696))(v4) + 64);

      return v12();
    }
  }

  return result;
}

uint64_t webrtc::PeerConnection::CreateDataChannelTransport(uint64_t a1, __int128 *a2, size_t a3)
{
  v26 = a2;
  v27 = a3;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
  }

  v11 = *(*(a1 + 64) + 24);
  v23[0] = a1;
  v23[1] = &v26;
  v24.__r_.__value_.__s.__data_[0] = 0;
  v25 = 0;
  *&v20 = &v24;
  *(&v20 + 1) = v23;
  (*(*v11 + 96))(v11, &v20, webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<std::string> webrtc::Thread::BlockingCall<webrtc::PeerConnection::CreateDataChannelTransport(std::string_view)::$_0,std::optional<std::string>,void>(webrtc::PeerConnection::CreateDataChannelTransport(std::string_view)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v22);
  v12 = v25;
  if (v25 != 1)
  {
    goto LABEL_25;
  }

  if (v27 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v27 > 0x16)
  {
    operator new();
  }

  HIBYTE(v21) = v27;
  v13 = (&v20 + v27);
  if (&v20 <= v26 && v13 > v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v27)
  {
    memmove(&v20, v26, v27);
  }

  *v13 = 0;
  v15 = (a1 + 656);
  if (*(a1 + 680) == 1)
  {
    if (*(a1 + 679) < 0)
    {
      operator delete(*v15);
    }

    *v15 = v20;
    *(a1 + 672) = v21;
  }

  else
  {
    *v15 = v20;
    *(a1 + 672) = v21;
    *(a1 + 680) = 1;
  }

  if ((v25 & 1) == 0)
  {
    v18 = std::__throw_bad_optional_access[abi:sn200100]();
  }

  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __p = v24;
    v16 = (a1 + 720);
    if ((*(a1 + 743) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  v16 = (a1 + 720);
  if (*(a1 + 743) < 0)
  {
LABEL_22:
    operator delete(*v16);
  }

LABEL_23:
  *v16 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 184))(a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_25:
  if (v25 == 1 && SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v12;
}

uint64_t webrtc::PeerConnection::DestroyDataChannelTransport(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 24);
  v6[0] = a1;
  v6[1] = a2;
  (*(*v3 + 96))(v3, v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::DestroyDataChannelTransport(webrtc::RTCError)::$_0>, &v5);
  if (*(a1 + 680) == 1)
  {
    if (*(a1 + 679) < 0)
    {
      operator delete(*(a1 + 656));
    }

    *(a1 + 680) = 0;
  }

  if (*(a1 + 743) < 0)
  {
    operator delete(*(a1 + 720));
  }

  *(a1 + 720) = 0;
  *(a1 + 743) = 0;
  return (*(*a1 + 184))(a1);
}

uint64_t non-virtual thunk towebrtc::PeerConnection::DestroyDataChannelTransport(uint64_t a1, uint64_t a2)
{
  v3 = a1 - 8;
  v4 = *(*(a1 + 56) + 24);
  v7[0] = v3;
  v7[1] = a2;
  (*(*v4 + 96))(v4, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::PeerConnection::DestroyDataChannelTransport(webrtc::RTCError)::$_0>, &v6);
  if (*(a1 + 672) == 1)
  {
    if (*(a1 + 671) < 0)
    {
      operator delete(*(a1 + 648));
    }

    *(a1 + 672) = 0;
  }

  if (*(a1 + 735) < 0)
  {
    operator delete(*(a1 + 712));
  }

  *(a1 + 712) = 0;
  *(a1 + 735) = 0;
  return (*(*(a1 - 8) + 184))(v3);
}

void webrtc::PeerConnection::OnSctpDataChannelStateChanged(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 624);
  if (v3)
  {
    webrtc::RTCStatsCollector::OnSctpDataChannelStateChanged(v3, a2, a3);
  }
}

uint64_t webrtc::PeerConnection::GetSctpSslRole_n(webrtc::PeerConnection *this)
{
  if (*(this + 712) == 1)
  {
    return webrtc::JsepTransportController::GetDtlsRole(*(this + 117), this + 86) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk towebrtc::PeerConnection::GetSctpSslRole_n(webrtc::PeerConnection *this)
{
  if (*(this + 704) == 1)
  {
    return webrtc::JsepTransportController::GetDtlsRole(*(this + 116), this + 85) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::PeerConnection::GetSslRole(void *a1, uint64_t a2, _DWORD *a3)
{
  if ((*(*a1 + 208))(a1) && (*(*a1 + 216))(a1))
  {
    v6 = *(a1[8] + 24);
    v17 = a1;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    LOBYTE(v20) = 0;
    BYTE4(v20) = 0;
    v19[0] = &v20;
    v19[1] = &v17;
    (*(*v6 + 96))(v6, v19, webrtc::FunctionView<void ()(void)>::CallVoidPtr<std::optional<webrtc::SSLRole> webrtc::Thread::BlockingCall<webrtc::PeerConnection::GetSslRole(std::string const&,webrtc::SSLRole *)::$_0,std::optional<webrtc::SSLRole>,void>(webrtc::PeerConnection::GetSslRole(std::string const&,webrtc::SSLRole *)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v16);
    v15 = v20;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v15 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((v20 & 0x100000000) == 0)
    {
      return 0;
    }

    *a3 = v15;
    return 1;
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    return 0;
  }
}

void webrtc::PeerConnection::sctp_transport_name(webrtc::PeerConnection *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 680) == 1 && *(this + 118))
  {
    if (*(this + 743) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(this + 90), *(this + 91));
      a2[1].__r_.__value_.__s.__data_[0] = 1;
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 45);
      a2->__r_.__value_.__r.__words[2] = *(this + 92);
      a2[1].__r_.__value_.__s.__data_[0] = 1;
    }
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }
}

void webrtc::PeerConnection::sctp_mid(webrtc::PeerConnection *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(this + 680) == 1)
  {
    if (*(this + 679) < 0)
    {
      v2 = a2;
      std::string::__init_copy_ctor_external(a2, *(this + 82), *(this + 83));
      a2 = v2;
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 41);
      a2->__r_.__value_.__r.__words[2] = *(this + 84);
    }

    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void non-virtual thunk towebrtc::PeerConnection::sctp_mid(webrtc::PeerConnection *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  if (*(this + 672) == 1)
  {
    if (*(this + 671) < 0)
    {
      v2 = a2;
      std::string::__init_copy_ctor_external(a2, *(this + 81), *(this + 82));
      a2 = v2;
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(this + 648);
      a2->__r_.__value_.__r.__words[2] = *(this + 83);
    }

    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t webrtc::PeerConnection::GetPooledCandidateStats@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 592) + 4);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v2 == 1)
  {
    return (*(**(this + 552) + 56))(*(this + 552), a2);
  }

  return this;
}

void webrtc::PeerConnection::GetTransportStatsByNames(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  if (*(*(a1 + 592) + 4))
  {
    v6 = a1;
    {
      operator new();
    }

    v7 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
    v58 = v7[217];
    v59 = v7;
    v7[217] = 0;
    v4[1] = 0;
    v4[2] = 0;
    v61 = (v4 + 1);
    *v4 = v4 + 1;
    v10 = *a2;
    v8 = a2 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      v60 = v6;
      do
      {
        memset(__p, 0, sizeof(__p));
        *__dst = 0u;
        v11 = *(v6 + 936);
        v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v11 + 384, v9 + 4);
        if ((v11 + 392) == v12 || (v13 = v12[7]) == 0 || !webrtc::JsepTransport::GetStats(v13, __dst))
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            v3 = v3 & 0xFFFFFFFF00000000 | 0x4873;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
          }

          v37 = __p[1];
          if (!__p[1])
          {
LABEL_57:
            if (SHIBYTE(__p[0]) < 0)
            {
              goto LABEL_80;
            }

            goto LABEL_58;
          }

          v38 = __p[2];
          v39 = __p[1];
          if (__p[2] == __p[1])
          {
LABEL_56:
            __p[2] = v37;
            operator delete(v39);
            goto LABEL_57;
          }

          while (2)
          {
            if (*(v38 - 17) < 0)
            {
              operator delete(*(v38 - 5));
              v40 = *(v38 - 14);
              if (v40)
              {
                goto LABEL_48;
              }

LABEL_45:
              v41 = *(v38 - 17);
              if (v41)
              {
LABEL_52:
                v44 = *(v38 - 16);
                v45 = v41;
                if (v44 != v41)
                {
                  do
                  {
                    webrtc::Candidate::~Candidate(v44 - 58);
                  }

                  while (v44 != v41);
                  v45 = *(v38 - 17);
                }

                *(v38 - 16) = v41;
                operator delete(v45);
              }
            }

            else
            {
              v40 = *(v38 - 14);
              if (!v40)
              {
                goto LABEL_45;
              }

LABEL_48:
              v42 = *(v38 - 13);
              v43 = v40;
              if (v42 != v40)
              {
                do
                {
                  webrtc::Candidate::~Candidate(v42 - 64);
                  webrtc::Candidate::~Candidate(v42 - 118);
                  v42 -= 133;
                }

                while (v42 != v40);
                v43 = *(v38 - 14);
              }

              *(v38 - 13) = v40;
              operator delete(v43);
              v41 = *(v38 - 17);
              if (v41)
              {
                goto LABEL_52;
              }
            }

            v38 -= 24;
            if (v38 == v37)
            {
              v39 = __p[1];
              goto LABEL_56;
            }

            continue;
          }
        }

        v62 = v3;
        v14 = v8;
        v15 = v4;
        v16 = *v61;
        if (!*v61)
        {
LABEL_35:
          operator new();
        }

        v17 = *(v9 + 55);
        if (v17 >= 0)
        {
          v18 = v9 + 4;
        }

        else
        {
          v18 = v9[4];
        }

        if (v17 >= 0)
        {
          v19 = *(v9 + 55);
        }

        else
        {
          v19 = v9[5];
        }

        while (1)
        {
          while (1)
          {
            v20 = v16;
            v23 = v16[4];
            v21 = v16 + 4;
            v22 = v23;
            v24 = *(v21 + 23);
            v25 = v24 >= 0 ? v21 : v22;
            v26 = v24 >= 0 ? *(v21 + 23) : v21[1];
            v27 = v26 >= v19 ? v19 : v26;
            v28 = memcmp(v18, v25, v27);
            if (v28)
            {
              break;
            }

            if (v19 >= v26)
            {
              goto LABEL_30;
            }

LABEL_16:
            v16 = *v20;
            if (!*v20)
            {
              goto LABEL_35;
            }
          }

          if (v28 < 0)
          {
            goto LABEL_16;
          }

LABEL_30:
          v29 = memcmp(v25, v18, v27);
          if (v29)
          {
            if ((v29 & 0x80000000) == 0)
            {
              break;
            }

            goto LABEL_34;
          }

          if (v26 >= v19)
          {
            break;
          }

LABEL_34:
          v16 = v20[1];
          if (!v16)
          {
            goto LABEL_35;
          }
        }

        v4 = v15;
        v8 = v14;
        v6 = v60;
        if (*(v20 + 79) < 0)
        {
          operator delete(v20[7]);
        }

        *(v20 + 7) = *__dst;
        v20[9] = __p[0];
        HIBYTE(__p[0]) = 0;
        LOBYTE(__dst[0]) = 0;
        v47 = v20[10];
        if (v47)
        {
          v48 = v20[11];
          v49 = v20[10];
          if (v48 == v47)
          {
LABEL_78:
            v20[11] = v47;
            operator delete(v49);
            goto LABEL_79;
          }

          while (2)
          {
            if (*(v48 - 17) < 0)
            {
              operator delete(*(v48 - 40));
              v50 = *(v48 - 112);
              if (v50)
              {
                goto LABEL_70;
              }

LABEL_67:
              v51 = *(v48 - 136);
              if (v51)
              {
LABEL_74:
                v54 = *(v48 - 128);
                v55 = v51;
                if (v54 != v51)
                {
                  do
                  {
                    webrtc::Candidate::~Candidate(v54 - 58);
                  }

                  while (v54 != v51);
                  v55 = *(v48 - 136);
                }

                *(v48 - 128) = v51;
                operator delete(v55);
              }
            }

            else
            {
              v50 = *(v48 - 112);
              if (!v50)
              {
                goto LABEL_67;
              }

LABEL_70:
              v52 = *(v48 - 104);
              v53 = v50;
              if (v52 != v50)
              {
                do
                {
                  webrtc::Candidate::~Candidate(v52 - 64);
                  webrtc::Candidate::~Candidate(v52 - 118);
                  v52 -= 133;
                }

                while (v52 != v50);
                v53 = *(v48 - 112);
              }

              *(v48 - 104) = v50;
              operator delete(v53);
              v51 = *(v48 - 136);
              if (v51)
              {
                goto LABEL_74;
              }
            }

            v48 -= 192;
            if (v48 == v47)
            {
              v49 = v20[10];
              goto LABEL_78;
            }

            continue;
          }
        }

LABEL_79:
        *(v20 + 5) = *&__p[1];
        v20[12] = __p[3];
        memset(&__p[1], 0, 24);
        v3 = v62;
        if (SHIBYTE(__p[0]) < 0)
        {
LABEL_80:
          operator delete(__dst[0]);
          v46 = v9[1];
          if (v46)
          {
            goto LABEL_81;
          }

          do
          {
LABEL_83:
            v56 = v9[2];
            v57 = *v56 == v9;
            v9 = v56;
          }

          while (!v57);
          goto LABEL_5;
        }

LABEL_58:
        v46 = v9[1];
        if (!v46)
        {
          goto LABEL_83;
        }

        do
        {
LABEL_81:
          v56 = v46;
          v46 = *v46;
        }

        while (v46);
LABEL_5:
        v9 = v56;
      }

      while (v56 != v8);
    }

    v59[217] = v58;
  }

  else
  {
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }
}

BOOL webrtc::PeerConnection::GetLocalCertificate(uint64_t a1, const void **a2, uint64_t *a3)
{
  result = 0;
  if (a3 && (*(*(a1 + 592) + 4) & 1) != 0)
  {
    v6 = *(a1 + 936);
    v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v6 + 384, a2);
    if ((v6 + 392) == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[7];
      if (v8)
      {
        v8 = *(v8 + 40);
        if (v8)
        {
          atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
        }
      }
    }

    v9 = *a3;
    *a3 = v8;
    if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
    {
      v10 = *(v9 + 8);
      *(v9 + 8) = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      MEMORY[0x2743DA540](v9, 0x1020C40D5A9D86FLL);
    }

    return *a3 != 0;
  }

  return result;
}

uint64_t *webrtc::PeerConnection::GetRemoteSSLCertChain@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 936);
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v4 + 384, a2);
  if ((v4 + 392) != result && (v6 = result[7]) != 0 && (v7 = *(v6 + 104)) != 0 && (result = *(v7 + 144)) != 0)
  {
    v8 = *(*result + 184);

    return v8();
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t webrtc::PeerConnection::NeedsIceRestart(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 64) + 24);
  v5[0] = a1;
  v5[1] = a2;
  v7 = 0;
  v6[0] = &v7;
  v6[1] = v5;
  (*(*v2 + 96))(v2, v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::NeedsIceRestart(std::string const&)::$_0,BOOL,void>(webrtc::PeerConnection::NeedsIceRestart(std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v4);
  return v7;
}

uint64_t non-virtual thunk towebrtc::PeerConnection::NeedsIceRestart(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 8;
  v3 = *(*(a1 + 56) + 24);
  v6[0] = v2;
  v6[1] = a2;
  v8 = 0;
  v7[0] = &v8;
  v7[1] = v6;
  (*(*v3 + 96))(v3, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::PeerConnection::NeedsIceRestart(std::string const&)::$_0,BOOL,void>(webrtc::PeerConnection::NeedsIceRestart(std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v5);
  return v8;
}

uint64_t webrtc::PeerConnection::GetCallStats@<X0>(webrtc::PeerConnection *this@<X0>, void *a2@<X8>)
{
  v4 = *(*(this + 8) + 40);
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == v4)
  {
    {
      operator new();
    }

    v7 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
    v8 = v7[217];
    v7[217] = 0;
    result = *(this + 72);
    if (result)
    {
      result = (*(*result + 128))(result);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      a2[3] = -1;
    }

    v7[217] = v8;
  }

  else
  {
    v5 = *(*(this + 8) + 40);
    v10 = this;
    v11[0] = a2;
    *a2 = 0;
    *(a2 + 2) = 0;
    *(a2 + 1) = xmmword_273B92200;
    v11[1] = &v10;
    return (*(*v5 + 96))(v5, v11, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::Call::Stats webrtc::Thread::BlockingCall<webrtc::PeerConnection::GetCallStats(void)::$_0,webrtc::Call::Stats,void>(webrtc::PeerConnection::GetCallStats(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v9);
  }

  return result;
}

uint64_t webrtc::PeerConnection::GetAudioDeviceStats@<X0>(webrtc::PeerConnection *this@<X0>, _BYTE *a2@<X8>)
{
  result = *(*(this + 8) + 96);
  if (result)
  {
    v3 = *(*(*(*result + 24))(result) + 104);

    return v3();
  }

  else
  {
    *a2 = 0;
    a2[40] = 0;
  }

  return result;
}

void webrtc::PeerConnection::TeardownDataChannelTransport_n(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 712) == 1)
  {
    v4 = (a1 + 688);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      if ((*(a1 + 712) & 1) == 0)
      {
        __break(1u);
        return;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc");
    }

    if (*(a1 + 712) == 1)
    {
      if (*(a1 + 711) < 0)
      {
        operator delete(*v4);
      }

      *(a1 + 712) = 0;
    }
  }

  v12 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v14[0] = *(a2 + 32);
  *(v14 + 3) = *(a2 + 35);
  webrtc::DataChannelController::TeardownDataChannelTransport_n((a1 + 752), &v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t webrtc::PeerConnection::ValidateBundleSettings(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  v6 = (a3 + 8);
  while (v6 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, (v4 + 8)) || (*(v4 + 4) & 1) != 0 || (*(v4 + 5) & 1) != 0 || *v4 || *(*(v4 + 32) + 32) == 1)
  {
    v4 += 40;
    if (v4 == a2[1])
    {
      return 1;
    }
  }

  return 0;
}

uint64_t non-virtual thunk towebrtc::PeerConnection::ValidateBundleSettings(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = *a2;
  if (*a2 == a2[1])
  {
    return 1;
  }

  v6 = (a3 + 8);
  while (v6 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3, (v4 + 8)) || (*(v4 + 4) & 1) != 0 || (*(v4 + 5) & 1) != 0 || *v4 || *(*(v4 + 32) + 32) == 1)
  {
    v4 += 40;
    if (v4 == a2[1])
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *webrtc::PeerConnection::ReportSdpBundleUsage(webrtc::PeerConnection *this, const webrtc::SessionDescriptionInterface *a2)
{
  result = (*(*a2 + 32))(a2);
  if (&v7 <= "BUNDLE" && &v8 > "BUNDLE")
  {
    __break(1u);
  }

  else
  {
    result = (*(*a2 + 32))(a2);
    v5 = *result;
    v6 = result[1];
    if (*result != v6)
    {
      do
      {
        result = (*(**(v5 + 32) + 16))(*(v5 + 32));
        v5 += 40;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t *non-virtual thunk towebrtc::PeerConnection::ReportSdpBundleUsage(webrtc::PeerConnection *this, const webrtc::SessionDescriptionInterface *a2)
{
  result = (*(*a2 + 32))(a2);
  if (&v7 <= "BUNDLE" && &v8 > "BUNDLE")
  {
    __break(1u);
  }

  else
  {
    result = (*(*a2 + 32))(a2);
    v5 = *result;
    v6 = result[1];
    if (*result != v6)
    {
      do
      {
        result = (*(**(v5 + 32) + 16))(*(v5 + 32));
        v5 += 40;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void webrtc::PeerConnection::AddRemoteCandidate(uint64_t a1, void **a2, size_t a3, std::string *a4)
{
  webrtc::Candidate::Candidate(&v12, a4);
  v16 = 0;
  if (v15 < 0)
  {
    v14 = 0;
    *v13 = 0;
    v17 = 0;
    v7 = *(a1 + 592);
    if (!v7)
    {
LABEL_4:
      if (a3 < 0x7FFFFFFFFFFFFFF8)
      {
        if (a3 > 0x16)
        {
          operator new();
        }

        v10 = a3;
        v8 = (&__p + a3);
        if (&__p > a2 || v8 <= a2)
        {
          if (a3)
          {
            memmove(&__p, a2, a3);
          }

          *v8 = 0;
          webrtc::Candidate::Candidate(v11, &v12);
          operator new();
        }

        __break(1u);
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    v15 = 0;
    LOBYTE(v13) = 0;
    v17 = 0;
    v7 = *(a1 + 592);
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  atomic_fetch_add_explicit(v7, 1u, memory_order_relaxed);
  goto LABEL_4;
}

void webrtc::PeerConnection::ReportTransportStats(uint64_t a1, void ***a2)
{
  v3 = &unk_280905000;
  {
    goto LABEL_126;
  }

  while (1)
  {
    v4 = pthread_getspecific(v3[403][11]);
    HIDWORD(v66) = v4[217];
    v4[217] = 0;
    v75[0] = 0;
    v75[1] = 0;
    v67 = v4;
    v74 = v75;
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      do
      {
        v7 = *(*(*v5 + 2) + 160);
        if (v7)
        {
          v8 = (*(*v7 + 88))(v7);
          if (v9 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_123;
          }

          if (v9 > 0x16)
          {
            operator new();
          }

          BYTE7(v70) = v9;
          v10 = (__p + v9);
          if (__p <= v8 && v10 > v8)
          {
            __break(1u);
LABEL_123:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (v9)
          {
            memmove(__p, v8, v9);
          }

          *v10 = 0;
          v72 = __p;
          v12 = std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v74, __p);
          v13 = (*(**v5 + 32))();
          v14 = v12[8];
          if (!v14)
          {
LABEL_22:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v15 = v14;
              v16 = *(v14 + 28);
              if (v13 >= v16)
              {
                break;
              }

              v14 = *v15;
              if (!*v15)
              {
                goto LABEL_22;
              }
            }

            if (v16 >= v13)
            {
              break;
            }

            v14 = v15[1];
            if (!v14)
            {
              goto LABEL_22;
            }
          }

          if (SBYTE7(v70) < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v5;
      }

      while (v5 != v6);
    }

    if (*(a1 + 712))
    {
      v17 = *(a1 + 936);
      v18 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v17 + 408, (a1 + 688));
      if ((v17 + 416) != v18)
      {
        v19 = v18[7];
        if (v19)
        {
          v20 = *(v19 + 104);
          if (v20)
          {
            v21 = *(v20 + 144);
            if (v21)
            {
              __p[0] = (*(*v21 + 16))(v21);
              v22 = std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v74, __p[0])[8];
              if (!v22)
              {
LABEL_36:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v23 = v22;
                  v24 = *(v22 + 28);
                  if (v24 < 3)
                  {
                    break;
                  }

                  v22 = *v23;
                  if (!*v23)
                  {
                    goto LABEL_36;
                  }
                }

                if (v24 == 2)
                {
                  break;
                }

                v22 = v23[1];
                if (!v22)
                {
                  goto LABEL_36;
                }
              }
            }
          }
        }
      }
    }

    v25 = v74;
    if (v74 == v75)
    {
      break;
    }

    a2 = &v72;
    v3 = v73;
    while (1)
    {
      v73[0] = 0;
      v73[1] = 0;
      v72 = v73;
      v26 = v25[7];
      if (v26 != v25 + 8)
      {
        operator new();
      }

      v70 = 0u;
      v71 = 0u;
      *__p = 0u;
      v27 = *(a1 + 936);
      v28 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v27 + 384, v25 + 4);
      if ((v27 + 392) == v28)
      {
        goto LABEL_96;
      }

      v29 = v28[7];
      if (!v29)
      {
        goto LABEL_96;
      }

      Stats = webrtc::JsepTransport::GetStats(v29, __p);
      if (!Stats)
      {
        goto LABEL_96;
      }

      v35 = *(&v70 + 1);
      if (*(&v70 + 1) != v71)
      {
        break;
      }

      if (!*(&v70 + 1))
      {
        goto LABEL_47;
      }

LABEL_97:
      v58 = v71;
      if (v71 == v35)
      {
        *&v71 = v35;
        operator delete(v35);
        if (SBYTE7(v70) < 0)
        {
          goto LABEL_99;
        }

        goto LABEL_48;
      }

      do
      {
        if (*(v58 - 17) < 0)
        {
          operator delete(*(v58 - 5));
          v60 = *(v58 - 14);
          if (!v60)
          {
LABEL_109:
            v61 = *(v58 - 17);
            if (!v61)
            {
              goto LABEL_106;
            }

LABEL_116:
            v64 = *(v58 - 16);
            v65 = v61;
            if (v64 != v61)
            {
              do
              {
                webrtc::Candidate::~Candidate(v64 - 58);
              }

              while (v64 != v61);
              v65 = *(v58 - 17);
            }

            *(v58 - 16) = v61;
            operator delete(v65);
            goto LABEL_106;
          }
        }

        else
        {
          v60 = *(v58 - 14);
          if (!v60)
          {
            goto LABEL_109;
          }
        }

        v62 = *(v58 - 13);
        v63 = v60;
        if (v62 != v60)
        {
          do
          {
            webrtc::Candidate::~Candidate(v62 - 64);
            webrtc::Candidate::~Candidate(v62 - 118);
            v62 -= 133;
          }

          while (v62 != v60);
          v63 = *(v58 - 14);
        }

        *(v58 - 13) = v60;
        operator delete(v63);
        v61 = *(v58 - 17);
        if (v61)
        {
          goto LABEL_116;
        }

LABEL_106:
        v58 -= 24;
      }

      while (v58 != v35);
      *&v71 = v35;
      operator delete(*(&v70 + 1));
      if ((SBYTE7(v70) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_99:
      operator delete(__p[0]);
      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v73[0]);
      v36 = v25[1];
      if (v36)
      {
        goto LABEL_100;
      }

      do
      {
LABEL_102:
        v59 = v25[2];
        v46 = *v59 == v25;
        v25 = v59;
      }

      while (!v46);
LABEL_39:
      v25 = v59;
      if (v59 == v75)
      {
        goto LABEL_121;
      }
    }

    while (1)
    {
      v37 = v35[10];
      v38 = v35[11];
      if (v37 != v38)
      {
        break;
      }

LABEL_50:
      v35 += 24;
      if (v35 == v71)
      {
        goto LABEL_96;
      }
    }

    v39 = v37 + 175;
    while (*(v39 - 175) != 1)
    {
      v40 = v39 + 889;
      v39 += 1064;
      if (v40 == v38)
      {
        goto LABEL_50;
      }
    }

    v41 = v39 - 23;
    v42 = *v39;
    if (*v39 < 0)
    {
      if (*(v39 - 15) == 3)
      {
        v43 = *v41;
LABEL_61:
        v44 = *v43;
        v45 = v43[2];
        v46 = v44 == webrtc::TCP_PROTOCOL_NAME && v45 == 112;
        if (v46)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v43 = v39 - 23;
      if (v42 == 3)
      {
        goto LABEL_61;
      }
    }

    if (*(v39 + 153) != 3)
    {
      goto LABEL_75;
    }

    v47 = (v39 + 1);
    v48 = v39[24];
    if (v48 < 0)
    {
      if (*(v39 + 9) != 3)
      {
        goto LABEL_75;
      }

      v47 = *v47;
    }

    else if (v48 != 3)
    {
      goto LABEL_75;
    }

    v49 = *v47;
    v50 = *(v47 + 2);
    if (v49 != webrtc::TCP_PROTOCOL_NAME || v50 != 112)
    {
LABEL_75:
      if ((v42 & 0x80) != 0)
      {
        if (*(v39 - 15) != 3)
        {
          goto LABEL_124;
        }

        v41 = *v41;
      }

      else if (v42 != 3)
      {
        goto LABEL_124;
      }

      v52 = *v41;
      v53 = v41[2];
      if (v52 != webrtc::UDP_PROTOCOL_NAME || v53 != 112)
      {
LABEL_124:
        webrtc::webrtc_checks_impl::UnreachableCodeReached(Stats);
      }
    }

LABEL_85:
    v55 = *(v39 + 57);
    if (v55 == 2 || v55 == 30)
    {
      goto LABEL_96;
    }

    v56 = v39[48];
    if (v56 < 0)
    {
      v57 = *(v39 + 33);
      if (v55)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v57 = v39[48];
      if (v55)
      {
        goto LABEL_125;
      }
    }

    if (v57 && (v39[89] & 1) == 0)
    {
      if ((v56 & 0x80000000) != 0)
      {
        v56 = *(v39 + 33);
      }

      if (v56)
      {
LABEL_96:
        v35 = *(&v70 + 1);
        if (!*(&v70 + 1))
        {
LABEL_47:
          if (SBYTE7(v70) < 0)
          {
            goto LABEL_99;
          }

LABEL_48:
          std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v73[0]);
          v36 = v25[1];
          if (!v36)
          {
            goto LABEL_102;
          }

          do
          {
LABEL_100:
            v59 = v36;
            v36 = *v36;
          }

          while (v36);
          goto LABEL_39;
        }

        goto LABEL_97;
      }
    }

LABEL_125:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/peer_connection.cc", 2812, "!local.address().hostname().empty() && local.address().IsUnresolvedIP()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v31, v32, v33, v34, v66);
LABEL_126:
    {
      operator new();
    }
  }

LABEL_121:
  std::__tree<std::__value_type<std::string,std::set<webrtc::MediaType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<webrtc::MediaType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<webrtc::MediaType>>>>::destroy(v75[0]);
  v67[217] = BYTE4(v66);
}

uint64_t webrtc::PeerConnection::OnTransportChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*(*(a1 + 64) + 96))
  {
    v9 = (*(*a1 + 760))(a1);
    v10 = *(v9 + 48);
    v11 = *(v9 + 56);
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  if (*(a1 + 712) == 1)
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    v14 = *(a1 + 711);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 696);
    }

    if (v13 == v14)
    {
      v16 = v12 >= 0 ? a2 : *a2;
      v17 = v15 >= 0 ? (a1 + 688) : *(a1 + 688);
      if (!memcmp(v16, v17, v13))
      {
        v19 = *(a1 + 768);
        if (v19 && v19 != a5)
        {
          webrtc::DataChannelController::set_data_channel_transport((a1 + 752), a5);
        }

        v20 = *a4;
        if (*a4)
        {
          v21 = *(a1 + 584);
          if (v21)
          {
            atomic_fetch_add_explicit(v21, 1u, memory_order_relaxed);
            v20 = *a4;
          }

          v22 = (*(**(v20 + 144) + 16))(*(v20 + 144));
          if (*(v22 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v22, *(v22 + 8));
          }

          else
          {
            v23 = *v22;
            __p.__r_.__value_.__r.__words[2] = *(v22 + 16);
            *&__p.__r_.__value_.__l.__data_ = v23;
          }

          operator new();
        }
      }
    }
  }

  return 1;
}

uint64_t webrtc::PeerConnection::StartSctpTransport(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 592);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  v4 = result;
  if (*(result + 680))
  {
    if (*(result + 679) < 0)
    {
      v3 = a2;
      std::string::__init_copy_ctor_external(&__p, *(result + 656), *(result + 664));
      a2 = v3;
    }

    else
    {
      __p = *(result + 656);
    }

    v6 = *a2;
    v7 = *(a2 + 2);
    operator new();
  }

  __break(1u);
  return result;
}

uint64_t webrtc::PeerConnection::GetCryptoOptions@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = 88;
  if (*(this + 424))
  {
    v3 = 392;
  }

  v4 = this + v3;
  *a2 = *v4;
  *(a2 + 4) = *(v4 + 4);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::PeerConnection::GetCryptoOptions@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = 88;
  if (*(this + 416))
  {
    v3 = 392;
  }

  v4 = (this + v3);
  *a2 = *(v4 - 2);
  *(a2 + 4) = *(v4 - 4);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v6 = *v4;
  v5 = v4[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t webrtc::PeerConnection::ClearStatsCache(uint64_t this)
{
  v1 = *(this + 616);
  if (v1)
  {
    *(v1 + 72) = 0;
  }

  v2 = *(this + 624);
  if (v2)
  {
    v3 = *(v2 + 472);
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v3 + 16, *(v3 + 24));
      MEMORY[0x2743DA540](v3, 0x1020C4043D65406);
    }

    *(v2 + 472) = 0;
    pthread_mutex_lock((v2 + 288));
    std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::destroy(v2 + 352, *(v2 + 360));
    *(v2 + 360) = 0;
    *(v2 + 368) = 0;
    *(v2 + 352) = v2 + 360;

    return pthread_mutex_unlock((v2 + 288));
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::PeerConnection::ClearStatsCache(uint64_t this)
{
  v1 = *(this + 608);
  if (v1)
  {
    *(v1 + 72) = 0;
  }

  v2 = *(this + 616);
  if (v2)
  {
    v3 = *(v2 + 472);
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v3 + 16, *(v3 + 24));
      MEMORY[0x2743DA540](v3, 0x1020C4043D65406);
    }

    *(v2 + 472) = 0;
    pthread_mutex_lock((v2 + 288));
    std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::destroy(v2 + 352, *(v2 + 360));
    *(v2 + 360) = 0;
    *(v2 + 368) = 0;
    *(v2 + 352) = v2 + 360;

    return pthread_mutex_unlock((v2 + 288));
  }

  return this;
}

BOOL webrtc::PeerConnection::ShouldFireNegotiationNeededEvent(webrtc::PeerConnection *this, int a2)
{
  v3 = *(this + 119);
  if (!(*(**(v3 + 8) + 192))(*(v3 + 8)))
  {
    return 1;
  }

  if (*(v3 + 236) != a2)
  {
    return 0;
  }

  if (!*(*(v3 + 136) + 48))
  {
    return *(v3 + 84) == 0;
  }

  result = 0;
  *(v3 + 233) = 0;
  *(v3 + 240) = 1;
  return result;
}

void webrtc::PeerConnectionInterface::CreateDataChannel(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 192))(v5);
  v3 = v8;
  if (LODWORD(v5[0]))
  {
    *a2 = 0;
    if (v3)
    {
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v5[1]);
    return;
  }

  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v4 = v7;
  v7 = 0;
  *a2 = v4;
  if (v6 < 0)
  {
    goto LABEL_9;
  }
}

uint64_t webrtc::PeerConnection::GetNetworkController(webrtc::PeerConnection *this)
{
  v2 = *(*(this + 8) + 40);
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
    v6 = *(*(*(**(this + 72) + 104))(*(this + 72)) + 232);

    return v6();
  }

  else
  {
    v4 = *(*(this + 8) + 40);
    v11 = 0;
    v9 = this;
    v10[0] = &v11;
    v10[1] = &v9;
    (*(*v4 + 96))(v4, v10, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::NetworkControllerInterface * webrtc::Thread::BlockingCall<webrtc::PeerConnection::GetNetworkController(void)::{lambda(void)#1},webrtc::NetworkControllerInterface *,void>(webrtc::PeerConnection::GetNetworkController(void)::{lambda(void)#1} &&,webrtc::Location const&)::{lambda(void)#1}>, &v8);
    return v11;
  }
}

uint64_t webrtc::PeerConnection::initial_offerer(webrtc::PeerConnection *this)
{
  v1 = *(this + 119);
  if (*(v1 + 401) == 1)
  {
    return *(v1 + 400) & 1;
  }

  else
  {
    return 0;
  }
}

void *webrtc::PeerConnection::GetTransceiversInternal@<X0>(void *this@<X0>, void *a2@<X8>)
{
  if (*(this[8] + 96))
  {
    this = (*(*this + 768))(this);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v3 = this[6];
    v4 = this[7];
    if (v4 != v3)
    {
      if (((v4 - v3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void webrtc::PeerConnection::session_id(webrtc::PeerConnection *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 655) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 79), *(this + 80));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 632);
    a2->__r_.__value_.__r.__words[2] = *(this + 81);
  }
}

uint64_t webrtc::PeerConnection::rtp_manager(webrtc::PeerConnection *this)
{
  return *(this + 120);
}

{
  return *(this + 120);
}

void non-virtual thunk towebrtc::PeerConnection::session_id(webrtc::PeerConnection *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 647) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 78), *(this + 79));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 39);
    a2->__r_.__value_.__r.__words[2] = *(this + 80);
  }
}

uint64_t non-virtual thunk towebrtc::PeerConnection::rtp_manager(webrtc::PeerConnection *this)
{
  return *(this + 119);
}

{
  return *(this + 119);
}

void webrtc::PeerConnectionSdpMethods::StartSctpTransport(webrtc::PeerConnectionSdpMethods *this)
{
  (*(*this + 216))(v1);
  if (v2 < 0)
  {
    operator delete(v1[1]);
  }
}

uint64_t webrtc::PeerConnectionInterface::IceServer::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = v7[3];
  v8 = v7[4];
  v10 = v6[3];
  if (v8 - v9 != v6[4] - v10)
  {
    return 0;
  }

  for (; v9 != v8; v10 += 24)
  {
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    v13 = *(v10 + 23);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v10 + 8);
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? v9 : *v9;
    v16 = v14 >= 0 ? v10 : *v10;
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }

    v9 += 24;
  }

  v17 = *(v7 + 71);
  if (v17 >= 0)
  {
    v18 = *(v7 + 71);
  }

  else
  {
    v18 = v7[7];
  }

  v19 = *(v6 + 71);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v6[7];
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v17 >= 0 ? v7 + 6 : v7[6];
  v22 = v20 >= 0 ? v6 + 6 : v6[6];
  if (memcmp(v21, v22, v18))
  {
    return 0;
  }

  v23 = *(v7 + 95);
  if (v23 >= 0)
  {
    v24 = *(v7 + 95);
  }

  else
  {
    v24 = v7[10];
  }

  v25 = *(v6 + 95);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = v6[10];
  }

  if (v24 != v25)
  {
    return 0;
  }

  v27 = v23 >= 0 ? v7 + 9 : v7[9];
  v28 = v26 >= 0 ? v6 + 9 : v6[9];
  if (memcmp(v27, v28, v24) || *(v7 + 24) != *(v6 + 24))
  {
    return 0;
  }

  v29 = *(v7 + 127);
  if (v29 >= 0)
  {
    v30 = *(v7 + 127);
  }

  else
  {
    v30 = v7[14];
  }

  v31 = *(v6 + 127);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = v6[14];
  }

  if (v30 != v31)
  {
    return 0;
  }

  v33 = v29 >= 0 ? v7 + 13 : v7[13];
  v34 = v32 >= 0 ? v6 + 13 : v6[13];
  if (memcmp(v33, v34, v30) || !std::operator==[abi:sn200100]<std::string,std::allocator<std::string>>(v7[16], v7[17], v6[16], v6[17]))
  {
    return 0;
  }

  v35 = v7[19];
  v36 = v7[20];
  v37 = v6[19];
  v38 = v6[20];

  return std::operator==[abi:sn200100]<std::string,std::allocator<std::string>>(v35, v36, v37, v38);
}

uint64_t std::operator==[abi:sn200100]<std::string,std::allocator<std::string>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  for (i = a3; ; i += 24)
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    v9 = *(i + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(i + 8);
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? v5 : *v5;
    v12 = v10 >= 0 ? i : *i;
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v5 += 24;
    if (v5 == a2)
    {
      return 1;
    }
  }

  return 0;
}

void webrtc::anonymous namespace::CodecLookupHelperForPeerConnection::~CodecLookupHelperForPeerConnection(webrtc::_anonymous_namespace_::CodecLookupHelperForPeerConnection *this)
{
  *this = &unk_288297F30;
  webrtc::CodecVendor::~CodecVendor((this + 16));
}

{
  *this = &unk_288297F30;
  webrtc::CodecVendor::~CodecVendor((this + 16));

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::PeerConnection::PeerConnection(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::Environment const&,webrtc::scoped_refptr<webrtc::ConnectionContext>,webrtc::PeerConnectionFactoryInterface::Options const&,BOOL,std::unique_ptr<webrtc::Call>,webrtc::PeerConnectionDependencies &,std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&,BOOL)::$_1,std::allocator<webrtc::PeerConnection::PeerConnection(webrtc::PeerConnectionInterface::RTCConfiguration const&,webrtc::Environment const&,webrtc::scoped_refptr<webrtc::ConnectionContext>,webrtc::PeerConnectionFactoryInterface::Options const&,BOOL,std::unique_ptr<webrtc::Call>,webrtc::PeerConnectionDependencies &,std::set<webrtc::SocketAddress> const&,std::vector<webrtc::RelayServerConfig> const&,BOOL)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288297F60;
  a2[1] = v2;
  return result;
}

void webrtc::CodecVendor::~CodecVendor(webrtc::CodecVendor *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = *(this + 9);
    if (v3 != v2)
    {
      v5 = v3 - 27;
      v6 = v3 - 27;
      v7 = v3 - 27;
      do
      {
        v8 = *v7;
        v7 -= 27;
        (*v8)(v6);
        v5 -= 27;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(this + 9);
    }

    *(this + 10) = v2;
    operator delete(v4);
  }

  v10 = *(this + 6);
  if (v10)
  {
    v11 = *(this + 7);
    v12 = *(this + 6);
    if (v11 != v10)
    {
      v13 = v11 - 27;
      v14 = v11 - 27;
      v15 = v11 - 27;
      do
      {
        v16 = *v15;
        v15 -= 27;
        (*v16)(v14);
        v13 -= 27;
        v9 = v14 == v10;
        v14 = v15;
      }

      while (!v9);
      v12 = *(this + 6);
    }

    *(this + 7) = v10;
    operator delete(v12);
  }

  v17 = *(this + 3);
  if (v17)
  {
    v18 = *(this + 4);
    v19 = *(this + 3);
    if (v18 != v17)
    {
      v20 = v18 - 27;
      v21 = v18 - 27;
      v22 = v18 - 27;
      do
      {
        v23 = *v22;
        v22 -= 27;
        (*v23)(v21);
        v20 -= 27;
        v9 = v21 == v17;
        v21 = v22;
      }

      while (!v9);
      v19 = *(this + 3);
    }

    *(this + 4) = v17;
    operator delete(v19);
  }

  v24 = *this;
  if (*this)
  {
    v25 = *(this + 1);
    v26 = *this;
    if (v25 != v24)
    {
      v27 = v25 - 27;
      v28 = v25 - 27;
      v29 = v25 - 27;
      do
      {
        v30 = *v29;
        v29 -= 27;
        (*v30)(v28);
        v27 -= 27;
        v9 = v28 == v24;
        v28 = v29;
      }

      while (!v9);
      v26 = *this;
    }

    *(this + 1) = v24;
    operator delete(v26);
  }
}

void std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::RtpTransceiverInterface>>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 3) + 1;
  if (!(v1 >> 61))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 2 > v1)
    {
      v1 = v2 >> 2;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      v1 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v1)
    {
      if (!(v1 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<webrtc::PeerConnectionInterface::IceServer>::__assign_with_size[abi:sn200100]<webrtc::PeerConnectionInterface::IceServer*,webrtc::PeerConnectionInterface::IceServer*>(uint64_t *a1, webrtc::PeerConnectionInterface::IceServer *a2, webrtc::PeerConnectionInterface::IceServer *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          webrtc::PeerConnectionInterface::IceServer::~IceServer((v10 - 176));
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x1745D1745D1745DLL)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xBA2E8BA2E8BA2ELL)
      {
        v14 = 0x1745D1745D1745DLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }
    }

    goto LABEL_32;
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0x2E8BA2E8BA2E8BA3 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::PeerConnectionInterface::IceServer::operator=(v8, v5);
        v5 = (v5 + 176);
        v8 += 176;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 = (v15 - 176);
      webrtc::PeerConnectionInterface::IceServer::~IceServer(v15);
    }
  }

  else
  {
    if (v15 != v8)
    {
      v17 = &v16[a2];
      do
      {
        webrtc::PeerConnectionInterface::IceServer::operator=(v8, v5);
        v5 = (v5 + 176);
        v8 += 176;
        v16 -= 176;
      }

      while (v16);
      v15 = a1[1];
      v5 = v17;
    }

    v8 = v15;
    if (v5 != a3)
    {
      v8 = v15;
      v18 = v15;
      while (v18)
      {
        v19 = webrtc::PeerConnectionInterface::IceServer::IceServer(v18, v5);
        v5 = (v5 + 176);
        v18 = (v19 + 176);
        v8 += 176;
        if (v5 == a3)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_30:
  a1[1] = v8;
}

uint64_t webrtc::PeerConnectionInterface::IceServer::operator=(uint64_t __dst, _BYTE **a2)
{
  v2 = a2;
  v3 = __dst;
  if (__dst == a2)
  {
    *(__dst + 96) = *(a2 + 24);
    return __dst;
  }

  if (*(__dst + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v5 = v2[1];
    }

    std::string::__assign_no_alias<false>(__dst, a2, v5);
  }

  else if ((*(a2 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(__dst, *a2, a2[1]);
  }

  else
  {
    v4 = *a2;
    *(__dst + 16) = a2[2];
    *__dst = v4;
  }

  std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>((v3 + 24), v2[3], v2[4], 0xAAAAAAAAAAAAAAABLL * ((v2[4] - v2[3]) >> 3));
  v6 = *(v2 + 71);
  if (*(v3 + 71) < 0)
  {
    if (v6 >= 0)
    {
      v10 = (v2 + 6);
    }

    else
    {
      v10 = v2[6];
    }

    if (v6 >= 0)
    {
      v11 = *(v2 + 71);
    }

    else
    {
      v11 = v2[7];
    }

    std::string::__assign_no_alias<false>((v3 + 48), v10, v11);
    v8 = (v2 + 9);
    v9 = *(v2 + 95);
    if (*(v3 + 95) < 0)
    {
LABEL_26:
      if ((v9 & 0x80u) == 0)
      {
        v15 = v8;
      }

      else
      {
        v15 = v2[9];
      }

      if ((v9 & 0x80u) == 0)
      {
        v16 = v9;
      }

      else
      {
        v16 = v2[10];
      }

      std::string::__assign_no_alias<false>((v3 + 72), v15, v16);
      *(v3 + 96) = *(v2 + 24);
      v13 = (v2 + 13);
      v14 = *(v2 + 127);
      if ((*(v3 + 127) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_36:
      if ((v14 & 0x80u) == 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = v2[13];
      }

      if ((v14 & 0x80u) == 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = v2[14];
      }

      std::string::__assign_no_alias<false>((v3 + 104), v18, v19);
      goto LABEL_44;
    }
  }

  else if ((*(v2 + 71) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 48), v2[6], v2[7]);
    v8 = (v2 + 9);
    v9 = *(v2 + 95);
    if (*(v3 + 95) < 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v7 = *(v2 + 3);
    *(v3 + 64) = v2[8];
    *(v3 + 48) = v7;
    v8 = (v2 + 9);
    v9 = *(v2 + 95);
    if (*(v3 + 95) < 0)
    {
      goto LABEL_26;
    }
  }

  if ((v9 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 72), v2[9], v2[10]);
    *(v3 + 96) = *(v2 + 24);
    v13 = (v2 + 13);
    v14 = *(v2 + 127);
    if (*(v3 + 127) < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = *v8;
    *(v3 + 88) = *(v8 + 2);
    *(v3 + 72) = v12;
    *(v3 + 96) = *(v2 + 24);
    v13 = (v2 + 13);
    v14 = *(v2 + 127);
    if (*(v3 + 127) < 0)
    {
      goto LABEL_36;
    }
  }

LABEL_33:
  if ((v14 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 104), v2[13], v2[14]);
  }

  else
  {
    v17 = *v13;
    *(v3 + 120) = *(v13 + 2);
    *(v3 + 104) = v17;
  }

LABEL_44:
  std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>((v3 + 128), v2[16], v2[17], 0xAAAAAAAAAAAAAAABLL * ((v2[17] - v2[16]) >> 3));
  std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>((v3 + 152), v2[19], v2[20], 0xAAAAAAAAAAAAAAABLL * ((v2[20] - v2[19]) >> 3));
  return v3;
}

uint64_t std::vector<webrtc::scoped_refptr<webrtc::RTCCertificate>>::__assign_with_size[abi:sn200100]<webrtc::scoped_refptr<webrtc::RTCCertificate>*,webrtc::scoped_refptr<webrtc::RTCCertificate>*>(uint64_t result, atomic_uint **a2, atomic_uint **a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(result + 16);
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 8);
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          if (v13 && atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
          {
            v14 = *(v12 + 8);
            *(v12 + 8) = 0;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }

            MEMORY[0x2743DA540](v12, 0x1020C40D5A9D86FLL);
          }
        }

        while (v10 != v8);
        v11 = *v6;
      }

      *(v6 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 61))
    {
      v23 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v23 = a4;
      }

      v24 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v25 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v24)
      {
        v25 = v23;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }
    }

    goto LABEL_60;
  }

  v15 = *(result + 8);
  v16 = v15 - v8;
  if (a4 <= (v15 - v8) >> 3)
  {
    if (a2 != a3)
    {
      do
      {
        v20 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v20, 1u, memory_order_relaxed);
        }

        v21 = *v8;
        if (*v8 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
        {
          v22 = *(v21 + 1);
          *(v21 + 1) = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          result = MEMORY[0x2743DA540](v21, 0x1020C40D5A9D86FLL);
        }

        *v8++ = v20;
        ++v5;
      }

      while (v5 != a3);
      v15 = *(v6 + 8);
    }

    while (v15 != v8)
    {
      v30 = *(v15 - 1);
      v15 -= 8;
      v29 = v30;
      if (v30 && atomic_fetch_add(v29, 0xFFFFFFFF) == 1)
      {
        v31 = *(v29 + 8);
        *(v29 + 8) = 0;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        result = MEMORY[0x2743DA540](v29, 0x1020C40D5A9D86FLL);
      }
    }

    *(v6 + 8) = v8;
  }

  else
  {
    if (v15 != v8)
    {
      v32 = (a2 + v16);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          atomic_fetch_add_explicit(v17, 1u, memory_order_relaxed);
        }

        v18 = *v8;
        if (*v8 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
        {
          v19 = *(v18 + 1);
          *(v18 + 1) = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          result = MEMORY[0x2743DA540](v18, 0x1020C40D5A9D86FLL);
        }

        *v8++ = v17;
        ++v5;
        v16 -= 8;
      }

      while (v16);
      v15 = *(v6 + 8);
      v5 = v32;
    }

    v26 = v15;
    if (v5 != a3)
    {
      v26 = v15;
      v27 = v15;
      while (v27)
      {
        v28 = *v5;
        *v27 = *v5;
        if (v28)
        {
          atomic_fetch_add_explicit(v28, 1u, memory_order_relaxed);
        }

        ++v5;
        ++v27;
        v26 += 8;
        if (v5 == a3)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_60:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_48:
    *(v6 + 8) = v26;
  }

  return result;
}

void std::__optional_storage_base<webrtc::CryptoOptions,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<webrtc::CryptoOptions,false> const&>(uint64_t a1, int *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      v3 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *a1 = v3;
      if (a1 != a2)
      {
        v4 = *(a2 + 2);
        v5 = &v4[-*(a2 + 1)] >> 1;
        v6 = (a1 + 8);
        v7 = *(a2 + 1);

        std::vector<unsigned short>::__assign_with_size[abi:sn200100]<unsigned short *,unsigned short *>(v6, v7, v4, v5);
      }
    }
  }

  else if (*(a1 + 32))
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      *(a1 + 16) = v8;
      operator delete(v8);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    v9 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *a1 = v9;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 32) = 1;
  }
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::NetworkControllerInterface * webrtc::Thread::BlockingCall<webrtc::PeerConnection::GetNetworkController(void)::{lambda(void)#1},webrtc::NetworkControllerInterface *,void>(webrtc::PeerConnection::GetNetworkController(void)::{lambda(void)#1} &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t a1)
{
  result = (*(***(a1 + 8) + 528))(**(a1 + 8));
  **a1 = result;
  return result;
}

BOOL webrtc::RefCountedObject<webrtc::PeerConnection>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 248, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::PeerConnection>::~RefCountedObject(uint64_t a1)
{
  webrtc::PeerConnection::~PeerConnection((a1 - 8));
}

{
  webrtc::PeerConnection::~PeerConnection((a1 - 8));
}

{
  webrtc::PeerConnection::~PeerConnection((a1 - 16));
}

{
  webrtc::PeerConnection::~PeerConnection((a1 - 16));
}

BOOL webrtc::RefCountedObject<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 6, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>::~RefCountedObject(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882988F8;
  v4[0] = a1;
  v4[1] = webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::DestroyInternal;
  v4[2] = 0;
  webrtc::Event::Event(&v5, 0, 0);
  webrtc::MethodCall<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>,void>::Marshal(v4, *(a1 + 8));
  pthread_mutex_destroy(&v5);
  pthread_cond_destroy(&v6);
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t webrtc::RefCountedObject<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882988F8;
  v14 = a1;
  v15 = webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::DestroyInternal;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::mid(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 16);
  v4[1] = webrtc::RtpTransceiverInterface::mid;
  v4[2] = 0;
  LOBYTE(__p) = 0;
  v7 = 0;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<std::string>>::Marshal(v4, *(a1 + 8), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::sender@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::RtpTransceiverInterface::sender;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpSenderInterface>>::Marshal(v6, *(a1 + 8), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::receiver@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::RtpTransceiverInterface::receiver;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpReceiverInterface>>::Marshal(v6, *(a1 + 8), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::stopped(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::RtpTransceiverInterface::stopped;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::stopping(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::RtpTransceiverInterface::stopping;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::direction(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  v15 = webrtc::RtpTransceiverInterface::direction;
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::RtpTransceiverDirection>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::SetDirectionWithError(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = *(a1 + 16);
  v6[1] = webrtc::RtpTransceiverInterface::SetDirectionWithError;
  v6[2] = 0;
  v7 = 0;
  v10[14] = 0;
  v9 = 0;
  memset(v10, 0, 13);
  __p = 0;
  v11 = &v5;
  webrtc::Event::Event(&v12, 0, 0);
  webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::RtpTransceiverDirection>::Marshal(v6, *(a1 + 8), a3);
  pthread_mutex_destroy(&v12);
  pthread_cond_destroy(&v13);
  if ((v10[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::current_direction(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 16);
  v16 = webrtc::RtpTransceiverInterface::current_direction;
  v17 = 0;
  LOBYTE(v18) = 0;
  BYTE4(v18) = 0;
  webrtc::Event::Event(&v19, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v16(v15 + (v17 >> 1));
    LODWORD(v18) = v6;
    BYTE4(v18) = BYTE4(v6);
  }

  else
  {
    v12.n128_u64[0] = &v15;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<webrtc::RtpTransceiverDirection>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v19, v4, v5);
  }

  v7 = v18;
  pthread_mutex_destroy(&v19);
  pthread_cond_destroy(&v20);
  return v7 & 0xFFFFFFFFFFLL;
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::fired_direction(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 16);
  v16 = webrtc::RtpTransceiverInterface::fired_direction;
  v17 = 0;
  LOBYTE(v18) = 0;
  BYTE4(v18) = 0;
  webrtc::Event::Event(&v19, 0, 0);
  v2 = *(a1 + 8);
  v3 = &unk_280905000;
  {
    v3 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v3[403] + 88)) == v2)
  {
    v6 = v16(v15 + (v17 >> 1));
    LODWORD(v18) = v6;
    BYTE4(v18) = BYTE4(v6);
  }

  else
  {
    v12.n128_u64[0] = &v15;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<webrtc::RtpTransceiverDirection>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v19, v4, v5);
  }

  v7 = v18;
  pthread_mutex_destroy(&v19);
  pthread_cond_destroy(&v20);
  return v7 & 0xFFFFFFFFFFLL;
}

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::StopStandard(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4[0] = *(a1 + 16);
  v4[1] = webrtc::RtpTransceiverInterface::StopStandard;
  v4[2] = 0;
  v5 = 0;
  v8[14] = 0;
  v7 = 0;
  memset(v8, 0, 13);
  __p = 0;
  webrtc::Event::Event(&v9, 0, 0);
  webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError>::Marshal(v4, *(a1 + 8), a2);
  pthread_mutex_destroy(&v9);
  pthread_cond_destroy(&v10);
  if ((v8[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::StopInternal(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 16);
  v14 = webrtc::RtpTransceiverInterface::StopInternal;
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
    v12 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v10, &v9, &v8);
    v11(1, &v10, &v10);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v16, v4, v5);
  }

  pthread_mutex_destroy(&v16);
  return pthread_cond_destroy(&v17);
}

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::SetCodecPreferences(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v7[0] = *(a1 + 16);
  v7[1] = webrtc::RtpTransceiverInterface::SetCodecPreferences;
  v7[2] = 0;
  v8 = 0;
  v11[14] = 0;
  v10 = 0;
  memset(v11, 0, 13);
  __p = 0;
  v12 = v6;
  webrtc::Event::Event(&v13, 0, 0);
  webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpCodecCapability,-4711l>>::Marshal(v7, *(a1 + 8), a4);
  pthread_mutex_destroy(&v13);
  pthread_cond_destroy(&v14);
  if ((v11[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::codec_preferences(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v11[0] = *(a1 + 16);
  v11[1] = webrtc::RtpTransceiverInterface::codec_preferences;
  *__p = 0u;
  v13 = 0u;
  webrtc::Event::Event(&v14, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpCodecCapability>>::Marshal(v11, *(a1 + 8), a2);
  pthread_mutex_destroy(&v14);
  pthread_cond_destroy(&v15);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = __p[1];
    if (v13 != __p[1])
    {
      v6 = v13 - 160;
      v7 = (v13 - 160);
      v8 = (v13 - 160);
      do
      {
        v9 = *v8;
        v8 -= 20;
        (*v9)(v7);
        v6 -= 160;
        v10 = v7 == v4;
        v7 = v8;
      }

      while (!v10);
      v5 = __p[1];
    }

    *&v13 = v4;
    operator delete(v5);
  }
}

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::GetHeaderExtensionsToNegotiate(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 16);
  v8[1] = webrtc::RtpTransceiverInterface::GetHeaderExtensionsToNegotiate;
  *__p = 0u;
  v10 = 0u;
  webrtc::Event::Event(&v11, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpHeaderExtensionCapability>>::Marshal(v8, *(a1 + 8), a2);
  pthread_mutex_destroy(&v11);
  pthread_cond_destroy(&v12);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = v10;
    v6 = __p[1];
    if (v10 != __p[1])
    {
      do
      {
        v7 = *(v5 - 17);
        v5 -= 5;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[1];
    }

    *&v10 = v4;
    operator delete(v6);
  }
}

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::GetNegotiatedHeaderExtensions(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 16);
  v8[1] = webrtc::RtpTransceiverInterface::GetNegotiatedHeaderExtensions;
  *__p = 0u;
  v10 = 0u;
  webrtc::Event::Event(&v11, 0, 0);
  webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpHeaderExtensionCapability>>::Marshal(v8, *(a1 + 8), a2);
  pthread_mutex_destroy(&v11);
  pthread_cond_destroy(&v12);
  v4 = __p[1];
  if (__p[1])
  {
    v5 = v10;
    v6 = __p[1];
    if (v10 != __p[1])
    {
      do
      {
        v7 = *(v5 - 17);
        v5 -= 5;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[1];
    }

    *&v10 = v4;
    operator delete(v6);
  }
}

void webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::SetHeaderExtensionsToNegotiate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v7[0] = *(a1 + 16);
  v7[1] = webrtc::RtpTransceiverInterface::SetHeaderExtensionsToNegotiate;
  v7[2] = 0;
  v8 = 0;
  v11[14] = 0;
  v10 = 0;
  memset(v11, 0, 13);
  __p = 0;
  v12 = v6;
  webrtc::Event::Event(&v13, 0, 0);
  webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpHeaderExtensionCapability const,-4711l>>::Marshal(v7, *(a1 + 8), a4);
  pthread_mutex_destroy(&v13);
  pthread_cond_destroy(&v14);
  if ((v11[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

uint64_t webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t webrtc::MethodCall<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>,void>::Marshal(void *a1, void *a2)
{
  v4 = &unk_280905000;
  {
    v4 = &unk_280905000;
    if (v12)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v4[403] + 88)) == a2)
  {
    v8 = a1[1];
    v9 = a1[2];
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v11 = *(*v10 + v8);

      return v11();
    }

    else
    {

      return v8(v10);
    }
  }

  else
  {
    v15.n128_u64[0] = a1;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    return webrtc::Event::Wait((a1 + 4), v5, v6);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

void webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<std::string>>::Marshal(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v9)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) != a2)
  {
    v12.n128_u64[0] = a1;
    v13 = absl::internal_any_invocable::LocalManagerTrivial;
    v14 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<std::string>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v12, &v11, &v10);
    v13(1, &v12, &v12);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait((a1 + 64), v7, v8);
    *a3 = 0;
    *(a3 + 24) = 0;
    if (*(a1 + 48) != 1)
    {
      return;
    }

    goto LABEL_4;
  }

  webrtc::ReturnType<std::optional<std::string>>::Invoke<webrtc::RtpTransceiverInterface const,std::optional<std::string> (webrtc::RtpTransceiverInterface::*)(void)const>(a1 + 24, *a1, *(a1 + 8), *(a1 + 16));
  *a3 = 0;
  *(a3 + 24) = 0;
  if (*(a1 + 48) == 1)
  {
LABEL_4:
    *a3 = *(a1 + 24);
    *(a3 + 16) = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a3 + 24) = 1;
  }
}

double webrtc::ReturnType<std::optional<std::string>>::Invoke<webrtc::RtpTransceiverInterface const,std::optional<std::string> (webrtc::RtpTransceiverInterface::*)(void)const>(uint64_t a1, uint64_t a2, void (*a3)(void **__return_ptr, void *), uint64_t a4)
{
  v5 = (a2 + (a4 >> 1));
  if (a4)
  {
    (*(*v5 + a3))(__p);
    v7 = *(a1 + 24);
    if (v7 != v10)
    {
LABEL_3:
      if (v7)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *(a1 + 24) = 0;
        if (v10 != 1)
        {
          return result;
        }
      }

      else
      {
        result = *__p;
        *a1 = *__p;
        *(a1 + 16) = v9;
        __p[1] = 0;
        v9 = 0;
        __p[0] = 0;
        *(a1 + 24) = 1;
        if (v10 != 1)
        {
          return result;
        }
      }

LABEL_14:
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      return result;
    }
  }

  else
  {
    a3(__p, v5);
    v7 = *(a1 + 24);
    if (v7 != v10)
    {
      goto LABEL_3;
    }
  }

  if (v7)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    result = *__p;
    *a1 = *__p;
    *(a1 + 16) = v9;
    HIBYTE(v9) = 0;
    LOBYTE(__p[0]) = 0;
  }

  if (v10 == 1)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<std::string>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t **a1)
{
  v1 = *a1;
  webrtc::ReturnType<std::optional<std::string>>::Invoke<webrtc::RtpTransceiverInterface const,std::optional<std::string> (webrtc::RtpTransceiverInterface::*)(void)const>((*a1 + 3), **a1, (*a1)[1], (*a1)[2]);
  pthread_mutex_lock(v1 + 1);
  *(v1 + 177) = 1;
  pthread_cond_broadcast((v1 + 16));

  return pthread_mutex_unlock(v1 + 1);
}

uint64_t webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpSenderInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpSenderInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpSenderInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpReceiverInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v15)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v11 = a1[1];
    v12 = a1[2];
    v13 = (*a1 + (v12 >> 1));
    if (v12)
    {
      v11 = *(*v13 + v11);
    }

    v11(&v18, v13);
    v14 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    result = a1[3];
    a1[3] = v14;
    if (result)
    {
      (*(*result + 8))(result);
      result = v18.n128_u64[0];
      if (v18.n128_u64[0])
      {
        result = (*(*v18.n128_u64[0] + 8))(v18.n128_u64[0]);
      }
    }
  }

  else
  {
    v18.n128_u64[0] = a1;
    v19 = absl::internal_any_invocable::LocalManagerTrivial;
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpReceiverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v18, &v17, &v16);
    v19(1, &v18, &v18);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    result = webrtc::Event::Wait((a1 + 5), v7, v8);
  }

  v10 = a1[3];
  a1[3] = 0;
  *a3 = v10;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::scoped_refptr<webrtc::RtpReceiverInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(&v8, v4);
  v5 = v8;
  v8 = 0;
  v6 = *(v1 + 24);
  *(v1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));
  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,webrtc::RtpTransceiverDirection>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

__n128 webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::RtpTransceiverDirection>::Marshal@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (*a1 + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v9(&v15, v11, **(a1 + 64));
    *(a1 + 24) = v15;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18[0];
    *(a1 + 59) = *(v18 + 3);
  }

  else
  {
    v15 = a1;
    *(&v16 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::RtpTransceiverDirection>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v19, &v14);
    (*(&v16 + 1))(1, &v15, &v15);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait((a1 + 72), v7, v8);
  }

  *a3 = *(a1 + 24);
  result = *(a1 + 32);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a3 + 32) = *(a1 + 56);
  *(a3 + 35) = *(a1 + 59);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::RtpTransceiverDirection>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v7, v5, *v4);
  *(v1 + 24) = v7;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::optional<webrtc::RtpTransceiverDirection>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v5 = v2(v4);
  *(v1 + 24) = v5;
  *(v1 + 28) = BYTE4(v5);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

__n128 webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError>::Marshal@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (*a1 + (v10 >> 1));
    if (v10)
    {
      (*(*v11 + v9))(&v15);
      *(a1 + 24) = v15;
      if (*(a1 + 55) < 0)
      {
LABEL_8:
        operator delete(*(a1 + 32));
      }
    }

    else
    {
      v9(&v15, v11);
      *(a1 + 24) = v15;
      if (*(a1 + 55) < 0)
      {
        goto LABEL_8;
      }
    }

    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18[0];
    *(a1 + 59) = *(v18 + 3);
    goto LABEL_10;
  }

  v15 = a1;
  *(&v16 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
  v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v15, &v19, &v14);
  (*(&v16 + 1))(1, &v15, &v15);
  v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v8.var0 = 3000000;
  webrtc::Event::Wait((a1 + 72), v7, v8);
LABEL_10:
  *a3 = *(a1 + 24);
  result = *(a1 + 32);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a3 + 32) = *(a1 + 56);
  *(a3 + 35) = *(a1 + 59);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = (**a1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))(&v6);
    *(v1 + 24) = v6;
    if (*(v1 + 55) < 0)
    {
LABEL_5:
      operator delete(*(v1 + 32));
    }
  }

  else
  {
    v2(&v6, v4);
    *(v1 + 24) = v6;
    if (*(v1 + 55) < 0)
    {
      goto LABEL_5;
    }
  }

  *(v1 + 32) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9[0];
  *(v1 + 59) = *(v9 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

__n128 webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpCodecCapability,-4711l>>::Marshal@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = &unk_280905000;
  {
    v6 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  if (pthread_getspecific(*(v6[403] + 88)) == a2)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v11 = (*a1 + (v10 >> 1));
    if (v10)
    {
      v9 = *(*v11 + v9);
    }

    v9(&v15, v11, **(a1 + 64), *(*(a1 + 64) + 8));
    *(a1 + 24) = v15;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18[0];
    *(a1 + 59) = *(v18 + 3);
  }

  else
  {
    v15 = a1;
    *(&v16 + 1) = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpCodecCapability,-4711l>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v19, &v14);
    (*(&v16 + 1))(1, &v15, &v15);
    v7.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v8.var0 = 3000000;
    webrtc::Event::Wait((a1 + 72), v7, v8);
  }

  *a3 = *(a1 + 24);
  result = *(a1 + 32);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a1 + 48);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a3 + 32) = *(a1 + 56);
  *(a3 + 35) = *(a1 + 59);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::RtpTransceiverInterface,webrtc::RTCError,webrtc::ArrayView<webrtc::RtpCodecCapability,-4711l>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 64);
  v5 = (**a1 + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v5 + v2);
  }

  v2(&v7, v5, *v4, v4[1]);
  *(v1 + 24) = v7;
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10[0];
  *(v1 + 59) = *(v10 + 3);
  pthread_mutex_lock((v1 + 72));
  *(v1 + 185) = 1;
  pthread_cond_broadcast((v1 + 136));
  return pthread_mutex_unlock((v1 + 72));
}

void webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpCodecCapability>>::Marshal(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) == a2)
  {
    v10 = a1[1];
    v11 = a1[2];
    v12 = (*a1 + (v11 >> 1));
    if (v11)
    {
      (*(*v12 + v10))(&v23);
      v13 = a1[3];
      if (!v13)
      {
LABEL_14:
        v8 = v23;
        v9 = v24;
        goto LABEL_15;
      }
    }

    else
    {
      v10(&v23, v12);
      v13 = a1[3];
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    v14 = a1[4];
    v15 = v13;
    if (v14 != v13)
    {
      v16 = v14 - 160;
      v17 = v14 - 160;
      v18 = v14 - 160;
      do
      {
        v19 = *v18;
        v18 -= 160;
        (*v19)(v17);
        v16 -= 160;
        v20 = v17 == v13;
        v17 = v18;
      }

      while (!v20);
      v15 = a1[3];
    }

    a1[4] = v13;
    operator delete(v15);
    goto LABEL_14;
  }

  *&v23 = a1;
  v24 = absl::internal_any_invocable::LocalManagerTrivial;
  v25 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::RtpTransceiverInterface,std::vector<webrtc::RtpCodecCapability>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
  (*(*a2 + 8))(a2, &v23, &v22, &v21);
  v24(1, &v23, &v23);
  v6.var0 = 0x7FFFFFFFFFFFFFFFLL;
  v7.var0 = 3000000;
  webrtc::Event::Wait((a1 + 7), v6, v7);
  v8 = *(a1 + 3);
  v9 = a1[5];
LABEL_15:
  *a3 = v8;
  *(a3 + 16) = v9;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
}