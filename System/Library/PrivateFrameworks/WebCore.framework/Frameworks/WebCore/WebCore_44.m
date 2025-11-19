uint64_t webrtc::anonymous namespace::RenderDelayBufferImpl::PrepareCaptureProcessing(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ++*(this + 131);
  if (*(this + 784) == 1)
  {
    if (*(this + 1036) == 1)
    {
      *(this + 1036) = 0;
      *(this + 260) = 1;
    }

    else
    {
      v9 = *(this + 260);
      *(this + 260) = v9 + 1;
      if (v9 >= *(this + 261))
      {
        *(this + 261) = v9 + 1;
        v10 = *(this + 159);
        if (v11 || (webrtc::LogMessage::streams_empty_ & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
        }
      }
    }
  }

  v12 = (*(this + 105) - *(this + 104)) >> 2;
  v13 = *(this + 215);
  v14 = *(this + 214);
  v15 = (v12 + v13 - v14) % v12;
  v16 = *(this + 162);
  v17 = v15 / v16;
  v18 = *(this + 137);
  if (v18 >= v17)
  {
    v18 = v17;
  }

  *(this + 137) = v18;
  v19 = *(this + 138) + 1;
  *(this + 138) = v19;
  if (v19 < *(this + 3) || (v20 = *(this + 4), *(this + 137) = v17, *(this + 138) = 0, v18 <= v20))
  {
    if (v13 == v14)
    {
      v24 = *(this + 159);
      {
        v25 = *(this + 173);
        if (v25 == *(this + 172))
        {
          goto LABEL_26;
        }
      }

      else
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
        v25 = *(this + 173);
        if (v25 == *(this + 172))
        {
LABEL_26:
          if (*(this + 784) == 1)
          {
            goto LABEL_27;
          }

LABEL_40:
          result = 1;
          goto LABEL_41;
        }
      }

      if (*(this + 164) - 1 > v25)
      {
        v30 = v25 + 1;
      }

      else
      {
        v30 = 0;
      }

      *(this + 173) = v30;
      v31 = *(this + 183);
      if (v31 <= 0)
      {
        *(this + 183) = *(this + 174) - 1;
        v32 = *(this + 193);
        if (v32 > 0)
        {
LABEL_39:
          *(this + 193) = v32 - 1;
          if (*(this + 784) != 1)
          {
            goto LABEL_40;
          }

LABEL_27:
          v26 = *(this + 97);
          result = 1;
          if (v26)
          {
            *(this + 97) = v26 - 1;
            *(this + 784) = 1;
            v27 = *(this + 1064);
            *(this + 816) = v27;
            if (v27 != 1)
            {
              return result;
            }

            goto LABEL_42;
          }

LABEL_41:
          v33 = *(this + 1064);
          *(this + 816) = v33;
          if (v33 != 1)
          {
            return result;
          }

          goto LABEL_42;
        }
      }

      else
      {
        *(this + 183) = v31 - 1;
        v32 = *(this + 193);
        if (v32 > 0)
        {
          goto LABEL_39;
        }
      }

      *(this + 193) = *(this + 184) - 1;
      if (*(this + 784) != 1)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    *(this + 215) = (v13 - v16 + *(this + 206)) % *(this + 206);
    v28 = *(this + 173);
    if (v28 == *(this + 172))
    {
      result = 0;
      v29 = *(this + 1064);
      *(this + 816) = v29;
      if (v29 != 1)
      {
        return result;
      }

      goto LABEL_42;
    }

    if (*(this + 164) - 1 > v28)
    {
      v34 = v28 + 1;
    }

    else
    {
      v34 = 0;
    }

    *(this + 173) = v34;
    v35 = *(this + 183);
    if (v35 <= 0)
    {
      *(this + 183) = *(this + 174) - 1;
      v36 = *(this + 193);
      if (v36 > 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *(this + 183) = v35 - 1;
      v36 = *(this + 193);
      if (v36 > 0)
      {
        goto LABEL_49;
      }
    }

    v36 = *(this + 184);
LABEL_49:
    result = 0;
    *(this + 193) = v36 - 1;
    v37 = *(this + 1064);
    *(this + 816) = v37;
    if (v37 != 1)
    {
      return result;
    }

LABEL_42:
    *(this + 134) = 0;
    *(this + 1064) = 0;
    return result;
  }

  v21 = *(this + 159);
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
  }

  result = 2;
  v23 = *(this + 1064);
  *(this + 816) = v23;
  if (v23 == 1)
  {
    goto LABEL_42;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::RenderDelayBufferImpl::AlignFromDelay(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(this + 1088) & 1) == 0 && *(this + 1084) == 1 && *(this + 784) == 1)
  {
    v9 = *(this + 159);
    if (v10 || (webrtc::LogMessage::streams_empty_ & 1) == 0)
    {
      v11 = a2;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
      a2 = v11;
    }

    *(this + 1088) = 1;
  }

  if (*(this + 784) == 1 && *(this + 97) == a2)
  {
    return 0;
  }

  *(this + 97) = a2;
  *(this + 784) = 1;
  v13 = (*(this + 105) - *(this + 104)) >> 2;
  LODWORD(v13) = ((v13 + *(this + 215) - *(this + 214)) % v13) / *(this + 162) + a2;
  v14 = ~*(this + 258);
  v15 = v13 & ~(v13 >> 31);
  if (((*(this + 84) - *(this + 83)) >> 5) + v14 >= v15)
  {
    LODWORD(v16) = v15;
  }

  else
  {
    v16 = ((*(this + 84) - *(this + 83)) >> 5) + v14;
  }

  v17 = *(this + 159);
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
  }

  *(this + 173) = (*(this + 172) - v16 + *(this + 164)) % *(this + 164);
  *(this + 183) = (*(this + 182) + *(this + 174) + v16) % *(this + 174);
  *(this + 193) = (*(this + 192) + *(this + 184) + v16) % *(this + 184);
  return 1;
}

void webrtc::anonymous namespace::RenderDelayBufferImpl::AlignFromExternalDelay(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 1084) == 1)
  {
    v9 = *(this + 264) + *(this + 270) - (*(this + 262) + (*(this + 8) >> 6));
    v10 = *(this + 159);
    if (v11 || (webrtc::LogMessage::streams_empty_ & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
    }

    *(this + 173) = (*(this + 172) - v9 + *(this + 164)) % *(this + 164);
    *(this + 183) = (*(this + 182) + *(this + 174) + v9) % *(this + 174);
    *(this + 193) = (*(this + 192) + *(this + 184) + v9) % *(this + 184);
  }
}

uint64_t webrtc::anonymous namespace::RenderDelayBufferImpl::Delay(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this)
{
  v1 = *(this + 183);
  v2 = *(this + 182);
  if (v1 < v2)
  {
    v1 += *(this + 174);
  }

  v3 = (*(this + 105) - *(this + 104)) >> 2;
  return v1 - v2 - ((v3 + *(this + 215) - *(this + 214)) % v3) / *(this + 162);
}

void webrtc::anonymous namespace::RenderDelayBufferImpl::SetAudioBufferDelay(webrtc::_anonymous_namespace_::RenderDelayBufferImpl *this, std::string::size_type a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((*(this + 1084) & 1) == 0)
  {
    v10 = *(this + 159);
    if (v11 || (webrtc::LogMessage::streams_empty_ & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/render_delay_buffer.cc");
    }
  }

  *(this + 270) = v8 / 4;
  *(this + 1084) = 1;
}

void webrtc::anonymous namespace::RenderDelayControllerImpl::~RenderDelayControllerImpl(webrtc::_anonymous_namespace_::RenderDelayControllerImpl *this)
{
  webrtc::EchoPathDelayEstimator::~EchoPathDelayEstimator((this + 64));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0xC400A2AC0F1);
  }
}

{
  webrtc::EchoPathDelayEstimator::~EchoPathDelayEstimator((this + 64));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0xC400A2AC0F1);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::RenderDelayControllerImpl::Reset(webrtc::_anonymous_namespace_::RenderDelayControllerImpl *this, int a2)
{
  if (*(this + 56) == 1)
  {
    *(this + 56) = 0;
    if (*(this + 1648) != 1)
    {
LABEL_3:
      webrtc::EchoPathDelayEstimator::Reset((this + 64), a2);
      *(this + 416) = 0;
      if (!a2)
      {
        return;
      }

LABEL_7:
      *(this + 417) = 0;
      return;
    }
  }

  else if (*(this + 1648) != 1)
  {
    goto LABEL_3;
  }

  *(this + 1648) = 0;
  webrtc::EchoPathDelayEstimator::Reset((this + 64), a2);
  *(this + 416) = 0;
  if (a2)
  {
    goto LABEL_7;
  }
}

__n128 webrtc::anonymous namespace::RenderDelayControllerImpl::GetDelay@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  ++*(a1 + 1656);
  webrtc::EchoPathDelayEstimator::EstimateDelay(a1 + 64, a2, a3, v23);
  if (v24 != 1)
  {
    if (*(a1 + 1648) == 1)
    {
      *(a1 + 1632) = vaddq_s64(*(a1 + 1632), vdupq_n_s64(1uLL));
      v8 = *(a1 + 1664);
      if (v8 <= 499)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a1 + 1664);
      if (v8 <= 499)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_7;
  }

  if (*(a1 + 1648) != 1)
  {
    *(a1 + 1664) = 0;
    v22 = v23[1];
    *(a1 + 1616) = v23[0];
    *(a1 + 1632) = v22;
    *(a1 + 1648) = v24;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = *(&v23[0] + 1);
  if (*(&v23[0] + 1) == *(a1 + 1624))
  {
    v7 = *(a1 + 1632) + 1;
  }

  else
  {
    v7 = 0;
    *(a1 + 1664) = 0;
  }

  *(a1 + 1632) = v7;
  *(a1 + 1640) = 0;
  *(a1 + 1624) = v6;
  *(a1 + 1616) = v23[0];
  v8 = *(a1 + 1664);
  if (v8 > 499)
  {
LABEL_7:
    if (*(a1 + 1648) != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(a1 + 1664) = v8 + 1;
  if (*(a1 + 1648) != 1)
  {
LABEL_13:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_8:
  if (*(a1 + 1668) == 1 && *(a1 + 1616) == 1)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = 0;
  }

  v16 = *(a1 + 1616);
  v11 = *(a1 + 1624);
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  if (v11 >> 6 <= v17 + v9)
  {
    v19 = *(a1 + 32);
  }

  else
  {
    v19 = v11 >> 6;
  }

  if ((*(a1 + 56) & (v11 >> 6 > v17)) == 0)
  {
    v19 = v11 >> 6;
  }

  *(a1 + 24) = v16;
  *(a1 + 32) = v19;
  *(a1 + 40) = *(a1 + 1632);
  if ((v18 & 1) == 0)
  {
    *(a1 + 56) = 1;
  }

  *(a1 + 1668) = v16;
  v10 = 1;
LABEL_24:
  v14 = *(a1 + 32);
  v15 = 1;
  v12 = v10;
  v13 = v11;
LABEL_25:
  webrtc::RenderDelayControllerMetrics::Update(a1 + 1584, v13, v12, v14, v15);
  result = *(a1 + 24);
  v21 = *(a1 + 40);
  *a4 = result;
  *(a4 + 16) = v21;
  *(a4 + 32) = *(a1 + 56);
  return result;
}

unint64_t webrtc::RenderDelayControllerMetrics::Update(unint64_t result, unint64_t a2, char a3, uint64_t a4, char a5)
{
  v5 = result;
  v6 = *(result + 16) + 1;
  *(result + 16) = v6;
  if ((*(result + 24) & 1) == 0)
  {
    if (a3)
    {
      ++*(result + 8);
      v8 = (a2 >> 6) + 2;
      if (v8 == *result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
      if (!*result)
      {
        goto LABEL_9;
      }
    }

    ++*(result + 12);
    *result = v8;
    goto LABEL_9;
  }

  v7 = *(result + 20) + 1;
  *(result + 20) = v7;
  if (v7 == 1250)
  {
    *(result + 24) = 0;
  }

LABEL_9:
  if (v6 != 2500)
  {
    return result;
  }

  v9 = *result;
  explicit = atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire);
  if (explicit)
  {
    v11 = v9 >> 1;
    if (v11 >= 124)
    {
      v12 = 124;
    }

    else
    {
      v12 = v11;
    }

    v13 = a4;
    webrtc::metrics::HistogramAdd(explicit, v12);
    a4 = v13;
    if (a5)
    {
LABEL_15:
      v15 = (a4 + 2) >> 1;
      if (v15 > 123)
      {
        LODWORD(v15) = 124;
      }

      result = atomic_load_explicit(&qword_28100BB58, memory_order_acquire);
      if (result)
      {
        goto LABEL_18;
      }

LABEL_21:
      v17 = 0;
      atomic_compare_exchange_strong(&qword_28100BB58, &v17, 0);
      goto LABEL_22;
    }
  }

  else
  {
    v16 = 0;
    atomic_compare_exchange_strong(&_MergedGlobals_19, &v16, 0);
    if (a5)
    {
      goto LABEL_15;
    }
  }

  LODWORD(v15) = 0;
  result = atomic_load_explicit(&qword_28100BB58, memory_order_acquire);
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_18:
  result = webrtc::metrics::HistogramAdd(result, v15);
LABEL_22:
  *(v5 + 16) = 0;
  *(v5 + 8) = 0;
  return result;
}

int *webrtc::RenderSignalAnalyzer::Update(int *result, void *a2, int *a3)
{
  v3 = result + 2;
  if ((a3[2] & 1) == 0)
  {
    *(result + 63) = 0;
    *(result + 118) = 0u;
    *(result + 122) = 0u;
    *(result + 110) = 0u;
    *(result + 114) = 0u;
    *(result + 102) = 0u;
    *(result + 106) = 0u;
    *(result + 94) = 0u;
    *(result + 98) = 0u;
    *(result + 86) = 0u;
    *(result + 90) = 0u;
    *(result + 78) = 0u;
    *(result + 82) = 0u;
    *(result + 70) = 0u;
    *(result + 74) = 0u;
    *(result + 62) = 0u;
    *(result + 66) = 0u;
    *(result + 54) = 0u;
    *(result + 58) = 0u;
    *(result + 46) = 0u;
    *(result + 50) = 0u;
    *(result + 38) = 0u;
    *(result + 42) = 0u;
    *(result + 30) = 0u;
    *(result + 34) = 0u;
    *(result + 22) = 0u;
    *(result + 26) = 0u;
    *(result + 14) = 0u;
    *(result + 18) = 0u;
    *(result + 6) = 0u;
    *(result + 10) = 0u;
    *v3 = 0u;
    goto LABEL_35;
  }

  v4 = *a3;
  v5 = a2[1];
  v107 = 0;
  v106 = 0u;
  memset(v105, 0, sizeof(v105));
  v104 = 0u;
  v6 = (*(v5 + 36) + v4 + *v5) % *v5;
  v8 = v5 + 8;
  v7 = *(v5 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v8 + 8) - v7) >> 3) <= v6)
  {
    goto LABEL_146;
  }

  v9 = (v7 + 24 * v6);
  v11 = *v9;
  v10 = v9[1];
  v13 = v10 - v11;
  _ZF = v10 == v11;
  if (v10 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  if (_ZF)
  {
    goto LABEL_142;
  }

  v15 = 0;
  v16 = 0xFC0FC0FC0FC0FC1 * (v13 >> 2);
  if (v16 <= 1)
  {
    v16 = 1;
  }

  v17 = (v14 + 8);
  __asm { FMOV            V0.4S, #3.0 }

  while (2)
  {
    v22 = (v14 + 260 * v15);
    v23 = v22 + 1;
    v24 = vld1q_dup_f32(v23);
    v25 = v105;
    v26 = v17;
    v27 = 60;
    do
    {
      v28 = v24;
      v24 = *v26;
      v29 = vmovn_s32(vcgtq_f32(vextq_s8(v28, *v26, 0xCuLL), vmulq_f32(vbslq_s8(vcgtq_f32(*v26, *(&v26[-1] + 8)), *v26, *(v26 - 8)), _Q0)));
      if (v29.i8[0])
      {
        ++*(v25 - 2);
        if ((v29.i8[2] & 1) == 0)
        {
LABEL_15:
          if (v29.i8[4])
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }
      }

      else if ((v29.i8[2] & 1) == 0)
      {
        goto LABEL_15;
      }

      ++*(v25 - 1);
      if (v29.i8[4])
      {
LABEL_20:
        ++*v25;
        if ((v29.i8[6] & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

LABEL_16:
      if ((v29.i8[6] & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_21:
      ++v25[1];
LABEL_12:
      ++v26;
      v25 += 4;
      v27 -= 4;
    }

    while (v27);
    v30 = v22[60];
    v31 = v22[62];
    if (v30 < v31)
    {
      v30 = v22[62];
    }

    if (v24.f32[3] > (v30 * 3.0))
    {
      *&v106 = v106 + 1;
    }

    v32 = v22[61];
    v33 = v22[63];
    if (v32 < v33)
    {
      v32 = v22[63];
    }

    if (v31 > (v32 * 3.0))
    {
      ++*(&v106 + 1);
    }

    v34 = v22[62];
    if (v34 < v22[64])
    {
      v34 = v22[64];
    }

    if (v33 > (v34 * 3.0))
    {
      ++v107;
    }

    ++v15;
    v17 = (v17 + 260);
    if (v15 != v16)
    {
      continue;
    }

    break;
  }

LABEL_142:
  for (i = 0; i != 504; i += 8)
  {
    v103 = *(&v105[-1] + i);
    if (v103)
    {
      v103 = *(v3 + i) + 1;
    }

    *(v3 + i) = v103;
  }

LABEL_35:
  if (*(result + 516) == 1)
  {
    v35 = *result;
    v36 = *(result + 65) + 1;
    *(result + 65) = v36;
    if (v36 > v35)
    {
      *(result + 516) = 0;
    }
  }

  v37 = (**a2 + *(*a2 + 36)) % **a2;
  v38 = *(*a2 + 8);
  if (v37 >= (*(*a2 + 16) - v38) >> 5)
  {
LABEL_146:
    __break(1u);
    return result;
  }

  v39 = v38 + 32 * v37;
  v40 = *(v39 + 4);
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0.0;
    for (j = 4; ; j += 260)
    {
      v46 = a2[1];
      v47 = (*v46 + *(v46 + 36)) % *v46;
      v49 = v46 + 8;
      v48 = *(v46 + 8);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v49 + 8) - v48) >> 3) <= v47)
      {
        break;
      }

      v50 = (v48 + 24 * v47);
      if (v50[1] == *v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = *v50;
      }

      v52 = (v51 + 260 * v42);
      v53 = *v52;
      v54 = (v51 + j);
      v55 = 256;
      v56 = v52;
      v57 = (v51 + j);
      do
      {
        v58 = *v57++;
        v59 = v58;
        if (v53 < v58)
        {
          v53 = v59;
          v56 = v54;
        }

        v54 = v57;
        v55 -= 4;
      }

      while (v55);
      v60 = (v56 - v52) >> 2;
      if (v60 <= 14)
      {
        v61 = 14;
      }

      else
      {
        v61 = (v56 - v52) >> 2;
      }

      v62 = 0.0;
      if (v61 - 10 < v60)
      {
        v63 = (v56 + v43 - v51) >> 2;
        if (v63 <= 14)
        {
          v63 = 14;
        }

        else
        {
          v63 = v63;
        }

        v64 = v63 - 14;
        do
        {
          if (*(v51 + v41 + 4 * v64) >= v62)
          {
            v62 = *(v51 + v41 + 4 * v64);
          }

          ++v64;
        }

        while (v64 < (((v56 - v52) << 30) - 0x400000000) >> 32);
      }

      if (v60 >= 50)
      {
        v65 = 50;
      }

      else
      {
        v65 = (v56 - v52) >> 2;
      }

      if (v65 + 10 > v60)
      {
        v66 = (((v56 + v43 - v51) << 30) + 0x500000000) >> 32;
        v67 = v65 + 15;
        v68 = v51 + v41;
        do
        {
          if (*(v68 + 4 * v66) >= v62)
          {
            v62 = *(v68 + 4 * v66);
          }

          ++v66;
        }

        while (v66 < v67);
      }

      v69 = *(v39 + 8);
      v70 = 4 * (v42 << 6);
      v71 = (v70 + v69);
      v72 = (v69 + 256 + v70);
      v73 = (v70 + v69 + 4);
      if (v73 == v72)
      {
        v75 = (v70 + v69);
        v73 = v71;
      }

      else
      {
        v74 = v71[1];
        if (v74 >= *v71)
        {
          v75 = (v70 + v69);
        }

        else
        {
          v75 = (v70 + v69 + 4);
        }

        if (v74 < *v71)
        {
          v73 = v71;
        }

        v76 = v71 + 2;
        if (v71 + 2 != v72)
        {
          if (v74 >= *v71)
          {
            v74 = *v71;
          }

          while (1)
          {
            v78 = v76;
            v79 = v76 + 1;
            if (v79 == v72)
            {
              break;
            }

            v81 = *v78;
            v80 = v78[1];
            if (v80 >= *v78)
            {
              v77 = v71 + 3;
              if (v81 < v74)
              {
                v74 = *v78;
                v75 = v78;
              }

              if (v80 >= *v73)
              {
                v73 = v77;
              }

              v76 = v78 + 2;
              v71 = v78;
              if (v78 + 2 == v72)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v74 = *v75;
              if (v80 < *v75)
              {
                v74 = v78[1];
                v75 = v79;
              }

              if (v81 >= *v73)
              {
                v73 = v78;
              }

              v76 = v78 + 2;
              v71 = v78;
              if (v78 + 2 == v72)
              {
                goto LABEL_97;
              }
            }
          }

          if (*v78 >= *v75)
          {
            if (*v78 >= *v73)
            {
              v73 = v78;
            }
          }

          else
          {
            v75 = v78;
          }
        }
      }

LABEL_97:
      v82 = fabsf(*v75);
      v83 = fabsf(*v73);
      if (v82 < v83)
      {
        v82 = v83;
      }

      if (*v39 > 1)
      {
        v84 = 4 * ((v40 + v42) << 6);
        v85 = (v84 + v69);
        v86 = (v69 + 256 + v84);
        v87 = v85 + 1;
        if (v85 + 1 == v86)
        {
          v89 = v85;
          v87 = v85;
        }

        else
        {
          v88 = v85[1];
          if (v88 >= *v85)
          {
            v89 = v85;
          }

          else
          {
            v89 = v85 + 1;
          }

          if (v88 < *v85)
          {
            v87 = v85;
          }

          v90 = v85 + 2;
          if (v85 + 2 != v86)
          {
            if (v88 >= *v85)
            {
              v88 = *v85;
            }

            while (1)
            {
              v92 = v90;
              v93 = v90 + 1;
              if (v93 == v86)
              {
                break;
              }

              v95 = *v92;
              v94 = v92[1];
              if (v94 >= *v92)
              {
                v91 = v85 + 3;
                if (v95 < v88)
                {
                  v88 = *v92;
                  v89 = v92;
                }

                if (v94 >= *v87)
                {
                  v87 = v91;
                }

                v90 = v92 + 2;
                v85 = v92;
                if (v92 + 2 == v86)
                {
                  goto LABEL_128;
                }
              }

              else
              {
                v88 = *v89;
                if (v94 < *v89)
                {
                  v88 = v92[1];
                  v89 = v93;
                }

                if (v95 >= *v87)
                {
                  v87 = v92;
                }

                v90 = v92 + 2;
                v85 = v92;
                if (v92 + 2 == v86)
                {
                  goto LABEL_128;
                }
              }
            }

            if (*v92 >= *v89)
            {
              if (*v92 >= *v87)
              {
                v87 = v92;
              }
            }

            else
            {
              v89 = v92;
            }
          }
        }

LABEL_128:
        v96 = fabsf(*v89);
        v97 = fabsf(*v87);
        if (v96 < v97)
        {
          v96 = v97;
        }

        if (v82 < v96)
        {
          v82 = v96;
        }
      }

      if (v60 >= 1)
      {
        v98 = v52[v60];
        v99 = v62 * 100.0;
        if (v82 > 100.0 && v98 > v99 && v98 > v44)
        {
          result[128] = v60;
          *(result + 516) = 1;
          *(result + 65) = 0;
          v40 = *(v39 + 4);
          v44 = v98;
        }
      }

      ++v42;
      v43 -= 260;
      v41 += 260;
      if (v42 >= v40)
      {
        return result;
      }
    }

    goto LABEL_146;
  }

  return result;
}

uint64_t webrtc::TaskQueueBase::PostDelayedTaskWithPrecision(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (a2 == 1)
  {
    (*(a3 + 16))(0, a3, v12);
    v13 = *(a3 + 16);
    v11 = v13;
    *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
    *(a3 + 24) = 0;
    v18 = 1;
    v11(0, v12, v16);
    v17 = v13;
    v13 = absl::internal_any_invocable::EmptyManager;
    (*(*v7 + 16))(v7, v16, a4, &v18, a5);
    (v17)(1, v16, v16);
    return (v13)(1, v12, v12);
  }

  else if (!a2)
  {
    (*(a3 + 16))(0, a3, v14);
    v15 = *(a3 + 16);
    v9 = v15;
    *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
    *(a3 + 24) = 0;
    v9(0, v14, v16);
    v17 = v15;
    v15 = absl::internal_any_invocable::EmptyManager;
    v18 = 0;
    (*(*v7 + 16))(v7, v16, a4, &v18, a5);
    (v17)(1, v16, v16);
    return (v15)(1, v14, v14);
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::anonymous namespace::RepeatingTask &&>(uint64_t result)
{
  v1 = *result;
  if (*(*(*result + 72) + 4) == 1)
  {
    result = (*(v1 + 56))(v1 + 32);
    if (result != 0x7FFFFFFFFFFFFFFFLL && *(*(v1 + 72) + 4) == 1)
    {
      v2 = result;
      (*(**(v1 + 16) + 16))(*(v1 + 16));
      v3 = *(v1 + 64);
      v4 = v3 == 0x8000000000000000 || v2 == 0x8000000000000000;
      v5 = v3 + v2;
      if (v4)
      {
        v5 = 0x8000000000000000;
      }

      if (v3 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v3 = v5;
      }

      *(v1 + 64) = v3;
      operator new();
    }
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::anonymous namespace::RepeatingTask>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 72);
      if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      (*(v3 + 48))(1, v3 + 32, v3 + 32);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

BOOL webrtc::rtcp::ReportBlock::Parse(webrtc::rtcp::ReportBlock *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a3 > 0x17)
  {
    *this = bswap32(*a2);
    *(this + 4) = a2[4];
    v4 = a2[5];
    v5 = v4;
    v6 = a2[7] | (v4 << 16) | (a2[6] << 8);
    if (v5 < 0)
    {
      v6 |= 0xFF000000;
    }

    *(this + 2) = v6;
    *(this + 3) = bswap32(*(a2 + 2));
    *(this + 4) = bswap32(*(a2 + 3));
    *(this + 5) = bswap32(*(a2 + 4));
    *(this + 6) = bswap32(*(a2 + 5));
    return a3 > 0x17;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    return a3 > 0x17;
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/report_block.cc");
  return a3 > 0x17;
}

uint64_t webrtc::rtcp::ReportBlock::Create(uint64_t this, unsigned __int8 *a2)
{
  *a2 = bswap32(*this);
  a2[4] = *(this + 4);
  v2 = *(this + 8);
  a2[5] = BYTE2(v2);
  a2[6] = BYTE1(v2);
  a2[7] = v2;
  *(a2 + 2) = bswap32(*(this + 12));
  *(a2 + 3) = bswap32(*(this + 16));
  *(a2 + 4) = bswap32(*(this + 20));
  *(a2 + 5) = bswap32(*(this + 24));
  return this;
}

_DWORD *webrtc::ReportBlockStats::Store(_DWORD *this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
LABEL_16:
    operator new();
  }

  v5 = this + 4;
  v6 = *(this + 2);
  do
  {
    v7 = v6[7];
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *&v6[2 * v9];
  }

  while (v6);
  if (v5 != this + 4 && v5[7] <= a2)
  {
    v10 = a4 - v5[8];
    if ((v10 & 0x80000000) == 0)
    {
      v11 = a3 - v5[9];
      if ((v11 & 0x80000000) == 0)
      {
        v12 = this[1] + v11;
        *this += v10;
        this[1] = v12;
      }
    }
  }

  while (1)
  {
    while (1)
    {
      v13 = v4;
      v14 = *(v4 + 7);
      if (v14 <= a2)
      {
        break;
      }

      v4 = *v13;
      if (!*v13)
      {
        goto LABEL_16;
      }
    }

    if (v14 >= a2)
    {
      break;
    }

    v4 = v13[1];
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  *(v13 + 8) = a4;
  *(v13 + 9) = a3;
  return this;
}

int *WebRtcSpl_Resample22khzTo16khz(uint64_t a1, __int16 *a2, int *a3, int *a4)
{
  WebRtcSpl_UpBy2ShortToInt(a1, 44, (a4 + 16), a3);
  a4[8] = a3[8];
  a4[9] = a3[9];
  a4[10] = a3[10];
  a4[11] = a3[11];
  a4[12] = a3[12];
  a4[13] = a3[13];
  a4[14] = a3[14];
  a4[15] = a3[15];
  a3[8] = a4[96];
  a3[9] = a4[97];
  a3[10] = a4[98];
  a3[11] = a4[99];
  a3[12] = a4[100];
  a3[13] = a4[101];
  a3[14] = a4[102];
  a3[15] = a4[103];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 8);
  WebRtcSpl_DownBy2IntToShort(a4, 64, a2, a3 + 16);
  WebRtcSpl_UpBy2ShortToInt(a1 + 88, 44, (a4 + 16), a3);
  a4[8] = a3[8];
  a4[9] = a3[9];
  a4[10] = a3[10];
  a4[11] = a3[11];
  a4[12] = a3[12];
  a4[13] = a3[13];
  a4[14] = a3[14];
  a4[15] = a3[15];
  a3[8] = a4[96];
  a3[9] = a4[97];
  a3[10] = a4[98];
  a3[11] = a4[99];
  a3[12] = a4[100];
  a3[13] = a4[101];
  a3[14] = a4[102];
  a3[15] = a4[103];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 8);
  WebRtcSpl_DownBy2IntToShort(a4, 64, a2 + 32, a3 + 16);
  WebRtcSpl_UpBy2ShortToInt(a1 + 176, 44, (a4 + 16), a3);
  a4[8] = a3[8];
  a4[9] = a3[9];
  a4[10] = a3[10];
  a4[11] = a3[11];
  a4[12] = a3[12];
  a4[13] = a3[13];
  a4[14] = a3[14];
  a4[15] = a3[15];
  a3[8] = a4[96];
  a3[9] = a4[97];
  a3[10] = a4[98];
  a3[11] = a4[99];
  a3[12] = a4[100];
  a3[13] = a4[101];
  a3[14] = a4[102];
  a3[15] = a4[103];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 8);
  WebRtcSpl_DownBy2IntToShort(a4, 64, a2 + 64, a3 + 16);
  WebRtcSpl_UpBy2ShortToInt(a1 + 264, 44, (a4 + 16), a3);
  a4[8] = a3[8];
  a4[9] = a3[9];
  a4[10] = a3[10];
  a4[11] = a3[11];
  a4[12] = a3[12];
  a4[13] = a3[13];
  a4[14] = a3[14];
  a4[15] = a3[15];
  a3[8] = a4[96];
  a3[9] = a4[97];
  a3[10] = a4[98];
  a3[11] = a4[99];
  a3[12] = a4[100];
  a3[13] = a4[101];
  a3[14] = a4[102];
  a3[15] = a4[103];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 8);
  WebRtcSpl_DownBy2IntToShort(a4, 64, a2 + 96, a3 + 16);
  WebRtcSpl_UpBy2ShortToInt(a1 + 352, 44, (a4 + 16), a3);
  a4[8] = a3[8];
  a4[9] = a3[9];
  a4[10] = a3[10];
  a4[11] = a3[11];
  a4[12] = a3[12];
  a4[13] = a3[13];
  a4[14] = a3[14];
  a4[15] = a3[15];
  a3[8] = a4[96];
  a3[9] = a4[97];
  a3[10] = a4[98];
  a3[11] = a4[99];
  a3[12] = a4[100];
  a3[13] = a4[101];
  a3[14] = a4[102];
  a3[15] = a4[103];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 8);

  return WebRtcSpl_DownBy2IntToShort(a4, 64, a2 + 128, a3 + 16);
}

