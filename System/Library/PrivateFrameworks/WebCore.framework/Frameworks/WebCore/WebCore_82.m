uint64_t webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::OnFrame(webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream *this, const webrtc::VideoFrame *a2)
{
  pthread_mutex_lock((this + 464));
  if (webrtc::g_clock)
  {
    v4 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v4 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v5 = v4 / 1000000;
  v6 = *(this + 67);
  if (v6 < 0)
  {
    *(this + 67) = v5;
    v6 = v4 / 1000000;
  }

  v7 = *(a2 + 3);
  if (v7 >= 1)
  {
    *(this + 68) = v6 - v5 + v7;
  }

  v8 = *(this + 66);
  if (v8)
  {
    (*(*v8 + 16))(v8, a2);
    goto LABEL_12;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
LABEL_12:
    v9 = (this + 464);

    return pthread_mutex_unlock(v9);
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  v9 = (this + 464);

  return pthread_mutex_unlock(v9);
}

void webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::ClearRecordableEncodedFrameCallback(webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    (*(*this + 88))(v12);
    if (v13 == v12)
    {
      (*(*v13 + 32))(v13);
      v1 = *(&v10 + 1);
      if (*(&v10 + 1) != &v9)
      {
LABEL_6:
        if (v1)
        {
          (*(*v1 + 40))(v1);
        }

        return;
      }
    }

    else
    {
      if (v13)
      {
        (*(*v13 + 40))(v13);
      }

      v1 = *(&v10 + 1);
      if (*(&v10 + 1) != &v9)
      {
        goto LABEL_6;
      }
    }

    (*(*v1 + 32))(v1);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }
}

void webrtc::WebRtcVideoReceiveChannel::SetRecordableEncodedFrameCallback(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a1;
  v40 = *MEMORY[0x277D85DE8];
  LODWORD(a1) = a2;
  if (a2 || (a1 = (*(*v4 + 120))(v4), (a1 & 0x100000000) != 0))
  {
    v7 = v4[10];
    v6 = v4 + 10;
    v5 = v7;
    if (v7)
    {
      v8 = v6;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= a1;
        v11 = v9 < a1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v6 && a1 >= *(v8 + 8))
      {
        v12 = v8[5];
        if (v12)
        {
          v13 = *(a3 + 24);
          if (v13)
          {
            if (v13 != a3)
            {
              v31 = *(a3 + 24);
              *(a3 + 24) = 0;
              v14 = *(v12 + 160);
              if (v14)
              {
                goto LABEL_15;
              }

LABEL_22:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
              }

              goto LABEL_44;
            }

            v31 = v30;
            (*(*v13 + 24))(v13, v30);
            v14 = *(v12 + 160);
            if (!v14)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v31 = 0;
            v14 = *(v12 + 160);
            if (!v14)
            {
              goto LABEL_22;
            }
          }

LABEL_15:
          v15 = v31;
          if (v31)
          {
            if (v31 != v30)
            {
              v33 = v31;
              v31 = 0;
              goto LABEL_29;
            }

            v33 = v32;
            (*(*v31 + 24))();
            v15 = v33;
            if (v33)
            {
LABEL_29:
              if (v15 == v32)
              {
                v35 = v34;
                (*(*v15 + 24))(v15, v34);
              }

              else
              {
                v35 = v15;
                v33 = 0;
              }

              goto LABEL_32;
            }
          }

          else
          {
            v33 = 0;
          }

          v35 = 0;
LABEL_32:
          v36 = 0;
          v37 = 0;
          (*(*v14 + 88))(v38, v14, v34, 1);
          if (v39 == v38)
          {
            (*(*v39 + 32))(v39);
          }

          else if (v39)
          {
            (*(*v39 + 40))(v39);
          }

          if (v35 == v34)
          {
            (*(*v35 + 32))(v35);
          }

          else if (v35)
          {
            (*(*v35 + 40))();
          }

          if (v33 == v32)
          {
            (*(*v33 + 32))(v33);
          }

          else if (v33)
          {
            (*(*v33 + 40))();
          }

LABEL_44:
          if (v31 == v30)
          {
            (*(*v31 + 32))(v31);
          }

          else if (v31)
          {
            (*(*v31 + 40))();
          }

          return;
        }
      }
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }
}

void webrtc::WebRtcVideoReceiveChannel::ClearRecordableEncodedFrameCallback(unint64_t this, int a2)
{
  v2 = this;
  LODWORD(this) = a2;
  if (!a2)
  {
    this = (*(*v2 + 120))(v2);
    if ((this & 0x100000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v5 = *(v2 + 10);
  v4 = v2 + 80;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v4;
  do
  {
    v7 = *(v3 + 8);
    v8 = v7 >= this;
    v9 = v7 < this;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 != v4 && this >= *(v6 + 8) && (v10 = *(v6 + 5)) != 0)
  {
    v11 = *(v10 + 160);

    webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::ClearRecordableEncodedFrameCallback(v11);
  }

  else
  {
LABEL_15:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }
}

void non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::ClearRecordableEncodedFrameCallback(unint64_t this, int a2)
{
  v2 = this;
  LODWORD(this) = a2;
  if (!a2)
  {
    this = (*(*(v2 - 8) + 120))();
    if ((this & 0x100000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v5 = *(v2 + 2);
  v4 = v2 + 16;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v4;
  do
  {
    v7 = *(v3 + 8);
    v8 = v7 >= this;
    v9 = v7 < this;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 != v4 && this >= *(v6 + 8) && (v10 = *(v6 + 5)) != 0)
  {
    v11 = *(v10 + 160);

    webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::ClearRecordableEncodedFrameCallback(v11);
  }

  else
  {
LABEL_15:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }
}

void webrtc::WebRtcVideoReceiveChannel::RequestRecvKeyFrame(unint64_t this, int a2)
{
  v2 = this;
  LODWORD(this) = a2;
  if (!a2)
  {
    this = (*(*v2 + 120))(v2);
    if ((this & 0x100000000) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v2 + 10);
  v4 = v2 + 80;
  v3 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v4;
  do
  {
    v7 = *(v3 + 8);
    v8 = v7 >= this;
    v9 = v7 < this;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 != v4 && this >= *(v6 + 8) && (v10 = *(v6 + 5)) != 0)
  {
    v11 = *(v10 + 160);
    if (v11)
    {
      v12 = *(*v11 + 96);

      v12();
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }

  else
  {
LABEL_16:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }
}

void *webrtc::WebRtcVideoReceiveChannel::SetDepacketizerToDecoderFrameTransformer(void *result, unsigned int a2, void *a3)
{
  if (a2)
  {
    v4 = result[10];
    result += 10;
    v3 = v4;
    if (v4)
    {
      v5 = result;
      do
      {
        v6 = *(v3 + 32);
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v3;
        }

        v3 = *(v3 + 8 * v8);
      }

      while (v3);
      if (v5 != result && *(v5 + 8) <= a2)
      {
        v9 = v5[5];
        v10 = *a3;
        *a3 = 0;
        if (v10)
        {
          (**v10)(v10);
        }

        result = *(v9 + 392);
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        *(v9 + 392) = v10;
        v11 = *(v9 + 160);
        if (v11)
        {
          v15 = v10;
          if (v10)
          {
            (**v10)(v10);
          }

          (*(*v11 + 32))(v11, &v15);
          result = v15;
          if (v15)
          {
            result = (*(*v15 + 8))(v15);
          }
        }

        if (v10)
        {
          return (*(*v10 + 8))(v10);
        }
      }
    }
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    v13 = result[129];
    result[129] = v12;
    if (v13)
    {
      v14 = *(*v13 + 8);

      return v14(v13);
    }
  }

  return result;
}

BOOL webrtc::VideoCodecSettings::operator!=(uint64_t a1, uint64_t a2)
{
  if (!webrtc::Codec::operator==(a1, a2))
  {
    v5 = 1;
    return v5 & 1;
  }

  if (*(a1 + 216) == *(a2 + 216) && *(a1 + 220) == *(a2 + 220) && *(a1 + 224) == *(a2 + 224) && *(a1 + 228) == *(a2 + 228) && *(a1 + 232) == *(a2 + 232))
  {
    v4 = *(a1 + 240);
    v5 = v4 ^ *(a2 + 240);
    if (v4 == 1 && (*(a2 + 240) & 1) != 0)
    {
      return *(a1 + 236) != *(a2 + 236);
    }

    return v5 & 1;
  }

  return 1;
}

__n128 webrtc::WebRtcVideoSendChannel::SetSendCodecChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1128);
  (*(a1 + 1128))(1, a1 + 1112, a1 + 1112);
  *(a1 + 1128) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 1136) = 0;
  (*(a2 + 16))(0, a2, a1 + 1112);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

__n128 webrtc::WebRtcVideoSendChannel::SetSsrcListChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1160);
  (*(a1 + 1160))(1, a1 + 1144, a1 + 1144);
  *(a1 + 1160) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 1168) = 0;
  (*(a2 + 16))(0, a2, a1 + 1144);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

uint64_t webrtc::WebRtcVideoSendChannel::SendCodecRtcpMode(webrtc::WebRtcVideoSendChannel *this)
{
  if (*(this + 681))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t webrtc::WebRtcVideoSendChannel::SendCodecRtxTime(webrtc::WebRtcVideoSendChannel *this)
{
  if (*(this + 488) == 1)
  {
    return *(this + 476);
  }

  else
  {
    return 0;
  }
}

__n128 non-virtual thunk towebrtc::WebRtcVideoSendChannel::SetSsrcListChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1096);
  (*(a1 + 1096))(1, a1 + 1080, a1 + 1080);
  *(a1 + 1096) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 1104) = 0;
  (*(a2 + 16))(0, a2, a1 + 1080);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

__n128 non-virtual thunk towebrtc::WebRtcVideoSendChannel::SetSendCodecChangedCallback(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1064);
  (*(a1 + 1064))(1, a1 + 1048, a1 + 1048);
  *(a1 + 1064) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 1072) = 0;
  (*(a2 + 16))(0, a2, a1 + 1048);
  result = *(a2 + 16);
  *v4 = result;
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoSendChannel::SendCodecRtcpMode(webrtc::WebRtcVideoSendChannel *this)
{
  if (*(this + 617))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoSendChannel::SendCodecRtxTime(webrtc::WebRtcVideoSendChannel *this)
{
  if (*(this + 424) == 1)
  {
    return *(this + 412) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void std::vector<webrtc::RtpHeaderExtensionCapability>::__emplace_back_slow_path<char const* const&,int,webrtc::RtpTransceiverDirection>(void *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x666666666666666)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
    {
      v2 = 0x666666666666666;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<webrtc::VideoCodecSettings>::__emplace_back_slow_path<webrtc::VideoCodecSettings const&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0x108421084210842)
  {
    if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - v1) >> 3) > v2)
    {
      v2 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - v1) >> 3);
    }

    if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - v1) >> 3) >= 0x84210842108421)
    {
      v2 = 0x108421084210842;
    }

    if (v2)
    {
      if (v2 <= 0x108421084210842)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::__tree<std::__value_type<int,webrtc::Codec>,std::__map_value_compare<int,std::__value_type<int,webrtc::Codec>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::Codec>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,webrtc::Codec>,std::__map_value_compare<int,std::__value_type<int,webrtc::Codec>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::Codec>>>::destroy(*a1);
    std::__tree<std::__value_type<int,webrtc::Codec>,std::__map_value_compare<int,std::__value_type<int,webrtc::Codec>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::Codec>>>::destroy(a1[1]);
    webrtc::Codec::~Codec((a1 + 5));

    operator delete(a1);
  }
}

__n128 std::__optional_move_assign_base<webrtc::VideoCodecSettings,false>::operator=[abi:sn200100](webrtc::Codec *a1, uint64_t a2)
{
  if (*(a1 + 248) == *(a2 + 248))
  {
    if (*(a1 + 248))
    {
      webrtc::Codec::operator=(a1, a2);
      result = *(a2 + 216);
      *(v4 + 225) = *(a2 + 225);
      *(v4 + 216) = result;
    }
  }

  else if (*(a1 + 248))
  {
    webrtc::Codec::~Codec(a1);
    *(v5 + 248) = 0;
  }

  else
  {
    v7 = webrtc::Codec::Codec(a1, a2);
    result = *(a2 + 216);
    *(v7 + 225) = *(a2 + 225);
    *(v7 + 216) = result;
    *(v7 + 248) = 1;
  }

  return result;
}

void webrtc::WebRtcVideoSendChannel::ChangedSenderParameters::~ChangedSenderParameters(void **this)
{
  if (*(this + 376) == 1 && *(this + 375) < 0)
  {
    operator delete(this[44]);
    if (*(this + 344) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 344) != 1)
  {
    goto LABEL_13;
  }

  v2 = this[40];
  if (v2)
  {
    v3 = this[41];
    v4 = this[40];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = this[40];
    }

    this[41] = v2;
    operator delete(v4);
  }

LABEL_13:
  if (*(this + 312) == 1)
  {
    v6 = this[36];
    if (v6)
    {
      v7 = this[37];
      v8 = this[36];
      if (v7 != v6)
      {
        do
        {
          webrtc::Codec::~Codec((v7 - 248));
        }

        while (v7 != v6);
        v8 = this[36];
      }

      this[37] = v6;
      operator delete(v8);
    }
  }

  if (*(this + 280) == 1)
  {
    v9 = this[32];
    if (v9)
    {
      v10 = this[33];
      v11 = this[32];
      if (v10 != v9)
      {
        do
        {
          webrtc::Codec::~Codec((v10 - 248));
        }

        while (v10 != v9);
        v11 = this[32];
      }

      this[33] = v9;
      operator delete(v11);
    }
  }

  if (*(this + 248) == 1)
  {
    webrtc::Codec::~Codec(this);
  }
}

void std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>(uint64_t *a1, webrtc::Codec *a2, webrtc::Codec *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xEF7BDEF7BDEF7BDFLL * ((v7 - *a1) >> 3) < a4)
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
          webrtc::Codec::~Codec((v10 - 248));
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

    if (a4 <= 0x108421084210842)
    {
      v12 = 0xEF7BDEF7BDEF7BDFLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x84210842108421)
      {
        v14 = 0x108421084210842;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x108421084210842)
      {
        operator new();
      }
    }

    goto LABEL_32;
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::Codec::operator=(v8, v5);
        v22 = *(v5 + 216);
        *(v8 + 225) = *(v5 + 225);
        *(v8 + 216) = v22;
        v5 = (v5 + 248);
        v8 += 248;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 = (v15 - 248);
      webrtc::Codec::~Codec(v15);
    }
  }

  else
  {
    if (v15 != v8)
    {
      v17 = &v16[a2];
      do
      {
        webrtc::Codec::operator=(v8, v5);
        v18 = *(v5 + 216);
        *(v8 + 225) = *(v5 + 225);
        *(v8 + 216) = v18;
        v5 = (v5 + 248);
        v8 += 248;
        v16 -= 248;
      }

      while (v16);
      v15 = a1[1];
      v5 = v17;
    }

    v8 = v15;
    if (v5 != a3)
    {
      v8 = v15;
      v19 = v15;
      while (v19)
      {
        v20 = webrtc::Codec::Codec(v19, v5);
        v21 = *(v5 + 216);
        *(v20 + 225) = *(v5 + 225);
        *(v20 + 216) = v21;
        v5 = (v5 + 248);
        v19 = (v20 + 248);
        v8 += 248;
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

void std::vector<webrtc::RtpCodecParameters>::__emplace_back_slow_path<webrtc::RtpCodecParameters>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 <= 0x249249249249249)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - v1) >> 4) > v2)
    {
      v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - v1) >> 4);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - v1) >> 4)) >= 0x124924924924924)
    {
      v2 = 0x249249249249249;
    }

    if (v2)
    {
      if (v2 <= 0x249249249249249)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::ToStringIfSet<BOOL>(std::string *a1, const std::string::value_type *a2, unsigned __int8 *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a3[1] != 1)
  {
    return;
  }

  if (!a2)
  {
    goto LABEL_56;
  }

  std::string::__assign_external(a1, a2);
  size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (size - 21 < 2)
    {
      v7 = 22;
      goto LABEL_7;
    }

    v8 = a1;
    v9 = a1 + size;
    if (a1 + size > ": ")
    {
LABEL_13:
      *v9 = 8250;
      v10 = size + 2;
      if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
      {
        a1->__r_.__value_.__l.__size_ = v10;
        v8->__r_.__value_.__s.__data_[v10] = 0;
        if (a3[1] == 1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(&a1->__r_.__value_.__s + 23) = v10 & 0x7F;
        v8->__r_.__value_.__s.__data_[v10] = 0;
        if (a3[1] == 1)
        {
          goto LABEL_15;
        }
      }

LABEL_28:
      LODWORD(v13) = 0;
      HIBYTE(v31) = 0;
      LOBYTE(__p) = 0;
LABEL_29:
      v14 = v13;
      v16 = v13 == 0;
      p_p = &__p;
      v17 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

LABEL_24:
      v18 = 22;
      v19 = v17;
      if (22 - v17 >= v14)
      {
        goto LABEL_31;
      }

LABEL_25:
      std::string::__grow_by_and_replace(a1, v18, v14 - v18 + v19, v19, v19, 0, v14, p_p);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }

LABEL_12:
    if (v9 + 2 > ": ")
    {
LABEL_56:
      __break(1u);
LABEL_57:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_13;
  }

  size = a1->__r_.__value_.__l.__size_;
  v7 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 - size >= 2)
  {
    v8 = a1->__r_.__value_.__r.__words[0];
    v9 = (a1->__r_.__value_.__r.__words[0] + size);
    if (v9 > ": ")
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_7:
  std::string::__grow_by_and_replace(a1, v7, size - v7 + 2, size, size, 0, 2uLL, ": ");
  if (a3[1] != 1)
  {
    goto LABEL_28;
  }

LABEL_15:
  v11 = *a3;
  v30 = 0;
  v31 = 0x1600000000000000;
  __p = 0;
  v12 = absl::numbers_internal::FastIntToBuffer(v11, &__p, v5);
  v13 = v12 - &__p;
  if ((SHIBYTE(v31) & 0x8000000000000000) != 0)
  {
    if (v30 < v13)
    {
      goto LABEL_57;
    }

    v30 = v12 - &__p;
    *(__p + v13) = 0;
    LOBYTE(v13) = HIBYTE(v31);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v13 > SHIBYTE(v31))
    {
      goto LABEL_57;
    }

    HIBYTE(v31) = v12 - &__p;
    *v12 = 0;
    LOBYTE(v13) = HIBYTE(v31);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_18:
      LODWORD(v13) = v13;
      goto LABEL_29;
    }
  }

  p_p = __p;
  v14 = v30;
  v16 = v30 == 0;
  if (!__p && v30)
  {
    goto LABEL_56;
  }

  v17 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_30:
  v19 = a1->__r_.__value_.__l.__size_;
  v18 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v18 - v19 < v14)
  {
    goto LABEL_25;
  }

LABEL_31:
  if (v16)
  {
    goto LABEL_39;
  }

  v20 = a1;
  if ((v17 & 0x80000000) != 0)
  {
    v20 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v21 = v20 + v19;
  if (v20 + v19 <= p_p && &v21[v14] > p_p)
  {
    goto LABEL_56;
  }

  v22 = v14;
  memmove(v21, p_p, v14);
  v23 = v19 + v22;
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&a1->__r_.__value_.__s + 23) = v23 & 0x7F;
    v20->__r_.__value_.__s.__data_[v23] = 0;
LABEL_39:
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  a1->__r_.__value_.__l.__size_ = v23;
  v20->__r_.__value_.__s.__data_[v23] = 0;
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
LABEL_40:
    v24 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(__p);
  v24 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v24 & 0x8000000000000000) == 0)
  {
LABEL_41:
    if (v24 - 21 < 2)
    {
      v25 = 22;
LABEL_48:
      std::string::__grow_by_and_replace(a1, v25, v24 - v25 + 2, v24, v24, 0, 2uLL, ", ");
      return;
    }

    v26 = a1;
    v27 = a1 + v24;
    if (a1 + v24 > ", ")
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_47:
  v24 = a1->__r_.__value_.__l.__size_;
  v25 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v25 - v24 < 2)
  {
    goto LABEL_48;
  }

  v26 = a1->__r_.__value_.__r.__words[0];
  v27 = (a1->__r_.__value_.__r.__words[0] + v24);
  if (v27 > ", ")
  {
    goto LABEL_52;
  }

LABEL_51:
  if (v27 + 2 > ", ")
  {
    goto LABEL_56;
  }

LABEL_52:
  *v27 = 8236;
  v28 = v24 + 2;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    a1->__r_.__value_.__l.__size_ = v28;
  }

  else
  {
    *(&a1->__r_.__value_.__s + 23) = v28 & 0x7F;
  }

  v26->__r_.__value_.__s.__data_[v28] = 0;
}

void std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(a1[1]);
    std::__tree<webrtc::SocketAddress>::destroy((a1 + 5), a1[6]);

    operator delete(a1);
  }
}

void std::vector<webrtc::VideoSenderInfo>::__emplace_back_slow_path<webrtc::VideoSenderInfo const&>(void *a1)
{
  v1 = 0xCBEEA4E1A08AD8F3 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x8AD8F2FBA93868)
  {
    if (0x97DD49C34115B1E6 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x97DD49C34115B1E6 * ((a1[2] - *a1) >> 3);
    }

    if (0xCBEEA4E1A08AD8F3 * ((a1[2] - *a1) >> 3) >= 0x456C797DD49C34)
    {
      v2 = 0x8AD8F2FBA93868;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x8AD8F2FBA93868)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NonFlexfecReceiveCodecsHaveChanged(std::vector<webrtc::VideoCodecSettings>,std::vector<webrtc::VideoCodecSettings>)::$_0 &,webrtc::VideoCodecSettings*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v302 = *MEMORY[0x277D85DE8];
LABEL_2:
  v251 = a2 - 248;
  v6 = a1;
  while (1)
  {
    a1 = v6;
    v7 = a2 - v6;
    v8 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - v6) >> 3);
    v9 = v8 - 2;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        if (*(a2 - 236) <= *(a1 + 12))
        {
          return;
        }

        v106 = *(a1 + 8);
        v280 = &unk_288291428;
        v281 = v106;
        v107 = *(a1 + 32);
        v282 = *(a1 + 16);
        v283 = v107;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        v284 = *(a1 + 40);
        LOBYTE(v285) = 0;
        v287 = 0;
        if (*(a1 + 80) == 1)
        {
          v108 = *(a1 + 56);
          v286 = *(a1 + 72);
          v285 = v108;
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          *(a1 + 56) = 0;
          v287 = 1;
        }

        v288 = 0;
        v109 = *(a1 + 88);
        v110 = *(a1 + 128);
        v111 = *(a1 + 112);
        v289 = *(a1 + 96);
        v290 = v111;
        v288 = v109;
        v291 = v110;
        *(a1 + 88) = 0;
        LOBYTE(v292) = 0;
        v294 = 0;
        if (*(a1 + 160) == 1)
        {
          v112 = *(a1 + 136);
          v293 = *(a1 + 152);
          v292 = v112;
          *(a1 + 144) = 0;
          *(a1 + 152) = 0;
          *(a1 + 136) = 0;
          v294 = 1;
        }

        v113 = (a1 + 176);
        v114 = *(a1 + 176);
        v44 = &v296;
        v295 = *(a1 + 168);
        v296 = v114;
        v297 = *(a1 + 184);
        if (v297)
        {
          *(v114 + 16) = &v296;
          *(a1 + 168) = v113;
          *v113 = 0;
          *(a1 + 184) = 0;
LABEL_246:
          v299 = 0;
          v298 = 0;
          v300 = 0;
          v239 = *(a1 + 192);
          v240 = *(a1 + 200);
          if (v240 != v239)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 4) <= 0x555555555555555)
            {
              operator new();
            }

            goto LABEL_259;
          }

          v241 = *(a1 + 216);
          *(v301 + 9) = *(a1 + 225);
          v301[0] = v241;
          webrtc::Codec::operator=(a1, v251);
          v242 = *(a2 - 23);
          *(a1 + 216) = *(a2 - 32);
          *(a1 + 225) = v242;
          webrtc::Codec::operator=(v251, &v280);
          v243 = *(v301 + 9);
          *(a2 - 32) = v301[0];
          *(a2 - 23) = v243;
          goto LABEL_250;
        }

