uint64_t (***webrtc::WebRtcVoiceEngine::GetAudioState@<X0>(webrtc::WebRtcVoiceEngine *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 14);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::WebRtcVoiceEngine::GetRtpHeaderExtensions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<webrtc::RtpHeaderExtensionCapability>::__emplace_back_slow_path<char const* const&,int,webrtc::RtpTransceiverDirection>(a1);
}

uint64_t webrtc::WebRtcVoiceEngine::StartAecDump(uint64_t a1, void *a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    *a2 = 0;
    v4 = *(*v3 + 224);

    return v4();
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    return 0;
  }
}

void webrtc::WebRtcVoiceSendChannel::SetOptions(webrtc::WebRtcVoiceSendChannel *this, const webrtc::AudioOptions *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::AudioOptions::ToString(a2, __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }
  }

  webrtc::AudioOptions::SetAll((this + 136), a2);
  webrtc::WebRtcVoiceEngine::ApplyOptions(*(this + 12), (this + 136));
  if (*(this + 169) != 1 || *(this + 168) != 1 || *(this + 200) != 1)
  {
    v35.__r_.__value_.__s.__data_[0] = 0;
    v36 = 0;
    v11 = *(this + 31);
    v12 = this + 256;
    if (v11 != this + 256)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

  v35.__r_.__value_.__s.__data_[0] = 0;
  v36 = 0;
  if ((*(this + 199) & 0x80000000) == 0)
  {
    v35 = *(this + 176);
    v36 = 1;
    v11 = *(this + 31);
    v12 = this + 256;
    if (v11 != this + 256)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

  std::string::__init_copy_ctor_external(&v35, *(this + 22), *(this + 23));
  v36 = 1;
  v11 = *(this + 31);
  v12 = this + 256;
  if (v11 != this + 256)
  {
    do
    {
LABEL_13:
      v13 = *(v11 + 5);
      v14 = *(v13 + 824);
      v15 = v14 != 1 || v36 == 0;
      if (v15)
      {
        if (v14 == v36)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v16 = *(v13 + 823);
        if (v16 >= 0)
        {
          v17 = *(v13 + 823);
        }

        else
        {
          v17 = *(v13 + 808);
        }

        size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v35.__r_.__value_.__l.__size_;
        }

        if (v17 == size)
        {
          v19 = v16 >= 0 ? (v13 + 800) : *(v13 + 800);
          v20 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
          if (!memcmp(v19, v20, v17))
          {
LABEL_35:
            v22 = *(v11 + 1);
            if (!v22)
            {
              goto LABEL_53;
            }

            goto LABEL_51;
          }
        }
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v13 + 800, &v35);
      if (*(v13 + 8))
      {
        v21 = 40;
      }

      else
      {
        v23 = *(v13 + 624);
        if (*(v13 + 632) == v23)
        {
          goto LABEL_64;
        }

        if (*(v23 + 153))
        {
          v21 = 40;
        }

        else
        {
          v21 = 800;
        }
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v13 + 264, (v13 + v21));
      *(v13 + 240) = 0x7D0000007D00;
      if (*(v13 + 400) == 1 && *(v13 + 392) == 1)
      {
        v24 = *(v13 + 388);
        *(v13 + 240) = v24;
        *(v13 + 244) = v24;
        v25 = *(v13 + 624);
        if (*(v13 + 632) == v25)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v24 = 32000;
        v25 = *(v13 + 624);
        if (*(v13 + 632) == v25)
        {
LABEL_64:
          __break(1u);
          return;
        }
      }

      if (*(v25 + 153) == 1)
      {
        if (v24 >= *(v13 + 24))
        {
          v24 = *(v13 + 24);
        }

        *(v13 + 240) = v24;
      }

      v26 = *(v13 + 504);
      v38 = absl::internal_any_invocable::EmptyManager;
      v39 = 0;
      (*(*v26 + 32))(v26, v13 + 104, __p);
      (v38)(1, __p, __p);
      v22 = *(v11 + 1);
      if (!v22)
      {
        do
        {
LABEL_53:
          v27 = *(v11 + 2);
          v15 = *v27 == v11;
          v11 = v27;
        }

        while (!v15);
        goto LABEL_12;
      }

      do
      {
LABEL_51:
        v27 = v22;
        v22 = *v22;
      }

      while (v22);
LABEL_12:
      v11 = v27;
    }

    while (v27 != v12);
  }

LABEL_57:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::AudioOptions::ToString((this + 136), __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v36 == 1 && SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void webrtc::WebRtcVoiceSendChannel::~WebRtcVoiceSendChannel(webrtc::WebRtcVoiceSendChannel *this)
{
  while (*(this + 33))
  {
    webrtc::WebRtcVoiceSendChannel::RemoveSendStream(this, *(*(this + 31) + 32));
  }

  (*(this + 67))(1, this + 520, this + 520);
  (*(this + 63))(1, this + 488, this + 488);
  v2 = *(this + 60);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 57);
  if (v3)
  {
    *(this + 58) = v3;
    operator delete(v3);
  }

  if (*(this + 432) != 1 || (std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 376, *(this + 48)), (*(this + 359) & 0x80000000) == 0))
  {
    if ((*(this + 319) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(*(this + 42));
  if (*(this + 319) < 0)
  {
LABEL_10:
    operator delete(*(this + 37));
  }

LABEL_11:
  v4 = *(this + 34);
  if (v4)
  {
    v5 = *(this + 35);
    v6 = *(this + 34);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 34);
    }

    *(this + 35) = v4;
    operator delete(v6);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 32));
  if (*(this + 200) == 1 && *(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v8 = *(this + 13);
  if (v8)
  {
    v9 = *(this + 14);
    v10 = *(this + 13);
    if (v9 != v8)
    {
      v11 = v9 - 27;
      v12 = v9 - 27;
      v13 = v9 - 27;
      do
      {
        v14 = *v13;
        v13 -= 27;
        (*v14)(v12);
        v11 -= 27;
        v15 = v12 == v8;
        v12 = v13;
      }

      while (!v15);
      v10 = *(this + 13);
    }

    *(this + 14) = v8;
    operator delete(v10);
  }

  v16 = *(this + 10);
  *(v16 + 4) = 0;
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *this = &unk_288295EE8;
  *(this + 2) = &unk_288295F60;
  v17 = *(this + 3);
  if (v17)
  {
    if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }
}

{
  webrtc::WebRtcVoiceSendChannel::~WebRtcVoiceSendChannel(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebRtcVoiceSendChannel::RemoveSendStream(webrtc::WebRtcVoiceSendChannel *this, unsigned int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v11 = *(this + 32);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = this + 256;
  v13 = this + 256;
  do
  {
    v14 = *(v11 + 8);
    v15 = v14 >= a2;
    v16 = v14 < a2;
    if (v15)
    {
      v13 = v11;
    }

    v11 = *&v11[8 * v16];
  }

  while (v11);
  if (v13 != v12 && *(v13 + 8) <= a2)
  {
    v25 = *(v13 + 5);
    *(v25 + 520) = 0;
    (*(**(v25 + 504) + 48))(*(v25 + 504));
    v26 = *(v13 + 5);
    if (v26)
    {
      (*(*v26 + 32))(v26);
    }

    v27 = *(v13 + 1);
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
      v29 = v13;
      do
      {
        v28 = *(v29 + 2);
        v30 = *v28 == v29;
        v29 = v28;
      }

      while (!v30);
    }

    if (*(this + 31) == v13)
    {
      *(this + 31) = v28;
    }

    v31 = *(this + 32);
    --*(this + 33);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v31, v13);
    operator delete(v13);
    if (*(this + 33) || !*(this + 229))
    {
      return 1;
    }

    else
    {
      v32 = *(this + 31);
      if (v32 != v12)
      {
        do
        {
          v33 = *(v32 + 5);
          *(v33 + 520) = 0;
          (*(**(v33 + 504) + 48))(*(v33 + 504));
          v34 = *(v32 + 1);
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = *(v32 + 2);
              v30 = *v35 == v32;
              v32 = v35;
            }

            while (!v30);
          }

          v32 = v35;
        }

        while (v35 != v12);
      }

      *(this + 229) = 0;
      return 1;
    }
  }

  else
  {
LABEL_11:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    return 0;
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceSendChannel::~WebRtcVoiceSendChannel(webrtc::WebRtcVoiceSendChannel *this)
{
  webrtc::WebRtcVoiceSendChannel::~WebRtcVoiceSendChannel((this - 64));
}

{
  webrtc::WebRtcVoiceSendChannel::~WebRtcVoiceSendChannel((this - 64));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebRtcVoiceSendChannel::SetSenderParameters(webrtc::WebRtcVoiceSendChannel *this, const webrtc::AudioSenderParameter *a2)
{
  v132 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) != 0 || (webrtc::MediaChannelParameters::ToString(a2, __p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc"), (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0))
  {
    __p[0].__r_.__value_.__s.__data_[0] = 0;
    v128 = 0;
    if (*(this + 33) == 1)
    {
      goto LABEL_4;
    }

LABEL_18:
    v125[0] = 0;
    v126 = 0;
    goto LABEL_33;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
  __p[0].__r_.__value_.__s.__data_[0] = 0;
  v128 = 0;
  if (*(this + 33) != 1)
  {
    goto LABEL_18;
  }

LABEL_4:
  webrtc::RtpParameters::RtpParameters(&v122, (*(*(this + 31) + 40) + 528));
  if (v124 == v123)
  {
LABEL_199:
    __break(1u);
  }

  if (*(v123 + 264) != 1)
  {
LABEL_31:
    webrtc::RtpParameters::~RtpParameters(&v122.__r_.__value_.__l.__data_);
    v125[0] = 0;
    v126 = 0;
    if ((v128 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  if (v11 != v12)
  {
    do
    {
      webrtc::Codec::Codec(v129, v11);
      if (v124 == v123 || (*(v123 + 264) & 1) == 0)
      {
        goto LABEL_199;
      }

      v13 = webrtc::Codec::MatchesRtpCodec(v129, v123 + 160);
      webrtc::Codec::~Codec(v129);
      if (v13)
      {
        goto LABEL_12;
      }

      v11 = (v11 + 216);
    }

    while (v11 != v12);
    v11 = v12;
LABEL_12:
    v12 = *(a2 + 5);
  }

  if (v11 == v12)
  {
    v14 = v123;
    v15 = v124;
    if (v123 != v124)
    {
      v16 = v123 + 160;
      do
      {
        if (*(v14 + 264) == 1)
        {
          *(v14 + 160) = &unk_28829C078;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v14 + 240, *(v14 + 248));
          v17 = *(v14 + 216);
          if (v17)
          {
            *(v14 + 224) = v17;
            operator delete(v17);
          }

          if (*(v14 + 191) < 0)
          {
            operator delete(*(v14 + 168));
          }

          *(v14 + 264) = 0;
        }

        v14 += 272;
        v16 += 272;
      }

      while (v14 != v15);
    }

    v18 = *(*(this + 31) + 40);
    v117 = absl::internal_any_invocable::EmptyManager;
    v118 = 0;
    webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::SetRtpParameters(v119, v18, &v122, v116);
    if (v121 < 0)
    {
      operator delete(v120);
    }

    (v117)(1, v116, v116);
    goto LABEL_31;
  }

  if (v128 == 1)
  {
    webrtc::Codec::operator=(__p, v11);
    webrtc::RtpParameters::~RtpParameters(&v122.__r_.__value_.__l.__data_);
    v125[0] = 0;
    v126 = 0;
    if ((v128 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    webrtc::Codec::Codec(v125, __p);
    v126 = 1;
    goto LABEL_33;
  }

  webrtc::Codec::Codec(__p, v11);
  v128 = 1;
  webrtc::RtpParameters::~RtpParameters(&v122.__r_.__value_.__l.__data_);
  v125[0] = 0;
  v126 = 0;
  if (v128)
  {
    goto LABEL_32;
  }

LABEL_33:
  v19 = webrtc::WebRtcVoiceSendChannel::SetSendCodecs(this, a2 + 4, v125);
  if (v126 == 1)
  {
    webrtc::Codec::~Codec(v125);
  }

  if (!v19 || ((v20 = *(a2 + 8) - *(a2 + 7)) != 0 ? (v21 = *(a2 + 7)) : (v21 = 0), *(this + 35) != *(this + 34) ? (v22 = *(this + 34)) : (v22 = 0), !webrtc::ValidateRtpExtensions(v21, v20 >> 5, v22)))
  {
    v42 = 0;
    goto LABEL_73;
  }

  v23 = *(a2 + 88);
  if (v23 != *(this + 8))
  {
    *(this + 8) = v23;
    v24 = *(this + 31);
    if (v24 != (this + 256))
    {
      do
      {
        v37 = *(v24 + 5);
        *(v37 + 160) = *(a2 + 88);
        v38 = *(v37 + 504);
        v130 = absl::internal_any_invocable::EmptyManager;
        v131 = 0;
        (*(*v38 + 32))(v38, v37 + 104, v129);
        (v130)(1, v129, v129);
        v39 = *(v24 + 1);
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = *(v24 + 2);
            v41 = *v40 == v24;
            v24 = v40;
          }

          while (!v41);
        }

        v24 = v40;
      }

      while (v40 != (this + 256));
    }
  }

  v25 = (*(**(this + 29) + 224))(*(this + 29));
  webrtc::FilterRtpExtensions(a2 + 7, webrtc::RtpExtension::IsSupportedForAudio, 1, v25, &v122);
  v27 = *(this + 34);
  v26 = *(this + 35);
  v28 = *&v122.__r_.__value_.__l.__data_;
  if (v26 - v27 == v122.__r_.__value_.__l.__size_ - v122.__r_.__value_.__r.__words[0])
  {
    if (v27 == v26)
    {
      goto LABEL_89;
    }

    v29 = 0;
    while (1)
    {
      v30 = v28 + v29;
      v31 = *(v27 + v29 + 23);
      if (v31 >= 0)
      {
        v32 = *(v27 + v29 + 23);
      }

      else
      {
        v32 = *(v27 + v29 + 8);
      }

      v33 = *(v30 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(v30 + 8);
      }

      if (v32 != v33)
      {
        break;
      }

      v35 = v31 >= 0 ? (v27 + v29) : *(v27 + v29);
      v36 = v34 >= 0 ? (v28 + v29) : *v30;
      if (memcmp(v35, v36, v32) || *(v27 + v29 + 24) != *(v28 + v29 + 24) || *(v27 + v29 + 28) != *(v28 + v29 + 28))
      {
        break;
      }

      v29 += 32;
      if (v27 + v29 == v26)
      {
        goto LABEL_89;
      }
    }
  }

  *(this + 17) = v28;
  v122.__r_.__value_.__r.__words[0] = v27;
  v122.__r_.__value_.__l.__size_ = v26;
  v44 = *(this + 36);
  *(this + 36) = *(&v122.__r_.__value_.__l + 2);
  v122.__r_.__value_.__r.__words[2] = v44;
  v45 = *(this + 31);
  if (v45 != (this + 256))
  {
    v46 = this + 272;
    do
    {
      v47 = *(v45 + 5);
      if ((v47 + 168) != v46)
      {
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((v47 + 168), *(this + 34), *(this + 35), (*(this + 35) - *(this + 34)) >> 5);
      }

      if ((v47 + 600) != v46)
      {
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((v47 + 600), *(this + 34), *(this + 35), (*(this + 35) - *(this + 34)) >> 5);
      }

      v48 = *(v47 + 504);
      v130 = absl::internal_any_invocable::EmptyManager;
      v131 = 0;
      (*(*v48 + 32))(v48, v47 + 104, v129);
      (v130)(1, v129, v129);
      v49 = *(v45 + 1);
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = *(v45 + 2);
          v41 = *v50 == v45;
          v45 = v50;
        }

        while (!v41);
      }

      v45 = v50;
    }

    while (v50 != (this + 256));
  }

LABEL_89:
  v51 = *(a2 + 31);
  v52 = v51;
  v115 = a2;
  if ((v51 & 0x80u) != 0)
  {
    v51 = *(a2 + 2);
  }

  if (!v51)
  {
    goto LABEL_104;
  }

  v53 = (a2 + 8);
  v54 = (this + 296);
  if (this + 296 == a2 + 8)
  {
LABEL_103:
    v56 = *(this + 31);
    v57 = this + 256;
    if (v56 == this + 256)
    {
      goto LABEL_104;
    }

    goto LABEL_169;
  }

  if (*(this + 319) < 0)
  {
    if (v52 >= 0)
    {
      v58 = a2 + 8;
    }

    else
    {
      v58 = *v53;
    }

    std::string::__assign_no_alias<false>(v54, v58, v51);
    goto LABEL_103;
  }

  if ((v52 & 0x80000000) == 0)
  {
    v55 = *v53;
    *(this + 39) = *(a2 + 3);
    *&v54->__r_.__value_.__l.__data_ = v55;
    v56 = *(this + 31);
    v57 = this + 256;
    if (v56 == this + 256)
    {
      goto LABEL_104;
    }

    do
    {
LABEL_169:
      v101 = *(v56 + 5);
      v102 = (v101 + 136);
      v103 = *(v101 + 159);
      if (v103 >= 0)
      {
        v104 = *(v101 + 159);
      }

      else
      {
        v104 = *(v101 + 144);
      }

      v105 = *(v115 + 31);
      v106 = *(v115 + 2);
      if (v105 >= 0)
      {
        v107 = *(v115 + 31);
      }

      else
      {
        v107 = *(v115 + 2);
      }

      if (v104 != v107 || (v103 >= 0 ? (v108 = (v101 + 136)) : (v108 = *v102), v105 >= 0 ? (v109 = v53) : (v109 = *v53), memcmp(v108, v109, v104)))
      {
        if (v102 != v53)
        {
          if (v103 < 0)
          {
            if (v105 >= 0)
            {
              v111 = v53;
            }

            else
            {
              v111 = *v53;
            }

            std::string::__assign_no_alias<false>((v101 + 136), v111, v107);
          }

          else if (v105 < 0)
          {
            std::string::__assign_no_alias<true>((v101 + 136), *v53, v106);
          }

          else
          {
            v110 = *v53;
            *(v101 + 152) = v53[2];
            *v102 = v110;
          }
        }

        v112 = *(v101 + 504);
        v130 = absl::internal_any_invocable::EmptyManager;
        v131 = 0;
        (*(*v112 + 32))(v112, v101 + 104, v129);
        (v130)(1, v129, v129);
      }

      v113 = *(v56 + 1);
      if (v113)
      {
        do
        {
          v114 = v113;
          v113 = *v113;
        }

        while (v113);
      }

      else
      {
        do
        {
          v114 = *(v56 + 2);
          v41 = *v114 == v56;
          v56 = v114;
        }

        while (!v41);
      }

      v56 = v114;
    }

    while (v114 != v57);
    goto LABEL_104;
  }

  std::string::__assign_no_alias<true>(v54, *v53, *(a2 + 2));
  v56 = *(this + 31);
  v57 = this + 256;
  if (v56 != this + 256)
  {
    goto LABEL_169;
  }

LABEL_104:
  if (*(this + 432) != 1)
  {
    goto LABEL_143;
  }

  v59 = *(v115 + 21);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  *(this + 32) = v59;
  v67 = *(this + 31);
  if (v67 == (this + 256))
  {
LABEL_143:
    if (*(v115 + 81))
    {
      v90 = 2;
    }

    else
    {
      v90 = 1;
    }

    *(this + 80) = v90;
    v91 = *(this + 31);
    if (v91 != (this + 256))
    {
      do
      {
        v95 = *(v91 + 5);
        v96 = *(this + 80) == 2;
        if (*(v95 + 680) != v96)
        {
          *(v95 + 680) = v96;
          v97 = *(v95 + 504);
          v130 = absl::internal_any_invocable::EmptyManager;
          v131 = 0;
          (*(*v97 + 32))(v97, v95 + 104, v129);
          (v130)(1, v129, v129);
        }

        v98 = *(v91 + 1);
        if (v98)
        {
          do
          {
            v99 = v98;
            v98 = *v98;
          }

          while (v98);
        }

        else
        {
          do
          {
            v99 = *(v91 + 2);
            v41 = *v99 == v91;
            v91 = v99;
          }

          while (!v41);
        }

        v91 = v99;
      }

      while (v99 != (this + 256));
    }

    webrtc::WebRtcVoiceSendChannel::SetOptions(this, (v115 + 96));
    v42 = 1;
    v92 = v122.__r_.__value_.__r.__words[0];
    if (!v122.__r_.__value_.__r.__words[0])
    {
      goto LABEL_73;
    }

LABEL_148:
    size = v122.__r_.__value_.__l.__size_;
    v94 = v92;
    if (v122.__r_.__value_.__l.__size_ != v92)
    {
      do
      {
        v100 = *(size - 9);
        size -= 4;
        if (v100 < 0)
        {
          operator delete(*size);
        }
      }

      while (size != v92);
      v94 = v122.__r_.__value_.__r.__words[0];
    }

    v122.__r_.__value_.__l.__size_ = v92;
    operator delete(v94);
    goto LABEL_73;
  }

  v68 = 1;
  do
  {
    v69 = *(v67 + 5);
    v70 = *(v69 + 624);
    if (*(v69 + 632) == v70 || (*(v69 + 792) & 1) == 0)
    {
      goto LABEL_199;
    }

    v71 = *(this + 32);
    v72 = *(v70 + 20);
    v73 = v71;
    if ((v72 & 0x100000000) != 0)
    {
      if (v72 >= v71)
      {
        v74 = *(this + 32);
      }

      else
      {
        v74 = v72;
      }

      if (v72 < 1)
      {
        v74 = *(this + 32);
      }

      if (v71 >= 1)
      {
        v73 = v74;
      }

      else
      {
        v73 = v72;
      }
    }

    if (v73 <= 0)
    {
      goto LABEL_127;
    }

    v75 = *(v69 + 780);
    if (v73 < v75)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v76, v77, v78, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      }

      v68 = 0;
      goto LABEL_136;
    }

    v83 = *(v69 + 784);
    if (v75 == v83)
    {
LABEL_127:
      v84 = *(v69 + 776);
      *(v69 + 524) = v71;
      if ((*(v69 + 400) & 1) == 0)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (v83 >= v73)
      {
        v84 = v73;
      }

      else
      {
        v84 = *(v69 + 784);
      }

      *(v69 + 524) = v71;
      if ((*(v69 + 400) & 1) == 0)
      {
        goto LABEL_199;
      }
    }

    v85 = (v69 + 388);
    if (*(v69 + 392) != 1 || *v85 != v84)
    {
      v86 = v84 | 0x100000000;
      *v85 = v86;
      *(v69 + 392) = BYTE4(v86);
      v87 = *(v69 + 504);
      v130 = absl::internal_any_invocable::EmptyManager;
      v131 = 0;
      (*(*v87 + 32))(v87, v69 + 104, v129);
      (v130)(1, v129, v129);
    }

LABEL_136:
    v88 = *(v67 + 1);
    if (v88)
    {
      do
      {
        v89 = v88;
        v88 = *v88;
      }

      while (v88);
    }

    else
    {
      do
      {
        v89 = *(v67 + 2);
        v41 = *v89 == v67;
        v67 = v89;
      }

      while (!v41);
    }

    v67 = v89;
  }

  while (v89 != (this + 256));
  if (v68)
  {
    goto LABEL_143;
  }

  v42 = 0;
  v92 = v122.__r_.__value_.__r.__words[0];
  if (v122.__r_.__value_.__r.__words[0])
  {
    goto LABEL_148;
  }

LABEL_73:
  if (v128 == 1)
  {
    webrtc::Codec::~Codec(__p);
  }

  return v42;
}

void webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::SetRtpParameters(uint64_t a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = (*(**(a2 + 96) + 224))(*(a2 + 96));
  v68[0] = 0;
  v70 = 0;
  webrtc::CheckRtpParametersInvalidModificationAndValues(a2 + 528, a3, 0, 0, v68, v8, &v65);
  if (v70 == 1)
  {
    webrtc::Codec::~Codec(v68);
  }

  if (!v65)
  {
    if (*(a2 + 792) == 1)
    {
      data = a3[4].__r_.__value_.__l.__data_;
      if (a3[4].__r_.__value_.__l.__size_ == data)
      {
        goto LABEL_98;
      }

      v10 = *(a2 + 524);
      v11 = *(data + 20);
      if (v11 >= v10)
      {
        v12 = *(a2 + 524);
      }

      else
      {
        v12 = v11;
      }

      if (v11 < 1)
      {
        v12 = *(a2 + 524);
      }

      if (v10 < 1)
      {
        v12 = v11;
      }

      if ((v11 & 0x100000000) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(a2 + 524);
      }

      if (v13 <= 0)
      {
        goto LABEL_35;
      }

      v14 = *(a2 + 780);
      if (v13 < v14)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
        }

        v58 = 10;
        v61[14] = 0;
        v60 = 0;
        memset(v61, 0, 13);
        __p = 0;
        webrtc::InvokeSetParametersCallback(a4, &v58, a1);
        if ((v61[7] & 0x80000000) == 0)
        {
LABEL_27:
          if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_28;
        }

        operator delete(__p);
        if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_28:
        operator delete(v66.__r_.__value_.__l.__data_);
        return;
      }

      v24 = *(a2 + 784);
      if (v14 == v24)
      {
LABEL_35:
        v22 = *(a2 + 776) | 0x100000000;
        v23 = *(a2 + 624);
        if (*(a2 + 632) == v23)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v24 >= v13)
        {
          v25 = v13;
        }

        else
        {
          v25 = *(a2 + 784);
        }

        v22 = v25 | 0x100000000;
        v23 = *(a2 + 624);
        if (*(a2 + 632) == v23)
        {
LABEL_98:
          __break(1u);
        }
      }
    }

    else
    {
      v22 = 0;
      v23 = *(a2 + 624);
      if (*(a2 + 632) == v23)
      {
        goto LABEL_98;
      }
    }

    v26 = *(v23 + 20);
    v27 = *(v23 + 8);
    v28 = *(v23 + 16);
    v29 = *(v23 + 153);
    webrtc::RtpParameters::operator=((a2 + 528), a3);
    v30 = *(a2 + 624);
    if (*(a2 + 632) == v30)
    {
      goto LABEL_98;
    }

    v31 = *(v30 + 8);
    *(a2 + 248) = v31;
    v32 = *(v30 + 16);
    *(a2 + 256) = v32 != 1;
    v33 = *(v30 + 24);
    v34 = BYTE4(v26) & 1 ^ v33;
    v35 = BYTE4(v26) & 1 & v33;
    if (v35 == 1)
    {
      if (*(v30 + 20) != v26)
      {
        v36 = 1;
        goto LABEL_57;
      }
    }

    else if (v34)
    {
      v36 = 1;
      if ((v22 & 0x100000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_61;
    }

    v37 = v31 == v27 && v32 == v28;
    if (v37)
    {
      v36 = *(v30 + 153) != v29;
      if (!v35)
      {
LABEL_53:
        if ((v34 & 1) == 0)
        {
LABEL_58:
          if (v36)
          {
            goto LABEL_59;
          }

          goto LABEL_63;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v36 = 1;
      if (!v35)
      {
        goto LABEL_53;
      }
    }

    if (*(v30 + 20) == v26)
    {
      goto LABEL_58;
    }

LABEL_57:
    if ((v22 & 0x100000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_61:
    if ((*(a2 + 400) & 1) == 0)
    {
      goto LABEL_98;
    }

    *(a2 + 388) = v22;
    *(a2 + 392) = BYTE4(v22);
    if (v36)
    {
LABEL_59:
      if (*(a2 + 8))
      {
        v38 = 40;
      }

      else
      {
        v37 = *(v30 + 153) == 0;
        v38 = 800;
        if (!v37)
        {
          v38 = 40;
        }
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a2 + 264, (a2 + v38));
      *(a2 + 240) = 0x7D0000007D00;
      if (*(a2 + 400) == 1 && *(a2 + 392) == 1)
      {
        v42 = *(a2 + 388);
        *(a2 + 240) = v42;
        *(a2 + 244) = v42;
        v43 = *(a2 + 624);
        if (*(a2 + 632) == v43)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v42 = 32000;
        v43 = *(a2 + 624);
        if (*(a2 + 632) == v43)
        {
          goto LABEL_98;
        }
      }

      if (*(v43 + 153) == 1)
      {
        if (v42 >= *(a2 + 24))
        {
          v42 = *(a2 + 24);
        }

        *(a2 + 240) = v42;
      }

      (*(a4 + 16))(0, a4, v56);
      v57 = *(a4 + 16);
      v44 = v57;
      *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
      *(a4 + 24) = 0;
      v45 = *(a2 + 504);
      v44(0, v56, v68);
      v69 = v57;
      v57 = absl::internal_any_invocable::EmptyManager;
      (*(*v45 + 32))(v45, a2 + 104, v68);
      (v69)(1, v68, v68);
      (v57)(1, v56, v56);
      v39 = a2 + 192;
      v40 = (a2 + 656);
      v41 = *(a2 + 215);
      if (*(a2 + 679) < 0)
      {
        goto LABEL_80;
      }

LABEL_66:
      if ((v41 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v40, *(a2 + 192), *(a2 + 200));
      }

      else
      {
        *&v40->__r_.__value_.__l.__data_ = *v39;
        v40->__r_.__value_.__r.__words[2] = *(v39 + 16);
      }

LABEL_88:
      *(a2 + 680) = *(a2 + 216) == 2;
      if (*(a2 + 520) != 1)
      {
        goto LABEL_92;
      }

      v48 = *(a2 + 624);
      if (*(a2 + 632) == v48)
      {
        goto LABEL_98;
      }

      if (*(v48 + 124) == 1)
      {
        (*(**(a2 + 504) + 40))(*(a2 + 504));
      }

      else
      {
LABEL_92:
        (*(**(a2 + 504) + 48))(*(a2 + 504));
      }

      *a1 = 0;
      *(a1 + 38) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 29) = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_28;
      }

      return;
    }

LABEL_63:
    v49 = 0;
    v52[14] = 0;
    v51 = 0;
    memset(v52, 0, 13);
    v50 = 0;
    webrtc::InvokeSetParametersCallback(a4, &v49, v53);
    if (v55 < 0)
    {
      operator delete(v54);
      if ((v52[7] & 0x80000000) == 0)
      {
LABEL_65:
        v39 = a2 + 192;
        v40 = (a2 + 656);
        v41 = *(a2 + 215);
        if ((*(a2 + 679) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_80;
      }
    }

    else if ((v52[7] & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    operator delete(v50);
    v39 = a2 + 192;
    v40 = (a2 + 656);
    v41 = *(a2 + 215);
    if ((*(a2 + 679) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_80:
    if ((v41 & 0x80u) == 0)
    {
      v46 = v39;
    }

    else
    {
      v46 = *(a2 + 192);
    }

    if ((v41 & 0x80u) == 0)
    {
      v47 = v41;
    }

    else
    {
      v47 = *(a2 + 200);
    }

    std::string::__assign_no_alias<false>(v40, v46, v47);
    goto LABEL_88;
  }

  v62 = v65;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v66;
  }

  v64[0] = v67[0];
  *(v64 + 3) = *(v67 + 3);
  webrtc::InvokeSetParametersCallback(a4, &v62, a1);
  if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v63.__r_.__value_.__l.__data_);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }
}

uint64_t webrtc::WebRtcVoiceSendChannel::SetSendCodecs(uint64_t a1, webrtc::Codec **a2, webrtc *this)
{
  if (*(a1 + 220) == 1)
  {
    *(a1 + 220) = 0;
  }

  *(a1 + 224) = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v160 = a2;
    v163 = a1;
    v184 = 0;
    v185 = 0;
    v186 = 0;
  }

  else
  {
    v7 = *a2;
    do
    {
      if (*(v7 + 3) >= 0x80u)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
          if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v177.__r_.__value_.__l.__data_);
          }
        }

        return 0;
      }

      v7 = (v7 + 216);
    }

    while (v7 != v6);
    v160 = a2;
    v163 = a1;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v3 = webrtc::kDtmfCodecName[0];
    if (webrtc::kDtmfCodecName[0] - 65 >= 0x1A)
    {
      v8 = webrtc::kDtmfCodecName[0];
    }

    else
    {
      v8 = webrtc::kDtmfCodecName[0] + 32;
    }

    if (webrtc::kDtmfCodecName[1] - 65 >= 0x1A)
    {
      v9 = webrtc::kDtmfCodecName[1];
    }

    else
    {
      v9 = webrtc::kDtmfCodecName[1] + 32;
    }

    if (webrtc::kDtmfCodecName[2] - 65 >= 0x1A)
    {
      v10 = webrtc::kDtmfCodecName[2];
    }

    else
    {
      v10 = webrtc::kDtmfCodecName[2] + 32;
    }

    if (webrtc::kDtmfCodecName[3] - 65 >= 0x1A)
    {
      v11 = webrtc::kDtmfCodecName[3];
    }

    else
    {
      v11 = webrtc::kDtmfCodecName[3] + 32;
    }

    if (webrtc::kDtmfCodecName[4] - 65 >= 0x1A)
    {
      v12 = webrtc::kDtmfCodecName[4];
    }

    else
    {
      v12 = webrtc::kDtmfCodecName[4] + 32;
    }

    if (webrtc::kDtmfCodecName[5] - 65 >= 0x1A)
    {
      v13 = webrtc::kDtmfCodecName[5];
    }

    else
    {
      v13 = webrtc::kDtmfCodecName[5] + 32;
    }

    if (webrtc::kDtmfCodecName[6] - 65 >= 0x1A)
    {
      v14 = webrtc::kDtmfCodecName[6];
    }

    else
    {
      v14 = webrtc::kDtmfCodecName[6] + 32;
    }

    if (webrtc::kDtmfCodecName[7] - 65 >= 0x1A)
    {
      v15 = webrtc::kDtmfCodecName[7];
    }

    else
    {
      v15 = webrtc::kDtmfCodecName[7] + 32;
    }

    if (webrtc::kDtmfCodecName[8] - 65 >= 0x1A)
    {
      v16 = webrtc::kDtmfCodecName[8];
    }

    else
    {
      v16 = webrtc::kDtmfCodecName[8] + 32;
    }

    if (webrtc::kDtmfCodecName[9] - 65 >= 0x1A)
    {
      v17 = webrtc::kDtmfCodecName[9];
    }

    else
    {
      v17 = webrtc::kDtmfCodecName[9] + 32;
    }

    if (webrtc::kDtmfCodecName[10] - 65 >= 0x1A)
    {
      v18 = webrtc::kDtmfCodecName[10];
    }

    else
    {
      v18 = webrtc::kDtmfCodecName[10] + 32;
    }

    v158 = v18;
    if (webrtc::kDtmfCodecName[11] - 65 >= 0x1A)
    {
      v19 = webrtc::kDtmfCodecName[11];
    }

    else
    {
      v19 = webrtc::kDtmfCodecName[11] + 32;
    }

    v155 = v19;
    if (webrtc::kDtmfCodecName[12] - 65 >= 0x1A)
    {
      v20 = webrtc::kDtmfCodecName[12];
    }

    else
    {
      v20 = webrtc::kDtmfCodecName[12] + 32;
    }

    v154 = v20;
    if (webrtc::kDtmfCodecName[13] - 65 >= 0x1A)
    {
      v21 = webrtc::kDtmfCodecName[13];
    }

    else
    {
      v21 = webrtc::kDtmfCodecName[13] + 32;
    }

    v153 = v21;
    v22 = webrtc::kDtmfCodecName[14] + 32;
    if (webrtc::kDtmfCodecName[14] - 65 >= 0x1A)
    {
      v22 = webrtc::kDtmfCodecName[14];
    }

    v152 = v22;
    do
    {
      v32 = *(v5 + 2);
      v33 = *(v5 + 39);
      if (v33 >= 0)
      {
        v32 = v5 + 16;
      }

      v34 = *(v5 + 3);
      if (v33 >= 0)
      {
        v34 = *(v5 + 39);
      }

      if (v34 == 15)
      {
        v35 = *v32;
        if (v35 == webrtc::kDtmfCodecName[0])
        {
          goto LABEL_67;
        }

        if ((v35 - 65) < 0x1A)
        {
          LOBYTE(v35) = v35 + 32;
        }

        if (v35 == v8)
        {
LABEL_67:
          v36 = v32[1];
          if (v36 == webrtc::kDtmfCodecName[1])
          {
            goto LABEL_71;
          }

          if ((v36 - 65) < 0x1A)
          {
            LOBYTE(v36) = v36 + 32;
          }

          if (v36 == v9)
          {
LABEL_71:
            v37 = v32[2];
            if (v37 == webrtc::kDtmfCodecName[2])
            {
              goto LABEL_75;
            }

            if ((v37 - 65) < 0x1A)
            {
              LOBYTE(v37) = v37 + 32;
            }

            if (v37 == v10)
            {
LABEL_75:
              v38 = v32[3];
              if (v38 == webrtc::kDtmfCodecName[3])
              {
                goto LABEL_79;
              }

              if ((v38 - 65) < 0x1A)
              {
                LOBYTE(v38) = v38 + 32;
              }

              if (v38 == v11)
              {
LABEL_79:
                v39 = v32[4];
                if (v39 == webrtc::kDtmfCodecName[4])
                {
                  goto LABEL_83;
                }

                if ((v39 - 65) < 0x1A)
                {
                  LOBYTE(v39) = v39 + 32;
                }

                if (v39 == v12)
                {
LABEL_83:
                  v40 = v32[5];
                  if (v40 == webrtc::kDtmfCodecName[5])
                  {
                    goto LABEL_87;
                  }

                  if ((v40 - 65) < 0x1A)
                  {
                    LOBYTE(v40) = v40 + 32;
                  }

                  if (v40 == v13)
                  {
LABEL_87:
                    v41 = v32[6];
                    if (v41 == webrtc::kDtmfCodecName[6])
                    {
                      goto LABEL_91;
                    }

                    if ((v41 - 65) < 0x1A)
                    {
                      LOBYTE(v41) = v41 + 32;
                    }

                    if (v41 == v14)
                    {
LABEL_91:
                      v42 = v32[7];
                      if (v42 == webrtc::kDtmfCodecName[7])
                      {
                        goto LABEL_95;
                      }

                      if ((v42 - 65) < 0x1A)
                      {
                        LOBYTE(v42) = v42 + 32;
                      }

                      if (v42 == v15)
                      {
LABEL_95:
                        v43 = v32[8];
                        if (v43 == webrtc::kDtmfCodecName[8])
                        {
                          goto LABEL_99;
                        }

                        if ((v43 - 65) < 0x1A)
                        {
                          LOBYTE(v43) = v43 + 32;
                        }

                        if (v43 == v16)
                        {
LABEL_99:
                          v44 = v32[9];
                          if (v44 == webrtc::kDtmfCodecName[9])
                          {
                            goto LABEL_103;
                          }

                          if ((v44 - 65) < 0x1A)
                          {
                            LOBYTE(v44) = v44 + 32;
                          }

                          if (v44 == v17)
                          {
LABEL_103:
                            v45 = v32[10];
                            if (v45 == webrtc::kDtmfCodecName[10])
                            {
                              goto LABEL_107;
                            }

                            if ((v45 - 65) < 0x1A)
                            {
                              LOBYTE(v45) = v45 + 32;
                            }

                            if (v45 == v158)
                            {
LABEL_107:
                              v46 = v32[11];
                              if (v46 == webrtc::kDtmfCodecName[11])
                              {
                                goto LABEL_111;
                              }

                              if ((v46 - 65) < 0x1A)
                              {
                                LOBYTE(v46) = v46 + 32;
                              }

                              if (v46 == v155)
                              {
LABEL_111:
                                v47 = v32[12];
                                if (v47 == webrtc::kDtmfCodecName[12])
                                {
                                  goto LABEL_115;
                                }

                                if ((v47 - 65) < 0x1A)
                                {
                                  LOBYTE(v47) = v47 + 32;
                                }

                                if (v47 == v154)
                                {
LABEL_115:
                                  v48 = v32[13];
                                  if (v48 == webrtc::kDtmfCodecName[13])
                                  {
                                    goto LABEL_119;
                                  }

                                  if ((v48 - 65) < 0x1A)
                                  {
                                    LOBYTE(v48) = v48 + 32;
                                  }

                                  if (v48 == v153)
                                  {
LABEL_119:
                                    v49 = v32[14];
                                    if (v49 == webrtc::kDtmfCodecName[14])
                                    {
                                      goto LABEL_123;
                                    }

                                    if ((v49 - 65) < 0x1A)
                                    {
                                      LOBYTE(v49) = v49 + 32;
                                    }

                                    if (v49 == v152)
                                    {
LABEL_123:
                                      std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(&v184);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v5 = (v5 + 216);
    }

    while (v5 != v6);
    v5 = *v160;
    v6 = v160[1];
  }

  v177.__r_.__value_.__s.__data_[0] = 0;
  v183 = 0;
  v175 = 0x493E000000000;
  v176 = -1;
  if (v5 == v6)
  {
    goto LABEL_178;
  }

  v50 = 0;
  if (webrtc::kCnCodecName[0] - 65 >= 0x1A)
  {
    v51 = webrtc::kCnCodecName[0];
  }

  else
  {
    v51 = webrtc::kCnCodecName[0] + 32;
  }

  v52 = webrtc::kCnCodecName[1] + 32;
  v159 = webrtc::kCnCodecName[1] - 65;
  if (v159 >= 0x1A)
  {
    v52 = webrtc::kCnCodecName[1];
  }

  v161 = v52;
  while (1)
  {
    v54 = v5 + 16;
    v53 = *(v5 + 2);
    v55 = *(v5 + 39);
    if ((v55 & 0x80u) == 0)
    {
      v53 = v5 + 16;
    }

    v56 = *(v5 + 3);
    if ((v55 & 0x80u) == 0)
    {
      v56 = *(v5 + 39);
    }

    switch(v56)
    {
      case 2:
        v67 = *v53;
        if (v67 == webrtc::kCnCodecName[0])
        {
          goto LABEL_167;
        }

        if ((v67 - 65) < 0x1A)
        {
          LOBYTE(v67) = v67 + 32;
        }

        if (v67 == v51)
        {
LABEL_167:
          v68 = v53[1];
          if (v68 == webrtc::kCnCodecName[1])
          {
            goto LABEL_134;
          }

          if ((v68 - 65) < 0x1A)
          {
            LOBYTE(v68) = v68 + 32;
          }

          if (v68 == v161)
          {
            goto LABEL_134;
          }
        }

        break;
      case 15:
        v62 = "telephone-event";
        while (1)
        {
          v64 = *v53++;
          v63 = v64;
          v66 = *v62++;
          v65 = v66;
          if (v63 != v66)
          {
            if ((v63 - 65) < 0x1A)
            {
              LOBYTE(v63) = v63 + 32;
            }

            if ((v65 - 65) < 0x1A)
            {
              LOBYTE(v65) = v65 + 32;
            }

            if (v63 != v65)
            {
              break;
            }
          }

          if (!--v56)
          {
            goto LABEL_134;
          }
        }

        break;
      case 3:
        v57 = &webrtc::kRedCodecName;
        while (1)
        {
          v59 = *v53++;
          v58 = v59;
          v61 = *v57;
          v57 = (v57 + 1);
          v60 = v61;
          if (v58 != v61)
          {
            if ((v58 - 65) < 0x1A)
            {
              LOBYTE(v58) = v58 + 32;
            }

            if ((v60 - 65) < 0x1A)
            {
              LOBYTE(v60) = v60 + 32;
            }

            if (v58 != v60)
            {
              break;
            }
          }

          if (!--v56)
          {
            goto LABEL_134;
          }
        }

        break;
    }

    if (*(this + 216) != 1)
    {
      break;
    }

    webrtc::MatchesWithCodecRules(this, v5, v55);
    if (v69)
    {
      v55 = *(v5 + 39);
      break;
    }

LABEL_134:
    ++v50;
    v5 = (v5 + 216);
    if (v5 == v6)
    {
      if (v183)
      {
        goto LABEL_322;
      }

      goto LABEL_178;
    }
  }

  if ((v55 & 0x80) != 0)
  {
    v54 = *(v5 + 2);
    v55 = *(v5 + 3);
  }

  webrtc::SdpAudioFormat::SdpAudioFormat(v170, v54, v55, *(v5 + 10), *(v5 + 6), v5 + 21);
  (*(**(*(v163 + 96) + 72) + 40))(&__p);
  if ((v166 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | 0x2D2A;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v71, v72, v73, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v173, v174[0]);
    if (SHIBYTE(v171) < 0)
    {
      operator delete(v170[0]);
    }

    goto LABEL_134;
  }

  size = __p.__r_.__value_.__l.__size_;
  v84 = BYTE4(v165);
  LODWORD(__p.__r_.__value_.__l.__data_) = *(v5 + 3);
  if (SHIBYTE(v171) < 0)
  {
    std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], v170[0], v170[1]);
  }

  else
  {
    *&__p.__r_.__value_.__r.__words[1] = *v170;
    v165 = v171;
  }

  v166 = v172;
  v168[0] = 0;
  v168[1] = 0;
  v167 = v168;
  v85 = v173;
  if (v173 != v174)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v167, v168, v85 + 4);
      v87 = v85[1];
      if (v87)
      {
        do
        {
          v88 = v87;
          v87 = *v87;
        }

        while (v87);
      }

      else
      {
        do
        {
          v88 = v85[2];
          v143 = *v88 == v85;
          v85 = v88;
        }

        while (!v143);
      }

      v85 = v88;
    }

    while (v88 != v174);
  }

  *v169 = 0;
  v169[4] = 0;
  v169[8] = 0;
  v169[12] = 0;
  v169[16] = 0;
  v169[20] = 0;
  v169[24] = 0;
  LODWORD(v177.__r_.__value_.__l.__data_) = __p.__r_.__value_.__l.__data_;
  if (v183 == 1)
  {
    webrtc::SdpAudioFormat::operator=(&v177.__r_.__value_.__l.__size_, &__p.__r_.__value_.__l.__size_);
    *v182 = *v169;
    *&v182[9] = *&v169[9];
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v167, v168[0]);
    if (SHIBYTE(v165) < 0)
    {
LABEL_204:
      operator delete(__p.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    webrtc::SdpAudioFormat::SdpAudioFormat(&v177.__r_.__value_.__r.__words[1], &__p.__r_.__value_.__r.__words[1]);
    *v182 = *v169;
    *&v182[9] = *&v169[9];
    v183 = 1;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v167, v168[0]);
    if (SHIBYTE(v165) < 0)
    {
      goto LABEL_204;
    }
  }

  if (*(v5 + 11) >= 1)
  {
    if (v183)
    {
      *&v182[20] = *(v5 + 11);
      v182[24] = 1;
      goto LABEL_208;
    }

LABEL_322:
    __break(1u);
    abort();
  }

LABEL_208:
  HasNack = webrtc::HasNack(v5, v86);
  if ((v183 & 1) == 0)
  {
    goto LABEL_322;
  }

  v182[0] = HasNack;
  HasRrtr = webrtc::HasRrtr(v5, v90);
  if ((v183 & 1) == 0)
  {
    goto LABEL_322;
  }

  v182[1] = HasRrtr;
  webrtc::GetBitrateConfigForCodec(v5, v92);
  v175 = v93;
  v176 = v94;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v173, v174[0]);
  if (SHIBYTE(v171) < 0)
  {
    operator delete(v170[0]);
  }

  if (v183)
  {
    if (v84)
    {
      v95 = v160[1];
      if (*v160 != v95)
      {
        v96 = webrtc::kCnCodecName[0] + 32;
        if (webrtc::kCnCodecName[0] - 65 >= 0x1A)
        {
          v96 = webrtc::kCnCodecName[0];
        }

        v97 = webrtc::kCnCodecName[1] + 32;
        if (v159 >= 0x1A)
        {
          v97 = webrtc::kCnCodecName[1];
        }

        v98 = (*v160 + 48);
        while (1)
        {
          v100 = *(v98 - 4);
          v101 = *(v98 - 9);
          if (v101 >= 0)
          {
            v100 = (v98 - 4);
          }

          v102 = *(v98 - 3);
          if (v101 >= 0)
          {
            v102 = *(v98 - 9);
          }

          if (v102 == 2)
          {
            v103 = *v100;
            if (v103 == webrtc::kCnCodecName[0])
            {
              goto LABEL_230;
            }

            if ((v103 - 65) < 0x1A)
            {
              LOBYTE(v103) = v103 + 32;
            }

            if (v103 == v96)
            {
LABEL_230:
              v104 = v100[1];
              if (v104 == webrtc::kCnCodecName[1])
              {
                goto LABEL_235;
              }

              if ((v104 - 65) < 0x1A)
              {
                LOBYTE(v104) = v104 + 32;
              }

              if (v104 == v97)
              {
LABEL_235:
                if (*(v98 - 2) == v179 && *v98 == size)
                {
                  break;
                }
              }
            }
          }

          v99 = (v98 + 21);
          v98 += 27;
          if (v99 == v95)
          {
            goto LABEL_243;
          }
        }

        if (size == 1)
        {
          if (v179 == 8000)
          {
            *&v182[4] = *(v98 - 9);
            v182[8] = 1;
          }

          else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v112, v113, v114, v115, v116, v117, v118, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
          }
        }

        else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v105, v106, v107, v108, v109, v110, v111, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
        }
      }

LABEL_243:
      v119 = v184;
      if (v184 != v185)
      {
        if (v183 != 1)
        {
          goto LABEL_322;
        }

        while (*(v119 + 40) != v179)
        {
          v119 += 216;
          if (v119 == v185)
          {
            goto LABEL_249;
          }
        }

        *(v163 + 216) = *(v119 + 12);
        *(v163 + 220) = 1;
        *(v163 + 224) = *(v119 + 40);
      }
    }

LABEL_249:
    if (v50)
    {
      v120 = 0;
      if (webrtc::kRedCodecName - 65 >= 0x1A)
      {
        v121 = webrtc::kRedCodecName;
      }

      else
      {
        v121 = webrtc::kRedCodecName + 32;
      }

      v157 = v121;
      if (HIBYTE(webrtc::kRedCodecName) - 65 >= 0x1A)
      {
        v122 = HIBYTE(webrtc::kRedCodecName);
      }

      else
      {
        v122 = HIBYTE(webrtc::kRedCodecName) + 32;
      }

      v156 = v122;
      do
      {
        if (0x84BDA12F684BDA13 * ((v160[1] - *v160) >> 3) <= v120)
        {
          goto LABEL_322;
        }

        v123 = *v160 + 216 * v120;
        v124 = *(v123 + 39);
        v125 = (v123 + 16);
        if (v124 < 0)
        {
          v125 = *(v123 + 16);
        }

        if (v124 < 0)
        {
          v124 = *(v123 + 24);
        }

        if (v124 == 3)
        {
          v126 = *v125;
          if (v126 == webrtc::kRedCodecName)
          {
            goto LABEL_268;
          }

          if ((v126 - 65) < 0x1A)
          {
            LOBYTE(v126) = v126 + 32;
          }

          if (v126 == v157)
          {
LABEL_268:
            v127 = v125[1];
            if (v127 == HIBYTE(webrtc::kRedCodecName))
            {
              goto LABEL_275;
            }

            if ((v127 - 65) < 0x1A)
            {
              LOBYTE(v127) = v127 + 32;
            }

            if (v127 == v156)
            {
LABEL_275:
              v128 = v125[2];
              if (v128 == 100)
              {
                goto LABEL_276;
              }

              if ((v128 - 65) < 0x1A)
              {
                LOBYTE(v128) = v128 + 32;
              }

              if (v128 == 100)
              {
LABEL_276:
                if ((v183 & 1) == 0)
                {
                  goto LABEL_322;
                }

                if (*(v123 + 40) == v179 && *(v123 + 48) == v180)
                {
                  *(&__p.__r_.__value_.__s + 23) = 0;
                  __p.__r_.__value_.__s.__data_[0] = 0;
                  v129 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v123 + 168, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v130 = v129;
                    operator delete(__p.__r_.__value_.__l.__data_);
                    v129 = v130;
                  }

                  if ((v123 + 176) != v129)
                  {
                    v131 = *(v129 + 79);
                    if (v131 < 0)
                    {
                      v132 = v129[7];
                      v131 = v129[8];
                      if (v131)
                      {
                        goto LABEL_284;
                      }
                    }

                    else
                    {
                      v132 = v129 + 7;
                      if (*(v129 + 79))
                      {
LABEL_284:
                        v133 = 0;
                        do
                        {
                          if (*(v132 + v133) == 47)
                          {
                            operator new();
                          }

                          ++v133;
                        }

                        while (v133 != v131);
                      }
                    }

                    operator new();
                  }

                  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                  {
                    webrtc::webrtc_logging_impl::Log("\r\t", v134, v135, v136, v137, v138, v139, v140, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
                  }
                }
              }
            }
          }
        }

        ++v120;
      }

      while (v120 != v50);
    }

    v141 = *(v163 + 432);
    v142 = v183;
    v143 = v141 != 1 || v183 == 0;
    if (v143)
    {
      if (v141 == v183)
      {
        goto LABEL_301;
      }
    }

    else
    {
      v144 = webrtc::AudioSendStream::Config::SendCodecSpec::operator==(v163 + 328, &v177);
      if (v144)
      {
LABEL_301:
        HIDWORD(v175) = -1;
LABEL_310:
        v146 = (*(**(v163 + 232) + 104))(*(v163 + 232));
        (*(*v146 + 184))(v146, &v175);
        if ((v163 + 104) != v160)
        {
          std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>((v163 + 104), *v160, v160[1], 0x84BDA12F684BDA13 * ((v160[1] - *v160) >> 3));
        }

        v147 = *(v163 + 512);
        if (v147)
        {
          v147(v163 + 488);
        }

        goto LABEL_178;
      }

      v141 = *(v163 + 432);
      v142 = v183;
    }

    if (v141 == v142)
    {
      if (v141)
      {
        *(v163 + 328) = v177.__r_.__value_.__l.__data_;
        webrtc::SdpAudioFormat::operator=(v163 + 336, &v177.__r_.__value_.__l.__size_);
        *(v163 + 400) = *v182;
        *(v163 + 409) = *&v182[9];
      }
    }

    else if (v141)
    {
      webrtc::AudioSendStream::Config::SendCodecSpec::~SendCodecSpec((v163 + 328));
      *(v163 + 432) = 0;
    }

    else
    {
      *(v163 + 328) = v177.__r_.__value_.__l.__data_;
      webrtc::SdpAudioFormat::SdpAudioFormat((v163 + 336), &v177.__r_.__value_.__r.__words[1]);
      *(v163 + 400) = *v182;
      *(v163 + 409) = *&v182[9];
      *(v163 + 432) = 1;
    }

    v145 = *(v163 + 248);
    if (v145 != (v163 + 256))
    {
      while ((*(v163 + 432) & 1) != 0)
      {
        v148 = v145[5];
        webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::UpdateSendCodecSpec(v148, (v163 + 328));
        v149 = *(v148 + 63);
        __p.__r_.__value_.__r.__words[2] = absl::internal_any_invocable::EmptyManager;
        v165 = 0;
        (*(*v149 + 32))(v149, v148 + 13, &__p);
        (__p.__r_.__value_.__r.__words[2])(1, &__p, &__p);
        v150 = v145[1];
        if (v150)
        {
          do
          {
            v151 = v150;
            v150 = *v150;
          }

          while (v150);
        }

        else
        {
          do
          {
            v151 = v145[2];
            v143 = *v151 == v145;
            v145 = v151;
          }

          while (!v143);
        }

        v145 = v151;
        if (v151 == (v163 + 256))
        {
          goto LABEL_310;
        }
      }

      goto LABEL_322;
    }

    goto LABEL_310;
  }

LABEL_178:
  if (v183 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v181, v181[1]);
    if (v178 < 0)
    {
      operator delete(v177.__r_.__value_.__l.__size_);
    }
  }

  v78 = v184;
  if (v184)
  {
    v79 = v184;
    if (v185 != v184)
    {
      v80 = v185 - 216;
      v81 = (v185 - 216);
      v82 = (v185 - 216);
      do
      {
        v83 = *v82;
        v82 -= 27;
        (*v83)(v81);
        v80 -= 216;
        v143 = v81 == v78;
        v81 = v82;
      }

      while (!v143);
      v79 = v184;
    }

    v185 = v78;
    operator delete(v79);
  }

  return 1;
}

void webrtc::WebRtcVoiceSendChannel::GetSendCodec(webrtc::WebRtcVoiceSendChannel *this@<X0>, uint64_t a2@<X8>)
{
  v30[3] = *MEMORY[0x277D85DE8];
  if (*(this + 432) == 1)
  {
    v3 = *(this + 90);
    v4 = *(this + 46);
    v13 = &unk_288291428;
    v14 = 0xFFFFFFFF00000000;
    if (*(this + 359) < 0)
    {
      v5 = this;
      std::string::__init_copy_ctor_external(&v15, *(this + 42), *(this + 43));
      this = v5;
    }

    else
    {
      v15 = *(this + 14);
    }

    *&v16 = v3;
    *(&v16 + 1) = v4;
    LOBYTE(v17) = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v24) = 0;
    v26 = 0;
    v29 = 0;
    memset(v30, 0, 24);
    v27 = &v28;
    v28 = 0;
    if (&v27 == (this + 376))
    {
      v6 = 0;
    }

    else
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v27, *(this + 47), this + 48);
      v6 = v19;
    }

    v7 = v14;
    *a2 = &unk_288291428;
    *(a2 + 8) = v7;
    *(a2 + 16) = v15;
    memset(&v15, 0, sizeof(v15));
    *(a2 + 40) = v16;
    *(a2 + 56) = 0;
    *(a2 + 80) = 0;
    if (v6)
    {
      *(a2 + 56) = v17;
      *(a2 + 72) = v18;
      v18 = 0;
      v17 = 0uLL;
      *(a2 + 80) = 1;
    }

    *(a2 + 136) = 0;
    *(a2 + 88) = v20;
    v8 = v22;
    *(a2 + 96) = v21;
    *(a2 + 112) = v8;
    *(a2 + 128) = v23;
    v20 = 0;
    *(a2 + 160) = 0;
    if (v26 == 1)
    {
      *(a2 + 136) = v24;
      *(a2 + 152) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a2 + 160) = 1;
    }

    v10 = v27;
    v9 = v28;
    *(a2 + 176) = v28;
    v11 = a2 + 176;
    *(a2 + 168) = v10;
    v12 = v29;
    *(a2 + 184) = v29;
    if (v12)
    {
      *(v9 + 16) = v11;
      v27 = &v28;
      v28 = 0;
      v29 = 0;
    }

    else
    {
      *(a2 + 168) = v11;
    }

    std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((a2 + 192), v30);
    *(a2 + 216) = 1;
    webrtc::Codec::~Codec(&v13);
  }

  else
  {
    *a2 = 0;
    *(a2 + 216) = 0;
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceSendChannel::GetSendCodec(webrtc::WebRtcVoiceSendChannel *this@<X0>, uint64_t a2@<X8>)
{
  v30[3] = *MEMORY[0x277D85DE8];
  if (*(this + 368) == 1)
  {
    v3 = *(this + 74);
    v4 = *(this + 38);
    v13 = &unk_288291428;
    v14 = 0xFFFFFFFF00000000;
    if (*(this + 295) < 0)
    {
      v5 = this;
      std::string::__init_copy_ctor_external(&v15, *(this + 34), *(this + 35));
      this = v5;
    }

    else
    {
      v15 = *(this + 272);
    }

    *&v16 = v3;
    *(&v16 + 1) = v4;
    LOBYTE(v17) = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v24) = 0;
    v26 = 0;
    v29 = 0;
    memset(v30, 0, 24);
    v27 = &v28;
    v28 = 0;
    if (&v27 == (this + 312))
    {
      v6 = 0;
    }

    else
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v27, *(this + 39), this + 40);
      v6 = v19;
    }

    v7 = v14;
    *a2 = &unk_288291428;
    *(a2 + 8) = v7;
    *(a2 + 16) = v15;
    memset(&v15, 0, sizeof(v15));
    *(a2 + 40) = v16;
    *(a2 + 56) = 0;
    *(a2 + 80) = 0;
    if (v6)
    {
      *(a2 + 56) = v17;
      *(a2 + 72) = v18;
      v18 = 0;
      v17 = 0uLL;
      *(a2 + 80) = 1;
    }

    *(a2 + 136) = 0;
    *(a2 + 88) = v20;
    v8 = v22;
    *(a2 + 96) = v21;
    *(a2 + 112) = v8;
    *(a2 + 128) = v23;
    v20 = 0;
    *(a2 + 160) = 0;
    if (v26 == 1)
    {
      *(a2 + 136) = v24;
      *(a2 + 152) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a2 + 160) = 1;
    }

    v10 = v27;
    v9 = v28;
    *(a2 + 176) = v28;
    v11 = a2 + 176;
    *(a2 + 168) = v10;
    v12 = v29;
    *(a2 + 184) = v29;
    if (v12)
    {
      *(v9 + 16) = v11;
      v27 = &v28;
      v28 = 0;
      v29 = 0;
    }

    else
    {
      *(a2 + 168) = v11;
    }

    std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((a2 + 192), v30);
    *(a2 + 216) = 1;
    webrtc::Codec::~Codec(&v13);
  }

  else
  {
    *a2 = 0;
    *(a2 + 216) = 0;
  }
}

void webrtc::WebRtcVoiceSendChannel::SetSend(webrtc::WebRtcVoiceSendChannel *this, int a2)
{
  if (*(this + 229) != a2)
  {
    v2 = a2;
    if (!a2)
    {
      v18 = *(this + 31);
      v19 = this + 256;
      if (v18 != this + 256)
      {
        do
        {
          v20 = *(v18 + 5);
          *(v20 + 520) = v2;
          (*(**(v20 + 504) + 48))(*(v20 + 504));
          v21 = *(v18 + 1);
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
              v22 = *(v18 + 2);
              v17 = *v22 == v18;
              v18 = v22;
            }

            while (!v17);
          }

          v18 = v22;
        }

        while (v22 != v19);
      }

      goto LABEL_24;
    }

    webrtc::WebRtcVoiceEngine::ApplyOptions(*(this + 12), (this + 136));
    if ((*(this + 209) != 1 || *(this + 208) == 1) && ((*(**(*(this + 12) + 64) + 176))(*(*(this + 12) + 64)) & 1) == 0 && ((*(**(*(this + 12) + 64) + 224))(*(*(this + 12) + 64)) & 1) == 0 && (*(**(*(this + 12) + 64) + 168))(*(*(this + 12) + 64)) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    v11 = *(this + 31);
    if (v11 == (this + 256))
    {
LABEL_24:
      *(this + 229) = v2;
      return;
    }

    while (1)
    {
      v12 = *(v11 + 5);
      *(v12 + 520) = v2;
      v13 = *(v12 + 624);
      if (*(v12 + 632) == v13)
      {
        __break(1u);
        return;
      }

      v14 = **(v12 + 504);
      if (*(v13 + 124))
      {
        (*(v14 + 40))();
        v15 = *(v11 + 1);
        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        (*(v14 + 48))();
        v15 = *(v11 + 1);
        if (v15)
        {
          do
          {
LABEL_18:
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
          goto LABEL_12;
        }
      }

      do
      {
        v16 = *(v11 + 2);
        v17 = *v16 == v11;
        v11 = v16;
      }

      while (!v17);
LABEL_12:
      v11 = v16;
      if (v16 == (this + 256))
      {
        goto LABEL_24;
      }
    }
  }
}

uint64_t webrtc::WebRtcVoiceSendChannel::SetAudioSend(webrtc::WebRtcVoiceSendChannel *a1, unsigned int a2, int a3, const webrtc::AudioOptions *a4, uint64_t (***a5)(void, uint64_t))
{
  result = webrtc::WebRtcVoiceSendChannel::SetLocalSource(a1, a2, a5);
  if (result)
  {
    result = webrtc::WebRtcVoiceSendChannel::MuteStream(a1, a2, a3 ^ 1u);
    if (result)
    {
      result = 1;
      if (a4)
      {
        if (a3)
        {
          webrtc::WebRtcVoiceSendChannel::SetOptions(a1, a4);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVoiceSendChannel::SetLocalSource(uint64_t a1, unsigned int a2, uint64_t (***a3)(void, uint64_t))
{
  v3 = *(a1 + 256);
  if (v3)
  {
    v4 = a1 + 256;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != a1 + 256 && *(v4 + 32) <= a2)
    {
      v16 = *(v4 + 40);
      result = *(v16 + 512);
      if (a3)
      {
        if (result)
        {
          return 1;
        }

        result = (**a3)(a3, v16);
        *(v16 + 512) = a3;
        if (*(v16 + 520) != 1)
        {
LABEL_24:
          (*(**(v16 + 504) + 48))(*(v16 + 504));
          return 1;
        }
      }

      else
      {
        if (result)
        {
          result = (**result)(result, 0);
          *(v16 + 512) = 0;
        }

        if (*(v16 + 520) != 1)
        {
          goto LABEL_24;
        }
      }

      v18 = *(v16 + 624);
      if (*(v16 + 632) == v18)
      {
        __break(1u);
        return result;
      }

      if (*(v18 + 124) == 1)
      {
        (*(**(v16 + 504) + 40))(*(v16 + 504));
        return 1;
      }

      goto LABEL_24;
    }
  }

  if (!a3)
  {
    return 1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  return 0;
}

uint64_t webrtc::WebRtcVoiceSendChannel::MuteStream(webrtc::WebRtcVoiceSendChannel *this, unsigned int a2, uint64_t a3)
{
  v3 = *(this + 32);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = this + 256;
  v5 = this + 256;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v4 || *(v5 + 8) > a2)
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    return 0;
  }

  v17 = *(v5 + 5);
  v19 = a3;
  (*(**(v17 + 504) + 64))(*(v17 + 504), a3);
  v20 = v19;
  *(v17 + 521) = v19;
  v21 = *(this + 31);
  if (v21 != v4)
  {
    do
    {
      if (v20)
      {
        v20 = *(*(v21 + 5) + 521);
        v23 = *(v21 + 1);
        if (v23)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v20 = 0;
        v23 = *(v21 + 1);
        if (v23)
        {
          do
          {
LABEL_21:
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
          goto LABEL_16;
        }
      }

      do
      {
        v24 = *(v21 + 2);
        v25 = *v24 == v21;
        v21 = v24;
      }

      while (!v25);
LABEL_16:
      v21 = v24;
    }

    while (v24 != v4);
  }

  v22 = *(*(this + 12) + 96);
  if (v22)
  {
    (*(*v22 + 104))(v22, v20 & 1);
  }

  return 1;
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SetAudioSend(uint64_t a1, unsigned int a2, int a3, const webrtc::AudioOptions *a4, uint64_t (***a5)(void, uint64_t))
{
  v8 = (a1 - 64);
  result = webrtc::WebRtcVoiceSendChannel::SetLocalSource(a1 - 64, a2, a5);
  if (result)
  {
    result = webrtc::WebRtcVoiceSendChannel::MuteStream(v8, a2, a3 ^ 1u);
    if (result)
    {
      result = 1;
      if (a4)
      {
        if (a3)
        {
          webrtc::WebRtcVoiceSendChannel::SetOptions(v8, a4);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVoiceSendChannel::AddSendStream(webrtc::WebRtcVoiceSendChannel *this, const webrtc::StreamParams *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::StreamParams::ToString(a2, &__p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc"), SHIBYTE(v30) < 0))
  {
    operator delete(__p);
    v11 = *(a2 + 3);
    if (v11 != *(a2 + 4))
    {
LABEL_4:
      v12 = *v11;
      v13 = this + 256;
      v14 = *(this + 32);
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *(a2 + 3);
    if (v11 != *(a2 + 4))
    {
      goto LABEL_4;
    }
  }

  v12 = 0;
  v13 = this + 256;
  v14 = *(this + 32);
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_8:
  v15 = v13;
  do
  {
    v16 = *(v14 + 8);
    v17 = v16 >= v12;
    v18 = v16 < v12;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *&v14[8 * v18];
  }

  while (v14);
  if (v15 == v13 || v12 < *(v15 + 8))
  {
LABEL_15:
    if (*(this + 169) == 1 && *(this + 168) == 1 && *(this + 200) == 1)
    {
      v27.__r_.__value_.__s.__data_[0] = 0;
      v28 = 0;
      if (*(this + 199) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(this + 22), *(this + 23));
      }

      else
      {
        v27 = *(this + 176);
      }

      v28 = 1;
    }

    else
    {
      v27.__r_.__value_.__s.__data_[0] = 0;
      v28 = 0;
    }

    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  return 0;
}

__n128 webrtc::WebRtcVoiceSendChannel::SetSsrcListChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 536);
  (*(a1 + 536))(1, a1 + 520, a1 + 520);
  *(a1 + 536) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 544) = 0;
  (*(a2 + 16))(0, a2, a1 + 520);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

__n128 non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SetSsrcListChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 472);
  (*(a1 + 472))(1, a1 + 456, a1 + 456);
  *(a1 + 472) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 480) = 0;
  (*(a2 + 16))(0, a2, a1 + 456);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

uint64_t webrtc::WebRtcVoiceSendChannel::CanInsertDtmf(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 220) == 1)
  {
    return *(this + 229) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::CanInsertDtmf(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 156) == 1)
  {
    return *(this + 165) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::WebRtcVoiceSendChannel::SetFrameEncryptor(uint64_t result, unsigned int a2, void *a3)
{
  v3 = *(result + 256);
  if (v3)
  {
    v4 = result + 256;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != result + 256 && *(v4 + 32) <= a2)
    {
      v8 = *(v4 + 40);
      v9 = *a3;
      if (*a3)
      {
        (**v9)(*a3);
        (**v9)(v9);
      }

      v10 = *(v8 + 488);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      *(v8 + 488) = v9;
      v11 = *(v8 + 504);
      v13 = absl::internal_any_invocable::EmptyManager;
      v14 = 0;
      (*(*v11 + 32))(v11, v8 + 104, v12);
      result = (v13)(1, v12, v12);
      if (v9)
      {
        return (*(*v9 + 8))(v9);
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVoiceSendChannel::InsertDtmf(webrtc::WebRtcVoiceSendChannel *this, unsigned int a2, unsigned int a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  if (*(this + 220) != 1 || *(this + 229) != 1)
  {
    return 0;
  }

  if (!a2)
  {
    v14 = *(this + 31);
    if (v14 != this + 256)
    {
      goto LABEL_15;
    }

LABEL_19:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    return 0;
  }

  v13 = *(this + 32);
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = this + 256;
  do
  {
    v15 = *(v13 + 8);
    v16 = v15 >= a2;
    v17 = v15 < a2;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *&v13[8 * v17];
  }

  while (v13);
  if (v14 == this + 256 || *(v14 + 8) > a2 || v14 == this + 256)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (a3 >= 0x100)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    return 0;
  }

  v33 = *(**(*(v14 + 5) + 504) + 56);

  return v33();
}

void webrtc::WebRtcVoiceSendChannel::OnNetworkRouteChanged(uint64_t a1, void **a2, size_t a3, __int128 *a4)
{
  (*(**(a1 + 232) + 144))(*(a1 + 232), *(a4 + 8));
  v8 = *(a1 + 80);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 1u, memory_order_relaxed);
  }

  if (a3 < 0x7FFFFFFFFFFFFFF8)
  {
    if (a3 > 0x16)
    {
      operator new();
    }

    v12 = a3;
    v9 = (&__p + a3);
    if (&__p > a2 || v9 <= a2)
    {
      if (a3)
      {
        memmove(&__p, a2, a3);
      }

      *v9 = 0;
      v10 = a4[1];
      v13 = *a4;
      v14 = v10;
      v15 = *(a4 + 8);
      operator new();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::WebRtcVoiceSendChannel::OnReadyToSend(webrtc::WebRtcVoiceSendChannel *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v9 = *(**(this + 29) + 136);

  return v9();
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::OnReadyToSend(webrtc::WebRtcVoiceSendChannel *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v9 = *(**(this + 21) + 136);

  return v9();
}

uint64_t webrtc::WebRtcVoiceSendChannel::GetStats(webrtc::WebRtcVoiceSendChannel *this, webrtc::VoiceMediaSendInfo *a2)
{
  v2 = *(this + 31);
  if (v2 != (this + 256))
  {
    (*(**(v2[5] + 504) + 80))(v60);
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v19 = 0;
    v22 = 0;
    v14 = 0;
    v13 = 0uLL;
    v15 = 0;
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(__p, 0, 26);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 != v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *(this + 14);
      v7 = *(this + 13);
      if (v7 != v6)
      {
        if (*(v3 + 108))
        {
          while (*(v3 + 104) != *(v7 + 3))
          {
            v7 += 216;
            if (v7 == v6)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v7 += 216 * ((v6 - v7 - 216) / 0xD8uLL) + 216;
        }
      }

      if (v7 != v6)
      {
        (*(*v7 + 16))(v60, v7);
        LODWORD(v13) = *(v7 + 3);
        webrtc::RtpCodec::RtpCodec((&v13 + 8), v60);
        *(&v13 + 1) = &unk_28829C0B8;
        LODWORD(v23) = v65;
        v8 = *v5;
        if (!*v5)
        {
LABEL_19:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v9 = v8;
            v10 = *(v8 + 32);
            if (v13 >= v10)
            {
              break;
            }

            v8 = *v9;
            if (!*v9)
            {
              goto LABEL_19;
            }
          }

          if (v10 >= v13)
          {
            break;
          }

          v8 = v9[1];
          if (!v8)
          {
            goto LABEL_19;
          }
        }

        *(&v13 + 1) = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v21[8], *&v21[16]);
        if (v20)
        {
          *(&v20 + 1) = v20;
          operator delete(v20);
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(v14);
        }

        v60[0] = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v64, v64[1]);
        if (v62)
        {
          v63 = v62;
          operator delete(v62);
        }

        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60[1]);
        }
      }

LABEL_5:
      v3 += 392;
    }

    while (v3 != v4);
  }

  return 1;
}

void webrtc::WebRtcVoiceSendChannel::SetEncoderToPacketizerFrameTransformer(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v3 = *(a1 + 256);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 256;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != a1 + 256 && *(v4 + 32) <= a2)
  {
    v15 = *(v4 + 40);
    v16 = *a3;
    *a3 = 0;
    v17 = *(v15 + 496);
    *(v15 + 496) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(v15 + 504);
    v20 = absl::internal_any_invocable::EmptyManager;
    v21 = 0;
    (*(*v18 + 32))(v18, v15 + 104, v19);
    (v20)(1, v19, v19);
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }
  }
}

void webrtc::WebRtcVoiceSendChannel::GetRtpSendParameters(webrtc::WebRtcVoiceSendChannel *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 256;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 != this + 256 && *(v5 + 8) <= a2)
  {
    webrtc::RtpParameters::RtpParameters(a3, (*(v5 + 5) + 528));
    v17 = *(this + 13);
    v18 = *(this + 14);
    if (v17 != v18)
    {
      v19 = *(this + 13);
      while (1)
      {
        (*(*v19 + 16))(v22, v19);
        v20 = *(a3 + 56);
        if (v20 >= *(a3 + 64))
        {
          std::vector<webrtc::RtpCodecParameters>::__emplace_back_slow_path<webrtc::RtpCodecParameters>((a3 + 48));
        }

        if (!v20)
        {
          break;
        }

        v21 = webrtc::RtpCodec::RtpCodec(v20, v22);
        *v21 = &unk_28829C0B8;
        *(v21 + 26) = v27;
        *(a3 + 56) = v21 + 112;
        v22[0] = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v26, v26[1]);
        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }

        if (v23 < 0)
        {
          operator delete(v22[1]);
        }

        v19 += 216;
        v17 += 216;
        if (v19 == v18)
        {
          return;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(a3 + 124) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    *(a3 + 152) = 256;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 105) = 0u;
    *(a3 + 160) = 0;
    *(a3 + 164) = 0;
  }
}

void webrtc::WebRtcVoiceSendChannel::SetRtpSendParameters(uint64_t a1@<X0>, unsigned int a2@<W1>, const webrtc::RtpParameters *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 256);
  if (v7)
  {
    v9 = a1 + 256;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != a1 + 256 && *(v9 + 32) <= a2)
    {
      webrtc::WebRtcVoiceSendChannel::GetRtpSendParameters(a1, a2, v60);
      v27 = v61;
      v28 = v62;
      v29 = *(a3 + 6);
      if (v62 - v61 != *(a3 + 7) - v29)
      {
LABEL_23:
        v56 = 10;
        v59[14] = 0;
        v58 = 0;
        memset(v59, 0, 13);
        v57 = 0;
        webrtc::InvokeSetParametersCallback(a4, &v56, a5);
        if ((v59[7] & 0x80000000) != 0)
        {
          operator delete(v57);
        }

        goto LABEL_61;
      }

      if (v61 != v62)
      {
        while (webrtc::RtpCodec::operator==(v27, v29) && *(v27 + 104) == *(v29 + 104))
        {
          v27 += 112;
          v29 += 112;
          if (v27 == v28)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

LABEL_19:
      v30 = *(a3 + 12);
      if (v30 == *(a3 + 13))
      {
LABEL_56:
        webrtc::RtpParameters::RtpParameters(v69, a3);
        v46 = *(&v71 + 1);
        if (v72 != *(&v71 + 1))
        {
          v47 = v72 - 112;
          v48 = (v72 - 112);
          v49 = (v72 - 112);
          do
          {
            v50 = *v49;
            v49 -= 14;
            (*v50)(v48);
            v47 -= 112;
            v51 = v48 == v46;
            v48 = v49;
          }

          while (!v51);
        }

        *&v72 = v46;
        v52 = *(v9 + 40);
        (*(a4 + 16))(0, a4, v53);
        v54 = *(a4 + 16);
        *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
        *(a4 + 24) = 0;
        webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::SetRtpParameters(a5, v52, v69, v53);
        (v54)(1, v53, v53);
        webrtc::RtpParameters::~RtpParameters(v69);
LABEL_61:
        webrtc::RtpParameters::~RtpParameters(v60);
        return;
      }

      v31 = *(v30 + 16);
      if (v31 > 3)
      {
        webrtc::MediaChannelUtil::TransportForMediaChannels::SetPreferredDscp(a1 + 16, 0, v21, v22, v23, v24, v25, v26);
        if (*(a1 + 432) != 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        webrtc::MediaChannelUtil::TransportForMediaChannels::SetPreferredDscp(a1 + 16, dword_273BA6A80[v31], v21, v22, v23, v24, v25, v26);
        if (*(a1 + 432) != 1)
        {
LABEL_22:
          LOBYTE(v69[0]) = 0;
          v84 = 0;
          goto LABEL_43;
        }
      }

      v32 = a1;
      v33 = *(a1 + 360);
      v34 = *(a1 + 368);
      v85 = &unk_288291428;
      v86 = 0xFFFFFFFF00000000;
      if (*(a1 + 359) < 0)
      {
        std::string::__init_copy_ctor_external(&v87, *(a1 + 336), *(a1 + 344));
        v32 = a1;
      }

      else
      {
        v87 = *(a1 + 336);
      }

      *&v88 = v33;
      *(&v88 + 1) = v34;
      LOBYTE(v89) = 0;
      v91 = 0;
      v92 = 0;
      LOBYTE(v96) = 0;
      v98 = 0;
      v102 = 0;
      v101 = 0;
      v100 = 0;
      v99 = &v100;
      v104 = 0;
      v103 = 0;
      if (&v99 == (v32 + 376))
      {
        v35 = 0;
      }

      else
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v99, *(v32 + 376), (v32 + 384));
        v35 = v91;
      }

      v69[0] = &unk_288291428;
      v69[1] = v86;
      v70 = v87;
      memset(&v87, 0, sizeof(v87));
      v71 = v88;
      LOBYTE(v72) = 0;
      v74 = 0;
      if (v35)
      {
        v72 = v89;
        v73 = v90;
        v90 = 0;
        v89 = 0uLL;
        v74 = 1;
      }

      v75 = v92;
      v76 = v93;
      v77 = v94;
      v78 = v95;
      v92 = 0;
      LOBYTE(v79) = 0;
      v81 = 0;
      if (v98 == 1)
      {
        v79 = v96;
        v80 = v97;
        v97 = 0;
        v96 = 0uLL;
        v81 = 1;
      }

      v82 = v99;
      v83[0] = v100;
      v83[1] = v101;
      if (v101)
      {
        *(v100 + 16) = v83;
        v99 = &v100;
        v100 = 0;
        v101 = 0;
      }

      else
      {
        v82 = v83;
      }

      memset(&v83[2], 0, 24);
      if (v103 != v102)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v103 - v102) >> 4) < 0x555555555555556)
        {
          operator new();
        }

        goto LABEL_64;
      }

      v84 = 1;
      webrtc::Codec::~Codec(&v85);
LABEL_43:
      v36 = *(a3 + 12);
      if (*(a3 + 13) != v36)
      {
        if (*(v36 + 264) != 1 || v84 != 1 || (webrtc::Codec::MatchesRtpCodec(v69, v36 + 160) & 1) != 0)
        {
LABEL_54:
          if (v84 == 1)
          {
            webrtc::Codec::~Codec(v69);
          }

          goto LABEL_56;
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
        {
LABEL_51:
          ifINSt3__16vectorIN6webrtc5CodecENS1_9allocatorIS4_EEEEZNS3_22WebRtcVoiceSendChannel20SetRtpSendParametersEjRKNS3_13RtpParametersENS_12AnyInvocableIFvNS3_8RTCErrorEOEEEE3__0EEDTcl5beginclsr3stdE7declvalIRT_EEEESI_OT0 = _ZN4absl9c_find_ifINSt3__16vectorIN6webrtc5CodecENS1_9allocatorIS4_EEEEZNS3_22WebRtcVoiceSendChannel20SetRtpSendParametersEjRKNS3_13RtpParametersENS_12AnyInvocableIFvNS3_8RTCErrorEOEEEE3__0EEDTcl5beginclsr3stdE7declvalIRT_EEEESI_OT0_(*(a1 + 104), *(a1 + 112), a3);
          if (*(a1 + 112) == ifINSt3__16vectorIN6webrtc5CodecENS1_9allocatorIS4_EEEEZNS3_22WebRtcVoiceSendChannel20SetRtpSendParametersEjRKNS3_13RtpParametersENS_12AnyInvocableIFvNS3_8RTCErrorEOEEEE3__0EEDTcl5beginclsr3stdE7declvalIRT_EEEESI_OT0)
          {
            v55 = 7;
            operator new();
          }

          webrtc::Codec::Codec(v67, ifINSt3__16vectorIN6webrtc5CodecENS1_9allocatorIS4_EEEEZNS3_22WebRtcVoiceSendChannel20SetRtpSendParametersEjRKNS3_13RtpParametersENS_12AnyInvocableIFvNS3_8RTCErrorEOEEEE3__0EEDTcl5beginclsr3stdE7declvalIRT_EEEESI_OT0);
          v68 = 1;
          webrtc::WebRtcVoiceSendChannel::SetSendCodecs(a1, (a1 + 104), v67);
          if (v68 == 1)
          {
            webrtc::Codec::~Codec(v67);
          }

          goto LABEL_54;
        }

        v44 = *(a3 + 12);
        if (*(a3 + 13) != v44 && (*(v44 + 264) & 1) != 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_64:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v63 = 10;
  v66[14] = 0;
  v65 = 0;
  memset(v66, 0, 13);
  __p = 0;
  webrtc::InvokeSetParametersCallback(a4, &v63, a5);
  if ((v66[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

webrtc::Codec *_ZN4absl9c_find_ifINSt3__16vectorIN6webrtc5CodecENS1_9allocatorIS4_EEEEZNS3_22WebRtcVoiceSendChannel20SetRtpSendParametersEjRKNS3_13RtpParametersENS_12AnyInvocableIFvNS3_8RTCErrorEOEEEE3__0EEDTcl5beginclsr3stdE7declvalIRT_EEEESI_OT0_(webrtc::Codec *a1, webrtc::Codec *a2, uint64_t a3)
{
  v3 = a1;
  v9[27] = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    while (1)
    {
      webrtc::Codec::Codec(v9, v3);
      v6 = *(a3 + 96);
      if (*(a3 + 104) == v6 || (*(v6 + 264) & 1) == 0)
      {
        __break(1u);
      }

      v7 = webrtc::Codec::MatchesRtpCodec(v9, v6 + 160);
      webrtc::Codec::~Codec(v9);
      if (v7)
      {
        break;
      }

      v3 = (v3 + 216);
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void webrtc::WebRtcVoiceReceiveChannel::~WebRtcVoiceReceiveChannel(webrtc::WebRtcVoiceReceiveChannel *this)
{
  while (*(this + 63))
  {
    webrtc::WebRtcVoiceReceiveChannel::RemoveRecvStream(this, *(*(this + 61) + 32));
  }

  v2 = *(this + 90);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 89);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 86);
  if (v4)
  {
    *(this + 87) = v4;
    operator delete(v4);
  }

  if (*(this + 664) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 608, *(this + 77));
    if (*(this + 591) < 0)
    {
      operator delete(*(this + 71));
    }
  }

  v5 = *(this + 64);
  if (v5)
  {
    v6 = *(this + 65);
    v7 = *(this + 64);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 9);
        v6 -= 4;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 64);
    }

    *(this + 65) = v5;
    operator delete(v7);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 62));
  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  v9 = *(this + 56);
  *(this + 56) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  webrtc::StreamParams::~StreamParams((this + 288));
  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  if (*(this + 216) == 1 && *(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  v11 = *(this + 16);
  if (v11)
  {
    v12 = *(this + 17);
    v13 = *(this + 16);
    if (v12 != v11)
    {
      v14 = v12 - 27;
      v15 = v12 - 27;
      v16 = v12 - 27;
      do
      {
        v17 = *v16;
        v16 -= 27;
        (*v17)(v15);
        v14 -= 27;
        v18 = v15 == v11;
        v15 = v16;
      }

      while (!v18);
      v13 = *(this + 16);
    }

    *(this + 17) = v11;
    operator delete(v13);
  }

  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(this + 104, *(this + 14));
  v19 = *(this + 10);
  *(v19 + 4) = 0;
  if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *this = &unk_288295EE8;
  *(this + 2) = &unk_288295F60;
  v20 = *(this + 3);
  if (v20)
  {
    if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }
}

{
  webrtc::WebRtcVoiceReceiveChannel::~WebRtcVoiceReceiveChannel(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::RemoveRecvStream(webrtc::WebRtcVoiceReceiveChannel *this, unsigned int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v11 = *(this + 62);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = this + 496;
  do
  {
    v13 = *(v11 + 8);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *&v11[8 * v15];
  }

  while (v11);
  if (v12 != this + 496 && *(v12 + 8) <= a2)
  {
    v25 = *(this + 33);
    v24 = *(this + 34);
    if (v25 != v24)
    {
      while (*v25 != a2)
      {
        v25 += 4;
        if (v25 == v24)
        {
          goto LABEL_22;
        }
      }
    }

    if (v25 != v24)
    {
      v26 = v24 - (v25 + 4);
      if (v24 != v25 + 4)
      {
        memmove(v25, v25 + 4, v24 - (v25 + 4));
      }

      *(this + 34) = &v25[v26];
    }

LABEL_22:
    v27 = *(v12 + 5);
    (*(**(v27 + 16) + 104))(*(v27 + 16), 0);
    v28 = *(v27 + 24);
    *(v27 + 24) = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = *(v12 + 5);
    if (v29)
    {
      (*(**(v29 + 8) + 24))(*(v29 + 8), *(v29 + 16));
      v30 = *(v29 + 24);
      *(v29 + 24) = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      MEMORY[0x2743DA540](v29, 0x60C40CE71275ALL);
    }

    v31 = *(v12 + 1);
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v33 = v12;
      do
      {
        v32 = *(v33 + 2);
        v34 = *v32 == v33;
        v33 = v32;
      }

      while (!v34);
    }

    if (*(this + 61) == v12)
    {
      *(this + 61) = v32;
    }

    v35 = *(this + 62);
    --*(this + 63);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v35, v12);
    operator delete(v12);
    return 1;
  }

  else
  {
LABEL_11:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    return 0;
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::~WebRtcVoiceReceiveChannel(webrtc::WebRtcVoiceReceiveChannel *this)
{
  webrtc::WebRtcVoiceReceiveChannel::~WebRtcVoiceReceiveChannel((this - 64));
}

{
  webrtc::WebRtcVoiceReceiveChannel::~WebRtcVoiceReceiveChannel((this - 64));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::SetReceiverParameters(webrtc::WebRtcVoiceReceiveChannel *this, size_t *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::MediaChannelParameters::ToString(a2, &__p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc"), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v11 = (a2 + 1);
    v12 = (this + 464);
    if ((this + 464) == a2 + 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a2 + 1);
    v12 = (this + 464);
    if ((this + 464) == a2 + 1)
    {
      goto LABEL_17;
    }
  }

  v13 = *(a2 + 31);
  if (*(this + 487) < 0)
  {
    if (v13 >= 0)
    {
      v25 = v11;
    }

    else
    {
      v25 = a2[1];
    }

    if (v13 >= 0)
    {
      v26 = *(a2 + 31);
    }

    else
    {
      v26 = a2[2];
    }

    std::string::__assign_no_alias<false>(v12, v25, v26);
LABEL_17:
    v28 = a2[4];
    v27 = a2[5];
    v17 = v27 - v28;
    if (v27 != v28)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  if ((*(a2 + 31) & 0x80) == 0)
  {
    v14 = *v11;
    v12->__r_.__value_.__r.__words[2] = *(v11 + 2);
    *&v12->__r_.__value_.__l.__data_ = v14;
    v16 = a2[4];
    v15 = a2[5];
    v17 = v15 - v16;
    if (v15 == v16)
    {
      goto LABEL_7;
    }

LABEL_18:
    if (0x84BDA12F684BDA13 * (v17 >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__assign_no_alias<true>(v12, a2[1], a2[2]);
  v37 = a2[4];
  v36 = a2[5];
  v17 = v36 - v37;
  if (v36 != v37)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v83 = this;
  v85 = 0;
  v86 = 0;
  v84 = &v85;
  if (!*(this + 15))
  {
    v29 = v84;
    if (v84 == &v85)
    {
      goto LABEL_81;
    }

    v30 = *(this + 13);
    while (*(v29 + 8) == *(v30 + 8) && webrtc::operator==(v29 + 40, v30 + 40))
    {
      v31 = v29[1];
      v32 = v29;
      if (v31)
      {
        do
        {
          v29 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v29 = v32[2];
          v33 = *v29 == v32;
          v32 = v29;
        }

        while (!v33);
      }

      v34 = v30[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v30[2];
          v33 = *v35 == v30;
          v30 = v35;
        }

        while (!v33);
      }

      v30 = v35;
      if (v29 == &v85)
      {
        goto LABEL_81;
      }
    }
  }

  v38 = *(this + 241);
  if (*(this + 241))
  {
    v39 = *(this + 61);
    if (v39 != (this + 496))
    {
      do
      {
        (*(**(*(v39 + 5) + 16) + 24))(*(*(v39 + 5) + 16));
        v45 = *(v39 + 1);
        if (v45)
        {
          do
          {
            v46 = v45;
            v45 = *v45;
          }

          while (v45);
        }

        else
        {
          do
          {
            v46 = *(v39 + 2);
            v33 = *v46 == v39;
            v39 = v46;
          }

          while (!v33);
        }

        v39 = v46;
      }

      while (v46 != (this + 496));
    }

    *(this + 241) = 0;
  }

  v40 = this + 112;
  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(this + 104, *(this + 14));
  v41 = v85;
  *(this + 13) = v84;
  *(this + 14) = v41;
  v42 = v86;
  *(this + 15) = v86;
  if (v42)
  {
    *(v41 + 2) = v40;
    v84 = &v85;
    v85 = 0;
    v86 = 0;
    v43 = *(this + 61);
    v44 = this + 496;
    if (v43 == this + 496)
    {
      goto LABEL_55;
    }
  }

  else
  {
    *(this + 13) = v40;
    v43 = *(this + 61);
    v44 = this + 496;
    if (v43 == this + 496)
    {
      goto LABEL_55;
    }
  }

  do
  {
    v48 = *(*(v43 + 5) + 16);
    std::map<int,webrtc::SdpAudioFormat>::map[abi:sn200100](&__p, this + 13);
    (*(*v48 + 64))(v48, &__p);
    std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(&__p, __p.__r_.__value_.__l.__size_);
    v49 = *(v43 + 1);
    if (v49)
    {
      do
      {
        v50 = v49;
        v49 = *v49;
      }

      while (v49);
    }

    else
    {
      do
      {
        v50 = *(v43 + 2);
        v33 = *v50 == v43;
        v43 = v50;
      }

      while (!v33);
    }

    v43 = v50;
  }

  while (v50 != v44);
LABEL_55:
  std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(this + 16, 0, 0, 0);
  if (*(this + 241) != v38)
  {
    v47 = *(this + 61);
    if (v47 != v44)
    {
      if (v38)
      {
        do
        {
          (*(**(*(v47 + 5) + 16) + 16))(*(*(v47 + 5) + 16));
          v51 = *(v47 + 1);
          if (v51)
          {
            do
            {
              v52 = v51;
              v51 = *v51;
            }

            while (v51);
          }

          else
          {
            do
            {
              v52 = *(v47 + 2);
              v33 = *v52 == v47;
              v47 = v52;
            }

            while (!v33);
          }

          v47 = v52;
        }

        while (v52 != v44);
      }

      else
      {
        do
        {
          (*(**(*(v47 + 5) + 16) + 24))(*(*(v47 + 5) + 16));
          v53 = *(v47 + 1);
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
              v54 = *(v47 + 2);
              v33 = *v54 == v47;
              v47 = v54;
            }

            while (!v33);
          }

          v47 = v54;
        }

        while (v54 != v44);
      }
    }

    *(this + 241) = v38;
  }

LABEL_81:
  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(&v84, v85);
  v55 = a2[7];
  v56 = a2[8];
  v57 = (a2 + 7);
  v58 = v56 - v55;
  if (v58)
  {
    v59 = v55;
  }

  else
  {
    v59 = 0;
  }

  if (*(this + 65) == *(this + 64))
  {
    v60 = 0;
  }

  else
  {
    v60 = *(this + 64);
  }

  result = webrtc::ValidateRtpExtensions(v59, v58 >> 5, v60);
  if (!result)
  {
    return result;
  }

  v62 = (*(**(this + 31) + 224))(*(this + 31));
  webrtc::FilterRtpExtensions(v57, webrtc::RtpExtension::IsSupportedForAudio, 0, v62, &__p);
  v63 = *(this + 65);
  v64 = *(this + 64);
  size = __p.__r_.__value_.__l.__size_;
  v65 = __p.__r_.__value_.__r.__words[0];
  v67 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
  if (v63 - v64 != __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])
  {
    goto LABEL_109;
  }

  if (v64 != v63)
  {
    v68 = 0;
    while (1)
    {
      v69 = &v65[v68 / 8];
      v70 = *(v64 + v68 + 23);
      if (v70 >= 0)
      {
        v71 = *(v64 + v68 + 23);
      }

      else
      {
        v71 = *(v64 + v68 + 8);
      }

      v72 = *(v69 + 23);
      v73 = v72;
      if (v72 < 0)
      {
        v72 = v69[1];
      }

      if (v71 != v72)
      {
        break;
      }

      v74 = v70 >= 0 ? (v64 + v68) : *(v64 + v68);
      v75 = v73 >= 0 ? &v65[v68 / 8] : *v69;
      if (memcmp(v74, v75, v71) || *(v64 + v68 + 24) != LODWORD(v65[v68 / 8 + 3]) || *(v64 + v68 + 28) != BYTE4(v65[v68 / 8 + 3]))
      {
        break;
      }

      v68 += 32;
      if (v64 + v68 == v63)
      {
        goto LABEL_119;
      }
    }

LABEL_109:
    *(v83 + 64) = v65;
    *(v83 + 65) = size;
    __p.__r_.__value_.__r.__words[0] = v64;
    __p.__r_.__value_.__l.__size_ = v63;
    v76 = *(v83 + 66);
    *(v83 + 66) = *(&__p.__r_.__value_.__l + 2);
    __p.__r_.__value_.__r.__words[2] = v76;
    *v87 = 0;
    *&v87[8] = 0;
    *&v87[15] = 0;
    if (size == v65)
    {
      v77 = 0;
    }

    else
    {
      v77 = v65;
    }

    if (size != v65)
    {
      v78 = (v77 + v67);
      do
      {
        while (1)
        {
          v79 = *(v65 + 23);
          if ((v79 & 0x8000000000000000) == 0)
          {
            break;
          }

          webrtc::RtpHeaderExtensionMap::RegisterByUri(v87, *(v65 + 6), *v65, v65[1]);
          v65 += 4;
          if (v65 == v78)
          {
            goto LABEL_117;
          }
        }

        webrtc::RtpHeaderExtensionMap::RegisterByUri(v87, *(v65 + 6), v65, v79);
        v65 += 4;
      }

      while (v65 != v78);
LABEL_117:
      v64 = __p.__r_.__value_.__r.__words[0];
    }

    *(v83 + 536) = *v87;
    *(v83 + 551) = *&v87[15];
    v65 = v64;
  }

LABEL_119:
  if (v65)
  {
    v80 = __p.__r_.__value_.__l.__size_;
    v81 = v65;
    if (__p.__r_.__value_.__l.__size_ != v65)
    {
      do
      {
        v82 = *(v80 - 9);
        v80 -= 4;
        if (v82 < 0)
        {
          operator delete(*v80);
        }
      }

      while (v80 != v65);
      v81 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v65;
    operator delete(v81);
  }

  return 1;
}

void webrtc::WebRtcVoiceReceiveChannel::GetRtpReceiverParameters(webrtc::WebRtcVoiceReceiveChannel *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 256;
  memset(v16, 0, sizeof(v16));
  memset(v17, 0, 25);
  v23 = 0;
  v24 = 0;
  v4 = *(this + 62);
  if (v4)
  {
    v5 = (this + 496);
    do
    {
      v6 = v4[8];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *&v4[2 * v8];
    }

    while (v4);
    if (v5 != (this + 496) && v5[8] <= a2)
    {
      std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<>(v17);
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  *(a3 + 124) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 256;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 105) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 164) = 0;
  webrtc::RtpParameters::~RtpParameters(v16);
}

double webrtc::WebRtcVoiceReceiveChannel::GetDefaultRtpReceiveParameters@<D0>(webrtc::WebRtcVoiceReceiveChannel *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 124) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 256;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 105) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 164) = 0;
  if (*(this + 56))
  {
    std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<>((a2 + 96));
  }

  return result;
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::SetPlayout(uint64_t this, int a2)
{
  if (*(this + 241) != a2)
  {
    v2 = a2;
    v3 = this;
    v4 = *(this + 488);
    v5 = (this + 496);
    if (v4 != (this + 496))
    {
      if (a2)
      {
        do
        {
          this = (*(**(v4[5] + 16) + 16))(*(v4[5] + 16));
          v6 = v4[1];
          if (v6)
          {
            do
            {
              v7 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = v4[2];
              v8 = *v7 == v4;
              v4 = v7;
            }

            while (!v8);
          }

          v4 = v7;
        }

        while (v7 != v5);
      }

      else
      {
        do
        {
          this = (*(**(v4[5] + 16) + 24))(*(v4[5] + 16));
          v9 = v4[1];
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
              v10 = v4[2];
              v8 = *v10 == v4;
              v4 = v10;
            }

            while (!v8);
          }

          v4 = v10;
        }

        while (v10 != v5);
      }
    }

    *(v3 + 241) = v2;
  }

  return this;
}

void webrtc::WebRtcVoiceReceiveChannel::SetRtcpMode(uint64_t a1, int a2)
{
  if (*(a1 + 236) != a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(a1 + 236) = a2;
    v11 = *(a1 + 488);
    if (v11 != (a1 + 496))
    {
      do
      {
        (*(**(v11[5] + 16) + 56))(*(v11[5] + 16), *(a1 + 236));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (a1 + 496));
    }
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::SetRtcpMode(uint64_t a1, int a2)
{
  if (*(a1 + 172) != a2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(a1 + 172) = a2;
    v11 = *(a1 + 424);
    if (v11 != (a1 + 432))
    {
      do
      {
        (*(**(v11[5] + 16) + 56))(*(v11[5] + 16), *(a1 + 172));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (a1 + 432));
    }
  }
}

void webrtc::WebRtcVoiceReceiveChannel::SetReceiveNackEnabled(webrtc::WebRtcVoiceReceiveChannel *this, int a2)
{
  if (*(this + 232) != a2)
  {
    v2 = a2;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(this + 232) = v2;
    v11 = *(this + 61);
    if (v11 != (this + 496))
    {
      do
      {
        if (*(this + 232))
        {
          v12 = 5000;
        }

        else
        {
          v12 = 0;
        }

        (*(**(*(v11 + 5) + 16) + 72))(*(*(v11 + 5) + 16), v12);
        v13 = *(v11 + 1);
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = *(v11 + 2);
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != (this + 496));
    }
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::SetReceiveNackEnabled(webrtc::WebRtcVoiceReceiveChannel *this, int a2)
{
  if (*(this + 168) != a2)
  {
    v2 = a2;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(this + 168) = v2;
    v11 = *(this + 53);
    if (v11 != (this + 432))
    {
      do
      {
        if (*(this + 168))
        {
          v12 = 5000;
        }

        else
        {
          v12 = 0;
        }

        (*(**(*(v11 + 5) + 16) + 72))(*(*(v11 + 5) + 16), v12);
        v13 = *(v11 + 1);
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = *(v11 + 2);
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != (this + 432));
    }
  }
}

void webrtc::WebRtcVoiceReceiveChannel::SetReceiveNonSenderRttEnabled(webrtc::WebRtcVoiceReceiveChannel *this, int a2)
{
  if (*(this + 240) != a2)
  {
    v2 = a2;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(this + 240) = v2;
    v11 = *(this + 61);
    if (v11 != (this + 496))
    {
      do
      {
        (*(**(*(v11 + 5) + 16) + 80))(*(*(v11 + 5) + 16), *(this + 240));
        v12 = *(v11 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v11 + 2);
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (this + 496));
    }
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::SetReceiveNonSenderRttEnabled(webrtc::WebRtcVoiceReceiveChannel *this, int a2)
{
  if (*(this + 176) != a2)
  {
    v2 = a2;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *(this + 176) = v2;
    v11 = *(this + 53);
    if (v11 != (this + 432))
    {
      do
      {
        (*(**(*(v11 + 5) + 16) + 80))(*(*(v11 + 5) + 16), *(this + 176));
        v12 = *(v11 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v11 + 2);
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (this + 432));
    }
  }
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::SetPlayout(uint64_t this, int a2)
{
  if (*(this + 177) != a2)
  {
    v2 = a2;
    v3 = this;
    v4 = *(this + 424);
    v5 = (this + 432);
    if (v4 != (this + 432))
    {
      if (a2)
      {
        do
        {
          this = (*(**(v4[5] + 16) + 16))(*(v4[5] + 16));
          v6 = v4[1];
          if (v6)
          {
            do
            {
              v7 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = v4[2];
              v8 = *v7 == v4;
              v4 = v7;
            }

            while (!v8);
          }

          v4 = v7;
        }

        while (v7 != v5);
      }

      else
      {
        do
        {
          this = (*(**(v4[5] + 16) + 24))(*(v4[5] + 16));
          v9 = v4[1];
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
              v10 = v4[2];
              v8 = *v10 == v4;
              v4 = v10;
            }

            while (!v8);
          }

          v4 = v10;
        }

        while (v10 != v5);
      }
    }

    *(v3 + 177) = v2;
  }

  return this;
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::AddRecvStream(webrtc::WebRtcVoiceReceiveChannel *this, const webrtc::StreamParams *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::StreamParams::ToString(a2, &__p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc"), SHIBYTE(v42) < 0))
  {
    operator delete(__p);
    v11 = *(a2 + 3);
    v12 = *(a2 + 4);
    if (v11 != v12)
    {
LABEL_4:
      if ((v12 - v11) <= 4)
      {
        v13 = *v11;
        v15 = *(this + 33);
        v14 = *(this + 34);
        if (v15 != v14)
        {
          while (*v15 != v13)
          {
            v15 += 4;
            if (v15 == v14)
            {
              goto LABEL_17;
            }
          }
        }

        if (v15 != v14)
        {
          v16 = v14 - (v15 + 4);
          if (v14 != v15 + 4)
          {
            memmove(v15, v15 + 4, v14 - (v15 + 4));
          }

          *(this + 34) = &v15[v16];
          v17 = *(a2 + 12);
          v18 = *(a2 + 13);
          if (v18 != v17)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3) <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_53:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          __p = 0uLL;
          v42 = 0;
          v28 = *(this + 62);
          if (!v28)
          {
LABEL_41:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v37 = v28;
              v38 = *(v28 + 32);
              if (v13 >= v38)
              {
                break;
              }

              v28 = *v37;
              if (!*v37)
              {
                goto LABEL_41;
              }
            }

            if (v38 >= v13)
            {
              break;
            }

            v28 = v37[1];
            if (!v28)
            {
              goto LABEL_41;
            }
          }

          if (v42 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v42 >= 0)
          {
            v40 = HIBYTE(v42);
          }

          else
          {
            v40 = *(&__p + 1);
          }

          (*(**(this + 31) + 176))(*(this + 31), *(v37[5] + 16), p_p, v40);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(__p);
          }

          return 1;
        }

LABEL_17:
        v19 = *(this + 62);
        if (!v19)
        {
          goto LABEL_25;
        }

        v20 = (this + 496);
        do
        {
          v21 = v19[8];
          v22 = v21 >= v13;
          v23 = v21 < v13;
          if (v22)
          {
            v20 = v19;
          }

          v19 = *&v19[2 * v23];
        }

        while (v19);
        if (v20 == (this + 496) || v13 < v20[8])
        {
LABEL_25:
          v24 = *(a2 + 12);
          v25 = *(a2 + 13);
          if (v25 == v24)
          {
            v26 = *(this + 89);
            if (v26)
            {
              (**v26)(*(this + 89));
            }

            v27 = *(this + 90);
            if (v27)
            {
              (**v27)(*(this + 90));
            }

            __p = xmmword_273B8E9C0;
            LOBYTE(v42) = 0;
            v43 = 0;
            v44 = 200;
            v45 = 0;
            v46 = 0;
            v48 = 0;
            v47 = 0;
            v49 = 0;
            v50 = v51;
            memset(v51, 0, sizeof(v51));
            LOBYTE(v52) = 0;
            v53 = 0;
            v54 = 16842753;
            v55 = 0;
            webrtc::SSLStreamAdapter::GetDefaultEphemeralKeyExchangeCipherGroups(0);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_53;
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
          return 0;
        }
      }

      return 0;
    }
  }

  else
  {
    v11 = *(a2 + 3);
    v12 = *(a2 + 4);
    if (v11 != v12)
    {
      goto LABEL_4;
    }
  }

  webrtc::StreamParams::operator=(this + 288, a2);
  return 1;
}

void webrtc::WebRtcVoiceReceiveChannel::ResetUnsignaledRecvStream(webrtc::WebRtcVoiceReceiveChannel *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  memset(v11, 0, sizeof(v11));
  webrtc::StreamParams::operator=(this + 288, v11);
  webrtc::StreamParams::~StreamParams(v11);
  v10 = *(this + 33);
  v9 = *(this + 34);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::GetUnsignaledSsrc(webrtc::WebRtcVoiceReceiveChannel *this)
{
  v1 = *(this + 34);
  if (*(this + 33) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 4) | 0x100000000;
  }
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::GetUnsignaledSsrc(webrtc::WebRtcVoiceReceiveChannel *this)
{
  v1 = *(this + 26);
  if (*(this + 25) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 4) | 0x100000000;
  }
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::ChooseReceiverReportSsrc(uint64_t result, void *a2)
{
  if (a2[2])
  {
    v2 = result;
    v3 = a2[1];
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = *(result + 456);
    v5 = a2 + 1;
    do
    {
      v6 = *(v3 + 28);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 == a2 + 1 || v4 < *(v5 + 7))
    {
LABEL_10:
      v9 = *(*a2 + 28);
      *(result + 456) = v9;
      v10 = *(result + 488);
      v11 = (result + 496);
      if (v10 != (result + 496))
      {
        do
        {
          result = (*(**(v2 + 248) + 152))(*(v2 + 248), *(v10[5] + 16), v9);
          v12 = v10[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v10[2];
              v14 = *v13 == v10;
              v10 = v13;
            }

            while (!v14);
          }

          v10 = v13;
        }

        while (v13 != v11);
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::ChooseReceiverReportSsrc(uint64_t result, void *a2)
{
  if (a2[2])
  {
    v2 = result;
    v3 = a2[1];
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = *(result + 392);
    v5 = a2 + 1;
    do
    {
      v6 = *(v3 + 28);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 == a2 + 1 || v4 < *(v5 + 7))
    {
LABEL_10:
      v9 = *(*a2 + 28);
      *(result + 392) = v9;
      v10 = *(result + 424);
      v11 = (result + 432);
      if (v10 != (result + 432))
      {
        do
        {
          result = (*(**(v2 + 184) + 152))(*(v2 + 184), *(v10[5] + 16), v9);
          v12 = v10[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v10[2];
              v14 = *v13 == v10;
              v10 = v13;
            }

            while (!v14);
          }

          v10 = v13;
        }

        while (v13 != v11);
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::SetOutputVolume(webrtc::WebRtcVoiceReceiveChannel *this, uint64_t a2, double a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::StringFormat("WRVMC::%s({ssrc=%u}, {volume=%.2f})", __p, "SetOutputVolume", a2, *&a3), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc"), v35 < 0))
  {
    operator delete(__p[0]);
    v13 = *(this + 62);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(this + 62);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  v14 = this + 496;
  do
  {
    v15 = *(v13 + 8);
    v16 = v15 >= a2;
    v17 = v15 < a2;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *&v13[8 * v17];
  }

  while (v13);
  if (v14 != this + 496 && *(v14 + 8) <= a2)
  {
    v18 = a3;
    (*(**(*(v14 + 5) + 16) + 112))(*(*(v14 + 5) + 16), v18);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::StringFormat("WRVMC::%s => (stream with SSRC %u now uses volume %.2f)", __p, "SetOutputVolume", a2, *&a3);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 1;
  }

LABEL_16:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::StringFormat("WRVMC::%s => (WARNING: no receive stream for SSRC %u)", __p, "SetOutputVolume", a2);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::SetDefaultOutputVolume(webrtc::WebRtcVoiceReceiveChannel *this, double a2)
{
  *(this + 54) = a2;
  v3 = *(this + 33);
  v4 = *(this + 34);
  if (v3 == v4)
  {
    return 1;
  }

  v5 = (this + 496);
  v6 = a2;
  while (1)
  {
    v7 = *v3;
    v8 = *v5;
    if (!*v5)
    {
      break;
    }

    v9 = v5;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 == v5 || v7 < *(v9 + 8))
    {
      break;
    }

    (*(**(v9[5] + 16) + 112))(*(v9[5] + 16), v6);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v2 = v2 & 0xFFFFFFFF00000000 | 0x4D51;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)7,double>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    if (++v3 == v4)
    {
      return 1;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  return 0;
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::GetBaseMinimumPlayoutDelayMs(webrtc::WebRtcVoiceReceiveChannel *this, unsigned int a2)
{
  if (!a2)
  {
    return *(this + 110) | 0x100000000;
  }

  v2 = *(this + 62);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 496;
  do
  {
    v4 = *(v2 + 8);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 == this + 496 || *(v3 + 8) > a2)
  {
    return 0;
  }

  else
  {
    return (*(**(*(v3 + 5) + 16) + 128))(*(*(v3 + 5) + 16)) | 0x100000000;
  }
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::GetBaseMinimumPlayoutDelayMs(webrtc::WebRtcVoiceReceiveChannel *this, unsigned int a2)
{
  if (!a2)
  {
    return *(this + 94) | 0x100000000;
  }

  v2 = *(this + 54);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 432;
  do
  {
    v4 = *(v2 + 8);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 == this + 432 || *(v3 + 8) > a2)
  {
    return 0;
  }

  else
  {
    return (*(**(*(v3 + 5) + 16) + 128))(*(*(v3 + 5) + 16)) | 0x100000000;
  }
}

void *webrtc::WebRtcVoiceReceiveChannel::SetFrameDecryptor(void *result, unsigned int a2, void *a3)
{
  v3 = result;
  v4 = result[62];
  if (v4)
  {
    v5 = result + 62;
    do
    {
      v6 = *(v4 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 != result + 62 && *(v5 + 8) <= a2)
    {
      v9 = a2;
      v10 = v5[5];
      v11 = a3;
      v12 = *a3;
      if (*a3)
      {
        (**v12)(*a3);
      }

      v13 = *(v10 + 16);
      v15 = v12;
      (*(*v13 + 40))(v13, &v15);
      result = v15;
      if (v15)
      {
        result = (*(*v15 + 8))(v15);
      }

      a3 = v11;
      a2 = v9;
    }
  }

  if (!a2)
  {
    v14 = *a3;
    if (*a3)
    {
      (**v14)(*a3);
    }

    result = v3[89];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v3[89] = v14;
  }

  return result;
}

void webrtc::WebRtcVoiceReceiveChannel::OnPacketReceived(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  v4 = a2[7];
  v3 = a2[8];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a2[11];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 24), 1u, memory_order_relaxed);
  }

  v5 = a2[17];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::MaybeCreateDefaultReceiveStream(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 12);
  v33 = v3;
  webrtc::StreamParams::StreamParams(&v29, (a1 + 288));
  v4 = v31;
  if (v31 >= v32)
  {
    v5 = ((v31 - v30) >> 2) + 1;
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    v6 = (v32 - v30) >> 1;
    if (v6 <= v5)
    {
      v6 = ((v31 - v30) >> 2) + 1;
    }

    v7 = 0x3FFFFFFFFFFFFFFFLL;
    if (v32 - v30 < 0x7FFFFFFFFFFFFFFCLL)
    {
      v7 = v6;
    }

    if (v7)
    {
      if (!(v7 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_25:
    __break(1u);
LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v31)
  {
    goto LABEL_25;
  }

  *v31 = v3;
  v31 = v4 + 1;
  v8 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if ((v8 & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v16 = webrtc::WebRtcVoiceReceiveChannel::AddRecvStream(a1, &v29);
  if (v16)
  {
    std::vector<unsigned int>::push_back[abi:sn200100]((a1 + 264), &v33);
    explicit = atomic_load_explicit(webrtc::WebRtcVoiceReceiveChannel::MaybeCreateDefaultReceiveStream(webrtc::RtpPacketReceived const&)::atomic_histogram_pointer, memory_order_acquire);
    if (explicit)
    {
      webrtc::metrics::HistogramAdd(explicit, (*(a1 + 272) - *(a1 + 264)) >> 2);
      v18 = *(a1 + 264);
      v19 = *(a1 + 272);
      if ((v19 - v18) < 0x11)
      {
LABEL_23:
        webrtc::WebRtcVoiceReceiveChannel::SetOutputVolume(a1, v33, *(a1 + 432));
        webrtc::WebRtcVoiceReceiveChannel::SetBaseMinimumPlayoutDelayMs(a1);
      }
    }

    else
    {
      v27 = 0;
      atomic_compare_exchange_strong(webrtc::WebRtcVoiceReceiveChannel::MaybeCreateDefaultReceiveStream(webrtc::RtpPacketReceived const&)::atomic_histogram_pointer, &v27, 0);
      v18 = *(a1 + 264);
      v19 = *(a1 + 272);
      if ((v19 - v18) < 0x11)
      {
        goto LABEL_23;
      }
    }

    if (v18 != v19)
    {
      webrtc::WebRtcVoiceReceiveChannel::RemoveRecvStream(a1, *v18);
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  webrtc::StreamParams::~StreamParams(&v29);
  return v16;
}

void webrtc::WebRtcVoiceReceiveChannel::SetRawAudioSink(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v13 = *(a1 + 496);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = a1 + 496;
  do
  {
    v15 = *(v13 + 32);
    v16 = v15 >= a2;
    v17 = v15 < a2;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v14 != a1 + 496 && *(v14 + 32) <= a2)
  {
    v25 = *(v14 + 40);
    v26 = *a3;
    *a3 = 0;
    (*(**(v25 + 16) + 104))(*(v25 + 16), v26);
    v27 = *(v25 + 24);
    *(v25 + 24) = v26;
    if (v27)
    {
      v28 = *(*v27 + 8);

      v28();
    }
  }

  else
  {
LABEL_11:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }
  }
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::GetStats(webrtc::WebRtcVoiceReceiveChannel *this, webrtc::VoiceMediaReceiveInfo *a2)
{
  v2 = *(this + 61);
  if (v2 != (this + 496))
  {
    do
    {
      v3 = *(this + 33);
      v4 = *(this + 34);
      if (v3 == v4)
      {
        goto LABEL_10;
      }

      v5 = v4 - 1;
      if (v3 == v5)
      {
        goto LABEL_10;
      }

      while (*v3 != *(v2 + 8))
      {
        if (++v3 == v5)
        {
          goto LABEL_10;
        }
      }

      if (v3 == v5)
      {
LABEL_10:
        (*(**(*(v2 + 5) + 16) + 96))(v72);
        v22 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v31 = 0;
        LOBYTE(v32) = 0;
        v33 = 0;
        v38 = 0;
        v43 = 0;
        LOBYTE(v44) = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v58 = 0;
        v20 = 0uLL;
        LOBYTE(v21[1]) = 0;
        v21[0] = 0;
        *v28 = 0u;
        v29 = 0u;
        LOBYTE(v30) = 0;
        v35 = 0;
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        LOBYTE(v42) = 0;
        v55 = 0;
        v56 = 0uLL;
        v57 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v69 = -1;
        v70 = 0u;
        v71 = 0u;
        operator new();
      }

      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != (this + 496));
  }

  v9 = *a2;
  v10 = *(a2 + 1);
  if (*a2 != v10)
  {
    v11 = (a2 + 32);
    do
    {
      v12 = *(this + 17);
      v13 = *(this + 16);
      if (v13 != v12)
      {
        if (*(v9 + 156))
        {
          while (*(v9 + 152) != *(v13 + 3))
          {
            v13 += 216;
            if (v13 == v12)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          v13 += 216 * ((v12 - v13 - 216) / 0xD8uLL) + 216;
        }
      }

      if (v13 != v12)
      {
        (*(*v13 + 16))(v72, v13);
        LODWORD(v20) = *(v13 + 3);
        webrtc::RtpCodec::RtpCodec((&v20 + 8), v72);
        *(&v20 + 1) = &unk_28829C0B8;
        v32 = v77;
        v14 = *v11;
        if (!*v11)
        {
LABEL_33:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v15 = v14;
            v16 = *(v14 + 32);
            if (v20 >= v16)
            {
              break;
            }

            v14 = *v15;
            if (!*v15)
            {
              goto LABEL_33;
            }
          }

          if (v16 >= v20)
          {
            break;
          }

          v14 = v15[1];
          if (!v14)
          {
            goto LABEL_33;
          }
        }

        *(&v20 + 1) = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v29 + 8, v30);
        if (v28[0])
        {
          v28[1] = v28[0];
          operator delete(v28[0]);
        }

        if (v23 < 0)
        {
          operator delete(v21[0]);
        }

        v72[0] = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__len, __len[1]);
        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        if (v73 < 0)
        {
          operator delete(v72[1]);
        }
      }

LABEL_19:
      v9 += 552;
    }

    while (v9 != v10);
  }

  *(a2 + 12) = (*(**(*(this + 12) + 64) + 496))(*(*(this + 12) + 64));
  return 1;
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::SetDefaultRawAudioSink(void *a1, uint64_t *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v12 = a1[33];
  v11 = a1[34];
  if (v12 != v11)
  {
    if (*a2)
    {
      operator new();
    }

    result = 0;
    if (v12 == v11)
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 - 4);
    v17 = 0;
    webrtc::WebRtcVoiceReceiveChannel::SetRawAudioSink(a1, v13, &v17);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v14 = *a2;
  *a2 = 0;
  result = a1[56];
  a1[56] = v14;
  if (result)
  {
    v16 = *(*result + 8);

    return v16();
  }

  return result;
}

void webrtc::WebRtcVoiceReceiveChannel::GetSources(webrtc::WebRtcVoiceReceiveChannel *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *(this + 62);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 496;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 != this + 496 && *(v5 + 8) <= a2)
  {
    v16 = *(**(*(v5 + 5) + 16) + 48);

    v16();
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::GetSources(webrtc::WebRtcVoiceReceiveChannel *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = *(this + 54);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 432;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 != this + 432 && *(v5 + 8) <= a2)
  {
    v16 = *(**(*(v5 + 5) + 16) + 48);

    v16();
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void webrtc::WebRtcVoiceReceiveChannel::SetDepacketizerToDecoderFrameTransformer(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = *(a1 + 496);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = a1 + 496;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != a1 + 496 && *(v4 + 32) <= a2)
    {
      v18 = *(v4 + 40);
      v19 = *a3;
      *a3 = 0;
      v20 = *(v18 + 16);
      v21 = v19;
      if (v19)
      {
        (**v19)(v19);
      }

      (*(*v20 + 32))(v20, &v21);
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    else
    {
LABEL_10:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      }
    }
  }

  else
  {
    v15 = *a3;
    *a3 = 0;
    v16 = *(a1 + 720);
    *(a1 + 720) = v15;
    if (v16)
    {
      v17 = *(*v16 + 8);

      v17(v16);
    }
  }
}

uint64_t webrtc::WebRtcVoiceSendChannel::SetInterface(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result + 24) + 4) = a2 != 0;
  *(result + 48) = a2;
  if (*(result + 40) == 1)
  {
    v3 = *(result + 56);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return result;
    }
  }

  result = (*(*a2 + 16))(a2, 0, 5, v3);
  if (!result)
  {
    result = *(v2 + 48);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVoiceSendChannel::SenderNackEnabled(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 432) == 1)
  {
    return *(this + 400) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::WebRtcVoiceSendChannel::SenderNonSenderRttEnabled(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 432) == 1)
  {
    return *(this + 401) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::WebRtcVoiceSendChannel::SendCodecHasNack(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 432) == 1)
  {
    return *(this + 400) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 webrtc::WebRtcVoiceSendChannel::SetSendCodecChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 504);
  (*(a1 + 504))(1, a1 + 488, a1 + 488);
  *(a1 + 504) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 512) = 0;
  (*(a2 + 16))(0, a2, a1 + 488);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SetInterface(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result - 40) + 4) = a2 != 0;
  *(result - 16) = a2;
  if (*(result - 24) == 1)
  {
    v3 = *(result - 8);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return result;
    }
  }

  result = (*(*a2 + 16))(a2, 0, 5, v3);
  if (!result)
  {
    result = *(v2 - 16);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SendCodecHasNack(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 368) == 1)
  {
    return *(this + 336) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SetSendCodecChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 440);
  (*(a1 + 440))(1, a1 + 424, a1 + 424);
  *(a1 + 440) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 448) = 0;
  (*(a2 + 16))(0, a2, a1 + 424);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SenderNackEnabled(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 368) == 1)
  {
    return *(this + 336) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceSendChannel::SenderNonSenderRttEnabled(webrtc::WebRtcVoiceSendChannel *this)
{
  if (*(this + 368) == 1)
  {
    return *(this + 337) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::WebRtcVoiceReceiveChannel::SetInterface(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result + 24) + 4) = a2 != 0;
  *(result + 48) = a2;
  if (*(result + 40) == 1)
  {
    v3 = *(result + 56);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return result;
    }
  }

  result = (*(*a2 + 16))(a2, 0, 5, v3);
  if (!result)
  {
    result = *(v2 + 48);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVoiceReceiveChannel::SetInterface(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result - 40) + 4) = a2 != 0;
  *(result - 16) = a2;
  if (*(result - 24) == 1)
  {
    v3 = *(result - 8);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return result;
    }
  }

  result = (*(*a2 + 16))(a2, 0, 5, v3);
  if (!result)
  {
    result = *(v2 - 16);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

void webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::UpdateSendCodecSpec(webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream *this, const webrtc::AudioSendStream::Config::SendCodecSpec *a2)
{
  v4 = (a2 + 72);
  v5 = *(this + 400);
  *(this + 74) = *a2;
  v6 = (this + 304);
  v7 = (a2 + 8);
  v8 = (this + 368);
  if (v5 == 1)
  {
    if (v6 == v7)
    {
      *(this + 328) = *(a2 + 2);
    }

    else
    {
      v9 = *(a2 + 31);
      if (*(this + 327) < 0)
      {
        if (v9 >= 0)
        {
          v17 = a2 + 8;
        }

        else
        {
          v17 = *(a2 + 1);
        }

        if (v9 >= 0)
        {
          v18 = *(a2 + 31);
        }

        else
        {
          v18 = *(a2 + 2);
        }

        std::string::__assign_no_alias<false>(v6, v17, v18);
      }

      else if ((*(a2 + 31) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v6, *(a2 + 1), *(a2 + 2));
      }

      else
      {
        v10 = *&v7->__r_.__value_.__l.__data_;
        v6->__r_.__value_.__r.__words[2] = *(a2 + 3);
        *&v6->__r_.__value_.__l.__data_ = v10;
      }

      *(this + 328) = *(a2 + 2);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 344, *(a2 + 6), a2 + 7);
    }

    v19 = *v4;
    *(this + 377) = *(v4 + 9);
    *v8 = v19;
  }

  else
  {
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v6, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v11 = *&v7->__r_.__value_.__l.__data_;
      v6->__r_.__value_.__r.__words[2] = *(a2 + 3);
      *&v6->__r_.__value_.__l.__data_ = v11;
    }

    *(this + 328) = *(a2 + 2);
    *(this + 44) = 0;
    *(this + 45) = 0;
    *(this + 43) = this + 352;
    v12 = *(a2 + 6);
    if (v12 != (a2 + 56))
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(this + 43, this + 44, v12 + 4);
        v14 = *(v12 + 1);
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
            v15 = *(v12 + 2);
            v16 = *v15 == v12;
            v12 = v15;
          }

          while (!v16);
        }

        v12 = v15;
      }

      while (v15 != (a2 + 56));
    }

    v13 = *v4;
    *(this + 377) = *(v4 + 9);
    *v8 = v13;
    *(this + 400) = 1;
  }

  (*(**(this + 51) + 40))(v63);
  if (*(a2 + 96) == 1)
  {
    if ((v64 & 1) == 0)
    {
      goto LABEL_102;
    }

    v20 = *(a2 + 23);
    if (v20 >= *&v63[24])
    {
      v20 = *&v63[24];
    }

    if (*&v63[20] > v20)
    {
      v20 = *&v63[20];
    }

    *&v63[16] = v20;
  }

  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v57 = *v7;
  }

  v23 = *(a2 + 6);
  v21 = a2 + 48;
  v22 = v23;
  v58 = *(v21 - 1);
  v60 = 0;
  v61 = 0;
  v59 = &v60;
  v24 = v21 + 8;
  if (v23 != v21 + 8)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v59, &v60, v22 + 4);
      v30 = v22[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v22[2];
          v16 = *v31 == v22;
          v22 = v31;
        }

        while (!v16);
      }

      v22 = v31;
    }

    while (v31 != v24);
  }

  if ((v64 & 1) == 0)
  {
    goto LABEL_102;
  }

  v25 = (this + 696);
  v62[0] = *v63;
  *(v62 + 14) = *&v63[14];
  if (*(this + 792) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 736, *(this + 93));
    if (*(this + 719) < 0)
    {
      operator delete(*v25);
    }

    *(this + 792) = 0;
  }

  *v25 = *&v57.__r_.__value_.__l.__data_;
  v27 = v59;
  v26 = v60;
  *(this + 89) = *(&v57.__r_.__value_.__l + 2);
  memset(&v57, 0, sizeof(v57));
  *(this + 45) = v58;
  *(this + 92) = v27;
  v28 = this + 744;
  v29 = v61;
  *(this + 93) = v26;
  *(this + 94) = v29;
  if (v29)
  {
    *(v26 + 16) = v28;
    v26 = 0;
    v59 = &v60;
    v60 = 0;
    v61 = 0;
  }

  else
  {
    *(this + 92) = v28;
  }

  v32 = v62[1];
  *(this + 760) = v62[0];
  *(this + 776) = v32;
  *(this + 792) = 1;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v59, v26);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v33 = *(this + 78);
  if (*(this + 79) == v33 || (*(this + 792) & 1) == 0)
  {
    goto LABEL_102;
  }

  v34 = *(this + 131);
  v35 = *(v33 + 20);
  if ((v35 & 0x100000000) != 0)
  {
    if (v35 >= v34)
    {
      v36 = *(this + 131);
    }

    else
    {
      v36 = v35;
    }

    if (v35 < 1)
    {
      v36 = *(this + 131);
    }

    if (v34 >= 1)
    {
      v34 = v36;
    }

    else
    {
      v34 = v35;
    }
  }

  if (v34 <= 0)
  {
    goto LABEL_74;
  }

  v37 = *(this + 195);
  if (v34 >= v37)
  {
    v46 = *(this + 196);
    if (v37 != v46)
    {
      v48 = 0;
      if (v46 >= v34)
      {
        v46 = v34;
      }

      goto LABEL_77;
    }

LABEL_74:
    v48 = 0;
    v46 = *(this + 194);
LABEL_77:
    v47 = v46 & 0xFFFFFF00;
    v45 = 0x100000000;
    goto LABEL_78;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  v45 = 0;
  LOBYTE(v46) = 0;
  v47 = 0;
  v48 = 1;
LABEL_78:
  if (*(this + 400))
  {
    v49 = v47 | v46;
    *(this + 392) = BYTE4(v45);
    *(this + 97) = v45 | v49;
    *(this + 30) = 0x7D0000007D00;
    if (v48)
    {
      v49 = 32000;
    }

    else
    {
      *(this + 60) = v49;
      *(this + 61) = v49;
    }

    v50 = *(this + 78);
    if (*(this + 79) != v50)
    {
      if (*(v50 + 153) == 1)
      {
        v51 = *(this + 6);
        if (v49 < v51)
        {
          v51 = v49;
        }

        *(this + 60) = v51;
      }

      *(&v57.__r_.__value_.__s + 23) = 6;
      if (&v57 > "stereo" || v57.__r_.__value_.__r.__words + 6 <= "stereo")
      {
        strcpy(&v57, "stereo");
        v52 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v21, &v57.__r_.__value_.__l.__data_);
        v53 = v52;
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
          if (v24 == v53)
          {
LABEL_100:
            v56 = 1;
            goto LABEL_101;
          }
        }

        else if (v24 == v52)
        {
          goto LABEL_100;
        }

        v54 = (v53 + 7);
        v55 = *(v53 + 79);
        if (v55 < 0)
        {
          if (v53[8] != 1 || **v54 != 49)
          {
            goto LABEL_100;
          }
        }

        else if (v55 != 1 || *v54 != 49)
        {
          goto LABEL_100;
        }

        v56 = 2;
LABEL_101:
        atomic_store(v56, this + 208);
        return;
      }
    }
  }

LABEL_102:
  __break(1u);
}

uint64_t webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::OnData(uint64_t a1)
{
  v2 = pthread_self();
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (!v3)
  {
    *(a1 + 88) = v2;
  }

  if (pthread_equal(*(a1 + 88), v2))
  {
    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc", 1051, "!race_checker1051.RaceDetected()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v10);
  return webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::OnClose(v8);
}

uint64_t webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::OnClose(uint64_t this)
{
  *(this + 512) = 0;
  if (*(this + 520) != 1)
  {
    return (*(**(this + 504) + 48))();
  }

  v1 = *(this + 624);
  if (*(this + 632) != v1)
  {
    if (*(v1 + 124) == 1)
    {
      return (*(**(this + 504) + 40))();
    }

    return (*(**(this + 504) + 48))();
  }

  __break(1u);
  return this;
}

void webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::~WebRtcAudioSendStream(webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream *this)
{
  webrtc::WebRtcVoiceSendChannel::WebRtcAudioSendStream::~WebRtcAudioSendStream(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_2882A49D0;
  v2 = *(this + 64);
  if (v2)
  {
    (**v2)(v2, 0);
    *(this + 64) = 0;
  }

  if (*(this + 520) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(this + 78);
  if (*(this + 79) == v3)
  {
    __break(1u);
    return;
  }

  if (*(v3 + 124) == 1)
  {
    (*(**(this + 63) + 40))(*(this + 63));
  }

  else
  {
LABEL_7:
    (*(**(this + 63) + 48))(*(this + 63));
  }

  (*(**(this + 12) + 8))(*(this + 12), *(this + 63));
  if (*(this + 824) == 1 && *(this + 823) < 0)
  {
    operator delete(*(this + 100));
    if (*(this + 792) == 1)
    {
LABEL_11:
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 736, *(this + 93));
      if (*(this + 719) < 0)
      {
        operator delete(*(this + 87));
      }
    }
  }

  else if (*(this + 792) == 1)
  {
    goto LABEL_11;
  }

  webrtc::RtpParameters::~RtpParameters(this + 66);
  webrtc::AudioSendStream::Config::~Config((this + 104));
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

_BYTE *std::string::basic_string[abi:sn200100](_BYTE *a1, _BYTE *a2, size_t a3)
{
  if (!a2 && a3)
  {
    goto LABEL_12;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_13;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  a1[23] = a3;
  v4 = &a1[a3];
  if (a1 <= a2 && v4 > a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3)
  {
    memmove(a1, a2, a3);
  }

  *v4 = 0;
  return a1;
}

void *std::map<int,webrtc::SdpAudioFormat>::map[abi:sn200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(a1, v3, &v11, &v10, v5 + 8))
      {
        operator new();
      }

      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

BOOL webrtc::RefCountedObject<webrtc::AsyncAudioProcessing::Factory>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::AsyncAudioProcessing::Factory>::~RefCountedObject(void *result)
{
  *result = &unk_28828CD08;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::AsyncAudioProcessing::Factory>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28828CD08;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::WebRtcVoiceSendChannel::OnNetworkRouteChanged(std::string_view,webrtc::NetworkRoute const&)::$_0 &&>(uint64_t a1)
{
  v1 = *(*(*(**(**a1 + 232) + 104))(*(**a1 + 232)) + 120);

  return v1();
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcVoiceSendChannel::OnNetworkRouteChanged(std::string_view,webrtc::NetworkRoute const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
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

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::WebRtcVoiceReceiveChannel::OnPacketReceived(webrtc::RtpPacketReceived const&)::$_0 &&>(uint64_t **a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 552);
  v4 = *(v2 + 556);
  v5 = *(v2 + 558);
  *(v1 + 5) = *(v2 + 536);
  *(v1 + 62) = v5;
  *(v1 + 30) = v4;
  *(v1 + 14) = v3;
  v6 = v1 + 15;
  if ((v1[15] + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (webrtc::g_clock)
    {
      v7 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v7 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    *v6 = v7 / 1000;
  }

  v8 = (*(**(v2 + 248) + 96))(*(v2 + 248));
  v9 = *(v1 + 1);
  v10 = *(v1 + 55);
  v11 = *(v1 + 5);
  v23[1] = *(v1 + 3);
  *v24 = v11;
  *&v24[15] = v10;
  v23[0] = v9;
  *__p = *(v1 + 4);
  v12 = v1[11];
  v26 = v1[10];
  v1[8] = 0;
  v1[9] = 0;
  v1[10] = 0;
  v13 = v1[12];
  v27 = v12;
  v28 = v13;
  v29 = *(v1 + 13);
  v1[13] = 0;
  v1[14] = 0;
  v1[12] = 0;
  v14 = *v6;
  v31 = *(v1 + 136);
  v30 = v14;
  v15 = v1[18];
  v1[18] = 0;
  v32 = v15;
  v16 = operator new(0x18uLL);
  *v16 = webrtc::WebRtcVoiceReceiveChannel::MaybeCreateDefaultReceiveStream;
  v16[1] = 0;
  v16[2] = v2;
  v20[0] = v16;
  v20[1] = 24;
  v21 = absl::internal_any_invocable::RemoteManagerTrivial;
  v22 = absl::internal_any_invocable::RemoteInvoker<false,BOOL,std::__bind_front_t<BOOL (webrtc::WebRtcVoiceReceiveChannel::*)(webrtc::RtpPacketReceived const&),webrtc::WebRtcVoiceReceiveChannel*> &,webrtc::RtpPacketReceived const&>;
  (*(*v8 + 8))(v8, 0, v23, v20);
  v21(1, v20, v20);
  v17 = v32;
  if (v32 && atomic_fetch_add((v32 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = v28;
  if (v28 && atomic_fetch_add((v28 + 24), 0xFFFFFFFF) == 1)
  {
    v19 = *(v18 + 16);
    *(v18 + 16) = 0;
    if (v19)
    {
      MEMORY[0x2743DA520](v19, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v18, 0x1010C40EE34DA14);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcVoiceReceiveChannel::OnPacketReceived(webrtc::RtpPacketReceived const&)::$_0>(uint64_t result, void *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = v3[18];
      if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v3[12];
      if (v5 && atomic_fetch_add((v5 + 24), 0xFFFFFFFF) == 1)
      {
        v6 = *(v5 + 16);
        *(v5 + 16) = 0;
        if (v6)
        {
          MEMORY[0x2743DA520](v6, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v5, 0x1010C40EE34DA14);
      }

      v7 = v3[8];
      if (v7)
      {
        v3[9] = v7;
        operator delete(v7);
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,BOOL,std::__bind_front_t<BOOL (webrtc::WebRtcVoiceReceiveChannel::*)(webrtc::RtpPacketReceived const&),webrtc::WebRtcVoiceReceiveChannel*> &,webrtc::RtpPacketReceived const&>(uint64_t (***a1)(void *))
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = ((*a1)[2] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void webrtc::WrappingActiveIceController::WrappingActiveIceController(void *a1)
{
  *a1 = &unk_2882A4A68;
  v2 = &unk_280905000;
  {
    v2 = &unk_280905000;
    if (v3)
    {
      operator new();
    }
  }

  a1[1] = pthread_getspecific(*(v2[403] + 88));
  operator new();
}

void webrtc::WrappingActiveIceController::~WrappingActiveIceController(webrtc::WrappingActiveIceController *this)
{
  *this = &unk_2882A4A68;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }
}

{
  *this = &unk_2882A4A68;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::WrappingActiveIceController::OnConnectionUpdated(webrtc::WrappingActiveIceController *this, const webrtc::Connection *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::Connection::ToString(a2, &__p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/wrapping_active_ice_controller.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void webrtc::WrappingActiveIceController::SelectAndPingConnection(webrtc::WrappingActiveIceController *this)
{
  (*(**(this + 6) + 40))(*(this + 6));
  v2 = *(this + 5);
  v3 = (*(**(this + 6) + 16))(*(this + 6));
  (*(*v2 + 72))(&v5, v2, v3);
  if (v6)
  {
    (*(**(this + 6) + 64))(*(this + 6), v5);
  }

  v4 = *(this + 2);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t webrtc::WrappingActiveIceController::OnSortAndSwitchRequest(uint64_t result)
{
  if ((*(result + 25) & 1) == 0)
  {
    v1 = *(result + 16);
    if (v1)
    {
      atomic_fetch_add_explicit(v1, 1u, memory_order_relaxed);
    }

    operator new();
  }

  return result;
}

void webrtc::WrappingActiveIceController::SortAndSwitchToBestConnection(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 48) + 40))(*(a1 + 48));
  *(a1 + 25) = 0;
  (*(**(a1 + 40) + 112))(v11);
  v7[0] = v11[0];
  *(v7 + 9) = *(v11 + 9);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (v13 != __p)
  {
    if (((v13 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  webrtc::WrappingActiveIceController::HandleSwitchResult(a1, a2, v7);
  if (!(*(**(a1 + 48) + 24))(*(a1 + 48)) || (v4 = *(a1 + 32)) != 0 && (*(v4 + 2344) || *(v4 + 2348)))
  {
    (*(**(a1 + 40) + 120))(&v14);
    v5 = v15 == v14 ? 0 : v14;
    (*(**(a1 + 48) + 80))(*(a1 + 48), v5, (v15 - v14) >> 3);
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  (*(**(a1 + 48) + 48))(*(a1 + 48));
  if ((*(a1 + 24) & 1) == 0 && (*(**(a1 + 40) + 64))(*(a1 + 40)))
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
    }

    operator new();
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

uint64_t webrtc::WrappingActiveIceController::HandleSwitchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::IceSwitchReasonToString(a2, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/wrapping_active_ice_controller.cc");
      if (v19 < 0)
      {
        operator delete(__p);
      }
    }

    if ((*(a3 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }

    (*(**(a1 + 48) + 72))(*(a1 + 48), *a3, a2);
  }

  if (*(a3 + 24) == 1)
  {
    v13 = *(a1 + 16);
    if (!v13 || (atomic_fetch_add_explicit(v13, 1u, memory_order_relaxed), (*(a3 + 24) & 1) != 0))
    {
      operator new();
    }

    __break(1u);
LABEL_16:
    v17 = std::__throw_bad_optional_access[abi:sn200100]();
    return webrtc::WrappingActiveIceController::OnImmediateSwitchRequest(v17);
  }

  v14 = *(a3 + 40) - *(a3 + 32);
  if (v14)
  {
    v15 = *(a3 + 32);
  }

  else
  {
    v15 = 0;
  }

  return (*(**(a1 + 48) + 56))(*(a1 + 48), v15, v14 >> 3);
}

uint64_t webrtc::WrappingActiveIceController::OnImmediateSwitchRequest(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 40) + 104))(v10);
  v6[0] = v10[0];
  *(v6 + 9) = *(v10 + 9);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if (v12 != __p)
  {
    if (((v12 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  webrtc::WrappingActiveIceController::HandleSwitchResult(a1, a2, v6);
  v5 = BYTE8(v10[0]);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v5;
}

double dcsctp::ZeroChecksumAcceptableChunkParameter::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5 > 0xFFFFFFFFFFFFFFF7)
  {
    a2[1] = v4 + v5 + 8;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 8uLL);
    v4 = *a2;
  }

  *&result = 134218112;
  *(v4 + v5) = 134218112;
  *(*a2 + v5 + 4) = bswap32(*(a1 + 8));
  return result;
}

int i2c_ASN1_BIT_STRING(ASN1_BIT_STRING *a, unsigned __int8 **pp)
{
  if (!a)
  {
    return a;
  }

  length = a->length;
  flags = a->flags;
  if ((flags & 8) != 0)
  {
    v8 = flags & 7;
    if (length)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

LABEL_13:
    if (length == 0x7FFFFFFF)
    {
      ERR_put_error(12, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_bitstr.cc", 79);
      LODWORD(a) = 0;
      return a;
    }

    goto LABEL_16;
  }

  if (length < 1)
  {
    v9 = 0;
LABEL_16:
    if (pp)
    {
      v7 = *pp;
      v10 = *pp;
      *v10 = v9;
      v11 = (v10 + 1);
      if (length)
      {
        v12 = pp;
        v6 = length;
        memcpy(v11, a->data, length);
        if (length >= 1)
        {
          v11[length - 1] &= -1 << v9;
        }

        pp = v12;
        LODWORD(a) = length + 1;
      }

      else
      {
        v6 = 0;
LABEL_38:
        LODWORD(a) = 1;
      }

      *pp = &v7[v6 + 1];
    }

    else
    {
      LODWORD(a) = length + 1;
    }

    return a;
  }

  v4 = a->data - 1;
  do
  {
    if (v4[length])
    {
      if (v4[length])
      {
        v9 = 0;
      }

      else if ((v4[length] & 2) != 0)
      {
        v9 = 1;
      }

      else if ((v4[length] & 4) != 0)
      {
        v9 = 2;
      }

      else
      {
        if ((v4[length] & 0x40) != 0)
        {
          v13 = 6;
        }

        else
        {
          v13 = 7;
        }

        if ((v4[length] & 0x20) != 0)
        {
          v14 = 5;
        }

        else
        {
          v14 = v13;
        }

        if ((v4[length] & 0x10) != 0)
        {
          v15 = 4;
        }

        else
        {
          v15 = v14;
        }

        if ((v4[length] & 8) != 0)
        {
          v9 = 3;
        }

        else
        {
          v9 = v15;
        }
      }

      goto LABEL_13;
    }

    v5 = __OFSUB__(length--, 1);
  }

  while (!(((length & 0x80000000) != 0) ^ v5 | (length == 0)));
  if (pp)
  {
    v6 = 0;
    v7 = *pp;
    **pp = 0;
    goto LABEL_38;
  }

  LODWORD(a) = 1;
  return a;
}

uint64_t asn1_marshal_bit_string(uint64_t *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if ((*(a2 + 16) & 8) == 0)
  {
    if (v3 < 1)
    {
      goto LABEL_11;
    }

    while (!*(*(a2 + 8) - 1 + v3))
    {
      v4 = __OFSUB__(v3--, 1);
      if ((v3 < 0) ^ v4 | (v3 == 0))
      {
        v5 = a2;
        v6 = 1;
        goto LABEL_13;
      }
    }
  }

  if (v3 == 0x7FFFFFFF)
  {
    ERR_put_error(12, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_bitstr.cc", 79);
    return 0;
  }

LABEL_11:
  if (v3 < 0)
  {
    return 0;
  }

  v5 = a2;
  v6 = v3 + 1;
LABEL_13:
  if (!a3)
  {
    a3 = 3;
  }

  pp = 0;
  result = CBB_add_asn1(a1, v10, a3);
  if (result)
  {
    result = CBB_add_space(v10, &pp, v6);
    if (result)
    {
      if (i2c_ASN1_BIT_STRING(v5, &pp) != v6)
      {
        return 0;
      }

      return CBB_flush(a1) != 0;
    }
  }

  return result;
}

ASN1_BIT_STRING *__cdecl c2i_ASN1_BIT_STRING(ASN1_BIT_STRING **a, const unsigned __int8 **pp, uint64_t length)
{
  if (length <= 0)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_bitstr.cc";
    v4 = 12;
    v5 = 174;
    v6 = 122;
    goto LABEL_5;
  }

  if (length >> 31)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_bitstr.cc";
    v4 = 12;
    v5 = 173;
    v6 = 127;
LABEL_5:
    ERR_put_error(v4, 0, v5, v3, v6);
    return 0;
  }

  if (a && (v7 = *a) != 0)
  {
    v10 = *pp;
    v12 = *pp + 1;
    v11 = **pp;
    if (v11 >= 8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = length;
    v14 = pp;
    v15 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v15)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v4 = 14;
      v5 = 65;
      v6 = 217;
      goto LABEL_5;
    }

    *v15 = 24;
    v15[1] = 0x300000000;
    v7 = (v15 + 1);
    v15[2] = 0;
    v15[3] = 0;
    pp = v14;
    length = v13;
    v10 = *v14;
    v12 = *v14 + 1;
    v11 = **v14;
    if (v11 >= 8)
    {
LABEL_11:
      ERR_put_error(12, 0, 141, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_bitstr.cc", 143);
      if (!a)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  v16 = length - 1;
  if (v11)
  {
    if (length == 1 || (v12[length - 2] & ~(-1 << v11)) != 0)
    {
      ERR_put_error(12, 0, 194, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_bitstr.cc", 150);
      if (!a)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v7->flags = v11 | v7->flags & 0xFFFFFFFFFFFFFFF0 | 8;
  }

  else
  {
    v7->flags = v7->flags & 0xFFFFFFFFFFFFFFF0 | 8;
    if (length == 1)
    {
      v24 = 0;
      goto LABEL_33;
    }
  }

  v25 = pp;
  v26 = length;
  v27 = malloc_type_malloc(length + 7, 0xB4E622C9uLL);
  if (!v27)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    if (!a)
    {
      goto LABEL_20;
    }

LABEL_19:
    if (*a == v7)
    {
      return 0;
    }

LABEL_20:
    data = v7->data;
    if (data)
    {
      v19 = *(data - 1);
      v18 = data - 8;
      v20 = v19 + 8;
      if (v19 != -8)
      {
        bzero(v18, v20);
      }

      free(v18);
    }

    flags = v7[-1].flags;
    p_flags = &v7[-1].flags;
    v23 = flags + 8;
    if (flags != -8)
    {
      bzero(p_flags, v23);
    }

    free(p_flags);
    return 0;
  }

  *v27 = v16;
  v24 = (v27 + 1);
  memcpy(v27 + 1, v12, v16);
  v12 = &v10[v26];
  pp = v25;
LABEL_33:
  v7->length = v16;
  v28 = v7->data;
  if (v28)
  {
    v29 = pp;
    v31 = *(v28 - 1);
    v30 = v28 - 8;
    v32 = v31 + 8;
    if (v31 != -8)
    {
      bzero(v30, v32);
    }

    free(v30);
    pp = v29;
  }

  v7->data = v24;
  v7->type = 3;
  if (a)
  {
    *a = v7;
  }

  *pp = v12;
  return v7;
}

int ASN1_BIT_STRING_set_bit(ASN1_BIT_STRING *a, int n, int value)
{
  v3 = n + 7;
  if (n >= 0)
  {
    v3 = n;
  }

  v4 = 1 << (~n & 7);
  if (value)
  {
    v5 = 1 << (~n & 7);
  }

  else
  {
    v5 = 0;
  }

  if (a)
  {
    v6 = v3 >> 3;
    a->flags &= 0xFFFFFFFFFFFFFFF0;
    if (a->length > v3 >> 3)
    {
      data = a->data;
      if (data)
      {
LABEL_21:
        data[v6] = data[v6] & ~v4 | v5;
        length = a->length;
        if (a->length >= 1)
        {
          v18 = a->data - 1;
          do
          {
            if (v18[length])
            {
              break;
            }

            v19 = __OFSUB__(length--, 1);
            a->length = length;
          }

          while (!((length < 0) ^ v19 | (length == 0)));
        }

        goto LABEL_26;
      }
    }

    if (!value)
    {
LABEL_26:
      LODWORD(a) = 1;
      return a;
    }

    v8 = v6 + 1;
    v9 = a;
    v10 = a->data;
    if (v10)
    {
      if ((v6 + 1) <= 0xFFFFFFF7)
      {
        v11 = *(v10 - 1);
        v12 = malloc_type_malloc(v8 + 8, 0xB4E622C9uLL);
        if (v12)
        {
          *v12 = v8;
          data = (v12 + 1);
          if (v11 >= v8)
          {
            v13 = v8;
          }

          else
          {
            v13 = v11;
          }

          memcpy(v12 + 1, v10, v13);
          v14 = *(v10 - 1);
          if (v14 != -8)
          {
            bzero(v10 - 8, v14 + 8);
          }

          free(v10 - 8);
          a = v9;
          v15 = v9->length;
          v16 = (v8 - v15);
          if (v16 < 1)
          {
            goto LABEL_20;
          }

LABEL_19:
          bzero(&data[v15], v16);
          a = v9;
LABEL_20:
          a->data = data;
          a->length = v8;
          goto LABEL_21;
        }
      }
    }

    else if ((v6 + 1) <= 0xFFFFFFF7)
    {
      v20 = malloc_type_malloc(v8 + 8, 0xB4E622C9uLL);
      if (v20)
      {
        *v20 = v8;
        data = (v20 + 1);
        a = v9;
        v15 = v9->length;
        v16 = (v8 - v15);
        if (v16 < 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    LODWORD(a) = 0;
  }

  return a;
}

void *__cdecl ASN1_item_dup(const ASN1_ITEM *it, void *x)
{
  out = 0;
  if (!x)
  {
    return 0;
  }

  v3 = ASN1_item_i2d(x, &out, it);
  if (!out)
  {
    return 0;
  }

  v8 = out;
  pval = 0;
  if (asn1_item_ex_d2i(&pval, &v8, v3, it, 0xFFFFFFFFLL, 0, 0, 0, 0) <= 0)
  {
    ASN1_item_ex_free(&pval, it);
  }

  result = pval;
  if (out)
  {
    v5 = pval;
    v7 = out - 8;
    v6 = *(out - 1);
    if (v6 != -8)
    {
      bzero(v7, v6 + 8);
    }

    free(v7);
    return v5;
  }

  return result;
}

ASN1_STRING *ASN1_GENERALIZEDTIME_adj(ASN1_STRING *a1, uint64_t a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!OPENSSL_posix_to_tm(a2, v26))
  {
    return 0;
  }

  if (a3 || a4)
  {
    *__str = 0;
    if (!OPENSSL_tm_to_posix(v26, __str))
    {
      return 0;
    }

    v11 = *__str + 86400 * a3;
    v12 = v11 >= 1 && (v11 ^ 0x7FFFFFFFFFFFFFFFLL) < a4;
    if (v12 || v11 < 0 && (0x8000000000000000 - v11) > a4 || !OPENSSL_posix_to_tm(v11 + a4, v26))
    {
      return 0;
    }
  }

  if ((v27 - 8100) <= 0xFFFFD8EF)
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_gentm.cc";
    v8 = 12;
    v9 = 138;
    v10 = 81;
LABEL_6:
    ERR_put_error(v8, 0, v9, v7, v10);
    return 0;
  }

  if (snprintf(__str, 0x10uLL, "%04d%02d%02d%02d%02d%02dZ", v27 + 1900, v26[4] + 1, v26[3], v26[2], v26[1], v26[0]) != 15)
  {
    abort();
  }

  v13 = a1;
  if (!a1)
  {
    v14 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v14)
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v8 = 14;
      v9 = 65;
      v10 = 217;
      goto LABEL_6;
    }

    *v14 = 24;
    v14[1] = 0x1700000000;
    v13 = (v14 + 1);
    v14[2] = 0;
    v14[3] = 0;
  }

  v15 = strlen(__str);
  if (ASN1_STRING_set(v13, __str, v15))
  {
    result = v13;
    v13->type = 24;
    return result;
  }

  if (!a1)
  {
    v17 = v13;
    data = v13->data;
    if (data)
    {
      v20 = *(data - 1);
      v19 = data - 8;
      v21 = v20 + 8;
      if (v20 != -8)
      {
        bzero(v19, v21);
      }

      free(v19);
      v17 = v13;
    }

    flags = v17[-1].flags;
    p_flags = &v17[-1].flags;
    v24 = flags + 8;
    if (flags != -8)
    {
      v25 = p_flags;
      bzero(p_flags, v24);
      p_flags = v25;
    }

    free(p_flags);
  }

  return 0;
}

int i2c_ASN1_INTEGER(ASN1_INTEGER *a, unsigned __int8 **pp)
{
  if (!a)
  {
    return 0;
  }

  length = a->length;
  if (length)
  {
    data = a->data;
    while (1)
    {
      v4 = *data;
      if (*data)
      {
        break;
      }

      ++data;
      if (length-- < 2)
      {
        goto LABEL_13;
      }
    }

    if (length)
    {
      type = a->type;
      if ((type & 0x100) == 0)
      {
        v9 = v4 >> 7;
        if (length <= (v9 ^ 0x7FFFFFFFuLL))
        {
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      v12 = v4 == 128;
      if (v4 <= 0x80)
      {
        v9 = 0;
        if (!v12 || length == 1)
        {
LABEL_24:
          if (length <= (v9 ^ 0x7FFFFFFFuLL))
          {
            goto LABEL_32;
          }

LABEL_25:
          ERR_put_error(12, 0, 69, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 126);
          return 0;
        }

        if (!data[1])
        {
          v13 = 2;
          while (length != v13)
          {
            if (data[v13++])
            {
              v15 = v13 - 2;
              goto LABEL_31;
            }
          }

          v15 = length - 1;
LABEL_31:
          v9 = v15 < length - 1;
          if (length <= (v9 ^ 0x7FFFFFFFuLL))
          {
LABEL_32:
            v6 = v9 + length;
            if (pp)
            {
              if (v9)
              {
                **pp = 0;
                v16 = 1;
              }

              else
              {
                v16 = 0;
              }

              v17 = pp;
              memcpy(&(*pp)[v16], data, length);
              pp = v17;
              v11 = *v17;
              v10 = v6;
              if ((type & 0x100) == 0)
              {
                goto LABEL_16;
              }

              v18 = 0;
              v19 = v6 - 1;
              do
              {
                v20 = v11[v19];
                v11[v19] = -v18 - v20;
                v18 |= v20 != 0;
                --v19;
              }

              while (v19 < v6);
LABEL_15:
              v11 = *pp;
LABEL_16:
              *pp = &v11[v10];
              return v6;
            }

            return v6;
          }

          goto LABEL_25;
        }
      }

      v9 = 1;
      goto LABEL_24;
    }
  }

LABEL_13:
  if (pp)
  {
    **pp = 0;
    v10 = 1;
    v6 = 1;
    goto LABEL_15;
  }

  return 1;
}

ASN1_INTEGER *__cdecl c2i_ASN1_INTEGER(ASN1_INTEGER **a, const unsigned __int8 **pp, uint64_t length)
{
  if (length >> 30)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc";
    v4 = 12;
    v5 = 177;
    v6 = 155;
LABEL_19:
    ERR_put_error(v4, 0, v5, v3, v6);
    return 0;
  }

  if (!length || (v7 = *pp, v8 = **pp, LODWORD(v9) = length - 1, length != 1) && ((v10 = v8 == 0, v7[1] >= 0) ? (v11 = 1) : (v10 = 0, v11 = v8 != 255), v10 || !v11))
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc";
    v4 = 12;
    v5 = 196;
    v6 = 163;
    goto LABEL_19;
  }

  v12 = length;
  if (!a || (v13 = *a) == 0)
  {
    v14 = pp;
    v15 = a;
    v16 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v16)
    {
      v3 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc";
      v4 = 14;
      v5 = 65;
      v6 = 217;
      goto LABEL_19;
    }

    *v16 = 24;
    v16[1] = 0x200000000;
    v13 = (v16 + 1);
    v16[2] = 0;
    v16[3] = 0;
    a = v15;
    pp = v14;
    length = v12;
  }

  if ((v8 & 0x80) == 0)
  {
    v17 = pp;
    v18 = a;
    if (*v7)
    {
      v19 = v13;
      if (!ASN1_STRING_set(v13, v7, length))
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (*v7 == 255)
  {
    v9 = length - 1;
    if (length != 1)
    {
      if (v7[1])
      {
        v17 = pp;
        v18 = a;
LABEL_26:
        ++v7;
        LODWORD(length) = v9;
        goto LABEL_34;
      }

      v21 = 2;
      while (length != v21)
      {
        if (v7[v21++])
        {
          v17 = pp;
          v18 = a;
          if (v21 - 2 < v9)
          {
            goto LABEL_26;
          }

          goto LABEL_34;
        }
      }
    }
  }

  v17 = pp;
  v18 = a;
LABEL_34:
  v19 = v13;
  if (!ASN1_STRING_set(v13, v7, length))
  {
LABEL_39:
    v23 = v19;
    if (!v18 || *v18 != v19)
    {
      data = v19->data;
      if (data)
      {
        v26 = *(data - 1);
        v25 = data - 8;
        v27 = v26 + 8;
        if (v26 != -8)
        {
          bzero(v25, v27);
        }

        free(v25);
        v23 = v19;
      }

      flags = v23[-1].flags;
      p_flags = &v23[-1].flags;
      v30 = flags + 8;
      if (flags != -8)
      {
        v31 = p_flags;
        bzero(p_flags, v30);
        p_flags = v31;
      }

      free(p_flags);
    }

    return 0;
  }

  if ((v8 & 0x80) != 0)
  {
    result = v19;
    v19->type = 258;
    v32 = v19->length;
    if (v32)
    {
      v33 = 0;
      v34 = v19->data;
      v35 = v32 - 1;
      do
      {
        v36 = v34[v35];
        v34[v35] = -v33 - v36;
        v33 |= v36 != 0;
        --v35;
      }

      while (v35 < v32);
    }

    goto LABEL_37;
  }

LABEL_36:
  result = v19;
  v19->type = 2;
LABEL_37:
  *v17 += v12;
  if (v18)
  {
    *v18 = result;
  }

  return result;
}

uint64_t ASN1_INTEGER_get_uint64(void *a1, const void **a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1);
  if ((v2 & 0xFFFFFEFF) != 2)
  {
    v4 = 195;
    v5 = 288;
    goto LABEL_5;
  }

  v8[0] = 0;
  v3 = *a2;
  if (v3 < 9)
  {
    if (v3)
    {
      memcpy(&v8[1] - v3, a2[1], v3);
      *a1 = bswap64(v8[0]);
      if (v2 < 0x100)
      {
        return 1;
      }
    }

    else
    {
      *a1 = bswap64(0);
      if (v2 < 0x100)
      {
        return 1;
      }
    }

    v4 = 196;
    v5 = 307;
    goto LABEL_5;
  }

  v4 = 196;
  v5 = 293;
LABEL_5:
  ERR_put_error(12, 0, v4, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", v5);
  return 0;
}

uint64_t asn1_string_get_int64(uint64_t *a1, const asn1_string_st *a2, int a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  type = a2->type;
  if ((type & 0xFFFFFEFF) != a3)
  {
    v5 = 195;
    v6 = 288;
    goto LABEL_5;
  }

  v12[0] = 0;
  length = a2->length;
  if (length >= 9)
  {
    v5 = 196;
    v6 = 293;
LABEL_5:
    ERR_put_error(12, 0, v5, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", v6);
    return 0;
  }

  if (length)
  {
    v8 = a1;
    memcpy(&v12[1] - length, a2->data, length);
    a1 = v8;
    v9 = v12[0];
  }

  else
  {
    v9 = 0;
  }

  v10 = bswap64(v9);
  v11 = v10 > 0;
  if (((v9 != 0) & (type >> 8)) == 0)
  {
    v11 = v10 >= 0;
  }

  if (!v11)
  {
    v5 = 196;
    v6 = 337;
    goto LABEL_5;
  }

  if (((v9 != 0) & (type >> 8)) != 0)
  {
    v10 = -v10;
  }

  *a1 = v10;
  return 1;
}

uint64_t ASN1_INTEGER_get(uint64_t a)
{
  if (a)
  {
    v1 = 0;
    if (asn1_string_get_int64(&v1, a, 2))
    {
      return v1;
    }

    else
    {
      ERR_clear_error();
      return -1;
    }
  }

  return a;
}

asn1_string_st *bn_to_asn1_string(const bignum_st *a1, asn1_string_st *str, int a3)
{
  v5 = str;
  if (str)
  {
    top = a1->top;
    if (a1->neg)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = a3;
    v11 = malloc_type_malloc(0x20uLL, 0xB4E622C9uLL);
    if (!v11)
    {
      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      ERR_put_error(12, 0, 158, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/asn1/a_int.cc", 386);
      return 0;
    }

    *v11 = 24;
    *(v11 + 2) = 0;
    v5 = (v11 + 8);
    a3 = v10;
    *(v11 + 3) = v10;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    top = a1->top;
    if (a1->neg)
    {
LABEL_3:
      if (!top)
      {
        v14 = 0;
        v5->type = a3;
        if (!ASN1_STRING_set(v5, 0, 0))
        {
LABEL_60:
          if (v5 != str)
          {
            data = v5->data;
            if (data)
            {
              v56 = *(data - 1);
              v55 = data - 8;
              v57 = v56 + 8;
              if (v56 != -8)
              {
                bzero(v55, v57);
              }

              free(v55);
            }

            flags = v5[-1].flags;
            p_flags = &v5[-1].flags;
            v60 = flags + 8;
            if (flags != -8)
            {
              bzero(p_flags, v60);
            }

            free(p_flags);
          }

          return 0;
        }

        goto LABEL_41;
      }

      d = a1->d;
      if (top == 1)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v8 = top & 0xFFFFFFFFFFFFFFFELL;
        v17 = d + 1;
        v18 = v8;
        do
        {
          v15 |= *(v17 - 1);
          v16 |= *v17;
          v17 += 2;
          v18 -= 2;
        }

        while (v18);
        v9 = v16 | v15;
        if (v8 == top)
        {
LABEL_21:
          if (v9)
          {
            a3 |= 0x100u;
          }

          v5->type = a3;
          if (top < 1)
          {
            goto LABEL_24;
          }

LABEL_9:
          v12 = a1->d;
          while (!a1->d[top - 1])
          {
            v13 = __OFSUB__(top--, 1);
            if ((top < 0) ^ v13 | (top == 0))
            {
              goto LABEL_40;
            }
          }

LABEL_26:
          v22 = top - 1;
          v23 = v12[v22];
          v24 = v23 != 0;
          v25 = HIDWORD(v23) != 0;
          if (HIDWORD(v23))
          {
            v23 >>= 32;
          }

          v26 = v23 >> 16 != 0;
          if (v23 >> 16)
          {
            v23 >>= 16;
          }

          v27 = v23 > 0xFF;
          if (v23 > 0xFF)
          {
            v23 >>= 8;
          }

          v28 = v23 > 0xF;
          if (v23 > 0xF)
          {
            v23 >>= 4;
          }

          v29 = v23 > 3;
          if (v23 > 3)
          {
            v23 >>= 2;
          }

          v30 = v24 | (v22 << 6) | (32 * v25) | (16 * v26) | (8 * v27) | (4 * v28) | (2 * v29);
          if (v23 > 1)
          {
            ++v30;
          }

          v31 = v30 + 7;
          v14 = v31 >> 3;
          if (!ASN1_STRING_set(v5, 0, v31 >> 3))
          {
            goto LABEL_60;
          }

          goto LABEL_41;
        }
      }

      v19 = top - v8;
      v20 = &d[v8];
      do
      {
        v21 = *v20++;
        v9 |= v21;
        --v19;
      }

      while (v19);
      goto LABEL_21;
    }
  }

  v5->type = a3;
  if (top >= 1)
  {
    goto LABEL_9;
  }

LABEL_24:
  if (top)
  {
    v12 = a1->d;
    goto LABEL_26;
  }

LABEL_40:
  v14 = 0;
  if (!ASN1_STRING_set(v5, 0, 0))
  {
    goto LABEL_60;
  }

LABEL_41:
  v32 = v5->data;
  v33 = a1->d;
  v34 = 8 * a1->top;
  v35 = v34 - v14;
  if (v34 <= v14)
  {
    goto LABEL_69;
  }

  if (v35 < 8)
  {
    v36 = 0;
    v37 = v14;
    goto LABEL_56;
  }

  if (v35 >= 0x20)
  {
    v38 = v35 & 0xFFFFFFFFFFFFFFE0;
    v39 = (v33 + v14 + 16);
    v40 = 0uLL;
    v41 = v35 & 0xFFFFFFFFFFFFFFE0;
    v42 = 0uLL;
    do
    {
      v40 = vorrq_s8(v39[-1], v40);
      v42 = vorrq_s8(*v39, v42);
      v39 += 2;
      v41 -= 32;
    }

    while (v41);
    v43 = vorrq_s8(v42, v40);
    *v43.i8 = vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
    v44 = v43.i64[0] | HIDWORD(v43.i64[0]) | ((v43.i64[0] | HIDWORD(v43.i64[0])) >> 16);
    v36 = v44 | BYTE1(v44);
    if (v35 == v38)
    {
      goto LABEL_59;
    }

    if ((v35 & 0x18) == 0)
    {
      v37 = v14 + v38;
LABEL_56:
      v50 = v37 - v34;
      v51 = v33 + v37;
      do
      {
        v52 = *v51++;
        v36 |= v52;
      }

      while (!__CFADD__(v50++, 1));
      goto LABEL_59;
    }
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v37 = v14 + (v35 & 0xFFFFFFFFFFFFFFF8);
  v45 = v36;
  v46 = (v33 + v14 + v38);
  v47 = v38 - (v35 & 0xFFFFFFFFFFFFFFF8);
  do
  {
    v48 = *v46++;
    v45 = vorr_s8(v48, v45);
    v47 += 8;
  }

  while (v47);
  v49 = *&v45 | HIDWORD(*&v45) | ((*&v45 | HIDWORD(*&v45)) >> 16);
  v36 = v49 | BYTE1(v49);
  if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_56;
  }

LABEL_59:
  if (v36)
  {
    goto LABEL_60;
  }

LABEL_69:
  if (v34 >= v14)
  {
    v61 = v14;
  }

  else
  {
    v61 = 8 * a1->top;
  }

  if (v61)
  {
    if (v61 < 8 || &v32[v14 - v61] < v33 + v61 && v33 < &v32[v14])
    {
      v62 = 0;
      goto LABEL_77;
    }

    if (v61 >= 0x20)
    {
      v62 = v61 & 0x7FFFFFE0;
      v68 = (v33 + 2);
      v69 = &v32[v14 - 16];
      v70 = v62;
      do
      {
        v71 = vrev64q_s8(v68[-1]);
        v72 = vrev64q_s8(*v68);
        v69[-1] = vextq_s8(v72, v72, 8uLL);
        *v69 = vextq_s8(v71, v71, 8uLL);
        v68 += 2;
        v69 -= 2;
        v70 -= 32;
      }

      while (v70);
      if (v61 == v62)
      {
        goto LABEL_79;
      }

      if ((v61 & 0x18) == 0)
      {
LABEL_77:
        v63 = v61 - v62;
        v64 = &v32[v14 + ~v62];
        v65 = v33 + v62;
        do
        {
          v66 = *v65++;
          *v64-- = v66;
          --v63;
        }

        while (v63);
        goto LABEL_79;
      }
    }

    else
    {
      v62 = 0;
    }

    v73 = v62;
    v62 = v61 & 0x7FFFFFF8;
    v74 = (v33 + v73);
    v75 = &v32[v14 - v73 - 8];
    v76 = v73 - v62;
    do
    {
      v77 = *v74++;
      *v75-- = vrev64_s8(v77);
      v76 += 8;
    }

    while (v76);
    if (v61 != v62)
    {
      goto LABEL_77;
    }
  }

LABEL_79:
  if (v34 < v14)
  {
    bzero(v32, v14 - v61);
    return v5;
  }

  return v5;
}