uint64_t WebRtcSpl_Resample16khzTo22khz(uint64_t result, uint64_t a2, int *a3, __int32 *a4)
{
  v5 = 0;
  v65 = (a2 + 20);
  do
  {
    v63 = v5;
    v64 = result;
    WebRtcSpl_UpBy2ShortToInt(result, 40, (a4 + 8), a3);
    v8.i64[0] = 0x400000004000;
    v8.i64[1] = 0x400000004000;
    v9.i64[0] = 0x2600000026;
    v9.i64[1] = 0x2600000026;
    v10 = 0;
    *a4 = a3[8];
    a4[1] = a3[9];
    a4[2] = a3[10];
    a4[3] = a3[11];
    a4[4] = a3[12];
    a4[5] = a3[13];
    a4[6] = a3[14];
    a4[7] = a3[15];
    a3[8] = a4[80];
    a3[9] = a4[81];
    a3[10] = a4[82];
    a3[11] = a4[83];
    a3[12] = a4[84];
    a3[13] = a4[85];
    a3[14] = a4[86];
    a3[15] = a4[87];
    v11 = *a4;
    v12 = v65;
    do
    {
      v14 = a4[v10 + 19];
      v13 = a4[v10 + 20];
      v15 = a4[v10 + 18];
      v16 = *&a4[v10 + 1];
      v17 = *&a4[v10 + 14];
      v18 = v11;
      v31.i64[1] = *&a4[v10 + 1];
      v6.i64[0] = *&a4[v10 + 5];
      v31.i32[1] = *&a4[v10 + 3];
      v19 = vdupq_laneq_s32(v16, 3);
      v32 = vextq_s8(vextq_s8(v19, v19, 4uLL), v6, 0xCuLL);
      v20 = *&a4[v10 + 7];
      v32.i32[3] = v20.i32[0];
      v21 = -a4[v10 + 22] - 712 * a4[v10 + 21] + (a4[v10 + 22] << 7) + 2359 * v13 - 6333 * v14 + 23456 * v15 + 16775 * v17.i32[3];
      v22 = 230 * v14 - 39 * v13 - 830 * v15 + 2785 * v17.i32[3];
      v11 = v17.i32[2];
      v23 = vaddvq_s32(vmlaq_s32(vmulq_s32(v32, xmmword_273BA1BC0), v31, xmmword_273BA1BB0)) - 154 * v20.i32[1];
      v24 = a4[v10 + 13];
      v25 = 117 * v14 - 663 * v15 + 2222 * v17.i32[3];
      v26 = HIDWORD(*&a4[v10 + 14]);
      v27 = v17;
      v28 = v21 - 3695 * v17.i32[2] + 945 * v26 - 154 * v17.i32[0];
      v29 = v22 + 32366 * v17.i32[2] - 2324 * v26 + 760 * v17.i32[0];
      v30 = v25 - 6133 * v17.i32[2] + 26634 * v26 + 13070 * v17.i32[0];
      v31.i32[0] = vaddvq_s32(vmulq_s32(v17, xmmword_273BA1BD0));
      v32.i64[0] = *&a4[v10 + 9];
      v34 = a4[v10 + 11];
      v33 = a4[v10 + 12];
      v35 = 230 * v31.i32[1];
      v36 = vdup_n_s32(v34);
      v37 = -137 * v34;
      v38 = (v28 + 0x4000) >> 15;
      if (v38 >= 0x7FFF)
      {
        v38 = 0x7FFF;
      }

      v39 = vmul_s32(v36, 0x24CF0000057DLL);
      *v7.i8 = vdup_lane_s32(*v32.i8, 1);
      if (v38 <= -32768)
      {
        v40 = 0x8000;
      }

      else
      {
        v40 = v38;
      }

      v43.i64[0] = __PAIR64__(v37, v7.u32[0]);
      *v12 = v40;
      v43.u64[1] = v39;
      v41 = vaddq_s32(v43, v8);
      v42 = v30 - 3174 * v24 + 831 * v33 + v41.i32[1];
      v27.i32[3] = v20.i32[1];
      v47 = vmulq_s32(v27, xmmword_273BA1BE0);
      *v45.i8 = vzip1_s32(vdup_lane_s32(*v6.i8, 1), v20);
      v45.i32[2] = v32.i32[0];
      v31.i32[1] = 31175 * v24;
      *v31.i8 = vmla_s32(*v31.i8, *v32.i8, 0xFFFFFE6800000047);
      v43.i32[0] = v35;
      v44 = vaddvq_s32(v47) + 663 * v32.i32[0];
      v45.i32[3] = v32.i32[0];
      v46 = v29 - 218 * v24;
      *v47.i8 = vzip1_s32(vdup_lane_s32(v20, 1), *v32.i8);
      v32.i32[2] = v33;
      v32.i32[3] = v33;
      v48 = v41.i32[2] - 4136 * v33;
      *v49.i8 = v20;
      v49.i32[2] = v24;
      v49.i32[3] = v24;
      v50 = v46 + 38 * v33;
      v51 = v41.i32[3] + 29240 * v33;
      v52 = v44 + -2480 * v32.i32[1] - 5406 * v24;
      v53.i32[0] = vdupq_laneq_s32(v16, 2).u32[0];
      v53.i32[1] = (v23 + 0x4000) >> 15;
      v54 = (v50 + 0x4000) >> 15;
      if (v54 >= 0x7FFF)
      {
        v54 = 0x7FFF;
      }

      if (v54 <= -32768)
      {
        LOWORD(v54) = 0x8000;
      }

      *(v12 - 1) = v54;
      v55 = v42 >> 15;
      if (v42 >> 15 >= 0x7FFF)
      {
        v55 = 0x7FFF;
      }

      if (v55 <= -32768)
      {
        LOWORD(v55) = 0x8000;
      }

      *(v12 - 2) = v55;
      *v56.i8 = vzip1_s32(*v19.i8, *v6.i8);
      v19.i64[1] = __PAIR64__(v20.u32[0], v6.u32[1]);
      v56.u64[1] = v20;
      v47.i32[2] = v7.i32[0];
      v57.i64[0] = vextq_s8(v16, v6, 4uLL).u64[0];
      v57.i64[1] = v6.i64[0];
      v47.i32[3] = v7.i32[0];
      v6.i32[3] = vdup_lane_s32(*&v17, 0).i32[1];
      v6.i32[2] = v20.i32[1];
      v58 = vmulq_s32(v7, v9).u32[0];
      v7 = vaddq_s32(v43, v8);
      v59 = vmulq_s32(v19, xmmword_273BA1C00);
      v59.i32[0] = v7.i32[0];
      v41.i32[0] = v58;
      v60 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v59, v57, xmmword_273BA1BF0), v56, xmmword_273BA1C10), v6, xmmword_273BA1C60), v45, xmmword_273BA1C20), v49, xmmword_273BA1C50), v47, xmmword_273BA1C30), v32, xmmword_273BA1C40), v41), 0xFuLL);
      v61.i64[0] = vdupq_laneq_s64(v60, 1).u64[0];
      v61.i32[2] = (v52 + v51) >> 15;
      v61.i32[3] = (vadd_s32(*v31.i8, vdup_lane_s32(*v31.i8, 1)).u32[0] + v48) >> 15;
      v53.i64[1] = v60.i64[0];
      v6 = vqmovn_high_s32(vqmovn_s32(v53), v61);
      *(v12 - 10) = v6;
      v10 += 16;
      v12 += 11;
    }

    while ((v10 * 4) != 320);
    result = v64 + 80;
    v5 = v63 + 1;
    v65 += 55;
  }

  while (v63 != 3);
  return result;
}

int *WebRtcSpl_Resample22khzTo8khz(unint64_t a1, __int16 *a2, int *a3, int *a4)
{
  WebRtcSpl_LPBy2ShortToInt(a1, 110, a4 + 16, a3);
  a4[8] = a3[16];
  a4[9] = a3[17];
  a4[10] = a3[18];
  a4[11] = a3[19];
  a4[12] = a3[20];
  a4[13] = a3[21];
  a4[14] = a3[22];
  a4[15] = a3[23];
  a3[16] = a4[118];
  a3[17] = a4[119];
  a3[18] = a4[120];
  a3[19] = a4[121];
  a3[20] = a4[122];
  a3[21] = a4[123];
  a3[22] = a4[124];
  a3[23] = a4[125];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 10);
  WebRtcSpl_DownBy2IntToShort(a4, 80, a2, a3 + 24);
  WebRtcSpl_LPBy2ShortToInt(a1 + 220, 110, a4 + 16, a3);
  a4[8] = a3[16];
  a4[9] = a3[17];
  a4[10] = a3[18];
  a4[11] = a3[19];
  a4[12] = a3[20];
  a4[13] = a3[21];
  a4[14] = a3[22];
  a4[15] = a3[23];
  a3[16] = a4[118];
  a3[17] = a4[119];
  a3[18] = a4[120];
  a3[19] = a4[121];
  a3[20] = a4[122];
  a3[21] = a4[123];
  a3[22] = a4[124];
  a3[23] = a4[125];
  WebRtcSpl_Resample44khzTo32khz((a4 + 8), a4, 10);

  return WebRtcSpl_DownBy2IntToShort(a4, 80, a2 + 40, a3 + 24);
}

int *WebRtcSpl_Resample8khzTo22khz(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  WebRtcSpl_UpBy2ShortToInt(a1, 40, (a4 + 18), a3);
  a4[10] = a3[8];
  a4[11] = a3[9];
  a4[12] = a3[10];
  a4[13] = a3[11];
  a4[14] = a3[12];
  a4[15] = a3[13];
  a4[16] = a3[14];
  a4[17] = a3[15];
  a3[8] = a4[90];
  a3[9] = a4[91];
  a3[10] = a4[92];
  a3[11] = a4[93];
  a3[12] = a4[94];
  a3[13] = a4[95];
  a3[14] = a4[96];
  a3[15] = a4[97];
  WebRtcSpl_32khzTo22khzIntToInt((a4 + 10), a4, 5);
  WebRtcSpl_UpBy2IntToShort(a4, 55, a2, a3 + 16);
  WebRtcSpl_UpBy2ShortToInt(a1 + 80, 40, (a4 + 18), a3);
  a4[10] = a3[8];
  a4[11] = a3[9];
  a4[12] = a3[10];
  a4[13] = a3[11];
  a4[14] = a3[12];
  a4[15] = a3[13];
  a4[16] = a3[14];
  a4[17] = a3[15];
  a3[8] = a4[90];
  a3[9] = a4[91];
  a3[10] = a4[92];
  a3[11] = a4[93];
  a3[12] = a4[94];
  a3[13] = a4[95];
  a3[14] = a4[96];
  a3[15] = a4[97];
  WebRtcSpl_32khzTo22khzIntToInt((a4 + 10), a4, 5);

  return WebRtcSpl_UpBy2IntToShort(a4, 55, a2 + 220, a3 + 16);
}

uint64_t WebRtcSpl_32khzTo22khzIntToInt(uint64_t result, int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (result + 44);
    result = 98;
    do
    {
      *a2 = (*(v3 - 8) << 15) | 0x4000;
      v4 = -712 * v3[10] - v3[11] + (v3[11] << 7) + 2359 * v3[9] - 6333 * v3[8] + 23456 * v3[7] + 16775 * v3[6] - 3695 * v3[5] + 945 * v3[4];
      a2[1] = -*(v3 - 11) - 712 * *(v3 - 10) + (*(v3 - 11) << 7) + 2359 * *(v3 - 9) - 6333 * *(v3 - 8) + 23456 * *(v3 - 7) + 16775 * *(v3 - 6) - 3695 * *(v3 - 5) + 945 * *(v3 - 4) - 154 * *(v3 - 3) + 0x4000;
      a2[10] = v4 - 154 * v3[3] + 0x4000;
      v5 = 230 * v3[8] - 39 * v3[9] - 830 * v3[7] + 2785 * v3[6] + 32366 * v3[5] - 2324 * v3[4] + 760 * v3[3] - 218 * v3[2];
      a2[2] = 230 * *(v3 - 8) - 39 * *(v3 - 9) - 830 * *(v3 - 7) + 2785 * *(v3 - 6) + 32366 * *(v3 - 5) - 2324 * *(v3 - 4) + 760 * *(v3 - 3) - 218 * *(v3 - 2) + 38 * *(v3 - 1) + 0x4000;
      a2[9] = v5 + 38 * v3[1] + 0x4000;
      v6 = -663 * v3[7] + 117 * v3[8] + 2222 * v3[6] - 6133 * v3[5] + 26634 * v3[4] + 13070 * v3[3] - 3174 * v3[2];
      v7 = v3[1];
      a2[3] = -663 * *(v3 - 7) + 117 * *(v3 - 8) + 2222 * *(v3 - 6) - 6133 * *(v3 - 5) + 26634 * *(v3 - 4) + 13070 * *(v3 - 3) - 3174 * *(v3 - 2) + 831 * *(v3 - 1) - 137 * *v3 + 0x4000;
      a2[8] = v6 + 831 * v7 - 137 * *v3 + 0x4000;
      v8 = v3[1];
      v9 = 1405 * *v3 + 0x4000;
      v10 = *(v3 - 1);
      v11 = v9 - 77 * v3[6] + 457 * v3[5];
      v12 = v9 - 77 * *(v3 - 6) + 457 * *(v3 - 5) - 1677 * *(v3 - 4) + 5958 * *(v3 - 3) + 31175 * *(v3 - 2);
      v13 = v3[3];
      v14 = v3[4];
      v15 = v3[2];
      a2[4] = v12 + 71 * v15 - 4136 * v10 - 408 * v8;
      a2[7] = v11 - 1677 * v14 + 5958 * v13 + 31175 * v15 - 408 * v10 - 4136 * v8 + 71 * *(v3 - 2);
      v16 = v3[4];
      v17 = v3[1];
      v18 = 9423 * *v3 + 0x4000;
      v19 = *(v3 - 2);
      v20 = v18 + 98 * *(v3 - 5) - 560 * *(v3 - 4) + 1900 * *(v3 - 3);
      v22 = v3[2];
      v21 = v3[3];
      v23 = v18 + 98 * v3[5];
      v24 = *(v3 - 1);
      a2[5] = v20 - 110 * v21 - 5406 * v19 + 663 * v22 + 29240 * v24 - 2480 * v17;
      a2[6] = v23 - 560 * v16 + 1900 * v21 + 663 * v19 - 5406 * v22 - 2480 * v24 + 29240 * v17 - 110 * *(v3 - 3);
      a2 += 11;
      v3 += 16;
      --a3;
    }

    while (a3);
  }

  return result;
}

int *WebRtcSpl_Resample48khzTo16khz(unint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  WebRtcSpl_LPBy2ShortToInt(a1, 480, (a4 + 64), a3);
  v7 = 0;
  v8 = *(a3 + 80);
  *(a4 + 32) = *(a3 + 64);
  *(a4 + 48) = v8;
  v9 = 32;
  v10 = *(a4 + 1968);
  *(a3 + 64) = *(a4 + 1952);
  *(a3 + 80) = v10;
  do
  {
    v11 = (a4 + v7);
    *v11 = -2050 * *(a4 + v9 + 4) + 778 * *(a4 + v9) + 1087 * *(a4 + v9 + 8) + 23285 * *(a4 + v9 + 12) + 12903 * *(a4 + v9 + 16) - 3783 * *(a4 + v9 + 20) + 441 * *(a4 + v9 + 24) + 222 * *(a4 + v9 + 28) + 0x4000;
    v11[1] = 441 * *(a4 + v9 + 8) + 222 * *(a4 + v9 + 4) - 3783 * *(a4 + v9 + 12) + 12903 * *(a4 + v9 + 16) + 23285 * *(a4 + v9 + 20) + 1087 * *(a4 + v9 + 24) - 2050 * *(a4 + v9 + 28) + 778 * *(a4 + v9 + 32) + 0x4000;
    v9 += 12;
    v7 += 8;
  }

  while (v9 != 1952);

  return WebRtcSpl_DownBy2IntToShort(a4, 320, a2, (a3 + 96));
}

int *WebRtcSpl_Resample48khzTo8khz(unint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  WebRtcSpl_DownBy2ShortToInt(a1, 480, (a4 + 1024), a3);
  WebRtcSpl_LPBy2IntToInt(a4 + 1024, 240, (a4 + 64), (a3 + 32));
  v7 = 0;
  v8 = *(a3 + 112);
  *(a4 + 32) = *(a3 + 96);
  *(a4 + 48) = v8;
  v9 = 32;
  v10 = *(a4 + 1008);
  *(a3 + 96) = *(a4 + 992);
  *(a3 + 112) = v10;
  do
  {
    v11 = (a4 + v7);
    *v11 = -2050 * *(a4 + v9 + 4) + 778 * *(a4 + v9) + 1087 * *(a4 + v9 + 8) + 23285 * *(a4 + v9 + 12) + 12903 * *(a4 + v9 + 16) - 3783 * *(a4 + v9 + 20) + 441 * *(a4 + v9 + 24) + 222 * *(a4 + v9 + 28) + 0x4000;
    v11[1] = 441 * *(a4 + v9 + 8) + 222 * *(a4 + v9 + 4) - 3783 * *(a4 + v9 + 12) + 12903 * *(a4 + v9 + 16) + 23285 * *(a4 + v9 + 20) + 1087 * *(a4 + v9 + 24) - 2050 * *(a4 + v9 + 28) + 778 * *(a4 + v9 + 32) + 0x4000;
    v9 += 12;
    v7 += 8;
  }

  while (v9 != 992);

  return WebRtcSpl_DownBy2IntToShort(a4, 160, a2, (a3 + 128));
}

__int16 *WebRtcSpl_DownsampleBy2(__int16 *result, unint64_t a2, _WORD *a3, int *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = a4[2];
  v7 = a4[3];
  v9 = a4[4];
  v8 = a4[5];
  v11 = a4[6];
  v10 = a4[7];
  if (a2 >= 2)
  {
    v18 = a2 >> 1;
    do
    {
      v12 = *result << 10;
      v13 = v5 + 12199 * ((v12 - v4) >> 16) + ((12199 * ((*result << 10) - v4)) >> 16);
      v14 = v4 + 37471 * ((v13 - v6) >> 16) + ((37471 * (v5 + 12199 * ((v12 - v4) >> 16) + ((12199 * ((*result << 10) - v4)) >> 16) - v6)) >> 16);
      v15 = result[1] << 10;
      v19 = 3284 * ((result[1] << 10) - v8);
      v16 = v9 + 3284 * ((v15 - v8) >> 16) + HIWORD(v19);
      v17 = v8 + 24441 * ((v16 - v11) >> 16) + ((24441 * (v9 + 3284 * ((v15 - v8) >> 16) + HIWORD(v19) - v11)) >> 16);
      v7 = v6 + 60255 * ((v14 - v7) >> 16) + ((60255 * (v14 - v7)) >> 16);
      v10 = v11 + 49528 * ((v17 - v10) >> 16) + ((49528 * (v17 - v10)) >> 16);
      v20 = (v7 + v10 + 1024) >> 11;
      if (v20 <= -32768)
      {
        v20 = -32768;
      }

      if (v20 >= 0x7FFF)
      {
        LOWORD(v20) = 0x7FFF;
      }

      *a3++ = v20;
      result += 2;
      v11 = v17;
      v8 = v9 + 3284 * ((v15 - v8) >> 16) + HIWORD(v19);
      v9 = v15;
      v6 = v14;
      v4 = v13;
      v5 = v12;
      --v18;
    }

    while (v18);
  }

  else
  {
    v12 = *a4;
    v13 = a4[1];
    v14 = a4[2];
    v15 = a4[4];
    v16 = a4[5];
    v17 = a4[6];
  }

  *a4 = v12;
  a4[1] = v13;
  a4[2] = v14;
  a4[3] = v7;
  a4[4] = v15;
  a4[5] = v16;
  a4[6] = v17;
  a4[7] = v10;
  return result;
}

__int16 *WebRtcSpl_UpsampleBy2(__int16 *result, uint64_t a2, __int16 *a3, int *a4)
{
  v5 = *a4;
  v4 = a4[1];
  v7 = a4[2];
  v6 = a4[3];
  v9 = a4[4];
  v8 = a4[5];
  v11 = a4[6];
  v10 = a4[7];
  if (a2)
  {
    do
    {
      v12 = *result++;
      v13 = v12 << 10;
      v14 = v5 + 3284 * (((v12 << 10) - v4) >> 16) + ((3284 * ((v12 << 10) - v4)) >> 16);
      v15 = v4 + 24441 * ((v14 - v7) >> 16) + ((24441 * (v14 - v7)) >> 16);
      v6 = v7 + 49528 * ((v15 - v6) >> 16) + ((49528 * (v15 - v6)) >> 16);
      v16 = (v6 + 512) >> 10;
      v17 = v9 + 12199 * (((v12 << 10) - v8) >> 16) + ((12199 * ((v12 << 10) - v8)) >> 16);
      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      v18 = v8 + 37471 * ((v17 - v11) >> 16) + ((37471 * (v17 - v11)) >> 16);
      v19 = v18 - v10;
      v20 = v11 + 60255 * (v19 >> 16);
      v21 = 60255 * v19;
      if (v16 >= 0x7FFF)
      {
        v22 = 0x7FFF;
      }

      else
      {
        v22 = v16;
      }

      v10 = v20 + HIWORD(v21);
      v23 = (v10 + 512) >> 10;
      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      *a3 = v22;
      if (v23 >= 0x7FFF)
      {
        LOWORD(v23) = 0x7FFF;
      }

      a3[1] = v23;
      v11 = v18;
      v8 = v17;
      a3 += 2;
      v9 = v13;
      v7 = v15;
      v4 = v14;
      v5 = v13;
      --a2;
    }

    while (a2);
  }

  else
  {
    v13 = *a4;
    v14 = a4[1];
    v15 = a4[2];
    v17 = a4[5];
    v18 = a4[6];
  }

  *a4 = v13;
  a4[1] = v14;
  a4[2] = v15;
  a4[3] = v6;
  a4[4] = v9;
  a4[5] = v17;
  a4[6] = v18;
  a4[7] = v10;
  return result;
}

int *WebRtcSpl_DownBy2IntToShort(int *result, int a2, __int16 *a3, int *a4)
{
  v4 = (a2 >> 1);
  if (v4 >= 1)
  {
    v5 = result;
    v6 = (a2 >> 1);
    do
    {
      v7 = a4[1];
      v8 = *a4 + 3050 * ((*v5 - v7 + 0x2000) >> 14);
      v10 = a4[2];
      v9 = a4[3];
      v11 = v7 + 9368 * (((v8 - v10) >> 31) + ((v8 - v10) >> 14));
      *a4 = *v5;
      a4[1] = v8;
      v12 = v10 + 15063 * (((v11 - v9) >> 31) + ((v11 - v9) >> 14));
      a4[2] = v11;
      a4[3] = v12;
      *v5 = v12 >> 1;
      v5 += 2;
      --v6;
    }

    while (v6);
    v13 = result + 1;
    v14 = v4;
    do
    {
      v15 = a4[5];
      v16 = a4[4] + 821 * ((*v13 - v15 + 0x2000) >> 14);
      v18 = a4[6];
      v17 = a4[7];
      v19 = v15 + 6110 * (((v16 - v18) >> 31) + ((v16 - v18) >> 14));
      a4[4] = *v13;
      a4[5] = v16;
      v20 = v18 + 12382 * (((v19 - v17) >> 31) + ((v19 - v17) >> 14));
      a4[6] = v19;
      a4[7] = v20;
      *v13 = v20 >> 1;
      v13 += 2;
      --v14;
    }

    while (v14);
    if (v4 >= 0xF)
    {
      v22 = ((v4 - 1) >> 1) + 1;
      v21 = 2 * (v22 & 0xFFFFFFFFFFFFFFF8);
      v23 = v22 & 0xFFFFFFFFFFFFFFF8;
      v24 = a3;
      v25 = result;
      do
      {
        v26 = v25;
        v25 += 32;
        v36 = vld4q_f32(v26);
        v26 += 16;
        v27 = vshrq_n_s32(vaddq_s32(v36.val[1], v36.val[0]), 0xFuLL);
        v37 = vld4q_f32(v26);
        v36.val[0] = vshrq_n_s32(vaddq_s32(v36.val[3], v36.val[2]), 0xFuLL);
        v36.val[3] = vqmovn_high_s32(vqmovn_s32(v27), vshrq_n_s32(vaddq_s32(v37.val[1], v37.val[0]), 0xFuLL));
        v28 = vqmovn_high_s32(vqmovn_s32(v36.val[0]), vshrq_n_s32(vaddq_s32(v37.val[3], v37.val[2]), 0xFuLL));
        vst2q_s16(v24, *v36.val[3].f32);
        v24 += 16;
        v23 -= 8;
      }

      while (v23);
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v21 = 0;
    }

    v29 = &result[2 * v21 + 2];
    v30 = &a3[v21 + 1];
    do
    {
      v31 = (*(v29 - 1) + *(v29 - 2)) >> 15;
      v32 = *v29;
      v33 = v29[1];
      v29 += 4;
      v34 = (v33 + v32) >> 15;
      if (v31 >= 0x7FFF)
      {
        v31 = 0x7FFF;
      }

      if (v31 <= -32768)
      {
        LOWORD(v31) = 0x8000;
      }

      *(v30 - 1) = v31;
      if (v34 >= 0x7FFF)
      {
        v35 = 0x7FFF;
      }

      else
      {
        v35 = v34;
      }

      if (v35 <= -32768)
      {
        LOWORD(v35) = 0x8000;
      }

      *v30 = v35;
      v30 += 2;
      v21 += 2;
    }

    while (v21 < v4);
  }

  return result;
}