LABEL_245:
        v295 = v44;
        goto LABEL_246;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      return;
    }

    if (v8 == 4)
    {
      break;
    }

    if (v8 == 5)
    {
      return;
    }

LABEL_10:
    if (v7 <= 5951)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v120 = a1 + 248;
          if (a1 + 248 != a2)
          {
            v121 = 0;
            v122 = a1;
            while (1)
            {
              v125 = v120;
              if (*(v122 + 260) > *(v122 + 12))
              {
                v126 = *(v120 + 8);
                v280 = &unk_288291428;
                v281 = v126;
                v127 = *(v125 + 32);
                v282 = *(v125 + 16);
                v283 = v127;
                *(v125 + 24) = 0;
                *(v125 + 32) = 0;
                *(v125 + 16) = 0;
                v284 = *(v125 + 40);
                LOBYTE(v285) = 0;
                v287 = 0;
                if (*(v125 + 80) == 1)
                {
                  v128 = *(v125 + 56);
                  v286 = *(v125 + 72);
                  v285 = v128;
                  *(v125 + 64) = 0;
                  *(v125 + 72) = 0;
                  *(v125 + 56) = 0;
                  v287 = 1;
                }

                v288 = 0;
                v288 = *(v125 + 88);
                v129 = *(v125 + 128);
                v130 = *(v125 + 112);
                v289 = *(v125 + 96);
                v290 = v130;
                v291 = v129;
                *(v125 + 88) = 0;
                LOBYTE(v292) = 0;
                v294 = 0;
                if (*(v125 + 160) == 1)
                {
                  v131 = *(v125 + 136);
                  v293 = *(v125 + 152);
                  v292 = v131;
                  *(v125 + 144) = 0;
                  *(v125 + 152) = 0;
                  *(v125 + 136) = 0;
                  v294 = 1;
                }

                v132 = (v125 + 176);
                v133 = *(v125 + 176);
                v295 = *(v125 + 168);
                v296 = v133;
                v297 = *(v125 + 184);
                if (v297)
                {
                  *(v133 + 16) = &v296;
                  *(v125 + 168) = v132;
                  *v132 = 0;
                  *(v125 + 184) = 0;
                  v298 = 0;
                  v299 = 0;
                  v300 = 0;
                  v135 = *(v125 + 192);
                  v134 = *(v125 + 200);
                  v136 = v134 - v135;
                  if (v134 != v135)
                  {
                    goto LABEL_150;
                  }
                }

                else
                {
                  v295 = &v296;
                  v298 = 0;
                  v299 = 0;
                  v300 = 0;
                  v138 = *(v125 + 192);
                  v137 = *(v125 + 200);
                  v136 = v137 - v138;
                  if (v137 != v138)
                  {
LABEL_150:
                    if (0xAAAAAAAAAAAAAAABLL * (v136 >> 4) <= 0x555555555555555)
                    {
                      operator new();
                    }

                    goto LABEL_259;
                  }
                }

                v301[0] = *(v122 + 464);
                *(v301 + 9) = *(v122 + 473);
                v139 = v121;
                do
                {
                  v140 = (a1 + v139);
                  webrtc::Codec::operator=(a1 + v139 + 248, a1 + v139);
                  v140[29] = *(v140 + 216);
                  *(v140 + 473) = *(v140 + 225);
                  if (!v139)
                  {
                    v123 = a1;
                    goto LABEL_139;
                  }

                  v139 -= 248;
                }

                while (SHIDWORD(v281) > *(v140 - 59));
                v123 = a1 + v139 + 248;
LABEL_139:
                webrtc::Codec::operator=(v123, &v280);
                v124 = *(v301 + 9);
                *(v140 + 216) = v301[0];
                *(v140 + 225) = v124;
                webrtc::Codec::~Codec(&v280);
              }

              v120 = v125 + 248;
              v121 += 248;
              v122 = v125;
              if (v125 + 248 == a2)
              {
                return;
              }
            }
          }
        }
      }

      else if (a1 != a2)
      {
        v218 = a1 + 248;
        if (a1 + 248 != a2)
        {
          v219 = 0;
          v220 = 248;
          v221 = a1;
          while (1)
          {
            v224 = v220;
            if (*(v221 + 260) > *(v221 + 12))
            {
              v225 = *(v218 + 8);
              v280 = &unk_288291428;
              v281 = v225;
              v226 = *(v218 + 32);
              v282 = *(v218 + 16);
              v283 = v226;
              *(v218 + 24) = 0;
              *(v218 + 32) = 0;
              *(v218 + 16) = 0;
              v284 = *(v218 + 40);
              LOBYTE(v285) = 0;
              v287 = 0;
              if (*(v218 + 80) == 1)
              {
                v227 = *(v218 + 56);
                v286 = *(v218 + 72);
                v285 = v227;
                *(v218 + 64) = 0;
                *(v218 + 72) = 0;
                *(v218 + 56) = 0;
                v287 = 1;
              }

              v288 = 0;
              v288 = *(v218 + 88);
              v228 = *(v218 + 128);
              v229 = *(v218 + 112);
              v289 = *(v218 + 96);
              v290 = v229;
              v291 = v228;
              *(v218 + 88) = 0;
              LOBYTE(v292) = 0;
              v294 = 0;
              if (*(v218 + 160) == 1)
              {
                v230 = *(v218 + 136);
                v293 = *(v218 + 152);
                v292 = v230;
                *(v218 + 144) = 0;
                *(v218 + 152) = 0;
                *(v218 + 136) = 0;
                v294 = 1;
              }

              v231 = (v218 + 176);
              v232 = *(v218 + 176);
              v295 = *(v218 + 168);
              v296 = v232;
              v297 = *(v218 + 184);
              if (v297)
              {
                *(v232 + 16) = &v296;
                *(v218 + 168) = v231;
                *v231 = 0;
                *(v218 + 184) = 0;
                v298 = 0;
                v299 = 0;
                v300 = 0;
                v234 = *(v218 + 192);
                v233 = *(v218 + 200);
                v235 = v233 - v234;
                if (v233 != v234)
                {
                  goto LABEL_238;
                }
              }

              else
              {
                v295 = &v296;
                v298 = 0;
                v299 = 0;
                v300 = 0;
                v237 = *(v218 + 192);
                v236 = *(v218 + 200);
                v235 = v236 - v237;
                if (v236 != v237)
                {
LABEL_238:
                  if (0xAAAAAAAAAAAAAAABLL * (v235 >> 4) <= 0x555555555555555)
                  {
                    operator new();
                  }

                  goto LABEL_259;
                }
              }

              v301[0] = *(v221 + 464);
              *(v301 + 9) = *(v221 + 473);
              do
              {
                v238 = (a1 + v219);
                webrtc::Codec::operator=(a1 + v219 + 248, a1 + v219);
                v238[29] = *(v238 + 216);
                *(v238 + 473) = *(v238 + 225);
                if (v219 == -248)
                {
                  goto LABEL_244;
                }

                v219 -= 248;
              }

              while (SHIDWORD(v281) > *(v238 - 59));
              v222 = a1 + v219;
              webrtc::Codec::operator=(a1 + v219 + 248, &v280);
              v223 = *(v301 + 9);
              *(v222 + 464) = v301[0];
              *(v222 + 473) = v223;
              webrtc::Codec::~Codec(&v280);
            }

            v221 = a1 + v224;
            v220 = v224 + 248;
            v218 = a1 + v224 + 248;
            v219 = v224;
            if (v218 == a2)
            {
              return;
            }
          }
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v141 = v9 >> 1;
        v142 = v9 >> 1;
        v253 = v7;
        while (1)
        {
          v144 = v142;
          if (v141 >= v142)
          {
            v145 = (2 * v142) | 1;
            v146 = a1 + 248 * v145;
            if (2 * v142 + 2 < v8)
            {
              v147 = *(v146 + 12);
              v148 = *(v146 + 260);
              v149 = v147 <= v148;
              v150 = v147 <= v148 ? 0 : 248;
              v146 += v150;
              if (!v149)
              {
                v145 = 2 * v142 + 2;
              }
            }

            v151 = a1 + 248 * v142;
            if (*(v146 + 12) <= *(v151 + 12))
            {
              v257 = v142;
              v280 = &unk_288291428;
              v281 = *(v151 + 8);
              v152 = *(v151 + 16);
              v283 = *(v151 + 32);
              v282 = v152;
              *(v151 + 24) = 0;
              *(v151 + 32) = 0;
              *(v151 + 16) = 0;
              v284 = *(v151 + 40);
              LOBYTE(v285) = 0;
              v287 = 0;
              if (*(v151 + 80) == 1)
              {
                v153 = *(v151 + 56);
                v286 = *(v151 + 72);
                v285 = v153;
                *(v151 + 64) = 0;
                *(v151 + 72) = 0;
                *(v151 + 56) = 0;
                v287 = 1;
              }

              v288 = 0;
              v288 = *(v151 + 88);
              v154 = *(v151 + 96);
              v155 = *(v151 + 112);
              v291 = *(v151 + 128);
              v289 = v154;
              v290 = v155;
              *(v151 + 88) = 0;
              LOBYTE(v292) = 0;
              v294 = 0;
              if (*(v151 + 160) == 1)
              {
                v156 = *(v151 + 136);
                v293 = *(v151 + 152);
                v292 = v156;
                *(v151 + 144) = 0;
                *(v151 + 152) = 0;
                *(v151 + 136) = 0;
                v294 = 1;
              }

              v157 = (v151 + 176);
              v158 = *(v151 + 176);
              v295 = *(v151 + 168);
              v296 = v158;
              v297 = *(v151 + 184);
              if (v297)
              {
                *(v158 + 16) = &v296;
                *(v151 + 168) = v157;
                *v157 = 0;
                *(v151 + 184) = 0;
                v298 = 0;
                v299 = 0;
                v300 = 0;
                v159 = *(v151 + 192);
                v160 = *(v151 + 200);
                v161 = v160 - v159;
                if (v160 != v159)
                {
                  goto LABEL_176;
                }
              }

              else
              {
                v295 = &v296;
                v298 = 0;
                v299 = 0;
                v300 = 0;
                v162 = *(v151 + 192);
                v163 = *(v151 + 200);
                v161 = v163 - v162;
                if (v163 != v162)
                {
LABEL_176:
                  if (0xAAAAAAAAAAAAAAABLL * (v161 >> 4) <= 0x555555555555555)
                  {
                    operator new();
                  }

                  goto LABEL_259;
                }
              }

              v164 = *(v151 + 216);
              *(v301 + 9) = *(v151 + 225);
              v301[0] = v164;
              do
              {
                v165 = v146;
                webrtc::Codec::operator=(v151, v146);
                v166 = *(v146 + 225);
                *(v151 + 216) = *(v146 + 216);
                *(v151 + 225) = v166;
                if (v141 < v145)
                {
                  break;
                }

                v167 = (2 * v145) | 1;
                v146 = a1 + 248 * v167;
                if (2 * v145 + 2 < v8)
                {
                  v168 = *(v146 + 12);
                  v169 = *(v146 + 260);
                  v170 = v168 <= v169;
                  v171 = v168 <= v169 ? 0 : 248;
                  v146 += v171;
                  if (!v170)
                  {
                    v167 = 2 * v145 + 2;
                  }
                }

                v151 = v165;
                v145 = v167;
              }

              while (*(v146 + 12) <= SHIDWORD(v281));
              webrtc::Codec::operator=(v165, &v280);
              v143 = *(v301 + 9);
              *(v165 + 216) = v301[0];
              *(v165 + 225) = v143;
              webrtc::Codec::~Codec(&v280);
              v144 = v257;
            }
          }

          v142 = v144 - 1;
          if (!v144)
          {
            v172 = 0xEF7BDEF7BDEF7BDFLL * (v253 >> 3);
            v256 = (a1 + 176);
            while (1)
            {
              v174 = a2;
              v175 = *(a1 + 8);
              v258 = &unk_288291428;
              v259 = v175;
              v176 = *(a1 + 32);
              v260 = *(a1 + 16);
              v261 = v176;
              *(a1 + 24) = 0;
              *(a1 + 32) = 0;
              *(a1 + 16) = 0;
              v262 = *(a1 + 40);
              LOBYTE(v263) = 0;
              v265 = 0;
              if (*(a1 + 80) == 1)
              {
                v177 = *(a1 + 56);
                v264 = *(a1 + 72);
                v263 = v177;
                *(a1 + 64) = 0;
                *(a1 + 72) = 0;
                *(a1 + 56) = 0;
                v265 = 1;
              }

              v266 = 0;
              v266 = *(a1 + 88);
              v178 = *(a1 + 128);
              v179 = *(a1 + 112);
              v267 = *(a1 + 96);
              v268 = v179;
              v269 = v178;
              *(a1 + 88) = 0;
              LOBYTE(v270) = 0;
              v272 = 0;
              if (*(a1 + 160) == 1)
              {
                v180 = *(a1 + 136);
                v271 = *(a1 + 152);
                v270 = v180;
                *(a1 + 144) = 0;
                *(a1 + 152) = 0;
                *(a1 + 136) = 0;
                v272 = 1;
              }

              v181 = *(a1 + 176);
              v273 = *(a1 + 168);
              v274 = v181;
              v275 = *(a1 + 184);
              if (v275)
              {
                v181[2] = &v274;
                *(a1 + 168) = v256;
                *v256 = 0;
                *(a1 + 184) = 0;
                v276 = 0;
                v277 = 0;
                v278 = 0;
                v182 = *(a1 + 192);
                v183 = *(a1 + 200);
                v184 = v183 - v182;
                if (v183 != v182)
                {
                  goto LABEL_199;
                }
              }

              else
              {
                v273 = &v274;
                v276 = 0;
                v277 = 0;
                v278 = 0;
                v185 = *(a1 + 192);
                v186 = *(a1 + 200);
                v184 = v186 - v185;
                if (v186 != v185)
                {
LABEL_199:
                  if (0xAAAAAAAAAAAAAAABLL * (v184 >> 4) <= 0x555555555555555)
                  {
                    operator new();
                  }

                  goto LABEL_259;
                }
              }

              v187 = 0;
              v188 = *(a1 + 216);
              *(v279 + 9) = *(a1 + 225);
              v279[0] = v188;
              v189 = a1;
              do
              {
                v195 = v189 + 248 * v187;
                v193 = v195 + 248;
                if (2 * v187 + 2 < v172)
                {
                  v190 = *(v195 + 260);
                  v191 = *(v195 + 508);
                  v192 = v195 + 496;
                  if (v190 <= v191)
                  {
                    v187 = (2 * v187) | 1;
                  }

                  else
                  {
                    v193 = v192;
                    v187 = 2 * v187 + 2;
                  }
                }

                else
                {
                  v187 = (2 * v187) | 1;
                }

                webrtc::Codec::operator=(v189, v193);
                v194 = *(v193 + 225);
                *(v189 + 216) = *(v193 + 216);
                *(v189 + 225) = v194;
                v189 = v193;
              }

              while (v187 <= ((v172 - 2) >> 1));
              a2 = v174 - 248;
              if (v193 == v174 - 248)
              {
                webrtc::Codec::operator=(v193, &v258);
                v173 = *(v279 + 9);
                *(v193 + 216) = v279[0];
                *(v193 + 225) = v173;
              }

              else
              {
                webrtc::Codec::operator=(v193, v174 - 248);
                v196 = *(v174 - 23);
                *(v193 + 216) = *(v174 - 32);
                *(v193 + 225) = v196;
                webrtc::Codec::operator=(v174 - 248, &v258);
                v197 = *(v279 + 9);
                *(v174 - 32) = v279[0];
                *(v174 - 23) = v197;
                v198 = v193 - a1 + 248;
                if (v198 >= 249)
                {
                  v199 = (-2 - 0x1084210842108421 * (v198 >> 3)) >> 1;
                  v200 = a1 + 248 * v199;
                  if (*(v200 + 12) > *(v193 + 12))
                  {
                    v201 = *(v193 + 8);
                    v280 = &unk_288291428;
                    v281 = v201;
                    v202 = *(v193 + 32);
                    v282 = *(v193 + 16);
                    v283 = v202;
                    *(v193 + 24) = 0;
                    *(v193 + 32) = 0;
                    *(v193 + 16) = 0;
                    v284 = *(v193 + 40);
                    LOBYTE(v285) = 0;
                    v287 = 0;
                    if (*(v193 + 80) == 1)
                    {
                      v203 = *(v193 + 56);
                      v286 = *(v193 + 72);
                      v285 = v203;
                      *(v193 + 64) = 0;
                      *(v193 + 72) = 0;
                      *(v193 + 56) = 0;
                      v287 = 1;
                    }

                    v288 = 0;
                    v288 = *(v193 + 88);
                    v204 = *(v193 + 128);
                    v205 = *(v193 + 112);
                    v289 = *(v193 + 96);
                    v290 = v205;
                    v291 = v204;
                    *(v193 + 88) = 0;
                    LOBYTE(v292) = 0;
                    v294 = 0;
                    if (*(v193 + 160) == 1)
                    {
                      v206 = *(v193 + 136);
                      v293 = *(v193 + 152);
                      v292 = v206;
                      *(v193 + 144) = 0;
                      *(v193 + 152) = 0;
                      *(v193 + 136) = 0;
                      v294 = 1;
                    }

                    v207 = (v193 + 176);
                    v208 = *(v193 + 176);
                    v295 = *(v193 + 168);
                    v296 = v208;
                    v297 = *(v193 + 184);
                    if (v297)
                    {
                      *(v208 + 16) = &v296;
                      *(v193 + 168) = v207;
                      *v207 = 0;
                      *(v193 + 184) = 0;
                      v298 = 0;
                      v299 = 0;
                      v300 = 0;
                      v209 = *(v193 + 192);
                      v210 = *(v193 + 200);
                      v211 = v210 - v209;
                      if (v210 != v209)
                      {
                        goto LABEL_219;
                      }
                    }

                    else
                    {
                      v295 = &v296;
                      v298 = 0;
                      v299 = 0;
                      v300 = 0;
                      v212 = *(v193 + 192);
                      v213 = *(v193 + 200);
                      v211 = v213 - v212;
                      if (v213 != v212)
                      {
LABEL_219:
                        if (0xAAAAAAAAAAAAAAABLL * (v211 >> 4) <= 0x555555555555555)
                        {
                          operator new();
                        }

                        goto LABEL_259;
                      }
                    }

                    v214 = *(v193 + 216);
                    *(v301 + 9) = *(v193 + 225);
                    v301[0] = v214;
                    do
                    {
                      v215 = v200;
                      webrtc::Codec::operator=(v193, v200);
                      v216 = *(v200 + 225);
                      *(v193 + 216) = *(v200 + 216);
                      *(v193 + 225) = v216;
                      if (!v199)
                      {
                        break;
                      }

                      v199 = (v199 - 1) >> 1;
                      v200 = a1 + 248 * v199;
                      v193 = v215;
                    }

                    while (*(v200 + 12) > SHIDWORD(v281));
                    webrtc::Codec::operator=(v215, &v280);
                    v217 = *(v301 + 9);
                    *(v215 + 216) = v301[0];
                    *(v215 + 225) = v217;
                    webrtc::Codec::~Codec(&v280);
                  }
                }
              }

              webrtc::Codec::~Codec(&v258);
              v149 = v172-- <= 2;
              if (v149)
              {
                return;
              }
            }
          }
        }
      }

      return;
    }

    v10 = a1 + 248 * (v8 >> 1);
    if (v7 < 0x7C01)
    {
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v28 = *(a1 + 8);
      v258 = &unk_288291428;
      v259 = v28;
      v29 = *(a1 + 32);
      v260 = *(a1 + 16);
      v261 = v29;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v262 = *(a1 + 40);
      LOBYTE(v263) = 0;
      v265 = 0;
      if (*(a1 + 80) == 1)
      {
        v30 = *(a1 + 56);
        v264 = *(a1 + 72);
        v263 = v30;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        v265 = 1;
      }

      v266 = 0;
      v266 = *(a1 + 88);
      v31 = *(a1 + 128);
      v32 = *(a1 + 112);
      v267 = *(a1 + 96);
      v268 = v32;
      v269 = v31;
      *(a1 + 88) = 0;
      LOBYTE(v270) = 0;
      v272 = 0;
      if (*(a1 + 160) == 1)
      {
        v33 = *(a1 + 136);
        v271 = *(a1 + 152);
        v270 = v33;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 136) = 0;
        v272 = 1;
      }

      v34 = (a1 + 176);
      v35 = *(a1 + 176);
      v273 = *(a1 + 168);
      v274 = v35;
      v275 = *(a1 + 184);
      if (v275)
      {
        v35[2] = &v274;
        *(a1 + 168) = v34;
        *v34 = 0;
        *(a1 + 184) = 0;
        v276 = 0;
        v277 = 0;
        v278 = 0;
        v36 = *(a1 + 192);
        v37 = *(a1 + 200);
        v38 = v37 - v36;
        if (v37 != v36)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v273 = &v274;
        v276 = 0;
        v277 = 0;
        v278 = 0;
        v39 = *(a1 + 192);
        v40 = *(a1 + 200);
        v38 = v40 - v39;
        if (v40 != v39)
        {
LABEL_33:
          if (0xAAAAAAAAAAAAAAABLL * (v38 >> 4) <= 0x555555555555555)
          {
            operator new();
          }

          goto LABEL_259;
        }
      }

      v41 = HIDWORD(v28);
      v42 = 0;
      v43 = *(a1 + 216);
      *(v279 + 9) = *(a1 + 225);
      v279[0] = v43;
      do
      {
        v44 = (a1 + v42);
        if (a1 + v42 + 248 == a2)
        {
          goto LABEL_244;
        }

        v42 += 248;
      }

      while (*(v44 + 65) > v41);
      v6 = a1 + v42;
      v44 = a2;
      if (v42 != 248)
      {
        while (v44 != a1)
        {
          v45 = v44 - 31;
          v46 = *(v44 - 59);
          v44 -= 31;
          if (v46 > v41)
          {
            goto LABEL_46;
          }
        }

LABEL_244:
        __break(1u);
        goto LABEL_245;
      }

      v47 = a2;
      do
      {
        if (v6 >= v47)
        {
          v45 = v47;
          v252 = v6;
          goto LABEL_67;
        }

        v45 = (v47 - 248);
        v48 = *(v47 - 236);
        v47 -= 248;
      }

      while (v48 <= v41);