unint64_t WebRtcSpl_DownBy2ShortToInt(unint64_t result, int a2, int *a3, int *a4)
{
  v4 = (a2 >> 1);
  if (v4 >= 1)
  {
    v5 = result;
    v6 = a3;
    v7 = (a2 >> 1);
    do
    {
      v8 = *v5;
      v5 += 2;
      v9 = (v8 << 15) | 0x4000;
      v10 = a4[1];
      v11 = *a4 + 3050 * ((v9 - v10 + 0x2000) >> 14);
      v12 = a4[2];
      v13 = v10 + 9368 * (((v11 - v12) >> 31) + ((v11 - v12) >> 14));
      v14 = v12 + 15063 * (((v13 - a4[3]) >> 31) + ((v13 - a4[3]) >> 14));
      *a4 = v9;
      a4[1] = v11;
      a4[2] = v13;
      a4[3] = v14;
      *v6++ = v14 >> 1;
      --v7;
    }

    while (v7);
    v15 = (result + 2);
    do
    {
      v16 = *v15;
      v15 += 2;
      v17 = (v16 << 15) | 0x4000;
      v18 = a4[5];
      v19 = a4[4] + 821 * ((v17 - v18 + 0x2000) >> 14);
      v20 = a4[6];
      result = a4[7];
      v21 = v18 + 6110 * (((v19 - v20) >> 31) + ((v19 - v20) >> 14));
      a4[4] = v17;
      a4[5] = v19;
      v22 = v20 + 12382 * (((v21 - result) >> 31) + ((v21 - result) >> 14));
      a4[6] = v21;
      a4[7] = v22;
      *a3++ += v22 >> 1;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t WebRtcSpl_UpBy2ShortToInt(uint64_t result, int a2, uint64_t a3, int *a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = a2;
    do
    {
      v7 = (*(result + v4) << 15) | 0x4000;
      v8 = a4[5];
      v9 = a4[4] + 821 * ((v7 - v8 + 0x2000) >> 14);
      v10 = a4[6];
      v11 = a4[7];
      v12 = v8 + 6110 * (((v9 - v10) >> 31) + ((v9 - v10) >> 14));
      a4[4] = v7;
      a4[5] = v9;
      v13 = v10 + 12382 * (((v12 - v11) >> 31) + ((v12 - v11) >> 14));
      a4[6] = v12;
      a4[7] = v13;
      *(a3 + 4 * v4) = v13 >> 15;
      v4 += 2;
    }

    while (v5 != v4);
    v14 = 0;
    v15 = a3 + 4;
    v16 = 2 * v6;
    do
    {
      v17 = (*(result + v14) << 15) | 0x4000;
      v18 = a4[1];
      v19 = *a4 + 3050 * ((v17 - v18 + 0x2000) >> 14);
      v20 = a4[2];
      v21 = a4[3];
      v22 = v18 + 9368 * (((v19 - v20) >> 31) + ((v19 - v20) >> 14));
      *a4 = v17;
      a4[1] = v19;
      v23 = v20 + 15063 * (((v22 - v21) >> 31) + ((v22 - v21) >> 14));
      a4[2] = v22;
      a4[3] = v23;
      *(v15 + 4 * v14) = v23 >> 15;
      v14 += 2;
    }

    while (v16 != v14);
  }

  return result;
}

int *WebRtcSpl_UpBy2IntToShort(int *result, int a2, uint64_t a3, int *a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    v6 = a4[4];
    v5 = a4[5];
    v7 = 2 * a2;
    v8 = a4[6];
    v9 = a4[7];
    v10 = result;
    v11 = a2;
    do
    {
      v13 = *v10++;
      v12 = v13;
      v14 = v6 + 821 * ((v13 - v5 + 0x2000) >> 14);
      v15 = v5 + 6110 * (((v14 - v8) >> 31) + ((v14 - v8) >> 14));
      a4[4] = v13;
      a4[5] = v14;
      v9 = v8 + 12382 * (((v15 - v9) >> 31) + ((v15 - v9) >> 14));
      v16 = v9 >> 15;
      if (v9 >> 15 >= 0x7FFF)
      {
        v16 = 0x7FFF;
      }

      if (v16 <= -32768)
      {
        LOWORD(v16) = 0x8000;
      }

      *(a3 + 2 * v4) = v16;
      a4[6] = v15;
      a4[7] = v9;
      v4 += 2;
      v8 = v15;
      v6 = v12;
      v5 = v14;
    }

    while (v7 != v4);
    v17 = 0;
    v18 = a3 + 2;
    v19 = *a4;
    v20 = a4[1];
    v21 = 2 * v11;
    v22 = a4[2];
    v23 = a4[3];
    do
    {
      v25 = *result++;
      v24 = v25;
      v26 = v19 + 3050 * ((v25 - v20 + 0x2000) >> 14);
      v27 = v20 + 9368 * (((v26 - v22) >> 31) + ((v26 - v22) >> 14));
      *a4 = v25;
      a4[1] = v26;
      v23 = v22 + 15063 * (((v27 - v23) >> 31) + ((v27 - v23) >> 14));
      v28 = v23 >> 15;
      if (v23 >> 15 >= 0x7FFF)
      {
        v28 = 0x7FFF;
      }

      if (v28 <= -32768)
      {
        LOWORD(v28) = 0x8000;
      }

      *(v18 + 2 * v17) = v28;
      a4[2] = v27;
      a4[3] = v23;
      v17 += 2;
      v22 = v27;
      v19 = v24;
      v20 = v26;
    }

    while (v21 != v17);
  }

  return result;
}

unint64_t WebRtcSpl_LPBy2ShortToInt(unint64_t result, int a2, int *a3, int *a4)
{
  v4 = (a2 >> 1);
  if (v4 >= 1)
  {
    v5 = (result + 2);
    v6 = a4[12];
    v7 = a3;
    v8 = (result + 2);
    v9 = (a2 >> 1);
    do
    {
      v10 = a4[1];
      v11 = *a4 + 3050 * ((v6 - v10 + 0x2000) >> 14);
      v12 = a4[2];
      v13 = a4[3];
      v14 = v10 + 9368 * (((v11 - v12) >> 31) + ((v11 - v12) >> 14));
      *a4 = v6;
      a4[1] = v11;
      v15 = v12 + 15063 * (((v14 - v13) >> 31) + ((v14 - v13) >> 14));
      a4[2] = v14;
      a4[3] = v15;
      *v7 = v15 >> 1;
      v7 += 2;
      v16 = *v8;
      v8 += 2;
      v6 = (v16 << 15) | 0x4000;
      --v9;
    }

    while (v9);
    v17 = result;
    v18 = a3;
    v19 = v4;
    do
    {
      v20 = *v17;
      v17 += 2;
      v21 = (v20 << 15) | 0x4000;
      v22 = a4[5];
      v23 = a4[4] + 821 * ((v21 - v22 + 0x2000) >> 14);
      v24 = a4[6];
      v25 = a4[7];
      v26 = v22 + 6110 * (((v23 - v24) >> 31) + ((v23 - v24) >> 14));
      a4[4] = v21;
      a4[5] = v23;
      v27 = v24 + 12382 * (((v26 - v25) >> 31) + ((v26 - v25) >> 14));
      a4[6] = v26;
      a4[7] = v27;
      *v18 = (*v18 + (v27 >> 1)) >> 15;
      v18 += 2;
      --v19;
    }

    while (v19);
    v28 = a3 + 1;
    v29 = a3 + 1;
    v30 = v4;
    do
    {
      v31 = *result;
      result += 4;
      v32 = (v31 << 15) | 0x4000;
      v33 = a4[9];
      v34 = a4[8] + 3050 * ((v32 - v33 + 0x2000) >> 14);
      v35 = a4[10];
      v36 = v33 + 9368 * (((v34 - v35) >> 31) + ((v34 - v35) >> 14));
      v37 = v35 + 15063 * (((v36 - a4[11]) >> 31) + ((v36 - a4[11]) >> 14));
      a4[8] = v32;
      a4[9] = v34;
      a4[10] = v36;
      a4[11] = v37;
      *v29 = v37 >> 1;
      v29 += 2;
      --v30;
    }

    while (v30);
    do
    {
      v38 = *v5;
      v5 += 2;
      v39 = (v38 << 15) | 0x4000;
      v40 = a4[13];
      v41 = a4[12] + 821 * ((v39 - v40 + 0x2000) >> 14);
      result = a4[14];
      v42 = a4[15];
      v43 = v40 + 6110 * (((v41 - result) >> 31) + ((v41 - result) >> 14));
      a4[12] = v39;
      a4[13] = v41;
      v44 = result + 12382 * (((v43 - v42) >> 31) + ((v43 - v42) >> 14));
      a4[14] = v43;
      a4[15] = v44;
      *v28 = (*v28 + (v44 >> 1)) >> 15;
      v28 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t WebRtcSpl_LPBy2IntToInt(unint64_t result, int a2, int *a3, _DWORD *a4)
{
  v4 = (a2 >> 1);
  if (v4 >= 1)
  {
    v5 = (result + 4);
    v6 = a4 + 12;
    v7 = a3;
    v8 = (result + 4);
    v9 = (a2 >> 1);
    do
    {
      v10 = *v6;
      v11 = a4[1];
      v12 = *a4 + 3050 * ((v10 - v11 + 0x2000) >> 14);
      v13 = a4[2];
      v14 = a4[3];
      v15 = v11 + 9368 * (((v12 - v13) >> 31) + ((v12 - v13) >> 14));
      *a4 = v10;
      a4[1] = v12;
      v16 = v13 + 15063 * (((v15 - v14) >> 31) + ((v15 - v14) >> 14));
      a4[2] = v15;
      a4[3] = v16;
      *v7 = v16 >> 1;
      v7 += 2;
      v6 = v8;
      v8 += 2;
      --v9;
    }

    while (v9);
    v17 = result;
    v18 = a3;
    v19 = v4;
    do
    {
      v20 = *v17;
      v17 += 2;
      v21 = a4[5];
      v22 = a4[4] + 821 * ((v20 - v21 + 0x2000) >> 14);
      v23 = a4[6];
      v24 = a4[7];
      v25 = v21 + 6110 * (((v22 - v23) >> 31) + ((v22 - v23) >> 14));
      a4[4] = v20;
      a4[5] = v22;
      v26 = v23 + 12382 * (((v25 - v24) >> 31) + ((v25 - v24) >> 14));
      a4[6] = v25;
      a4[7] = v26;
      *v18 = (*v18 + (v26 >> 1)) >> 15;
      v18 += 2;
      --v19;
    }

    while (v19);
    v27 = a3 + 1;
    v28 = a3 + 1;
    v29 = v4;
    do
    {
      v30 = *result;
      result += 8;
      v31 = a4[9];
      v32 = a4[8] + 3050 * ((v30 - v31 + 0x2000) >> 14);
      v33 = a4[10];
      v34 = a4[11];
      v35 = v31 + 9368 * (((v32 - v33) >> 31) + ((v32 - v33) >> 14));
      a4[8] = v30;
      a4[9] = v32;
      v36 = v33 + 15063 * (((v35 - v34) >> 31) + ((v35 - v34) >> 14));
      a4[10] = v35;
      a4[11] = v36;
      *v28 = v36 >> 1;
      v28 += 2;
      --v29;
    }

    while (v29);
    do
    {
      v37 = *v5;
      v5 += 2;
      v38 = a4[13];
      v39 = a4[12] + 821 * ((v37 - v38 + 0x2000) >> 14);
      v40 = a4[14];
      result = a4[15];
      v41 = v38 + 6110 * (((v39 - v40) >> 31) + ((v39 - v40) >> 14));
      a4[12] = v37;
      a4[13] = v39;
      v42 = v40 + 12382 * (((v41 - result) >> 31) + ((v41 - result) >> 14));
      a4[14] = v41;
      a4[15] = v42;
      *v27 = (*v27 + (v42 >> 1)) >> 15;
      v27 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t WebRtcSpl_Resample32khzTo24khz(unint64_t result, float *a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4 || result + 16 * a3 + 24 > a2 && &a2[3 * a3] > result)
    {
      v3 = 0;
      v4 = result;
      v5 = a2;
LABEL_6:
      v6 = a3 - v3;
      result = 90;
      v7 = v4;
      do
      {
        v8 = v7[4];
        v7 += 4;
        *v5 = -2362 * v4[1] + 767 * *v4 + 2434 * v4[2] + 24406 * v4[3] + 10620 * v8 - 3838 * v4[5] + 721 * v4[6] + 90 * v4[7] + 0x4000;
        *(v5 + 1) = -2646 * (v4[6] + v4[3]) + 19062 * (v4[5] + *v7) - 381 * (v4[7] + v4[2]) + 386 * (v4[8] + v4[1]) + 0x4000;
        *(v5 + 2) = 721 * v4[3] + 90 * v4[2] - 3838 * *v7 + 10620 * v4[5] + 24406 * v4[6] + 2434 * v4[7] - 2362 * v4[8] + 767 * v4[9] + 0x4000;
        v5 += 3;
        v4 = v7;
        --v6;
      }

      while (v6);
      return result;
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = (result + 16 * (a3 & 0xFFFFFFFFFFFFFFFCLL));
    v5 = &a2[3 * (a3 & 0xFFFFFFFFFFFFFFFCLL)];
    v9 = (result + 16);
    v10 = vdupq_n_s32(0x982u);
    v11 = vdupq_n_s32(0x5F56u);
    v12 = vdupq_n_s32(0x297Cu);
    v13 = vdupq_n_s32(0xFFFFF102);
    v14 = vdupq_n_s32(0x2D1u);
    v30 = vdupq_n_s32(0x4A76u);
    v31 = vdupq_n_s32(0xFFFFF6C6);
    v28 = vdupq_n_s32(0xFFFFFE83);
    v29 = vdupq_n_s32(0xFFFFF5AA);
    v27 = vdupq_n_s32(0x182u);
    v15 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = (result + 16);
    do
    {
      v17 = v9 - 4;
      v35 = vld4q_f32(v17);
      v18 = v9 - 2;
      v36 = vld4q_f32(v16);
      v16 += 16;
      v32 = vld4q_f32(v18);
      v19 = v9 - 3;
      v20 = v9 + 1;
      v21 = v9 + 2;
      v33 = vld4q_f32(v19);
      v37 = vld4q_f32(v20);
      v34 = vld4q_f32(v21);
      v22 = vaddq_s32(v37.val[0], v33.val[3]);
      v23 = vaddq_s32(v37.val[1], v33.val[2]);
      v37.val[1].i64[0] = 0x200000002;
      v37.val[1].i64[1] = 0x200000002;
      v37.val[0] = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v35.val[1], v31), v35.val[0], v37.val[1]), v35.val[2], v10), v35.val[3], v11), v36.val[0], v12), v36.val[1], v13), v36.val[2], v14);
      v35.val[2].i64[0] = 0x5A0000005ALL;
      v35.val[2].i64[1] = 0x5A0000005ALL;
      v24 = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v29), v22, v30), vaddq_s32(v37.val[2], v33.val[1]), v28);
      v25.i64[0] = 0x400000004000;
      v25.i64[1] = 0x400000004000;
      v26 = vaddq_s32(vmlaq_s32(v37.val[0], v36.val[3], v35.val[2]), v25);
      v35.val[0] = vaddq_s32(vmlaq_s32(v24, vaddq_s32(v37.val[3], v33.val[0]), v27), v25);
      v35.val[1] = vaddq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v32.val[1], v14), v32.val[0], v35.val[2]), v32.val[2], v13), v32.val[3], v12), v34.val[0], v11), v34.val[1], v10), v34.val[2], v31), v34.val[3], v37.val[1]), v25);
      vst3q_f32(a2, *v35.val[0].f32);
      a2 += 12;
      v9 = v16;
      v15 -= 4;
    }

    while (v15);
    if (v3 != a3)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t WebRtcSpl_Resample44khzTo32khz(uint64_t result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 36);
    result = 3933;
    do
    {
      *a2 = (*(v3 - 6) << 15) | 0x4000;
      a2[4] = 974 * *(v3 - 3) - 156 * *(v3 - 4) - 3863 * *(v3 - 2) + 18603 * *(v3 - 1) + 21691 * *v3 - 6246 * v3[1] + 2353 * v3[2] - 712 * v3[3] + 126 * v3[4] + 0x4000;
      v4 = -669 * v3[7] + 117 * v3[8] + 2245 * v3[6] - 6183 * v3[5] + 26267 * v3[4] + 13529 * v3[3] - 3245 * v3[2] + 845 * v3[1];
      a2[1] = -669 * *(v3 - 8) + 117 * *(v3 - 9) + 2245 * *(v3 - 7) - 6183 * *(v3 - 6) + 26267 * *(v3 - 5) + 13529 * *(v3 - 4) - 3245 * *(v3 - 3) + 845 * *(v3 - 2) - 138 * *(v3 - 1) + 0x4000;
      a2[7] = v4 - 138 * *v3 + 0x4000;
      v6 = *v3;
      v5 = v3[1];
      v7 = 612 * v3[5] - 101 * v3[6] - 2283 * v3[4] + 8532 * v3[3] + 29790 * v3[2] - 5138 * v5;
      v8 = 612 * *(v3 - 6) - 101 * *(v3 - 7) - 2283 * *(v3 - 5) + 8532 * *(v3 - 4) + 29790 * *(v3 - 3) - 5138 * *(v3 - 2) + 91 * v5;
      v9 = *(v3 - 1);
      a2[2] = v8 + 1789 * v9 - 524 * *v3 + 0x4000;
      a2[6] = v7 - 524 * v9 + 1789 * v6 + 91 * *(v3 - 2) + 0x4000;
      v10 = v3[2];
      v11 = *(v3 - 2);
      v12 = *(v3 - 1);
      v13 = -292 * v3[4] + 50 * v3[5] + 1016 * v3[3] - 3064 * v10 + 315 * v11;
      v14 = -292 * *(v3 - 5) + 50 * *(v3 - 6) + 1016 * *(v3 - 4) - 3064 * *(v3 - 3) - 53 * v10 + 32010 * v11;
      v16 = *v3;
      v15 = v3[1];
      a2[3] = v14 + 315 * v15 + 3933 * v12 - 1147 * *v3 + 0x4000;
      a2[5] = v13 + 32010 * v15 - 1147 * v12 + 3933 * v16 - 53 * *(v3 - 3) + 0x4000;
      a2 += 8;
      v3 += 11;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t webrtc::Resampler::Reset(webrtc::Resampler *this, int a2, int a3, uint64_t a4)
{
  if ((a4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/resampler/resampler.cc");
    }

    return 0xFFFFFFFFLL;
  }

  v14 = a2 % a3;
  v15 = a3;
  if (a2 % a3)
  {
    v16 = a3;
    do
    {
      v15 = v14;
      v14 = v16 % v14;
      v16 = v15;
    }

    while (v14);
  }

  v17 = a2 / v15;
  v18 = a3 / v15;
  if (a2 / v15 != a3 / v15)
  {
    if (v17 == 1)
    {
      v30 = v18 - 2;
      if (v30 < 0xB && ((0x417u >> v30) & 1) != 0)
      {
        v31 = &unk_273BA1C80;
LABEL_35:
        v19 = v31[v30];
        goto LABEL_9;
      }
    }

    else if (v18 == 1)
    {
      v30 = v17 - 2;
      if (v17 - 2) < 0xB && ((0x417u >> v30))
      {
        v31 = &unk_273BA1CAC;
        goto LABEL_35;
      }
    }

    else
    {
      if (v17 == 2 && v18 == 3)
      {
        v19 = 6;
        goto LABEL_9;
      }

      if (v17 == 2 && v18 == 11)
      {
        v19 = 7;
        goto LABEL_9;
      }

      if (v17 == 4 && v18 == 11)
      {
        v19 = 8;
        goto LABEL_9;
      }

      if (v17 == 8 && v18 == 11)
      {
        v19 = 9;
        goto LABEL_9;
      }

      if (v17 == 3 && v18 == 2)
      {
        v19 = 17;
        goto LABEL_9;
      }

      if (v17 == 11 && v18 == 2)
      {
        v19 = 18;
        goto LABEL_9;
      }

      if (v17 == 11 && v18 == 4)
      {
        v19 = 19;
        goto LABEL_9;
      }

      if (v17 == 11 && v18 == 16)
      {
        v19 = 10;
        goto LABEL_9;
      }

      if (v17 == 11 && v18 == 32)
      {
        v19 = 11;
        goto LABEL_9;
      }

      if (v17 == 11 && v18 == 8)
      {
        v19 = 20;
        goto LABEL_9;
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/resampler/resampler.cc");
    }

    return 0xFFFFFFFFLL;
  }

  v19 = 0;
LABEL_9:
  *(this + 11) = a4;
  *(this + 20) = v19;
  v20 = *this;
  if (*this)
  {
    free(v20);
    *this = 0;
  }

  v21 = *(this + 1);
  if (v21)
  {
    free(v21);
    *(this + 1) = 0;
  }

  v22 = *(this + 2);
  if (v22)
  {
    free(v22);
    *(this + 2) = 0;
  }

  v23 = *(this + 3);
  if (v23)
  {
    free(v23);
    *(this + 3) = 0;
  }

  v24 = *(this + 4);
  if (v24)
  {
    free(v24);
    *(this + 4) = 0;
  }

  v25 = *(this + 12);
  if (v25)
  {
    webrtc::Resampler::~Resampler(v25);
    MEMORY[0x2743DA540]();
    *(this + 12) = 0;
  }

  v26 = *(this + 13);
  if (v26)
  {
    webrtc::Resampler::~Resampler(v26);
    MEMORY[0x2743DA540]();
    *(this + 13) = 0;
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 18) = a2 / 1000;
  *(this + 19) = a3 / 1000;
  if (*(this + 11) == 2)
  {
    operator new();
  }

  switch(*(this + 20))
  {
    case 1:
    case 0xC:
      v33 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      result = 0;
      *this = v33;
      goto LABEL_58;
    case 2:
    case 8:
    case 0x14:
      v28 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      result = 0;
      *this = v28;
      goto LABEL_52;
    case 3:
    case 0xE:
      v34 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *this = v34;
      *v34 = 0u;
      v34[1] = 0u;
      goto LABEL_57;
    case 4:
    case 7:
    case 0xA:
      v27 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *this = v27;
      *v27 = 0u;
      v27[1] = 0u;
      v28 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      result = 0;
      *(this + 1) = v28;
      goto LABEL_52;
    case 5:
      v40 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *this = v40;
      *v40 = 0u;
      v40[1] = 0u;
      v41 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *(this + 1) = v41;
      *v41 = 0u;
      v41[1] = 0u;
      v28 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      result = 0;
      *(this + 2) = v28;
LABEL_52:
      *v28 = 0u;
      v28[1] = 0u;
      v28[2] = 0u;
      v28[3] = 0u;
      v28[4] = 0u;
      v28[5] = 0u;
      return result;
    case 6:
      v44 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      *this = v44;
      *v44 = 0u;
      v44[1] = 0u;
      v44[2] = 0u;
      v44[3] = 0u;
      v44[4] = 0u;
      v44[5] = 0u;
      goto LABEL_57;
    case 9:
      v37 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
      result = 0;
      *this = v37;
      *v37 = 0u;
      v37[1] = 0u;
      v37[2] = 0u;
      v37[3] = 0u;
      return result;
    case 0xB:
      v42 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *this = v42;
      *v42 = 0u;
      v42[1] = 0u;
      v43 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
      *(this + 1) = v43;
      *v43 = 0u;
      v43[1] = 0u;
      v43[2] = 0u;
      v43[3] = 0u;
      v43[4] = 0u;
      v43[5] = 0u;
      goto LABEL_55;
    case 0xD:
    case 0x13:
      v32 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
      result = 0;
      *this = v32;
      goto LABEL_48;
    case 0xF:
    case 0x12:
      v35 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
      *this = v35;
      *v35 = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      v35[3] = 0u;
      v35[4] = 0u;
      v35[5] = 0u;
      v35[6] = 0u;
      v35[7] = 0u;
LABEL_57:
      v33 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      result = 0;
      *(this + 1) = v33;
      goto LABEL_58;
    case 0x10:
      v38 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
      *this = v38;
      *v38 = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      v38[3] = 0u;
      v38[4] = 0u;
      v38[5] = 0u;
      v38[6] = 0u;
      v38[7] = 0u;
      v39 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *(this + 1) = v39;
      *v39 = 0u;
      v39[1] = 0u;
LABEL_55:
      v33 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      result = 0;
      *(this + 2) = v33;
LABEL_58:
      *v33 = 0u;
      v33[1] = 0u;
      break;
    case 0x11:
      v36 = malloc_type_malloc(0x20uLL, 0x100004052888210uLL);
      *this = v36;
      *v36 = 0u;
      v36[1] = 0u;
      v32 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
      result = 0;
      *(this + 1) = v32;
LABEL_48:
      *v32 = 0u;
      v32[1] = 0u;
      v32[2] = 0u;
      v32[3] = 0u;
      v32[4] = 0u;
      v32[5] = 0u;
      v32[6] = 0u;
      v32[7] = 0u;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void webrtc::Resampler::~Resampler(webrtc::Resampler *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    webrtc::Resampler::~Resampler(v7);
    MEMORY[0x2743DA540]();
  }

  v8 = *(this + 13);
  if (v8)
  {
    webrtc::Resampler::~Resampler(v8);
    MEMORY[0x2743DA540]();
  }
}

uint64_t webrtc::Resampler::ResetIfNeeded(webrtc::Resampler *this, int a2, int a3, uint64_t a4)
{
  if (a2 / 1000 == *(this + 18) && a3 / 1000 == *(this + 19) && *(this + 11) == a4)
  {
    return 0;
  }

  else
  {
    return webrtc::Resampler::Reset(this, a2, a3, a4);
  }
}

uint64_t webrtc::Resampler::Push(webrtc::Resampler *this, __int16 *a2, unint64_t a3, __int16 *a4, unint64_t a5, unint64_t *a6)
{
  v8 = a4;
  v10 = a2;
  if (*(this + 11) == 2)
  {
    v12 = malloc_type_malloc(a3 & 0x7FFFFFFFFFFFFFFFLL, 0x1000040BDFB0063uLL);
    v13 = malloc_type_malloc(a3 & 0x7FFFFFFFFFFFFFFFLL, 0x1000040BDFB0063uLL);
    v14 = a5 >> 1;
    v15 = malloc_type_malloc(a5 & 0xFFFFFFFFFFFFFFFELL, 0x1000040BDFB0063uLL);
    v16 = malloc_type_malloc(a5 & 0xFFFFFFFFFFFFFFFELL, 0x1000040BDFB0063uLL);
    if (!a3)
    {
      goto LABEL_6;
    }

    v17 = a3 - 1;
    if (a3 - 1 < 6)
    {
      v18 = 0;
      goto LABEL_5;
    }

    v18 = 0;
    v33 = (v17 & 0xFFFFFFFFFFFFFFFELL) + 2;
    v34 = (v12 + v33);
    v35 = (v13 + v33);
    v36 = &v10[2 * (v17 >> 1) + 2];
    v38 = v12 < v36 && v34 > v10;
    v40 = v13 < v36 && v35 > v10;
    v41 = v13 >= v34 || v12 >= v35;
    if (!v41 || v38 || v40)
    {
      goto LABEL_5;
    }

    v42 = (v17 >> 1) + 1;
    if (v17 >= 0x1E)
    {
      v43 = v42 & 0xFFFFFFFFFFFFFFF0;
      v44 = v10 + 16;
      v45 = (v12 + 8);
      v46 = (v13 + 8);
      v47 = v42 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v48 = v44 - 16;
        v158 = vld2q_s16(v48);
        v160 = vld2q_s16(v44);
        v45[-1] = v158.val[0];
        *v45 = v160.val[0];
        v46[-1] = v158.val[1];
        *v46 = v160.val[1];
        v44 += 32;
        v45 += 2;
        v46 += 2;
        v47 -= 16;
      }

      while (v47);
      if (v42 == v43)
      {
        goto LABEL_6;
      }

      if ((v42 & 0xC) == 0)
      {
        v18 = 2 * v43;
        do
        {
LABEL_5:
          v19 = &v10[v18];
          v12[v18 / 2] = *v19;
          v13[v18 / 2] = v19[1];
          v18 += 2;
        }

        while (v18 < a3);
        goto LABEL_6;
      }
    }

    else
    {
      v43 = 0;
    }

    v18 = 2 * (v42 & 0xFFFFFFFFFFFFFFFCLL);
    v49 = &v10[2 * v43];
    v50 = &v12[v43];
    v51 = &v13[v43];
    v52 = v43 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v156 = vld2_s16(v49);
      v49 += 8;
      *v50 = v156;
      v50 = (v50 + 8);
      v51 += 4;
      v52 += 4;
    }

    while (v52);
    if (v42 != (v42 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_5;
    }

LABEL_6:
    v20 = a3 >> 1;
    v154 = 0;
    v155 = 0;
    v21 = webrtc::Resampler::Push(*(this + 12), v12, a3 >> 1, v15, v14, &v155);
    if (webrtc::Resampler::Push(*(this + 13), v13, v20, v16, v14, &v154) | v21 || (v22 = v155, v155 != v154))
    {
      v32 = 0xFFFFFFFFLL;
      goto LABEL_17;
    }

    v23 = v155;
    if (!v155)
    {
LABEL_13:
      v32 = 0;
      *a6 = v23 * 2;
LABEL_17:
      free(v12);
      free(v13);
      free(v15);
      free(v16);
      return v32;
    }

    if (v155 >= 4)
    {
      v24 = 0;
      v53 = 2 * (v155 - 1);
      if (&v8[v53] >= v8 && &v8[v53 + 1] >= v8 + 1 && !((v155 - 1) >> 62))
      {
        v24 = 0;
        v54 = &v8[2 * v155];
        v55 = &v16[v23] <= v8 || v16 >= v54;
        v56 = !v55;
        v57 = v15 < v54 && &v15[v23] > v8;
        if (!v57 && !v56)
        {
          if (v155 >= 0x10)
          {
            v24 = v155 & 0x7FFFFFFFFFFFFFF0;
            v134 = v8 + 16;
            v135 = (v15 + 8);
            v136 = (v16 + 8);
            v137 = v155 & 0x7FFFFFFFFFFFFFF0;
            do
            {
              v159.val[0] = v135[-1];
              v161.val[0] = *v135;
              v159.val[1] = v136[-1];
              v161.val[1] = *v136;
              v138 = v134 - 16;
              vst2q_s16(v138, v159);
              vst2q_s16(v134, v161);
              v134 += 32;
              v135 += 2;
              v136 += 2;
              v137 -= 16;
            }

            while (v137);
            if (v22 == v24)
            {
              goto LABEL_13;
            }

            if ((v22 & 0xC) == 0)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v24 = 0;
          }

          v139 = v24;
          v24 = v22 & 0x7FFFFFFFFFFFFFFCLL;
          v140 = &v15[v139];
          v141 = &v8[2 * v139];
          v142 = &v16[v139];
          v143 = v139 - (v22 & 0x7FFFFFFFFFFFFFFCLL);
          do
          {
            v144 = *v140++;
            v157.val[0] = v144;
            v145 = *v142++;
            v157.val[1] = v145;
            vst2_s16(v141, v157);
            v141 += 8;
            v143 += 4;
          }

          while (v143);
          if (v22 == v24)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_11:
    v25 = v22 - v24;
    v26 = v24;
    v27 = &v16[v24];
    v28 = &v8[2 * v24 + 1];
    v29 = &v15[v26];
    do
    {
      v30 = *v29++;
      *(v28 - 1) = v30;
      v31 = *v27++;
      *v28 = v31;
      v28 += 2;
      --v25;
    }

    while (v25);
    goto LABEL_13;
  }

  switch(*(this + 20))
  {
    case 0:
      memcpy(a4, a2, 2 * a3);
      v32 = 0;
      *a6 = a3;
      return v32;
    case 1:
      v79 = 2 * a3;
      if (2 * a3 > a5)
      {
        goto LABEL_176;
      }

      WebRtcSpl_UpsampleBy2(a2, a3, a4, *this);
      goto LABEL_121;
    case 2:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 5) > 0x199999999999999uLL)
      {
        goto LABEL_176;
      }

      v84 = 3 * a3;
      if (3 * a3 > a5)
      {
        goto LABEL_176;
      }

      v85 = malloc_type_malloc(0x540uLL, 0x100004052888210uLL);
      v81 = v85;
      if (a3)
      {
        v86 = 0;
        v87 = v85 + 82;
        do
        {
          v88 = *this;
          WebRtcSpl_UpBy2ShortToInt(v10, 160, (v81 + 16), *this);
          v89 = *(v88 + 3);
          *(v81 + 2) = *(v88 + 2);
          *(v81 + 3) = v89;
          v90 = *(v81 + 83);
          *(v88 + 2) = *v87;
          *(v88 + 3) = v90;
          WebRtcSpl_Resample32khzTo24khz((v81 + 8), v81, 0x50uLL);
          WebRtcSpl_UpBy2IntToShort(v81, 240, v8, v88 + 16);
          v86 += 160;
          v8 += 480;
          v10 += 160;
        }

        while (v86 < a3);
      }

      goto LABEL_185;
    case 3:
      v65 = 4 * a3;
      if (4 * a3 > a5)
      {
        goto LABEL_176;
      }

      v66 = malloc_type_malloc(4 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v66, *this);
      WebRtcSpl_UpsampleBy2(v66, 2 * a3, v8, *(this + 1));
      goto LABEL_112;
    case 4:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 4) > 0x333333333333333uLL || 6 * a3 > a5)
      {
        goto LABEL_176;
      }

      v67 = malloc_type_malloc(0x540uLL, 0x100004052888210uLL);
      v68 = malloc_type_malloc(4 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v68, *this);
      v72 = 2 * a3;
      *a6 = 2 * a3;
      if (!(2 * a3))
      {
        goto LABEL_139;
      }

      v73 = 0;
      v74 = v68;
      do
      {
        v75 = *(this + 1);
        WebRtcSpl_UpBy2ShortToInt(v74, 160, (v67 + 16), v75);
        v76 = *(v75 + 48);
        *(v67 + 2) = *(v75 + 32);
        *(v67 + 3) = v76;
        v77 = *(v67 + 83);
        *(v75 + 32) = *(v67 + 82);
        *(v75 + 48) = v77;
        WebRtcSpl_Resample32khzTo24khz((v67 + 8), v67, 0x50uLL);
        WebRtcSpl_UpBy2IntToShort(v67, 240, v8, (v75 + 64));
        v73 += 160;
        v78 = *a6;
        v8 += 480;
        v74 += 320;
      }

      while (v73 < *a6);
      goto LABEL_138;
    case 5:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 3) > 0x666666666666666uLL || 12 * a3 > a5)
      {
        goto LABEL_176;
      }

      v67 = malloc_type_malloc(0x540uLL, 0x100004052888210uLL);
      v68 = malloc_type_malloc(8 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v8, *this);
      *a6 = 2 * a3;
      WebRtcSpl_UpsampleBy2(v8, 2 * a3, v68, *(this + 1));
      v72 = 2 * *a6;
      *a6 = v72;
      if (!v72)
      {
        goto LABEL_139;
      }

      v105 = 0;
      v106 = v68;
      do
      {
        v107 = *(this + 2);
        WebRtcSpl_UpBy2ShortToInt(v106, 160, (v67 + 16), v107);
        v108 = *(v107 + 48);
        *(v67 + 2) = *(v107 + 32);
        *(v67 + 3) = v108;
        v109 = *(v67 + 83);
        *(v107 + 32) = *(v67 + 82);
        *(v107 + 48) = v109;
        WebRtcSpl_Resample32khzTo24khz((v67 + 8), v67, 0x50uLL);
        WebRtcSpl_UpBy2IntToShort(v67, 240, v8, (v107 + 64));
        v105 += 160;
        v78 = *a6;
        v8 += 480;
        v106 += 320;
      }

      while (v105 < *a6);
LABEL_138:
      v72 = 3 * v78;
LABEL_139:
      *a6 = v72;
      goto LABEL_140;
    case 6:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 5) > 0x199999999999999uLL || (3 * a3) >> 1 > a5)
      {
        goto LABEL_176;
      }

      v146 = (3 * a3) >> 1;
      v148 = malloc_type_malloc(6 * a3, 0x1000040BDFB0063uLL);
      v112 = malloc_type_malloc(0x540uLL, 0x100004052888210uLL);
      v113 = v112;
      if (a3)
      {
        v114 = 0;
        v115 = v112 + 1312;
        v116 = v148;
        do
        {
          v117 = *this;
          WebRtcSpl_UpBy2ShortToInt(v10, 160, (v113 + 64), *this);
          v118 = *(v117 + 3);
          *(v113 + 2) = *(v117 + 2);
          *(v113 + 3) = v118;
          v119 = *(v113 + 83);
          *(v117 + 2) = *v115;
          *(v117 + 3) = v119;
          WebRtcSpl_Resample32khzTo24khz((v113 + 32), v113, 0x50uLL);
          WebRtcSpl_UpBy2IntToShort(v113, 240, v116, v117 + 16);
          v114 += 160;
          v116 += 960;
          v10 += 160;
        }

        while (v114 < a3);
      }

      WebRtcSpl_DownsampleBy2(v148, 3 * a3, v8, *(this + 1));
      *a6 = v146;
      free(v148);
      v94 = v113;
      goto LABEL_187;
    case 7:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 4) > 0x333333333333333uLL || a5 < (11 * a3) >> 1)
      {
        goto LABEL_176;
      }

      v81 = malloc_type_malloc(4 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v81, *this);
      v95 = malloc_type_malloc(0x188uLL, 0x100004052888210uLL);
      if (2 * a3)
      {
        v96 = 0;
        v97 = 0;
        v98 = v81;
        do
        {
          WebRtcSpl_Resample8khzTo22khz(v98, v8 + (v96 >> 1), *(this + 1), v95);
          v97 += 80;
          v96 += 880;
          v98 += 160;
        }

        while (v97 < 2 * a3);
      }

      *a6 = (22 * a3) >> 2;
      free(v95);
      goto LABEL_186;
    case 8:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 4) > 0x333333333333333uLL)
      {
        goto LABEL_176;
      }

      v80 = (11 * a3) >> 2;
      if (v80 > a5)
      {
        goto LABEL_176;
      }

      v81 = malloc_type_malloc(0x188uLL, 0x100004052888210uLL);
      if (a3)
      {
        v126 = 0;
        v127 = 0;
        do
        {
          WebRtcSpl_Resample8khzTo22khz(v10, v8 + (v126 >> 1), *this, v81);
          v127 += 80;
          v126 += 880;
          v10 += 80;
        }

        while (v127 < a3);
      }

      goto LABEL_173;
    case 9:
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * a3, 5) > 0x199999999999999uLL)
      {
        goto LABEL_176;
      }

      v80 = (11 * a3) >> 3;
      if (v80 > a5)
      {
        goto LABEL_176;
      }

      v81 = malloc_type_malloc(0x160uLL, 0x100004052888210uLL);
      if (a3)
      {
        v82 = 0;
        v83 = 0;
        do
        {
          WebRtcSpl_Resample16khzTo22khz(v10, v8 + (v82 >> 2), *this, v81);
          v83 += 160;
          v82 += 1760;
          v10 += 160;
        }

        while (v83 < a3);
      }

      goto LABEL_173;
    case 0xA:
      if (__ROR8__(0x6FB586FB586FB587 * a3, 1) > 0x253C8253C8253C8uLL)
      {
        goto LABEL_176;
      }

      v122 = 16 * a3 / 0xB;
      if (v122 > a5)
      {
        goto LABEL_176;
      }

      v67 = malloc_type_malloc(0x1A0uLL, 0x100004052888210uLL);
      v123 = 2 * a3;
      v68 = malloc_type_malloc(4 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v68, *this);
      if (2 * a3)
      {
        v124 = 0;
        v125 = v68;
        do
        {
          WebRtcSpl_Resample22khzTo16khz(v125, &v8[160 * (v124 / 0xDC)], *(this + 1), v67);
          v124 += 220;
          v125 += 440;
        }

        while (v124 < v123);
      }

      *a6 = v122;
      goto LABEL_140;
    case 0xB:
      if (__ROR8__(0x6FB586FB586FB587 * a3, 1) > 0x253C8253C8253C8uLL || 32 * a3 / 0xB > a5)
      {
        goto LABEL_176;
      }

      v147 = 32 * a3 / 0xB;
      v67 = malloc_type_malloc(0x1A0uLL, 0x100004052888210uLL);
      v68 = malloc_type_malloc(4 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v8, *this);
      if (2 * a3)
      {
        v69 = 0;
        v70 = v8;
        do
        {
          WebRtcSpl_Resample22khzTo16khz(v70, &v68[160 * (v69 / 0xDC)], *(this + 1), v67);
          v69 += 220;
          v70 += 440;
        }

        while (v69 < 2 * a3);
      }

      WebRtcSpl_UpsampleBy2(v68, 16 * a3 / 0xB, v8, *(this + 2));
      *a6 = v147;
      goto LABEL_140;
    case 0xC:
      v79 = a3 >> 1;
      if (a3 >> 1 > a5)
      {
        goto LABEL_176;
      }

      WebRtcSpl_DownsampleBy2(a2, a3, a4, *this);