LABEL_46:
      v252 = v6;
      if (v6 < v45)
      {
        v49 = v45;
        do
        {
          v50 = *(v6 + 8);
          v280 = &unk_288291428;
          v281 = v50;
          v51 = *(v6 + 32);
          v282 = *(v6 + 16);
          v283 = v51;
          *(v6 + 24) = 0;
          *(v6 + 32) = 0;
          *(v6 + 16) = 0;
          v284 = *(v6 + 40);
          LOBYTE(v285) = 0;
          v287 = 0;
          if (*(v6 + 80) == 1)
          {
            v52 = *(v6 + 56);
            v286 = *(v6 + 72);
            v285 = v52;
            *(v6 + 64) = 0;
            *(v6 + 72) = 0;
            *(v6 + 56) = 0;
            v287 = 1;
          }

          v288 = *(v6 + 88);
          v53 = *(v6 + 128);
          v54 = *(v6 + 112);
          v289 = *(v6 + 96);
          v290 = v54;
          v291 = v53;
          *(v6 + 88) = 0;
          LOBYTE(v292) = 0;
          v294 = 0;
          if (*(v6 + 160) == 1)
          {
            v55 = *(v6 + 136);
            v293 = *(v6 + 152);
            v292 = v55;
            *(v6 + 144) = 0;
            *(v6 + 152) = 0;
            *(v6 + 136) = 0;
            v294 = 1;
          }

          v56 = (v6 + 176);
          v57 = *(v6 + 176);
          v295 = *(v6 + 168);
          v296 = v57;
          v297 = *(v6 + 184);
          if (v297)
          {
            *(v57 + 16) = &v296;
            *(v6 + 168) = v56;
            *v56 = 0;
            *(v6 + 184) = 0;
            v298 = 0;
            v299 = 0;
            v300 = 0;
            v58 = *(v6 + 192);
            v59 = *(v6 + 200);
            v60 = v59 - v58;
            if (v59 != v58)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v295 = &v296;
            v298 = 0;
            v299 = 0;
            v300 = 0;
            v61 = *(v6 + 192);
            v62 = *(v6 + 200);
            v60 = v62 - v61;
            if (v62 != v61)
            {
LABEL_56:
              if (0xAAAAAAAAAAAAAAABLL * (v60 >> 4) <= 0x555555555555555)
              {
                operator new();
              }

              goto LABEL_259;
            }
          }

          v63 = *(v6 + 216);
          *(v301 + 9) = *(v6 + 225);
          v301[0] = v63;
          webrtc::Codec::operator=(v6, v49);
          v64 = *(v49 + 225);
          *(v6 + 216) = *(v49 + 216);
          *(v6 + 225) = v64;
          webrtc::Codec::operator=(v49, &v280);
          v65 = *(v301 + 9);
          *(v49 + 216) = v301[0];
          *(v49 + 225) = v65;
          webrtc::Codec::~Codec(&v280);
          v66 = v6 + 248;
          do
          {
            if (v66 == a2)
            {
              goto LABEL_244;
            }

            v44 = *(v66 + 12);
            v66 += 248;
          }

          while (v44 > SHIDWORD(v259));
          v6 = v66 - 248;
          v67 = v49;
          do
          {
            if (v67 == a1)
            {
              goto LABEL_244;
            }

            v49 = v67 - 248;
            v44 = *(v67 - 236);
            v67 -= 248;
          }

          while (v44 <= SHIDWORD(v259));
        }

        while (v6 < v49);
      }

LABEL_67:
      if (v6 - 248 != a1)
      {
        webrtc::Codec::operator=(a1, v6 - 248);
        v68 = *(v6 - 23);
        *(a1 + 216) = *(v6 - 32);
        *(a1 + 225) = v68;
      }

      webrtc::Codec::operator=(v6 - 248, &v258);
      v69 = *(v279 + 9);
      *(v6 - 32) = v279[0];
      *(v6 - 23) = v69;
      webrtc::Codec::~Codec(&v258);
      if (v252 < v45)
      {
        goto LABEL_72;
      }

      {
        a2 = v6 - 248;
        if (!v70)
        {
          goto LABEL_2;
        }

        return;
      }

      if (!v70)
      {
LABEL_72:
        a4 = 0;
      }
    }

    else
    {
      v11 = 248 * (v8 >> 1);
      v12 = *(a1 + 8);
      v280 = &unk_288291428;
      v281 = v12;
      v13 = *(a1 + 32);
      v282 = *(a1 + 16);
      v283 = v13;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v284 = *(a1 + 40);
      LOBYTE(v285) = 0;
      v287 = 0;
      if (*(a1 + 80) == 1)
      {
        v14 = *(a1 + 56);
        v286 = *(a1 + 72);
        v285 = v14;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        v287 = 1;
      }

      v288 = 0;
      v288 = *(a1 + 88);
      v15 = *(a1 + 128);
      v16 = *(a1 + 112);
      v289 = *(a1 + 96);
      v290 = v16;
      v291 = v15;
      *(a1 + 88) = 0;
      LOBYTE(v292) = 0;
      v294 = 0;
      if (*(a1 + 160) == 1)
      {
        v17 = *(a1 + 136);
        v293 = *(a1 + 152);
        v292 = v17;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 136) = 0;
        v294 = 1;
      }

      v18 = (a1 + 176);
      v19 = *(a1 + 176);
      v295 = *(a1 + 168);
      v296 = v19;
      v297 = *(a1 + 184);
      if (v297)
      {
        *(v19 + 16) = &v296;
        *(a1 + 168) = v18;
        *v18 = 0;
        *(a1 + 184) = 0;
        v298 = 0;
        v299 = 0;
        v300 = 0;
        v20 = *(a1 + 192);
        v21 = *(a1 + 200);
        v22 = v21 - v20;
        if (v21 != v20)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v295 = &v296;
        v298 = 0;
        v299 = 0;
        v300 = 0;
        v23 = *(a1 + 192);
        v24 = *(a1 + 200);
        v22 = v24 - v23;
        if (v24 != v23)
        {
LABEL_23:
          if (0xAAAAAAAAAAAAAAABLL * (v22 >> 4) <= 0x555555555555555)
          {
            operator new();
          }

          goto LABEL_259;
        }
      }

      v25 = *(a1 + 216);
      *(v301 + 9) = *(a1 + 225);
      v301[0] = v25;
      webrtc::Codec::operator=(a1, v10);
      v26 = *(v10 + 225);
      *(a1 + 216) = *(v10 + 216);
      *(a1 + 225) = v26;
      webrtc::Codec::operator=(v10, &v280);
      v27 = *(v301 + 9);
      *(v10 + 216) = v301[0];
      *(v10 + 225) = v27;
      webrtc::Codec::~Codec(&v280);
      --a3;
      if (a4)
      {
        goto LABEL_27;
      }

LABEL_26:
      if (*(a1 - 236) > *(a1 + 12))
      {
        goto LABEL_27;
      }

      v71 = *(a1 + 8);
      v258 = &unk_288291428;
      v259 = v71;
      v72 = *(a1 + 32);
      v260 = *(a1 + 16);
      v261 = v72;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v262 = *(a1 + 40);
      LOBYTE(v263) = 0;
      v265 = 0;
      if (*(a1 + 80) == 1)
      {
        v73 = *(a1 + 56);
        v264 = *(a1 + 72);
        v263 = v73;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        v265 = 1;
      }

      v266 = 0;
      v266 = *(a1 + 88);
      v74 = *(a1 + 128);
      v75 = *(a1 + 112);
      v267 = *(a1 + 96);
      v268 = v75;
      v269 = v74;
      *(a1 + 88) = 0;
      LOBYTE(v270) = 0;
      v272 = 0;
      if (*(a1 + 160) == 1)
      {
        v76 = *(a1 + 136);
        v271 = *(a1 + 152);
        v270 = v76;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 136) = 0;
        v272 = 1;
      }

      v77 = (a1 + 176);
      v44 = *(a1 + 176);
      v273 = *(a1 + 168);
      v274 = v44;
      v275 = *(a1 + 184);
      if (v275)
      {
        v44[2] = &v274;
        *(a1 + 168) = v77;
        *v77 = 0;
        *(a1 + 184) = 0;
      }

      else
      {
        v273 = &v274;
      }

      v276 = 0;
      v277 = 0;
      v278 = 0;
      v78 = *(a1 + 192);
      v79 = *(a1 + 200);
      if (v79 != v78)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v79 - v78) >> 4) <= 0x555555555555555)
        {
          operator new();
        }

        goto LABEL_259;
      }

      v80 = HIDWORD(v71);
      v81 = *(a1 + 216);
      *(v279 + 9) = *(a1 + 225);
      v279[0] = v81;
      if (v80 <= *(a2 - 236))
      {
        v83 = a1 + 248;
        do
        {
          v6 = v83;
          if (v83 >= a2)
          {
            break;
          }

          v44 = *(v83 + 12);
          v83 += 248;
        }

        while (v80 <= v44);
      }

      else
      {
        v82 = a1 + 248;
        do
        {
          if (v82 == a2)
          {
            goto LABEL_244;
          }

          v44 = *(v82 + 12);
          v82 += 248;
        }

        while (v80 <= v44);
        v6 = v82 - 248;
      }

      v84 = a2;
      if (v6 < a2)
      {
        v85 = a2;
        while (v85 != a1)
        {
          v84 = v85 - 248;
          v44 = *(v85 - 236);
          v85 -= 248;
          if (v80 <= v44)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_244;
      }

LABEL_95:
      while (v6 < v84)
      {
        v86 = *(v6 + 8);
        v280 = &unk_288291428;
        v281 = v86;
        v87 = *(v6 + 32);
        v282 = *(v6 + 16);
        v283 = v87;
        *(v6 + 24) = 0;
        *(v6 + 32) = 0;
        *(v6 + 16) = 0;
        v284 = *(v6 + 40);
        LOBYTE(v285) = 0;
        v287 = 0;
        if (*(v6 + 80) == 1)
        {
          v88 = *(v6 + 56);
          v286 = *(v6 + 72);
          v285 = v88;
          *(v6 + 64) = 0;
          *(v6 + 72) = 0;
          *(v6 + 56) = 0;
          v287 = 1;
        }

        v288 = 0;
        v288 = *(v6 + 88);
        v89 = *(v6 + 128);
        v90 = *(v6 + 112);
        v289 = *(v6 + 96);
        v290 = v90;
        v291 = v89;
        *(v6 + 88) = 0;
        LOBYTE(v292) = 0;
        v294 = 0;
        if (*(v6 + 160) == 1)
        {
          v91 = *(v6 + 136);
          v293 = *(v6 + 152);
          v292 = v91;
          *(v6 + 144) = 0;
          *(v6 + 152) = 0;
          *(v6 + 136) = 0;
          v294 = 1;
        }

        v92 = (v6 + 176);
        v93 = *(v6 + 176);
        v295 = *(v6 + 168);
        v296 = v93;
        v297 = *(v6 + 184);
        if (v297)
        {
          *(v93 + 16) = &v296;
          *(v6 + 168) = v92;
          *v92 = 0;
          *(v6 + 184) = 0;
          v298 = 0;
          v299 = 0;
          v300 = 0;
          v94 = *(v6 + 192);
          v95 = *(v6 + 200);
          v96 = v95 - v94;
          if (v95 != v94)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v295 = &v296;
          v298 = 0;
          v299 = 0;
          v300 = 0;
          v97 = *(v6 + 192);
          v98 = *(v6 + 200);
          v96 = v98 - v97;
          if (v98 != v97)
          {
LABEL_104:
            if (0xAAAAAAAAAAAAAAABLL * (v96 >> 4) <= 0x555555555555555)
            {
              operator new();
            }

            goto LABEL_259;
          }
        }

        v99 = *(v6 + 216);
        *(v301 + 9) = *(v6 + 225);
        v301[0] = v99;
        webrtc::Codec::operator=(v6, v84);
        v100 = *(v84 + 225);
        *(v6 + 216) = *(v84 + 216);
        *(v6 + 225) = v100;
        webrtc::Codec::operator=(v84, &v280);
        v101 = *(v301 + 9);
        *(v84 + 216) = v301[0];
        *(v84 + 225) = v101;
        webrtc::Codec::~Codec(&v280);
        v102 = v6 + 248;
        do
        {
          if (v102 == a2)
          {
            goto LABEL_244;
          }

          v44 = *(v102 + 12);
          v102 += 248;
        }

        while (SHIDWORD(v259) <= v44);
        v6 = v102 - 248;
        v103 = v84;
        do
        {
          if (v103 == a1)
          {
            goto LABEL_244;
          }

          v84 = v103 - 248;
          v44 = *(v103 - 236);
          v103 -= 248;
        }

        while (SHIDWORD(v259) > v44);
      }

      if (v6 - 248 != a1)
      {
        webrtc::Codec::operator=(a1, v6 - 248);
        v104 = *(v6 - 23);
        *(a1 + 216) = *(v6 - 32);
        *(a1 + 225) = v104;
      }

      webrtc::Codec::operator=(v6 - 248, &v258);
      v105 = *(v279 + 9);
      *(v6 - 32) = v279[0];
      *(v6 - 23) = v105;
      webrtc::Codec::~Codec(&v258);
      a4 = 0;
    }
  }

  if (*(a2 - 236) > *(a1 + 508))
  {
    v115 = *(a1 + 504);
    v280 = &unk_288291428;
    v281 = v115;
    v282 = *(a1 + 512);
    v283 = *(a1 + 528);
    *(a1 + 520) = 0;
    *(a1 + 512) = 0;
    *(a1 + 528) = 0;
    v284 = *(a1 + 536);
    LOBYTE(v285) = 0;
    v287 = 0;
    if (*(a1 + 576) == 1)
    {
      v286 = *(a1 + 568);
      v285 = *(a1 + 552);
      *(a1 + 568) = 0;
      *(a1 + 552) = 0;
      *(a1 + 560) = 0;
      v287 = 1;
    }

    v116 = *(a1 + 584);
    v117 = *(a1 + 608);
    v289 = *(a1 + 592);
    v290 = v117;
    v118 = *(a1 + 624);
    v288 = v116;
    v291 = v118;
    *(a1 + 584) = 0;
    LOBYTE(v292) = 0;
    v294 = 0;
    if (*(a1 + 656) == 1)
    {
      v293 = *(a1 + 648);
      v292 = *(a1 + 632);
      *(a1 + 648) = 0;
      *(a1 + 632) = 0;
      *(a1 + 640) = 0;
      v294 = 1;
    }

    v119 = *(a1 + 672);
    v295 = *(a1 + 664);
    v296 = v119;
    v297 = *(a1 + 680);
    if (v297)
    {
      *(v119 + 16) = &v296;
      *(a1 + 664) = a1 + 672;
      *(a1 + 672) = 0;
      *(a1 + 680) = 0;
    }

    else
    {
      v295 = &v296;
    }

    v299 = 0;
    v298 = 0;
    v300 = 0;
    v244 = *(a1 + 688);
    v245 = *(a1 + 696);
    if (v245 != v244)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v245 - v244) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