LABEL_121:
      v32 = 0;
      *a6 = v79;
      return v32;
    case 0xD:
      if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * a3, 5) > 0x88888888888888uLL)
      {
        goto LABEL_176;
      }

      v80 = a3 / 3;
      if (a3 / 3 > a5)
      {
        goto LABEL_176;
      }

      v81 = malloc_type_malloc(0x7C0uLL, 0x100004052888210uLL);
      if (a3)
      {
        v110 = 0;
        do
        {
          WebRtcSpl_Resample48khzTo16khz(v10, (v8 + (((v110 * 0xAAAAAAAAAAAAAAABLL) >> 64) & 0xFFFFFFFFFFFFFFFELL)), *this, v81);
          v110 += 480;
          v10 += 480;
        }

        while (v110 < a3);
      }

LABEL_173:
      *a6 = v80;
      goto LABEL_186;
    case 0xE:
      v65 = a3 >> 2;
      if (a3 >> 2 > a5)
      {
        goto LABEL_176;
      }

      v66 = malloc_type_malloc(a3 & 0x7FFFFFFFFFFFFFFFLL, 0x1000040BDFB0063uLL);
      WebRtcSpl_DownsampleBy2(v10, a3, v66, *this);
      WebRtcSpl_DownsampleBy2(v66, a3 >> 1, v8, *(this + 1));
LABEL_112:
      *a6 = v65;
      v94 = v66;
      goto LABEL_187;
    case 0xF:
      if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * a3, 5) > 0x88888888888888uLL || a3 / 6 > a5)
      {
        goto LABEL_176;
      }

      v92 = malloc_type_malloc(0x7C0uLL, 0x100004052888210uLL);
      v61 = malloc_type_malloc(2 * a3 / 3, 0x1000040BDFB0063uLL);
      if (a3)
      {
        v93 = 0;
        do
        {
          WebRtcSpl_Resample48khzTo16khz(v10, (v61 + (((v93 * 0xAAAAAAAAAAAAAAABLL) >> 64) & 0xFFFFFFFFFFFFFFFELL)), *this, v92);
          v93 += 480;
          v10 += 480;
        }

        while (v93 < a3);
      }

      *a6 = a3 / 3;
      free(v92);
      v63 = *a6;
      v64 = *(this + 1);
      goto LABEL_109;
    case 0x10:
      if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * a3, 5) > 0x88888888888888uLL || a3 / 0xC > a5)
      {
        goto LABEL_176;
      }

      v59 = malloc_type_malloc(0x7C0uLL, 0x100004052888210uLL);
      v60 = malloc_type_malloc(2 * a3 / 3, 0x1000040BDFB0063uLL);
      v61 = malloc_type_malloc(2 * a3 / 6, 0x1000040BDFB0063uLL);
      if (a3)
      {
        v62 = 0;
        do
        {
          WebRtcSpl_Resample48khzTo16khz(v10, (v60 + (((v62 * 0xAAAAAAAAAAAAAAABLL) >> 64) & 0xFFFFFFFFFFFFFFFELL)), *this, v59);
          v62 += 480;
          v10 += 480;
        }

        while (v62 < a3);
      }

      *a6 = a3 / 3;
      free(v59);
      WebRtcSpl_DownsampleBy2(v60, *a6, v61, *(this + 1));
      *a6 >>= 1;
      free(v60);
      v63 = *a6;
      v64 = *(this + 2);
LABEL_109:
      WebRtcSpl_DownsampleBy2(v61, v63, v8, v64);
      free(v61);
      v32 = 0;
      *a6 >>= 1;
      return v32;
    case 0x11:
      v99 = 2 * a3;
      v100 = 2 * a3 / 3;
      if (v100 > a5)
      {
        goto LABEL_176;
      }

      v101 = malloc_type_malloc(4 * a3, 0x1000040BDFB0063uLL);
      WebRtcSpl_UpsampleBy2(v10, a3, v101, *this);
      if (__ROR8__(0xDDDDDDDDDDDDDDDELL * a3, 5) >= 0x88888888888889uLL)
      {
        free(v101);
        return 0xFFFFFFFFLL;
      }

      v128 = malloc_type_malloc(0x7C0uLL, 0x100004052888210uLL);
      if (v99)
      {
        v129 = 0;
        v130 = v101;
        do
        {
          WebRtcSpl_Resample48khzTo16khz(v130, (v8 + (((v129 * 0xAAAAAAAAAAAAAAABLL) >> 64) & 0xFFFFFFFFFFFFFFFELL)), *(this + 1), v128);
          v129 += 480;
          v130 += 960;
        }

        while (v129 < v99);
      }

      *a6 = v100;
      free(v101);
      v94 = v128;
      goto LABEL_187;
    case 0x12:
      if (__ROR8__(0x6FB586FB586FB587 * a3, 2) > 0x129E4129E4129E4uLL || a5 < 2 * a3 / 0xB)
      {
        goto LABEL_176;
      }

      v67 = malloc_type_malloc(0x1F8uLL, 0x100004052888210uLL);
      v68 = malloc_type_malloc(2 * (4 * a3 / 0xB), 0x1000040BDFB0063uLL);
      if (a3)
      {
        v120 = 0;
        v121 = 0;
        do
        {
          WebRtcSpl_Resample22khzTo8khz(v10, (v68 + (((v120 * 0x2E8BA2E8BA2E8BA3uLL) >> 64) & 0x3FFFFFFFFFFFFFFELL)), *this, v67);
          v121 += 220;
          v120 += 880;
          v10 += 220;
        }

        while (v121 < a3);
      }

      WebRtcSpl_DownsampleBy2(v68, 4 * a3 / 0xB, v8, *(this + 1));
      *a6 = 4 * a3 / 0x16;
LABEL_140:
      free(v67);
      v94 = v68;
      goto LABEL_187;
    case 0x13:
      if (__ROR8__(0x6FB586FB586FB587 * a3, 2) > 0x129E4129E4129E4uLL)
      {
        goto LABEL_176;
      }

      v84 = 4 * a3 / 0xB;
      if (v84 > a5)
      {
        goto LABEL_176;
      }

      v81 = malloc_type_malloc(0x1F8uLL, 0x100004052888210uLL);
      if (a3)
      {
        v131 = 0;
        v132 = 0;
        do
        {
          WebRtcSpl_Resample22khzTo8khz(v10, (v8 + (((v131 * 0x2E8BA2E8BA2E8BA3uLL) >> 64) & 0x3FFFFFFFFFFFFFFELL)), *this, v81);
          v132 += 220;
          v131 += 880;
          v10 += 220;
        }

        while (v132 < a3);
      }

      goto LABEL_185;
    case 0x14:
      if (__ROR8__(0x6FB586FB586FB587 * a3, 2) > 0x129E4129E4129E4uLL || (v84 = 8 * a3 / 0xB, v84 > a5))
      {
LABEL_176:
        v32 = 0xFFFFFFFFLL;
      }

      else
      {
        v81 = malloc_type_malloc(0x1A0uLL, 0x100004052888210uLL);
        if (a3)
        {
          v102 = 0;
          v103 = 0;
          do
          {
            WebRtcSpl_Resample22khzTo16khz(v10, (v8 + (((v102 * 0x2E8BA2E8BA2E8BA3uLL) >> 64) & 0x3FFFFFFFFFFFFFFELL)), *this, v81);
            v103 += 220;
            v102 += 1760;
            v10 += 220;
          }

          while (v103 < a3);
        }

LABEL_185:
        *a6 = v84;
LABEL_186:
        v94 = v81;
LABEL_187:
        free(v94);
        v32 = 0;
      }

      break;
    default:
      return 0;
  }

  return v32;
}