LABEL_259:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v246 = (a1 + 712);
    v301[0] = *(a1 + 712);
    *(v301 + 9) = *(a1 + 721);
    webrtc::Codec::operator=(a1 + 496, v251);
    v247 = *(a2 - 23);
    *(a1 + 712) = *(a2 - 32);
    *(a1 + 721) = v247;
    webrtc::Codec::operator=(v251, &v280);
    v248 = *(v301 + 9);
    *(a2 - 32) = v301[0];
    *(a2 - 23) = v248;
    webrtc::Codec::~Codec(&v280);
    if (*(a1 + 508) > *(a1 + 260))
    {
      webrtc::Codec::Codec(&v280, a1 + 248);
      v249 = (a1 + 464);
      v301[0] = *(a1 + 464);
      *(v301 + 9) = *(a1 + 473);
      webrtc::Codec::operator=(a1 + 248, a1 + 496);
      *(a1 + 464) = *v246;
      *(a1 + 473) = *(a1 + 721);
      webrtc::Codec::operator=(a1 + 496, &v280);
      *v246 = v301[0];
      *(a1 + 721) = *(v301 + 9);
      webrtc::Codec::~Codec(&v280);
      if (*(a1 + 260) > *(a1 + 12))
      {
        webrtc::Codec::Codec(&v280, a1);
        v250 = *(a1 + 216);
        *(v301 + 9) = *(a1 + 225);
        v301[0] = v250;
        webrtc::Codec::operator=(a1, a1 + 248);
        *(a1 + 216) = *v249;
        *(a1 + 225) = *(a1 + 473);
        webrtc::Codec::operator=(a1 + 248, &v280);
        *v249 = v301[0];
        *(a1 + 473) = *(v301 + 9);
LABEL_250:
        webrtc::Codec::~Codec(&v280);
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<webrtc::VideoCodecSettings *&,webrtc::VideoCodecSettings *&>(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v14[0] = &unk_288291428;
  v14[1] = v4;
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v17 = *(a1 + 40);
  LOBYTE(v18) = 0;
  v20 = 0;
  if (*(a1 + 80) == 1)
  {
    v18 = *(a1 + 56);
    v19 = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    v20 = 1;
  }

  v21 = *(a1 + 88);
  v5 = *(a1 + 112);
  v22 = *(a1 + 96);
  v23 = v5;
  v24 = *(a1 + 128);
  *(a1 + 88) = 0;
  LOBYTE(v25) = 0;
  v27 = 0;
  if (*(a1 + 160) == 1)
  {
    v25 = *(a1 + 136);
    v26 = *(a1 + 152);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    v27 = 1;
  }

  v6 = (a1 + 176);
  v7 = *(a1 + 176);
  v28 = *(a1 + 168);
  v29 = v7;
  if (*(a1 + 184))
  {
    *(v7 + 16) = &v29;
    *(a1 + 168) = v6;
    *v6 = 0;
    *(a1 + 184) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v8 = *(a1 + 192);
    v9 = *(a1 + 200);
    v10 = v9 - v8;
    if (v9 == v8)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (0xAAAAAAAAAAAAAAABLL * (v10 >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v28 = &v29;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v11 = *(a1 + 192);
  v12 = *(a1 + 200);
  v10 = v12 - v11;
  if (v12 != v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  v34[0] = *(a1 + 216);
  *(v34 + 9) = *(a1 + 225);
  webrtc::Codec::operator=(a1, a2);
  v13 = *(a2 + 225);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 225) = v13;
  webrtc::Codec::operator=(a2, v14);
  *(a2 + 216) = v34[0];
  *(a2 + 225) = *(v34 + 9);
  webrtc::Codec::~Codec(v14);
}

void std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NonFlexfecReceiveCodecsHaveChanged(std::vector<webrtc::VideoCodecSettings>,std::vector<webrtc::VideoCodecSettings>)::$_0 &,webrtc::VideoCodecSettings*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 12);
  v7 = *(a3 + 12);
  if (v6 > *(a1 + 12))
  {
    if (v7 > v6)
    {
      v8 = *(a1 + 8);
      v58 = &unk_288291428;
      v59 = v8;
      v60 = *(a1 + 16);
      v61 = *(a1 + 32);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v62 = *(a1 + 40);
      LOBYTE(v63) = 0;
      v65 = 0;
      if (*(a1 + 80) == 1)
      {
        v63 = *(a1 + 56);
        v64 = *(a1 + 72);
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        v65 = 1;
      }

      v66 = *(a1 + 88);
      v9 = *(a1 + 112);
      v67 = *(a1 + 96);
      v68 = v9;
      v69 = *(a1 + 128);
      *(a1 + 88) = 0;
      LOBYTE(v70) = 0;
      v72 = 0;
      if (*(a1 + 160) == 1)
      {
        v70 = *(a1 + 136);
        v71 = *(a1 + 152);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 136) = 0;
        v72 = 1;
      }

      v10 = (a1 + 176);
      v11 = *(a1 + 176);
      v73 = *(a1 + 168);
      v74 = v11;
      v75 = *(a1 + 184);
      if (v75)
      {
        *(v11 + 16) = &v74;
        *(a1 + 168) = v10;
        *v10 = 0;
        *(a1 + 184) = 0;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v12 = *(a1 + 192);
        v13 = *(a1 + 200);
        v14 = v13 - v12;
        if (v13 == v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v73 = &v74;
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v29 = *(a1 + 192);
        v30 = *(a1 + 200);
        v14 = v30 - v29;
        if (v30 == v29)
        {
LABEL_28:
          v79[0] = *(a1 + 216);
          *(v79 + 9) = *(a1 + 225);
          webrtc::Codec::operator=(a1, a3);
          v31 = *(a3 + 225);
          *(a1 + 216) = *(a3 + 216);
          *(a1 + 225) = v31;
LABEL_59:
          webrtc::Codec::operator=(a3, &v58);
          *(a3 + 216) = v79[0];
          *(a3 + 225) = *(v79 + 9);
          goto LABEL_60;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * (v14 >> 4) <= 0x555555555555555)
      {
        operator new();
      }

LABEL_62:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v22 = *(a1 + 8);
    v58 = &unk_288291428;
    v59 = v22;
    v60 = *(a1 + 16);
    v61 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v62 = *(a1 + 40);
    LOBYTE(v63) = 0;
    v65 = 0;
    if (*(a1 + 80) == 1)
    {
      v63 = *(a1 + 56);
      v64 = *(a1 + 72);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 56) = 0;
      v65 = 1;
    }

    v66 = *(a1 + 88);
    v23 = *(a1 + 112);
    v67 = *(a1 + 96);
    v68 = v23;
    v69 = *(a1 + 128);
    *(a1 + 88) = 0;
    LOBYTE(v70) = 0;
    v72 = 0;
    if (*(a1 + 160) == 1)
    {
      v70 = *(a1 + 136);
      v71 = *(a1 + 152);
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      *(a1 + 136) = 0;
      v72 = 1;
    }

    v24 = (a1 + 176);
    v25 = *(a1 + 176);
    v73 = *(a1 + 168);
    v74 = v25;
    v75 = *(a1 + 184);
    if (v75)
    {
      *(v25 + 16) = &v74;
      *(a1 + 168) = v24;
      *v24 = 0;
      *(a1 + 184) = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v26 = *(a1 + 192);
      v27 = *(a1 + 200);
      v28 = v27 - v26;
      if (v27 == v26)
      {
LABEL_43:
        v79[0] = *(a1 + 216);
        *(v79 + 9) = *(a1 + 225);
        webrtc::Codec::operator=(a1, a2);
        v44 = *(a2 + 225);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 225) = v44;
        webrtc::Codec::operator=(a2, &v58);
        *(a2 + 216) = v79[0];
        *(a2 + 225) = *(v79 + 9);
        webrtc::Codec::~Codec(&v58);
        if (*(a3 + 12) <= *(a2 + 12))
        {
          return;
        }

        v45 = *(a2 + 8);
        v58 = &unk_288291428;
        v59 = v45;
        v60 = *(a2 + 16);
        v61 = *(a2 + 32);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        v62 = *(a2 + 40);
        LOBYTE(v63) = 0;
        v65 = 0;
        if (*(a2 + 80) == 1)
        {
          v63 = *(a2 + 56);
          v64 = *(a2 + 72);
          *(a2 + 64) = 0;
          *(a2 + 72) = 0;
          *(a2 + 56) = 0;
          v65 = 1;
        }

        v66 = *(a2 + 88);
        v46 = *(a2 + 112);
        v67 = *(a2 + 96);
        v68 = v46;
        v69 = *(a2 + 128);
        *(a2 + 88) = 0;
        LOBYTE(v70) = 0;
        v72 = 0;
        if (*(a2 + 160) == 1)
        {
          v70 = *(a2 + 136);
          v71 = *(a2 + 152);
          *(a2 + 144) = 0;
          *(a2 + 152) = 0;
          *(a2 + 136) = 0;
          v72 = 1;
        }

        v47 = (a2 + 176);
        v48 = *(a2 + 176);
        v73 = *(a2 + 168);
        v74 = v48;
        v75 = *(a2 + 184);
        if (v75)
        {
          *(v48 + 16) = &v74;
          *(a2 + 168) = v47;
          *v47 = 0;
          *(a2 + 184) = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v49 = *(a2 + 192);
          v50 = *(a2 + 200);
          v51 = v50 - v49;
          if (v50 == v49)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v73 = &v74;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v55 = *(a2 + 192);
          v56 = *(a2 + 200);
          v51 = v56 - v55;
          if (v56 == v55)
          {
LABEL_58:
            v79[0] = *(a2 + 216);
            *(v79 + 9) = *(a2 + 225);
            webrtc::Codec::operator=(a2, a3);
            v57 = *(a3 + 225);
            *(a2 + 216) = *(a3 + 216);
            *(a2 + 225) = v57;
            goto LABEL_59;
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * (v51 >> 4) <= 0x555555555555555)
        {
          operator new();
        }

        goto LABEL_62;
      }
    }

    else
    {
      v73 = &v74;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v42 = *(a1 + 192);
      v43 = *(a1 + 200);
      v28 = v43 - v42;
      if (v43 == v42)
      {
        goto LABEL_43;
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * (v28 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_62;
  }

  if (v7 <= v6)
  {
    return;
  }

  v15 = *(a2 + 8);
  v58 = &unk_288291428;
  v59 = v15;
  v60 = *(a2 + 16);
  v61 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v62 = *(a2 + 40);
  LOBYTE(v63) = 0;
  v65 = 0;
  if (*(a2 + 80) == 1)
  {
    v63 = *(a2 + 56);
    v64 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v65 = 1;
  }

  v66 = *(a2 + 88);
  v16 = *(a2 + 112);
  v67 = *(a2 + 96);
  v68 = v16;
  v69 = *(a2 + 128);
  *(a2 + 88) = 0;
  LOBYTE(v70) = 0;
  v72 = 0;
  if (*(a2 + 160) == 1)
  {
    v70 = *(a2 + 136);
    v71 = *(a2 + 152);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    v72 = 1;
  }

  v17 = (a2 + 176);
  v18 = *(a2 + 176);
  v73 = *(a2 + 168);
  v74 = v18;
  v75 = *(a2 + 184);
  if (!v75)
  {
    v73 = &v74;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v32 = *(a2 + 192);
    v33 = *(a2 + 200);
    v21 = v33 - v32;
    if (v33 == v32)
    {
      goto LABEL_32;
    }

LABEL_30:
    if (0xAAAAAAAAAAAAAAABLL * (v21 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_62;
  }

  *(v18 + 16) = &v74;
  *(a2 + 168) = v17;
  *v17 = 0;
  *(a2 + 184) = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v19 = *(a2 + 192);
  v20 = *(a2 + 200);
  v21 = v20 - v19;
  if (v20 != v19)
  {
    goto LABEL_30;
  }

LABEL_32:
  v79[0] = *(a2 + 216);
  *(v79 + 9) = *(a2 + 225);
  webrtc::Codec::operator=(a2, a3);
  v34 = *(a3 + 225);
  *(a2 + 216) = *(a3 + 216);
  *(a2 + 225) = v34;
  webrtc::Codec::operator=(a3, &v58);
  *(a3 + 216) = v79[0];
  *(a3 + 225) = *(v79 + 9);
  webrtc::Codec::~Codec(&v58);
  if (*(a2 + 12) <= *(a1 + 12))
  {
    return;
  }

  v35 = *(a1 + 8);
  v58 = &unk_288291428;
  v59 = v35;
  v60 = *(a1 + 16);
  v61 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v62 = *(a1 + 40);
  LOBYTE(v63) = 0;
  v65 = 0;
  if (*(a1 + 80) == 1)
  {
    v63 = *(a1 + 56);
    v64 = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    v65 = 1;
  }

  v66 = *(a1 + 88);
  v36 = *(a1 + 112);
  v67 = *(a1 + 96);
  v68 = v36;
  v69 = *(a1 + 128);
  *(a1 + 88) = 0;
  LOBYTE(v70) = 0;
  v72 = 0;
  if (*(a1 + 160) == 1)
  {
    v70 = *(a1 + 136);
    v71 = *(a1 + 152);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    v72 = 1;
  }

  v37 = (a1 + 176);
  v38 = *(a1 + 176);
  v73 = *(a1 + 168);
  v74 = v38;
  v75 = *(a1 + 184);
  if (v75)
  {
    *(v38 + 16) = &v74;
    *(a1 + 168) = v37;
    *v37 = 0;
    *(a1 + 184) = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v39 = *(a1 + 192);
    v40 = *(a1 + 200);
    v41 = v40 - v39;
    if (v40 == v39)
    {
      goto LABEL_54;
    }

LABEL_52:
    if (0xAAAAAAAAAAAAAAABLL * (v41 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_62;
  }

  v73 = &v74;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v52 = *(a1 + 192);
  v53 = *(a1 + 200);
  v41 = v53 - v52;
  if (v53 != v52)
  {
    goto LABEL_52;
  }

LABEL_54:
  v79[0] = *(a1 + 216);
  *(v79 + 9) = *(a1 + 225);
  webrtc::Codec::operator=(a1, a2);
  v54 = *(a2 + 225);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 225) = v54;
  webrtc::Codec::operator=(a2, &v58);
  *(a2 + 216) = v79[0];
  *(a2 + 225) = *(v79 + 9);
LABEL_60:
  webrtc::Codec::~Codec(&v58);
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NonFlexfecReceiveCodecsHaveChanged(std::vector<webrtc::VideoCodecSettings>,std::vector<webrtc::VideoCodecSettings>)::$_0 &,webrtc::VideoCodecSettings*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = *MEMORY[0x277D85DE8];
  if (*(a4 + 12) > *(a3 + 12))
  {
    v10 = *(a3 + 8);
    v80 = &unk_288291428;
    v81 = v10;
    v82 = *(a3 + 16);
    v83 = *(a3 + 32);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v84 = *(a3 + 40);
    LOBYTE(v85) = 0;
    v87 = 0;
    if (*(a3 + 80) == 1)
    {
      v85 = *(a3 + 56);
      v86 = *(a3 + 72);
      *(a3 + 64) = 0;
      *(a3 + 72) = 0;
      *(a3 + 56) = 0;
      v87 = 1;
    }

    v88 = *(a3 + 88);
    v11 = *(a3 + 112);
    v89 = *(a3 + 96);
    v90 = v11;
    v91 = *(a3 + 128);
    *(a3 + 88) = 0;
    LOBYTE(v92) = 0;
    v94 = 0;
    if (*(a3 + 160) == 1)
    {
      v92 = *(a3 + 136);
      v93 = *(a3 + 152);
      *(a3 + 144) = 0;
      *(a3 + 152) = 0;
      *(a3 + 136) = 0;
      v94 = 1;
    }

    v12 = (a3 + 176);
    v13 = *(a3 + 176);
    v95 = *(a3 + 168);
    v96 = v13;
    v97 = *(a3 + 184);
    if (v97)
    {
      *(v13 + 16) = &v96;
      *(a3 + 168) = v12;
      *v12 = 0;
      *(a3 + 184) = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v14 = *(a3 + 192);
      v15 = *(a3 + 200);
      v16 = v15 - v14;
      if (v15 == v14)
      {
LABEL_12:
        v101[0] = *(a3 + 216);
        *(v101 + 9) = *(a3 + 225);
        webrtc::Codec::operator=(a3, a4);
        v19 = *(a4 + 225);
        *(a3 + 216) = *(a4 + 216);
        *(a3 + 225) = v19;
        webrtc::Codec::operator=(a4, &v80);
        *(a4 + 216) = v101[0];
        *(a4 + 225) = *(v101 + 9);
        webrtc::Codec::~Codec(&v80);
        if (*(a3 + 12) <= *(a2 + 12))
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 8);
        v80 = &unk_288291428;
        v81 = v20;
        v82 = *(a2 + 16);
        v83 = *(a2 + 32);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        v84 = *(a2 + 40);
        LOBYTE(v85) = 0;
        v87 = 0;
        if (*(a2 + 80) == 1)
        {
          v85 = *(a2 + 56);
          v86 = *(a2 + 72);
          *(a2 + 64) = 0;
          *(a2 + 72) = 0;
          *(a2 + 56) = 0;
          v87 = 1;
        }

        v88 = *(a2 + 88);
        v21 = *(a2 + 112);
        v89 = *(a2 + 96);
        v90 = v21;
        v91 = *(a2 + 128);
        *(a2 + 88) = 0;
        LOBYTE(v92) = 0;
        v94 = 0;
        if (*(a2 + 160) == 1)
        {
          v92 = *(a2 + 136);
          v93 = *(a2 + 152);
          *(a2 + 144) = 0;
          *(a2 + 152) = 0;
          *(a2 + 136) = 0;
          v94 = 1;
        }

        v22 = (a2 + 176);
        v23 = *(a2 + 176);
        v95 = *(a2 + 168);
        v96 = v23;
        v97 = *(a2 + 184);
        if (v97)
        {
          *(v23 + 16) = &v96;
          *(a2 + 168) = v22;
          *v22 = 0;
          *(a2 + 184) = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v24 = *(a2 + 192);
          v25 = *(a2 + 200);
          v26 = v25 - v24;
          if (v25 == v24)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v95 = &v96;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v27 = *(a2 + 192);
          v28 = *(a2 + 200);
          v26 = v28 - v27;
          if (v28 == v27)
          {
LABEL_23:
            v101[0] = *(a2 + 216);
            *(v101 + 9) = *(a2 + 225);
            webrtc::Codec::operator=(a2, a3);
            v29 = *(a3 + 225);
            *(a2 + 216) = *(a3 + 216);
            *(a2 + 225) = v29;
            webrtc::Codec::operator=(a3, &v80);
            *(a3 + 216) = v101[0];
            *(a3 + 225) = *(v101 + 9);
            webrtc::Codec::~Codec(&v80);
            if (*(a2 + 12) <= *(a1 + 12))
            {
              goto LABEL_35;
            }

            v30 = *(a1 + 8);
            v80 = &unk_288291428;
            v81 = v30;
            v82 = *(a1 + 16);
            v83 = *(a1 + 32);
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
            v84 = *(a1 + 40);
            LOBYTE(v85) = 0;
            v87 = 0;
            if (*(a1 + 80) == 1)
            {
              v85 = *(a1 + 56);
              v86 = *(a1 + 72);
              *(a1 + 64) = 0;
              *(a1 + 72) = 0;
              *(a1 + 56) = 0;
              v87 = 1;
            }

            v88 = *(a1 + 88);
            v31 = *(a1 + 112);
            v89 = *(a1 + 96);
            v90 = v31;
            v91 = *(a1 + 128);
            *(a1 + 88) = 0;
            LOBYTE(v92) = 0;
            v94 = 0;
            if (*(a1 + 160) == 1)
            {
              v92 = *(a1 + 136);
              v93 = *(a1 + 152);
              *(a1 + 144) = 0;
              *(a1 + 152) = 0;
              *(a1 + 136) = 0;
              v94 = 1;
            }

            v32 = (a1 + 176);
            v33 = *(a1 + 176);
            v95 = *(a1 + 168);
            v96 = v33;
            v97 = *(a1 + 184);
            if (v97)
            {
              *(v33 + 16) = &v96;
              *(a1 + 168) = v32;
              *v32 = 0;
              *(a1 + 184) = 0;
              v98 = 0;
              v99 = 0;
              v100 = 0;
              v34 = *(a1 + 192);
              v35 = *(a1 + 200);
              v36 = v35 - v34;
              if (v35 == v34)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v95 = &v96;
              v98 = 0;
              v99 = 0;
              v100 = 0;
              v37 = *(a1 + 192);
              v38 = *(a1 + 200);
              v36 = v38 - v37;
              if (v38 == v37)
              {
LABEL_34:
                v101[0] = *(a1 + 216);
                *(v101 + 9) = *(a1 + 225);
                webrtc::Codec::operator=(a1, a2);
                v39 = *(a2 + 225);
                *(a1 + 216) = *(a2 + 216);
                *(a1 + 225) = v39;
                webrtc::Codec::operator=(a2, &v80);
                *(a2 + 216) = v101[0];
                *(a2 + 225) = *(v101 + 9);
                webrtc::Codec::~Codec(&v80);
                goto LABEL_35;
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * (v36 >> 4) <= 0x555555555555555)
            {
              operator new();
            }

LABEL_81:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * (v26 >> 4) <= 0x555555555555555)
        {
          operator new();
        }

        goto LABEL_81;
      }
    }

    else
    {
      v95 = &v96;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v17 = *(a3 + 192);
      v18 = *(a3 + 200);
      v16 = v18 - v17;
      if (v18 == v17)
      {
        goto LABEL_12;
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * (v16 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_81;
  }

LABEL_35:
  if (*(a5 + 12) <= *(a4 + 12))
  {
    return;
  }

  v40 = *(a4 + 8);
  v80 = &unk_288291428;
  v81 = v40;
  v82 = *(a4 + 16);
  v83 = *(a4 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v84 = *(a4 + 40);
  LOBYTE(v85) = 0;
  v87 = 0;
  if (*(a4 + 80) == 1)
  {
    v85 = *(a4 + 56);
    v86 = *(a4 + 72);
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 56) = 0;
    v87 = 1;
  }

  v88 = *(a4 + 88);
  v41 = *(a4 + 112);
  v89 = *(a4 + 96);
  v90 = v41;
  v91 = *(a4 + 128);
  *(a4 + 88) = 0;
  LOBYTE(v92) = 0;
  v94 = 0;
  if (*(a4 + 160) == 1)
  {
    v92 = *(a4 + 136);
    v93 = *(a4 + 152);
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 136) = 0;
    v94 = 1;
  }

  v42 = (a4 + 176);
  v43 = *(a4 + 176);
  v95 = *(a4 + 168);
  v96 = v43;
  v97 = *(a4 + 184);
  if (!v97)
  {
    v95 = &v96;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v48 = *(a4 + 192);
    v47 = *(a4 + 200);
    v46 = v47 - v48;
    if (v47 == v48)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  *(v43 + 16) = &v96;
  *(a4 + 168) = v42;
  *v42 = 0;
  *(a4 + 184) = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v45 = *(a4 + 192);
  v44 = *(a4 + 200);
  v46 = v44 - v45;
  if (v44 != v45)
  {
LABEL_44:
    if (0xAAAAAAAAAAAAAAABLL * (v46 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_81;
  }

LABEL_46:
  v101[0] = *(a4 + 216);
  *(v101 + 9) = *(a4 + 225);
  webrtc::Codec::operator=(a4, a5);
  v49 = *(a5 + 225);
  *(a4 + 216) = *(a5 + 216);
  *(a4 + 225) = v49;
  webrtc::Codec::operator=(a5, &v80);
  *(a5 + 216) = v101[0];
  *(a5 + 225) = *(v101 + 9);
  webrtc::Codec::~Codec(&v80);
  if (*(a4 + 12) <= *(a3 + 12))
  {
    return;
  }

  v50 = *(a3 + 8);
  v80 = &unk_288291428;
  v81 = v50;
  v82 = *(a3 + 16);
  v83 = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v84 = *(a3 + 40);
  LOBYTE(v85) = 0;
  v87 = 0;
  if (*(a3 + 80) == 1)
  {
    v85 = *(a3 + 56);
    v86 = *(a3 + 72);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    v87 = 1;
  }

  v88 = *(a3 + 88);
  v51 = *(a3 + 112);
  v89 = *(a3 + 96);
  v90 = v51;
  v91 = *(a3 + 128);
  *(a3 + 88) = 0;
  LOBYTE(v92) = 0;
  v94 = 0;
  if (*(a3 + 160) == 1)
  {
    v92 = *(a3 + 136);
    v93 = *(a3 + 152);
    *(a3 + 144) = 0;
    *(a3 + 152) = 0;
    *(a3 + 136) = 0;
    v94 = 1;
  }

  v52 = (a3 + 176);
  v53 = *(a3 + 176);
  v95 = *(a3 + 168);
  v96 = v53;
  v97 = *(a3 + 184);
  if (!v97)
  {
    v95 = &v96;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v58 = *(a3 + 192);
    v57 = *(a3 + 200);
    v56 = v57 - v58;
    if (v57 == v58)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  *(v53 + 16) = &v96;
  *(a3 + 168) = v52;
  *v52 = 0;
  *(a3 + 184) = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v55 = *(a3 + 192);
  v54 = *(a3 + 200);
  v56 = v54 - v55;
  if (v54 != v55)
  {
LABEL_55:
    if (0xAAAAAAAAAAAAAAABLL * (v56 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_81;
  }

LABEL_57:
  v101[0] = *(a3 + 216);
  *(v101 + 9) = *(a3 + 225);
  webrtc::Codec::operator=(a3, a4);
  v59 = *(a4 + 225);
  *(a3 + 216) = *(a4 + 216);
  *(a3 + 225) = v59;
  webrtc::Codec::operator=(a4, &v80);
  *(a4 + 216) = v101[0];
  *(a4 + 225) = *(v101 + 9);
  webrtc::Codec::~Codec(&v80);
  if (*(a3 + 12) <= *(a2 + 12))
  {
    return;
  }

  v60 = *(a2 + 8);
  v80 = &unk_288291428;
  v81 = v60;
  v82 = *(a2 + 16);
  v83 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v84 = *(a2 + 40);
  LOBYTE(v85) = 0;
  v87 = 0;
  if (*(a2 + 80) == 1)
  {
    v85 = *(a2 + 56);
    v86 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v87 = 1;
  }

  v88 = *(a2 + 88);
  v61 = *(a2 + 112);
  v89 = *(a2 + 96);
  v90 = v61;
  v91 = *(a2 + 128);
  *(a2 + 88) = 0;
  LOBYTE(v92) = 0;
  v94 = 0;
  if (*(a2 + 160) == 1)
  {
    v92 = *(a2 + 136);
    v93 = *(a2 + 152);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = 0;
    v94 = 1;
  }

  v62 = (a2 + 176);
  v63 = *(a2 + 176);
  v95 = *(a2 + 168);
  v96 = v63;
  v97 = *(a2 + 184);
  if (!v97)
  {
    v95 = &v96;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v68 = *(a2 + 192);
    v67 = *(a2 + 200);
    v66 = v67 - v68;
    if (v67 == v68)
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  *(v63 + 16) = &v96;
  *(a2 + 168) = v62;
  *v62 = 0;
  *(a2 + 184) = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v65 = *(a2 + 192);
  v64 = *(a2 + 200);
  v66 = v64 - v65;
  if (v64 != v65)
  {
LABEL_66:
    if (0xAAAAAAAAAAAAAAABLL * (v66 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_81;
  }

LABEL_68:
  v101[0] = *(a2 + 216);
  *(v101 + 9) = *(a2 + 225);
  webrtc::Codec::operator=(a2, a3);
  v69 = *(a3 + 225);
  *(a2 + 216) = *(a3 + 216);
  *(a2 + 225) = v69;
  webrtc::Codec::operator=(a3, &v80);
  *(a3 + 216) = v101[0];
  *(a3 + 225) = *(v101 + 9);
  webrtc::Codec::~Codec(&v80);
  if (*(a2 + 12) <= *(a1 + 12))
  {
    return;
  }

  v70 = *(a1 + 8);
  v80 = &unk_288291428;
  v81 = v70;
  v82 = *(a1 + 16);
  v83 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v84 = *(a1 + 40);
  LOBYTE(v85) = 0;
  v87 = 0;
  if (*(a1 + 80) == 1)
  {
    v85 = *(a1 + 56);
    v86 = *(a1 + 72);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    v87 = 1;
  }

  v88 = *(a1 + 88);
  v71 = *(a1 + 112);
  v89 = *(a1 + 96);
  v90 = v71;
  v91 = *(a1 + 128);
  *(a1 + 88) = 0;
  LOBYTE(v92) = 0;
  v94 = 0;
  if (*(a1 + 160) == 1)
  {
    v92 = *(a1 + 136);
    v93 = *(a1 + 152);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    v94 = 1;
  }

  v72 = (a1 + 176);
  v73 = *(a1 + 176);
  v95 = *(a1 + 168);
  v96 = v73;
  v97 = *(a1 + 184);
  if (v97)
  {
    *(v73 + 16) = &v96;
    *(a1 + 168) = v72;
    *v72 = 0;
    *(a1 + 184) = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v74 = *(a1 + 192);
    v75 = *(a1 + 200);
    v76 = v75 - v74;
    if (v75 == v74)
    {
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v95 = &v96;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v77 = *(a1 + 192);
  v78 = *(a1 + 200);
  v76 = v78 - v77;
  if (v78 != v77)
  {
LABEL_77:
    if (0xAAAAAAAAAAAAAAABLL * (v76 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_81;
  }

LABEL_79:
  v101[0] = *(a1 + 216);
  *(v101 + 9) = *(a1 + 225);
  webrtc::Codec::operator=(a1, a2);
  v79 = *(a2 + 225);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 225) = v79;
  webrtc::Codec::operator=(a2, &v80);
  *(a2 + 216) = v101[0];
  *(a2 + 225) = *(v101 + 9);
  webrtc::Codec::~Codec(&v80);
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::NonFlexfecReceiveCodecsHaveChanged(std::vector<webrtc::VideoCodecSettings>,std::vector<webrtc::VideoCodecSettings>)::$_0 &,webrtc::VideoCodecSettings*>(uint64_t a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        return 1;
      }

      goto LABEL_17;
    }

    if (*(a2 - 236) <= *(a1 + 508))
    {
      return 1;
    }

    v31 = *(a1 + 504);
    v52 = &unk_288291428;
    v53 = v31;
    v54 = *(a1 + 512);
    v55 = *(a1 + 528);
    *(a1 + 520) = 0;
    *(a1 + 512) = 0;
    *(a1 + 528) = 0;
    v56 = *(a1 + 536);
    LOBYTE(v57) = 0;
    v59 = 0;
    if (*(a1 + 576) == 1)
    {
      v58 = *(a1 + 568);
      v57 = *(a1 + 552);
      *(a1 + 568) = 0;
      *(a1 + 552) = 0;
      *(a1 + 560) = 0;
      v59 = 1;
    }

    v60 = *(a1 + 584);
    v32 = *(a1 + 608);
    v61 = *(a1 + 592);
    v62 = v32;
    v63 = *(a1 + 624);
    *(a1 + 584) = 0;
    LOBYTE(v64) = 0;
    v66 = 0;
    if (*(a1 + 656) == 1)
    {
      v65 = *(a1 + 648);
      v64 = *(a1 + 632);
      *(a1 + 648) = 0;
      *(a1 + 632) = 0;
      *(a1 + 640) = 0;
      v66 = 1;
    }

    v33 = *(a1 + 672);
    v67 = *(a1 + 664);
    v68 = v33;
    v69 = *(a1 + 680);
    if (v69)
    {
      *(v33 + 16) = &v68;
      *(a1 + 664) = a1 + 672;
      *(a1 + 672) = 0;
      *(a1 + 680) = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v34 = *(a1 + 688);
      v35 = *(a1 + 696);
      v36 = v35 - v34;
      if (v35 == v34)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v67 = &v68;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v42 = *(a1 + 688);
      v43 = *(a1 + 696);
      v36 = v43 - v42;
      if (v43 == v42)
      {
LABEL_54:
        v44 = (a1 + 712);
        v73[0] = *(a1 + 712);
        *(v73 + 9) = *(a1 + 721);
        webrtc::Codec::operator=(a1 + 496, a2 - 248);
        v45 = *(a2 - 23);
        *(a1 + 712) = *(a2 - 32);
        *(a1 + 721) = v45;
        webrtc::Codec::operator=(a2 - 248, &v52);
        *(a2 - 32) = v73[0];
        *(a2 - 23) = *(v73 + 9);
        webrtc::Codec::~Codec(&v52);
        if (*(a1 + 508) <= *(a1 + 260))
        {
          return 1;
        }

        v46 = *(a1 + 256);
        v52 = &unk_288291428;
        v53 = v46;
        v55 = *(a1 + 280);
        v54 = *(a1 + 264);
        *(a1 + 272) = 0;
        *(a1 + 280) = 0;
        *(a1 + 264) = 0;
        v56 = *(a1 + 288);
        LOBYTE(v57) = 0;
        v59 = 0;
        if (*(a1 + 328) == 1)
        {
          v57 = *(a1 + 304);
          v58 = *(a1 + 320);
          *(a1 + 312) = 0;
          *(a1 + 320) = 0;
          *(a1 + 304) = 0;
          v59 = 1;
        }

        v60 = *(a1 + 336);
        v63 = *(a1 + 376);
        v47 = *(a1 + 360);
        v61 = *(a1 + 344);
        v62 = v47;
        *(a1 + 336) = 0;
        LOBYTE(v64) = 0;
        v66 = 0;
        if (*(a1 + 408) == 1)
        {
          v64 = *(a1 + 384);
          v65 = *(a1 + 400);
          *(a1 + 392) = 0;
          *(a1 + 400) = 0;
          *(a1 + 384) = 0;
          v66 = 1;
        }

        v48 = *(a1 + 424);
        v67 = *(a1 + 416);
        v68 = v48;
        v69 = *(a1 + 432);
        if (v69)
        {
          *(v48 + 16) = &v68;
          *(a1 + 416) = a1 + 424;
          *(a1 + 424) = 0;
          *(a1 + 432) = 0;
        }

        else
        {
          v67 = &v68;
        }

        v70 = 0;
        v71 = 0;
        v72 = 0;
        v49 = *(a1 + 440);
        v50 = *(a1 + 448);
        if (v50 == v49)
        {
          v73[0] = *(a1 + 464);
          *(v73 + 9) = *(a1 + 473);
          webrtc::Codec::operator=(a1 + 248, a1 + 496);
          *(a1 + 464) = *v44;
          *(a1 + 473) = *(a1 + 721);
          webrtc::Codec::operator=(a1 + 496, &v52);
          *v44 = v73[0];
          *(a1 + 721) = *(v73 + 9);
          webrtc::Codec::~Codec(&v52);
          if (*(a1 + 260) > *(a1 + 12))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<webrtc::VideoCodecSettings *&,webrtc::VideoCodecSettings *&>(a1, a1 + 248);
          }

          return 1;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 4) <= 0x555555555555555)
        {
          operator new();
        }

LABEL_69:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    if (0xAAAAAAAAAAAAAAABLL * (v36 >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    goto LABEL_69;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 236) > *(a1 + 12))
    {
      v4 = *(a1 + 8);
      v52 = &unk_288291428;
      v53 = v4;
      v54 = *(a1 + 16);
      v55 = *(a1 + 32);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      v56 = *(a1 + 40);
      LOBYTE(v57) = 0;
      v59 = 0;
      if (*(a1 + 80) == 1)
      {
        v57 = *(a1 + 56);
        v58 = *(a1 + 72);
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 56) = 0;
        v59 = 1;
      }

      v60 = *(a1 + 88);
      v5 = *(a1 + 112);
      v61 = *(a1 + 96);
      v62 = v5;
      v63 = *(a1 + 128);
      *(a1 + 88) = 0;
      LOBYTE(v64) = 0;
      v66 = 0;
      if (*(a1 + 160) == 1)
      {
        v64 = *(a1 + 136);
        v65 = *(a1 + 152);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 136) = 0;
        v66 = 1;
      }

      v6 = (a1 + 176);
      v7 = *(a1 + 176);
      v67 = *(a1 + 168);
      v68 = v7;
      v69 = *(a1 + 184);
      if (v69)
      {
        *(v7 + 16) = &v68;
        *(a1 + 168) = v6;
        *v6 = 0;
        *(a1 + 184) = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v8 = *(a1 + 192);
        v9 = *(a1 + 200);
        v10 = v9 - v8;
        if (v9 == v8)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v67 = &v68;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v37 = *(a1 + 192);
        v38 = *(a1 + 200);
        v10 = v38 - v37;
        if (v38 == v37)
        {
LABEL_50:
          v39 = a2 - 248;
          v73[0] = *(a1 + 216);
          *(v73 + 9) = *(a1 + 225);
          webrtc::Codec::operator=(a1, a2 - 248);
          v41 = *(a2 - 23);
          *(a1 + 216) = *(a2 - 32);
          *(a1 + 225) = v41;
          webrtc::Codec::operator=(v39, &v52);
          *(a2 - 32) = v73[0];
          *(a2 - 23) = *(v73 + 9);
          webrtc::Codec::~Codec(&v52);
          return 1;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * (v10 >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      goto LABEL_69;
    }

    return 1;
  }

LABEL_17:
  v11 = a1 + 496;
  v13 = a1 + 744;
  result = 1;
  if (a1 + 744 != a2)
  {
    v15 = a2;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      if (*(v13 + 12) > *(v11 + 12))
      {
        v18 = *(v13 + 8);
        v52 = &unk_288291428;
        v53 = v18;
        v54 = *(v13 + 16);
        v55 = *(v13 + 32);
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = 0;
        v56 = *(v13 + 40);
        LOBYTE(v57) = 0;
        v59 = 0;
        if (*(v13 + 80) == 1)
        {
          v57 = *(v13 + 56);
          v58 = *(v13 + 72);
          *(v13 + 64) = 0;
          *(v13 + 72) = 0;
          *(v13 + 56) = 0;
          v59 = 1;
        }

        v60 = *(v13 + 88);
        v19 = *(v13 + 112);
        v61 = *(v13 + 96);
        v62 = v19;
        v63 = *(v13 + 128);
        *(v13 + 88) = 0;
        LOBYTE(v64) = 0;
        v66 = 0;
        if (*(v13 + 160) == 1)
        {
          v64 = *(v13 + 136);
          v65 = *(v13 + 152);
          *(v13 + 144) = 0;
          *(v13 + 152) = 0;
          *(v13 + 136) = 0;
          v66 = 1;
        }

        v20 = (v13 + 176);
        v21 = *(v13 + 176);
        v67 = *(v13 + 168);
        v68 = v21;
        v69 = *(v13 + 184);
        if (v69)
        {
          *(v21 + 16) = &v68;
          *(v13 + 168) = v20;
          *v20 = 0;
          *(v13 + 184) = 0;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v23 = *(v13 + 192);
          v22 = *(v13 + 200);
          v24 = v22 - v23;
          if (v22 != v23)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v67 = &v68;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v26 = *(v13 + 192);
          v25 = *(v13 + 200);
          v24 = v25 - v26;
          if (v25 != v26)
          {
LABEL_29:
            if (0xAAAAAAAAAAAAAAABLL * (v24 >> 4) <= 0x555555555555555)
            {
              operator new();
            }

            goto LABEL_69;
          }
        }

        v73[0] = *(v13 + 216);
        *(v73 + 9) = *(v13 + 225);
        v27 = v16;
        while (1)
        {
          v28 = a1 + v27;
          webrtc::Codec::operator=(a1 + v27 + 744, a1 + v27 + 496);
          *(v28 + 960) = *(v28 + 712);
          *(v28 + 969) = *(v28 + 721);
          if (v27 == -496)
          {
            break;
          }

          v27 -= 248;
          if (SHIDWORD(v53) <= *(v28 + 260))
          {
            v29 = a1 + v27 + 744;
            goto LABEL_36;
          }
        }

        v29 = a1;
LABEL_36:
        webrtc::Codec::operator=(v29, &v52);
        *(v28 + 712) = v73[0];
        *(v28 + 721) = *(v73 + 9);
        if (++v17 == 8)
        {
          webrtc::Codec::~Codec(&v52);
          return v13 + 248 == a2;
        }

        webrtc::Codec::~Codec(&v52);
        v15 = a2;
      }

      v11 = v13;
      v16 += 248;
      v13 += 248;
      if (v13 == v15)
      {
        return 1;
      }
    }
  }

  return result;
}

void *std::allocator_traits<std::allocator<webrtc::VideoReceiverInfo>>::construct[abi:sn200100]<webrtc::VideoReceiverInfo,webrtc::VideoReceiverInfo,void,0>(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = webrtc::MediaReceiverInfo::MediaReceiverInfo(a1, a2);
  v4[46] = 0;
  v4[47] = 0;
  v4[48] = 0;
  v5 = *(a2 + 368);
  v6 = *(a2 + 376);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    v7 = (a1 + 392);
    if (*(a2 + 415) < 0)
    {
      std::string::__init_copy_ctor_external(v7, *(a2 + 392), *(a2 + 400));
    }

    else
    {
      v8 = *(a2 + 392);
      *(a1 + 408) = *(a2 + 408);
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *(a1 + 416) = 1;
  }

  return memcpy((a1 + 424), (a2 + 424), 0x169uLL);
}

void webrtc::anonymous namespace::AssignPayloadType(uint64_t a1, const webrtc::SdpVideoFormat *a2, uint64_t a3, uint64_t a4)
{
  v106 = *MEMORY[0x277D85DE8];
  webrtc::Codec::Codec(v83, a2);
  webrtc::Codec::Codec(v82, v83);
  webrtc::PayloadTypePicker::SuggestMapping(v82, a3, 0, &v74);
  webrtc::Codec::~Codec(v82);
  if (v74)
  {
    v13 = v75;
    *&v102 = v76;
    *(&v102 + 7) = *(&v76 + 7);
    v14 = HIBYTE(v76);
    v76 = 0uLL;
    v75 = 0;
    *a1 = v74;
    v15 = v102;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    *(a1 + 23) = *(&v102 + 7);
    *(a1 + 31) = v14;
    LODWORD(v15) = v77[0];
    *(a1 + 35) = *(v77 + 3);
    *(a1 + 32) = v15;
    *(a1 + 40) = 0;
    *(a1 + 256) = 0;
    goto LABEL_114;
  }

  if ((v79 & 1) == 0)
  {
    goto LABEL_115;
  }

  HIDWORD(v84) = v78;
  if (v86 < 0)
  {
    if (*(&v85 + 1) == 3)
    {
      if (*v85 == webrtc::kRedCodecName && *(v85 + 2) == 100)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (*(&v85 + 1) != 6)
    {
      goto LABEL_27;
    }

    v16 = v85;
  }

  else
  {
    if (HIBYTE(v86) == 3)
    {
      if (v85 == webrtc::kRedCodecName && BYTE2(v85) == 100)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    v16 = &v85;
    if (HIBYTE(v86) != 6)
    {
      goto LABEL_27;
    }
  }

  v17 = *v16;
  v18 = *(v16 + 2);
  if (v17 == *"ulpfec" && v18 == *"ec")
  {
    goto LABEL_105;
  }

LABEL_27:
  v103 = 9;
  if (&v102 <= "goog-remb" && &v102 + 9 > "goog-remb")
  {
    goto LABEL_115;
  }

  *&v102 = *"goog-remb";
  WORD4(v102) = webrtc::kRtcpFbParamRemb[8];
  *&v104 = 0;
  HIBYTE(v105) = 0;
  webrtc::FeedbackParams::Add(v101, &v102, v7, v8, v9, v10, v11, v12);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_39:
    operator delete(v102);
    goto LABEL_31;
  }

  if (v103 < 0)
  {
    goto LABEL_39;
  }

LABEL_31:
  v103 = 12;
  if (&v102 <= "transport-cc" && &v102 + 12 > "transport-cc")
  {
    goto LABEL_115;
  }

  strcpy(&v102, "transport-cc");
  *&v104 = 0;
  HIBYTE(v105) = 0;
  webrtc::FeedbackParams::Add(v101, &v102, v22, v23, v24, v25, v26, v27);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
    if ((v103 & 0x80000000) == 0)
    {
LABEL_35:
      v34 = SHIBYTE(v86);
      if ((SHIBYTE(v86) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_42;
    }
  }

  else if ((v103 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v102);
  v34 = SHIBYTE(v86);
  if ((SHIBYTE(v86) & 0x80000000) == 0)
  {
LABEL_36:
    v35 = &v85;
    if (v34 != 10)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_42:
  if (*(&v85 + 1) != 10)
  {
    goto LABEL_48;
  }

  v35 = v85;
LABEL_44:
  v36 = *v35;
  v37 = *(v35 + 4);
  if (v36 == *"flexfec-03" && v37 == *"03")
  {
    goto LABEL_105;
  }

LABEL_48:
  HIBYTE(v81) = 3;
  if (__p <= "fir" && __p + 3 > "fir")
  {
    goto LABEL_115;
  }

  LOWORD(__p[0]) = *"fir";
  WORD1(__p[0]) = webrtc::kRtcpFbCcmParamFir[2];
  v103 = 3;
  if (&v102 <= "ccm" && &v102 + 3 > "ccm")
  {
    goto LABEL_115;
  }

  LOWORD(v102) = *"ccm";
  WORD1(v102) = webrtc::kRtcpFbParamCcm[2];
  v104 = *__p;
  v105 = v81;
  webrtc::FeedbackParams::Add(v101, &v102, v28, v29, v30, v31, v32, v33);
  if ((SHIBYTE(v105) & 0x80000000) == 0)
  {
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_70:
    operator delete(v102);
    if ((SHIBYTE(v81) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

LABEL_71:
    operator delete(__p[0]);
    goto LABEL_55;
  }

  operator delete(v104);
  if (v103 < 0)
  {
    goto LABEL_70;
  }

LABEL_54:
  if (SHIBYTE(v81) < 0)
  {
    goto LABEL_71;
  }

LABEL_55:
  v103 = 4;
  if (&v102 <= "nack" && &v102 + 4 > "nack")
  {
    goto LABEL_115;
  }

  strcpy(&v102, "nack");
  *&v104 = 0;
  HIBYTE(v105) = 0;
  webrtc::FeedbackParams::Add(v101, &v102, v39, v40, v41, v42, v43, v44);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((v103 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v102);
LABEL_59:
  HIBYTE(v81) = 3;
  if (__p <= "pli" && __p + 3 > "pli")
  {
    goto LABEL_115;
  }

  LOWORD(__p[0]) = *"pli";
  WORD1(__p[0]) = webrtc::kRtcpFbNackParamPli[2];
  v103 = 4;
  if (&v102 <= "nack" && &v102 + 4 > "nack")
  {
    goto LABEL_115;
  }

  strcpy(&v102, "nack");
  v104 = *__p;
  v105 = v81;
  webrtc::FeedbackParams::Add(v101, &v102, v45, v46, v47, v48, v49, v50);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104);
    if ((v103 & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v81) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_76;
    }
  }

  else if ((v103 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v102);
  if ((SHIBYTE(v81) & 0x80000000) == 0)
  {
LABEL_66:
    v51 = SHIBYTE(v86);
    if ((SHIBYTE(v86) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(__p[0]);
  v51 = SHIBYTE(v86);
  if ((SHIBYTE(v86) & 0x80000000) == 0)
  {
LABEL_67:
    v52 = &v85;
    if (v51 != 3)
    {
      goto LABEL_105;
    }

    goto LABEL_79;
  }

LABEL_77:
  if (*(&v85 + 1) == 3)
  {
    v52 = v85;
LABEL_79:
    v53 = *v52;
    v54 = *(v52 + 2);
    if (v53 != *"VP8" || v54 != webrtc::kVp8CodecName[2])
    {
      goto LABEL_105;
    }

    (*(*a4 + 16))(&v102, a4, "WebRTC-RtcpLossNotification", 27);
    v62 = v103;
    if (v103 < 0)
    {
      v62 = *(&v102 + 1);
    }

    if (v62 >= 7)
    {
      v64 = v102;
      if (v103 >= 0)
      {
        v64 = &v102;
      }

      v65 = *v64;
      v66 = *(v64 + 3);
      v67 = v65 == 1650552389 && v66 == 1684368482;
      v63 = v67;
    }

    else
    {
      v63 = 0;
    }

    if (v103 < 0)
    {
      operator delete(v102);
    }

    if (!v63)
    {
      goto LABEL_105;
    }

    v103 = 9;
    if (&v102 > "goog-lntf" || &v102 + 9 <= "goog-lntf")
    {
      *&v102 = *"goog-lntf";
      WORD4(v102) = webrtc::kRtcpFbParamLntf[8];
      *&v104 = 0;
      HIBYTE(v105) = 0;
      webrtc::FeedbackParams::Add(v101, &v102, v56, v57, v58, v59, v60, v61);
      if (SHIBYTE(v105) < 0)
      {
        operator delete(v104);
      }

      if (v103 < 0)
      {
        operator delete(v102);
      }

      goto LABEL_105;
    }

LABEL_115:
    __break(1u);
  }

LABEL_105:
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
  v68 = v84;
  *(a1 + 40) = &unk_288291428;
  *(a1 + 48) = v68;
  *(a1 + 56) = v85;
  *(a1 + 72) = v86;
  v85 = 0uLL;
  v86 = 0;
  *(a1 + 80) = v87;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  if (v90 == 1)
  {
    *(a1 + 96) = v88;
    *(a1 + 112) = v89;
    v89 = 0;
    v88 = 0uLL;
    *(a1 + 120) = 1;
  }

  *(a1 + 176) = 0;
  *(a1 + 128) = v91;
  v69 = v93;
  *(a1 + 136) = v92;
  *(a1 + 152) = v69;
  *(a1 + 168) = v94;
  v91 = 0;
  *(a1 + 200) = 0;
  if (v97 == 1)
  {
    *(a1 + 176) = v95;
    *(a1 + 192) = v96;
    v96 = 0;
    v95 = 0uLL;
    *(a1 + 200) = 1;
  }

  v71 = v98;
  v70 = v99;
  *(a1 + 216) = v99;
  v72 = a1 + 216;
  *(a1 + 208) = v71;
  v73 = v100;
  *(a1 + 224) = v100;
  if (v73)
  {
    *(v70 + 16) = v72;
    v98 = &v99;
    v99 = 0;
    v100 = 0;
  }

  else
  {
    *(a1 + 208) = v72;
  }

  std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((a1 + 232), v101);
  *(a1 + 256) = 1;
  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

LABEL_114:
  webrtc::Codec::~Codec(v83);
}

void webrtc::anonymous namespace::AddRtx(uint64_t a1, absl::numbers_internal *a2, uint64_t a3)
{
  v42[3] = *MEMORY[0x277D85DE8];
  webrtc::CreateVideoRtxCodec(0xFFFFFFFFLL, a2, v24);
  webrtc::Codec::Codec(v23, v24);
  webrtc::PayloadTypePicker::SuggestMapping(v23, a3, 0, &v16);
  webrtc::Codec::~Codec(v23);
  if (v16)
  {
    v5 = __p;
    v22[0] = v18;
    *(v22 + 7) = *(&v18 + 7);
    v6 = HIBYTE(v18);
    v18 = 0uLL;
    __p = 0;
    *a1 = v16;
    v7 = v22[0];
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 23) = *(v22 + 7);
    *(a1 + 31) = v6;
    LODWORD(v7) = v19[0];
    *(a1 + 35) = *(v19 + 3);
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
    *(a1 + 256) = 0;
  }

  else
  {
    if ((v21 & 1) == 0)
    {
      __break(1u);
    }

    HIDWORD(v25) = v20;
    *a1 = 0;
    *(a1 + 38) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    v8 = v25;
    v9 = v27;
    *(a1 + 40) = &unk_288291428;
    *(a1 + 48) = v8;
    *(a1 + 56) = v26;
    *(a1 + 72) = v9;
    v26 = 0uLL;
    v27 = 0;
    *(a1 + 80) = v28;
    *(a1 + 96) = 0;
    *(a1 + 120) = 0;
    if (v31 == 1)
    {
      *(a1 + 96) = v29;
      *(a1 + 112) = v30;
      v30 = 0;
      v29 = 0uLL;
      *(a1 + 120) = 1;
    }

    *(a1 + 176) = 0;
    v10 = v35;
    *(a1 + 128) = v32;
    v11 = v34;
    *(a1 + 136) = v33;
    *(a1 + 152) = v11;
    *(a1 + 168) = v10;
    v32 = 0;
    *(a1 + 200) = 0;
    if (v38 == 1)
    {
      *(a1 + 176) = v36;
      *(a1 + 192) = v37;
      v37 = 0;
      v36 = 0uLL;
      *(a1 + 200) = 1;
    }

    v13 = v39;
    v12 = v40;
    *(a1 + 216) = v40;
    v14 = a1 + 216;
    *(a1 + 208) = v13;
    v15 = v41;
    *(a1 + 224) = v41;
    if (v15)
    {
      *(v12 + 16) = v14;
      v39 = &v40;
      v40 = 0;
      v41 = 0;
    }

    else
    {
      *(a1 + 208) = v14;
    }

    std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((a1 + 232), v42);
    *(a1 + 256) = 1;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }
  }

  webrtc::Codec::~Codec(v24);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_unique<std::pair<std::string const,std::string> const*>(uint64_t a1, const void **a2, const void **a3)
{
  v3 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v6 + 16) = 0;
  *(a1 + 16) = 0;
  v46 = (a1 + 8);
  *(a1 + 8) = 0;
  v7 = v5[1] ? v5[1] : v5;
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7[2];
  if (v8)
  {
    v9 = *v8;
    if (*v8 == v7)
    {
      *v8 = 0;
      while (1)
      {
        v45 = v8[1];
        if (!v45)
        {
          break;
        }

        do
        {
          v8 = v45;
          v45 = *v45;
        }

        while (v45);
      }
    }

    else
    {
      for (v8[1] = 0; v9; v9 = v8[1])
      {
        do
        {
          v8 = v9;
          v9 = *v9;
        }

        while (v9);
      }
    }
  }

  if (a2 == a3)
  {
    v10 = v8;
LABEL_13:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, v7);
    if (v10)
    {
      for (i = v10[2]; i; i = i[2])
      {
        v10 = i;
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, v10);
    }

LABEL_17:
    if (v3 == a3)
    {
      return;
    }

    goto LABEL_18;
  }

  while (2)
  {
    v27 = v46;
    v28 = *v46;
    v29 = v46;
    if (!*v46)
    {
      goto LABEL_76;
    }

    v30 = *(v3 + 23);
    if (v30 >= 0)
    {
      v31 = v3;
    }

    else
    {
      v31 = *v3;
    }

    if (v30 >= 0)
    {
      v32 = *(v3 + 23);
    }

    else
    {
      v32 = v3[1];
    }

    do
    {
      while (1)
      {
        v27 = v28;
        v35 = v28[4];
        v33 = v28 + 4;
        v34 = v35;
        v36 = *(v33 + 23);
        v37 = v36 >= 0 ? v33 : v34;
        v38 = v36 >= 0 ? *(v33 + 23) : v33[1];
        v39 = (v38 >= v32 ? v32 : v38);
        v40 = memcmp(v31, v37, v39);
        if (v40)
        {
          break;
        }

        if (v32 >= v38)
        {
          goto LABEL_70;
        }

LABEL_56:
        v28 = *v27;
        v29 = v27;
        if (!*v27)
        {
          goto LABEL_76;
        }
      }

      if (v40 < 0)
      {
        goto LABEL_56;
      }

LABEL_70:
      v41 = memcmp(v37, v31, v39);
      if (v41)
      {
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v38 >= v32)
      {
LABEL_47:
        v10 = v8;
        v8 = v7;
        goto LABEL_48;
      }

      v28 = v27[1];
    }

    while (v28);
    v29 = v27 + 1;
LABEL_76:
    v48[0] = (v7 + 4);
    v48[1] = (v7 + 7);
    std::pair<std::string &,std::string &>::operator=[abi:sn200100]<std::string const,std::string,0>(v48, v3);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v27;
    *v29 = v7;
    v42 = **a1;
    if (v42)
    {
      *a1 = v42;
    }

    std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v7);
    ++*(a1 + 16);
    if (v8)
    {
      v10 = v8[2];
      if (v10)
      {
        v43 = *v10;
        if (*v10 == v8)
        {
          *v10 = 0;
          while (1)
          {
            v44 = v10[1];
            if (!v44)
            {
              break;
            }

            do
            {
              v10 = v44;
              v44 = *v44;
            }

            while (v44);
          }
        }

        else
        {
          for (v10[1] = 0; v43; v43 = v10[1])
          {
            do
            {
              v10 = v43;
              v43 = *v43;
            }

            while (v43);
          }
        }
      }

LABEL_48:
      v7 = v8;
      v3 += 6;
      v8 = v10;
      if (v3 == a3)
      {
        goto LABEL_13;
      }

      continue;
    }

    break;
  }

  v3 += 6;
  if (v3 != a3)
  {
LABEL_18:
    v12 = (a1 + 8);
    do
    {
      v13 = *v12;
      if (!*v12)
      {
LABEL_46:
        operator new();
      }

      v14 = *(v3 + 23);
      if (v14 >= 0)
      {
        v15 = v3;
      }

      else
      {
        v15 = *v3;
      }

      if (v14 >= 0)
      {
        v16 = *(v3 + 23);
      }

      else
      {
        v16 = v3[1];
      }

      while (1)
      {
        while (1)
        {
          v17 = v13;
          v20 = v13[4];
          v18 = v13 + 4;
          v19 = v20;
          v21 = *(v18 + 23);
          v22 = v21 >= 0 ? v18 : v19;
          v23 = v21 >= 0 ? *(v18 + 23) : v18[1];
          v24 = (v23 >= v16 ? v16 : v23);
          v25 = memcmp(v15, v22, v24);
          if (v25)
          {
            break;
          }

          if (v16 >= v23)
          {
            goto LABEL_41;
          }

LABEL_27:
          v13 = *v17;
          if (!*v17)
          {
            goto LABEL_46;
          }
        }

        if (v25 < 0)
        {
          goto LABEL_27;
        }

LABEL_41:
        v26 = memcmp(v22, v15, v24);
        if (v26)
        {
          if ((v26 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_45;
        }

        if (v23 >= v16)
        {
          break;
        }

LABEL_45:
        v13 = v17[1];
        if (!v13)
        {
          goto LABEL_46;
        }
      }

      v3 += 6;
    }

    while (v3 != a3);
  }
}

void webrtc::webrtc_logging_impl::MakeVal<webrtc::SdpVideoFormat,(void *)0>(std::string *a1, webrtc::SdpVideoFormat *this)
{
  memset(&v14, 0, sizeof(v14));
  webrtc::SdpVideoFormat::ToString(this, &__p);
  v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (p_p)
  {
    v6 = 1;
  }

  else
  {
    v6 = size == 0;
  }

  if (!v6)
  {
    goto LABEL_49;
  }

  if (size <= 0x16)
  {
    if (size)
    {
      v7 = (&v14 + size);
      if (&v14 <= p_p && v7 > p_p)
      {
        goto LABEL_49;
      }

      memmove(&v14, p_p, size);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        v14.__r_.__value_.__l.__size_ = size;
        v7->__r_.__value_.__s.__data_[0] = 0;
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      *(&v14.__r_.__value_.__s + 23) = size;
      v7->__r_.__value_.__s.__data_[0] = 0;
    }

    if (v3 < 0)
    {
LABEL_23:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v14, 0x16uLL, size - 22, 0, 0, 0, size, p_p);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v14;
  }

  else
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v14.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    goto LABEL_49;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_50;
  }

  if (v10 > 0x16)
  {
    operator new();
  }

  *(&a1->__r_.__value_.__s + 23) = v10;
  v12 = (a1 + v10);
  if (a1 <= v9 && v12 > v9)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v10)
  {
    memmove(a1, v9, v10);
  }

  v12->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

BOOL webrtc::RefCountedObject<webrtc::VideoEncoderConfig::Vp8EncoderSpecificSettings>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 4, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *std::__tree<std::__value_type<std::string,webrtc::InterLayerPredMode>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::InterLayerPredMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::InterLayerPredMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,webrtc::InterLayerPredMode> const&>(void *result, uint64_t *a2, const void **a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_23;
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(a2 + 55);
  if (v10 >= 0)
  {
    v11 = a2 + 4;
  }

  else
  {
    v11 = a2[4];
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = a2[5];
  }

  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  result = memcmp(v8, v11, v13);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    v14 = *a2;
    if (*v5 == a2)
    {
      v16 = a2;
    }

    else
    {
      if (v14)
      {
        v15 = *a2;
        do
        {
          v16 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        v17 = a2;
        do
        {
          v16 = v17[2];
          v18 = *v16 == v17;
          v17 = v16;
        }

        while (v18);
      }

      v19 = *(v16 + 55);
      if (v19 >= 0)
      {
        v20 = v16 + 4;
      }

      else
      {
        v20 = v16[4];
      }

      if (v19 >= 0)
      {
        v21 = *(v16 + 55);
      }

      else
      {
        v21 = v16[5];
      }

      v22 = *(a3 + 23);
      if (v22 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      if (v22 >= 0)
      {
        v24 = *(a3 + 23);
      }

      else
      {
        v24 = a3[1];
      }

      if (v24 >= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v24;
      }

      result = memcmp(v20, v23, v25);
      if (result)
      {
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v21 >= v24)
      {
LABEL_48:
        v26 = *v6;
        if (!*v6)
        {
          goto LABEL_97;
        }

        while (1)
        {
          v27 = v26;
          v30 = v26[4];
          v28 = v26 + 4;
          v29 = v30;
          v31 = *(v28 + 23);
          if (v31 >= 0)
          {
            v32 = v28;
          }

          else
          {
            v32 = v29;
          }

          if (v31 >= 0)
          {
            v33 = *(v28 + 23);
          }

          else
          {
            v33 = v28[1];
          }

          if (v33 >= v24)
          {
            v34 = v24;
          }

          else
          {
            v34 = v33;
          }

          v35 = memcmp(v23, v32, v34);
          if (v35)
          {
            if (v35 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            result = memcmp(v32, v23, v34);
            if (result)
            {
              if ((result & 0x80000000) == 0)
              {
                return result;
              }
            }

            else if (v33 >= v24)
            {
              return result;
            }

            v26 = v27[1];
            if (!v26)
            {
              goto LABEL_97;
            }
          }

          else
          {
            if (v24 >= v33)
            {
              goto LABEL_64;
            }

LABEL_50:
            v26 = *v27;
            if (!*v27)
            {
              goto LABEL_97;
            }
          }
        }
      }
    }

    if (v14)
    {
      v36 = v16 + 1;
    }

    else
    {
      v36 = a2;
    }

    if (!*v36)
    {
      goto LABEL_97;
    }

    return result;
  }

  if (v9 < v12)
  {
    goto LABEL_23;
  }

LABEL_19:
  result = memcmp(v11, v8, v13);
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
LABEL_77:
      v37 = a2[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
          v39 = v38;
        }

        while (v37);
      }

      else
      {
        v39 = a2;
        do
        {
          v40 = v39;
          v39 = v39[2];
        }

        while (*v39 != v40);
      }

      if (v39 != v6)
      {
        v43 = v39[4];
        v41 = v39 + 4;
        v42 = v43;
        v44 = *(v41 + 23);
        if (v44 >= 0)
        {
          v45 = v41;
        }

        else
        {
          v45 = v42;
        }

        if (v44 >= 0)
        {
          v46 = *(v41 + 23);
        }

        else
        {
          v46 = v41[1];
        }

        if (v46 >= v9)
        {
          v47 = v9;
        }

        else
        {
          v47 = v46;
        }

        v48 = memcmp(v8, v45, v47);
        if (v48)
        {
          if (v48 < 0)
          {
            goto LABEL_97;
          }
        }

        else if (v9 < v46)
        {
          goto LABEL_97;
        }

        v49 = *v6;
        if (!*v6)
        {
          goto LABEL_97;
        }

        while (1)
        {
          v50 = v49;
          v53 = v49[4];
          v51 = v49 + 4;
          v52 = v53;
          v54 = *(v51 + 23);
          if (v54 >= 0)
          {
            v55 = v51;
          }

          else
          {
            v55 = v52;
          }

          if (v54 >= 0)
          {
            v56 = *(v51 + 23);
          }

          else
          {
            v56 = v51[1];
          }

          if (v56 >= v9)
          {
            v57 = v9;
          }

          else
          {
            v57 = v56;
          }

          v58 = memcmp(v8, v55, v57);
          if (v58)
          {
            if (v58 < 0)
            {
              goto LABEL_98;
            }

LABEL_112:
            result = memcmp(v55, v8, v57);
            if (result)
            {
              if ((result & 0x80000000) == 0)
              {
                return result;
              }
            }

            else if (v56 >= v9)
            {
              return result;
            }

            v49 = v50[1];
            if (!v49)
            {
              break;
            }
          }

          else
          {
            if (v9 >= v56)
            {
              goto LABEL_112;
            }

LABEL_98:
            v49 = *v50;
            if (!*v50)
            {
              break;
            }
          }
        }
      }

LABEL_97:
      operator new();
    }
  }

  else if (v12 < v9)
  {
    goto LABEL_77;
  }

  return result;
}

void webrtc::FieldTrialEnum<webrtc::InterLayerPredMode>::~FieldTrialEnum(uint64_t a1)
{
  *a1 = &unk_288293970;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 88, *(a1 + 96));
  std::__tree<webrtc::SocketAddress>::destroy(a1 + 64, *(a1 + 72));
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::VideoEncoderConfig::Vp9EncoderSpecificSettings>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 6, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

BOOL webrtc::RefCountedObject<webrtc::VideoEncoderConfig::Av1EncoderSpecificSettings>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 3, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void absl::strings_internal::ExtractStringification<webrtc::RTCError>(std::string *this, int *a2)
{
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    goto LABEL_88;
  }

  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v8 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v9 - size < v3)
  {
    std::string::__grow_by_and_replace(this, v9, size + v3 - v9, size, size, 0, v3, v4);
    v11 = *(a2 + 31);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 2);
    }

    if (!v11)
    {
      return;
    }

LABEL_31:
    v17 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v17 = this->__r_.__value_.__l.__size_;
      v18 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v18 - v17 < 0x10)
      {
        goto LABEL_35;
      }

      v19 = this->__r_.__value_.__r.__words[0];
      v20 = (this->__r_.__value_.__r.__words[0] + v17);
      if (v20 > " with message: ")
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v17 - 7 < 0x10)
      {
        v18 = 22;
LABEL_35:
        std::string::__grow_by_and_replace(this, v18, v17 - v18 + 16, v17, v17, 0, 0x10uLL, " with message: ");
        goto LABEL_44;
      }

      v19 = this;
      v20 = this + v17;
      if (this + v17 > " with message: ")
      {
LABEL_40:
        *v20 = *" with message: ";
        v21 = v17 + 16;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v21;
        }

        else
        {
          *(&this->__r_.__value_.__s + 23) = v21 & 0x7F;
        }

        v19->__r_.__value_.__s.__data_[v21] = 0;
LABEL_44:
        v22 = *(a2 + 31);
        if (v22 >= 0)
        {
          v23 = (a2 + 2);
        }

        else
        {
          v23 = *(a2 + 1);
        }

        if (v22 >= 0)
        {
          v24 = *(a2 + 31);
        }

        else
        {
          v24 = *(a2 + 2);
        }

        if (!v23 && v24)
        {
          goto LABEL_88;
        }

        v25 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if (v25 >= 0)
        {
          v26 = 22;
        }

        else
        {
          v26 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v25 >= 0)
        {
          v27 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = this->__r_.__value_.__l.__size_;
        }

        if (v26 - v27 < v24)
        {
          std::string::__grow_by_and_replace(this, v26, v27 + v24 - v26, v27, v27, 0, v24, v23);
          v28 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

LABEL_72:
          v30 = this;
          if (v28 != 22)
          {
            goto LABEL_75;
          }

          v29 = 22;
          goto LABEL_74;
        }

        if (v24)
        {
          if (v25 >= 0)
          {
            v31 = this;
          }

          else
          {
            v31 = this->__r_.__value_.__r.__words[0];
          }

          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }

          v32 = v31 + v27;
          if (v31 + v27 <= v23 && &v32[v24] > v23)
          {
            goto LABEL_88;
          }

          v33 = v24;
          memmove(v32, v23, v24);
          v34 = v27 + v33;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            this->__r_.__value_.__l.__size_ = v34;
            v31->__r_.__value_.__s.__data_[v34] = 0;
            v28 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
            if ((v28 & 0x8000000000000000) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_60;
          }

          *(&this->__r_.__value_.__s + 23) = v34 & 0x7F;
          v31->__r_.__value_.__s.__data_[v34] = 0;
        }

        v28 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_72;
        }

LABEL_60:
        v28 = this->__r_.__value_.__l.__size_;
        v29 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v29 != v28)
        {
          v30 = this->__r_.__value_.__r.__words[0];
LABEL_75:
          v35 = v30 + v28;
          if (v30 + v28 > "" || v35 + 1 <= "")
          {
            *v35 = 34;
            v36 = v28 + 1;
            if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
            {
              this->__r_.__value_.__l.__size_ = v36;
            }

            else
            {
              *(&this->__r_.__value_.__s + 23) = v36 & 0x7F;
            }

            v30->__r_.__value_.__s.__data_[v36] = 0;
            return;
          }

LABEL_88:
          __break(1u);
          return;
        }

LABEL_74:
        std::string::__grow_by_and_replace(this, v29, 1uLL, v29, v29, 0, 1uLL, "");
        return;
      }
    }

    if (v20 + 16 > " with message: ")
    {
      goto LABEL_88;
    }

    goto LABEL_40;
  }

  if (!v3)
  {
    goto LABEL_28;
  }

  if (v8 >= 0)
  {
    v12 = this;
  }

  else
  {
    v12 = this->__r_.__value_.__r.__words[0];
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_88;
  }

  if (v12 + size <= v4 && v12 + size + v3 > v4)
  {
    goto LABEL_88;
  }

  v14 = v3;
  memmove(v12 + size, v4, v3);
  v15 = size + v14;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    v12->__r_.__value_.__s.__data_[v15] = 0;
LABEL_28:
    v16 = *(a2 + 31);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 2);
    }

    if (v16)
    {
      goto LABEL_31;
    }

    return;
  }

  this->__r_.__value_.__l.__size_ = v15;
  v12->__r_.__value_.__s.__data_[v15] = 0;
  v37 = *(a2 + 31);
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a2 + 2);
  }

  if (v37)
  {
    goto LABEL_31;
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcVideoSendChannel::RequestEncoderSwitch(webrtc::SdpVideoFormat const&,BOOL)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 56))
      {
        operator delete(*(v3 + 64));
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3 + 32, *(v3 + 40));
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::WebRtcVideoSendChannel::OnNetworkRouteChanged(std::string_view,webrtc::NetworkRoute const&)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(**a1 + 104) + 104))(*(**a1 + 104));
  v3 = v2;
  v6 = *(v1 + 8);
  v5 = v1 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  (*(*v2 + 120))(v2, v8, v9, v5 + 24);
  v10 = *(v5 + 56);
  v11 = *(*v3 + 200);

  return v11(v3, v10);
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcVideoSendChannel::OnNetworkRouteChanged(std::string_view,webrtc::NetworkRoute const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
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

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::WebRtcVideoReceiveChannel::OnPacketReceived(webrtc::RtpPacketReceived const&)::$_0 &&>(uint64_t **a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 3);
  v13[0] = *(v1 + 1);
  v13[1] = v3;
  *v14 = *(v1 + 5);
  *&v14[15] = *(v1 + 55);
  *__p = *(v1 + 4);
  v1[8] = 0;
  v1[9] = 0;
  v4 = v1[10];
  v5 = v1[11];
  v1[10] = 0;
  v16 = v4;
  v17 = v5;
  v18 = v1[12];
  v6 = *(v1 + 13);
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = 0;
  v21 = *(v1 + 136);
  v7 = *(v1 + 15);
  v19 = v6;
  v20 = v7;
  v8 = v1[18];
  v1[18] = 0;
  v22 = v8;
  webrtc::WebRtcVideoReceiveChannel::ProcessReceivedPacket(v2, v13);
  v9 = v22;
  if (v22 && atomic_fetch_add((v22 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v18;
  if (v18 && atomic_fetch_add((v18 + 24), 0xFFFFFFFF) == 1)
  {
    v11 = *(v10 + 16);
    *(v10 + 16) = 0;
    if (v11)
    {
      MEMORY[0x2743DA520](v11, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v10, 0x1010C40EE34DA14);
  }

  v12 = __p[0];
  if (__p[0])
  {

    operator delete(v12);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcVideoReceiveChannel::OnPacketReceived(webrtc::RtpPacketReceived const&)::$_0>(uint64_t result, void *a2, void *a3)
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

uint64_t absl::internal_any_invocable::RemoteInvoker<false,BOOL,std::__bind_front_t<BOOL (webrtc::WebRtcVideoReceiveChannel::*)(webrtc::RtpPacketReceived const&),webrtc::WebRtcVideoReceiveChannel*> &,webrtc::RtpPacketReceived const&>(uint64_t (***a1)(void *))
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

uint64_t webrtc::WebRtcVoiceEngine::WebRtcVoiceEngine(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  *a1 = &unk_2882A4518;
  v9 = *a2;
  *(a1 + 8) = *a2;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v10;
  *(a1 + 48) = 0;
  v11 = *a3;
  *a3 = 0;
  *(a1 + 64) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 72) = v12;
  v13 = *a5;
  *a5 = 0;
  *(a1 + 80) = v13;
  v14 = *a6;
  *a6 = 0;
  *(a1 + 88) = v14;
  v15 = *a7;
  *a7 = 0;
  *(a1 + 96) = v15;
  v16 = *a8;
  *a8 = 0;
  *(a1 + 104) = v16;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 154) = 0u;
  *(a1 + 176) = 200;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  (*(**(a1 + 16) + 16))(&__p);
  v17 = 0;
  v18 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v18 = v38;
  }

  if (v18 >= 7)
  {
    p_p = __p;
    if ((v39 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v20 = *p_p;
    v21 = *(p_p + 3);
    v17 = v20 == 1650552389 && v21 == 1684368482;
  }

  if (v39 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 192) = v17;
  (*(**(a1 + 16) + 16))(&__p);
  v23 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v23 = v38;
  }

  if (v23 < 7)
  {
    v24 = 0;
    if ((v39 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v25 = __p;
  if ((v39 & 0x80u) == 0)
  {
    v25 = &__p;
  }

  v26 = *v25;
  v27 = *(v25 + 3);
  v24 = v26 == 1650552389 && v27 == 1684368482;
  if (v39 < 0)
  {
LABEL_30:
    operator delete(__p);
  }

LABEL_31:
  *(a1 + 193) = v24;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  return a1;
}

void webrtc::WebRtcVoiceEngine::~WebRtcVoiceEngine(webrtc::WebRtcVoiceEngine *this)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    if (*(this + 169) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    if (*(this + 169) != 1)
    {
LABEL_3:
      v9 = *(this + 18);
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  v20 = *(this + 12);
  if (v20)
  {
    (*(*v20 + 240))(v20);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  (*(**(this + 8) + 192))(*(this + 8));
  (*(**(this + 8) + 216))(*(this + 8));
  (*(**(this + 8) + 40))(*(this + 8), 0);
  (*(**(this + 8) + 56))(*(this + 8));
  v9 = *(this + 18);
  if (!v9)
  {
LABEL_4:
    v10 = *(this + 15);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_31:
  v28 = *(this + 19);
  v29 = v9;
  if (v28 != v9)
  {
    v30 = v28 - 216;
    v31 = v28 - 216;
    v32 = v28 - 216;
    do
    {
      v33 = *v32;
      v32 -= 216;
      (*v33)(v31);
      v30 -= 216;
      v34 = v31 == v9;
      v31 = v32;
    }

    while (!v34);
    v29 = *(this + 18);
  }

  *(this + 19) = v9;
  operator delete(v29);
  v10 = *(this + 15);
  if (!v10)
  {
LABEL_5:
    v11 = *(this + 14);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_37:
  v35 = *(this + 16);
  v36 = v10;
  if (v35 != v10)
  {
    v37 = v35 - 216;
    v38 = v35 - 216;
    v39 = v35 - 216;
    do
    {
      v40 = *v39;
      v39 -= 216;
      (*v40)(v38);
      v37 -= 216;
      v34 = v38 == v10;
      v38 = v39;
    }

    while (!v34);
    v36 = *(this + 15);
  }

  *(this + 16) = v10;
  operator delete(v36);
  v11 = *(this + 14);
  if (v11)
  {
LABEL_6:
    (*(*v11 + 8))(v11);
  }

LABEL_7:
  v12 = *(this + 13);
  *(this + 13) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 12);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 11);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 10);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 9);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 8);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 6);
  *(this + 6) = 0;
  if (v18)
  {
    (**v18)(v18);
  }

  v19 = *(this + 1);
  if (v19)
  {
    if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }
}

{
  webrtc::WebRtcVoiceEngine::~WebRtcVoiceEngine(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::WebRtcVoiceEngine::StopAecDump(webrtc::WebRtcVoiceEngine *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v2 = *(*v1 + 240);

    v2();
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }
}

void webrtc::WebRtcVoiceEngine::Init(webrtc::WebRtcVoiceEngine *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  (*(**(this + 4) + 16))(__p);
  v10 = *__p;
  *__p = 0;
  v11 = *(this + 6);
  *(this + 6) = v10;
  if (v11)
  {
    (**v11)(v11);
    v12 = *__p;
    *__p = 0;
    if (v12)
    {
      (**v12)(v12);
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  (*(**(this + 9) + 32))(&v87);
  v20 = *(this + 15);
  if (v20)
  {
    v21 = *(this + 16);
    v22 = *(this + 15);
    if (v21 != v20)
    {
      v23 = v21 - 27;
      v24 = v21 - 27;
      v25 = v21 - 27;
      do
      {
        v26 = *v25;
        v25 -= 27;
        (*v26)(v24);
        v23 -= 27;
        v27 = v24 == v20;
        v24 = v25;
      }

      while (!v27);
      v22 = *(this + 15);
    }

    *(this + 16) = v20;
    operator delete(v22);
  }

  v28 = *__p;
  *(this + 15) = *__p;
  v29 = *&__p[8];
  *(this + 8) = *&__p[8];
  memset(__p, 0, 24);
  v30 = v87;
  if (!v87)
  {
    i = v29;
    if (v28 == v29)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v31 = v88;
  v32 = v87;
  if (v88 != v87)
  {
    do
    {
      v33 = v31;
      v31 -= 12;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v33 - 7), *(v33 - 6));
      if (*(v33 - 73) < 0)
      {
        operator delete(*v31);
      }
    }

    while (v31 != v30);
    v32 = v87;
  }

  v88 = v30;
  operator delete(v32);
  v28 = *(this + 15);
  for (i = *(this + 16); v28 != i; v28 = (v28 + 216))
  {
LABEL_27:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      v1 = v1 & 0xFFFFFFFF00000000 | 0x1008;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_30:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  (*(**(this + 10) + 32))(&v87);
  v54 = *(this + 18);
  if (v54)
  {
    v55 = *(this + 19);
    v56 = *(this + 18);
    if (v55 != v54)
    {
      v57 = v55 - 27;
      v58 = v55 - 27;
      v59 = v55 - 27;
      do
      {
        v60 = *v59;
        v59 -= 27;
        (*v60)(v58);
        v57 -= 27;
        v27 = v58 == v54;
        v58 = v59;
      }

      while (!v27);
      v56 = *(this + 18);
    }

    *(this + 19) = v54;
    operator delete(v56);
  }

  v61 = *__p;
  *(this + 18) = *__p;
  v62 = *&__p[8];
  *(this + 152) = *&__p[8];
  memset(__p, 0, 24);
  v63 = v87;
  if (!v87)
  {
    j = v62;
    if (v61 == v62)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  v64 = v88;
  v65 = v87;
  if (v88 != v87)
  {
    do
    {
      v66 = v64;
      v64 -= 12;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v66 - 7), *(v66 - 6));
      if (*(v66 - 73) < 0)
      {
        operator delete(*v64);
      }
    }

    while (v64 != v63);
    v65 = v87;
  }

  v88 = v63;
  operator delete(v65);
  v61 = *(this + 18);
  for (j = *(this + 19); v61 != j; v61 = (v61 + 216))
  {
LABEL_51:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      v1 = v1 & 0xFFFFFFFF00000000 | 0x1048;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v69, v70, v71, v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_54:
  v76 = *(this + 8);
  if (v76)
  {
    webrtc::adm_helpers::Init(v76);
    memset(__p, 0, sizeof(__p));
    v78 = *(this + 11);
    if (v78)
    {
      (**v78)(*(this + 11));
      *__p = v78;
      v79 = *(this + 12);
      if (v79)
      {
        (**v79)(v79);
      }

      v80 = *(this + 8);
      *&__p[8] = v79;
      if (v80)
      {
        (**v80)(v80);
      }

      v81 = *(this + 13);
      *&__p[16] = v80;
      if (v81)
      {
        operator new();
      }

      operator new();
    }

    webrtc::AudioMixerImpl::Create(v77);
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc", 531, "adm()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v50, v51, v52, v53, v85);
}

void webrtc::anonymous namespace::LegacyCollectCodecs(uint64_t *a1, __int128 **a2, int a3)
{
  v150 = *MEMORY[0x277D85DE8];
  webrtc::PayloadTypePicker::PayloadTypePicker(&__p);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  LODWORD(v110.__r_.__value_.__l.__data_) = 8000;
  v110.__r_.__value_.__s.__data_[4] = 0;
  v97[0] = 0;
  v97[1] = 0;
  v96 = v97;
  if (!*std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(&v96, v97, &v133, &v117, &v110))
  {
    operator new();
  }

  LODWORD(v133) = 8000;
  BYTE4(v133) = 0;
  LODWORD(v134) = 48000;
  BYTE4(v134) = 0;
  v95[0] = 0;
  v95[1] = 0;
  v94 = v95;
  if (!*std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(&v94, v95, &v117, &v110, &v133))
  {
    operator new();
  }

  if (!*std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(&v94, v95, &v117, &v110, &v134))
  {
    operator new();
  }

  v11 = *a2;
  v88 = a2[1];
  if (*a2 != v88)
  {
    v12 = &v117 <= "transport-cc" && &v117 + 12 > "transport-cc";
    v13 = v12;
    v86 = v13;
    v15 = &v110 <= &webrtc::kRedCodecName && v110.__r_.__value_.__r.__words + 3 > &webrtc::kRedCodecName;
    v17 = &v110 <= &webrtc::kRedCodecName && v110.__r_.__value_.__r.__words + 3 > &webrtc::kRedCodecName;
    v83 = v17;
    v84 = v15;
    v18 = "/";
    do
    {
      v19 = v18;
      v20 = *(v11 + 6);
      v21 = *(v11 + 4);
      v133 = &unk_288291428;
      v134 = 0xFFFFFFFF00000000;
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v135, *v11, *(v11 + 1));
      }

      else
      {
        v22 = *v11;
        v135.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&v135.__r_.__value_.__l.__data_ = v22;
      }

      v136 = v20;
      v137 = 0;
      v138 = v21;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v145 = 0;
      v146 = 0;
      v144 = &v145;
      v148 = 0;
      v149 = 0;
      v147 = 0;
      if (&v144 != (v11 + 40))
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v144, *(v11 + 5), v11 + 6);
      }

      v18 = v19;
      if (!a3)
      {
        goto LABEL_42;
      }

      webrtc::Codec::Codec(v132, &v133);
      webrtc::PayloadTypePicker::SuggestMapping(v132, &__p, 0, &v117);
      webrtc::Codec::~Codec(v132);
      if (v117)
      {
        if (v118.__r_.__value_.__s.__data_[15] < 0)
        {
          v23 = *(&v117 + 1);
LABEL_39:
          operator delete(v23);
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if ((v119 & 0x100) == 0)
      {
        goto LABEL_236;
      }

      HIDWORD(v134) = v119;
      if (v118.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(*(&v117 + 1));
        if (*(v11 + 93) != 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_42:
        if (*(v11 + 93) != 1)
        {
          goto LABEL_50;
        }
      }

      v118.__r_.__value_.__s.__data_[7] = 12;
      if (v86)
      {
        goto LABEL_236;
      }

      strcpy(&v117, "transport-cc");
      v87 &= 0xFFFFFFFFFFFFFF00;
      v118.__r_.__value_.__l.__size_ = v87;
      HIBYTE(v119) = 0;
      webrtc::FeedbackParams::Add(&v147, &v117, v5, v6, v7, v8, v9, v10);
      if (SHIBYTE(v119) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__size_);
        if (v118.__r_.__value_.__s.__data_[7] < 0)
        {
LABEL_48:
          operator delete(v117);
        }
      }

      else if (v118.__r_.__value_.__s.__data_[7] < 0)
      {
        goto LABEL_48;
      }

LABEL_50:
      if (*(v11 + 92) == 1)
      {
        v24 = v97[0];
        if (v97[0])
        {
          v25 = *(v11 + 6);
          v26 = v97;
          do
          {
            v27 = *(v24 + 7);
            v12 = v27 <= v25;
            v28 = v27 > v25;
            if (v12)
            {
              v26 = v24;
            }

            v24 = v24[v28];
          }

          while (v24);
          if (v26 != v97 && v25 <= *(v26 + 7))
          {
            *(v26 + 32) = 1;
          }
        }
      }

      v29 = v95[0];
      if (v95[0])
      {
        v30 = *(v11 + 6);
        v31 = v95;
        do
        {
          v32 = *(v29 + 7);
          v12 = v32 <= v30;
          v33 = v32 > v30;
          if (v12)
          {
            v31 = v29;
          }

          v29 = v29[v33];
        }

        while (v29);
        if (v31 != v95 && v30 <= *(v31 + 7))
        {
          *(v31 + 32) = 1;
        }
      }

      v34 = a1[1];
      if (v34 >= a1[2])
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
      }

      if (!v34)
      {
        goto LABEL_236;
      }

      a1[1] = webrtc::Codec::Codec(v34, &v133) + 216;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v135.__r_.__value_.__l.__size_ != 4)
        {
          goto LABEL_29;
        }

        v36 = v135.__r_.__value_.__r.__words[0];
      }

      else
      {
        v36 = &v135;
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_29;
        }
      }

      if (LODWORD(v36->__r_.__value_.__l.__data_) != *"opus")
      {
        goto LABEL_29;
      }

      if (!a3)
      {
        *(&v110.__r_.__value_.__s + 23) = 3;
        if (v84)
        {
          goto LABEL_236;
        }

        strcpy(&v110, "red");
        v111 = 48000;
        v115 = 0;
        v116 = 0;
        v113 = 2;
        v114 = &v115;
        *&v117 = &unk_288291428;
        v118 = v110;
        *(&v117 + 1) = 0xFFFFFFFF00000000;
        v119 = 48000;
        v120 = 2;
        LOBYTE(v121) = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        v127 = 0;
        v128 = 0;
        v126 = &v127;
        v130 = 0;
        v131 = 0;
        v129 = 0;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v126, &v115, &v115);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v114, v115);
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
          v41 = a1[1];
          if (v41 >= a1[2])
          {
LABEL_28:
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
          }
        }

        else
        {
          v41 = a1[1];
          if (v41 >= a1[2])
          {
            goto LABEL_28;
          }
        }

        if (!v41)
        {
          goto LABEL_236;
        }

        a1[1] = webrtc::Codec::Codec(v41, &v117) + 216;
        webrtc::Codec::~Codec(&v117);
        goto LABEL_29;
      }

      v110.__r_.__value_.__r.__words[2] = 0x1600000000000000;
      *&v110.__r_.__value_.__l.__data_ = 0uLL;
      v37 = absl::numbers_internal::FastIntToBuffer(HIDWORD(v134), &v110, v35);
      v39 = v37 - &v110;
      if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v110.__r_.__value_.__l.__size_ < v39)
        {
          goto LABEL_237;
        }

        v40 = v110.__r_.__value_.__r.__words[0];
        v110.__r_.__value_.__l.__size_ = v37 - &v110;
      }

      else
      {
        if (v39 > SHIBYTE(v110.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_237;
        }

        *(&v110.__r_.__value_.__s + 23) = v37 - &v110;
        v40 = &v110;
      }

      v40->__r_.__value_.__s.__data_[v39] = 0;
      size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = 22;
      }

      else
      {
        v43 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v110.__r_.__value_.__l.__size_;
      }

      if (v43 == size)
      {
        std::string::__grow_by_and_replace(&v110, v43, 1uLL, v43, v43, 0, 1uLL, v19);
      }

      else
      {
        v44 = &v110;
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = v110.__r_.__value_.__r.__words[0];
        }

        v45 = v44 + size;
        if (v44 + size <= v19 && v45 + 1 > v19)
        {
          goto LABEL_236;
        }

        *v45 = 47;
        v46 = size + 1;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          v110.__r_.__value_.__l.__size_ = v46;
        }

        else
        {
          *(&v110.__r_.__value_.__s + 23) = v46 & 0x7F;
        }

        v44->__r_.__value_.__s.__data_[v46] = 0;
      }

      v117 = *&v110.__r_.__value_.__l.__data_;
      v118.__r_.__value_.__r.__words[0] = v110.__r_.__value_.__r.__words[2];
      memset(&v110, 0, sizeof(v110));
      __len = 0x1600000000000000;
      __p_new_stuff = 0;
      __n_add = 0;
      v47 = absl::numbers_internal::FastIntToBuffer(HIDWORD(v134), &__p_new_stuff, v38);
      v48 = v47 - &__p_new_stuff;
      if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
      {
        if (__n_add < v48)
        {
          goto LABEL_237;
        }

        __n_add = v47 - &__p_new_stuff;
        __p_new_stuff[v48] = 0;
        v49 = SHIBYTE(__len);
        if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
        {
LABEL_108:
          v50 = v49 == 0;
          p_p_new_stuff = &__p_new_stuff;
          goto LABEL_113;
        }
      }

      else
      {
        if (v48 > SHIBYTE(__len))
        {
          goto LABEL_237;
        }

        HIBYTE(__len) = v47 - &__p_new_stuff;
        *v47 = 0;
        v49 = SHIBYTE(__len);
        if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
        {
          goto LABEL_108;
        }
      }

      p_p_new_stuff = __p_new_stuff;
      v49 = __n_add;
      v50 = __n_add == 0;
      if (!__p_new_stuff && __n_add)
      {
        goto LABEL_236;
      }

LABEL_113:
      if (v118.__r_.__value_.__s.__data_[7] >= 0)
      {
        v52 = 22;
      }

      else
      {
        v52 = (v118.__r_.__value_.__r.__words[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v118.__r_.__value_.__s.__data_[7] >= 0)
      {
        v53 = v118.__r_.__value_.__s.__data_[7];
      }

      else
      {
        v53 = *(&v117 + 1);
      }

      if (v52 - v53 >= v49)
      {
        if (!v50)
        {
          if (v118.__r_.__value_.__s.__data_[7] >= 0)
          {
            v54 = &v117;
          }

          else
          {
            v54 = v117;
          }

          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_236;
          }

          v55 = v54 + v53;
          if (v54 + v53 <= p_p_new_stuff && &v55[v49] > p_p_new_stuff)
          {
            goto LABEL_236;
          }

          v56 = v49;
          memmove(v55, p_p_new_stuff, v49);
          v57 = v53 + v56;
          if (v118.__r_.__value_.__s.__data_[7] < 0)
          {
            *(&v117 + 1) = v53 + v56;
          }

          else
          {
            v118.__r_.__value_.__s.__data_[7] = v57 & 0x7F;
          }

          *(v54 + v57) = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v117, v52, v53 + v49 - v52, v53, v53, 0, v49, p_p_new_stuff);
      }

      v58 = v117;
      v93[0] = v118.__r_.__value_.__l.__data_;
      *(v93 + 3) = *(v118.__r_.__value_.__r.__words + 3);
      v59 = v118.__r_.__value_.__s.__data_[7];
      v117 = 0uLL;
      v118.__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(__len) & 0x80000000) == 0 || (operator delete(__p_new_stuff), (v118.__r_.__value_.__s.__data_[7] & 0x80000000) == 0))
      {
        if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_136;
        }

LABEL_135:
        operator delete(v110.__r_.__value_.__l.__data_);
        goto LABEL_136;
      }

      operator delete(v117);
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_135;
      }

LABEL_136:
      v60 = v136;
      v85 = v138;
      HIBYTE(__len) = 0;
      LOBYTE(__p_new_stuff) = 0;
      if (v59 < 0)
      {
        std::string::__init_copy_ctor_external(&v109, v58, *(&v58 + 1));
      }

      else
      {
        *&v109.__r_.__value_.__l.__data_ = v58;
        LODWORD(v109.__r_.__value_.__r.__words[2]) = v93[0];
        *(&v109.__r_.__value_.__r.__words[2] + 3) = *(v93 + 3);
        *(&v109.__r_.__value_.__s + 23) = v59;
      }

      v91 = 0;
      v92 = 0;
      v90 = &v91;
      if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v90, &v91, &v102, &v101, &__p_new_stuff))
      {
        operator new();
      }

      *(&v110.__r_.__value_.__s + 23) = 3;
      if (v83)
      {
        goto LABEL_236;
      }

      strcpy(&v110, "red");
      v111 = v60;
      v61 = v85;
      v113 = v85;
      v114 = v90;
      v115 = v91;
      v116 = v92;
      if (v92)
      {
        *(v91 + 16) = &v115;
        v90 = &v91;
        v91 = 0;
        v92 = 0;
        *&v117 = &unk_288291428;
        *(&v117 + 1) = 0xFFFFFFFF00000000;
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v118, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
          v61 = v85;
          goto LABEL_149;
        }
      }

      else
      {
        v114 = &v115;
        *&v117 = &unk_288291428;
        *(&v117 + 1) = 0xFFFFFFFF00000000;
      }

      v118 = v110;
LABEL_149:
      v119 = v60;
      v120 = v61;
      LOBYTE(v121) = 0;
      v122 = 0;
      v123 = 0;
      v124 = 0;
      v125 = 0;
      v127 = 0;
      v128 = 0;
      v126 = &v127;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v126, v114, &v115);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v114, v115);
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v90, v91);
        v18 = v19;
        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_159:
          operator delete(v109.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__len) & 0x80000000) == 0)
          {
            goto LABEL_152;
          }

          goto LABEL_160;
        }
      }

      else
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v90, v91);
        v18 = v19;
        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_159;
        }
      }

      if ((SHIBYTE(__len) & 0x80000000) == 0)
      {
        goto LABEL_152;
      }

LABEL_160:
      operator delete(__p_new_stuff);
LABEL_152:
      webrtc::Codec::Codec(v105, &v117);
      webrtc::PayloadTypePicker::SuggestMapping(v105, &__p, 0, &v110);
      if ((BYTE1(v114) & 1) == 0)
      {
        goto LABEL_236;
      }

      HIDWORD(v117) = v114;
      if (v112 < 0)
      {
        operator delete(v110.__r_.__value_.__l.__size_);
        webrtc::Codec::~Codec(v105);
        v62 = a1[1];
        if (v62 >= a1[2])
        {
LABEL_162:
          std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
        }
      }

      else
      {
        webrtc::Codec::~Codec(v105);
        v62 = a1[1];
        if (v62 >= a1[2])
        {
          goto LABEL_162;
        }
      }

      if (!v62)
      {
        goto LABEL_236;
      }

      a1[1] = webrtc::Codec::Codec(v62, &v117) + 216;
      webrtc::Codec::~Codec(&v117);
      if (v59 < 0)
      {
        v23 = v58;
        goto LABEL_39;
      }

LABEL_29:
      webrtc::Codec::~Codec(&v133);
      v11 += 6;
    }

    while (v11 != v88);
  }

  v63 = v96;
  if (v96 != v97)
  {
    if (&v117 <= "CN" && &v117 + 2 > "CN")
    {
      while (*(v63 + 32) != 1)
      {
        v69 = v63[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v63[2];
            v68 = *v70 == v63;
            v63 = v70;
          }

          while (!v68);
        }

        v63 = v70;
        if (v70 == v97)
        {
          goto LABEL_195;
        }
      }

      goto LABEL_236;
    }

    while (*(v63 + 32) != 1)
    {
LABEL_179:
      v66 = v63[1];
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = v63[2];
          v68 = *v67 == v63;
          v63 = v67;
        }

        while (!v68);
      }

      v63 = v67;
      if (v67 == v97)
      {
        goto LABEL_195;
      }
    }

    v64 = *(v63 + 7);
    v118.__r_.__value_.__s.__data_[7] = 2;
    strcpy(&v117, "CN");
    LODWORD(v118.__r_.__value_.__r.__words[1]) = v64;
    v120 = 0;
    v121 = 0;
    v118.__r_.__value_.__r.__words[2] = 1;
    v119 = &v120;
    v133 = &unk_288291428;
    v134 = 0xFFFFFFFF00000000;
    *&v135.__r_.__value_.__l.__data_ = v117;
    v135.__r_.__value_.__r.__words[2] = v118.__r_.__value_.__r.__words[0];
    v136 = v64;
    v137 = 0;
    v138 = 1;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = &v145;
    v148 = 0;
    v149 = 0;
    v147 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v144, &v120, &v120);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v119, v120);
    if (v118.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v117);
      if (a3)
      {
LABEL_171:
        webrtc::Codec::Codec(v104, &v133);
        webrtc::PayloadTypePicker::SuggestMapping(v104, &__p, 0, &v117);
        if ((v119 & 0x100) == 0)
        {
          goto LABEL_236;
        }

        HIDWORD(v134) = v119;
        if (v118.__r_.__value_.__s.__data_[15] < 0)
        {
          operator delete(*(&v117 + 1));
          webrtc::Codec::~Codec(v104);
          v65 = a1[1];
          if (v65 >= a1[2])
          {
LABEL_174:
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
          }
        }

        else
        {
          webrtc::Codec::~Codec(v104);
          v65 = a1[1];
          if (v65 >= a1[2])
          {
            goto LABEL_174;
          }
        }

        goto LABEL_177;
      }
    }

    else if (a3)
    {
      goto LABEL_171;
    }

    v65 = a1[1];
    if (v65 >= a1[2])
    {
      goto LABEL_174;
    }