uint64_t webrtc::ResidualEchoEstimator::ResidualEchoEstimator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = *a3;
  v7 = *(a3 + 80);
  v6 = *(a3 + 96);
  v8 = *(a3 + 64);
  *(a1 + 112) = *(a3 + 112);
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 64) = v8;
  v9 = *(a3 + 16);
  v10 = *(a3 + 48);
  *(a1 + 32) = *(a3 + 32);
  *(a1 + 48) = v10;
  *(a1 + 16) = v9;
  v11 = *(a3 + 168);
  v12 = *(a3 + 184);
  v13 = *(a3 + 200);
  *(a1 + 152) = *(a3 + 152);
  *(a1 + 200) = v13;
  *(a1 + 184) = v12;
  *(a1 + 168) = v11;
  v14 = *(a3 + 232);
  v15 = *(a3 + 248);
  v16 = *(a3 + 264);
  *(a1 + 216) = *(a3 + 216);
  *(a1 + 264) = v16;
  *(a1 + 248) = v15;
  *(a1 + 232) = v14;
  v18 = *(a3 + 296);
  v17 = *(a3 + 312);
  v19 = *(a3 + 280);
  *(a1 + 326) = *(a3 + 326);
  *(a1 + 296) = v18;
  *(a1 + 312) = v17;
  *(a1 + 280) = v19;
  v20 = *(a3 + 120);
  *(a1 + 136) = *(a3 + 136);
  *(a1 + 120) = v20;
  v21 = *(a3 + 336);
  v22 = *(a3 + 352);
  *(a1 + 361) = *(a3 + 361);
  *(a1 + 336) = v21;
  *(a1 + 352) = v22;
  *(a1 + 384) = *(a3 + 384);
  *(a1 + 392) = *(a3 + 392);
  v23 = *(a3 + 400);
  *(a1 + 408) = *(a3 + 408);
  *(a1 + 400) = v23;
  v24 = *(a3 + 412);
  *(a1 + 420) = *(a3 + 420);
  *(a1 + 412) = v24;
  *(a1 + 424) = *(a3 + 424);
  v25 = *(a3 + 432);
  *(a1 + 440) = *(a3 + 440);
  *(a1 + 432) = v25;
  v26 = *(a3 + 444);
  *(a1 + 452) = *(a3 + 452);
  *(a1 + 444) = v26;
  *(a1 + 456) = *(a3 + 456);
  v27 = *(a3 + 464);
  v28 = *(a3 + 480);
  v29 = *(a3 + 512);
  *(a1 + 496) = *(a3 + 496);
  *(a1 + 512) = v29;
  *(a1 + 464) = v27;
  *(a1 + 480) = v28;
  v30 = *(a3 + 528);
  v31 = *(a3 + 544);
  v32 = *(a3 + 560);
  *(a1 + 569) = *(a3 + 569);
  *(a1 + 544) = v31;
  *(a1 + 560) = v32;
  *(a1 + 528) = v30;
  *(a1 + 592) = *(a3 + 592);
  *(a1 + 608) = a4;
  *(a1 + 616) = vdup_n_s32(0x3C23D70Au);
  (*(**(a2 + 8) + 16))(&__p);
  v33 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v33 = v58;
  }

  if (v33 < 7)
  {
    v34 = 0;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  p_p = __p;
  if ((v59 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  v36 = *p_p;
  v37 = *(p_p + 3);
  v34 = v36 == 1650552389 && v37 == 1684368482;
  if (v59 < 0)
  {
LABEL_15:
    operator delete(__p);
  }

LABEL_16:
  v39 = *(a1 + 272);
  if (v34)
  {
    v39 = 0.1;
  }

  *(a1 + 624) = v39;
  (*(**(a2 + 8) + 16))(&__p);
  v40 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v40 = v58;
  }

  if (v40 < 7)
  {
    v41 = 0;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v42 = __p;
  if ((v59 & 0x80u) == 0)
  {
    v42 = &__p;
  }

  v43 = *v42;
  v44 = *(v42 + 3);
  v41 = v43 == 1650552389 && v44 == 1684368482;
  if (v59 < 0)
  {
LABEL_32:
    operator delete(__p);
  }

LABEL_33:
  v46 = *(a1 + 272);
  if (v41)
  {
    v46 = 0.1;
  }

  *(a1 + 628) = v46;
  if (*(a1 + 286))
  {
    v47 = 1;
    goto LABEL_52;
  }

  (*(**(a2 + 8) + 16))(&__p);
  v48 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v48 = v58;
  }

  if (v48 < 7)
  {
    v47 = 0;
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_51:
    operator delete(__p);
    goto LABEL_52;
  }

  v49 = __p;
  if ((v59 & 0x80u) == 0)
  {
    v49 = &__p;
  }

  v50 = *v49;
  v51 = *(v49 + 3);
  v47 = v50 == 1650552389 && v51 == 1684368482;
  if (v59 < 0)
  {
    goto LABEL_51;
  }

LABEL_52:
  *(a1 + 632) = v47;
  *(a1 + 1412) = 0;
  *(a1 + 1156) = 0u;
  *(a1 + 1172) = 0u;
  *(a1 + 1188) = 0u;
  *(a1 + 1204) = 0u;
  *(a1 + 1220) = 0u;
  *(a1 + 1236) = 0u;
  *(a1 + 1252) = 0u;
  *(a1 + 1268) = 0u;
  *(a1 + 1284) = 0u;
  *(a1 + 1300) = 0u;
  *(a1 + 1316) = 0u;
  *(a1 + 1332) = 0u;
  *(a1 + 1348) = 0u;
  *(a1 + 1364) = 0u;
  *(a1 + 1380) = 0u;
  *(a1 + 1396) = 0u;
  v53 = *(a1 + 336);
  v54 = vdupq_n_s32(v53);
  *(a1 + 896) = v54;
  *(a1 + 912) = v54;
  *(a1 + 928) = v54;
  *(a1 + 944) = v54;
  *(a1 + 960) = v54;
  *(a1 + 976) = v54;
  *(a1 + 992) = v54;
  *(a1 + 1008) = v54;
  *(a1 + 1024) = v54;
  *(a1 + 1040) = v54;
  *(a1 + 1056) = v54;
  *(a1 + 1072) = v54;
  *(a1 + 1088) = v54;
  *(a1 + 1104) = v54;
  *(a1 + 1120) = v54;
  *(a1 + 1136) = v54;
  *(a1 + 1152) = v53;
  v54.i32[0] = *(a1 + 344);
  v55 = vdupq_lane_s32(*v54.i8, 0);
  *(a1 + 636) = v55;
  *(a1 + 652) = v55;
  *(a1 + 668) = v55;
  *(a1 + 684) = v55;
  *(a1 + 700) = v55;
  *(a1 + 716) = v55;
  *(a1 + 732) = v55;
  *(a1 + 748) = v55;
  *(a1 + 764) = v55;
  *(a1 + 780) = v55;
  *(a1 + 796) = v55;
  *(a1 + 812) = v55;
  *(a1 + 828) = v55;
  *(a1 + 844) = v55;
  *(a1 + 860) = v55;
  *(a1 + 876) = v55;
  *(a1 + 892) = v54.i32[0];
  return a1;
}

uint64_t webrtc::ResidualEchoEstimator::Estimate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__src, int a7, int a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, char *a12, uint64_t a13, char *a14, uint64_t a15)
{
  v15 = *(a3 + 8);
  v16 = (*v15 + *(v15 + 36)) % *v15;
  v18 = v15 + 8;
  v17 = *(v15 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v18 + 8) - v17) >> 3) <= v16)
  {
LABEL_233:
    __break(1u);
    return result;
  }

  v22 = a2;
  v23 = result;
  v24 = a12;
  v25 = a14;
  v26 = result + 636;
  v27 = (v17 + 24 * v16);
  v28 = *v27;
  if (v27[1] == *v27)
  {
    v28 = 0;
  }

  v29 = *(result + 608);
  if (v29 >= 2)
  {
    v380 = 0.0;
    a9.i64[0] = 0;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    v366 = 0u;
    v367 = 0u;
    v364 = 0u;
    v365 = 0u;
    v31 = 0u;
    v30 = 0u;
    v33 = 0u;
    v32 = 0u;
    v35 = 0u;
    v34 = 0u;
    v37 = 0u;
    v36 = 0u;
    v39 = 0u;
    v38 = 0u;
    v41 = 0u;
    v40 = 0u;
    v43 = 0u;
    v42 = 0u;
    a11 = 0u;
    a10 = 0u;
    v44 = v28 + 8;
    do
    {
      v31 = vaddq_f32(v44[-8], v31);
      v30 = vaddq_f32(v44[-7], v30);
      v33 = vaddq_f32(v44[-6], v33);
      v32 = vaddq_f32(v44[-5], v32);
      v35 = vaddq_f32(v44[-4], v35);
      v34 = vaddq_f32(v44[-3], v34);
      v37 = vaddq_f32(v44[-2], v37);
      v36 = vaddq_f32(v44[-1], v36);
      v39 = vaddq_f32(*v44, v39);
      v38 = vaddq_f32(v44[1], v38);
      v41 = vaddq_f32(v44[2], v41);
      v40 = vaddq_f32(v44[3], v40);
      v43 = vaddq_f32(v44[4], v43);
      v42 = vaddq_f32(v44[5], v42);
      a11 = vaddq_f32(v44[6], a11);
      a10 = vaddq_f32(v44[7], a10);
      a9.f32[0] = v44[8].f32[0] + a9.f32[0];
      v44 = (v44 + 260);
      --v29;
    }

    while (v29);
    v364 = v31;
    v365 = v30;
    v366 = v33;
    v367 = v32;
    v368 = v35;
    v369 = v34;
    v370 = v37;
    v371 = v36;
    v372 = v39;
    v373 = v38;
    v374 = v41;
    v375 = v40;
    v376 = v43;
    v377 = v42;
    v378 = a11;
    v379 = a10;
    v28 = &v364;
    v380 = a9.f32[0];
  }

  for (i = 0; i != 65; ++i)
  {
    v46 = v28->f32[i];
    v47 = result + i * 4;
    v48 = *(result + i * 4 + 636);
    if (v46 < v48)
    {
      *(v47 + 636) = v46;
      *(v47 + 896) = 0;
    }

    else
    {
      v49 = *(v47 + 896);
      if (v49 >= *(result + 336))
      {
        v50 = v48 * 1.1;
        if (v50 < *(result + 344))
        {
          v50 = *(result + 344);
        }

        *(v47 + 636) = v50;
      }

      else
      {
        *(v47 + 896) = v49 + 1;
      }
    }
  }

  v359 = (a2 + 2424);
  if (*(a2 + 745) != 1 || *(a2 + 242) != 1)
  {
    result = *(a2 + 736);
    if (result)
    {
      result = (*(*result + 16))(result);
      v54 = 624;
      if (result)
      {
        v54 = 616;
      }

      v358 = v22;
      v357 = a8;
      v355 = a3;
      if (*(v22 + 800) == 1)
      {
LABEL_28:
        if (a13)
        {
          v55 = a12;
          v56 = a13;
          do
          {
            memmove(v55, __src, 0x104uLL);
            result = memmove(v25, __src, 0x104uLL);
            v25 += 260;
            v55 += 260;
            __src += 260;
            --v56;
          }

          while (v56);
        }

        v25 = a14;
        v24 = a12;
        v22 = v358;
        if (*(v23 + 376) != 1)
        {
          goto LABEL_207;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v54 = 624;
      v358 = a2;
      v357 = a8;
      v355 = a3;
      if (*(a2 + 800) == 1)
      {
        goto LABEL_28;
      }
    }

    v353 = *(v23 + v54);
    v57 = *(v23 + 608);
    v58 = *(a3 + 8);
    v59 = *(v22 + 688);
    v60 = *v58;
    v61 = *v58 + v58[9];
    v62 = (v61 + ((v59 - *(v23 + 360)) & ~((v59 - *(v23 + 360)) >> 31))) % *v58;
    v63 = v59 + *(v23 + 368) + v61 + 1;
    v64.i32[1] = 0;
    v364 = 0u;
    v365 = 0u;
    v366 = 0u;
    v367 = 0u;
    v368 = 0u;
    v369 = 0u;
    v370 = 0u;
    v371 = 0u;
    v372 = 0u;
    v373 = 0u;
    v374 = 0u;
    v375 = 0u;
    v376 = 0u;
    v377 = 0u;
    v65 = v63 % v60;
    v378 = 0u;
    v379 = 0u;
    v380 = 0.0;
    if (v57 == 1)
    {
      if (v62 != v65)
      {
        v66 = *(v58 + 1);
        v67 = 0xAAAAAAAAAAAAAAABLL * ((*(v58 + 2) - v66) >> 3);
        v68 = v364;
        v69 = v365;
        v70 = v366;
        v71 = v367;
        v72 = v368;
        v73 = v369;
        v74 = v370;
        v75 = v371;
        v76 = v372;
        v77 = v373;
        v78 = v374;
        v79 = v375;
        v80 = v376;
        v81 = v377;
        v82 = v378;
        v83 = v379;
        v84 = v380;
        while (v67 > v62)
        {
          v85 = *(v66 + 24 * v62);
          if (*(v66 + 24 * v62 + 8) == v85)
          {
            break;
          }

          v68 = vbslq_s8(vcgtq_f32(*v85, v68), *v85, v68);
          v69 = vbslq_s8(vcgtq_f32(v85[1], v69), v85[1], v69);
          v364 = v68;
          v365 = v69;
          v70 = vbslq_s8(vcgtq_f32(v85[2], v70), v85[2], v70);
          v71 = vbslq_s8(vcgtq_f32(v85[3], v71), v85[3], v71);
          v366 = v70;
          v367 = v71;
          v72 = vbslq_s8(vcgtq_f32(v85[4], v72), v85[4], v72);
          v73 = vbslq_s8(vcgtq_f32(v85[5], v73), v85[5], v73);
          v368 = v72;
          v369 = v73;
          v74 = vbslq_s8(vcgtq_f32(v85[6], v74), v85[6], v74);
          v75 = vbslq_s8(vcgtq_f32(v85[7], v75), v85[7], v75);
          v370 = v74;
          v371 = v75;
          v76 = vbslq_s8(vcgtq_f32(v85[8], v76), v85[8], v76);
          v77 = vbslq_s8(vcgtq_f32(v85[9], v77), v85[9], v77);
          v372 = v76;
          v373 = v77;
          v78 = vbslq_s8(vcgtq_f32(v85[10], v78), v85[10], v78);
          v79 = vbslq_s8(vcgtq_f32(v85[11], v79), v85[11], v79);
          v374 = v78;
          v375 = v79;
          v80 = vbslq_s8(vcgtq_f32(v85[12], v80), v85[12], v80);
          v81 = vbslq_s8(vcgtq_f32(v85[13], v81), v85[13], v81);
          v376 = v80;
          v377 = v81;
          v82 = vbslq_s8(vcgtq_f32(v85[14], v82), v85[14], v82);
          v83 = vbslq_s8(vcgtq_f32(v85[15], v83), v85[15], v83);
          if (v84 < v85[16].f32[0])
          {
            v84 = v85[16].f32[0];
          }

          v378 = v82;
          v379 = v83;
          if (v60 - 1 > v62)
          {
            ++v62;
          }

          else
          {
            v62 = 0;
          }

          v380 = v84;
          if (v62 == v65)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_233;
      }
    }

    else if (v62 != v65)
    {
      v149 = v60 - 1;
      v151 = v58 + 2;
      v150 = *(v58 + 1);
      v152 = 0xAAAAAAAAAAAAAAABLL * ((*(v151 + 1) - v150) >> 3);
      v153 = v365;
      v363 = v364;
      v155 = v366;
      v154 = v367;
      v156 = v368;
      v157 = v369;
      v158 = v370;
      v159 = v371;
      v160 = v372;
      v161 = v373;
      v162 = v374;
      v163 = v375;
      v164 = v376;
      v165 = v377;
      v166 = v378;
      v167 = v379;
      v168 = v380;
      while (1)
      {
        v361 = v155;
        v360 = v154;
        if (v57)
        {
          break;
        }

        v169 = 0uLL;
        v170 = 0.0;
        v171 = 0uLL;
        v172 = 0uLL;
        v173 = 0uLL;
        v174 = 0uLL;
        v175 = 0uLL;
        v176 = 0uLL;
        v177 = 0uLL;
        v178 = 0uLL;
        v179 = 0uLL;
        v180 = 0uLL;
        v181 = 0uLL;
        v182 = 0uLL;
        v183 = 0uLL;
        v184 = 0uLL;
        v185 = 0uLL;
LABEL_105:
        v186 = vbslq_s8(vcgtq_f32(v185, v363), v185, v363);
        v153 = vbslq_s8(vcgtq_f32(v184, v153), v184, v153);
        v155 = vbslq_s8(vcgtq_f32(v183, v361), v183, v361);
        v154 = vbslq_s8(vcgtq_f32(v182, v360), v182, v360);
        v156 = vbslq_s8(vcgtq_f32(v181, v156), v181, v156);
        v157 = vbslq_s8(vcgtq_f32(v180, v157), v180, v157);
        v158 = vbslq_s8(vcgtq_f32(v179, v158), v179, v158);
        v159 = vbslq_s8(vcgtq_f32(v178, v159), v178, v159);
        v160 = vbslq_s8(vcgtq_f32(v177, v160), v177, v160);
        v161 = vbslq_s8(vcgtq_f32(v176, v161), v176, v161);
        v162 = vbslq_s8(vcgtq_f32(v175, v162), v175, v162);
        v163 = vbslq_s8(vcgtq_f32(v174, v163), v174, v163);
        v164 = vbslq_s8(vcgtq_f32(v173, v164), v173, v164);
        v165 = vbslq_s8(vcgtq_f32(v172, v165), v172, v165);
        v166 = vbslq_s8(vcgtq_f32(v171, v166), v171, v166);
        v64 = vcgtq_f32(v169, v167);
        v167 = vbslq_s8(v64, v169, v167);
        if (v168 < v170)
        {
          v168 = v170;
        }

        v363 = v186;
        v364 = v186;
        v365 = v153;
        v366 = v155;
        v367 = v154;
        v368 = v156;
        v369 = v157;
        v370 = v158;
        v371 = v159;
        v372 = v160;
        v373 = v161;
        v374 = v162;
        v375 = v163;
        v376 = v164;
        v377 = v165;
        v378 = v166;
        v379 = v167;
        v380 = v168;
        if (v149 > v62)
        {
          ++v62;
        }

        else
        {
          v62 = 0;
        }

        if (v62 == v65)
        {
          goto LABEL_47;
        }
      }

      if (v152 > v62)
      {
        v187 = (v150 + 24 * v62);
        v188 = *v187;
        v169 = 0uLL;
        v170 = 0.0;
        v171 = 0uLL;
        v172 = 0uLL;
        v173 = 0uLL;
        v174 = 0uLL;
        v189 = 0xFC0FC0FC0FC0FC1 * ((v187[1] - *v187) >> 2);
        v175 = 0uLL;
        v190 = v188 + 8;
        v176 = 0uLL;
        result = v57;
        v177 = 0uLL;
        v178 = 0uLL;
        v179 = 0uLL;
        v180 = 0uLL;
        v181 = 0uLL;
        v182 = 0uLL;
        v183 = 0uLL;
        v184 = 0uLL;
        v185 = 0uLL;
        while (v189)
        {
          v185 = vaddq_f32(v190[-8], v185);
          v184 = vaddq_f32(v190[-7], v184);
          v183 = vaddq_f32(v190[-6], v183);
          v182 = vaddq_f32(v190[-5], v182);
          v181 = vaddq_f32(v190[-4], v181);
          v180 = vaddq_f32(v190[-3], v180);
          v179 = vaddq_f32(v190[-2], v179);
          v178 = vaddq_f32(v190[-1], v178);
          v177 = vaddq_f32(*v190, v177);
          v176 = vaddq_f32(v190[1], v176);
          v175 = vaddq_f32(v190[2], v175);
          v174 = vaddq_f32(v190[3], v174);
          v173 = vaddq_f32(v190[4], v173);
          v172 = vaddq_f32(v190[5], v172);
          v171 = vaddq_f32(v190[6], v171);
          v169 = vaddq_f32(v190[7], v169);
          v170 = v190[8].f32[0] + v170;
          v190 = (v190 + 260);
          --v189;
          if (!--result)
          {
            goto LABEL_105;
          }
        }
      }

      goto LABEL_233;
    }

LABEL_47:
    v86 = v353 * v353;
    if ((*(v22 + 320) & 1) == 0)
    {
      v143 = 0;
      v144 = *(v23 + 352);
      do
      {
        v145 = *&v364.i32[v143];
        if (v144 > v145)
        {
          *&v364.i32[v143] = fmaxf(v145 - (*(v23 + 356) * (v144 - v145)), 0.0);
        }

        ++v143;
      }

      while (v143 != 65);
    }

    v64.i32[0] = *(v23 + 348);
    v87 = vmaxnmq_f32(vmlsq_lane_f32(v365, *(v26 + 16), *v64.i8, 0), 0);
    v364 = vmaxnmq_f32(vmlsq_lane_f32(v364, *v26, *v64.i8, 0), 0);
    v365 = v87;
    v88 = vmaxnmq_f32(vmlsq_lane_f32(v367, *(v26 + 48), *v64.i8, 0), 0);
    v366 = vmaxnmq_f32(vmlsq_lane_f32(v366, *(v26 + 32), *v64.i8, 0), 0);
    v367 = v88;
    v89 = vmaxnmq_f32(vmlsq_lane_f32(v369, *(v26 + 80), *v64.i8, 0), 0);
    v368 = vmaxnmq_f32(vmlsq_lane_f32(v368, *(v26 + 64), *v64.i8, 0), 0);
    v369 = v89;
    v90 = vmaxnmq_f32(vmlsq_lane_f32(v371, *(v26 + 112), *v64.i8, 0), 0);
    v370 = vmaxnmq_f32(vmlsq_lane_f32(v370, *(v26 + 96), *v64.i8, 0), 0);
    v371 = v90;
    v91 = vmaxnmq_f32(vmlsq_lane_f32(v373, *(v26 + 144), *v64.i8, 0), 0);
    v372 = vmaxnmq_f32(vmlsq_lane_f32(v372, *(v26 + 128), *v64.i8, 0), 0);
    v373 = v91;
    v92 = vmaxnmq_f32(vmlsq_lane_f32(v375, *(v26 + 176), *v64.i8, 0), 0);
    v374 = vmaxnmq_f32(vmlsq_lane_f32(v374, *(v26 + 160), *v64.i8, 0), 0);
    v375 = v92;
    v93 = vmaxnmq_f32(vmlsq_lane_f32(v377, *(v26 + 208), *v64.i8, 0), 0);
    v376 = vmaxnmq_f32(vmlsq_lane_f32(v376, *(v26 + 192), *v64.i8, 0), 0);
    v377 = v93;
    v94 = vmaxnmq_f32(vmlsq_lane_f32(v379, *(v26 + 240), *v64.i8, 0), 0);
    v93.i32[0] = *(v23 + 892);
    v378 = vmaxnmq_f32(vmlsq_lane_f32(v378, *(v26 + 224), *v64.i8, 0), 0);
    v379 = v94;
    *v64.i32 = fmaxf(v380 - (*v64.i32 * v93.f32[0]), 0.0);
    if (a13)
    {
      v95 = a12;
    }

    else
    {
      v95 = 0;
    }

    v380 = *v64.i32;
    if (a15)
    {
      v96 = a14;
    }

    else
    {
      v96 = 0;
    }

    v22 = v358;
    if (*(v23 + 376) != 1)
    {
      goto LABEL_207;
    }

LABEL_55:
    v97 = *(v22 + 736);
    if (!v97 || (result = (*(*v97 + 16))(v97), (result & 1) == 0))
    {
      v362 = v25;
      result = webrtc::ResidualEchoEstimator::UpdateReverb(v23, 1, v22, *(v355 + 8), v357);
      if (a13)
      {
        v98 = v24;
      }

      else
      {
        v98 = 0;
      }

      v99 = (v26 + 520);
      if (a13)
      {
        v100 = 0;
        v102 = v98 < v23 + 1416 && v99 < v98 + 260 * a13;
        result = v26 + 616;
        v103 = v98;
        do
        {
          if (v102)
          {
            v104 = 0;
          }

          else
          {
            v105 = (v98 + 260 * v100);
            v106 = vaddq_f32(*(v26 + 536), v105[1]);
            *v105 = vaddq_f32(*v99, *v105);
            v105[1] = v106;
            v107 = vaddq_f32(*(v26 + 568), v105[3]);
            v105[2] = vaddq_f32(*(v26 + 552), v105[2]);
            v105[3] = v107;
            v108 = vaddq_f32(*(v26 + 600), v105[5]);
            v105[4] = vaddq_f32(*(v26 + 584), v105[4]);
            v105[5] = v108;
            v109 = vaddq_f32(*(v26 + 632), v105[7]);
            v105[6] = vaddq_f32(*result, v105[6]);
            v105[7] = v109;
            v110 = vaddq_f32(*(v26 + 664), v105[9]);
            v105[8] = vaddq_f32(*(v26 + 648), v105[8]);
            v105[9] = v110;
            v111 = vaddq_f32(*(v26 + 696), v105[11]);
            v105[10] = vaddq_f32(*(v26 + 680), v105[10]);
            v105[11] = v111;
            v112 = vaddq_f32(*(v26 + 728), v105[13]);
            v105[12] = vaddq_f32(*(v26 + 712), v105[12]);
            v105[13] = v112;
            a11 = v105[14];
            a9 = vaddq_f32(*(v26 + 744), a11);
            a10 = vaddq_f32(*(v26 + 760), v105[15]);
            v105[14] = a9;
            v105[15] = a10;
            v104 = 64;
          }

          v113 = v104;
          do
          {
            *(v103 + v113 * 4) = v99->f32[v113] + *(v103 + v113 * 4);
            ++v113;
          }

          while (v113 != 65);
          ++v100;
          v103 += 260;
        }

        while (v100 != a13);
      }

      v25 = v362;
      if (a15)
      {
        v114 = v362;
      }

      else
      {
        v114 = 0;
      }

      if (a15)
      {
        v115 = 0;
        v117 = v114 < v23 + 1416 && v99 < v114 + 260 * a15;
        v118 = (v26 + 536);
        v119 = (v26 + 552);
        v120 = (v26 + 568);
        v121 = (v26 + 584);
        v122 = (v26 + 600);
        result = v26 + 616;
        v123 = (v26 + 632);
        v124 = (v26 + 648);
        v125 = (v26 + 664);
        v126 = (v26 + 680);
        v127 = (v26 + 696);
        v128 = (v26 + 712);
        v129 = (v26 + 728);
        v130 = (v26 + 744);
        v131 = (v26 + 760);
        v132 = v114;
        do
        {
          if (v117)
          {
            v133 = 0;
          }

          else
          {
            v134 = (v114 + 260 * v115);
            v135 = vaddq_f32(*v118, v134[1]);
            *v134 = vaddq_f32(*v99, *v134);
            v134[1] = v135;
            v136 = vaddq_f32(*v120, v134[3]);
            v134[2] = vaddq_f32(*v119, v134[2]);
            v134[3] = v136;
            v137 = vaddq_f32(*v122, v134[5]);
            v134[4] = vaddq_f32(*v121, v134[4]);
            v134[5] = v137;
            v138 = vaddq_f32(*v123, v134[7]);
            v134[6] = vaddq_f32(*result, v134[6]);
            v134[7] = v138;
            v139 = vaddq_f32(*v125, v134[9]);
            v134[8] = vaddq_f32(*v124, v134[8]);
            v134[9] = v139;
            v140 = vaddq_f32(*v127, v134[11]);
            v134[10] = vaddq_f32(*v126, v134[10]);
            v134[11] = v140;
            v141 = vaddq_f32(*v129, v134[13]);
            v134[12] = vaddq_f32(*v128, v134[12]);
            v134[13] = v141;
            a11 = v134[14];
            a9 = vaddq_f32(*v130, a11);
            a10 = vaddq_f32(*v131, v134[15]);
            v134[14] = a9;
            v134[15] = a10;
            v133 = 64;
          }

          v142 = v133;
          do
          {
            *(v132 + v142 * 4) = v99->f32[v142] + *(v132 + v142 * 4);
            ++v142;
          }

          while (v142 != 65);
          ++v115;
          v132 += 260;
        }

        while (v115 != a15);
      }
    }

    goto LABEL_207;
  }

  if (*(a2 + 800) != 1)
  {
    if (a5)
    {
      v146 = a4;
    }

    else
    {
      v146 = 0;
    }

    v147 = *(a2 + 1968);
    if (v147)
    {
      if ((a8 ^ 1 | *(result + 632)) & 1) != 0 && (*(v147 + 600))
      {
        v148 = 632;
      }

      else
      {
        v148 = 608;
      }

      v191 = (v147 + v148);
      if (v191[1] == *v191)
      {
        v192 = 0;
      }

      else
      {
        v192 = *v191;
      }

      if (a13)
      {
        v193 = a12;
      }

      else
      {
        v193 = 0;
      }

      if (!a13)
      {
        goto LABEL_151;
      }
    }

    else
    {
      v194 = (a2 + 1456);
      if ((a8 ^ 1 | *(result + 632)) & 1) != 0 && (*v194)
      {
        v195 = 392;
      }

      else
      {
        v195 = 368;
      }

      v196 = &v194[v195];
      if (v196[1] == *v196)
      {
        v192 = 0;
      }

      else
      {
        v192 = *v196;
      }

      if (a13)
      {
        v193 = a12;
      }

      else
      {
        v193 = 0;
      }

      if (!a13)
      {
LABEL_151:
        v216 = (v147 + 608);
        _ZF = v147 == 0;
        if (v147)
        {
          v218 = (v147 + 616);
        }

        else
        {
          v218 = (v22 + 1880);
        }

        if (_ZF)
        {
          v216 = (v22 + 1872);
        }

        v219 = *v216;
        if (*v218 == v219)
        {
          v220 = 0;
        }

        else
        {
          v220 = v219;
        }

        if (a15)
        {
          v221 = a14;
        }

        else
        {
          v221 = 0;
        }

        if (a15)
        {
          v222 = 0;
          v224 = (v221 - v146) < 0x20 || (v221 - v220) < 0x20;
          v225 = v146;
          v226 = v220;
          v227 = v221;
          do
          {
            if (v224)
            {
              v228 = 0;
            }

            else
            {
              v229 = (v146 + 260 * v222);
              v230 = (v220 + 260 * v222);
              v231 = (v221 + 260 * v222);
              v232 = vdivq_f32(v229[1], v230[1]);
              *v231 = vdivq_f32(*v229, *v230);
              v231[1] = v232;
              v233 = vdivq_f32(v229[3], v230[3]);
              v231[2] = vdivq_f32(v229[2], v230[2]);
              v231[3] = v233;
              v234 = vdivq_f32(v229[5], v230[5]);
              v231[4] = vdivq_f32(v229[4], v230[4]);
              v231[5] = v234;
              v235 = vdivq_f32(v229[7], v230[7]);
              v231[6] = vdivq_f32(v229[6], v230[6]);
              v231[7] = v235;
              v236 = vdivq_f32(v229[9], v230[9]);
              v231[8] = vdivq_f32(v229[8], v230[8]);
              v231[9] = v236;
              v237 = vdivq_f32(v229[11], v230[11]);
              v231[10] = vdivq_f32(v229[10], v230[10]);
              v231[11] = v237;
              v238 = vdivq_f32(v229[13], v230[13]);
              v231[12] = vdivq_f32(v229[12], v230[12]);
              v231[13] = v238;
              v239 = vdivq_f32(v229[15], v230[15]);
              v231[14] = vdivq_f32(v229[14], v230[14]);
              v231[15] = v239;
              v228 = 64;
            }

            v240 = 4 * v228;
            do
            {
              *(v227 + v240) = *(v225 + v240) / *(v226 + v240);
              v240 += 4;
            }

            while (v240 != 260);
            ++v222;
            v227 += 260;
            v226 += 260;
            v225 += 260;
          }

          while (v222 != a15);
        }

        result = webrtc::ResidualEchoEstimator::UpdateReverb(v23, 0, v22, *(a3 + 8), a8);
        v53 = (v26 + 520);
        if (!a13)
        {
          goto LABEL_190;
        }

        goto LABEL_177;
      }
    }

    v197 = 0;
    v199 = (v193 - v146) < 0x20 || (v193 - v192) < 0x20;
    v200 = v146;
    v201 = v192;
    v202 = v193;
    do
    {
      if (v199)
      {
        v203 = 0;
      }

      else
      {
        v204 = (v146 + 260 * v197);
        v205 = (v192 + 260 * v197);
        v206 = (v193 + 260 * v197);
        v207 = vdivq_f32(v204[1], v205[1]);
        *v206 = vdivq_f32(*v204, *v205);
        v206[1] = v207;
        v208 = vdivq_f32(v204[3], v205[3]);
        v206[2] = vdivq_f32(v204[2], v205[2]);
        v206[3] = v208;
        v209 = vdivq_f32(v204[5], v205[5]);
        v206[4] = vdivq_f32(v204[4], v205[4]);
        v206[5] = v209;
        v210 = vdivq_f32(v204[7], v205[7]);
        v206[6] = vdivq_f32(v204[6], v205[6]);
        v206[7] = v210;
        v211 = vdivq_f32(v204[9], v205[9]);
        v206[8] = vdivq_f32(v204[8], v205[8]);
        v206[9] = v211;
        v212 = vdivq_f32(v204[11], v205[11]);
        v206[10] = vdivq_f32(v204[10], v205[10]);
        v206[11] = v212;
        v213 = vdivq_f32(v204[13], v205[13]);
        v206[12] = vdivq_f32(v204[12], v205[12]);
        v206[13] = v213;
        v214 = vdivq_f32(v204[15], v205[15]);
        v206[14] = vdivq_f32(v204[14], v205[14]);
        v206[15] = v214;
        v203 = 64;
      }

      v215 = 4 * v203;
      do
      {
        *(v202 + v215) = *(v200 + v215) / *(v201 + v215);
        v215 += 4;
      }

      while (v215 != 260);
      ++v197;
      v202 += 260;
      v201 += 260;
      v200 += 260;
    }

    while (v197 != a13);
    goto LABEL_151;
  }

  if (!a13)
  {
    result = webrtc::ResidualEchoEstimator::UpdateReverb(result, 0, a2, *(a3 + 8), a8);
    v53 = (v26 + 520);
    goto LABEL_190;
  }

  v51 = a12;
  v52 = a13;
  do
  {
    memmove(v51, __src, 0x104uLL);
    memmove(v25, __src, 0x104uLL);
    v25 += 260;
    v51 += 260;
    __src += 260;
    --v52;
  }

  while (v52);
  webrtc::ResidualEchoEstimator::UpdateReverb(v23, 0, v22, *(a3 + 8), a8);
  v53 = (v26 + 520);
  v25 = a14;
  v24 = a12;
LABEL_177:
  v241 = 0;
  v242 = (v26 + 520);
  v244 = v23 + 1416 > v24 && v242 < v24 + 260 * a13;
  v245 = (v26 + 536);
  v246 = (v26 + 552);
  v247 = (v26 + 568);
  v248 = (v26 + 584);
  v249 = (v26 + 600);
  result = v26 + 616;
  v250 = (v26 + 632);
  v251 = (v26 + 648);
  v252 = (v26 + 664);
  v253 = (v26 + 680);
  v254 = (v26 + 696);
  v255 = (v26 + 712);
  v256 = (v26 + 728);
  v257 = (v26 + 744);
  v258 = (v26 + 760);
  v259 = v24;
  do
  {
    if (v244)
    {
      v260 = 0;
    }

    else
    {
      v261 = (v24 + 260 * v241);
      v262 = vaddq_f32(*v245, v261[1]);
      *v261 = vaddq_f32(*v242, *v261);
      v261[1] = v262;
      v263 = vaddq_f32(*v247, v261[3]);
      v261[2] = vaddq_f32(*v246, v261[2]);
      v261[3] = v263;
      v264 = vaddq_f32(*v249, v261[5]);
      v261[4] = vaddq_f32(*v248, v261[4]);
      v261[5] = v264;
      v265 = vaddq_f32(*v250, v261[7]);
      v261[6] = vaddq_f32(*result, v261[6]);
      v261[7] = v265;
      v266 = vaddq_f32(*v252, v261[9]);
      v261[8] = vaddq_f32(*v251, v261[8]);
      v261[9] = v266;
      v267 = vaddq_f32(*v254, v261[11]);
      v261[10] = vaddq_f32(*v253, v261[10]);
      v261[11] = v267;
      v268 = vaddq_f32(*v256, v261[13]);
      v261[12] = vaddq_f32(*v255, v261[12]);
      v261[13] = v268;
      a11 = v261[14];
      a9 = vaddq_f32(*v257, a11);
      a10 = vaddq_f32(*v258, v261[15]);
      v261[14] = a9;
      v261[15] = a10;
      v260 = 64;
    }

    v269 = v260;
    do
    {
      *(v259 + v269 * 4) = v242->f32[v269] + *(v259 + v269 * 4);
      ++v269;
    }

    while (v269 != 65);
    ++v241;
    v259 += 260;
  }

  while (v241 != a13);
LABEL_190:
  if (a15)
  {
    v270 = v25;
  }

  else
  {
    v270 = 0;
  }

  if (a15)
  {
    v271 = 0;
    v273 = v270 < v53[16].u64 + 4 && v53 < v270 + 260 * a15;
    v274 = v270;
    do
    {
      if (v273)
      {
        v275 = 0;
      }

      else
      {
        v276 = (v270 + 260 * v271);
        v277 = vaddq_f32(v53[1], v276[1]);
        *v276 = vaddq_f32(*v53, *v276);
        v276[1] = v277;
        v278 = vaddq_f32(v53[3], v276[3]);
        v276[2] = vaddq_f32(v53[2], v276[2]);
        v276[3] = v278;
        v279 = vaddq_f32(v53[5], v276[5]);
        v276[4] = vaddq_f32(v53[4], v276[4]);
        v276[5] = v279;
        v280 = vaddq_f32(v53[7], v276[7]);
        v276[6] = vaddq_f32(v53[6], v276[6]);
        v276[7] = v280;
        v281 = vaddq_f32(v53[9], v276[9]);
        v276[8] = vaddq_f32(v53[8], v276[8]);
        v276[9] = v281;
        v282 = vaddq_f32(v53[11], v276[11]);
        v276[10] = vaddq_f32(v53[10], v276[10]);
        v276[11] = v282;
        v283 = vaddq_f32(v53[13], v276[13]);
        v276[12] = vaddq_f32(v53[12], v276[12]);
        v276[13] = v283;
        a11 = v276[14];
        a9 = vaddq_f32(v53[14], a11);
        a10 = vaddq_f32(v53[15], v276[15]);
        v276[14] = a9;
        v276[15] = a10;
        v275 = 64;
      }

      v284 = v275;
      do
      {
        *(v274 + v284 * 4) = v53->f32[v284] + *(v274 + v284 * 4);
        ++v284;
      }

      while (v284 != 65);
      ++v271;
      v274 += 260;
    }

    while (v271 != a15);
  }

LABEL_207:
  if (*(v22 + 320) == 1)
  {
    v285 = 199;
    if (*(v22 + 240))
    {
      v285 = 374;
    }

    if (*(v22 + 1984) <= v285)
    {
      v307 = *(v22 + 2141);
      v308 = vdup_n_s16(v307);
      a10.i32[0] = *(v22 + 2684);
      a11.i32[0] = *(v22 + 2688);
      v309 = vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*a10.f32), vmovn_s32(vceqzq_s32(*v359))), v308)), 0x1FuLL));
      __asm { FMOV            V1.4S, #1.0 }

      v311 = vandq_s8(_Q1, v309);
      v312 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*a11.f32), vmovn_s32(vceqzq_s32(v359[1]))), v308)), 0x1FuLL)));
      v364 = v311;
      v365 = v312;
      v312.i32[0] = *(v22 + 2692);
      v311.i32[0] = *(v22 + 2696);
      v313 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v312.i8), vmovn_s32(vceqzq_s32(v359[2]))), v308)), 0x1FuLL)));
      v314 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v311.i8), vmovn_s32(vceqzq_s32(v359[3]))), v308)), 0x1FuLL)));
      v366 = v313;
      v367 = v314;
      v313.i32[0] = *(v22 + 2700);
      v314.i32[0] = *(v22 + 2704);
      v315 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v313.i8), vmovn_s32(vceqzq_s32(v359[4]))), v308)), 0x1FuLL)));
      v316 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v314.i8), vmovn_s32(vceqzq_s32(v359[5]))), v308)), 0x1FuLL)));
      v368 = v315;
      v369 = v316;
      v315.i32[0] = *(v22 + 2708);
      v316.i32[0] = *(v22 + 2712);
      v317 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v315.i8), vmovn_s32(vceqzq_s32(v359[6]))), v308)), 0x1FuLL)));
      v318 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v316.i8), vmovn_s32(vceqzq_s32(v359[7]))), v308)), 0x1FuLL)));
      v370 = v317;
      v371 = v318;
      v317.i32[0] = *(v22 + 2716);
      v318.i32[0] = *(v22 + 2720);
      v319 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v317.i8), vmovn_s32(vceqzq_s32(v359[8]))), v308)), 0x1FuLL)));
      v320 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v318.i8), vmovn_s32(vceqzq_s32(v359[9]))), v308)), 0x1FuLL)));
      v372 = v319;
      v373 = v320;
      v319.i32[0] = *(v22 + 2724);
      v320.i32[0] = *(v22 + 2728);
      v321 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v319.i8), vmovn_s32(vceqzq_s32(v359[10]))), v308)), 0x1FuLL)));
      v322 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v320.i8), vmovn_s32(vceqzq_s32(v359[11]))), v308)), 0x1FuLL)));
      v374 = v321;
      v375 = v322;
      v321.i32[0] = *(v22 + 2732);
      v322.i32[0] = *(v22 + 2736);
      v323 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v321.i8), vmovn_s32(vceqzq_s32(v359[12]))), v308)), 0x1FuLL)));
      v324 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v322.i8), vmovn_s32(vceqzq_s32(v359[13]))), v308)), 0x1FuLL)));
      v376 = v323;
      v377 = v324;
      v323.i32[0] = *(v22 + 2740);
      v324.i32[0] = *(v22 + 2744);
      v325 = vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v323.i8), vmovn_s32(vceqzq_s32(v359[14]))), v308)), 0x1FuLL);
      v326 = vandq_s8(_Q1, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vand_s8(*&vmovl_u8(*v324.i8), vmovn_s32(vceqzq_s32(v359[15]))), v308)), 0x1FuLL)));
      v378 = vandq_s8(_Q1, vcgezq_s32(v325));
      v379 = v326;
      if (*(v22 + 2748) != 1 || *(v22 + 2680) || (v306 = 0.0, (v307 & 1) == 0))
      {
        v306 = 1.0;
      }
    }

    else
    {
      a9.i32[0] = *(v22 + 2684);
      a10.i32[0] = *(v22 + 2688);
      v286 = vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*a9.f32), vmovn_s32(vceqzq_s32(*v359)))), 0x1FuLL));
      __asm { FMOV            V0.4S, #1.0 }

      v290 = vandq_s8(_Q0, v286);
      v291 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*a10.f32), vmovn_s32(vceqzq_s32(v359[1])))), 0x1FuLL)));
      v364 = v290;
      v365 = v291;
      v291.i32[0] = *(v22 + 2692);
      v290.i32[0] = *(v22 + 2696);
      v292 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v291.i8), vmovn_s32(vceqzq_s32(v359[2])))), 0x1FuLL)));
      v293 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v290.i8), vmovn_s32(vceqzq_s32(v359[3])))), 0x1FuLL)));
      v366 = v292;
      v367 = v293;
      v292.i32[0] = *(v22 + 2700);
      v293.i32[0] = *(v22 + 2704);
      v294 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v292.i8), vmovn_s32(vceqzq_s32(v359[4])))), 0x1FuLL)));
      v295 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v293.i8), vmovn_s32(vceqzq_s32(v359[5])))), 0x1FuLL)));
      v368 = v294;
      v369 = v295;
      v294.i32[0] = *(v22 + 2708);
      v295.i32[0] = *(v22 + 2712);
      v296 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v294.i8), vmovn_s32(vceqzq_s32(v359[6])))), 0x1FuLL)));
      v297 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v295.i8), vmovn_s32(vceqzq_s32(v359[7])))), 0x1FuLL)));
      v370 = v296;
      v371 = v297;
      v296.i32[0] = *(v22 + 2716);
      v297.i32[0] = *(v22 + 2720);
      v298 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v296.i8), vmovn_s32(vceqzq_s32(v359[8])))), 0x1FuLL)));
      v299 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v297.i8), vmovn_s32(vceqzq_s32(v359[9])))), 0x1FuLL)));
      v372 = v298;
      v373 = v299;
      v298.i32[0] = *(v22 + 2724);
      v299.i32[0] = *(v22 + 2728);
      v300 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v298.i8), vmovn_s32(vceqzq_s32(v359[10])))), 0x1FuLL)));
      v301 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v299.i8), vmovn_s32(vceqzq_s32(v359[11])))), 0x1FuLL)));
      v374 = v300;
      v375 = v301;
      v300.i32[0] = *(v22 + 2732);
      v301.i32[0] = *(v22 + 2736);
      v302 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v300.i8), vmovn_s32(vceqzq_s32(v359[12])))), 0x1FuLL)));
      v303 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v301.i8), vmovn_s32(vceqzq_s32(v359[13])))), 0x1FuLL)));
      v376 = v302;
      v377 = v303;
      v302.i32[0] = *(v22 + 2740);
      v303.i32[0] = *(v22 + 2744);
      v304 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v302.i8), vmovn_s32(vceqzq_s32(v359[14])))), 0x1FuLL)));
      v305 = vandq_s8(_Q0, vcgezq_s32(vshlq_n_s32(vmovl_u16(vand_s8(*&vmovl_u8(*v303.i8), vmovn_s32(vceqzq_s32(v359[15])))), 0x1FuLL)));
      v378 = v304;
      v379 = v305;
      v306 = 1.0;
      if ((*(v22 + 2748) & (*(v22 + 2680) == 0)) != 0)
      {
        v306 = 0.0;
      }
    }

    v380 = v306;
    if (a13)
    {
      v327 = 0;
      v329 = &v25[260 * a13] > v24 && v24 + 260 * a13 > v25;
      v330 = v24;
      v331 = v25;
      do
      {
        if (v329)
        {
          v332 = 0;
        }

        else
        {
          v333 = (v24 + 260 * v327);
          v334 = &v25[260 * v327];
          v335 = v364;
          *v333 = vmulq_f32(v364, *v333);
          *v334 = vmulq_f32(v335, *v334);
          v336 = v365;
          v333[1] = vmulq_f32(v365, v333[1]);
          v334[1] = vmulq_f32(v336, v334[1]);
          v337 = v366;
          v333[2] = vmulq_f32(v366, v333[2]);
          v334[2] = vmulq_f32(v337, v334[2]);
          v338 = v367;
          v333[3] = vmulq_f32(v367, v333[3]);
          v334[3] = vmulq_f32(v338, v334[3]);
          v339 = v368;
          v333[4] = vmulq_f32(v368, v333[4]);
          v334[4] = vmulq_f32(v339, v334[4]);
          v340 = v369;
          v333[5] = vmulq_f32(v369, v333[5]);
          v334[5] = vmulq_f32(v340, v334[5]);
          v341 = v370;
          v333[6] = vmulq_f32(v370, v333[6]);
          v334[6] = vmulq_f32(v341, v334[6]);
          v342 = v371;
          v333[7] = vmulq_f32(v371, v333[7]);
          v334[7] = vmulq_f32(v342, v334[7]);
          v343 = v372;
          v333[8] = vmulq_f32(v372, v333[8]);
          v334[8] = vmulq_f32(v343, v334[8]);
          v344 = v373;
          v333[9] = vmulq_f32(v373, v333[9]);
          v334[9] = vmulq_f32(v344, v334[9]);
          v345 = v374;
          v333[10] = vmulq_f32(v374, v333[10]);
          v334[10] = vmulq_f32(v345, v334[10]);
          v346 = v375;
          v333[11] = vmulq_f32(v375, v333[11]);
          v334[11] = vmulq_f32(v346, v334[11]);
          v347 = v376;
          v333[12] = vmulq_f32(v376, v333[12]);
          v334[12] = vmulq_f32(v347, v334[12]);
          v348 = v377;
          v333[13] = vmulq_f32(v377, v333[13]);
          v334[13] = vmulq_f32(v348, v334[13]);
          v349 = v378;
          v333[14] = vmulq_f32(v378, v333[14]);
          v334[14] = vmulq_f32(v349, v334[14]);
          v350 = v379;
          v333[15] = vmulq_f32(v379, v333[15]);
          v334[15] = vmulq_f32(v350, v334[15]);
          v332 = 64;
        }

        v351 = 4 * v332;
        do
        {
          v352 = *&v364.i32[v351 / 4];
          *(v330 + v351) = v352 * *(v330 + v351);
          *&v331[v351] = v352 * *&v331[v351];
          v351 += 4;
        }

        while (v351 != 260);
        ++v327;
        v331 += 260;
        v330 += 260;
      }

      while (v327 != a13);
    }
  }

  return result;
}