LABEL_177:
    if (!v65)
    {
      goto LABEL_236;
    }

    a1[1] = webrtc::Codec::Codec(v65, &v133) + 216;
    webrtc::Codec::~Codec(&v133);
    goto LABEL_179;
  }

LABEL_195:
  v71 = v94;
  if (v94 != v95)
  {
    if (&v117 <= "telephone-event" && &v117 + 15 > "telephone-event")
    {
      while (*(v71 + 32) != 1)
      {
        v77 = v71[1];
        if (v77)
        {
          do
          {
            v78 = v77;
            v77 = *v77;
          }

          while (v77);
        }

        else
        {
          do
          {
            v78 = v71[2];
            v68 = *v78 == v71;
            v71 = v78;
          }

          while (!v68);
        }

        v71 = v78;
        if (v78 == v95)
        {
          goto LABEL_230;
        }
      }

LABEL_236:
      __break(1u);
LABEL_237:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    while (*(v71 + 32) != 1)
    {
LABEL_213:
      v75 = v71[1];
      if (v75)
      {
        do
        {
          v76 = v75;
          v75 = *v75;
        }

        while (v75);
      }

      else
      {
        do
        {
          v76 = v71[2];
          v68 = *v76 == v71;
          v71 = v76;
        }

        while (!v68);
      }

      v71 = v76;
      if (v76 == v95)
      {
        goto LABEL_230;
      }
    }

    v73 = *(v71 + 7);
    v118.__r_.__value_.__s.__data_[7] = 15;
    strcpy(&v117, "telephone-event");
    LODWORD(v118.__r_.__value_.__r.__words[1]) = v73;
    v120 = 0;
    v121 = 0;
    v118.__r_.__value_.__r.__words[2] = 1;
    v119 = &v120;
    v133 = &unk_288291428;
    v134 = 0xFFFFFFFF00000000;
    *&v135.__r_.__value_.__l.__data_ = v117;
    v135.__r_.__value_.__r.__words[2] = v118.__r_.__value_.__r.__words[0];
    v136 = v73;
    v137 = 0;
    v138 = 1;
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v145 = 0;
    v146 = 0;
    v144 = &v145;
    v147 = 0;
    v148 = 0;
    v149 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v144, &v120, &v120);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v119, v120);
    if (v118.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v117);
      if (a3)
      {
LABEL_205:
        webrtc::Codec::Codec(v103, &v133);
        webrtc::PayloadTypePicker::SuggestMapping(v103, &__p, 0, &v117);
        if ((v119 & 0x100) == 0)
        {
          goto LABEL_236;
        }

        HIDWORD(v134) = v119;
        if (v118.__r_.__value_.__s.__data_[15] < 0)
        {
          operator delete(*(&v117 + 1));
          webrtc::Codec::~Codec(v103);
          v74 = a1[1];
          if (v74 >= a1[2])
          {
LABEL_208:
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
          }
        }

        else
        {
          webrtc::Codec::~Codec(v103);
          v74 = a1[1];
          if (v74 >= a1[2])
          {
            goto LABEL_208;
          }
        }

        goto LABEL_211;
      }
    }

    else if (a3)
    {
      goto LABEL_205;
    }

    v74 = a1[1];
    if (v74 >= a1[2])
    {
      goto LABEL_208;
    }