uint64_t webrtc::ResidualEchoEstimator::UpdateReverb(uint64_t result, int a2, void *a3, uint64_t a4, int a5)
{
  v5 = result;
  if (a2)
  {
    v6 = a3 + 86;
  }

  else
  {
    v7 = a3[259];
    if (a3[260] == v7)
    {
      goto LABEL_51;
    }

    v6 = (v7 + 16);
  }

  v8 = (*v6 + *(a4 + 36) + *a4 + 1) % *a4;
  v9 = *(a4 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a4 + 16) - v9) >> 3) <= v8)
  {
    goto LABEL_51;
  }

  v10 = (v9 + 24 * v8);
  if (v10[1] == *v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
  }

  v12 = *(result + 608);
  if (v12 >= 2)
  {
    v82 = 0.0;
    v13 = 0uLL;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = v11 + 8;
    v30 = 0.0;
    do
    {
      v13 = vaddq_f32(v29[-8], v13);
      v14 = vaddq_f32(v29[-7], v14);
      v66 = v13;
      v67 = v14;
      v15 = vaddq_f32(v29[-6], v15);
      v16 = vaddq_f32(v29[-5], v16);
      v68 = v15;
      v69 = v16;
      v17 = vaddq_f32(v29[-4], v17);
      v18 = vaddq_f32(v29[-3], v18);
      v70 = v17;
      v71 = v18;
      v19 = vaddq_f32(v29[-2], v19);
      v20 = vaddq_f32(v29[-1], v20);
      v72 = v19;
      v73 = v20;
      v21 = vaddq_f32(*v29, v21);
      v22 = vaddq_f32(v29[1], v22);
      v74 = v21;
      v75 = v22;
      v23 = vaddq_f32(v29[2], v23);
      v24 = vaddq_f32(v29[3], v24);
      v76 = v23;
      v77 = v24;
      v25 = vaddq_f32(v29[4], v25);
      v26 = vaddq_f32(v29[5], v26);
      v78 = v25;
      v79 = v26;
      v27 = vaddq_f32(v29[6], v27);
      v28 = vaddq_f32(v29[7], v28);
      v80 = v27;
      v81 = v28;
      v30 = v29[8].f32[0] + v30;
      v82 = v30;
      v29 = (v29 + 260);
      --v12;
    }

    while (v12);
    v11 = &v66;
  }

  v31 = a3[344];
  if (a3[345] == v31)
  {
    goto LABEL_51;
  }

  v32 = (result + 1156);
  v33 = *v31;
  v34 = 148;
  if (!a5)
  {
    v34 = 144;
  }

  if (*(v33 + 8))
  {
    v35 = 144;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(v33 + v35);
  if (a2)
  {
    result = a3[92];
    if (result)
    {
      v65 = *(v33 + v35);
      result = (*(*result + 16))(result);
      v36 = v65;
      v37 = 628;
      if (result)
      {
        v37 = 620;
      }

      if (v65 <= 0.0)
      {
        return result;
      }
    }

    else
    {
      v37 = 628;
      if (v36 <= 0.0)
      {
        return result;
      }
    }

    v54 = *(v5 + v37) * *(v5 + v37);
    if (v32 >= &v11[16].i32[1] || v11 >= v5 + 1416)
    {
      v56 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1172), v11[1], v54), v36);
      *v32 = vmulq_n_f32(vmlaq_n_f32(*v32, *v11, v54), v36);
      *(v5 + 1172) = v56;
      v57 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1204), v11[3], v54), v36);
      *(v5 + 1188) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1188), v11[2], v54), v36);
      *(v5 + 1204) = v57;
      v58 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1236), v11[5], v54), v36);
      *(v5 + 1220) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1220), v11[4], v54), v36);
      *(v5 + 1236) = v58;
      v59 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1268), v11[7], v54), v36);
      *(v5 + 1252) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1252), v11[6], v54), v36);
      *(v5 + 1268) = v59;
      v60 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1300), v11[9], v54), v36);
      *(v5 + 1284) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1284), v11[8], v54), v36);
      *(v5 + 1300) = v60;
      v61 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1332), v11[11], v54), v36);
      *(v5 + 1316) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1316), v11[10], v54), v36);
      *(v5 + 1332) = v61;
      v62 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1364), v11[13], v54), v36);
      *(v5 + 1348) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1348), v11[12], v54), v36);
      *(v5 + 1364) = v62;
      v63 = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1396), v11[15], v54), v36);
      v55 = 64;
      *(v5 + 1380) = vmulq_n_f32(vmlaq_n_f32(*(v5 + 1380), v11[14], v54), v36);
      *(v5 + 1396) = v63;
    }

    else
    {
      v55 = 0;
    }

    v64 = v55;
    do
    {
      v32->f32[v64] = v36 * (v32->f32[v64] + (v11->f32[v64] * v54));
      ++v64;
    }

    while (v64 != 65);
    return result;
  }

  v38 = a3[347];
  if (a3[348] == v38)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  if (v36 > 0.0)
  {
    v39 = 0;
    v40 = v38 + 8;
    v41 = result + 1416;
    v43 = v32 < v38 + 268 && v40 < v41;
    v44 = v11 >= v41 || v32 >= &v11[16].i32[1];
    if (v44 && !v43)
    {
      v45 = vmulq_n_f32(vmlaq_f32(*(result + 1172), *(v38 + 24), v11[1]), v36);
      *v32 = vmulq_n_f32(vmlaq_f32(*v32, *(v38 + 8), *v11), v36);
      *(result + 1172) = v45;
      v46 = vmulq_n_f32(vmlaq_f32(*(result + 1204), *(v38 + 56), v11[3]), v36);
      *(result + 1188) = vmulq_n_f32(vmlaq_f32(*(result + 1188), *(v38 + 40), v11[2]), v36);
      *(result + 1204) = v46;
      v47 = vmulq_n_f32(vmlaq_f32(*(result + 1236), *(v38 + 88), v11[5]), v36);
      *(result + 1220) = vmulq_n_f32(vmlaq_f32(*(result + 1220), *(v38 + 72), v11[4]), v36);
      *(result + 1236) = v47;
      v48 = vmulq_n_f32(vmlaq_f32(*(result + 1268), *(v38 + 120), v11[7]), v36);
      *(result + 1252) = vmulq_n_f32(vmlaq_f32(*(result + 1252), *(v38 + 104), v11[6]), v36);
      *(result + 1268) = v48;
      v49 = vmulq_n_f32(vmlaq_f32(*(result + 1300), *(v38 + 152), v11[9]), v36);
      *(result + 1284) = vmulq_n_f32(vmlaq_f32(*(result + 1284), *(v38 + 136), v11[8]), v36);
      *(result + 1300) = v49;
      v50 = vmulq_n_f32(vmlaq_f32(*(result + 1332), *(v38 + 184), v11[11]), v36);
      *(result + 1316) = vmulq_n_f32(vmlaq_f32(*(result + 1316), *(v38 + 168), v11[10]), v36);
      *(result + 1332) = v50;
      v51 = vmulq_n_f32(vmlaq_f32(*(result + 1364), *(v38 + 216), v11[13]), v36);
      *(result + 1348) = vmulq_n_f32(vmlaq_f32(*(result + 1348), *(v38 + 200), v11[12]), v36);
      *(result + 1364) = v51;
      v52 = vmulq_n_f32(vmlaq_f32(*(result + 1396), *(v38 + 248), v11[15]), v36);
      v39 = 64;
      *(result + 1380) = vmulq_n_f32(vmlaq_f32(*(result + 1380), *(v38 + 232), v11[14]), v36);
      *(result + 1396) = v52;
    }

    v53 = v39;
    do
    {
      v32->f32[v53] = v36 * (v32->f32[v53] + (v11->f32[v53] * *(v40 + v53 * 4)));
      ++v53;
    }

    while (v53 != 65);
  }

  return result;
}

float *webrtc::anonymous namespace::NonLinearEstimate(float *result, uint64_t a2, uint64_t a3, float a4)
{
  if (a3)
  {
    v4 = (a2 + 128);
    do
    {
      *(v4 - 32) = *result * a4;
      *(v4 - 31) = result[1] * a4;
      *(v4 - 30) = result[2] * a4;
      *(v4 - 29) = result[3] * a4;
      *(v4 - 28) = result[4] * a4;
      *(v4 - 27) = result[5] * a4;
      *(v4 - 26) = result[6] * a4;
      *(v4 - 25) = result[7] * a4;
      *(v4 - 24) = result[8] * a4;
      *(v4 - 23) = result[9] * a4;
      *(v4 - 22) = result[10] * a4;
      *(v4 - 21) = result[11] * a4;
      *(v4 - 20) = result[12] * a4;
      *(v4 - 19) = result[13] * a4;
      *(v4 - 18) = result[14] * a4;
      *(v4 - 17) = result[15] * a4;
      *(v4 - 16) = result[16] * a4;
      *(v4 - 15) = result[17] * a4;
      *(v4 - 14) = result[18] * a4;
      *(v4 - 13) = result[19] * a4;
      *(v4 - 12) = result[20] * a4;
      *(v4 - 11) = result[21] * a4;
      *(v4 - 10) = result[22] * a4;
      *(v4 - 9) = result[23] * a4;
      *(v4 - 8) = result[24] * a4;
      *(v4 - 7) = result[25] * a4;
      *(v4 - 6) = result[26] * a4;
      *(v4 - 5) = result[27] * a4;
      *(v4 - 4) = result[28] * a4;
      *(v4 - 3) = result[29] * a4;
      *(v4 - 2) = result[30] * a4;
      *(v4 - 1) = result[31] * a4;
      *v4 = result[32] * a4;
      v4[1] = result[33] * a4;
      v4[2] = result[34] * a4;
      v4[3] = result[35] * a4;
      v4[4] = result[36] * a4;
      v4[5] = result[37] * a4;
      v4[6] = result[38] * a4;
      v4[7] = result[39] * a4;
      v4[8] = result[40] * a4;
      v4[9] = result[41] * a4;
      v4[10] = result[42] * a4;
      v4[11] = result[43] * a4;
      v4[12] = result[44] * a4;
      v4[13] = result[45] * a4;
      v4[14] = result[46] * a4;
      v4[15] = result[47] * a4;
      v4[16] = result[48] * a4;
      v4[17] = result[49] * a4;
      v4[18] = result[50] * a4;
      v4[19] = result[51] * a4;
      v4[20] = result[52] * a4;
      v4[21] = result[53] * a4;
      v4[22] = result[54] * a4;
      v4[23] = result[55] * a4;
      v4[24] = result[56] * a4;
      v4[25] = result[57] * a4;
      v4[26] = result[58] * a4;
      v4[27] = result[59] * a4;
      v4[28] = result[60] * a4;
      v4[29] = result[61] * a4;
      v4[30] = result[62] * a4;
      v4[31] = result[63] * a4;
      v4[32] = result[64] * a4;
      v4 += 65;
      --a3;
    }

    while (a3);
  }

  return result;
}

void *webrtc::ResourceAdaptationProcessor::ResourceListenerDelegate::OnResourceUsageStateMeasured(uint64_t a1, void (****a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 16);
  if (*result != v11)
  {
    (**a1)(a1);
    v13 = *a2;
    if (v13)
    {
      (**v13)(v13);
    }

    operator new();
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = *a2;
    v16[0] = v15;
    if (v15)
    {
      (**v15)(v15);
    }

    (*(*v14 + 56))(v14, v16, a3);
    result = v16[0];
    if (v16[0])
    {
      return (*(*v16[0] + 8))(v16[0]);
    }
  }

  return result;
}

void webrtc::ResourceAdaptationProcessor::ResourceAdaptationProcessor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829A800;
  a1[1] = &unk_28829A858;
  a1[2] = &unk_28829A880;
  operator new();
}

void webrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor(webrtc::ResourceAdaptationProcessor *this)
{
  *this = &unk_28829A800;
  *(this + 1) = &unk_28829A858;
  *(this + 2) = &unk_28829A880;
  v2 = *(this + 22);
  v4 = *(v2 + 160);
  v3 = *(v2 + 168);
  if (v4 != v3)
  {
    v5 = *(v2 + 160);
    while (*v5 != (this + 8))
    {
      ++v5;
      ++v4;
      if (v5 == v3)
      {
        v4 = *(v2 + 168);
        break;
      }
    }
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 - (v4 + 1));
    if (v3 != v4 + 1)
    {
      memmove(v4, v4 + 1, v3 - (v4 + 1));
    }

    *(v2 + 168) = &v6[v4];
    *(*(this + 4) + 24) = 0;
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 30));
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(*(this + 20));
    v7 = *(this + 16);
    if (v7)
    {
      *(this + 17) = v7;
      operator delete(v7);
    }

    v8 = *(this + 13);
    if (v8)
    {
      v9 = *(this + 14);
      v10 = *(this + 13);
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 8);
          v9 -= 8;
          v11 = v12;
          if (v12)
          {
            (*(*v11 + 8))(v11);
          }
        }

        while (v9 != v8);
        v10 = *(this + 13);
      }

      *(this + 14) = v8;
      operator delete(v10);
    }

    pthread_mutex_destroy((this + 40));
    v13 = *(this + 4);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }
}

{
  webrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor(webrtc::ResourceAdaptationProcessor *this)
{
  webrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor((this - 8));
}

{
  webrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor((this - 16));
}

{
  webrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::ResourceAdaptationProcessor::~ResourceAdaptationProcessor((this - 16));

  JUMPOUT(0x2743DA540);
}

void *webrtc::ResourceAdaptationProcessor::AddResourceLimitationsListener(void *result, uint64_t a2)
{
  v3 = result[17];
  v2 = result[18];
  if (v3 >= v2)
  {
    v4 = result[16];
    v5 = ((v3 - v4) >> 3) + 1;
    if (v5 >> 61)
    {
      goto LABEL_13;
    }

    v6 = v2 - v4;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5)
    {
      v7 = v5;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = a2;
  result[17] = v3 + 1;
  return result;
}

void *webrtc::ResourceAdaptationProcessor::RemoveResourceLimitationsListener(void *result, uint64_t a2)
{
  v2 = result;
  v4 = result[16];
  v3 = result[17];
  if (v4 != v3)
  {
    v5 = result[16];
    while (*v5 != a2)
    {
      v5 += 8;
      v4 += 8;
      if (v5 == v3)
      {
        v4 = result[17];
        break;
      }
    }
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 - (v4 + 8));
    if (v3 != v4 + 8)
    {
      result = memmove(v4, v4 + 8, v3 - (v4 + 8));
    }

    v2[17] = &v6[v4];
  }

  return result;
}

void webrtc::ResourceAdaptationProcessor::AddResource(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 40));
  v4 = *(a1 + 112);
  if (v4 >= *(a1 + 120))
  {
    std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>((a1 + 104));
  }

  if (v4)
  {
    v5 = *a2;
    *v4 = *a2;
    if (v5)
    {
      (**v5)(v5);
    }

    *(a1 + 112) = v4 + 1;
    pthread_mutex_unlock((a1 + 40));
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6 + 8;
    }

    else
    {
      v7 = 0;
    }

    (*(**a2 + 40))(*a2, v7);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(**a2 + 32))(&__p);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/resource_adaptation_processor.cc");
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t webrtc::ResourceAdaptationProcessor::GetResources@<X0>(webrtc::ResourceAdaptationProcessor *this@<X0>, void *a2@<X8>)
{
  pthread_mutex_lock((this + 40));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = *(this + 13);
  v5 = *(this + 14);
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return pthread_mutex_unlock((this + 40));
}

void webrtc::ResourceAdaptationProcessor::RemoveResource(uint64_t a1, void *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(**a2 + 32))(&__p);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/resource_adaptation_processor.cc");
    if (v25 < 0)
    {
      operator delete(__p);
    }
  }

  (*(**a2 + 40))(*a2, 0);
  pthread_mutex_lock((a1 + 40));
  v12 = *(a1 + 104);
  v11 = *(a1 + 112);
  if (v12 == v11)
  {
    goto LABEL_8;
  }

  do
  {
    if (*v12 == *a2)
    {
      goto LABEL_8;
    }

    ++v12;
  }

  while (v12 != v11);
  do
  {
    __break(1u);
LABEL_8:
    ;
  }

  while (v11 == v12);
  v13 = v12 + 1;
  if (v12 + 1 != v11)
  {
    do
    {
      v14 = *(v13 - 1);
      *(v13 - 1) = *v13;
      *v13 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      ++v13;
    }

    while (v13 != v11);
    v11 = *(a1 + 112);
    v12 = v13 - 1;
  }

  while (v11 != v12)
  {
    v16 = *--v11;
    v15 = v16;
    if (v16)
    {
      (*(*v15 + 8))(v15);
    }
  }

  *(a1 + 112) = v12;
  pthread_mutex_unlock((a1 + 40));
  v17 = *a2;
  *a2 = 0;
  webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(a1, v17, v18, v19, v20, v21, v22, v23);
  if (v17)
  {
    (*v17)[1](v17);
  }
}

void webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(void *a1, void (***a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[3];
  {
    if (a2)
    {
      (**a2)(a2);
    }

    __p = a1;
    *&v67 = a2;
    *(&v67 + 1) = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0>;
    v68.n128_u64[0] = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0 &&>;
    (*(*v10 + 8))(v10, &__p, &v73, &v64);
    (*(&v67 + 1))(1, &__p, &__p);
    return;
  }

  v11 = a1[20];
  if (v11)
  {
    v12 = a1 + 20;
    v13 = a1[20];
    do
    {
      v14 = v13[4];
      v15 = v14 >= a2;
      v16 = v14 < a2;
      if (v15)
      {
        v12 = v13;
      }

      v13 = v13[v16];
    }

    while (v13);
    if (v12 != a1 + 20 && v12[4] <= a2)
    {
      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        v19 = v12;
        do
        {
          v18 = v19[2];
          v20 = *v18 == v19;
          v19 = v18;
        }

        while (!v20);
      }

      v21 = *(v12 + 22);
      v22 = *(v12 + 23);
      if (a1[19] == v12)
      {
        a1[19] = v18;
      }

      --a1[21];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v11, v12);
      v23 = v12[4];
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      operator delete(v12);
      if (a1[21])
      {
        webrtc::ResourceAdaptationProcessor::FindMostLimitedResources(&__p, a1);
        v73 = v68;
        v74 = v69;
        v75 = v70;
        v76 = v71.n128_u64[0];
        v24 = __p;
        if (__p)
        {
          for (i = v67; i != v24; i -= 8)
          {
            v27 = *(i - 1);
            v26 = v27;
            if (v27)
            {
              (*(*v26 + 8))(v26);
            }
          }

          operator delete(v24);
        }

        if (v22 + v21 > v76 + HIDWORD(v76))
        {
          v28 = a1[22];
          (*(**v28 + 16))(&v67);
          v31 = v28[10];
          v69 = v73;
          v70 = v74;
          v71 = v75;
          __p = v31;
          v72 = v76;
          v32 = a1[22];
          v65 = 0;
          v33 = *(v32 + 208);
          if (*(v32 + 216))
          {
            if ((v73.n128_u8[8] & 1) == 0 || v69.n128_u64[0] > v33)
            {
              v47 = DWORD1(v67);
              if ((*(&v67 + 4) & 0x100000000) != 0)
              {
                *(v32 + 48) = 1;
                *(v32 + 52) = v47;
                *(v32 + 56) = 1;
LABEL_48:
                v48 = v72;
                v49 = v70;
                *(v32 + 208) = v69;
                *(v32 + 224) = v49;
                v50 = v71;
                *(v32 + 240) = v71;
                *(v32 + 256) = v48;
                webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(v32, v50, v49, v30, v29, &v65);
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                {
                  webrtc::VideoSourceRestrictions::ToString(&v73, v51, v52, &v64);
                  webrtc::VideoAdaptationCounters::ToString(&v76, v53, &v63);
                  webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/resource_adaptation_processor.cc");
                  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v63.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v64.__r_.__value_.__l.__data_);
                  }
                }

                return;
              }

LABEL_53:
              v61 = std::__throw_bad_optional_access[abi:sn200100]();
              webrtc::ResourceAdaptationProcessor::FindMostLimitedResources(v61, v62);
              return;
            }

            if (v69.n128_u64[0] >= v33)
            {
              goto LABEL_36;
            }
          }

          else if ((v73.n128_u8[8] & 1) == 0)
          {
LABEL_36:
            if (*(v32 + 56) == 1)
            {
              *(v32 + 56) = 0;
            }

            goto LABEL_48;
          }

          v46 = DWORD1(v67);
          if ((*(&v67 + 4) & 0x100000000) != 0)
          {
            *(v32 + 48) = 0;
            *(v32 + 52) = v46;
            *(v32 + 56) = 1;
            goto LABEL_48;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v34 = a1[22];
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/video_stream_adapter.cc");
        }

        ++*(v34 + 40);
        *(v34 + 208) = 0;
        *(v34 + 216) = 0;
        *(v34 + 224) = 0;
        *(v34 + 232) = 0;
        *(v34 + 240) = 0;
        *(v34 + 248) = 0;
        *(v34 + 256) = 0;
        if (*(v34 + 56) == 1)
        {
          *(v34 + 56) = 0;
        }

        (*(**v34 + 16))(&__p);
        v73.n128_u64[0] = 0;
        webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(v34, v43, v44, v45, v42, &v73);
      }
    }
  }
}

uint64_t webrtc::ResourceAdaptationProcessor::FindMostLimitedResources(uint64_t this, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v2 = *(a2 + 152);
  if (v2 == (a2 + 160))
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    do
    {
      v4 = *(v2 + 22);
      v3 = *(v2 + 23);
      if (v4 + v3 > 0)
      {
        v17 = v16;
        std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(&v16);
      }

      if (v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = v3 == 0;
      }

      if (v5)
      {
        std::vector<webrtc::scoped_refptr<webrtc::VideoFrameBuffer>>::__emplace_back_slow_path<webrtc::scoped_refptr<webrtc::VideoFrameBuffer> const&>(&v16);
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v5 = *v7 == v2;
          v2 = v7;
        }

        while (!v5);
      }

      v2 = v7;
    }

    while (v7 != (a2 + 160));
    v8 = v16;
    v9 = v18;
  }

  *this = v8;
  *(this + 8) = 0;
  *(this + 16) = v9;
  *(this + 24) = 0;
  *(this + 25) = *v15;
  *(this + 28) = *&v15[3];
  *(this + 32) = 0;
  *(this + 33) = *v14;
  *(this + 36) = *&v14[3];
  *(this + 40) = 0;
  *(this + 44) = *&v13[3];
  *(this + 41) = *v13;
  *(this + 48) = 0;
  *(this + 52) = *&v12[3];
  *(this + 49) = *v12;
  *(this + 56) = 0;
  *(this + 60) = *&v11[3];
  *(this + 57) = *v11;
  *(this + 64) = 0;
  *(this + 68) = *&v10[3];
  *(this + 72) = 0;
  *(this + 65) = *v10;
  *(this + 76) = 0;
  return this;
}

void webrtc::ResourceAdaptationProcessor::OnResourceUsageStateMeasured(uint64_t a1, unint64_t *a2, int a3)
{
  pthread_mutex_lock((a1 + 40));
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  if (v6 != v7)
  {
    while (*v6 != *a2)
    {
      if (++v6 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_16:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(**a2 + 32))(&v117);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/resource_adaptation_processor.cc");
      if (v119 < 0)
      {
        operator delete(v117);
      }
    }

    pthread_mutex_unlock((a1 + 40));
    return;
  }

  pthread_mutex_unlock((a1 + 40));
  v8 = 3;
  v98 = 3;
  v100 = 0;
  v99 = 0;
  if (a3 == 1)
  {
    v22 = *a2;
    if (*a2)
    {
      (**v22)(*a2);
    }

    v23 = *(a1 + 176);
    (*(**v23 + 16))(&__p);
    ++v23[10];
    webrtc::VideoStreamAdapter::GetAdaptationUp(v23, &__p);
    if (HIDWORD(v117))
    {
      operator new();
    }

    MostLimitedResources = webrtc::ResourceAdaptationProcessor::FindMostLimitedResources(&__p, a1);
    v27 = __p;
    v28 = v111;
    v29 = *(a1 + 176);
    if (__p == v111 || HIDWORD(v116) + v116 < *(v29 + 256) + *(v29 + 260))
    {
LABEL_26:
      v107 = v22;
      if (v22)
      {
        (**v22)(v22);
      }

      if (HIDWORD(v117))
      {
LABEL_105:
        if (v22)
        {
          (*v22)[1](v22);
        }

        __src = 0uLL;
        __len[0] = 0;
        operator new();
      }

      v30 = *(v29 + 208);
      if (*(v29 + 216))
      {
        if ((BYTE8(v120) & 1) == 0 || v120 > v30)
        {
          v50 = v118;
          if ((v118 & 0x100000000) == 0)
          {
            goto LABEL_236;
          }

          *(v29 + 48) = 1;
          *(v29 + 52) = v50;
          *(v29 + 56) = 1;
          goto LABEL_104;
        }

        if (v120 >= v30)
        {
LABEL_33:
          if (*(v29 + 56) == 1)
          {
            *(v29 + 56) = 0;
          }

LABEL_104:
          v51 = v123[0];
          v52 = v121;
          *(v29 + 208) = v120;
          *(v29 + 224) = v52;
          v53 = v122;
          *(v29 + 240) = v122;
          *(v29 + 256) = v51;
          webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(v29, v53, v52, v26, v25, &v107);
          goto LABEL_105;
        }
      }

      else if ((BYTE8(v120) & 1) == 0)
      {
        goto LABEL_33;
      }

      v42 = v118;
      if ((v118 & 0x100000000) == 0)
      {
        goto LABEL_236;
      }

      *(v29 + 48) = 0;
      *(v29 + 52) = v42;
      *(v29 + 56) = 1;
      goto LABEL_104;
    }

    v35 = __p;
    while (*v35 != v22)
    {
      if (++v35 == v111)
      {
        goto LABEL_63;
      }
    }

    if (v35 == v111)
    {
LABEL_63:
      *(&__src + 1) = 0;
      __len[0] = 0;
      if (&__src <= "Resource " && &__src + 10 > "Resource ")
      {
        goto LABEL_233;
      }

      WORD4(__src) = 8736;
      *&__src = *"Resource ";
      HIBYTE(__len[0]) = 10;
      MostLimitedResources = ((*v22)[4])(&__p, v22);
      v37 = v112 >= 0 ? &__p : __p;
      v38 = v112 >= 0 ? HIBYTE(v112) : v111;
      if (!v37 && v38 != 0)
      {
        goto LABEL_233;
      }

      if ((__len[0] & 0x8000000000000000) == 0)
      {
        v40 = 22;
      }

      else
      {
        v40 = (__len[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__len[0] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__len[0]);
      }

      else
      {
        v41 = *(&__src + 1);
      }

      if (v40 - v41 >= v38)
      {
        if (v38)
        {
          if ((__len[0] & 0x8000000000000000) == 0)
          {
            p_src = &__src;
          }

          else
          {
            p_src = __src;
          }

          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_233;
          }

          MostLimitedResources = (p_src + v41);
          if (p_src + v41 <= v37 && (MostLimitedResources + v38) > v37)
          {
            goto LABEL_233;
          }

          v44 = v38;
          MostLimitedResources = memmove(MostLimitedResources, v37, v38);
          v45 = v41 + v44;
          if (SHIBYTE(__len[0]) < 0)
          {
            *(&__src + 1) = v41 + v44;
          }

          else
          {
            HIBYTE(__len[0]) = v45 & 0x7F;
          }

          *(p_src + v45) = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&__src, v40, v41 + v38 - v40, v41, v41, 0, v38, v37);
      }

      v54 = __len[0];
      if ((__len[0] & 0x8000000000000000) == 0)
      {
        v55 = 22;
      }

      else
      {
        v55 = (__len[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((__len[0] & 0x8000000000000000) == 0)
      {
        v56 = HIBYTE(__len[0]);
      }

      else
      {
        v56 = *(&__src + 1);
      }

      if (v55 - v56 >= 0x24)
      {
        v57 = &__src;
        if ((__len[0] & 0x8000000000000000) != 0)
        {
          v57 = __src;
        }

        v58 = v57 + v56;
        if (v57 + v56 <= " was not the most limited resource." && v58 + 36 > " was not the most limited resource.")
        {
          goto LABEL_233;
        }

        qmemcpy(v58, " was not the most limited resource.", 36);
        v59 = v56 + 36;
        if ((v54 & 0x8000000000000000) != 0)
        {
          *(&__src + 1) = v56 + 36;
        }

        else
        {
          HIBYTE(__len[0]) = v59 & 0x7F;
        }

        *(v57 + v59) = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&__src, v55, v56 - v55 + 36, v56, v56, 0, 0x24uLL, " was not the most limited resource.");
      }

      if (SHIBYTE(v112) < 0)
      {
        operator delete(__p);
      }

      v109 = __len[0];
      *v108 = __src;
      __src = 0uLL;
      __len[0] = 0;
      v60 = SHIBYTE(v109);
      if ((SHIBYTE(v109) & 0x8000000000000000) != 0)
      {
        v61 = v108[0];
        v62 = v108[1];
        LODWORD(__p) = 0;
        if (v108[1] > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_235;
        }
      }

      else
      {
        LODWORD(__p) = 0;
        v61 = v108;
        v62 = SHIBYTE(v109);
      }

      if (v62 > 0x16)
      {
        operator new();
      }

      MostLimitedResources = &v111;
      BYTE7(v113) = v62;
      v63 = (&v111 + v62);
      if (&v111 > v61 || v63 <= v61)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if ((v111 - __p) < 9)
      {
        goto LABEL_26;
      }

      v107 = v22;
      if (v22)
      {
        (**v22)(v22);
        webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v107, &v120, v123);
        MostLimitedResources = ((*v22)[1])(v22);
      }

      else
      {
        webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v107, &v120, v123);
      }

      *(&__src + 1) = 0;
      __len[0] = 0;
      if (&__src > "Resource " || &__src + 10 <= "Resource ")
      {
        WORD4(__src) = 8736;
        *&__src = *"Resource ";
        HIBYTE(__len[0]) = 10;
        MostLimitedResources = ((*v22)[4])(&__p, v22);
        v84 = v112 >= 0 ? &__p : __p;
        v85 = v112 >= 0 ? HIBYTE(v112) : v111;
        if (v84 || !v85)
        {
          if ((__len[0] & 0x8000000000000000) == 0)
          {
            v86 = 22;
          }

          else
          {
            v86 = (__len[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((__len[0] & 0x8000000000000000) == 0)
          {
            v87 = HIBYTE(__len[0]);
          }

          else
          {
            v87 = *(&__src + 1);
          }

          if (v86 - v87 < v85)
          {
            std::string::__grow_by_and_replace(&__src, v86, v87 + v85 - v86, v87, v87, 0, v85, v84);
LABEL_207:
            v91 = __len[0];
            if ((__len[0] & 0x8000000000000000) == 0)
            {
              v92 = 22;
            }

            else
            {
              v92 = (__len[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((__len[0] & 0x8000000000000000) == 0)
            {
              v93 = HIBYTE(__len[0]);
            }

            else
            {
              v93 = *(&__src + 1);
            }

            if (v92 - v93 >= 0x29)
            {
              v94 = &__src;
              if ((__len[0] & 0x8000000000000000) != 0)
              {
                v94 = __src;
              }

              v95 = v94 + v93;
              if (v94 + v93 <= " was not the only most limited resource." && v95 + 41 > " was not the only most limited resource.")
              {
                goto LABEL_233;
              }

              qmemcpy(v95, " was not the only most limited resource.", 41);
              v96 = v93 + 41;
              if ((v91 & 0x8000000000000000) != 0)
              {
                *(&__src + 1) = v93 + 41;
              }

              else
              {
                HIBYTE(__len[0]) = v96 & 0x7F;
              }

              *(v94 + v96) = 0;
            }

            else
            {
              std::string::__grow_by_and_replace(&__src, v92, v93 - v92 + 41, v93, v93, 0, 0x29uLL, " was not the only most limited resource.");
            }

            if (SHIBYTE(v112) < 0)
            {
              operator delete(__p);
            }

            v109 = __len[0];
            *v108 = __src;
            __src = 0uLL;
            __len[0] = 0;
            v60 = SHIBYTE(v109);
            if ((SHIBYTE(v109) & 0x8000000000000000) == 0)
            {
              LODWORD(__p) = 1;
              v61 = v108;
              v62 = SHIBYTE(v109);
              goto LABEL_228;
            }

            v61 = v108[0];
            v62 = v108[1];
            LODWORD(__p) = 1;
            if (v108[1] <= 0x7FFFFFFFFFFFFFF7)
            {
LABEL_228:
              if (v62 > 0x16)
              {
                operator new();
              }

              MostLimitedResources = &v111;
              BYTE7(v113) = v62;
              v63 = (&v111 + v62);
              if (&v111 <= v61 && v63 > v61)
              {
                goto LABEL_233;
              }

LABEL_136:
              if (v62)
              {
                memmove(&v111, v61, v62);
              }

              *v63 = 0;
              if (v60 < 0)
              {
                operator delete(v108[0]);
              }

              if (SHIBYTE(__len[0]) < 0)
              {
                operator delete(__src);
              }

              if (v27)
              {
                while (v28 != v27)
                {
                  v79 = *--v28;
                  v78 = v79;
                  if (v79)
                  {
                    (*(*v78 + 8))(v78);
                  }
                }

                operator delete(v27);
              }

              v8 = __p;
              v98 = __p;
              v99 = v111;
              v100 = BYTE7(v113);
              BYTE7(v113) = 0;
              LOBYTE(v111) = 0;
              if (v22)
              {
                (*v22)[1](v22);
              }

              goto LABEL_147;
            }

LABEL_235:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (!v85)
          {
            goto LABEL_207;
          }

          if ((__len[0] & 0x8000000000000000) == 0)
          {
            v88 = &__src;
          }

          else
          {
            v88 = __src;
          }

          if ((v85 & 0x8000000000000000) == 0)
          {
            MostLimitedResources = (v88 + v87);
            if (v88 + v87 > v84 || MostLimitedResources + v85 <= v84)
            {
              v89 = v85;
              MostLimitedResources = memmove(MostLimitedResources, v84, v85);
              v90 = v87 + v89;
              if (SHIBYTE(__len[0]) < 0)
              {
                *(&__src + 1) = v87 + v89;
              }

              else
              {
                HIBYTE(__len[0]) = v90 & 0x7F;
              }

              *(v88 + v90) = 0;
              goto LABEL_207;
            }
          }
        }
      }
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  if (!a3)
  {
    v9 = *a2;
    if (*a2)
    {
      (**v9)(*a2);
    }

    webrtc::VideoStreamAdapter::GetAdaptationDown(*(a1 + 176));
    v10 = HIDWORD(v117);
    if (HIDWORD(v117) == 1)
    {
      webrtc::ResourceAdaptationProcessor::FindMostLimitedResources(&__p, a1);
      __src = v113;
      *__len = v114;
      v105 = v115;
      v11 = __p;
      v106 = v116;
      if (__p)
      {
        for (i = v111; i != v11; --i)
        {
          v14 = *(i - 1);
          v13 = v14;
          if (v14)
          {
            (*(*v13 + 8))(v13);
          }
        }

        operator delete(v11);
      }

      v107 = v9;
      if (v9)
      {
        (**v9)(v9);
        webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v107, &__src, &v106);
        (*v9)[1](v9);
      }

      else
      {
        webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v107, &__src, &v106);
      }

      v10 = HIDWORD(v117);
    }

    if (v10)
    {
      operator new();
    }

    v102 = v9;
    if (v9)
    {
      (**v9)(v9);
      webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v102, &v120, v123);
      (*v9)[1](v9);
      v31 = *(a1 + 176);
      (**v9)(v9);
      v101 = v9;
      if (HIDWORD(v117))
      {
        goto LABEL_99;
      }
    }

    else
    {
      webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v102, &v120, v123);
      v31 = *(a1 + 176);
      v101 = 0;
      if (HIDWORD(v117))
      {
        goto LABEL_99;
      }
    }

    v34 = *(v31 + 208);
    if (*(v31 + 216))
    {
      if ((BYTE8(v120) & 1) == 0 || v120 > v34)
      {
        v46 = v118;
        if ((v118 & 0x100000000) != 0)
        {
          *(v31 + 48) = 1;
          *(v31 + 52) = v46;
          *(v31 + 56) = 1;
          goto LABEL_98;
        }

        goto LABEL_236;
      }

      if (v120 >= v34)
      {
        goto LABEL_50;
      }
    }

    else if ((BYTE8(v120) & 1) == 0)
    {
LABEL_50:
      if (*(v31 + 56) == 1)
      {
        *(v31 + 56) = 0;
      }

      goto LABEL_98;
    }

    v36 = v118;
    if ((v118 & 0x100000000) != 0)
    {
      *(v31 + 48) = 0;
      *(v31 + 52) = v36;
      *(v31 + 56) = 1;
LABEL_98:
      v47 = v123[0];
      v48 = v121;
      *(v31 + 208) = v120;
      *(v31 + 224) = v48;
      v49 = v122;
      *(v31 + 240) = v122;
      *(v31 + 256) = v47;
      webrtc::VideoStreamAdapter::BroadcastVideoRestrictionsUpdate(v31, v49, v48, v33, v32, &v101);
LABEL_99:
      if (v9)
      {
        (*v9)[1](v9);
      }

      operator new();
    }

LABEL_236:
    v97 = std::__throw_bad_optional_access[abi:sn200100]();
    return;
  }

LABEL_147:
  v65 = (a1 + 240);
  v64 = *(a1 + 240);
  if (!v64)
  {
    goto LABEL_156;
  }

  v66 = *a2;
  v67 = a1 + 240;
  do
  {
    v68 = *(v64 + 32);
    v69 = v68 >= v66;
    v70 = v68 < v66;
    if (v69)
    {
      v67 = v64;
    }

    v64 = *(v64 + 8 * v70);
  }

  while (v64);
  if (v67 == v65 || v66 < *(v67 + 32) || *(v67 + 40) != v8)
  {
LABEL_156:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_165;
    }

    MostLimitedResources = (*(**a2 + 32))(&v117);
    if (a3 == 1)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\t\t\n", v71, v72, v73, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/adaptation/resource_adaptation_processor.cc");
      if (v119 < 0)
      {
        operator delete(v117);
      }

      v8 = v98;
LABEL_165:
      if (v8 == 3)
      {
        std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(a1 + 240));
        *(a1 + 240) = 0;
        *(a1 + 248) = 0;
        *(a1 + 232) = v65;
      }

      else
      {
        v80 = *a2;
        v81 = *v65;
        if (!*v65)
        {
LABEL_173:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v82 = v81;
            v83 = v81[4];
            if (v80 >= v83)
            {
              break;
            }

            v81 = *v82;
            if (!*v82)
            {
              goto LABEL_173;
            }
          }

          if (v83 >= v80)
          {
            break;
          }

          v81 = v82[1];
          if (!v81)
          {
            goto LABEL_173;
          }
        }
      }

      goto LABEL_174;
    }

LABEL_234:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(MostLimitedResources);
  }

LABEL_174:
  if (v100 < 0)
  {
    operator delete(v99);
  }
}

void webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(void *a1, void *a2, __int128 *a3, _DWORD *a4)
{
  v7 = a1 + 20;
  v6 = a1[20];
  if (!v6)
  {
LABEL_7:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    while (1)
    {
      v9 = v6;
      v10 = v6[4];
      if (v10 <= v8)
      {
        break;
      }

      v6 = *v9;
      if (!*v9)
      {
        goto LABEL_7;
      }
    }

    if (v10 >= v8)
    {
      break;
    }

    v6 = v9[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v11 = *(v9 + 48);
  v12 = *(a3 + 8);
  v13 = v11 != 1 || v12 == 0;
  if (v13)
  {
    if (v11 != v12)
    {
      goto LABEL_27;
    }
  }

  else if (v9[5] != *a3)
  {
    goto LABEL_27;
  }

  v14 = *(v9 + 64);
  if (v14 == 1 && *(a3 + 24))
  {
    if (v9[7] != *(a3 + 2))
    {
      goto LABEL_27;
    }
  }

  else if (v14 != *(a3 + 24))
  {
    goto LABEL_27;
  }

  v15 = *(v9 + 80);
  if (v15 == 1 && *(a3 + 40))
  {
    if (*(v9 + 9) != *(a3 + 4))
    {
      goto LABEL_27;
    }

LABEL_25:
    if (*(v9 + 23) == a4[1] && *(v9 + 22) == *a4)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v15 == *(a3 + 40))
  {
    goto LABEL_25;
  }

LABEL_27:
  v16 = *a4;
  v17 = *a3;
  v18 = a3[1];
  *(v9 + 9) = a3[2];
  *(v9 + 7) = v18;
  *(v9 + 5) = v17;
  v9[11] = v16;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  v19 = a1[19];
  if (v19 != v7)
  {
    do
    {
      v20 = v19[4];
      if (v20)
      {
        (**v20)(v19[4]);
      }

      v21 = v32[0];
      if (!v32[0])
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v22 = v21;
          v23 = v21[4];
          if (v20 >= v23)
          {
            break;
          }

          v21 = *v22;
          if (!*v22)
          {
            goto LABEL_38;
          }
        }

        if (v23 >= v20)
        {
          break;
        }

        v21 = v22[1];
        if (!v21)
        {
          goto LABEL_38;
        }
      }

      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      v24 = v19[1];
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
          v25 = v19[2];
          v13 = *v25 == v19;
          v19 = v25;
        }

        while (!v13);
      }

      v19 = v25;
    }

    while (v25 != v7);
  }

  v26 = a1[16];
  v27 = a1[17];
  while (v26 != v27)
  {
    v28 = *v26;
    v29 = *a2;
    v30 = v29;
    if (v29)
    {
      (**v29)(v29);
    }

    (*(*v28 + 16))(v28, &v30, &v31);
    if (v30)
    {
      (*v30)[1](v30);
    }

    ++v26;
  }

  std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(v32[0]);
}

void webrtc::ResourceAdaptationProcessor::OnVideoSourceRestrictionsUpdated(void *a1, uint64_t a2, _DWORD *a3, uint64_t *a4, __int128 *a5)
{
  v7 = *a4;
  if (*a4)
  {
    v19 = *a4;
    (**v7)(v7);
    webrtc::ResourceAdaptationProcessor::UpdateResourceLimitations(a1, &v19, a5, a3);
    v9 = *(*v7 + 8);

    v9(v7);
  }

  else if (!(*a3 + a3[1]))
  {
    v10 = a1 + 20;
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(a1[20]);
    v12 = a1[30];
    v11 = a1 + 30;
    *(v11 - 11) = v10;
    *v10 = 0;
    *(v11 - 9) = 0;
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v12);
    *v11 = 0;
    v11[1] = 0;
    *(v11 - 1) = v11;
    v14 = *(v11 - 14);
    for (i = *(v11 - 13); v14 != i; ++v14)
    {
      v15 = *v14;
      v18 = 0;
      v17[0] = 0;
      v17[1] = 0;
      v16 = v17;
      (*(*v15 + 16))(v15, &v18, &v16);
      std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(v17[0]);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::ResourceAdaptationProcessor::ResourceListenerDelegate::OnResourceUsageStateMeasured(webrtc::scoped_refptr<webrtc::Resource>,webrtc::ResourceUsageState)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v5 = v2;
  if (v2)
  {
    (**v2)(v2);
  }

  (*(*v3 + 32))(v3, &v5, *(v1 + 4));
  result = v5;
  if (v5)
  {
    return ((*v5)[1])(v5);
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::ResourceAdaptationProcessor::ResourceListenerDelegate::OnResourceUsageStateMeasured(webrtc::scoped_refptr<webrtc::Resource>,webrtc::ResourceUsageState)::$_0>(uint64_t result, void **a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = v3[1];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      if (*v3)
      {
        (*(**v3 + 8))(*v3);
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

BOOL webrtc::RefCountedObject<webrtc::ResourceAdaptationProcessor::ResourceListenerDelegate>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::Resource>,std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>,std::less<webrtc::scoped_refptr<webrtc::Resource>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::Resource>,webrtc::VideoStreamAdapter::RestrictionsWithCounters>>>::destroy(a1[1]);
    v2 = a1[4];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0 &&>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1)
  {
    (**v1)(a1[1]);
    webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(v2, v1);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  else
  {
    v5 = *a1;

    return webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(v5, 0);
  }
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ResourceAdaptationProcessor::RemoveLimitationsImposedByResource(webrtc::scoped_refptr<webrtc::Resource>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  result = *(a2 + 1);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dcsctp::RestartOfAnAssociationWithNewAddressesCause::~RestartOfAnAssociationWithNewAddressesCause(dcsctp::RestartOfAnAssociationWithNewAddressesCause *this)
{
  *this = &unk_28829A910;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829A910;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::RestartOfAnAssociationWithNewAddressesCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16) - *(a1 + 8);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 4;
  v14 = v12 + v10 + 4;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 4);
    v11 = *a2;
  }

  v15 = v11 + v12;
  *v15 = 2816;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::RestartOfAnAssociationWithNewAddressesCause::ToString(v21);
  }

  else
  {
    v16 = *(a1 + 16) - *(a1 + 8);
    if (v16)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = 0;
    }

    if (v10 >= v16)
    {
      v18 = *(a1 + 16) - *(a1 + 8);
    }

    else
    {
      v18 = v10;
    }

    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = (*a2 + v12 + 4);

      memcpy(v20, v17, v18);
    }
  }
}

double dcsctp::RetransmissionQueue::RetransmissionQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, char a12, char a13)
{
  *a1 = a4;
  v16 = *a11;
  v17 = a11[1];
  v18 = a11[2];
  *(a1 + 56) = a11[3];
  *(a1 + 40) = v18;
  *(a1 + 24) = v17;
  *(a1 + 8) = v16;
  v19 = a11[4];
  v20 = a11[5];
  v21 = a11[6];
  *(a1 + 120) = a11[7];
  *(a1 + 104) = v21;
  *(a1 + 88) = v20;
  *(a1 + 72) = v19;
  v22 = a11[8];
  v23 = a11[9];
  v24 = a11[10];
  *(a1 + 184) = a11[11];
  *(a1 + 168) = v24;
  *(a1 + 152) = v23;
  *(a1 + 136) = v22;
  *(a1 + 200) = a12;
  *(a1 + 208) = a2;
  *(a1 + 216) = a3;
  v25 = 16;
  if (a13)
  {
    v25 = 20;
  }

  *(a1 + 224) = v25;
  v26 = *(a8 + 24);
  if (!v26)
  {
    *(a1 + 256) = 0;
    v27 = a10;
    v28 = *(a9 + 24);
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v26 == a8)
  {
    *(a1 + 256) = a1 + 232;
    v29 = a1;
    (*(**(a8 + 24) + 24))(*(a8 + 24));
    a1 = v29;
    v27 = a10;
    v28 = *(a9 + 24);
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_11:
    *(a1 + 288) = 0;
    goto LABEL_13;
  }

  *(a1 + 256) = v26;
  *(a8 + 24) = 0;
  v27 = a10;
  v28 = *(a9 + 24);
  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v28 == a9)
  {
    *(a1 + 288) = a1 + 264;
    v30 = a1;
    (*(**(a9 + 24) + 24))(*(a9 + 24));
    a1 = v30;
  }

  else
  {
    *(a1 + 288) = v28;
    *(a9 + 24) = 0;
  }

LABEL_13:
  *(a1 + 320) = *(a1 + 24) * *(a1 + 136);
  *(a1 + 328) = a6;
  *(a1 + 376) = 0;
  *(a1 + 336) = a6;
  *(a1 + 344) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  v32 = *(a1 + 224);
  v33 = (a5 - 1);
  *(a1 + 296) = v27;
  *(a1 + 304) = v33;
  *(a1 + 312) = v33;
  *(a1 + 316) = 1;
  *(a1 + 384) = a7;
  *(a1 + 392) = v32;
  *(a1 + 432) = a1 + 408;
  *(a1 + 400) = v33;
  *(a1 + 408) = &unk_28829A940;
  *(a1 + 416) = a1;
  *(a1 + 520) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = a1 + 520;
  *(a1 + 536) = a1 + 544;
  *(a1 + 576) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  return result;
}