LABEL_211:
    if (!v74)
    {
      goto LABEL_236;
    }

    a1[1] = webrtc::Codec::Codec(v74, &v133) + 216;
    webrtc::Codec::~Codec(&v133);
    goto LABEL_213;
  }

LABEL_230:
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v94, v95[0]);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v96, v97[0]);
  std::__tree<sigslot::_signal_base_interface *>::destroy(v100, v100[1]);
  v79 = __p;
  if (__p)
  {
    v80 = v99;
    v81 = __p;
    if (v99 != __p)
    {
      do
      {
        v82 = v80 - 224;
        webrtc::Codec::~Codec((v80 - 216));
        v80 = v82;
      }

      while (v82 != v79);
      v81 = __p;
    }

    v99 = v79;
    operator delete(v81);
  }
}

double webrtc::anonymous namespace::ToString(std::string *this, const webrtc::Codec *a2, char *a3)
{
  memset(&__dst, 0, sizeof(__dst));
  v3 = *(a2 + 39);
  if (v3 >= 0)
  {
    v4 = (a2 + 16);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  if (v3 >= 0)
  {
    size = *(a2 + 39);
  }

  else
  {
    size = *(a2 + 3);
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = size == 0;
  }

  if (!v6)
  {
    goto LABEL_241;
  }

  v7 = a2;
  if (size > 0x16)
  {
    if (size - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (size)
  {
    v9 = (&__dst + size);
    if (&__dst <= v4 && v9 > v4)
    {
      goto LABEL_241;
    }

    memmove(&__dst, v4, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = size;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = size;
    }

    v9->__r_.__value_.__s.__data_[0] = 0;
    LODWORD(v12) = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v11 = __dst.__r_.__value_.__r.__words[2];
    size = __dst.__r_.__value_.__l.__size_;
  }

  else
  {
    v11 = 0;
    LODWORD(v12) = 0;
  }

  v13 = v12;
  v14 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v12 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = v14;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = size;
  }

  if (v15 == v12)
  {
    std::string::__grow_by_and_replace(&__dst, v15, 1uLL, v15, v15, 0, 1uLL, "/");
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
    if (v13 >= 0)
    {
      p_dst = &__dst;
    }

    v17 = p_dst + v12;
    if (p_dst + v12 <= "/" && v17 + 1 > "/")
    {
      goto LABEL_241;
    }

    *v17 = 47;
    v18 = v12 + 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v18;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v18 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v18] = 0;
  }

  v19 = webrtc::StringBuilder::operator<<(&__dst, *(v7 + 10), a3);
  v21 = v19;
  v22 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v23 = v22;
  if ((v22 & 0x80u) == 0)
  {
    v24 = 22;
  }

  else
  {
    v24 = (v19->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v22 & 0x80u) != 0)
  {
    v22 = v19->__r_.__value_.__l.__size_;
  }

  if (v24 == v22)
  {
    std::string::__grow_by_and_replace(v19, v24, 1uLL, v24, v24, 0, 1uLL, "/");
  }

  else
  {
    if (v23 >= 0)
    {
      v25 = v19;
    }

    else
    {
      v25 = v19->__r_.__value_.__r.__words[0];
    }

    v26 = v25 + v22;
    if (v25 + v22 <= "/" && v26 + 1 > "/")
    {
      goto LABEL_241;
    }

    *v26 = 47;
    v27 = v22 + 1;
    if (SHIBYTE(v19->__r_.__value_.__r.__words[2]) < 0)
    {
      v19->__r_.__value_.__l.__size_ = v27;
    }

    else
    {
      *(&v19->__r_.__value_.__s + 23) = v27 & 0x7F;
    }

    v25->__r_.__value_.__s.__data_[v27] = 0;
  }

  v28 = *(v7 + 6);
  v100 = 0;
  __len = 0x1600000000000000;
  __p = 0;
  v29 = absl::numbers_internal::FastIntToBuffer(v28, &__p, v20);
  v31 = v29 - &__p;
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    if (v100 < v31)
    {
      goto LABEL_242;
    }

    v100 = v29 - &__p;
    *(__p + v31) = 0;
    v32 = SHIBYTE(__len);
    if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v31 > SHIBYTE(__len))
    {
      goto LABEL_242;
    }

    HIBYTE(__len) = v29 - &__p;
    *v29 = 0;
    v32 = SHIBYTE(__len);
    if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
    {
LABEL_59:
      v33 = v32 == 0;
      p_p = &__p;
      goto LABEL_64;
    }
  }

  p_p = __p;
  v32 = v100;
  v33 = v100 == 0;
  if (!__p && v100)
  {
LABEL_241:
    __break(1u);
LABEL_242:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_64:
  v35 = SHIBYTE(v21->__r_.__value_.__r.__words[2]);
  if (v35 >= 0)
  {
    v36 = 22;
  }

  else
  {
    v36 = (v21->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v35 >= 0)
  {
    v37 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v21->__r_.__value_.__l.__size_;
  }

  if (v36 - v37 < v32)
  {
    std::string::__grow_by_and_replace(v21, v36, v37 + v32 - v36, v37, v37, 0, v32, p_p);
    if (SHIBYTE(__len) < 0)
    {
      goto LABEL_72;
    }

LABEL_84:
    if (!*(v7 + 23))
    {
      goto LABEL_206;
    }

    goto LABEL_85;
  }

  if (v33)
  {
    goto LABEL_83;
  }

  if (v35 >= 0)
  {
    v38 = v21;
  }

  else
  {
    v38 = v21->__r_.__value_.__r.__words[0];
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_241;
  }

  v39 = v38 + v37;
  if (v38 + v37 <= p_p && &v39[v32] > p_p)
  {
    goto LABEL_241;
  }

  v40 = v32;
  memmove(v39, p_p, v32);
  v41 = v37 + v40;
  if ((SHIBYTE(v21->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v21->__r_.__value_.__s + 23) = v41 & 0x7F;
    v38->__r_.__value_.__s.__data_[v41] = 0;
LABEL_83:
    if ((SHIBYTE(__len) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_72;
  }

  v21->__r_.__value_.__l.__size_ = v41;
  v38->__r_.__value_.__s.__data_[v41] = 0;
  if ((SHIBYTE(__len) & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

LABEL_72:
  operator delete(__p);
  if (!*(v7 + 23))
  {
    goto LABEL_206;
  }

LABEL_85:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = 22;
  }

  else
  {
    v42 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = __dst.__r_.__value_.__l.__size_;
  }

  if (v42 - v43 < 2)
  {
    std::string::__grow_by_and_replace(&__dst, v42, v43 - v42 + 2, v43, v43, 0, 2uLL, " {");
    v44 = *(v7 + 21);
    v97 = v7;
    v45 = (v7 + 176);
    if (v44 != (v7 + 176))
    {
      goto LABEL_104;
    }

    goto LABEL_188;
  }

  v46 = &__dst;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v46 = __dst.__r_.__value_.__r.__words[0];
  }

  v47 = (v46 + v43);
  if (v46 + v43 <= " {" && v47 + 1 > " {")
  {
    goto LABEL_241;
  }

  *v47 = 31520;
  v48 = v43 + 2;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    __dst.__r_.__value_.__l.__size_ = v43 + 2;
    v46->__r_.__value_.__s.__data_[v48] = 0;
    v44 = *(v7 + 21);
    v97 = v7;
    v45 = (v7 + 176);
    if (v44 == (v7 + 176))
    {
      goto LABEL_188;
    }

    while (1)
    {
LABEL_104:
      v49 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = 22;
      }

      else
      {
        v50 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v49 = __dst.__r_.__value_.__l.__size_;
      }

      if (v50 == v49)
      {
        std::string::__grow_by_and_replace(&__dst, v50, 1uLL, v50, v50, 0, 1uLL, " ");
        v51 = *(v44 + 55);
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &__dst;
        }

        else
        {
          v54 = __dst.__r_.__value_.__r.__words[0];
        }

        if (v54 + v49 <= " " && &v54->__r_.__value_.__l.__data_ + v49 + 1 > " ")
        {
          goto LABEL_241;
        }

        v54->__r_.__value_.__s.__data_[v49] = 32;
        v56 = v49 + 1;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = v56;
          v54->__r_.__value_.__s.__data_[v56] = 0;
          v51 = *(v44 + 55);
          if ((v51 & 0x8000000000000000) == 0)
          {
LABEL_111:
            v52 = (v44 + 4);
            v53 = v51 == 0;
            goto LABEL_123;
          }
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v56 & 0x7F;
          v54->__r_.__value_.__s.__data_[v56] = 0;
          v51 = *(v44 + 55);
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_111;
          }
        }
      }

      v52 = v44[4];
      v51 = v44[5];
      v53 = v51 == 0;
      if (!v52 && v51)
      {
        goto LABEL_241;
      }

LABEL_123:
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = 22;
      }

      else
      {
        v57 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __dst.__r_.__value_.__l.__size_;
      }

      if (v57 - v58 >= v51)
      {
        if (!v53)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = &__dst;
          }

          else
          {
            v59 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_241;
          }

          v60 = v59 + v58;
          if (v59 + v58 <= v52 && &v60[v51] > v52)
          {
            goto LABEL_241;
          }

          v61 = v51;
          memmove(v60, v52, v51);
          v62 = v58 + v61;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = v58 + v61;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v62 & 0x7F;
          }

          v59->__r_.__value_.__s.__data_[v62] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&__dst, v57, v58 + v51 - v57, v58, v58, 0, v51, v52);
      }

      v63 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = 22;
      }

      else
      {
        v64 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = __dst.__r_.__value_.__l.__size_;
      }

      if (v64 == v63)
      {
        std::string::__grow_by_and_replace(&__dst, v64, 1uLL, v64, v64, 0, 1uLL, "=");
        v65 = *(v44 + 79);
        if ((v65 & 0x8000000000000000) == 0)
        {
          goto LABEL_151;
        }
      }

      else
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &__dst;
        }

        else
        {
          v68 = __dst.__r_.__value_.__r.__words[0];
        }

        v69 = v68 + v63;
        if (v68 + v63 <= "=" && v69 + 1 > "=")
        {
          goto LABEL_241;
        }

        *v69 = 61;
        v70 = v63 + 1;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = v70;
          v68->__r_.__value_.__s.__data_[v70] = 0;
          v65 = *(v44 + 79);
          if ((v65 & 0x8000000000000000) == 0)
          {
LABEL_151:
            v66 = (v44 + 7);
            v67 = v65 == 0;
            goto LABEL_161;
          }
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v70 & 0x7F;
          v68->__r_.__value_.__s.__data_[v70] = 0;
          v65 = *(v44 + 79);
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_151;
          }
        }
      }

      v66 = v44[7];
      v65 = v44[8];
      v67 = v65 == 0;
      if (!v66 && v65)
      {
        goto LABEL_241;
      }

LABEL_161:
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = 22;
      }

      else
      {
        v71 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = __dst.__r_.__value_.__l.__size_;
      }

      if (v71 - v72 < v65)
      {
        std::string::__grow_by_and_replace(&__dst, v71, v72 + v65 - v71, v72, v72, 0, v65, v66);
        v73 = v44[1];
        if (v73)
        {
          goto LABEL_180;
        }

        goto LABEL_185;
      }

      if (v67)
      {
        goto LABEL_179;
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = &__dst;
      }

      else
      {
        v74 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((v65 & 0x8000000000000000) != 0)
      {
        goto LABEL_241;
      }

      v75 = v74 + v72;
      if (v74 + v72 <= v66 && &v75[v65] > v66)
      {
        goto LABEL_241;
      }

      v76 = v65;
      memmove(v75, v66, v65);
      v77 = v72 + v76;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&__dst.__r_.__value_.__s + 23) = v77 & 0x7F;
        v74->__r_.__value_.__s.__data_[v77] = 0;
LABEL_179:
        v73 = v44[1];
        if (v73)
        {
          goto LABEL_180;
        }

        goto LABEL_185;
      }

      __dst.__r_.__value_.__l.__size_ = v72 + v76;
      v74->__r_.__value_.__s.__data_[v77] = 0;
      v73 = v44[1];
      if (v73)
      {
        do
        {
LABEL_180:
          v78 = v73;
          v73 = *v73;
        }

        while (v73);
        goto LABEL_103;
      }

      do
      {
LABEL_185:
        v78 = v44[2];
        v6 = *v78 == v44;
        v44 = v78;
      }

      while (!v6);
LABEL_103:
      v44 = v78;
      if (v78 == v45)
      {
        goto LABEL_188;
      }
    }
  }

  *(&__dst.__r_.__value_.__s + 23) = v48 & 0x7F;
  v46->__r_.__value_.__s.__data_[v48] = 0;
  v44 = *(v7 + 21);
  v97 = v7;
  v45 = (v7 + 176);
  if (v44 != (v7 + 176))
  {
    goto LABEL_104;
  }

LABEL_188:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = 22;
  }

  else
  {
    v79 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = __dst.__r_.__value_.__l.__size_;
  }

  if (v79 - v80 >= 2)
  {
    v81 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v81 = __dst.__r_.__value_.__r.__words[0];
    }

    if (v81 + v80 <= " }" && &v81->__r_.__value_.__s.__data_[v80 + 2] > " }")
    {
      goto LABEL_241;
    }

    *(&v81->__r_.__value_.__l.__data_ + v80) = 32032;
    v83 = v80 + 2;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v80 + 2;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v83 & 0x7F;
    }

    v7 = v97;
    v81->__r_.__value_.__s.__data_[v83] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&__dst, v79, v80 - v79 + 2, v80, v80, 0, 2uLL, " }");
    v7 = v97;
  }

LABEL_206:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = 22;
  }

  else
  {
    v84 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = __dst.__r_.__value_.__l.__size_;
  }

  if (v84 - v85 >= 2)
  {
    v86 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v86 = __dst.__r_.__value_.__r.__words[0];
    }

    v87 = (v86 + v85);
    if (v86 + v85 <= " (" && v87 + 1 > " (")
    {
      goto LABEL_241;
    }

    *v87 = 10272;
    v88 = v85 + 2;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v85 + 2;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v88 & 0x7F;
    }

    v86->__r_.__value_.__s.__data_[v88] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&__dst, v84, v85 - v84 + 2, v85, v85, 0, 2uLL, " (");
  }

  v89 = webrtc::StringBuilder::operator<<(&__dst, *(v7 + 3), v30);
  v90 = HIBYTE(v89->__r_.__value_.__r.__words[2]);
  v91 = v90;
  if ((v90 & 0x80u) == 0)
  {
    v92 = 22;
  }

  else
  {
    v92 = (v89->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v90 & 0x80u) != 0)
  {
    v90 = v89->__r_.__value_.__l.__size_;
  }

  if (v92 == v90)
  {
    std::string::__grow_by_and_replace(v89, v92, 1uLL, v92, v92, 0, 1uLL, ")");
  }

  else
  {
    if (v91 >= 0)
    {
      v93 = v89;
    }

    else
    {
      v93 = v89->__r_.__value_.__r.__words[0];
    }

    v94 = v93 + v90;
    if (v93 + v90 <= ")" && v94 + 1 > ")")
    {
      goto LABEL_241;
    }

    *v94 = 41;
    v95 = v90 + 1;
    if (SHIBYTE(v89->__r_.__value_.__r.__words[2]) < 0)
    {
      v89->__r_.__value_.__l.__size_ = v95;
    }

    else
    {
      *(&v89->__r_.__value_.__s + 23) = v95 & 0x7F;
    }

    v93->__r_.__value_.__s.__data_[v95] = 0;
  }

  result = *&__dst.__r_.__value_.__l.__data_;
  *this = __dst;
  return result;
}

void webrtc::WebRtcVoiceEngine::ApplyOptions(webrtc::WebRtcVoiceEngine *this, const webrtc::AudioOptions *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::AudioOptions::ToString(a2, __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    if (v67 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = *(a2 + 1);
  v75 = *a2;
  v76 = v11;
  v77 = *(a2 + 16);
  v78.__r_.__value_.__s.__data_[0] = 0;
  v79 = 0;
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v78, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v78 = *(a2 + 40);
    }

    v79 = 1;
  }

  v80 = *(a2 + 36);
  if (BYTE3(v75) == 1 && BYTE2(v75) == 1)
  {
    LOWORD(v75) = 257;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_15;
    }
  }

  else
  {
    LOWORD(v75) = 256;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_15;
    }
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
LABEL_15:
  WORD2(v75) = 256;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  if (*(this + 192) != 1)
  {
    goto LABEL_24;
  }

  WORD2(v75) = 256;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
  }

  if (BYTE7(v75) == 1 && (BYTE6(v75) & 1) != 0 || BYTE1(v75) == 1 && (v75 & 1) != 0)
  {
LABEL_24:
    if (BYTE1(v75) != 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
    }

    WORD4(v75) = 256;
    if (BYTE1(v75) != 1)
    {
      goto LABEL_36;
    }
  }

  if ((*(**(this + 8) + 448))(*(this + 8)))
  {
    if ((BYTE1(v75) & 1) == 0)
    {
      goto LABEL_77;
    }

    v33 = v75;
    if ((*(**(this + 8) + 472))(*(this + 8), v75))
    {
      v34 = 1;
    }

    else
    {
      v34 = v33 == 0;
    }

    if (!v34)
    {
      LOWORD(v75) = 256;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      }
    }
  }

LABEL_36:
  if (BYTE5(v75) == 1 && (*(**(this + 8) + 456))(*(this + 8)))
  {
    if ((BYTE5(v75) & 1) == 0)
    {
      goto LABEL_77;
    }

    if (!(*(**(this + 8) + 480))(*(this + 8), BYTE4(v75)))
    {
      if ((BYTE5(v75) & 1) == 0)
      {
        goto LABEL_77;
      }

      if (BYTE4(v75) == 1)
      {
        WORD2(v75) = 256;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
        }
      }
    }
  }

  if (BYTE7(v75) != 1 || !(*(**(this + 8) + 464))(*(this + 8)))
  {
    goto LABEL_51;
  }

  if ((BYTE7(v75) & 1) == 0)
  {
LABEL_77:
    __break(1u);
    return;
  }

  v56 = BYTE6(v75);
  if (!(*(**(this + 8) + 488))(*(this + 8), BYTE6(v75)))
  {
    if (v56)
    {
      WORD3(v75) = 256;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_voice_engine.cc");
      }
    }
  }

LABEL_51:
  if (BYTE11(v75) == 1)
  {
    (*(**(this + 14) + 64))(*(this + 14), BYTE10(v75));
    if (v76 != 1)
    {
LABEL_53:
      if (BYTE5(v76) != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_63;
    }
  }

  else if (v76 != 1)
  {
    goto LABEL_53;
  }

  if (SHIDWORD(v75) <= 20)
  {
    v65 = 20;
  }

  else
  {
    v65 = HIDWORD(v75);
  }

  *(this + 22) = v65;
  if (BYTE5(v76) != 1)
  {
LABEL_54:
    if (BYTE12(v76) != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(this + 184) = BYTE4(v76);
  if (BYTE12(v76) != 1)
  {
LABEL_55:
    v64 = *(this + 12);
    if (!v64)
    {
      goto LABEL_56;
    }

LABEL_65:
    (*(*v64 + 264))(__p, v64);
    if (BYTE1(v75) == 1)
    {
      v69 = v75;
      v70 = 0;
      if (BYTE5(v75) != 1)
      {
LABEL_67:
        if (BYTE9(v75) != 1)
        {
          goto LABEL_68;
        }

        goto LABEL_75;
      }
    }

    else if (BYTE5(v75) != 1)
    {
      goto LABEL_67;
    }

    v73 = BYTE4(v75);
    v74 = 2;
    if (BYTE9(v75) != 1)
    {
LABEL_68:
      if (BYTE7(v75) != 1)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

LABEL_75:
    v68 = BYTE8(v75);
    if (BYTE7(v75) != 1)
    {
LABEL_70:
      (*(*v64 + 48))(v64, __p);
      if (v79 != 1)
      {
        return;
      }

      goto LABEL_71;
    }

LABEL_69:
    v71 = BYTE6(v75);
    v72 = 2;
    goto LABEL_70;
  }

LABEL_64:
  *(this + 47) = DWORD2(v76);
  v64 = *(this + 12);
  if (v64)
  {
    goto LABEL_65;
  }

LABEL_56:
  if (v79 != 1)
  {
    return;
  }

LABEL_71:
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }
}