uint64_t dcsctp::RetransmissionQueue::HandleSack(dcsctp::RetransmissionQueue *this, Timestamp a2, const dcsctp::SackChunk *a3)
{
  v4 = *(a3 + 2);
  v5 = v4;
  v6 = v4;
  if (*(this + 316) == 1)
  {
    v7 = *(this + 78);
    v8 = v4 >= v7;
    v9 = v4 - v7;
    v10 = v9 != 0 && v8;
    if (v9 != 0x80000000)
    {
      v10 = v9 >= 0;
    }

    if (!v10)
    {
      v9 |= 0xFFFFFFFF00000000;
    }

    v6 = v9 + *(this + 38);
  }

  v11 = *(this + 50);
  if (v6 < v11)
  {
    return 0;
  }

  v12 = *(this + 60);
  v13 = v11 + v12;
  if (v6 > v13)
  {
    return 0;
  }

  if (*(this + 316))
  {
    v15 = *(this + 78);
    v8 = v4 >= v15;
    v16 = v4 - v15;
    v17 = v16 != 0 && v8;
    if (v16 != 0x80000000)
    {
      v17 = v16 >= 0;
    }

    if (!v17)
    {
      v16 |= 0xFFFFFFFF00000000;
    }

    v5 = v16 + *(this + 38);
  }

  v18 = *(this + 62);
  *(this + 38) = v5;
  *(this + 78) = v4;
  *(this + 316) = 1;
  if (*(a3 + 3) == *(a3 + 2) && v5 > v11 && v13 + 1 > v5)
  {
    v20 = ~v11 + v5;
    if (v12 <= v20)
    {
      __break(1u);
      goto LABEL_83;
    }

    v21 = *(*(this + 56) + 8 * ((*(this + 59) + v20) / 0x2E)) + 88 * ((*(this + 59) + v20) % 0x2E);
    if (!*(v21 + 22) && a2.var0 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = *(v21 + 8);
      v46 = 0x8000000000000000;
      if (v45 != 0x8000000000000000)
      {
        if (v45 != 0x7FFFFFFFFFFFFFFFLL && a2.var0 != 0x8000000000000000)
        {
          v46 = a2.var0 - v45;
        }

        if (v46 + 0x7FFFFFFFFFFFFFFFLL <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v52 = v46;
          v48 = *(this + 32);
          if (!v48)
          {
            goto LABEL_83;
          }

          v49 = a3;
          (*(*v48 + 48))(v48, &v52);
          a3 = v49;
        }
      }
    }
  }

  if (*(this + 376) == 1)
  {
    if (*(this + 46) <= v5)
    {
      v22 = 0;
      *(this + 376) = 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = a3;
  v24 = *(a3 + 3) - *(a3 + 2);
  if (v24)
  {
    v25 = *(a3 + 2);
  }

  else
  {
    v25 = 0;
  }

  dcsctp::OutstandingData::HandleSack(this + 49, v5, v25, v24 >> 2, v22, &v52);
  v26 = v54;
  v27 = v55;
  if (v54 != v55)
  {
    do
    {
      v28 = *v26++;
      (*(**this + 192))(*this, v28);
      (*(**this + 200))(*this, v28);
    }

    while (v26 != v27);
  }

  v29 = __p;
  v30 = v57;
  if (__p != v57)
  {
    do
    {
      v31 = *v29++;
      (*(**this + 184))(*this, v31, 1);
      (*(**this + 200))(*this, v31);
    }

    while (v29 != v30);
  }

  v32 = *(v23 + 3);
  v33 = *(this + 61);
  v8 = v32 >= v33;
  v34 = v32 - v33;
  if (!v8)
  {
    v34 = 0;
  }

  *(this + 41) = v34;
  if (v5 > v11)
  {
    v35 = *(this + 37);
    if (*(v35 + 156) == 1)
    {
      (*(**(v35 + 136) + 24))(*(v35 + 136));
      *(v35 + 160) = 0;
      *(v35 + 156) = 0;
    }

    v36 = *(this + 3);
    v37 = v36 + v18;
    v38 = *(this + 40);
    if (v38 <= *(this + 42))
    {
      if (v37 >= v38 && (*(this + 376) & 1) == 0)
      {
        if (v36 >= v52)
        {
          v36 = v52;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v39 = *(this + 43) + v52;
      *(this + 43) = v39;
      v8 = v39 >= v38;
      v40 = v39 - v38;
      if (v8 && v37 >= v38)
      {
        *(this + 43) = v40;
LABEL_55:
        *(this + 40) = v36 + v38;
      }
    }
  }

  if (v53 == 1 && (*(this + 376) & 1) == 0)
  {
    v41 = *(this + 40) >> 1;
    if (v41 <= *(this + 3) * *(this + 18))
    {
      v41 = *(this + 3) * *(this + 18);
    }

    *(this + 40) = v41;
    *(this + 42) = v41;
    *(this + 43) = 0;
    v42 = *(this + 120) + *(this + 50);
    *(this + 376) = 1;
    *(this + 46) = v42;
  }

  if (!v52)
  {
    goto LABEL_64;
  }

  v43 = *(this + 36);
  if (!v43)
  {
LABEL_83:
    v50 = std::__throw_bad_function_call[abi:sn200100]();
    return dcsctp::RetransmissionQueue::GetChunksForFastRetransmit(v50, v51);
  }

  (*(*v43 + 48))(v43);
LABEL_64:
  if (*(this + 60))
  {
    v44 = *(this + 37);
    if ((*(v44 + 156) & 1) == 0)
    {
      dcsctp::Timer::Start(v44);
    }
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  return 1;
}

void dcsctp::RetransmissionQueue::GetChunksForFastRetransmit(dcsctp::RetransmissionQueue *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  dcsctp::OutstandingData::ExtractChunksThatCanFit(this + 49, this + 64, a2, &v24);
  if (*(this + 66))
  {
    std::set<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>::insert[abi:sn200100]<std::__tree_const_iterator<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__tree_node<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,void *> *,long>>(this + 67, *(this + 64), this + 65);
    std::__tree<sigslot::_signal_base_interface *>::destroy(this + 512, *(this + 65));
    *(this + 64) = this + 520;
    *(this + 520) = 0u;
  }

  v5 = v24;
  *a3 = v24;
  v6 = v25;
  *(a3 + 8) = v25;
  v7 = v6;
  v8 = v6 - v5;
  if (v6 != v5)
  {
    if (*v5 == *(this + 100) + 1)
    {
      v9 = *(this + 37);
      if (*(v9 + 156) == 1)
      {
        (*(**(v9 + 136) + 24))(*(v9 + 136));
        *(v9 + 160) = 0;
        *(v9 + 156) = 0;
      }
    }

    v10 = *(this + 37);
    if ((*(v10 + 156) & 1) == 0)
    {
      dcsctp::Timer::Start(v10);
    }

    v11 = *(this + 28) + 3;
    if ((v8 - 56) >= 0x38)
    {
      v14 = 0;
      v15 = 0;
      v16 = (v8 - 56) / 0x38uLL + 1;
      v13 = &v5[56 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = (v5 + 88);
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v19 = *(v17 - 16);
        v20 = *(v17 - 2);
        v21 = *(v17 - 14);
        v22 = *v17;
        v17 += 28;
        v14 += (v11 - v19 + v21) & 0xFFFFFFFC;
        v15 += (v11 - v20 + v22) & 0xFFFFFFFC;
        v18 -= 2;
      }

      while (v18);
      v12 = v15 + v14;
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
      v13 = v5;
    }

    do
    {
      v12 += (v11 - *(v13 + 6) + *(v13 + 8)) & 0xFFFFFFFC;
      v13 += 56;
    }

    while (v13 != v7);
LABEL_15:
    v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v23.i64[1] = v12;
    *(this + 22) = vaddq_s64(*(this + 22), v23);
    return;
  }

  __break(1u);
}

void dcsctp::RetransmissionQueue::GetChunksToSend(dcsctp::RetransmissionQueue *this@<X0>, Timestamp a2@<0:X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(this + 40);
  v8 = *(this + 62);
  v9 = v7 >= v8;
  v10 = v7 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  if (*(this + 63))
  {
    v11 = *(this + 41) + *(this + 28) + 3;
  }

  else
  {
    v11 = *(this + 3);
  }

  if (v11 < v10)
  {
    v10 = v11;
  }

  if (v10 >= a3)
  {
    v10 = a3;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  dcsctp::OutstandingData::ExtractChunksThatCanFit(this + 49, this + 67, v10 & 0xFFFFFFFFFFFFFFFCLL, &v42);
  v13 = v42;
  *a4 = v42;
  v14 = v43;
  *(a4 + 1) = v43;
  v15 = *(this + 28);
  if (v13 != v14)
  {
    v16 = v15 + 3;
    v17 = v14 - v13 - 56;
    if (v17 >= 0x38)
    {
      v20 = 0;
      v21 = 0;
      v22 = v17 / 0x38 + 1;
      v19 = v13 + 56 * (v22 & 0xFFFFFFFFFFFFFFELL);
      v23 = (v13 + 88);
      v24 = v22 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v25 = *(v23 - 16);
        v26 = *(v23 - 2);
        v27 = *(v23 - 14);
        v28 = *v23;
        v23 += 28;
        v20 += (v16 - v25 + v27) & 0xFFFFFFFC;
        v21 += (v16 - v26 + v28) & 0xFFFFFFFC;
        v24 -= 2;
      }

      while (v24);
      v18 = v21 + v20;
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
      v19 = v13;
    }

    do
    {
      v18 += (v16 - *(v19 + 24) + *(v19 + 32)) & 0xFFFFFFFC;
      v19 += 56;
    }

    while (v19 != v14);
LABEL_17:
    v12 -= v18;
    v29.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v29.i64[1] = v18;
    *(this + 22) = vaddq_s64(*(this + 22), v29);
  }

  if (v12 > v15)
  {
    do
    {
      (*(**(this + 48) + 16))(&v42);
      if ((v51 & 1) == 0)
      {
        break;
      }

      v30 = *(this + 28);
      v32 = __p[0];
      v31 = __p[1];
      *(this + 41) += __p[0] - __p[1];
      if (*(this + 200))
      {
        v33 = v49;
      }

      else
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (*(this + 200))
      {
        v34 = v48;
      }

      else
      {
        v34 = -1;
      }

      v35 = dcsctp::OutstandingData::Insert(this + 392, v42, &v43, a2.var0, v34, v33, v50);
      v36 = v51;
      if (v37)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_44;
        }

        if (v50)
        {
          v38 = v35;
          (*(**this + 176))(*this);
          v35 = v38;
          if ((v51 & 1) == 0)
          {
            goto LABEL_44;
          }

          v39 = a4[1];
          if (v39 >= a4[2])
          {
LABEL_36:
            std::vector<std::pair<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data>>::__emplace_back_slow_path<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,dcsctp::Data>(a4);
          }
        }

        else
        {
          v39 = a4[1];
          if (v39 >= a4[2])
          {
            goto LABEL_36;
          }
        }

        if (!v39)
        {
LABEL_44:
          __break(1u);
          return;
        }

        *v39 = v35;
        *(v39 + 8) = v43;
        *(v39 + 32) = 0;
        *(v39 + 40) = 0;
        *(v39 + 24) = 0;
        *(v39 + 24) = *__p;
        *(v39 + 40) = v45;
        __p[0] = 0;
        __p[1] = 0;
        v45 = 0;
        v40 = v47;
        *(v39 + 48) = v46;
        *(v39 + 50) = v40;
        a4[1] = v39 + 56;
        v36 = v51;
      }

      if ((v36 & 1) != 0 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v12 -= (&v31[v30] - v32 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v12 > *(this + 28));
  }

  if (*a4 != a4[1])
  {
    v41 = *(this + 37);
    if ((*(v41 + 156) & 1) == 0)
    {
      dcsctp::Timer::Start(v41);
    }
  }
}

uint64_t std::__function::__func<dcsctp::RetransmissionQueue::RetransmissionQueue(std::string_view,dcsctp::DcSctpSocketCallbacks *,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,dcsctp::SendQueue &,std::function<void ()(webrtc::TimeDelta)>,std::function<void ()(void)>,dcsctp::Timer &,dcsctp::DcSctpOptions const&,BOOL,BOOL)::$_0,std::allocator<dcsctp::RetransmissionQueue::RetransmissionQueue(std::string_view,dcsctp::DcSctpSocketCallbacks *,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,dcsctp::SendQueue &,std::function<void ()(webrtc::TimeDelta)>,std::function<void ()(void)>,dcsctp::Timer &,dcsctp::DcSctpOptions const&,BOOL,BOOL)::$_0>,BOOL ()(webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,webrtc::StrongAlias<dcsctp::OutgoingMessageIdTag,unsigned int>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829A940;
  a2[1] = v2;
  return result;
}

uint64_t dcsctp::RetransmissionTimeout::ObserveRTT(uint64_t this, TimeDelta a2)
{
  if (a2.var0 < 0 || *(this + 16) < a2.var0)
  {
    return this;
  }

  if (*(this + 32) == 1)
  {
    v2 = a2.var0 >> 1;
    *(this + 40) = a2;
    *(this + 48) = a2.var0 >> 1;
    *(this + 32) = 0;
    v3 = *(this + 24);
    if ((a2.var0 >> 1) >= v3)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v4 = *(this + 40);
    v5 = v4 - a2.var0;
    v6 = 0x8000000000000000;
    if (v4 == 0x8000000000000000 || a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x8000000000000000;
    }

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v5 < 0)
    {
      v5 = -v5;
    }

    v8 = llround(*(this + 48) * 0.75);
    v9 = llround(vcvtd_n_f64_u64(v5, 2uLL));
    v10 = v9 == 0x8000000000000000 || v8 == 0x8000000000000000;
    v11 = v8 + v9;
    if (v10)
    {
      v11 = 0x8000000000000000;
    }

    v12 = v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL;
    v13 = llround(v4 * 0.875);
    v14 = vcvtd_n_f64_u64(a2.var0, 3uLL);
    if (v12)
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v2 = v11;
    }

    v15 = llround(v14);
    if (v15 != 0x8000000000000000 && v13 != 0x8000000000000000)
    {
      v6 = v13 + v15;
    }

    if (v13 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a2.var0 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      a2.var0 = v6;
    }

    *(this + 40) = a2;
    *(this + 48) = v2;
    v3 = *(this + 24);
    if (v2 >= v3)
    {
      goto LABEL_39;
    }
  }

  *(this + 48) = v3;
  v2 = v3;
LABEL_39:
  v18 = v2 == 0xE000000000000000 || a2.var0 == 0x8000000000000000;
  v19 = a2.var0 + 4 * v2;
  if (v18)
  {
    v19 = 0x8000000000000000;
  }

  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(this + 56) = v19;
  v20 = *(this + 8);
  if (v20 < *this)
  {
    __break(1u);
  }

  else
  {
    v21 = v20 < v19;
    v22 = 56;
    if (v21)
    {
      v22 = 8;
    }

    if (v19 >= *this)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    *(this + 56) = *(this + v23);
  }

  return this;
}

uint64_t webrtc::ReverbDecayEstimator::ReverbDecayEstimator(uint64_t this, const webrtc::EchoCanceller3Config *a2)
{
  v2 = *(a2 + 30);
  *this = v2;
  *(this + 4) = v2 << 6;
  *(this + 8) = *(a2 + 69) < 0.0;
  *(this + 28) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  v3 = *(a2 + 30);
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (v3 != 9)
  {
    if (v3 - 3 > 5)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0x300000003;
  *(this + 104) = 0;
  *(this + 112) = 0;
  v4 = *(a2 + 15);
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 120) = 0;
  if (v4)
  {
    if (!(v4 >> 62))
    {
      operator new();
    }

LABEL_8:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 144) = vabs_f32(*(a2 + 276));
  *(this + 152) = 0;
  return this;
}

void webrtc::ReverbDecayEstimator::Update(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, char a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    v7 = *a1;
    if (*a1 - 4 >= a5 && a5 >= 1 && *(a1 + 4) == a3 && (a6 & 1) != 0)
    {
      if (*(a1 + 8) == 1)
      {
        v10 = *a4 * 0.2;
        if (!*(a4 + 4))
        {
          v10 = 0.0;
        }

        if (v10 < *(a1 + 156))
        {
          v10 = *(a1 + 156);
        }

        *(a1 + 156) = v10;
        if (v10 != 0.0)
        {
          if (!a3)
          {
            a2 = 0;
          }

          if (*(a1 + 104) >= v7)
          {

            webrtc::ReverbDecayEstimator::EstimateDecay(a1, a2, a3, a5);
          }

          else
          {
            v11 = a1;
            webrtc::ReverbDecayEstimator::AnalyzeFilter(a1, a2);
            ++*(v11 + 104);
          }
        }
      }
    }

    else
    {
      *(a1 + 80) = 0;
      v8 = *(a1 + 64) - *(a1 + 56);
      if (v8 >= 1)
      {
        v9 = a1;
        bzero(*(a1 + 56), v8);
        a1 = v9;
      }

      *(a1 + 84) = 0;
      *(a1 + 12) = -0.0;
      *(a1 + 24) = 0;
      *(a1 + 20) = 0;
      *(a1 + 156) = 0;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
    }
  }
}

uint64_t webrtc::ReverbDecayEstimator::AnalyzeFilter(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  v3 = (a2 + (v2 << 8));
  v4 = *v3 * *v3;
  v108[0] = v4;
  v107 = v3[1] * v3[1];
  v108[1] = v107;
  v5 = v3[2] * v3[2];
  v108[2] = v5;
  v6 = v3[3] * v3[3];
  v108[3] = v6;
  v7 = v3[4] * v3[4];
  v108[4] = v7;
  v8 = v3[5] * v3[5];
  v108[5] = v8;
  v9 = v3[6] * v3[6];
  v108[6] = v9;
  v10 = v3[7] * v3[7];
  v108[7] = v10;
  v11 = v3[8] * v3[8];
  v108[8] = v11;
  v12 = v3[9] * v3[9];
  v108[9] = v12;
  v13 = v3[10] * v3[10];
  v108[10] = v13;
  v14 = v3[11] * v3[11];
  v108[11] = v14;
  v15 = v3[12] * v3[12];
  v108[12] = v15;
  v16 = v3[13] * v3[13];
  v108[13] = v16;
  v17 = v3[14] * v3[14];
  v108[14] = v17;
  v18 = v3[15] * v3[15];
  v108[15] = v18;
  v19 = v3[16] * v3[16];
  v108[16] = v19;
  v20 = v3[17] * v3[17];
  v108[17] = v20;
  v21 = v3[18] * v3[18];
  v108[18] = v21;
  v22 = v3[19] * v3[19];
  v108[19] = v22;
  v23 = v3[20] * v3[20];
  v108[20] = v23;
  v106 = v3[21] * v3[21];
  v108[21] = v106;
  v104 = v3[22] * v3[22];
  v108[22] = v104;
  v102 = v3[23] * v3[23];
  v108[23] = v102;
  v100 = v3[24] * v3[24];
  v108[24] = v100;
  v98 = v3[25] * v3[25];
  v108[25] = v98;
  v96 = v3[26] * v3[26];
  v108[26] = v96;
  v94 = v3[27] * v3[27];
  v108[27] = v94;
  v92 = v3[28] * v3[28];
  v108[28] = v92;
  v90 = v3[29] * v3[29];
  v108[29] = v90;
  v88 = v3[30] * v3[30];
  v108[30] = v88;
  v86 = v3[31] * v3[31];
  v108[31] = v86;
  v84 = v3[32] * v3[32];
  v108[32] = v84;
  v24 = v3[33] * v3[33];
  v108[33] = v24;
  v25 = v3[34] * v3[34];
  v108[34] = v25;
  v26 = v3[35] * v3[35];
  v108[35] = v26;
  v27 = v3[36] * v3[36];
  v108[36] = v27;
  v28 = v3[37] * v3[37];
  v108[37] = v28;
  v29 = v3[38] * v3[38];
  v108[38] = v29;
  v105 = v3[39] * v3[39];
  v108[39] = v105;
  v103 = v3[40] * v3[40];
  v108[40] = v103;
  v101 = v3[41] * v3[41];
  v108[41] = v101;
  v99 = v3[42] * v3[42];
  v108[42] = v99;
  v97 = v3[43] * v3[43];
  v108[43] = v97;
  v95 = v3[44] * v3[44];
  v108[44] = v95;
  v93 = v3[45] * v3[45];
  v108[45] = v93;
  v91 = v3[46] * v3[46];
  v108[46] = v91;
  v89 = v3[47] * v3[47];
  v108[47] = v89;
  v87 = v3[48] * v3[48];
  v108[48] = v87;
  v85 = v3[49] * v3[49];
  v108[49] = v85;
  v83 = v3[50] * v3[50];
  v108[50] = v83;
  v82 = v3[51] * v3[51];
  v108[51] = v82;
  v81 = v3[52] * v3[52];
  v108[52] = v81;
  v80 = v3[53] * v3[53];
  v108[53] = v80;
  v79 = v3[54] * v3[54];
  v108[54] = v79;
  v78 = v3[55] * v3[55];
  v108[55] = v78;
  v77 = v3[56] * v3[56];
  v108[56] = v77;
  v76 = v3[57] * v3[57];
  v108[57] = v76;
  v30 = v3[58] * v3[58];
  v108[58] = v30;
  v31 = v3[59] * v3[59];
  v108[59] = v31;
  v32 = v3[60] * v3[60];
  v108[60] = v32;
  v33 = v3[61] * v3[61];
  v108[61] = v33;
  v34 = v3[62] * v3[62];
  v108[62] = v34;
  v35 = v3[63] * v3[63];
  v108[63] = v35;
  v36 = *(result + 120);
  if (v2 >= (*(result + 128) - v36) >> 2)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = ((((((((((((((((((((((v4 + v107) + v5) + v6) + v7) + v8) + v9) + v10) + v11) + v12) + v13) + v14) + v15) + v16) + v17) + v18) + v19) + v20) + v21) + v22) + v23) + v106) + v104) + v102;
  v38 = *(result + 152);
  v39 = ((((((((((((((((((((((((((((((((((((((((v37 + v100) + v98) + v96) + v94) + v92) + v90) + v88) + v86) + v84) + v24) + v25) + v26) + v27) + v28) + v29) + v105) + v103) + v101) + v99) + v97) + v95) + v93) + v91) + v89) + v87) + v85) + v83) + v82) + v81) + v80) + v79) + v78) + v77) + v76) + v30) + v31) + v32) + v33) + v34) + v35) * 0.015625;
  if (v39 < 1.0e-32)
  {
    v39 = 1.0e-32;
  }

  v40 = *(v36 + 4 * v2);
  *(v36 + 4 * v2) = v39;
  if ((*(result + 112) & 1) != 0 || (v40 <= (v39 * 1.1) ? (v41 = v40 < (v39 * 0.9)) : (v41 = 1), v41))
  {
    *(result + 112) = 1;
    if (v2 > *(result + 100))
    {
      return result;
    }
  }

  else
  {
    *(result + 112) = v39 <= v38;
    if (v39 > v38)
    {
      ++*(result + 108);
    }

    if (v2 > *(result + 100))
    {
      return result;
    }
  }

  if (v2 < *(result + 96))
  {
    v42 = 0;
    v43 = *(result + 56);
    v44 = (*(result + 64) - v43) >> 2;
    v45 = v44 - 1;
    v47 = *(result + 80);
    v46 = *(result + 84);
    while (1)
    {
      v48 = *(result + 156);
      v49 = (v46 - 5);
      v50 = v49 & ~(v49 >> 31);
      v51 = v45 >= v46 ? v46 : v45;
      if (v51 >= v50)
      {
        break;
      }

LABEL_27:
      *(result + 80) = ++v47;
      if (v47 == 64)
      {
        if (v46 >= 5)
        {
          if (v44 <= v49)
          {
            goto LABEL_31;
          }

          v57 = *(result + 32);
          if (v49 >= (*(result + 40) - v57) >> 2)
          {
            goto LABEL_31;
          }

          *(v57 + 4 * v49) = *(v57 + 4 * v49) + (v48 * (*(v43 + 4 * v49) - *(v57 + 4 * v49)));
          *(result + 88) = v46 - 4;
        }

        v47 = 0;
        ++v46;
        *(result + 80) = 0;
        *(result + 84) = v46;
      }

      if (++v42 == 64)
      {
        return result;
      }
    }

    *&v52 = v108[v42] + 1.0e-10;
    v53 = vcvts_n_f32_u32(v52, 0x17uLL) + -126.94;
    v54 = v53 * 64.0;
    v55 = ((v53 * 64.0) * (v46 - v51)) + ((v47 + -191.5) * v53);
    while (v44 > v51)
    {
      *(v43 + 4 * v51) = v55 + *(v43 + 4 * v51);
      v55 = v54 + v55;
      v56 = v51-- <= v50;
      if (v56)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_31;
  }

LABEL_32:
  v58 = 0;
  v59 = *(result + 56);
  v60 = (*(result + 64) - v59) >> 2;
  v61 = v60 - 1;
  v62 = *(result + 28);
  v64 = *(result + 80);
  v63 = *(result + 84);
  v65 = v62 + 64;
  while (1)
  {
    *&v66 = v108[v58] + 1.0e-10;
    v67 = vcvts_n_f32_u32(v66, 0x17uLL) + -126.94;
    v68 = *(result + 20);
    *(result + 12) = *(result + 12) + (v68 * v67);
    *(result + 20) = v68 + 1.0;
    ++v62;
    v69 = *(result + 156);
    v70 = (v63 - 5);
    v71 = v70 & ~(v70 >> 31);
    v72 = v61 >= v63 ? v63 : v61;
    if (v72 >= v71)
    {
      break;
    }

LABEL_44:
    *(result + 80) = ++v64;
    if (v64 == 64)
    {
      if (v63 >= 5)
      {
        if (v60 <= v70)
        {
          goto LABEL_48;
        }

        v75 = *(result + 32);
        if (v70 >= (*(result + 40) - v75) >> 2)
        {
          goto LABEL_48;
        }

        *(v75 + 4 * v70) = *(v75 + 4 * v70) + (v69 * (*(v59 + 4 * v70) - *(v75 + 4 * v70)));
        *(result + 88) = v63 - 4;
      }

      v64 = 0;
      ++v63;
      *(result + 80) = 0;
      *(result + 84) = v63;
    }

    if (++v58 == 64)
    {
      goto LABEL_49;
    }
  }

  v73 = v67 * 64.0;
  v74 = ((v67 * 64.0) * (v63 - v72)) + ((v64 + -191.5) * v67);
  while (v60 > v72)
  {
    *(v59 + 4 * v72) = v74 + *(v59 + 4 * v72);
    v74 = v73 + v74;
    v56 = v72-- <= v71;
    if (v56)
    {
      goto LABEL_44;
    }
  }

LABEL_48:
  *(result + 28) = v62;
  __break(1u);
LABEL_49:
  *(result + 28) = v65;
  return result;
}

void webrtc::ReverbDecayEstimator::EstimateDecay(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v7 = a4 + 3;
  if (*a1 >= a4 + 3)
  {
    v8 = a4 + 3;
  }

  else
  {
    v8 = *a1;
  }

  *(a1 + 104) = v8;
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 152) = v11;
  v12 = (v9 + (a4 << 8));
  v13 = v12 + 1;
  if (v12 + 1 != v12 + 64)
  {
    v14 = *v12;
    v15 = 252;
    v16 = v12 + 1;
    do
    {
      v17 = *v16++;
      v18 = v17;
      if ((v14 * v14) < (v18 * v18))
      {
        v14 = v18;
        v12 = v13;
      }

      v13 = v16;
      v15 -= 4;
    }

    while (v15);
  }

  v19 = (*v12 * *v12) >= 100.0 || v10 <= (v11 + v11);
  v20 = *(a1 + 88);
  if (v20 >= 9)
  {
    v34 = *(a1 + 32);
    v35 = v34 + 9;
    if (v20 != 9)
    {
      v36 = &v34[v20];
      v37 = v34 + 10;
      if (v34 + 10 != v36)
      {
        v38 = *v35;
        v39 = v34 + 10;
        do
        {
          v40 = *v39++;
          v41 = v40;
          if (v40 < v38)
          {
            v38 = v41;
            v35 = v37;
          }

          v37 = v39;
        }

        while (v39 != v36);
      }
    }

    if (*(a1 + 40) - v34 <= 0x20uLL)
    {
      __break(1u);
      return;
    }

    v42 = *v35 * 0.9;
    v43 = v34[1];
    if (v43 > 10138.0 || (v44 = 0, v43 < -23735.0) && v43 < v42)
    {
      v44 = 1;
    }

    v45 = v34[2];
    if (v45 > 10138.0 || v45 < -23735.0 && v45 < v42)
    {
      v44 = 2;
    }

    v46 = v34[3];
    if (v46 > 10138.0 || v46 < -23735.0 && v46 < v42)
    {
      v44 = 3;
    }

    v47 = v34[4];
    if (v47 > 10138.0 || v47 < -23735.0 && v47 < v42)
    {
      v44 = 4;
    }

    v48 = v34[5];
    if (v48 > 10138.0 || v48 < -23735.0 && v48 < v42)
    {
      v44 = 5;
    }

    v49 = v34[6];
    if (v49 > 10138.0 || v49 < -23735.0 && v49 < v42)
    {
      v44 = 6;
    }

    v50 = v34[7];
    if (v50 > 10138.0 || v50 < -23735.0 && v50 < v42)
    {
      v44 = 7;
    }

    v51 = v34[8];
    if (v51 <= 10138.0 && (v51 >= -23735.0 || v51 >= v42))
    {
      if (v44)
      {
        v21 = v44 + 1;
      }

      else
      {
        v21 = 0;
      }

      v22 = *(a1 + 108);
      v23 = v22 - v21;
      if (v22 - v21 >= 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 9;
      v22 = *(a1 + 108);
      v23 = v22 - 9;
      if (v22 - 9 >= 5)
      {
LABEL_17:
        v24 = v23 & ~(v23 >> 31);
        if (!v19)
        {
          v25 = *(a1 + 24);
          if (*(a1 + 28) == v25)
          {
            if (v25)
            {
              v26 = v11;
              v27 = *(a1 + 16);
              v28 = 0.0;
              if (v27 != 0.0)
              {
                v28 = (*(a1 + 12) / v27) * 64.0;
              }

              v29 = exp2f(v28);
              v30 = *(a1 + 144);
              if ((v30 * 0.97) >= v29)
              {
                v29 = v30 * 0.97;
              }

              if (v29 > 0.95)
              {
                v29 = 0.95;
              }

              if (v29 < 0.02)
              {
                v29 = 0.02;
              }

              *(a1 + 144) = v30 + (*(a1 + 156) * (v29 - v30));
              v11 = v26;
            }
          }
        }

        v31 = v24 << 6;
        *(a1 + 12) = 0;
        v32 = ((-64 * v24) * 0.5) + 0.5;
        if (v24 << 6 <= 0)
        {
          v32 = 0.0;
        }

        *(a1 + 16) = (((v31 * v31) + -1.0) * v31) * 0.083333;
        *(a1 + 20) = v32;
        *(a1 + 24) = v31;
        *(a1 + 28) = 0;
        *(a1 + 96) = v21 + v7;
        v33 = v8 + v22 - 1;
        goto LABEL_72;
      }
    }
  }

  else
  {
    v21 = 0;
    v22 = *(a1 + 108);
    v23 = v22;
    if (v22 >= 5)
    {
      goto LABEL_17;
    }
  }

  v33 = 0;
  *(a1 + 12) = -0.0;
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  *(a1 + 96) = 0;
LABEL_72:
  *(a1 + 100) = v33;
  v52 = v10 <= (v11 * 4.0) || v19;
  *(a1 + 112) = v52;
  *(a1 + 108) = 0;
  *(a1 + 156) = 0;
  *(a1 + 80) = 0;
  v53 = *(a1 + 56);
  v54 = *(a1 + 64) - v53;
  if (v54 >= 1)
  {
    bzero(v53, v54);
  }

  *(a1 + 84) = 0;
}

float webrtc::anonymous namespace::BlockEnergyAverage(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a1 + (a3 << 8));
  v4 = v3[11];
  v5 = ((((((((((((((((((((((*v3 * *v3) + 0.0) + (v3[1] * v3[1])) + (v3[2] * v3[2])) + (v3[3] * v3[3])) + (v3[4] * v3[4])) + (v3[5] * v3[5])) + (v3[6] * v3[6])) + (v3[7] * v3[7])) + (v3[8] * v3[8])) + (v3[9] * v3[9])) + (v3[10] * v3[10])) + (v4 * v4)) + (v3[12] * v3[12])) + (v3[13] * v3[13])) + (v3[14] * v3[14])) + (v3[15] * v3[15])) + (v3[16] * v3[16])) + (v3[17] * v3[17])) + (v3[18] * v3[18])) + (v3[19] * v3[19])) + (v3[20] * v3[20])) + (v3[21] * v3[21]);
  v6 = v3[33];
  v7 = (((((((((((((((((((((v5 + (v3[22] * v3[22])) + (v3[23] * v3[23])) + (v3[24] * v3[24])) + (v3[25] * v3[25])) + (v3[26] * v3[26])) + (v3[27] * v3[27])) + (v3[28] * v3[28])) + (v3[29] * v3[29])) + (v3[30] * v3[30])) + (v3[31] * v3[31])) + (v3[32] * v3[32])) + (v6 * v6)) + (v3[34] * v3[34])) + (v3[35] * v3[35])) + (v3[36] * v3[36])) + (v3[37] * v3[37])) + (v3[38] * v3[38])) + (v3[39] * v3[39])) + (v3[40] * v3[40])) + (v3[41] * v3[41])) + (v3[42] * v3[42])) + (v3[43] * v3[43]);
  v8 = v3[55];
  return ((((((((((((((((((((v7 + (v3[44] * v3[44])) + (v3[45] * v3[45])) + (v3[46] * v3[46])) + (v3[47] * v3[47])) + (v3[48] * v3[48])) + (v3[49] * v3[49])) + (v3[50] * v3[50])) + (v3[51] * v3[51])) + (v3[52] * v3[52])) + (v3[53] * v3[53])) + (v3[54] * v3[54])) + (v8 * v8)) + (v3[56] * v3[56])) + (v3[57] * v3[57])) + (v3[58] * v3[58])) + (v3[59] * v3[59])) + (v3[60] * v3[60])) + (v3[61] * v3[61])) + (v3[62] * v3[62])) + (v3[63] * v3[63])) * 0.015625;
}

uint64_t webrtc::ReverbFrequencyResponse::Update(uint64_t result, void *a2, int a3, float a4)
{
  v4 = a2[1];
  if (v4 == *a2 || 0xFC0FC0FC0FC0FC1 * ((v4 - *a2) >> 2) <= a3)
  {
    __break(1u);
  }

  else
  {
    v5 = (*a2 + 260 * a3);
    v6 = 0.0;
    v7 = (((((((((((((((((((((((((((((((((((((((((v5[1] + 0.0) + v5[2]) + v5[3]) + v5[4]) + v5[5]) + v5[6]) + v5[7]) + v5[8]) + v5[9]) + v5[10]) + v5[11]) + v5[12]) + v5[13]) + v5[14]) + v5[15]) + v5[16]) + v5[17]) + v5[18]) + v5[19]) + v5[20]) + v5[21]) + v5[22]) + v5[23]) + v5[24]) + v5[25]) + v5[26]) + v5[27]) + v5[28]) + v5[29]) + v5[30]) + v5[31]) + v5[32]) + v5[33]) + v5[34]) + v5[35]) + v5[36]) + v5[37]) + v5[38]) + v5[39]) + v5[40]) + v5[41]) + v5[42];
    v8 = (((((((((((((((((((((v7 + v5[43]) + v5[44]) + v5[45]) + v5[46]) + v5[47]) + v5[48]) + v5[49]) + v5[50]) + v5[51]) + v5[52]) + v5[53]) + v5[54]) + v5[55]) + v5[56]) + v5[57]) + v5[58]) + v5[59]) + v5[60]) + v5[61]) + v5[62]) + v5[63]) + v5[64];
    if (v8 != 0.0)
    {
      v9 = (((((((((((((((((((((((((((((((((((((((((*(v4 - 256) + 0.0) + *(v4 - 252)) + *(v4 - 248)) + *(v4 - 244)) + *(v4 - 240)) + *(v4 - 236)) + *(v4 - 232)) + *(v4 - 228)) + *(v4 - 224)) + *(v4 - 220)) + *(v4 - 216)) + *(v4 - 212)) + *(v4 - 208)) + *(v4 - 204)) + *(v4 - 200)) + *(v4 - 196)) + *(v4 - 192)) + *(v4 - 188)) + *(v4 - 184)) + *(v4 - 180)) + *(v4 - 176)) + *(v4 - 172)) + *(v4 - 168)) + *(v4 - 164)) + *(v4 - 160)) + *(v4 - 156)) + *(v4 - 152)) + *(v4 - 148)) + *(v4 - 144)) + *(v4 - 140)) + *(v4 - 136)) + *(v4 - 132)) + *(v4 - 128)) + *(v4 - 124)) + *(v4 - 120)) + *(v4 - 116)) + *(v4 - 112)) + *(v4 - 108)) + *(v4 - 104)) + *(v4 - 100)) + *(v4 - 96)) + *(v4 - 92);
      v6 = ((((((((((((((((((((((v9 + *(v4 - 88)) + *(v4 - 84)) + *(v4 - 80)) + *(v4 - 76)) + *(v4 - 72)) + *(v4 - 68)) + *(v4 - 64)) + *(v4 - 60)) + *(v4 - 56)) + *(v4 - 52)) + *(v4 - 48)) + *(v4 - 44)) + *(v4 - 40)) + *(v4 - 36)) + *(v4 - 32)) + *(v4 - 28)) + *(v4 - 24)) + *(v4 - 20)) + *(v4 - 16)) + *(v4 - 12)) + *(v4 - 8)) + *(v4 - 4)) / v8;
    }

    v10 = *(result + 4) + ((a4 * 0.2) * (v6 - *(result + 4)));
    *(result + 4) = v10;
    *(result + 8) = v10 * *v5;
    *(result + 12) = v10 * v5[1];
    *(result + 16) = v10 * v5[2];
    *(result + 20) = v10 * v5[3];
    *(result + 24) = v10 * v5[4];
    *(result + 28) = v10 * v5[5];
    *(result + 32) = v10 * v5[6];
    *(result + 36) = v10 * v5[7];
    *(result + 40) = v10 * v5[8];
    *(result + 44) = v10 * v5[9];
    *(result + 48) = v10 * v5[10];
    *(result + 52) = v10 * v5[11];
    *(result + 56) = v10 * v5[12];
    *(result + 60) = v10 * v5[13];
    *(result + 64) = v10 * v5[14];
    *(result + 68) = v10 * v5[15];
    *(result + 72) = v10 * v5[16];
    *(result + 76) = v10 * v5[17];
    *(result + 80) = v10 * v5[18];
    *(result + 84) = v10 * v5[19];
    *(result + 88) = v10 * v5[20];
    *(result + 92) = v10 * v5[21];
    *(result + 96) = v10 * v5[22];
    *(result + 100) = v10 * v5[23];
    *(result + 104) = v10 * v5[24];
    *(result + 108) = v10 * v5[25];
    *(result + 112) = v10 * v5[26];
    *(result + 116) = v10 * v5[27];
    *(result + 120) = v10 * v5[28];
    *(result + 124) = v10 * v5[29];
    *(result + 128) = v10 * v5[30];
    *(result + 132) = v10 * v5[31];
    *(result + 136) = v10 * v5[32];
    *(result + 140) = v10 * v5[33];
    *(result + 144) = v10 * v5[34];
    *(result + 148) = v10 * v5[35];
    *(result + 152) = v10 * v5[36];
    *(result + 156) = v10 * v5[37];
    *(result + 160) = v10 * v5[38];
    *(result + 164) = v10 * v5[39];
    *(result + 168) = v10 * v5[40];
    *(result + 172) = v10 * v5[41];
    *(result + 176) = v10 * v5[42];
    *(result + 180) = v10 * v5[43];
    *(result + 184) = v10 * v5[44];
    *(result + 188) = v10 * v5[45];
    *(result + 192) = v10 * v5[46];
    *(result + 196) = v10 * v5[47];
    *(result + 200) = v10 * v5[48];
    *(result + 204) = v10 * v5[49];
    *(result + 208) = v10 * v5[50];
    *(result + 212) = v10 * v5[51];
    *(result + 216) = v10 * v5[52];
    *(result + 220) = v10 * v5[53];
    *(result + 224) = v10 * v5[54];
    *(result + 228) = v10 * v5[55];
    *(result + 232) = v10 * v5[56];
    *(result + 236) = v10 * v5[57];
    *(result + 240) = v10 * v5[58];
    *(result + 244) = v10 * v5[59];
    *(result + 248) = v10 * v5[60];
    *(result + 252) = v10 * v5[61];
    *(result + 256) = v10 * v5[62];
    *(result + 260) = v10 * v5[63];
    *(result + 264) = v10 * v5[64];
    if (*result == 1)
    {
      v11 = (v4 - 260);
      if (result + 8 >= v4 || v11 >= result + 268)
      {
        v13 = vbslq_s8(vcgtq_f32(*(result + 24), *(v4 - 244)), *(result + 24), *(v4 - 244));
        *(result + 8) = vbslq_s8(vcgtq_f32(*(result + 8), *v11), *(result + 8), *v11);
        *(result + 24) = v13;
        v14 = vbslq_s8(vcgtq_f32(*(result + 56), *(v4 - 212)), *(result + 56), *(v4 - 212));
        *(result + 40) = vbslq_s8(vcgtq_f32(*(result + 40), *(v4 - 228)), *(result + 40), *(v4 - 228));
        *(result + 56) = v14;
        v15 = vbslq_s8(vcgtq_f32(*(result + 88), *(v4 - 180)), *(result + 88), *(v4 - 180));
        *(result + 72) = vbslq_s8(vcgtq_f32(*(result + 72), *(v4 - 196)), *(result + 72), *(v4 - 196));
        *(result + 88) = v15;
        v16 = vbslq_s8(vcgtq_f32(*(result + 120), *(v4 - 148)), *(result + 120), *(v4 - 148));
        *(result + 104) = vbslq_s8(vcgtq_f32(*(result + 104), *(v4 - 164)), *(result + 104), *(v4 - 164));
        *(result + 120) = v16;
        v17 = vbslq_s8(vcgtq_f32(*(result + 152), *(v4 - 116)), *(result + 152), *(v4 - 116));
        *(result + 136) = vbslq_s8(vcgtq_f32(*(result + 136), *(v4 - 132)), *(result + 136), *(v4 - 132));
        *(result + 152) = v17;
        v18 = vbslq_s8(vcgtq_f32(*(result + 184), *(v4 - 84)), *(result + 184), *(v4 - 84));
        *(result + 168) = vbslq_s8(vcgtq_f32(*(result + 168), *(v4 - 100)), *(result + 168), *(v4 - 100));
        *(result + 184) = v18;
        v19 = vbslq_s8(vcgtq_f32(*(result + 216), *(v4 - 52)), *(result + 216), *(v4 - 52));
        *(result + 200) = vbslq_s8(vcgtq_f32(*(result + 200), *(v4 - 68)), *(result + 200), *(v4 - 68));
        *(result + 216) = v19;
        v20 = vbslq_s8(vcgtq_f32(*(result + 248), *(v4 - 20)), *(result + 248), *(v4 - 20));
        *(result + 232) = vbslq_s8(vcgtq_f32(*(result + 232), *(v4 - 36)), *(result + 232), *(v4 - 36));
        v12 = 64;
        *(result + 248) = v20;
      }

      else
      {
        v12 = 0;
      }

      v21 = 4 * v12;
      v22 = 4 * v12 - 260;
      v23 = (v21 + result + 8);
      do
      {
        v24 = *(v4 + v22);
        if (v24 < *v23)
        {
          v24 = *v23;
        }

        *v23++ = v24;
        v22 += 4;
      }

      while (v22);
    }

    v25 = *(result + 8);
    v26 = *(result + 12);
    v27 = (result + 16);
    v28 = 63;
    do
    {
      v29 = *v27;
      v25 = (v25 + *v27) * 0.5;
      if (v26 >= v25)
      {
        v25 = v26;
      }

      *(v27++ - 1) = v25;
      v26 = v29;
      --v28;
    }

    while (v28);
  }

  return result;
}

void *webrtc::ReverbModelEstimator::ReverbModelEstimator(void *this, const webrtc::EchoCanceller3Config *a2, unint64_t a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

void webrtc::ReverbModelEstimator::~ReverbModelEstimator(webrtc::ReverbModelEstimator *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    v4 = *(this + 1);
    v5 = *this;
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = v6[15];
          if (v8)
          {
            v6[16] = v8;
            operator delete(v8);
          }

          v9 = v6[7];
          if (v9)
          {
            v6[8] = v9;
            operator delete(v9);
          }

          v10 = v6[4];
          if (v10)
          {
            v6[5] = v10;
            operator delete(v10);
          }

          MEMORY[0x2743DA540](v6, 0x1080C405E570BC5);
        }
      }

      while (v4 != v3);
      v5 = *this;
    }

    *(this + 1) = v3;
    operator delete(v5);
  }
}

void webrtc::ReverbModelEstimator::Update(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  v12 = a1[1] - *a1;
  if (v12)
  {
    v16 = 0;
    v17 = 0;
    v18 = v12 >> 3;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = (a2 + 8);
    while (1)
    {
      v21 = a1[3];
      if (0xF0B7672A07A44C6BLL * ((a1[4] - v21) >> 2) <= v17)
      {
        break;
      }

      if ((a12 & 1) == 0 && *(a6 + 4) == 1)
      {
        webrtc::ReverbFrequencyResponse::Update(v21 + v16, a4, *(a9 + 4 * v17), *a6);
      }

      if (v17 >= (a1[1] - *a1) >> 3 || a11[1] <= v17)
      {
        break;
      }

      v22 = *(v20 - 1);
      if (*v20 == v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v20 - 1);
      }

      webrtc::ReverbDecayEstimator::Update(*(*a1 + 8 * v17), v23, (*v20 - v22) >> 2, a6, *(a9 + 4 * v17), (*(*a11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1, a12);
      ++v17;
      a6 += 8;
      v20 += 3;
      v16 += 268;
      a4 += 3;
      if (v19 == v17)
      {
        return;
      }
    }

    __break(1u);
  }
}

std::string *webrtc::RidDescription::RidDescription(std::string *this, const webrtc::RidDescription *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (v6 != v5)
  {
    if (0x84BDA12F684BDA13 * ((v6 - v5) >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[2].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__l.__size_ = &this[2].__r_.__value_.__r.__words[2];
  this[3].__r_.__value_.__r.__words[0] = 0;
  v7 = *(a2 + 7);
  v8 = a2 + 64;
  if (v7 != v8)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&this[2].__r_.__value_.__l.__size_, &this[2].__r_.__value_.__r.__words[2], v7 + 4);
      v10 = v7[1];
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
        do
        {
          v11 = v7[2];
          v12 = *v11 == v7;
          v7 = v11;
        }

        while (!v12);
      }

      v7 = v11;
    }

    while (v11 != v8);
  }

  return this;
}