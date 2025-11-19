unint64_t webrtc::AudioReceiveStreamImpl::Start(unint64_t this)
{
  if ((*(this + 208) & 1) == 0)
  {
    v2 = this;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_receive_stream.cc");
    }

    (*(**(v2 + 200) + 40))(*(v2 + 200));
    *(v2 + 208) = 1;
    v10 = *(v2 + 192);

    return webrtc::internal::AudioState::AddReceivingStream(v10, v2);
  }

  return this;
}

uint64_t webrtc::AudioReceiveStreamImpl::SetDepacketizerToDecoderFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 200);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (*(*v2 + 256))(v2, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t webrtc::AudioReceiveStreamImpl::SetDecoderMap(uint64_t a1, void *a2)
{
  v4 = (a1 + 104);
  v5 = (a1 + 96);
  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(a1 + 96, *(a1 + 104));
  v6 = a2 + 1;
  v7 = a2[1];
  *(v4 - 1) = *a2;
  *v4 = v7;
  v8 = a2[2];
  v4[1] = v8;
  if (v8)
  {
    *(v7 + 16) = v4;
    *a2 = v6;
    *v6 = 0;
    a2[2] = 0;
  }

  else
  {
    *v5 = v4;
  }

  v9 = *(**(a1 + 200) + 32);

  return v9();
}

uint64_t webrtc::AudioReceiveStreamImpl::SetNackHistory(uint64_t this, int a2)
{
  if (*(this + 32) != a2)
  {
    *(this + 32) = a2;
    return (*(**(this + 200) + 208))(*(this + 200), a2 != 0, (a2 / 20));
  }

  return this;
}

uint64_t webrtc::AudioReceiveStreamImpl::SetRtcpMode(uint64_t result, int a2)
{
  if (*(result + 36) != a2)
  {
    *(result + 36) = a2;
    return (*(**(result + 200) + 216))();
  }

  return result;
}

uint64_t webrtc::AudioReceiveStreamImpl::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 200);
  v3 = *a2;
  *a2 = 0;
  v5 = v3;
  (*(*v2 + 264))(v2, &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void webrtc::AudioReceiveStreamImpl::GetStats(webrtc::AudioReceiveStreamImpl *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0;
  *(a2 + 72) = 0;
  v4 = a2 + 72;
  *(a2 + 64) = 0;
  *(a2 + 100) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = -1;
  *(a2 + 312) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0;
  *(a2 + 304) = 0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 320) = 0;
  *(a2 + 344) = 0;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  *(a2 + 408) = 0;
  *(a2 + 432) = 0;
  *a2 = *(this + 6);
  (*(**(this + 25) + 56))(&v49);
  if (v53 != 1)
  {
    goto LABEL_16;
  }

  if (v4 == &v50)
  {
LABEL_14:
    if ((v53 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (*(a2 + 95) < 0)
  {
    if (v51 >= 0)
    {
      v5 = &v50;
    }

    else
    {
      v5 = v50;
    }

    if (v51 >= 0)
    {
      v6 = HIBYTE(v51);
    }

    else
    {
      v6 = *(&v50 + 1);
    }

    std::string::__assign_no_alias<false>(v4, v5, v6);
    goto LABEL_14;
  }

  if ((v51 & 0x8000000000000000) == 0)
  {
    *v4 = v50;
    *(v4 + 16) = v51;
    if ((v53 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  std::string::__assign_no_alias<true>(v4, v50, *(&v50 + 1));
  if ((v53 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

LABEL_15:
  *(a2 + 96) = v49;
  *(a2 + 100) = 1;
LABEL_16:
  (*(**(this + 25) + 200))(&v30);
  v7 = v33;
  *(a2 + 24) = v32;
  v8 = HIDWORD(v30);
  *(a2 + 48) = v30;
  *(a2 + 8) = v31;
  *(a2 + 104) = v8;
  *(a2 + 64) = v7;
  v9 = v35;
  *(a2 + 296) = v34;
  *(a2 + 304) = v9;
  *(a2 + 312) = v36;
  *(a2 + 368) = v38;
  *(a2 + 360) = v37;
  *(a2 + 384) = v40;
  *(a2 + 376) = v39;
  *(a2 + 400) = v42;
  *(a2 + 392) = v41;
  *(a2 + 408) = v43;
  *(a2 + 440) = v46;
  v10 = v45;
  *(a2 + 424) = v44;
  *(a2 + 432) = v10;
  *(a2 + 456) = v48;
  *(a2 + 448) = v47;
  *(a2 + 116) = (*(**(this + 25) + 120))(*(this + 25));
  *(a2 + 120) = (*(**(this + 25) + 80))(*(this + 25));
  *(a2 + 128) = (*(**(this + 25) + 88))(*(this + 25));
  *(a2 + 144) = (*(**(this + 25) + 96))(*(this + 25));
  v11 = *(this + 25);
  if (webrtc::g_clock)
  {
    v12 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v12 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  *(a2 + 344) = (*(*v11 + 152))(v11, v12 / 1000000);
  *(a2 + 352) = v13;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  (*(**(this + 25) + 104))(&v21);
  *(a2 + 56) = v26;
  *(a2 + 32) = *(&v25[1] + 8);
  v14 = WORD1(v21);
  *(a2 + 108) = v21;
  *(a2 + 112) = v14;
  *(a2 + 136) = *(&v21 + 1);
  *(a2 + 152) = v22;
  *(a2 + 168) = v23;
  *(a2 + 176) = *(&v23 + 1) / 1000.0;
  v15 = *&v25[0];
  v16 = *(v25 + 8);
  *(a2 + 192) = vdivq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x408F400000000000uLL));
  *(a2 + 208) = v16;
  *(a2 + 224) = *(&v25[2] + 1) / 1000000.0;
  *(a2 + 232) = vmulq_f32(vcvtq_f32_u32(vmovl_u16(vzip1_s32(*(&v26 + 8), *&v27))), vdupq_n_s32(0x38800000u));
  v17 = vcvts_n_f32_u32(HIWORD(v26), 0xEuLL);
  *&v16 = vcvts_n_f32_u32(WORD6(v26), 0xEuLL);
  *(a2 + 184) = v15;
  *(a2 + 248) = v17;
  *(a2 + 252) = v16;
  v18 = *(&v28 + 1);
  *(a2 + 320) = v28;
  *(a2 + 256) = v18;
  *&v16 = *(&v29 + 1);
  *(a2 + 328) = v29 / 1000.0;
  *(a2 + 336) = v16;
  (*(**(this + 25) + 112))(v20);
  v19 = v20[1];
  *(a2 + 264) = v20[0];
  *(a2 + 280) = v19;
  if (v53 == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v52, v52[1]);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }
  }
}

webrtc::AudioReceiveStreamInterface::Config *webrtc::AudioReceiveStreamInterface::Config::Config(webrtc::AudioReceiveStreamInterface::Config *this, const webrtc::AudioReceiveStreamInterface::Config *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v5;
  *this = v4;
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v6;
  }

  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  v7 = *(a2 + 9);
  v19 = a2;
  v8 = a2 + 80;
  if (v7 != v8)
  {
    do
    {
      if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(this + 9, this + 10, &v21, &v20, v7 + 8))
      {
        operator new();
      }

      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v8);
  }

  v12 = *(v19 + 12);
  *(this + 12) = v12;
  if (v12)
  {
    (**v12)(v12);
  }

  *(this + 104) = *(v19 + 104);
  v13 = *(v19 + 30);
  *(this + 124) = *(v19 + 124);
  *(this + 30) = v13;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  v15 = *(v19 + 16);
  v14 = *(v19 + 17);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v16 = *(v19 + 19);
  *(this + 19) = v16;
  if (v16)
  {
    (**v16)(v16);
  }

  v17 = *(v19 + 20);
  *(this + 20) = v17;
  if (v17)
  {
    (**v17)(v17);
  }

  return this;
}

uint64_t *std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::SdpAudioFormat>,std::__tree_node<std::__value_type<int,webrtc::SdpAudioFormat>,void *> *,long>>(uint64_t a1, char *a2, char *a3)
{
  v3 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v5 = *a1;
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v6 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v8 = v5[1] ? v5[1] : v5;
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = *v9;
    if (*v9 == v8)
    {
      *v9 = 0;
      while (1)
      {
        v26 = *(v9 + 1);
        if (!v26)
        {
          break;
        }

        do
        {
          v9 = v26;
          v26 = *v26;
        }

        while (v26);
      }
    }

    else
    {
      for (*(v9 + 1) = 0; v10; v10 = *(v9 + 1))
      {
        do
        {
          v9 = v10;
          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  if (a2 != a3)
  {
    v13 = a2;
    while (1)
    {
      v11 = v9;
      *(v8 + 8) = *(v13 + 8);
      if (v8 == v13)
      {
        *(v8 + 4) = *(v13 + 4);
        v16 = *v7;
        v17 = (a1 + 8);
        v18 = (a1 + 8);
        if (*v7)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v14 = v13[63];
        if (v8[63] < 0)
        {
          if (v14 >= 0)
          {
            v19 = v13 + 40;
          }

          else
          {
            v19 = *(v13 + 5);
          }

          if (v14 >= 0)
          {
            v20 = v13[63];
          }

          else
          {
            v20 = *(v13 + 6);
          }

          std::string::__assign_no_alias<false>((v8 + 40), v19, v20);
        }

        else if (v13[63] < 0)
        {
          std::string::__assign_no_alias<true>(v8 + 40, *(v13 + 5), *(v13 + 6));
        }

        else
        {
          v15 = *(v13 + 40);
          *(v8 + 7) = *(v13 + 7);
          *(v8 + 40) = v15;
        }

        *(v8 + 4) = *(v13 + 4);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((v8 + 80), *(v13 + 10), v13 + 11);
        v16 = *v7;
        v17 = (a1 + 8);
        v18 = (a1 + 8);
        if (*v7)
        {
          do
          {
LABEL_38:
            while (1)
            {
              v17 = v16;
              if (*(v8 + 8) >= *(v16 + 8))
              {
                break;
              }

              v16 = *v16;
              v18 = v17;
              if (!*v17)
              {
                goto LABEL_40;
              }
            }

            v16 = v16[1];
          }

          while (v16);
          *v8 = 0;
          *(v8 + 1) = 0;
          *(v8 + 2) = v17;
          v17[1] = v8;
          v21 = **a1;
          if (!v21)
          {
            goto LABEL_42;
          }

LABEL_41:
          *a1 = v21;
          goto LABEL_42;
        }
      }

LABEL_40:
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = v17;
      *v18 = v8;
      v21 = **a1;
      if (v21)
      {
        goto LABEL_41;
      }

LABEL_42:
      std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v8);
      ++*(a1 + 16);
      if (v9)
      {
        v9 = *(v9 + 2);
        if (v9)
        {
          v24 = *v9;
          if (*v9 == v11)
          {
            *v9 = 0;
            while (1)
            {
              v25 = *(v9 + 1);
              if (!v25)
              {
                break;
              }

              do
              {
                v9 = v25;
                v25 = *v25;
              }

              while (v25);
            }
          }

          else
          {
            for (*(v9 + 1) = 0; v24; v24 = *(v9 + 1))
            {
              do
              {
                v9 = v24;
                v24 = *v24;
              }

              while (v24);
            }
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v22 = *(v13 + 1);
      if (v22)
      {
        do
        {
          v3 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v3 = *(v13 + 2);
          v23 = *v3 == v13;
          v13 = v3;
        }

        while (!v23);
      }

      if (v11)
      {
        v13 = v3;
        v8 = v11;
        if (v3 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  v11 = v8;
LABEL_13:
  std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(a1, v11);
  if (v9)
  {
    for (i = *(v9 + 2); i; i = *(i + 2))
    {
      v9 = i;
    }

    std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::destroy(a1, v9);
  }

LABEL_17:
  if (v3 != a3)
  {
    operator new();
  }
}

char *std::vector<unsigned short>::__assign_with_size[abi:sn200100]<unsigned short *,unsigned short *>(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
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

      if ((v12 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 1)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void webrtc::AudioRtpReceiver::AudioRtpReceiver(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *v7 = *a4;
  v8 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  webrtc::RtpReceiverInternal::CreateStreamsFromIds(v7, &__p);
  webrtc::AudioRtpReceiver::AudioRtpReceiver(a1, a2, a3);
}

void webrtc::AudioRtpReceiver::AudioRtpReceiver(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_28828E608;
  *(a1 + 8) = &unk_28828E6F0;
  *(a1 + 16) = &unk_28828E718;
  *(a1 + 24) = &unk_28828E818;
  *(a1 + 32) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v3 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v3;
  }

  operator new();
}

void webrtc::AudioRtpReceiver::~AudioRtpReceiver(webrtc::AudioRtpReceiver *this)
{
  *this = &unk_28828E608;
  v2 = this + 8;
  *(this + 1) = &unk_28828E6F0;
  *(this + 2) = &unk_28828E718;
  *(this + 3) = &unk_28828E818;
  v3 = (*(**(this + 9) + 72))(*(this + 9));
  (*(*v3 + 64))(v3, v2);
  (*(**(this + 9) + 120))(*(this + 9), this);
  v4 = *(this + 24);
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v5 = *(this + 23);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(this + 13);
    v10 = *(this + 12);
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
      v10 = *(this + 12);
    }

    *(this + 13) = v8;
    operator delete(v10);
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 8);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

uint64_t webrtc::AudioRtpReceiver::OnChanged(webrtc::AudioRtpReceiver *this)
{
  result = (*(**(*(this + 9) + 24) + 48))(*(*(this + 9) + 24));
  if (*(this + 120) != result)
  {
    *(this + 120) = result;
    v3 = *(this + 24);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    }

    operator new();
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::OnSetVolume(webrtc::AudioRtpReceiver *this, double a2)
{
  v8 = a2;
  v7 = (*(**(*(this + 9) + 24) + 48))(*(*(this + 9) + 24));
  v3 = *(this + 4);
  v6[0] = this;
  v6[1] = &v8;
  v6[2] = &v7;
  return (*(*v3 + 96))(v3, v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::OnSetVolume(double)::$_0>, &v5);
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::OnSetVolume(webrtc::AudioRtpReceiver *this, double a2)
{
  v3 = this - 8;
  v9 = a2;
  v8 = (*(**(*(this + 8) + 24) + 48))(*(*(this + 8) + 24));
  v4 = *(this + 3);
  v7[0] = v3;
  v7[1] = &v9;
  v7[2] = &v8;
  return (*(*v4 + 96))(v4, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::OnSetVolume(double)::$_0>, &v6);
}

uint64_t (***webrtc::AudioRtpReceiver::dtls_transport@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 20);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t (***non-virtual thunk towebrtc::AudioRtpReceiver::dtls_transport@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 18);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::stream_ids@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 96);
  v4 = *(this + 104);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t webrtc::AudioRtpReceiver::streams@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 96);
  v3 = *(this + 104);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::streams@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 80);
  v3 = *(this + 88);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void *webrtc::AudioRtpReceiver::GetParameters@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  if (this[10])
  {
    v2 = this;
    v3 = (*(*this + 128))();
    v4 = v2[10];
    if ((v3 & 0x100000000) != 0)
    {
      v6 = *(*v4 + 152);

      return v6();
    }

    else
    {
      v5 = *(*v4 + 168);

      return v5();
    }
  }

  else
  {
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
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
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::GetParameters@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 64))
  {
    v2 = this - 16;
    v3 = (*(*(this - 16) + 128))();
    v4 = *(v2 + 80);
    if ((v3 & 0x100000000) != 0)
    {
      v6 = *(*v4 + 152);

      return v6();
    }

    else
    {
      v5 = *(*v4 + 168);

      return v5();
    }
  }

  else
  {
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
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
  }

  return this;
}

uint64_t webrtc::AudioRtpReceiver::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 152);
  *(a1 + 152) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 80);
  if (v5 && *(a1 + 92) == 1)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 152);
    v8 = v7;
    if (v7)
    {
      (**v7)(v7);
    }

    (*(*v5 + 112))(v5, v6, &v8);
    result = v8;
    if (v8)
    {
      return ((*v8)[1])(v8);
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 136);
  *(a1 + 136) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v5 = *(a1 + 64);
  if (v5 && *(a1 + 76) == 1)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 136);
    v8 = v7;
    if (v7)
    {
      (**v7)(v7);
    }

    (*(*v5 + 112))(v5, v6, &v8);
    result = v8;
    if (v8)
    {
      return ((*v8)[1])(v8);
    }
  }

  return result;
}

uint64_t (***webrtc::AudioRtpReceiver::GetFrameDecryptor@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 19);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t (***non-virtual thunk towebrtc::AudioRtpReceiver::GetFrameDecryptor@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 17);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::Stop(webrtc::AudioRtpReceiver *this)
{
  v2 = *(this + 8);
  if (*(v2 + 176) != 2)
  {
    *(v2 + 176) = 2;
    webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(v2);
  }

  result = *(*(this + 9) + 24);
  v4 = *(result + 72);
  *(result + 72) = 1;
  if (v4 != 1)
  {

    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::Stop(webrtc::AudioRtpReceiver *this)
{
  v2 = *(this + 6);
  if (*(v2 + 176) != 2)
  {
    *(v2 + 176) = 2;
    webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(v2);
  }

  result = *(*(this + 7) + 24);
  v4 = *(result + 72);
  *(result + 72) = 1;
  if (v4 != 1)
  {

    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

void (***webrtc::AudioRtpReceiver::Reconfigure(webrtc::AudioRtpReceiver *this, int a2, __n128 a3))(void, __n128)
{
  a3.n128_u64[0] = 0;
  if (a2)
  {
    a3.n128_u64[0] = *(this + 16);
  }

  v4 = *(this + 10);
  if (!v4)
  {
LABEL_6:
    if (*(this + 92) != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (*(this + 92) == 1)
  {
    (*(*v4 + 184))(v4, *(this + 22), a3);
    goto LABEL_6;
  }

  (*(*v4 + 192))(v4, a3);
  if (*(this + 92) != 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v5 = *(this + 19);
  if (v5)
  {
    v6 = *(this + 10);
    v7 = *(this + 22);
    v12 = *(this + 19);
    (**v5)(v5, a3);
    (*(*v6 + 112))(v6, v7, &v12);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

LABEL_12:
  result = *(this + 23);
  if (result)
  {
    v9 = *(this + 10);
    if (*(this + 92) == 1)
    {
      v10 = *(this + 22);
    }

    else
    {
      v10 = 0;
    }

    v11 = result;
    (**result)(result, a3);
    (*(*v9 + 120))(v9, v10, &v11);
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::SetupMediaChannel(webrtc::AudioRtpReceiver *this, unsigned int a2)
{
  v9 = a2 | 0x100000000;
  v8 = (*(**(*(this + 9) + 24) + 48))(*(*(this + 9) + 24));
  v7 = (*(**(this + 8) + 32))(*(this + 8));
  v3 = *(this + 4);
  v6[0] = this;
  v6[1] = &v9;
  v6[2] = &v8;
  v6[3] = &v7;
  (*(*v3 + 96))(v3, v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>, &v5);
  result = *(this + 8);
  if (*(result + 176) != 1)
  {
    *(result + 176) = 1;
    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::SetupMediaChannel(webrtc::AudioRtpReceiver *this, unsigned int a2)
{
  v3 = this - 16;
  v10 = a2 | 0x100000000;
  v9 = (*(**(*(this + 7) + 24) + 48))(*(*(this + 7) + 24));
  v8 = (*(**(this + 6) + 32))(*(this + 6));
  v4 = *(this + 2);
  v7[0] = v3;
  v7[1] = &v10;
  v7[2] = &v9;
  v7[3] = &v8;
  (*(*v4 + 96))(v4, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>, &v6);
  result = *(this + 6);
  if (*(result + 176) != 1)
  {
    *(result + 176) = 1;
    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::SetupUnsignaledMediaChannel(webrtc::AudioRtpReceiver *this)
{
  v8 = 0;
  v7 = (*(**(*(this + 9) + 24) + 48))(*(*(this + 9) + 24));
  v6 = (*(**(this + 8) + 32))(*(this + 8));
  v2 = *(this + 4);
  v5[0] = this;
  v5[1] = &v8;
  v5[2] = &v7;
  v5[3] = &v6;
  (*(*v2 + 96))(v2, v5, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>, &v4);
  result = *(this + 8);
  if (*(result + 176) != 1)
  {
    *(result + 176) = 1;
    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::SetupUnsignaledMediaChannel(webrtc::AudioRtpReceiver *this)
{
  v2 = this - 16;
  v9 = 0;
  v8 = (*(**(*(this + 7) + 24) + 48))(*(*(this + 7) + 24));
  v7 = (*(**(this + 6) + 32))(*(this + 6));
  v3 = *(this + 2);
  v6[0] = v2;
  v6[1] = &v9;
  v6[2] = &v8;
  v6[3] = &v7;
  (*(*v3 + 96))(v3, v6, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>, &v5);
  result = *(this + 6);
  if (*(result + 176) != 1)
  {
    *(result + 176) = 1;
    return webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(result);
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::ssrc(webrtc::AudioRtpReceiver *this)
{
  if (*(this + 92))
  {
    return (*(this + 93) << 40) | (*(this + 95) << 56) | (*(this + 22) | (*(this + 92) << 32)) & 0xFFFFFFFFFFLL;
  }

  v1 = *(this + 10);
  if (!v1)
  {
    return (*(this + 93) << 40) | (*(this + 95) << 56) | (*(this + 22) | (*(this + 92) << 32)) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return (*(*v1 + 80))(*(this + 10)) & 0xFFFFFFFFFFLL;
  }
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::ssrc(webrtc::AudioRtpReceiver *this)
{
  if (*(this + 76))
  {
    return (*(this + 18) | (*(this + 76) << 32)) & 0xFFFFFFFFFFLL;
  }

  v2 = *(this + 8);
  if (!v2)
  {
    return (*(this + 18) | (*(this + 76) << 32)) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return (*(*v2 + 80))(v2) & 0xFFFFFFFFFFLL;
  }
}

void webrtc::AudioRtpReceiver::set_stream_ids(uint64_t a1, uint64_t a2)
{
  *v12 = *a2;
  v13 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  webrtc::RtpReceiverInternal::CreateStreamsFromIds(v12, &__p);
  (*(*a1 + 160))(a1, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v15;
    v5 = __p;
    if (v15 != __p)
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

    v15 = v3;
    operator delete(v5);
  }

  v8 = v12[0];
  if (v12[0])
  {
    v9 = v12[1];
    v10 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v12[0];
    }

    v12[1] = v8;
    operator delete(v10);
  }
}

uint64_t webrtc::AudioRtpReceiver::set_transport(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 160);
  *(a1 + 160) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::set_transport(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 144);
  *(a1 + 144) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t **webrtc::AudioRtpReceiver::SetStreams(void *a1, uint64_t **a2)
{
  v4 = a1[12];
  v29 = (a1 + 12);
  v30 = a1[13];
  if (v4 != v30)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      goto LABEL_6;
    }

    while (1)
    {
LABEL_27:
      v14 = *v4;
      v15 = a1[9];
      v33 = v15;
      if (v15)
      {
        (**v15)(v15);
      }

      (*(*v14 + 88))(v14, &v33);
      if (v33)
      {
        (*v33)[1](v33);
      }

LABEL_4:
      if (++v4 == v30)
      {
        break;
      }

      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        while (1)
        {
LABEL_6:
          (*(**v4 + 32))(&v37);
          (*(**v5 + 32))(&__p);
          v7 = v39;
          if ((v39 & 0x80u) == 0)
          {
            v8 = v39;
          }

          else
          {
            v8 = v38;
          }

          v9 = v36;
          v10 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v9 = v35;
          }

          if (v8 == v9)
          {
            break;
          }

          v13 = 0;
          if (v36 < 0)
          {
            goto LABEL_21;
          }

LABEL_22:
          if ((v7 & 0x80) != 0)
          {
            operator delete(v37);
            if (v13)
            {
              goto LABEL_4;
            }
          }

          else if (v13)
          {
            goto LABEL_4;
          }

          if (++v5 == v6)
          {
            goto LABEL_27;
          }
        }

        if ((v39 & 0x80u) == 0)
        {
          v11 = &v37;
        }

        else
        {
          v11 = v37;
        }

        if ((v36 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v13 = memcmp(v11, p_p, v8) == 0;
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_21:
        operator delete(__p);
        v7 = v39;
        goto LABEL_22;
      }
    }
  }

  v16 = *a2;
  v31 = a2[1];
  if (*a2 != v31)
  {
    v17 = a1[12];
    v18 = a1[13];
    if (v17 != v18)
    {
      goto LABEL_36;
    }

    while (1)
    {
LABEL_57:
      v26 = *v16;
      v27 = a1[9];
      v32 = v27;
      if (v27)
      {
        (**v27)(v27);
      }

      (*(*v26 + 72))(v26, &v32);
      if (v32)
      {
        (*v32)[1](v32);
      }

LABEL_34:
      if (++v16 == v31)
      {
        break;
      }

      v17 = a1[12];
      v18 = a1[13];
      if (v17 != v18)
      {
        while (1)
        {
LABEL_36:
          (*(**v16 + 32))(&v37);
          (*(**v17 + 32))(&__p);
          v19 = v39;
          if ((v39 & 0x80u) == 0)
          {
            v20 = v39;
          }

          else
          {
            v20 = v38;
          }

          v21 = v36;
          v22 = v36;
          if ((v36 & 0x80u) != 0)
          {
            v21 = v35;
          }

          if (v20 == v21)
          {
            break;
          }

          v25 = 0;
          if (v36 < 0)
          {
            goto LABEL_51;
          }

LABEL_52:
          if ((v19 & 0x80) != 0)
          {
            operator delete(v37);
            if (v25)
            {
              goto LABEL_34;
            }
          }

          else if (v25)
          {
            goto LABEL_34;
          }

          v17 += 8;
          if (v17 == v18)
          {
            goto LABEL_57;
          }
        }

        if ((v39 & 0x80u) == 0)
        {
          v23 = &v37;
        }

        else
        {
          v23 = v37;
        }

        if ((v36 & 0x80u) == 0)
        {
          v24 = &__p;
        }

        else
        {
          v24 = __p;
        }

        v25 = memcmp(v23, v24, v20) == 0;
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_51:
        operator delete(__p);
        v19 = v39;
        goto LABEL_52;
      }
    }
  }

  result = v29;
  if (v29 != a2)
  {
    return std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>::__assign_with_size[abi:sn200100]<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*,webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>(v29, *a2, a2[1], a2[1] - *a2);
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::GetSources@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>)
{
  v4 = (*(*this + 128))(this);
  result = *(this + 10);
  if (result)
  {
    v6 = (v4 & 0x100000000) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v7 = *(*result + 160);

    return v7();
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::GetSources@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>)
{
  v3 = this - 16;
  v4 = (*(*(this - 2) + 128))(this - 16);
  result = *(v3 + 10);
  if (result)
  {
    v6 = (v4 & 0x100000000) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v7 = *(*result + 160);

    return v7();
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::SetFrameTransformer(uint64_t a1, void (****a2)(void))
{
  v4 = *(a1 + 80);
  if (!v4)
  {
    goto LABEL_9;
  }

  if (*(a1 + 92) != 1)
  {
    v5 = 0;
    v6 = *a2;
    v9 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 88);
  v6 = *a2;
  v9 = v6;
  if (v6)
  {
LABEL_6:
    (**v6)(v6);
  }

LABEL_7:
  (*(*v4 + 120))(v4, v5, &v9);
  if (v9)
  {
    (*v9)[1](v9);
  }

LABEL_9:
  v7 = *a2;
  *a2 = 0;
  result = *(a1 + 184);
  *(a1 + 184) = v7;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::SetFrameTransformer(uint64_t a1, void (****a2)(void))
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_9;
  }

  if (*(a1 + 76) != 1)
  {
    v5 = 0;
    v6 = *a2;
    v9 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 72);
  v6 = *a2;
  v9 = v6;
  if (v6)
  {
LABEL_6:
    (**v6)(v6);
  }

LABEL_7:
  (*(*v4 + 120))(v4, v5, &v9);
  if (v9)
  {
    (*v9)[1](v9);
  }

LABEL_9:
  v7 = *a2;
  *a2 = 0;
  result = *(a1 + 168);
  *(a1 + 168) = v7;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

{
  v4 = *(a1 + 56);
  if (!v4)
  {
    goto LABEL_9;
  }

  if (*(a1 + 68) != 1)
  {
    v5 = 0;
    v6 = *a2;
    v9 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 64);
  v6 = *a2;
  v9 = v6;
  if (v6)
  {
LABEL_6:
    (**v6)(v6);
  }

LABEL_7:
  (*(*v4 + 120))(v4, v5, &v9);
  if (v9)
  {
    (*v9)[1](v9);
  }

LABEL_9:
  v7 = *a2;
  *a2 = 0;
  result = *(a1 + 160);
  *(a1 + 160) = v7;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::SetObserver(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  *(result + 136) = a2;
  if (a2 && (*(result + 144) & 1) != 0)
  {
    v3 = (*(*result + 64))(result);
    v4 = **a2;

    return v4(a2, v3);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::SetObserver(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  *(result + 120) = a2;
  if (a2 && (*(result + 128) & 1) != 0)
  {
    v3 = (*(*(result - 16) + 64))();
    v4 = **a2;

    return v4(a2, v3);
  }

  return result;
}

webrtc::webrtc_checks_impl *webrtc::AudioRtpReceiver::SetJitterBufferMinimumDelay(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 168) = *&a2;
  *(a1 + 176) = a3;
  result = *(a1 + 80);
  if (result && *(a1 + 92) == 1)
  {
    v6 = *&a2 * 1000.0;
    if ((a3 & 1) == 0)
    {
      v6 = 0.0;
    }

    v7 = (v6 < -2147483650.0) | (2 * (v6 > 2147483650.0));
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
      }

      v8 = *(*result + 128);
    }

    else if (v7 || v6 < 1)
    {
      v8 = *(*result + 128);
    }

    else
    {
      v8 = *(*result + 128);
    }

    return v8();
  }

  return result;
}

webrtc::webrtc_checks_impl *non-virtual thunk towebrtc::AudioRtpReceiver::SetJitterBufferMinimumDelay(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 152) = *&a2;
  *(a1 + 160) = a3;
  result = *(a1 + 64);
  if (result && *(a1 + 76) == 1)
  {
    v6 = *&a2 * 1000.0;
    if ((a3 & 1) == 0)
    {
      v6 = 0.0;
    }

    v7 = (v6 < -2147483650.0) | (2 * (v6 > 2147483650.0));
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        webrtc::webrtc_checks_impl::UnreachableCodeReached(result);
      }

      v8 = *(*result + 128);
    }

    else if (v7 || v6 < 1)
    {
      v8 = *(*result + 128);
    }

    else
    {
      v8 = *(*result + 128);
    }

    return v8();
  }

  return result;
}

uint64_t webrtc::AudioRtpReceiver::SetMediaChannel(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v2) = 1;
LABEL_3:
    *(*(result + 192) + 4) = v2;
    *(result + 80) = a2;
    return result;
  }

  v2 = *(result + 80);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = result;
  if (*(result + 92) == 1)
  {
    result = (*(*v2 + 184))(*(result + 80), *(result + 88), 0.0);
  }

  else
  {
    result = (*(*v2 + 192))(*(result + 80), 0.0);
  }

  *(*(v3 + 192) + 4) = 0;
  *(v3 + 80) = 0;
  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::SetMediaChannel(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v2) = 1;
LABEL_3:
    *(*(result + 176) + 4) = v2;
    *(result + 64) = a2;
    return result;
  }

  v2 = *(result + 64);
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = result;
  if (*(result + 76) == 1)
  {
    result = (*(*v2 + 184))(*(result + 64), *(result + 72), 0.0);
  }

  else
  {
    result = (*(*v2 + 192))(*(result + 64), 0.0);
  }

  *(*(v3 + 176) + 4) = 0;
  *(v3 + 64) = 0;
  return result;
}

void *webrtc::AudioRtpReceiver::NotifyFirstPacketReceived(void *this)
{
  v1 = this;
  v2 = this[17];
  if (v2)
  {
    v3 = (*(*this + 64))(this);
    this = (**v2)(v2, v3);
  }

  *(v1 + 144) = 1;
  return this;
}

uint64_t non-virtual thunk towebrtc::AudioRtpReceiver::NotifyFirstPacketReceived(uint64_t this)
{
  v1 = this;
  v2 = *(this + 120);
  if (v2)
  {
    v3 = (*(*(this - 16) + 64))();
    this = (**v2)(v2, v3);
  }

  *(v1 + 128) = 1;
  return this;
}

uint64_t (***webrtc::AudioRtpReceiver::track@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 9);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::AudioRtpReceiver::id(webrtc::AudioRtpReceiver *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

uint64_t (***non-virtual thunk towebrtc::AudioRtpReceiver::track@<X0>(webrtc::AudioRtpReceiver *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 7);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void non-virtual thunk towebrtc::AudioRtpReceiver::id(webrtc::AudioRtpReceiver *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

uint64_t webrtc::RtpReceiverInterface::SetDepacketizerToDecoderFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v4 = v2;
  (*(*a1 + 152))(a1, &v4);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 8))(v4);
  }

  return result;
}

void *std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>::__assign_with_size[abi:sn200100]<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*,webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>(void *result, void *a2, void *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v13 = *(v10 - 1);
          v10 -= 8;
          v12 = v13;
          if (v13)
          {
            (*(*v12 + 8))(v12);
          }
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 61))
    {
      v19 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v19 = a4;
      }

      v20 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v21 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v19;
      }

      if (!(v21 >> 61))
      {
        operator new();
      }
    }

    goto LABEL_46;
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 3)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = *v5;
        if (*v5)
        {
          (**v18)(*v5);
        }

        result = *v8;
        if (*v8)
        {
          result = (*(*result + 8))(result);
        }

        *v8 = v18;
        v8 += 8;
        ++v5;
      }

      while (v5 != a3);
      v14 = v6[1];
    }

    while (v14 != v8)
    {
      v23 = *(v14 - 1);
      v14 -= 8;
      result = v23;
      if (v23)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  else
  {
    if (v14 != v8)
    {
      v16 = (a2 + v15);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          (**v17)(*v5);
        }

        result = *v8;
        if (*v8)
        {
          result = (*(*result + 8))(result);
        }

        *v8 = v17;
        v8 += 8;
        ++v5;
        v15 -= 8;
      }

      while (v15);
      v14 = v6[1];
      v5 = v16;
    }

    v8 = v14;
    if (v5 != a3)
    {
      v8 = v14;
      v22 = v14;
      while (v22)
      {
        result = *v5;
        *v22 = *v5;
        if (result)
        {
          result = (**result)(result);
        }

        ++v5;
        v22 += 8;
        v8 += 8;
        if (v5 == a3)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_46:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

LABEL_44:
  v6[1] = v8;
  return result;
}

BOOL webrtc::RefCountedObject<webrtc::RemoteAudioSource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 45, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::RemoteAudioSource>::~RefCountedObject(webrtc::RemoteAudioSource *a1)
{
  webrtc::RemoteAudioSource::~RemoteAudioSource(a1);

  JUMPOUT(0x2743DA540);
}

void webrtc::Notifier<webrtc::AudioSourceInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2 != a1 + 2)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 2)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[4];
    operator delete(v2);
  }
}

void non-virtual thunk towebrtc::Notifier<webrtc::AudioSourceInterface>::UnregisterObserver(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 != a1 + 1)
  {
    while (1)
    {
      v3 = v2[1];
      if (v2[2] == a2)
      {
        break;
      }

      v2 = v2[1];
      if (v3 == a1 + 1)
      {
        return;
      }
    }

    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    --a1[3];
    operator delete(v2);
  }
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::RemoteAudioSource>::~RefCountedObject(uint64_t a1)
{
  webrtc::RemoteAudioSource::~RemoteAudioSource((a1 - 8));
}

{
  webrtc::RemoteAudioSource::~RemoteAudioSource((a1 - 8));

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>>::~RefCountedObject(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28828E9C0;
  a1[1] = &unk_28828EA50;
  v14 = a1;
  v15 = webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::DestroyInternal;
  v16 = 0;
  webrtc::Event::Event(&v17, 0, 0);
  v2 = a1[2];
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v2 + 8))(v2, &v11, &v10, &v9);
    v12(1, &v11, &v11);
    v4.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v5.var0 = 3000000;
    webrtc::Event::Wait(&v17, v4, v5);
  }

  pthread_mutex_destroy(&v17);
  pthread_cond_destroy(&v18);
  v6 = a1[3];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>>::~RefCountedObject(void *a1)
{
  webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>>::~RefCountedObject(a1);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::enabled(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::MediaStreamTrackInterface::enabled;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::AudioTrackInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::set_enabled(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = *(a1 + 24);
  v6[1] = webrtc::MediaStreamTrackInterface::set_enabled;
  v6[2] = 0;
  v6[4] = &v5;
  webrtc::Event::Event(&v7, 0, 0);
  v3 = webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,BOOL>::Marshal(v6, *(a1 + 16));
  pthread_mutex_destroy(&v7);
  pthread_cond_destroy(&v8);
  return v3;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::state(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 24);
  v15 = webrtc::MediaStreamTrackInterface::state;
  v16 = 0;
  webrtc::Event::Event(&v18, 0, 0);
  v2 = *(a1 + 16);
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
    v13 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::AudioTrackInterface,webrtc::MediaStreamTrackInterface::TrackState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::AddSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::AudioTrackInterface::AddSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
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
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::AudioTrackSinkInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::RemoveSink(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::AudioTrackInterface::RemoveSink;
  v19 = 0;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
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
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::AudioTrackSinkInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::GetSignalLevel(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v6 = a2;
  v7[0] = v3;
  v7[1] = webrtc::AudioTrackInterface::GetSignalLevel;
  v7[2] = 0;
  v7[4] = &v6;
  webrtc::Event::Event(&v8, 0, 0);
  v4 = webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,int *>::Marshal(v7, *(a1 + 16));
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  return v4;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::GetAudioProcessor@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v6[2] = 0;
  v7 = 0;
  v6[0] = v4;
  v6[1] = webrtc::AudioTrackInterface::GetAudioProcessor;
  webrtc::Event::Event(&v8, 0, 0);
  webrtc::MethodCall<webrtc::AudioTrackInterface,webrtc::scoped_refptr<webrtc::AudioProcessorInterface>>::Marshal(v6, *(a1 + 16), a2);
  pthread_mutex_destroy(&v8);
  pthread_cond_destroy(&v9);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::RegisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::NotifierInterface::RegisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
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

    v7(v8, *v20);
  }

  else
  {
    v14.n128_u64[0] = &v17;
    v15 = absl::internal_any_invocable::LocalManagerTrivial;
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::UnregisterObserver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v17 = *(a1 + 24);
  v18 = webrtc::NotifierInterface::UnregisterObserver;
  v19 = 16;
  v20 = &v11;
  webrtc::Event::Event(&v21, 0, 0);
  v3 = *(a1 + 16);
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
    v16 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*v3 + 8))(v3, &v14, &v13, &v12);
    v15(1, &v14, &v14);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait(&v21, v5, v6);
  }

  pthread_mutex_destroy(&v21);
  return pthread_cond_destroy(&v22);
}

void non-virtual thunk towebrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>>::~RefCountedObject(uint64_t a1)
{
  webrtc::RefCountedObject<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>>::~RefCountedObject((a1 - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>::DestroyInternal(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 24) = 0;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackProxyWithInternal<webrtc::AudioTrack>,void>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::AudioTrackInterface,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,BOOL>::Marshal(unint64_t a1, void *a2)
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
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v11 = v8(v10, **(a1 + 32));
    *(a1 + 24) = v11;
    return v11 & 1;
  }

  else
  {
    v15.n128_u64[0] = a1;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24) & 1;
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,BOOL>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConstMethodCall<webrtc::AudioTrackInterface,webrtc::MediaStreamTrackInterface::TrackState>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::AudioTrackSinkInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,int *>::Marshal(unint64_t a1, void *a2)
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
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (*a1 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v11 = v8(v10, **(a1 + 32));
    *(a1 + 24) = v11;
    return v11 & 1;
  }

  else
  {
    v15.n128_u64[0] = a1;
    v16 = absl::internal_any_invocable::LocalManagerTrivial;
    v17 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,int *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
    (*(*a2 + 8))(a2, &v15, &v14, &v13);
    v16(1, &v15, &v15);
    v5.var0 = 0x7FFFFFFFFFFFFFFFLL;
    v6.var0 = 3000000;
    webrtc::Event::Wait((a1 + 40), v5, v6);
    return *(a1 + 24) & 1;
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,BOOL,int *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

  *(v1 + 24) = v2(v5, *v4);
  pthread_mutex_lock((v1 + 40));
  *(v1 + 153) = 1;
  pthread_cond_broadcast((v1 + 104));

  return pthread_mutex_unlock((v1 + 40));
}

uint64_t webrtc::MethodCall<webrtc::AudioTrackInterface,webrtc::scoped_refptr<webrtc::AudioProcessorInterface>>::Marshal@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
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
    v20 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,webrtc::scoped_refptr<webrtc::AudioProcessorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>;
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,webrtc::scoped_refptr<webrtc::AudioProcessorInterface>>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::MethodCall<webrtc::AudioTrackInterface,void,webrtc::ObserverInterface *>::Marshal(webrtc::Thread *)::{lambda(void)#1} &&>(uint64_t *a1)
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

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::OnSetVolume(double)::$_0>(uint64_t result)
{
  v1 = *result;
  *(*result + 128) = **(result + 8);
  if (**(result + 16) == 1)
  {
    result = *(v1 + 80);
    if (result)
    {
      if (*(v1 + 92) == 1)
      {
        return (*(*result + 184))(result, *(v1 + 88));
      }

      else
      {
        return (*(*result + 192))();
      }
    }
  }

  return result;
}

uint64_t webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(uint64_t result)
{
  v1[0] = v1;
  v1[1] = v1;
  v1[2] = 0;
  if (*(result + 24) != result + 16)
  {
    operator new();
  }

  return result;
}

uint64_t *webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::AudioRtpReceiver::RestartMediaChannel(std::optional<unsigned int>)::$_0>(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 80);
  if (v2)
  {
    v3 = *result[1];
    v4 = *result[3];
    *(*(v1 + 192) + 4) = 1;
    if (!v4)
    {
      goto LABEL_13;
    }

    if ((v3 & 0x100000000) != 0 && *(v1 + 92))
    {
      if (*(v1 + 88) != v3)
      {
        goto LABEL_6;
      }
    }

    else if ((BYTE4(v3) & 1) != *(v1 + 92))
    {
LABEL_6:
      v5 = *(v1 + 88);
      if ((v5 & 0x100000000) != 0)
      {
        v7 = 0;
        (*(*v2 + 200))(v2, v5, &v7);
        v6 = v7;
        v7 = 0;
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v7 = 0;
        (*(*v2 + 208))(v2, &v7);
        v6 = v7;
        v7 = 0;
        if (!v6)
        {
LABEL_13:
          *(v1 + 88) = v3;
          *(v1 + 92) = BYTE4(v3);
          webrtc::RemoteAudioSource::Start();
        }
      }

      (*(*v6 + 8))(v6);
      goto LABEL_13;
    }
  }

  return result;
}

float32x4_t *webrtc::AudioSamplesScaler::Process(float32x4_t *this, webrtc::AudioBuffer *a2)
{
  v2 = *(a2 + 3);
  if (this->i32[2] != v2)
  {
    this->i32[2] = v2;
    this->f32[3] = 1.0 / v2;
  }

  v3 = this->f32[0];
  v4 = this->f32[1];
  if (v4 != 1.0 || v3 != 1.0)
  {
    if (v3 == v4)
    {
      v6 = *(a2 + 7);
      if (v6)
      {
        if (v2)
        {
          v7 = 0;
          v8 = *(*(a2 + 10) + 8);
          v9 = 4 * v2;
          v10 = ((v9 - 4) >> 2) + 1;
          do
          {
            v11 = *(v8 + 8 * v7);
            v12 = v11;
            if ((v9 - 4) <= 0x1B)
            {
              goto LABEL_16;
            }

            v12 = &v11->f32[v10 & 0x7FFFFFFFFFFFFFF8];
            v13 = v11 + 1;
            v14 = v10 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v15 = vmulq_n_f32(*v13, v3);
              v13[-1] = vmulq_n_f32(v13[-1], v3);
              *v13 = v15;
              v13 += 2;
              v14 -= 8;
            }

            while (v14);
            if (v10 != (v10 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_16:
              v16 = &v11->f32[v9 / 4];
              do
              {
                *v12 = v3 * *v12;
                ++v12;
              }

              while (v12 != v16);
            }

            ++v7;
          }

          while (v7 != v6);
LABEL_37:
          this->i32[0] = this->i32[1];
          v26 = 0;
          v27 = 4 * v2;
          v28 = ((v27 - 4) >> 2) + 1;
          v29.i64[0] = 0xC7000000C7000000;
          v29.i64[1] = 0xC7000000C7000000;
          v30 = vdupq_n_s32(0x46FFFE00u);
          do
          {
            this = *(v8 + 8 * v26);
            v31 = this;
            if ((v27 - 4) <= 0x1B)
            {
              goto LABEL_44;
            }

            v31 = &this->f32[v28 & 0x7FFFFFFFFFFFFFF8];
            v32 = this + 1;
            v33 = v28 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v34 = vbslq_s8(vcgeq_f32(v29, *v32), v29, vbslq_s8(vcgeq_f32(*v32, v30), v30, *v32));
              v32[-1] = vbslq_s8(vcgeq_f32(v29, v32[-1]), v29, vbslq_s8(vcgeq_f32(v32[-1], v30), v30, v32[-1]));
              *v32 = v34;
              v32 += 2;
              v33 -= 8;
            }

            while (v33);
            if (v28 != (v28 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_44:
              this = (this + v27);
              do
              {
                v35 = 32767.0;
                if (*v31 < 32767.0)
                {
                  v35 = *v31;
                }

                if (*v31 > -32768.0)
                {
                  v36 = v35;
                }

                else
                {
                  v36 = -32768.0;
                }

                *v31++ = v36;
              }

              while (v31 != this);
            }

            ++v26;
          }

          while (v26 != v6);
          return this;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v17 = (v4 - v3) * this->f32[3];
      v6 = *(a2 + 7);
      if (v17 <= 0.0)
      {
        if (v6)
        {
          if (v2)
          {
            v22 = 0;
            v8 = *(*(a2 + 10) + 8);
            do
            {
              v23 = *(v8 + 8 * v22);
              v24 = this->f32[0];
              v25 = 4 * v2;
              do
              {
                v24 = v17 + v24;
                if (v24 < this->f32[1])
                {
                  v24 = this->f32[1];
                }

                *v23 = *v23 * v24;
                ++v23;
                v25 -= 4;
              }

              while (v25);
              ++v22;
            }

            while (v22 != v6);
            goto LABEL_37;
          }

LABEL_52:
          v4 = this->f32[1];
        }
      }

      else if (v6)
      {
        if (v2)
        {
          v18 = 0;
          v8 = *(*(a2 + 10) + 8);
          do
          {
            v19 = *(v8 + 8 * v18);
            v20 = this->f32[0];
            v21 = 4 * v2;
            do
            {
              v20 = v17 + v20;
              if (this->f32[1] < v20)
              {
                v20 = this->f32[1];
              }

              *v19 = *v19 * v20;
              ++v19;
              v21 -= 4;
            }

            while (v21);
            ++v18;
          }

          while (v18 != v6);
          goto LABEL_37;
        }

        goto LABEL_52;
      }
    }

    this->f32[0] = v4;
  }

  return this;
}

void webrtc::internal::AudioSendStream::AudioSendStream(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28828EA80;
  *(a1 + 8) = &unk_28828EAF8;
  v3 = *a2;
  *(a1 + 16) = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = *(a2 + 3);
  *(a1 + 24) = *(a2 + 1);
  *(a1 + 40) = v4;
  *(a1 + 64) = 0;
  (*(**(a1 + 24) + 16))(&__p);
  v5 = 0;
  v6 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v6 = v15;
  }

  if (v6 >= 7)
  {
    p_p = __p;
    if ((v16 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v8 = *p_p;
    v9 = *(p_p + 3);
    v5 = v8 == 1650552389 && v9 == 1684368482;
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 80) = v5;
  *(a1 + 81) = v5;
  (*(**(a1 + 24) + 16))(&__p);
  v11 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v11 = v15;
  }

  if (v11 >= 8)
  {
    v13 = __p;
    if ((v16 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    v12 = *v13 != 0x64656C6261736944;
    if ((v16 & 0x80000000) == 0)
    {
LABEL_25:
      *(a1 + 88) = 0;
      *(a1 + 82) = v12;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 112) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      operator new();
    }
  }

  else
  {
    v12 = 1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  operator delete(__p);
  goto LABEL_25;
}

void webrtc::internal::AudioSendStream::AudioSendStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 392);
  if (v3)
  {
    (**v3)(v3);
  }

  webrtc::voe::CreateChannelSend();
}

void webrtc::internal::AudioSendStream::ConfigureStream(unint64_t a1, std::string::size_type a2, int a3, uint64_t a4)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::AudioSendStream::Config::ToString(a2, &v206), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc"), SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v206.__r_.__value_.__l.__data_);
    v187 = (a1 + 160);
    if (a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a1 + 160;
    }

    if (a3)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v187 = (a1 + 160);
    if (a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = a1 + 160;
    }

    if (a3)
    {
      goto LABEL_48;
    }
  }

  if (*a2 != *v187)
  {
    goto LABEL_48;
  }

  v17 = *(a2 + 64);
  v16 = *(a2 + 72);
  v18 = *(a1 + 224);
  if (v16 - v17 != *(a1 + 232) - v18)
  {
    goto LABEL_48;
  }

  if (v17 != v16)
  {
    v19 = 0;
    while (1)
    {
      v20 = v18 + v19;
      v21 = *(v17 + v19 + 23);
      if (v21 >= 0)
      {
        v22 = *(v17 + v19 + 23);
      }

      else
      {
        v22 = *(v17 + v19 + 8);
      }

      v23 = *(v20 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v20 + 8);
      }

      if (v22 != v23)
      {
        break;
      }

      v25 = v21 >= 0 ? (v17 + v19) : *(v17 + v19);
      v26 = v24 >= 0 ? (v18 + v19) : *v20;
      if (memcmp(v25, v26, v22) || *(v17 + v19 + 24) != *(v18 + v19 + 24) || *(v17 + v19 + 28) != *(v18 + v19 + 28))
      {
        break;
      }

      v19 += 32;
      if (v17 + v19 == v16)
      {
        goto LABEL_27;
      }
    }

LABEL_48:
    operator new();
  }

LABEL_27:
  if (*(a2 + 296) == 1)
  {
    if (!*(v15 + 296))
    {
      goto LABEL_48;
    }

    v27 = *(a2 + 223);
    if (v27 >= 0)
    {
      v28 = *(a2 + 223);
    }

    else
    {
      v28 = *(a2 + 208);
    }

    v29 = *(v15 + 223);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v15 + 208);
    }

    if (v28 != v29)
    {
      goto LABEL_48;
    }

    v31 = v27 >= 0 ? (a2 + 200) : *(a2 + 200);
    v32 = v30 >= 0 ? (v15 + 200) : *(v15 + 200);
    if (memcmp(v31, v32, v28) || *(a2 + 192) != *(v15 + 192))
    {
      goto LABEL_48;
    }
  }

  else if (*(v15 + 296))
  {
    goto LABEL_48;
  }

  if (*(a1 + 816) == 1 && a3)
  {
    (*(**(a1 + 768) + 168))(*(a1 + 768), a1 + 776);
  }

  if (a3)
  {
    v33 = *(a2 + 111);
    v34 = *(a2 + 96);
    v35 = *(a2 + 111);
LABEL_69:
    v41 = v187;
    goto LABEL_70;
  }

  v36 = *(a1 + 271);
  if (v36 >= 0)
  {
    v37 = *(a1 + 271);
  }

  else
  {
    v37 = *(a1 + 256);
  }

  v33 = *(a2 + 111);
  v35 = v33;
  v34 = *(a2 + 96);
  if ((v33 & 0x80u) == 0)
  {
    v38 = *(a2 + 111);
  }

  else
  {
    v38 = *(a2 + 96);
  }

  if (v37 != v38)
  {
    goto LABEL_69;
  }

  if (v36 >= 0)
  {
    v39 = (a1 + 248);
  }

  else
  {
    v39 = *(a1 + 248);
  }

  if ((v33 & 0x80u) == 0)
  {
    v40 = (a2 + 88);
  }

  else
  {
    v40 = *(a2 + 88);
  }

  v41 = v187;
  if (!memcmp(v39, v40, v37))
  {
LABEL_78:
    v44 = *(a2 + 384);
    if (v44 == *(a1 + 544))
    {
      goto LABEL_85;
    }

    goto LABEL_79;
  }

LABEL_70:
  if (v35 >= 0)
  {
    v42 = a2 + 88;
  }

  else
  {
    v42 = *(a2 + 88);
  }

  if (v35 >= 0)
  {
    v43 = v33;
  }

  else
  {
    v43 = v34;
  }

  (*(**(a1 + 568) + 56))(*(a1 + 568), v42, v43);
  if (!a3)
  {
    goto LABEL_78;
  }

  v44 = *(a2 + 384);
LABEL_79:
  v45 = *(a1 + 568);
  v203 = v44;
  if (v44)
  {
    (**v44)(v44);
  }

  (*(*v45 + 184))(v45, &v203);
  if (v203)
  {
    (*v203)[1](v203);
  }

  if (a3)
  {
    v46 = *(a2 + 392);
    goto LABEL_86;
  }

LABEL_85:
  v46 = *(a2 + 392);
  if (v46 == *(a1 + 552))
  {
    goto LABEL_92;
  }

LABEL_86:
  v47 = *(a1 + 568);
  v202 = v46;
  if (v46)
  {
    (**v46)(v46);
  }

  (*(*v47 + 192))(v47, &v202);
  if (v202)
  {
    (*v202)[1](v202);
  }

  if (!a3)
  {
LABEL_92:
    v48 = *(a2 + 56);
    if (v48 == *(a1 + 216))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  LOBYTE(v48) = *(a2 + 56);
LABEL_93:
  (*(**(a1 + 768) + 96))(*(a1 + 768), v48 & 1);
LABEL_94:
  webrtc::internal::AudioSendStream::FindExtensionIds(v201, *(a1 + 224), *(a1 + 232));
  webrtc::internal::AudioSendStream::FindExtensionIds(&v196, *(a2 + 64), *(a2 + 72));
  if ((a3 & 1) != 0 || v196 != v201[0])
  {
    (*(**(a1 + 568) + 64))(*(a1 + 568), v196 != 0);
    if (a3)
    {
      v50 = v197;
      goto LABEL_99;
    }
  }

  v50 = v197;
  if (v197 != v201[1])
  {
LABEL_99:
    (*(**(a1 + 768) + 112))(*(a1 + 768), "http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time", 58);
    if (v50)
    {
      (*(**(a1 + 768) + 104))(*(a1 + 768), "http://www.webrtc.org/experiments/rtp-hdrext/abs-send-time", 58, v50);
    }

    if (a3)
    {
      goto LABEL_105;
    }
  }

  if (v199 == v201[3] || (*(a1 + 80) & 1) != 0)
  {
    goto LABEL_111;
  }

  (*(**(a1 + 568) + 80))(*(a1 + 568));
LABEL_105:
  if ((*(a1 + 80) & 1) == 0)
  {
    if (v199)
    {
      (*(**(a1 + 768) + 104))(*(a1 + 768), "http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01", 73);
      if (*(a1 + 82) == 1)
      {
        (*(**(a1 + 760) + 160))(*(a1 + 760), 1);
      }
    }
  }

  (*(**(a1 + 568) + 72))(*(a1 + 568), *(a1 + 760));
  if (a3)
  {
    v51 = v200;
    goto LABEL_126;
  }

LABEL_111:
  v51 = v200;
  if (v200 == v201[4])
  {
    v52 = *(a2 + 55);
    v53 = v52;
    v54 = *(a2 + 40);
    if ((v52 & 0x80u) == 0)
    {
      v55 = *(a2 + 55);
    }

    else
    {
      v55 = *(a2 + 40);
    }

    v56 = *(a1 + 215);
    v57 = v56;
    if ((v56 & 0x80u) != 0)
    {
      v56 = *(a1 + 200);
    }

    if (v55 == v56)
    {
      if ((v52 & 0x80u) == 0)
      {
        v58 = (a2 + 32);
      }

      else
      {
        v58 = *(a2 + 32);
      }

      if (v57 >= 0)
      {
        v59 = (a1 + 192);
      }

      else
      {
        v59 = *(a1 + 192);
      }

      v60 = memcmp(v58, v59, v55) == 0;
      if (!v51)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v60 = 0;
      if (!v200)
      {
        goto LABEL_143;
      }
    }

    if (v60)
    {
      goto LABEL_143;
    }

    goto LABEL_130;
  }

LABEL_126:
  if (!v51)
  {
    goto LABEL_141;
  }

  v52 = *(a2 + 55);
  v54 = *(a2 + 40);
  v53 = *(a2 + 55);
LABEL_130:
  if (v53 >= 0)
  {
    v61 = v52;
  }

  else
  {
    v61 = v54;
  }

  if (v61)
  {
    (*(**(a1 + 768) + 104))(*(a1 + 768), "urn:ietf:params:rtp-hdrext:sdes:mid", 35, v51);
    v62 = *(a2 + 55);
    if (v62 >= 0)
    {
      v63 = a2 + 32;
    }

    else
    {
      v63 = *(a2 + 32);
    }

    if (v62 >= 0)
    {
      v64 = *(a2 + 55);
    }

    else
    {
      v64 = *(a2 + 40);
    }

    (*(**(a1 + 768) + 216))(*(a1 + 768), v63, v64);
  }

LABEL_141:
  if (a3)
  {
    v65 = v198;
    goto LABEL_144;
  }

LABEL_143:
  v65 = v198;
  if (v198 != v201[2])
  {
LABEL_144:
    (*(**(a1 + 768) + 112))(*(a1 + 768), "http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time", 61);
    if (v65)
    {
      (*(**(a1 + 768) + 104))(*(a1 + 768), "http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time", 61, v65);
    }
  }

  if (*(a2 + 296) != 1)
  {
    goto LABEL_237;
  }

  if (*(a1 + 456) == 1 && *(a2 + 264) == *(a1 + 424) && *(a2 + 265) == *(a1 + 425))
  {
    v66 = *(a2 + 272);
    v67 = *(a1 + 432);
    if (v66 == 1 && *(a1 + 432))
    {
      v66 = *(a2 + 268);
      v67 = *(a1 + 428);
    }

    if (v66 == v67)
    {
      v68 = *(a2 + 280);
      v69 = *(a1 + 440);
      if (v68 == 1 && *(a1 + 440))
      {
        v68 = *(a2 + 276);
        v69 = *(a1 + 436);
      }

      if (v68 == v69 && *(a2 + 192) == *(a1 + 352) && webrtc::operator==((a2 + 200), (a1 + 360)))
      {
        v70 = *(a2 + 288);
        v71 = *(a1 + 448);
        if (v70 == 1 && *(a1 + 448))
        {
          v70 = *(a2 + 284);
          v71 = *(a1 + 444);
        }

        if (v70 == v71)
        {
          v73 = *(a2 + 184);
          v72 = *(a1 + 344);
          if (v73 != 1 || !*(a1 + 344))
          {
            goto LABEL_405;
          }

          v181 = *(a2 + 183);
          if (v181 >= 0)
          {
            v182 = *(a2 + 183);
          }

          else
          {
            v182 = *(a2 + 168);
          }

          v183 = *(a1 + 343);
          v184 = v183;
          if ((v183 & 0x80u) != 0)
          {
            v183 = *(a1 + 328);
          }

          if (v182 == v183)
          {
            v185 = v181 >= 0 ? (a2 + 160) : *(a2 + 160);
            v186 = v184 >= 0 ? (a1 + 320) : *(a1 + 320);
            if (!memcmp(v185, v186, v182))
            {
              goto LABEL_237;
            }
          }
        }
      }
    }
  }

  while (1)
  {
    v72 = *(a1 + 456);
    v73 = *(a2 + 296);
    if (v72 != 1)
    {
      goto LABEL_194;
    }

    if ((v73 & 1) == 0)
    {
      goto LABEL_404;
    }

    v74 = webrtc::operator==((a2 + 200), (a1 + 360));
    v73 = *(a2 + 296);
    if (!v74)
    {
LABEL_194:
      if ((v73 & 1) == 0)
      {
        goto LABEL_404;
      }

      v75 = *(a2 + 192);
      goto LABEL_196;
    }

    if ((v73 & 1) == 0)
    {
      goto LABEL_404;
    }

    v73 = *(a1 + 456);
    if ((v73 & 1) == 0)
    {
      goto LABEL_404;
    }

    v75 = *(a2 + 192);
    if (v75 == *(a1 + 352))
    {
      v72 = *(a2 + 280);
      v76 = *(a1 + 440);
      if (v72 == 1 && *(a1 + 440))
      {
        v72 = *(a2 + 276);
        v76 = *(a1 + 436);
      }

      if (v72 == v76)
      {
        break;
      }
    }

LABEL_196:
    LODWORD(v206.__r_.__value_.__l.__data_) = v75;
    v85 = *(a2 + 304);
    v206.__r_.__value_.__l.__size_ = *(a2 + 312);
    v206.__r_.__value_.__s.__data_[16] = *(a2 + 320);
    (*(*v85 + 48))(v210);
    if (!v210[0])
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v95, v96, v97, v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
      }

      v195 = 10;
      operator new();
    }

    if (*(a2 + 288) == 1)
    {
      (*(*v210[0] + 160))();
    }

    if (*(a2 + 184) == 1)
    {
      v86 = (*(*v210[0] + 128))(v210[0], a2 + 160, *(a1 + 48));
      v87 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
      if (v86)
      {
        if (v87)
        {
          goto LABEL_208;
        }
      }

      else if (v87)
      {
        goto LABEL_208;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v88, v89, v90, v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
    }

LABEL_208:
    if (*(a2 + 272) == 1)
    {
      v206.__r_.__value_.__r.__words[0] = 1;
      LODWORD(v206.__r_.__value_.__r.__words[1]) = 13;
      v206.__r_.__value_.__r.__words[2] = 0;
      *&v207 = 0x6400000000;
      DWORD2(v207) = 8;
      v208 = 0;
      v206.__r_.__value_.__r.__words[0] = (*(*v210[0] + 24))();
      v73 = *(a2 + 272);
      if (v73)
      {
        LODWORD(v206.__r_.__value_.__r.__words[1]) = *(a2 + 268);
        v102 = v210[0];
        v210[0] = 0;
        v103 = v206.__r_.__value_.__r.__words[2];
        v206.__r_.__value_.__r.__words[2] = v102;
        if (v103)
        {
          (*(*v103 + 8))(v103);
        }

        LODWORD(v207) = 0;
        webrtc::CreateComfortNoiseEncoder();
      }
    }

    else
    {
      if (*(a2 + 223) < 0)
      {
        std::string::__init_copy_ctor_external(&v206, *(a2 + 200), *(a2 + 208));
      }

      else
      {
        v206 = *(a2 + 200);
      }

      v207 = *(a2 + 224);
      v209[0] = 0;
      v209[1] = 0;
      v208 = v209;
      v104 = *(a2 + 240);
      if (v104 != (a2 + 248))
      {
        do
        {
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v208, v209, v104 + 4);
          v106 = v104[1];
          if (v106)
          {
            do
            {
              v107 = v106;
              v106 = *v106;
            }

            while (v106);
          }

          else
          {
            do
            {
              v107 = v104[2];
              v108 = *v107 == v104;
              v104 = v107;
            }

            while (!v108);
          }

          v104 = v107;
        }

        while (v107 != (a2 + 248));
      }

      v105 = v210[0];
      if (*(a2 + 280) == 1)
      {
        LODWORD(v205[0]) = *(a2 + 276);
        v210[0] = 0;
        v205[1] = v105;
        operator new();
      }

      if (*(a1 + 832))
      {
        (*(*v210[0] + 192))(v210[0]);
        v105 = v210[0];
      }

      v109 = (*(*v105 + 16))(v105);
      v110 = (*(*v210[0] + 24))();
      *(a1 + 580) = v109;
      *(a1 + 584) = v110;
      if (*(a1 + 592) == 1)
      {
        webrtc::internal::AudioState::AddSendingStream(*(a1 + 560), a1, v109, v110);
      }

      v73 = *(a2 + 296);
      if (v73)
      {
        v111 = *(a1 + 568);
        v112 = *(a2 + 192);
        v113 = v210[0];
        v210[0] = 0;
        v204 = v113;
        (*(*v111 + 32))(v111, v112, &v206, &v204);
        v114 = v204;
        v204 = 0;
        if (v114)
        {
          (*(*v114 + 8))(v114);
        }

        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v208, v209[0]);
        if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v206.__r_.__value_.__l.__data_);
        }

        v115 = v210[0];
        v210[0] = 0;
        if (v115)
        {
          (*(*v115 + 8))(v115);
        }

        goto LABEL_237;
      }
    }

LABEL_404:
    __break(1u);
LABEL_405:
    if (v73 == v72)
    {
      goto LABEL_237;
    }
  }

  if (*(a2 + 288) == 1)
  {
    if (*(a1 + 448) != 1 || (v72 = *(a2 + 284), v72 != *(a1 + 444)))
    {
      v77 = *(a1 + 568);
      v206.__r_.__value_.__r.__words[0] = a2 + 284;
      (*(*v77 + 48))(v77, &v206, webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureSendCodec(webrtc::AudioSendStream::Config const&)::$_0>);
    }
  }

  v78 = *(a2 + 184);
  if (v78 != 1 || !*(a1 + 344))
  {
    if (v78 == *(a1 + 344))
    {
      goto LABEL_378;
    }

    goto LABEL_374;
  }

  v79 = *(a2 + 183);
  if (v79 >= 0)
  {
    v80 = *(a2 + 183);
  }

  else
  {
    v80 = *(a2 + 168);
  }

  v81 = *(a1 + 343);
  v82 = v81;
  if ((v81 & 0x80u) != 0)
  {
    v81 = *(a1 + 328);
  }

  if (v80 != v81 || (v79 >= 0 ? (v83 = (a2 + 160)) : (v83 = *(a2 + 160)), v82 >= 0 ? (v84 = (a1 + 320)) : (v84 = *(a1 + 320)), memcmp(v83, v84, v80)))
  {
LABEL_374:
    v171 = *(a1 + 568);
    if (v78)
    {
      v206.__r_.__value_.__r.__words[0] = a1;
      v206.__r_.__value_.__l.__size_ = a2;
      (*(*v171 + 48))(v171, &v206, webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureANA(webrtc::AudioSendStream::Config const&)::$_0>);
    }

    else
    {
      (*(*v171 + 48))(v171, &v206, webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureANA(webrtc::AudioSendStream::Config const&)::$_1>);
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v172, v173, v174, v175, v176, v177, v178, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
      }
    }
  }

LABEL_378:
  v73 = *(a2 + 296);
  if ((v73 & 1) == 0)
  {
    goto LABEL_404;
  }

  v73 = *(a1 + 456);
  if ((v73 & 1) == 0)
  {
    goto LABEL_404;
  }

  v179 = *(a2 + 272);
  if (v179 == 1 && *(a1 + 432))
  {
    if (*(a2 + 268) == *(a1 + 428))
    {
      goto LABEL_237;
    }
  }

  else if (v179 == *(a1 + 432))
  {
    goto LABEL_237;
  }

  if (*(a2 + 272))
  {
    (*(**(a1 + 568) + 104))(*(a1 + 568), *(a2 + 268), *(a2 + 224));
  }

  v180 = *(a1 + 568);
  v206.__r_.__value_.__r.__words[0] = a2;
  (*(*v180 + 40))(v180, &v206, webrtc::FunctionView<void ()(std::unique_ptr<webrtc::AudioEncoder> *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureCNG(webrtc::AudioSendStream::Config const&)::$_0>);
LABEL_237:
  v116 = *(a1 + 824);
  v117 = (*(**(a1 + 768) + 432))(*(a1 + 768), v49);
  v206.__r_.__value_.__r.__words[0] = v117 + v116;
  if (*(a1 + 832) != v117 + v116)
  {
    *(a1 + 832) = v117 + v116;
    v118 = *(a1 + 568);
    v205[0] = &v206;
    (*(*v118 + 48))(v118, v205, webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::UpdateOverheadPerPacket(void)::$_1>);
    if (*(a1 + 840) == 1)
    {
      webrtc::internal::AudioSendStream::ConfigureBitrateObserver(a1);
    }

    (*(**(a1 + 568) + 208))(*(a1 + 568), LODWORD(v206.__r_.__value_.__l.__data_));
  }

  v119 = *(a1 + 568);
  v206.__r_.__value_.__r.__words[0] = a1;
  (*(*v119 + 48))(v119, &v206, _ZN6webrtc12FunctionViewIFvPNS_12AudioEncoderEEE11CallVoidPtrIZNS_8internal15AudioSendStream15ConfigureStreamERKNS_15AudioSendStream6ConfigEbN4absl12AnyInvocableIFvNS_8RTCErrorEOEEEE3__0EEvNS4_9VoidUnionES2_);
  if (*(a1 + 592) == 1)
  {
    v120 = *(a2 + 136);
    if (*(a1 + 296) == v120 && *(a1 + 300) == *(a2 + 140) && *(a1 + 304) == *(a2 + 144))
    {
      webrtc::internal::AudioSendStream::FindExtensionIds(&v206, *(a1 + 224), *(a1 + 232));
      v121 = HIDWORD(v206.__r_.__value_.__r.__words[1]);
      webrtc::internal::AudioSendStream::FindExtensionIds(&v206, *(a2 + 64), *(a2 + 72));
      if (v121 == HIDWORD(v206.__r_.__value_.__r.__words[1]))
      {
        v122 = *(a1 + 344);
        if (v122 == 1 && *(a2 + 184))
        {
          v123 = *(a1 + 343);
          if (v123 >= 0)
          {
            v124 = *(a1 + 343);
          }

          else
          {
            v124 = *(a1 + 328);
          }

          v125 = *(a2 + 183);
          v126 = v125;
          if ((v125 & 0x80u) != 0)
          {
            v125 = *(a2 + 168);
          }

          if (v124 == v125)
          {
            v127 = v123 >= 0 ? (a1 + 320) : *(a1 + 320);
            v128 = v126 >= 0 ? (a2 + 160) : *(a2 + 160);
            if (!memcmp(v127, v128, v124))
            {
              goto LABEL_272;
            }
          }
        }

        else if (v122 == *(a2 + 184))
        {
          goto LABEL_272;
        }
      }
    }

    if (v120 == -1 || (*(a2 + 152) & 1) != 0 || *(a2 + 140) == -1 || (webrtc::internal::AudioSendStream::FindExtensionIds(&v206, *(a2 + 64), *(a2 + 72)), !HIDWORD(v206.__r_.__value_.__r.__words[1])))
    {
      (*(**(a1 + 760) + 208))(*(a1 + 760), 0);
      *(a1 + 840) = 0;
      (*(**(a1 + 752) + 8))(*(a1 + 752), a1 + 8);
      v129 = 0;
    }

    else
    {
      (*(**(a1 + 760) + 208))(*(a1 + 760), 1);
      (*(**(a1 + 760) + 216))(*(a1 + 760));
      *(a1 + 296) = *(a2 + 136);
      *(a1 + 304) = *(a2 + 144);
      webrtc::internal::AudioSendStream::ConfigureBitrateObserver(a1);
      v129 = 1;
    }

    (*(**(a1 + 768) + 304))(*(a1 + 768), v129);
  }

LABEL_272:
  *(a1 + 160) = *a2;
  if (v41 == a2)
  {
    *(a1 + 216) = *(a2 + 56);
  }

  else
  {
    v130 = *(a2 + 31);
    if (*(a1 + 191) < 0)
    {
      if (v130 >= 0)
      {
        v135 = (a2 + 8);
      }

      else
      {
        v135 = *(a2 + 8);
      }

      if (v130 >= 0)
      {
        v136 = *(a2 + 31);
      }

      else
      {
        v136 = *(a2 + 16);
      }

      std::string::__assign_no_alias<false>((a1 + 168), v135, v136);
      v132 = a2 + 32;
      v133 = *(a2 + 55);
      if (*(a1 + 215) < 0)
      {
        goto LABEL_286;
      }

LABEL_276:
      if ((v133 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((a1 + 192), *(a2 + 32), *(a2 + 40));
      }

      else
      {
        v134 = *v132;
        *(a1 + 208) = *(v132 + 16);
        *(a1 + 192) = v134;
      }
    }

    else
    {
      if ((*(a2 + 31) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((a1 + 168), *(a2 + 8), *(a2 + 16));
        v132 = a2 + 32;
        v133 = *(a2 + 55);
        if ((*(a1 + 215) & 0x80000000) == 0)
        {
          goto LABEL_276;
        }
      }

      else
      {
        v131 = *(a2 + 8);
        *(a1 + 184) = *(a2 + 24);
        *(a1 + 168) = v131;
        v132 = a2 + 32;
        v133 = *(a2 + 55);
        if ((*(a1 + 215) & 0x80000000) == 0)
        {
          goto LABEL_276;
        }
      }

LABEL_286:
      if ((v133 & 0x80u) == 0)
      {
        v137 = v132;
      }

      else
      {
        v137 = *(a2 + 32);
      }

      if ((v133 & 0x80u) == 0)
      {
        v138 = v133;
      }

      else
      {
        v138 = *(a2 + 40);
      }

      std::string::__assign_no_alias<false>((a1 + 192), v137, v138);
    }

    *(a1 + 216) = *(a2 + 56);
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 224), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 5);
    v139 = *(a2 + 111);
    if (*(a1 + 271) < 0)
    {
      if (v139 >= 0)
      {
        v141 = (a2 + 88);
      }

      else
      {
        v141 = *(a2 + 88);
      }

      if (v139 >= 0)
      {
        v142 = *(a2 + 111);
      }

      else
      {
        v142 = *(a2 + 96);
      }

      std::string::__assign_no_alias<false>((a1 + 248), v141, v142);
    }

    else if ((*(a2 + 111) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 248), *(a2 + 88), *(a2 + 96));
    }

    else
    {
      v140 = *(a2 + 88);
      *(a1 + 264) = *(a2 + 104);
      *(a1 + 248) = v140;
    }
  }

  *(a1 + 272) = *(a2 + 112);
  v143 = *(a2 + 120);
  v144 = *(a2 + 136);
  *(a1 + 312) = *(a2 + 152);
  *(a1 + 280) = v143;
  *(a1 + 296) = v144;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 320, (a2 + 160));
  if (*(a1 + 456) == *(a2 + 296))
  {
    if (*(a1 + 456))
    {
      *(a1 + 352) = *(a2 + 192);
      if (v41 == a2)
      {
        *(a1 + 384) = *(a2 + 224);
      }

      else
      {
        v145 = (a1 + 360);
        v146 = *(a2 + 223);
        if (*(a1 + 383) < 0)
        {
          if (v146 >= 0)
          {
            v168 = (a2 + 200);
          }

          else
          {
            v168 = *(a2 + 200);
          }

          if (v146 >= 0)
          {
            v169 = *(a2 + 223);
          }

          else
          {
            v169 = *(a2 + 208);
          }

          std::string::__assign_no_alias<false>(v145, v168, v169);
        }

        else if ((*(a2 + 223) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v145, *(a2 + 200), *(a2 + 208));
        }

        else
        {
          v147 = *(a2 + 200);
          *(a1 + 376) = *(a2 + 216);
          *&v145->__r_.__value_.__l.__data_ = v147;
        }

        *(a1 + 384) = *(a2 + 224);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a1 + 400, *(a2 + 240), (a2 + 248));
      }

      v170 = *(a2 + 264);
      *(a1 + 433) = *(a2 + 273);
      *(a1 + 424) = v170;
      v148 = *(a2 + 304);
      if (!v148)
      {
        goto LABEL_326;
      }

LABEL_325:
      (**v148)(v148);
      goto LABEL_326;
    }

LABEL_324:
    v148 = *(a2 + 304);
    if (!v148)
    {
      goto LABEL_326;
    }

    goto LABEL_325;
  }

  if (!*(a1 + 456))
  {
    *(a1 + 352) = *(a2 + 192);
    v149 = (a1 + 360);
    if (*(a2 + 223) < 0)
    {
      std::string::__init_copy_ctor_external(v149, *(a2 + 200), *(a2 + 208));
    }

    else
    {
      v150 = *(a2 + 200);
      *(a1 + 376) = *(a2 + 216);
      *&v149->__r_.__value_.__l.__data_ = v150;
    }

    *(a1 + 384) = *(a2 + 224);
    *(a1 + 408) = 0;
    *(a1 + 416) = 0;
    *(a1 + 400) = a1 + 408;
    v151 = *(a2 + 240);
    if (v151 != (a2 + 248))
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>((a1 + 400), (a1 + 408), v151 + 4);
        v158 = v151[1];
        if (v158)
        {
          do
          {
            v159 = v158;
            v158 = *v158;
          }

          while (v158);
        }

        else
        {
          do
          {
            v159 = v151[2];
            v108 = *v159 == v151;
            v151 = v159;
          }

          while (!v108);
        }

        v151 = v159;
      }

      while (v159 != (a2 + 248));
    }

    v152 = *(a2 + 264);
    *(a1 + 433) = *(a2 + 273);
    *(a1 + 424) = v152;
    *(a1 + 456) = 1;
    goto LABEL_324;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 400, *(a1 + 408));
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  *(a1 + 456) = 0;
  v148 = *(a2 + 304);
  if (v148)
  {
    goto LABEL_325;
  }

LABEL_326:
  v153 = *(a1 + 464);
  if (v153)
  {
    (*(*v153 + 8))(v153);
  }

  *(a1 + 464) = v148;
  v154 = *(a2 + 312);
  *(a1 + 480) = *(a2 + 320);
  *(a1 + 472) = v154;
  if (v41 == a2)
  {
    v160 = *(a2 + 352);
    *(a1 + 516) = *(a2 + 356);
    *(a1 + 512) = v160;
    v161 = *(a2 + 384);
    if (v161)
    {
      goto LABEL_350;
    }
  }

  else
  {
    v155 = (a1 + 488);
    v156 = *(a2 + 351);
    if (*(a1 + 511) < 0)
    {
      if (v156 >= 0)
      {
        v162 = (a2 + 328);
      }

      else
      {
        v162 = *(a2 + 328);
      }

      if (v156 >= 0)
      {
        v163 = *(a2 + 351);
      }

      else
      {
        v163 = *(a2 + 336);
      }

      std::string::__assign_no_alias<false>(v155, v162, v163);
    }

    else if ((*(a2 + 351) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v155, *(a2 + 328), *(a2 + 336));
    }

    else
    {
      v157 = *(a2 + 328);
      *(a1 + 504) = *(a2 + 344);
      *&v155->__r_.__value_.__l.__data_ = v157;
    }

    v164 = *(a2 + 352);
    *(a1 + 516) = *(a2 + 356);
    *(a1 + 512) = v164;
    std::vector<unsigned short>::__assign_with_size[abi:sn200100]<unsigned short *,unsigned short *>((a1 + 520), *(a2 + 360), *(a2 + 368), (*(a2 + 368) - *(a2 + 360)) >> 1);
    v161 = *(a2 + 384);
    if (v161)
    {
LABEL_350:
      (**v161)(v161);
    }
  }

  v165 = *(a1 + 544);
  if (v165)
  {
    (*(*v165 + 8))(v165);
  }

  *(a1 + 544) = v161;
  v166 = *(a2 + 392);
  if (v166)
  {
    (**v166)(v166);
  }

  v167 = *(a1 + 552);
  if (v167)
  {
    (*(*v167 + 8))(v167);
  }

  *(a1 + 552) = v166;
  v188 = 0;
  v191[14] = 0;
  v190 = 0;
  memset(v191, 0, 13);
  v189 = 0;
  webrtc::InvokeSetParametersCallback(a4, &v188, v192);
  if ((v194 & 0x80000000) == 0)
  {
    if ((v191[7] & 0x80000000) == 0)
    {
      return;
    }

LABEL_361:
    operator delete(v189);
    return;
  }

  operator delete(v193);
  if ((v191[7] & 0x80000000) != 0)
  {
    goto LABEL_361;
  }
}

void webrtc::internal::AudioSendStream::~AudioSendStream(webrtc::internal::AudioSendStream *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
  }

  (*(**(this + 71) + 80))(*(this + 71));
  pthread_mutex_destroy((this + 664));
  pthread_mutex_destroy((this + 600));
  v9 = *(this + 71);
  *(this + 71) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 70);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  webrtc::AudioSendStream::Config::~Config((this + 160));
  v11 = *(this + 2);
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

{
  webrtc::internal::AudioSendStream::~AudioSendStream(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::internal::AudioSendStream::~AudioSendStream(webrtc::internal::AudioSendStream *this)
{
  webrtc::internal::AudioSendStream::~AudioSendStream((this - 8));
}

{
  webrtc::internal::AudioSendStream::~AudioSendStream((this - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::internal::AudioSendStream::Reconfigure(unint64_t a1, std::string::size_type a2, uint64_t a3)
{
  (*(a3 + 16))(0, a3, v7);
  v8 = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  webrtc::internal::AudioSendStream::ConfigureStream(a1, a2, 0, v7);
  return (v8)(1, v7, v7);
}

_DWORD *webrtc::internal::AudioSendStream::FindExtensionIds(_DWORD *result, uint64_t a2, uint64_t a3)
{
  *(result + 3) = 0;
  *(result + 1) = 0;
  *(result + 5) = 0;
  if (a2 == a3)
  {
    *result = 0;
  }

  else
  {
    v4 = a2;
    v45 = result;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v5 = 0;
    v6 = 0x78652F67726F2E63;
    v7 = 0x64692D6D61657274;
    do
    {
      if (*(v4 + 23) < 0)
      {
        v8 = *(v4 + 8);
        if (v8 <= 53)
        {
          switch(v8)
          {
            case '#':
              if (**v4 == 0x667465693A6E7275 && *(*v4 + 8) == 0x3A736D617261703ALL && *(*v4 + 16) == 0x657264682D707472 && *(*v4 + 24) == 0x3A736564733A7478 && *(*v4 + 27) == 0x64696D3A73656473)
              {
                LODWORD(v48) = *(v4 + 24);
              }

              break;
            case '+':
              if (**v4 == 0x667465693A6E7275 && *(*v4 + 8) == 0x3A736D617261703ALL && *(*v4 + 16) == 0x657264682D707472 && *(*v4 + 24) == 0x2D637273733A7478 && *(*v4 + 32) == 0x656C2D6F69647561 && *(*v4 + 35) == 0x6C6576656C2D6F69)
              {
                LODWORD(v46) = *(v4 + 24);
              }

              break;
            case '-':
              v16 = **v4 == 0x667465693A6E7275 && *(*v4 + 8) == 0x3A736D617261703ALL;
              v17 = v16 && *(*v4 + 16) == 0x657264682D707472;
              v18 = v17 && *(*v4 + 24) == 0x3A736564733A7478;
              v19 = v18 && *(*v4 + 32) == 0x657274732D707472;
              if (v19 && *(*v4 + 37) == v7)
              {
                LODWORD(v47) = *(v4 + 24);
              }

              break;
          }
        }

        else if (v8 > 60)
        {
          if (v8 == 61)
          {
            if (**v4 == 0x772F2F3A70747468 && *(*v4 + 8) == 0x74726265772E7777 && *(*v4 + 16) == v6 && *(*v4 + 24) == 0x746E656D69726570 && *(*v4 + 32) == 0x64682D7074722F73 && *(*v4 + 40) == 0x7362612F74786572 && *(*v4 + 48) == 0x657275747061632DLL && *(*v4 + 53) == 0x656D69742D657275)
            {
              HIDWORD(v47) = *(v4 + 24);
            }
          }

          else if (v8 == 73)
          {
            v21 = v7;
            v22 = v6;
            if (!memcmp(*v4, "http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01", 0x49uLL))
            {
              v5 = *(v4 + 24);
            }

            v6 = v22;
            v7 = v21;
          }
        }

        else if (v8 == 54)
        {
          if (**v4 == 0x667465693A6E7275 && *(*v4 + 8) == 0x3A736D617261703ALL && *(*v4 + 16) == 0x657264682D707472 && *(*v4 + 24) == 0x3A736564733A7478 && *(*v4 + 32) == 0x6465726961706572 && *(*v4 + 40) == 0x7274732D7074722DLL && *(*v4 + 46) == v7)
          {
            HIDWORD(v46) = *(v4 + 24);
          }
        }

        else if (v8 == 58 && **v4 == 0x772F2F3A70747468 && *(*v4 + 8) == 0x74726265772E7777 && *(*v4 + 16) == v6 && *(*v4 + 24) == 0x746E656D69726570 && *(*v4 + 32) == 0x64682D7074722F73 && *(*v4 + 40) == 0x7362612F74786572 && *(*v4 + 48) == 0x69742D646E65732DLL && *(*v4 + 56) == 25965)
        {
          HIDWORD(v48) = *(v4 + 24);
        }
      }

      v4 += 32;
    }

    while (v4 != a3);
    result = v45;
    v45[5] = v47;
    v45[6] = HIDWORD(v46);
    v45[3] = v5;
    v45[4] = v48;
    v45[1] = HIDWORD(v48);
    v45[2] = HIDWORD(v47);
    *v45 = v46;
  }

  return result;
}

unint64_t webrtc::internal::AudioSendStream::Start(unint64_t this)
{
  if ((*(this + 592) & 1) == 0)
  {
    v15 = v1;
    v16 = v2;
    v3 = this;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
    }

    if ((*(v3 + 312) & 1) != 0 || *(v3 + 296) == -1 || *(v3 + 300) == -1 || (*(v3 + 80) & 1) == 0 && (webrtc::internal::AudioSendStream::FindExtensionIds(v14, *(v3 + 224), *(v3 + 232)), !v14[3]))
    {
      (*(**(v3 + 768) + 304))(*(v3 + 768), 0);
    }

    else
    {
      (*(**(v3 + 760) + 208))(*(v3 + 760), 1);
      (*(**(v3 + 760) + 216))(*(v3 + 760));
      (*(**(v3 + 768) + 304))();
      webrtc::internal::AudioSendStream::ConfigureBitrateObserver(v3);
    }

    (*(**(v3 + 568) + 168))(*(v3 + 568));
    *(v3 + 592) = 1;
    v11 = *(v3 + 560);
    v12 = *(v3 + 580);
    v13 = *(v3 + 584);

    return webrtc::internal::AudioState::AddSendingStream(v11, v3, v12, v13);
  }

  return this;
}

void webrtc::internal::AudioSendStream::ConfigureBitrateObserver(webrtc::internal::AudioSendStream *this)
{
  webrtc::internal::AudioSendStream::GetMinMaxBitrateConstraints(&v20, this);
  v5 = *(this + 15);
  if (*(this + 576) == 1)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = v5 + 20000;
    if (v5 == 0x8000000000000000)
    {
      v7 = 0x8000000000000000;
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v7;
    }
  }

  else
  {
    if ((*(this + 864) & 1) == 0)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 8000000 * *(this + 104) / *(this + 107);
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0x8000000000000000;
        v9 = v8 == 0x8000000000000000 || v5 == 0x8000000000000000;
        v10 = v8 + v5;
        if (!v9)
        {
          v6 = v10;
        }
      }
    }
  }

  if (*(this + 136) == 1)
  {
    v6 = *(this + 16);
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(this + 94);
  if (!*(this + 577))
  {
    v6 = 0;
  }

  v13 = vmovn_s64(v20);
  v14 = 0;
  v15 = v6;
  v16 = 1;
  v12 = 304;
  if (*(this + 152))
  {
    v12 = 144;
  }

  v17 = *(this + v12);
  v18 = 0;
  v19 = 1;
  (**v11)(v11, this + 8, &v13, v2, v3, v4);
  *(this + 840) = 1;
}

unint64_t webrtc::internal::AudioSendStream::Stop(unint64_t this)
{
  if (*(this + 592) == 1)
  {
    v2 = this;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
    }

    *(v2 + 840) = 0;
    (*(**(v2 + 752) + 8))(*(v2 + 752), v2 + 8);
    (*(**(v2 + 568) + 176))(*(v2 + 568));
    *(v2 + 592) = 0;
    v10 = *(v2 + 560);

    return webrtc::internal::AudioState::RemoveSendingStream(v10, v2);
  }

  return this;
}

uint64_t webrtc::internal::AudioSendStream::SendAudioData(uint64_t a1, uint64_t *a2)
{
  v4 = pthread_self();
  v5 = *(a1 + 64);
  *(a1 + 64) = v5 + 1;
  if (!v5)
  {
    *(a1 + 72) = v4;
  }

  if (pthread_equal(*(a1 + 72), v4))
  {
    v10 = *(*a2 + 24);
    v27 = *(*a2 + 32);
    pthread_mutex_lock((a1 + 600));
    if (*(*a2 + 15432))
    {
      v11 = 0;
    }

    else
    {
      v11 = WebRtcSpl_MaxAbsValueW16((*a2 + 72), *(*a2 + 40) * *(*a2 + 24));
    }

    v12 = v10;
    pthread_mutex_lock((a1 + 664));
    v13 = *(a1 + 728);
    if (v11 > v13)
    {
      *(a1 + 728) = v11;
      v13 = v11;
    }

    v14 = *(a1 + 730);
    *(a1 + 730) = v14 + 1;
    v15 = v12 / v27;
    if (v14 == 10)
    {
      *(a1 + 732) = v13;
      *(a1 + 730) = 0;
      *(a1 + 728) = v13 >> 2;
    }

    else
    {
      LOWORD(v13) = *(a1 + 732);
    }

    *(a1 + 736) = *(a1 + 736) + v13 / 32767.0 * (v13 / 32767.0) * v15;
    *(a1 + 744) = v15 + *(a1 + 744);
    pthread_mutex_unlock((a1 + 664));
    pthread_mutex_unlock((a1 + 600));
    v16 = *(a1 + 568);
    v17 = *a2;
    *a2 = 0;
    v28 = v17;
    (*(*v16 + 152))(v16, &v28);
    result = v28;
    v28 = 0;
    if (result)
    {
      v19 = *(result + 64);
      if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        v20 = result;
        v21 = *(v19 + 8);
        if (v21)
        {
          v22 = *(v19 + 16);
          v23 = *(v19 + 8);
          if (v22 != v21)
          {
            do
            {
              v24 = *(v22 - 96);
              if (v24)
              {
                *(v22 - 88) = v24;
                operator delete(v24);
              }

              v22 -= 104;
            }

            while (v22 != v21);
            v23 = *(v19 + 8);
          }

          *(v19 + 16) = v21;
          operator delete(v23);
        }

        MEMORY[0x2743DA540](v19, 0x1020C40E72D6CFBLL);
        result = v20;
      }

      result = MEMORY[0x2743DA540](result, 0x1020C40C39A3FA5);
    }

    --*(a1 + 64);
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc", 368, "!race_checker368.RaceDetected()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v6, v7, v8, v9, v26);
    return webrtc::internal::AudioSendStream::SendTelephoneEvent(v25);
  }

  return result;
}

uint64_t webrtc::internal::AudioSendStream::SendTelephoneEvent(webrtc::internal::AudioSendStream *this)
{
  (*(**(this + 71) + 112))(*(this + 71));
  v2 = *(**(this + 71) + 120);

  return v2();
}

double webrtc::internal::AudioSendStream::GetStats@<D0>(webrtc::internal::AudioSendStream *this@<X0>, uint64_t a2@<X8>)
{
  return webrtc::internal::AudioSendStream::GetStats(this, a2);
}

{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xBF800000FFFFFFFFLL;
  *(a2 + 64) = 0;
  v4 = (a2 + 64);
  *(a2 + 92) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = -1;
  *(a2 + 104) = -1;
  *(a2 + 112) = 0;
  *(a2 + 140) = 0;
  *(a2 + 144) = 0;
  *(a2 + 148) = 0;
  *(a2 + 152) = 0;
  *(a2 + 156) = 0;
  *(a2 + 160) = 0;
  *(a2 + 164) = 0;
  *(a2 + 168) = 0;
  *(a2 + 172) = 0;
  *(a2 + 176) = 0;
  *(a2 + 180) = 0;
  *(a2 + 184) = 0;
  *(a2 + 188) = 0;
  *(a2 + 192) = 0;
  v5 = (a2 + 192);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 252) = 0;
  *(a2 + 256) = 0;
  *(a2 + 260) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 300) = 0;
  *(a2 + 336) = 0;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *a2 = *(this + 40);
  *(a2 + 304) = (*(**(this + 71) + 136))(*(this + 71));
  (*(**(this + 71) + 24))(&v31);
  *(a2 + 8) = v32;
  *(a2 + 24) = v33;
  *(a2 + 32) = v34;
  *(a2 + 40) = v35;
  if (v31 >= 1)
  {
    *(a2 + 104) = v31;
  }

  if (*(this + 456) == 1)
  {
    if (v4 != (this + 360))
    {
      v6 = *(this + 383);
      if (*(a2 + 87) < 0)
      {
        if (v6 >= 0)
        {
          v7 = this + 360;
        }

        else
        {
          v7 = *(this + 45);
        }

        if (v6 >= 0)
        {
          v8 = *(this + 383);
        }

        else
        {
          v8 = *(this + 46);
        }

        std::string::__assign_no_alias<false>(v4, v7, v8);
      }

      else if ((*(this + 383) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v4, *(this + 45), *(this + 46));
      }

      else
      {
        *&v4->__r_.__value_.__l.__data_ = *(this + 360);
        v4->__r_.__value_.__r.__words[2] = *(this + 47);
      }
    }

    *(a2 + 88) = *(this + 88);
    *(a2 + 92) = 1;
    (*(**(this + 71) + 88))(&v24);
    v9 = v24;
    if (v24 != *(&v24 + 1))
    {
      v10 = v24;
      while (*(v10 + 4) != *a2)
      {
        v10 += 64;
        if (v10 == *(&v24 + 1))
        {
          goto LABEL_26;
        }
      }

      *(a2 + 56) = *(v10 + 12);
      *(a2 + 60) = vcvts_n_f32_u32(*(v10 + 8), 8uLL);
      v11 = *(this + 96);
      if (v11 >= 1)
      {
        v12 = 1000000 * *(v10 + 20) / v11;
        if (v12 % 0x3E8 <= 0x1F3)
        {
          v13 = v12 / 0x3E8;
        }

        else
        {
          v13 = v12 / 0x3E8 + 1;
        }

        *(a2 + 96) = v13;
      }
    }

LABEL_26:
    if (v9)
    {
      *(&v24 + 1) = v9;
      operator delete(v9);
    }
  }

  pthread_mutex_lock((this + 600));
  pthread_mutex_lock((this + 664));
  v14 = *(this + 366);
  pthread_mutex_unlock((this + 664));
  *(a2 + 112) = v14;
  pthread_mutex_lock((this + 664));
  v15 = *(this + 92);
  pthread_mutex_unlock((this + 664));
  *(a2 + 120) = v15;
  pthread_mutex_lock((this + 664));
  v16 = *(this + 93);
  pthread_mutex_unlock((this + 664));
  *(a2 + 128) = v16;
  pthread_mutex_unlock((this + 600));
  (*(**(this + 71) + 96))(&v24);
  v17 = v25;
  *(a2 + 136) = v24;
  *(a2 + 152) = v17;
  *(a2 + 168) = v26;
  *(a2 + 184) = v27;
  v18 = (*(**(this + 70) + 32))(*(this + 70));
  if (v18)
  {
    (*(*v18 + 256))(&v24);
    v19 = v29;
    v5[4] = v28;
    v5[5] = v19;
    v5[6] = v30;
    v20 = v25;
    *v5 = v24;
    v5[1] = v20;
    v21 = v27;
    v5[2] = v26;
    v5[3] = v21;
  }

  v22 = *(a2 + 312);
  if (v22)
  {
    *(a2 + 320) = v22;
    operator delete(v22);
  }

  result = *&v36;
  *(a2 + 312) = v36;
  *(a2 + 328) = v37;
  *(a2 + 336) = v38;
  return result;
}

uint64_t webrtc::internal::AudioSendStream::DeliverRtcp(webrtc::internal::AudioSendStream *this, const unsigned __int8 *a2)
{
  (*(**(this + 71) + 16))(*(this + 71), a2);
  v3 = *(this + 103);
  result = (*(**(this + 96) + 432))();
  v7 = result + v3;
  if (*(this + 104) != result + v3)
  {
    *(this + 104) = result + v3;
    v5 = *(this + 71);
    v6 = &v7;
    (*(*v5 + 48))(v5, &v6, webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::UpdateOverheadPerPacket(void)::$_1>);
    if (*(this + 840) == 1)
    {
      webrtc::internal::AudioSendStream::ConfigureBitrateObserver(this);
    }

    return (*(**(this + 71) + 208))(*(this + 71), v7);
  }

  return result;
}

uint64_t webrtc::internal::AudioSendStream::OnBitrateUpdated(uint64_t a1, uint64_t a2)
{
  webrtc::internal::AudioSendStream::GetMinMaxBitrateConstraints(&v12, a1);
  if (v13[8] == 1)
  {
    v4 = v13;
    v5 = vld1q_dup_f64(v4);
    v6 = vbslq_s8(vcgtq_s64(v5, *a2), *a2, v5);
    v7 = vld1q_dup_f64(&v12);
    *a2 = vbslq_s8(vcgtq_s64(v6, v7), v6, v7);
  }

  v8 = *(a1 + 568);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v11[2] = *(a2 + 32);
  (*(*v8 + 128))(v8, v11);
  return 0;
}

void webrtc::internal::AudioSendStream::GetMinMaxBitrateConstraints(webrtc::internal::AudioSendStream *this, uint64_t a2)
{
  v3 = *(a2 + 296);
  if ((v3 & 0x80000000) != 0 || (v4 = *(a2 + 300), (v4 & 0x80000000) != 0))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
    }

    goto LABEL_11;
  }

  if (*(a2 + 96) == 1)
  {
    v3 = *(a2 + 88);
    if (*(a2 + 112) != 1)
    {
LABEL_5:
      if (*(a2 + 888) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if (*(a2 + 112) != 1)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 104);
  if (*(a2 + 888) != 1)
  {
LABEL_6:
    if (v4 < v3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v3 = *(a2 + 872);
  v4 = *(a2 + 880);
  if (v4 < v3)
  {
LABEL_7:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
    }

LABEL_11:
    *this = 0;
    *(this + 16) = 0;
    return;
  }

LABEL_15:
  if (*(a2 + 576) == 1)
  {
    v19 = v3 + 6666;
    if (v3 == 0x8000000000000000)
    {
      v19 = 0x8000000000000000;
    }

    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = v19;
    }

    v20 = v4 + 6666;
    if (v4 == 0x8000000000000000)
    {
      v20 = 0x8000000000000000;
    }

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if ((*(a2 + 864) & 1) == 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
      }

      goto LABEL_11;
    }

    v21 = 8000000 * *(a2 + 832);
    v22 = v21 / *(a2 + 856);
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = 0x8000000000000000;
    if (v22 != 0x8000000000000000 && v3 != 0x8000000000000000)
    {
      v23 = v22 + v3;
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v25;
    }

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = v21 / *(a2 + 848);
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x8000000000000000;
        v27 = v26 == 0x8000000000000000 || v4 == 0x8000000000000000;
        v28 = v26 + v4;
        if (!v27)
        {
          v20 = v28;
        }
      }
    }
  }

  *this = v3;
  *(this + 1) = v20;
  *(this + 16) = 1;
}

uint64_t non-virtual thunk towebrtc::internal::AudioSendStream::OnBitrateUpdated(uint64_t a1, uint64_t a2)
{
  webrtc::internal::AudioSendStream::GetMinMaxBitrateConstraints(&v12, a1 - 8);
  if (v13[8] == 1)
  {
    v4 = v13;
    v5 = vld1q_dup_f64(v4);
    v6 = vbslq_s8(vcgtq_s64(v5, *a2), *a2, v5);
    v7 = vld1q_dup_f64(&v12);
    *a2 = vbslq_s8(vcgtq_s64(v6, v7), v6, v7);
  }

  v8 = *(a1 + 560);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v11[2] = *(a2 + 32);
  (*(*v8 + 128))(v8, v11);
  return 0;
}

uint64_t webrtc::internal::AudioSendStream::SetTransportOverhead(webrtc::internal::AudioSendStream *this, int a2)
{
  v3 = a2;
  *(this + 103) = a2;
  result = (*(**(this + 96) + 432))(*(this + 96));
  v7 = result + v3;
  if (*(this + 104) != result + v3)
  {
    *(this + 104) = result + v3;
    v5 = *(this + 71);
    v6 = &v7;
    (*(*v5 + 48))(v5, &v6, webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::UpdateOverheadPerPacket(void)::$_1>);
    if (*(this + 840) == 1)
    {
      webrtc::internal::AudioSendStream::ConfigureBitrateObserver(this);
    }

    return (*(**(this + 71) + 208))(*(this + 71), v7);
  }

  return result;
}

void std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(void **a1, std::string *a2, std::string *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
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

    if (!(a4 >> 59))
    {
      v28 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v28 = a4;
      }

      v29 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v30 = 0x7FFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v30 = v28;
      }

      if (!(v30 >> 59))
      {
        operator new();
      }
    }

    goto LABEL_63;
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v26 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            if (v26 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = v5->__r_.__value_.__r.__words[0];
            }

            if (v26 >= 0)
            {
              size = HIBYTE(v5->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v5->__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v8, v23, size);
          }

          else if ((*(&v5->__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
          }

          else
          {
            v27 = *&v5->__r_.__value_.__l.__data_;
            v8->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
            *&v8->__r_.__value_.__l.__data_ = v27;
          }
        }

        data = v5[1].__r_.__value_.__l.__data_;
        v8[1].__r_.__value_.__s.__data_[4] = v5[1].__r_.__value_.__s.__data_[4];
        LODWORD(v8[1].__r_.__value_.__l.__data_) = data;
        v5 = (v5 + 32);
        v8 = (v8 + 32);
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v35 = *(v13 - 9);
      v13 -= 4;
      if (v35 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = 0;
      do
      {
        v19 = &v15[v8];
        v20 = &v15[v5];
        if (v5 != v8)
        {
          v21 = v20[23];
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v16 = &v15[v5];
            }

            else
            {
              v16 = *&v15[v5];
            }

            if (v21 >= 0)
            {
              v17 = v20[23];
            }

            else
            {
              v17 = *&v15[v5 + 8];
            }

            std::string::__assign_no_alias<false>(&v15[v8], v16, v17);
          }

          else if (v20[23] < 0)
          {
            std::string::__assign_no_alias<true>(&v15[v8], *&v15[v5], *&v15[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = *(v20 + 2);
            *v19 = v22;
          }
        }

        v18 = *(v20 + 6);
        v19[28] = v20[28];
        *(v19 + 6) = v18;
        v15 += 32;
      }

      while (v14 != v15);
      v13 = a1[1];
      v5 = &v14[v5];
    }

    v31 = v13;
    if (v5 != a3)
    {
      v31 = v13;
      v32 = v13;
      while (v32)
      {
        if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v32, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
        }

        else
        {
          v34 = *&v5->__r_.__value_.__l.__data_;
          v32[2] = v5->__r_.__value_.__r.__words[2];
          *v32 = v34;
        }

        v33 = v5[1].__r_.__value_.__l.__data_;
        *(v32 + 28) = v5[1].__r_.__value_.__s.__data_[4];
        *(v32 + 6) = v33;
        v5 = (v5 + 32);
        v32 += 4;
        v31 += 4;
        if (v5 == a3)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_63:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_56:
    a1[1] = v31;
  }
}

void std::vector<webrtc::rtclog::StreamConfig::Codec>::__emplace_back_slow_path<std::string const&,int const&,int>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 5) + 1;
  if (!(v1 >> 59))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 4 > v1)
    {
      v1 = v2 >> 4;
    }

    v3 = v2 >= 0x7FFFFFFFFFFFFFE0;
    v4 = 0x7FFFFFFFFFFFFFFLL;
    if (!v3)
    {
      v4 = v1;
    }

    if (v4)
    {
      if (!(v4 >> 59))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

double _ZN6webrtc12FunctionViewIFvPNS_12AudioEncoderEEE11CallVoidPtrIZNS_8internal15AudioSendStream15ConfigureStreamERKNS_15AudioSendStream6ConfigEbN4absl12AnyInvocableIFvNS_8RTCErrorEOEEEE3__0EEvNS4_9VoidUnionES2_(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *a1;
    (*(*a2 + 216))(&v6, a2);
    if (*(v3 + 864) == v7)
    {
      if (*(v3 + 864))
      {
        *(v3 + 848) = v6;
      }
    }

    else if (*(v3 + 864))
    {
      *(v3 + 864) = 0;
    }

    else
    {
      *(v3 + 848) = v6;
      *(v3 + 864) = 1;
    }

    (*(*a2 + 224))(&v6, a2);
    v5 = (v3 + 872);
    if (*(v3 + 888) == v7)
    {
      if (*(v3 + 888))
      {
        result = *&v6;
        *v5 = v6;
      }
    }

    else if (*(v3 + 888))
    {
      *(v3 + 888) = 0;
    }

    else
    {
      result = *&v6;
      *v5 = v6;
      *(v3 + 888) = 1;
    }
  }

  return result;
}

unsigned int **webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureSendCodec(webrtc::AudioSendStream::Config const&)::$_0>(unsigned int **result, uint64_t a2)
{
  if ((*result)[1])
  {
    return (*(*a2 + 160))(a2, **result);
  }

  __break(1u);
  return result;
}

void webrtc::FunctionView<void ()(webrtc::AudioEncoder *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureANA(webrtc::AudioSendStream::Config const&)::$_0>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*(v2 + 184))
  {
    v4 = *a1;
    v5 = (*(*a2 + 128))(a2, v2 + 160, *(*a1 + 48));
    v6 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (v5)
    {
      if ((v6 & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
      }

      if (*(v4 + 832))
      {
        v14 = *(*a2 + 192);

        v14(a2);
      }
    }

    else if ((v6 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/audio/audio_send_stream.cc");
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t webrtc::FunctionView<void ()(std::unique_ptr<webrtc::AudioEncoder> *)>::CallVoidPtr<webrtc::internal::AudioSendStream::ReconfigureCNG(webrtc::AudioSendStream::Config const&)::$_0>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  result = (*(*v4 + 120))(v4);
  if (v6)
  {
    v7 = *result;
    *result = 0;
    result = (*(*v4 + 8))(v4);
    v4 = v7;
  }

  if ((*(*a1 + 296) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 272) == 1)
  {
    result = (*(*v4 + 24))(v4);
    if (*(*a1 + 296) & 1) != 0 && (*(*a1 + 272))
    {
      webrtc::CreateComfortNoiseEncoder();
    }

LABEL_13:
    __break(1u);
    return result;
  }

  result = *a2;
  *a2 = v4;
  if (result)
  {
    v8 = *(*result + 8);

    return v8();
  }

  return result;
}

void webrtc::AudioSendStream::Config::~Config(webrtc::AudioSendStream::Config *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 48);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 45);
  if (v4)
  {
    *(this + 46) = v4;
    operator delete(v4);
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  v5 = *(this + 38);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 296) == 1 && (std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 240, *(this + 31)), *(this + 223) < 0))
  {
    operator delete(*(this + 25));
    if (*(this + 184) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (*(this + 184) != 1)
  {
    goto LABEL_17;
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

LABEL_17:
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  v6 = *(this + 8);
  if (v6)
  {
    v7 = *(this + 9);
    v8 = *(this + 8);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 8);
    }

    *(this + 9) = v6;
    operator delete(v8);
  }

  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_31;
  }
}

double webrtc::AudioSendStream::Config::ToString@<D0>(webrtc::AudioSendStream::Config *this@<X0>, std::string *a2@<X8>)
{
  v186 = *MEMORY[0x277D85DE8];
  memset(&v176, 0, sizeof(v176));
  if (&v176 <= "{rtp: " && v176.__r_.__value_.__r.__words + 6 > "{rtp: ")
  {
    goto LABEL_453;
  }

  qmemcpy(&v176, "{rtp: ", 6);
  *(&v176.__r_.__value_.__s + 23) = 6;
  __s = v185;
  strcpy(v185, "{ssrc: ");
  v184 = xmmword_273B8EBA0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", *this);
  v5 = *(this + 31);
  if (v5 < 0)
  {
    v5 = *(this + 2);
  }

  if (v5)
  {
    if (v184 + ~*(&v184 + 1) >= 7uLL)
    {
      v6 = 7;
    }

    else
    {
      v6 = v184 + ~*(&v184 + 1);
    }

    memcpy(&__s[*(&v184 + 1)], ", rid: ", v6);
    *(&v184 + 1) += v6;
    __s[*(&v184 + 1)] = 0;
    v7 = *(this + 31);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = *(this + 1);
      v7 = *(this + 2);
    }

    else
    {
      v8 = this + 8;
    }

    if (v7 >= v184 + ~*(&v184 + 1))
    {
      v9 = v184 + ~*(&v184 + 1);
    }

    else
    {
      v9 = v7;
    }

    memcpy(&__s[*(&v184 + 1)], v8, v9);
    *(&v184 + 1) += v9;
    __s[*(&v184 + 1)] = 0;
  }

  v10 = *(this + 55);
  if (v10 < 0)
  {
    v10 = *(this + 5);
  }

  if (v10)
  {
    if (v184 + ~*(&v184 + 1) >= 7uLL)
    {
      v11 = 7;
    }

    else
    {
      v11 = v184 + ~*(&v184 + 1);
    }

    memcpy(&__s[*(&v184 + 1)], ", mid: ", v11);
    *(&v184 + 1) += v11;
    __s[*(&v184 + 1)] = 0;
    v12 = *(this + 55);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = *(this + 4);
      v12 = *(this + 5);
    }

    else
    {
      v13 = this + 32;
    }

    if (v12 >= v184 + ~*(&v184 + 1))
    {
      v14 = v184 + ~*(&v184 + 1);
    }

    else
    {
      v14 = v12;
    }

    memcpy(&__s[*(&v184 + 1)], v13, v14);
    *(&v184 + 1) += v14;
    __s[*(&v184 + 1)] = 0;
  }

  if (v184 + ~*(&v184 + 1) >= 0x16uLL)
  {
    v15 = 22;
  }

  else
  {
    v15 = v184 + ~*(&v184 + 1);
  }

  memcpy(&__s[*(&v184 + 1)], ", extmap-allow-mixed: ", v15);
  *(&v184 + 1) += v15;
  __s[*(&v184 + 1)] = 0;
  v16 = 4;
  if (*(this + 56))
  {
    v17 = "true";
  }

  else
  {
    v16 = 5;
    v17 = "false";
  }

  if (v16 >= v184 + ~*(&v184 + 1))
  {
    v18 = v184 + ~*(&v184 + 1);
  }

  else
  {
    v18 = v16;
  }

  memcpy(&__s[*(&v184 + 1)], v17, v18);
  *(&v184 + 1) += v18;
  __s[*(&v184 + 1)] = 0;
  if (v184 + ~*(&v184 + 1) >= 0xFuLL)
  {
    v19 = 15;
  }

  else
  {
    v19 = v184 + ~*(&v184 + 1);
  }

  memcpy(&__s[*(&v184 + 1)], ", extensions: [", v19);
  *(&v184 + 1) += v19;
  __s[*(&v184 + 1)] = 0;
  v20 = *(this + 8);
  if (*(this + 9) != v20)
  {
    v21 = 0;
    for (i = 0; i < v26; ++i)
    {
      webrtc::RtpExtension::ToString((v20 + v21), &__p);
      v23 = HIBYTE(v182);
      if (v182 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v182 < 0)
      {
        v23 = v181;
      }

      if (v23 >= v184 + ~*(&v184 + 1))
      {
        v25 = v184 + ~*(&v184 + 1);
      }

      else
      {
        v25 = v23;
      }

      memcpy(&__s[*(&v184 + 1)], p_p, v25);
      *(&v184 + 1) += v25;
      __s[*(&v184 + 1)] = 0;
      if (SHIBYTE(v182) < 0)
      {
        operator delete(__p);
        v20 = *(this + 8);
        v26 = (*(this + 9) - v20) >> 5;
        if (i != v26 - 1)
        {
LABEL_58:
          if (v184 + ~*(&v184 + 1) >= 2uLL)
          {
            v27 = 2;
          }

          else
          {
            v27 = v184 + ~*(&v184 + 1);
          }

          memcpy(&__s[*(&v184 + 1)], ", ", v27);
          *(&v184 + 1) += v27;
          __s[*(&v184 + 1)] = 0;
          v20 = *(this + 8);
          v26 = (*(this + 9) - v20) >> 5;
        }
      }

      else
      {
        v20 = *(this + 8);
        v26 = (*(this + 9) - v20) >> 5;
        if (i != v26 - 1)
        {
          goto LABEL_58;
        }
      }

      v21 += 32;
    }
  }

  LOBYTE(__p) = 93;
  v28 = v184;
  v29 = *(&v184 + 1) + 1;
  memcpy(&__s[*(&v184 + 1)], &__p, v184 != *(&v184 + 1) + 1);
  v30 = *(&v184 + 1);
  if (v28 != v29)
  {
    v30 = *(&v184 + 1) + 1;
  }

  *(&v184 + 1) = v30;
  __s[v30] = 0;
  if (v184 + ~*(&v184 + 1) >= 0xAuLL)
  {
    v31 = 10;
  }

  else
  {
    v31 = v184 + ~*(&v184 + 1);
  }

  memcpy(&__s[*(&v184 + 1)], ", c_name: ", v31);
  *(&v184 + 1) += v31;
  __s[*(&v184 + 1)] = 0;
  v32 = *(this + 111);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v33 = *(this + 11);
    v32 = *(this + 12);
  }

  else
  {
    v33 = this + 88;
  }

  if (v32 >= v184 + ~*(&v184 + 1))
  {
    v34 = v184 + ~*(&v184 + 1);
  }

  else
  {
    v34 = v32;
  }

  memcpy(&__s[*(&v184 + 1)], v33, v34);
  *(&v184 + 1) += v34;
  __s[*(&v184 + 1)] = 0;
  LOBYTE(__p) = 125;
  v35 = v184;
  v36 = *(&v184 + 1) + 1;
  memcpy(&__s[*(&v184 + 1)], &__p, v184 != *(&v184 + 1) + 1);
  v37 = *(&v184 + 1);
  if (v35 != v36)
  {
    v37 = *(&v184 + 1) + 1;
  }

  *(&v184 + 1) = v37;
  __s[v37] = 0;
  if (!__s)
  {
    goto LABEL_453;
  }

  v38 = strlen(__s);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_454;
  }

  if (v38 > 0x16)
  {
    operator new();
  }

  HIBYTE(v182) = v38;
  v40 = &__p + v38;
  if (&__p <= __s && v40 > __s)
  {
    goto LABEL_453;
  }

  if (v38)
  {
    memmove(&__p, __s, v38);
  }

  *v40 = 0;
  v41 = v182 >= 0 ? &__p : __p;
  v42 = v182 >= 0 ? HIBYTE(v182) : v181;
  if (!v41 && v42)
  {
    goto LABEL_453;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = 22;
  }

  else
  {
    v43 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v176.__r_.__value_.__l.__size_;
  }

  if (v43 - size < v42)
  {
    std::string::__grow_by_and_replace(&v176, v43, size + v42 - v43, size, size, 0, v42, v41);
    if ((SHIBYTE(v182) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_100;
  }

  if (!v42)
  {
LABEL_110:
    if ((SHIBYTE(v182) & 0x80000000) == 0)
    {
      goto LABEL_111;
    }

LABEL_100:
    operator delete(__p);
    goto LABEL_111;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v176;
  }

  else
  {
    v45 = v176.__r_.__value_.__r.__words[0];
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_453;
  }

  v46 = v45 + size;
  if (v45 + size <= v41 && &v46[v42] > v41)
  {
    goto LABEL_453;
  }

  v47 = v42;
  memmove(v46, v41, v42);
  v48 = size + v47;
  if ((SHIBYTE(v176.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v176.__r_.__value_.__s + 23) = v48 & 0x7F;
    v45->__r_.__value_.__s.__data_[v48] = 0;
    goto LABEL_110;
  }

  v176.__r_.__value_.__l.__size_ = size + v47;
  v45->__r_.__value_.__s.__data_[v48] = 0;
  if (SHIBYTE(v182) < 0)
  {
    goto LABEL_100;
  }

LABEL_111:
  v49 = v176.__r_.__value_.__r.__words[2];
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = 22;
  }

  else
  {
    v50 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v51 = v176.__r_.__value_.__l.__size_;
  }

  if (v50 - v51 >= 0x1B)
  {
    v52 = &v176;
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v52 = v176.__r_.__value_.__r.__words[0];
    }

    v53 = v52 + v51;
    if (v52 + v51 <= ", rtcp_report_interval_ms: " && v53 + 27 > ", rtcp_report_interval_ms: ")
    {
      goto LABEL_453;
    }

    qmemcpy(v53, ", rtcp_report_interval_ms: ", 27);
    v54 = v51 + 27;
    if ((v49 & 0x8000000000000000) != 0)
    {
      v176.__r_.__value_.__l.__size_ = v51 + 27;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v54 & 0x7F;
    }

    v52->__r_.__value_.__s.__data_[v54] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v50, v51 - v50 + 27, v51, v51, 0, 0x1BuLL, ", rtcp_report_interval_ms: ");
  }

  webrtc::StringBuilder::operator<<(&v176, *(this + 30), v39);
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = 22;
  }

  else
  {
    v55 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v176.__r_.__value_.__l.__size_;
  }

  if (v55 - v56 >= 0x12)
  {
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v176;
    }

    else
    {
      v57 = v176.__r_.__value_.__r.__words[0];
    }

    v58 = v57 + v56;
    if (v57 + v56 <= ", send_transport: " && v58 + 18 > ", send_transport: ")
    {
      goto LABEL_453;
    }

    *(v58 + 8) = 8250;
    *v58 = *", send_transport: ";
    v59 = v56 + 18;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v56 + 18;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v59 & 0x7F;
    }

    v57->__r_.__value_.__s.__data_[v59] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v55, v56 - v55 + 18, v56, v56, 0, 0x12uLL, ", send_transport: ");
  }

  v60 = *(this + 16);
  if (v60)
  {
    v61 = "(Transport)";
  }

  else
  {
    v61 = "null";
  }

  if (v60)
  {
    v62 = 11;
  }

  else
  {
    v62 = 4;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = 22;
  }

  else
  {
    v63 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v176.__r_.__value_.__l.__size_;
  }

  if (v63 - v64 >= v62)
  {
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v176;
    }

    else
    {
      v66 = v176.__r_.__value_.__r.__words[0];
    }

    v67 = v66 + v64;
    v68 = v60 == 0;
    v69 = 11;
    if (v68)
    {
      v69 = 4;
    }

    if (v67 <= v61 && &v67[v69] > v61)
    {
      goto LABEL_453;
    }

    memcpy(v67, v61, v62);
    v70 = v64 + v62;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v64 + v62;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v70 & 0x7F;
    }

    v66->__r_.__value_.__s.__data_[v70] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v63, v64 + v62 - v63, v64, v64, 0, v62, v61);
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v71 = 22;
  }

  else
  {
    v71 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v72 = v176.__r_.__value_.__l.__size_;
  }

  if (v71 - v72 >= 0x13)
  {
    v73 = &v176;
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v73 = v176.__r_.__value_.__r.__words[0];
    }

    v74 = v73 + v72;
    if (v73 + v72 <= ", min_bitrate_bps: " && v74 + 19 > ", min_bitrate_bps: ")
    {
      goto LABEL_453;
    }

    *(v74 + 15) = 540701552;
    *v74 = *", min_bitrate_bps: ";
    v75 = v72 + 19;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v72 + 19;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v75 & 0x7F;
    }

    v73->__r_.__value_.__s.__data_[v75] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v71, v72 - v71 + 19, v72, v72, 0, 0x13uLL, ", min_bitrate_bps: ");
  }

  webrtc::StringBuilder::operator<<(&v176, *(this + 34), v65);
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v77 = 22;
  }

  else
  {
    v77 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v78 = v176.__r_.__value_.__l.__size_;
  }

  if (v77 - v78 >= 0x13)
  {
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v176;
    }

    else
    {
      v79 = v176.__r_.__value_.__r.__words[0];
    }

    v80 = v79 + v78;
    if (v79 + v78 <= ", max_bitrate_bps: " && v80 + 19 > ", max_bitrate_bps: ")
    {
      goto LABEL_453;
    }

    *(v80 + 15) = 540701552;
    *v80 = *", max_bitrate_bps: ";
    v81 = v78 + 19;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v78 + 19;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v81 & 0x7F;
    }

    v79->__r_.__value_.__s.__data_[v81] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v77, v78 - v77 + 19, v78, v78, 0, 0x13uLL, ", max_bitrate_bps: ");
  }

  webrtc::StringBuilder::operator<<(&v176, *(this + 35), v76);
  v82 = v176.__r_.__value_.__r.__words[2];
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = 22;
  }

  else
  {
    v83 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v176.__r_.__value_.__l.__size_;
  }

  if (v83 - v84 >= 0x24)
  {
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &v176;
    }

    else
    {
      v85 = v176.__r_.__value_.__r.__words[0];
    }

    v86 = v85 + v84;
    if (v85 + v84 <= ", has audio_network_adaptor_config: " && v86 + 36 > ", has audio_network_adaptor_config: ")
    {
      goto LABEL_453;
    }

    qmemcpy(v86, ", has audio_network_adaptor_config: ", 36);
    v87 = v84 + 36;
    if ((v82 & 0x8000000000000000) != 0)
    {
      v176.__r_.__value_.__l.__size_ = v84 + 36;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v87 & 0x7F;
    }

    v85->__r_.__value_.__s.__data_[v87] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v83, v84 - v83 + 36, v84, v84, 0, 0x24uLL, ", has audio_network_adaptor_config: ");
  }

  if (*(this + 184))
  {
    v88 = "true";
  }

  else
  {
    v88 = "false";
  }

  if (*(this + 184))
  {
    v89 = 4;
  }

  else
  {
    v89 = 5;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = 22;
  }

  else
  {
    v90 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v176.__r_.__value_.__l.__size_;
  }

  if (v90 - v91 >= v89)
  {
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &v176;
    }

    else
    {
      v92 = v176.__r_.__value_.__r.__words[0];
    }

    v93 = v92 + v91;
    v94 = 4;
    if (!*(this + 184))
    {
      v94 = 5;
    }

    if (v93 <= v88 && &v93[v94] > v88)
    {
      goto LABEL_453;
    }

    memcpy(v93, v88, v89);
    v95 = v91 + v89;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v91 + v89;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v95 & 0x7F;
    }

    v92->__r_.__value_.__s.__data_[v95] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v90, v91 + v89 - v90, v91, v91, 0, v89, v88);
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = 22;
  }

  else
  {
    v96 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v97 = v176.__r_.__value_.__l.__size_;
  }

  if (v96 - v97 >= 0xC)
  {
    v98 = &v176;
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v98 = v176.__r_.__value_.__r.__words[0];
    }

    v99 = v98 + v97;
    if (v98 + v97 <= ", has_dscp: " && v99 + 12 > ", has_dscp: ")
    {
      goto LABEL_453;
    }

    *(v99 + 2) = 540700771;
    *v99 = *", has_dscp: ";
    v100 = v97 + 12;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v97 + 12;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v100 & 0x7F;
    }

    v98->__r_.__value_.__s.__data_[v100] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v96, v97 - v96 + 12, v97, v97, 0, 0xCuLL, ", has_dscp: ");
  }

  if (*(this + 152))
  {
    v101 = "true";
  }

  else
  {
    v101 = "false";
  }

  if (*(this + 152))
  {
    v102 = 4;
  }

  else
  {
    v102 = 5;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v103 = 22;
  }

  else
  {
    v103 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v104 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v104 = v176.__r_.__value_.__l.__size_;
  }

  if (v103 - v104 >= v102)
  {
    if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = &v176;
    }

    else
    {
      v105 = v176.__r_.__value_.__r.__words[0];
    }

    v106 = v105 + v104;
    v107 = 4;
    if (!*(this + 152))
    {
      v107 = 5;
    }

    if (v106 <= v101 && &v106[v107] > v101)
    {
      goto LABEL_453;
    }

    memcpy(v106, v101, v102);
    v108 = v104 + v102;
    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      v176.__r_.__value_.__l.__size_ = v104 + v102;
    }

    else
    {
      *(&v176.__r_.__value_.__s + 23) = v108 & 0x7F;
    }

    v105->__r_.__value_.__s.__data_[v108] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v176, v103, v104 + v102 - v103, v104, v104, 0, v102, v101);
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v109 = 22;
  }

  else
  {
    v109 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v110 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v110 = v176.__r_.__value_.__l.__size_;
  }

  if (v109 - v110 < 0x13)
  {
    std::string::__grow_by_and_replace(&v176, v109, v110 - v109 + 19, v110, v110, 0, 0x13uLL, ", send_codec_spec: ");
    if (*(this + 296) == 1)
    {
      goto LABEL_293;
    }

LABEL_318:
    HIBYTE(v182) = 7;
    if (&__p <= "<unset>" && &__p + 7 > "<unset>")
    {
      goto LABEL_453;
    }

    v128 = 1936618812;
    strcpy(&__p, "<unset>");
    v129 = 7;
    goto LABEL_406;
  }

  v125 = &v176;
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v125 = v176.__r_.__value_.__r.__words[0];
  }

  v126 = v125 + v110;
  if (v125 + v110 <= ", send_codec_spec: " && v126 + 19 > ", send_codec_spec: ")
  {
    goto LABEL_453;
  }

  *(v126 + 15) = 540697445;
  *v126 = *", send_codec_spec: ";
  v127 = v110 + 19;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    v176.__r_.__value_.__l.__size_ = v110 + 19;
    v125->__r_.__value_.__s.__data_[v127] = 0;
    if (*(this + 296) != 1)
    {
      goto LABEL_318;
    }
  }

  else
  {
    *(&v176.__r_.__value_.__s + 23) = v127 & 0x7F;
    v125->__r_.__value_.__s.__data_[v127] = 0;
    if (*(this + 296) != 1)
    {
      goto LABEL_318;
    }
  }

LABEL_293:
  __s = v185;
  *&v184 = 1024;
  strcpy(v185, "{nack_enabled: ");
  if (*(this + 264))
  {
    v111 = 4;
  }

  else
  {
    v111 = 5;
  }

  if (*(this + 264))
  {
    v112 = "true";
  }

  else
  {
    v112 = "false";
  }

  if (*(this + 264))
  {
    v113 = 19;
  }

  else
  {
    v113 = 20;
  }

  memcpy(&v185[15], v112, v111);
  qmemcpy(&v185[v113], ", enable_non_sender_rtt: ", 25);
  v114 = v111 | 0x28;
  *(&v184 + 1) = v114;
  v185[v114] = 0;
  if (*(this + 265))
  {
    v115 = 4;
  }

  else
  {
    v115 = 5;
  }

  if (*(this + 265))
  {
    v116 = "true";
  }

  else
  {
    v116 = "false";
  }

  memcpy(&v185[v114], v116, v115);
  v118 = v115 + v114;
  v119 = &v185[v115 + v114];
  *(v119 + 4) = 540697968;
  *v119 = *", cng_payload_type: ";
  v120 = v115 + v114 + 20;
  v185[v120] = 0;
  if (*(this + 272) == 1)
  {
    v121 = *(this + 67);
    v181 = 0;
    v182 = 0x1600000000000000;
    __p = 0;
    v122 = absl::numbers_internal::FastIntToBuffer(v121, &__p, v117);
    v123 = v122 - &__p;
    if ((SHIBYTE(v182) & 0x8000000000000000) != 0)
    {
      if (v181 < v123)
      {
        goto LABEL_455;
      }

      v124 = __p;
      v181 = v122 - &__p;
    }

    else
    {
      if (v123 > SHIBYTE(v182))
      {
        goto LABEL_455;
      }

      HIBYTE(v182) = v122 - &__p;
      v124 = &__p;
    }

    v124[v123] = 0;
    v131 = HIBYTE(v182);
    v130 = v181;
  }

  else
  {
    HIBYTE(v182) = 7;
    if (&__p <= "<unset>" && &__p + 7 > "<unset>")
    {
      goto LABEL_453;
    }

    v130 = 1936618812;
    strcpy(&__p, "<unset>");
    v131 = 7;
  }

  v132 = __p;
  if ((v131 & 0x80u) == 0)
  {
    v133 = &__p;
  }

  else
  {
    v133 = __p;
  }

  if ((v131 & 0x80u) == 0)
  {
    v130 = v131;
  }

  if (v130 >= 1003 - v118)
  {
    v134 = 1003 - v118;
  }

  else
  {
    v134 = v130;
  }

  memcpy(&v185[v120], v133, v134);
  v135 = v134 + v120;
  *(&v184 + 1) = v135;
  v185[v135] = 0;
  if ((v131 & 0x80) != 0)
  {
    operator delete(v132);
  }

  if (1023 - v135 >= 0x14)
  {
    v136 = 20;
  }

  else
  {
    v136 = 1023 - v135;
  }

  memcpy(&v185[v135], ", red_payload_type: ", v136);
  v138 = v136 + v135;
  v185[v136 + v135] = 0;
  if (*(this + 280) == 1)
  {
    v139 = *(this + 69);
    v181 = 0;
    v182 = 0x1600000000000000;
    __p = 0;
    v140 = absl::numbers_internal::FastIntToBuffer(v139, &__p, v137);
    v141 = v140 - &__p;
    if ((SHIBYTE(v182) & 0x8000000000000000) != 0)
    {
      if (v181 >= v141)
      {
        v142 = __p;
        v181 = v140 - &__p;
        goto LABEL_353;
      }
    }

    else if (v141 <= SHIBYTE(v182))
    {
      HIBYTE(v182) = v140 - &__p;
      v142 = &__p;
LABEL_353:
      v142[v141] = 0;
      v143 = HIBYTE(v182);
      goto LABEL_354;
    }

LABEL_455:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  HIBYTE(v182) = 7;
  if (&__p <= "<unset>" && &__p + 7 > "<unset>")
  {
    goto LABEL_453;
  }

  strcpy(&__p, "<unset>");
  v143 = 7;
LABEL_354:
  v144 = __p;
  if ((v143 & 0x80u) == 0)
  {
    v145 = &__p;
  }

  else
  {
    v145 = __p;
  }

  if ((v143 & 0x80u) == 0)
  {
    v146 = v143;
  }

  else
  {
    v146 = v181;
  }

  if (v146 >= 1023 - v138)
  {
    v147 = 1023 - v138;
  }

  else
  {
    v147 = v146;
  }

  memcpy(&v185[v138], v145, v147);
  v148 = v147 + v138;
  v185[v147 + v138] = 0;
  if ((v143 & 0x80) != 0)
  {
    operator delete(v144);
  }

  if (1023 - v148 >= 0x10)
  {
    v149 = 16;
  }

  else
  {
    v149 = 1023 - v148;
  }

  memcpy(&v185[v148], ", payload_type: ", v149);
  *(&v184 + 1) = v149 + v148;
  v185[*(&v184 + 1)] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%d", *(this + 48));
  if (v184 + ~*(&v184 + 1) >= 0xAuLL)
  {
    v150 = 10;
  }

  else
  {
    v150 = v184 + ~*(&v184 + 1);
  }

  memcpy(&__s[*(&v184 + 1)], ", format: ", v150);
  *(&v184 + 1) += v150;
  __s[*(&v184 + 1)] = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v151 = &v177;
  webrtc::AbslStringify<absl::strings_internal::StringifySink>(&v177, this + 200);
  if (v179 >= 0)
  {
    v152 = HIBYTE(v179);
  }

  else
  {
    v151 = v177;
    v152 = v178;
  }

  if (!v151 && v152)
  {
    goto LABEL_453;
  }

  if (v152 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_454;
  }

  if (v152 > 0x16)
  {
    operator new();
  }

  HIBYTE(v182) = v152;
  v153 = (&__p + v152);
  if (&__p <= v151 && v153 > v151)
  {
    goto LABEL_453;
  }

  if (v152)
  {
    memmove(&__p, v151, v152);
  }

  *v153 = 0;
  v154 = HIBYTE(v182);
  if (v182 >= 0)
  {
    v155 = &__p;
  }

  else
  {
    v155 = __p;
  }

  if (v182 < 0)
  {
    v154 = v181;
  }

  if (v154 >= v184 + ~*(&v184 + 1))
  {
    v156 = v184 + ~*(&v184 + 1);
  }

  else
  {
    v156 = v154;
  }

  memcpy(&__s[*(&v184 + 1)], v155, v156);
  *(&v184 + 1) += v156;
  __s[*(&v184 + 1)] = 0;
  if (SHIBYTE(v182) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v179) & 0x80000000) == 0)
    {
      goto LABEL_394;
    }
  }

  else if ((SHIBYTE(v179) & 0x80000000) == 0)
  {
    goto LABEL_394;
  }

  operator delete(v177);
LABEL_394:
  LOBYTE(__p) = 125;
  v157 = v184;
  v158 = *(&v184 + 1) + 1;
  memcpy(&__s[*(&v184 + 1)], &__p, v184 != *(&v184 + 1) + 1);
  v159 = *(&v184 + 1);
  if (v157 != v158)
  {
    v159 = *(&v184 + 1) + 1;
  }

  *(&v184 + 1) = v159;
  __s[v159] = 0;
  if (!__s)
  {
    goto LABEL_453;
  }

  v160 = strlen(__s);
  if (v160 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_454;
  }

  if (v160 > 0x16)
  {
    operator new();
  }

  HIBYTE(v182) = v160;
  v161 = &__p + v160;
  if (&__p <= __s && v161 > __s)
  {
    goto LABEL_453;
  }

  if (v160)
  {
    memmove(&__p, __s, v160);
  }

  *v161 = 0;
  v129 = HIBYTE(v182);
  v128 = v181;
LABEL_406:
  if ((v129 & 0x80u) == 0)
  {
    v162 = &__p;
  }

  else
  {
    v162 = __p;
  }

  if ((v129 & 0x80u) == 0)
  {
    v163 = v129;
  }

  else
  {
    v163 = v128;
  }

  if (!v162 && v163)
  {
    goto LABEL_453;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v164 = 22;
  }

  else
  {
    v164 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v165 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v165 = v176.__r_.__value_.__l.__size_;
  }

  if (v164 - v165 < v163)
  {
    std::string::__grow_by_and_replace(&v176, v164, v165 + v163 - v164, v165, v165, 0, v163, v162);
    if ((SHIBYTE(v182) & 0x80000000) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_422;
  }

  if (!v163)
  {
LABEL_432:
    if ((SHIBYTE(v182) & 0x80000000) == 0)
    {
      goto LABEL_433;
    }

LABEL_422:
    operator delete(__p);
    goto LABEL_433;
  }

  v166 = (v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v176 : v176.__r_.__value_.__r.__words[0];
  if ((v163 & 0x8000000000000000) != 0 || (v167 = v166 + v165, v166 + v165 <= v162) && &v167[v163] > v162)
  {
LABEL_453:
    __break(1u);
LABEL_454:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v168 = v163;
  memmove(v167, v162, v163);
  v169 = v165 + v168;
  if ((SHIBYTE(v176.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v176.__r_.__value_.__s + 23) = v169 & 0x7F;
    v166->__r_.__value_.__s.__data_[v169] = 0;
    goto LABEL_432;
  }

  v176.__r_.__value_.__l.__size_ = v165 + v168;
  v166->__r_.__value_.__s.__data_[v169] = 0;
  if (SHIBYTE(v182) < 0)
  {
    goto LABEL_422;
  }

LABEL_433:
  v170 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v171 = 22;
  }

  else
  {
    v171 = (v176.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v170 = v176.__r_.__value_.__l.__size_;
  }

  if (v171 == v170)
  {
    std::string::__grow_by_and_replace(&v176, v171, 1uLL, v171, v171, 0, 1uLL, "}");
    goto LABEL_450;
  }

  v172 = &v176;
  if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v172 = v176.__r_.__value_.__r.__words[0];
  }

  v173 = v172 + v170;
  if (v172 + v170 <= "}" && v173 + 1 > "}")
  {
    goto LABEL_453;
  }

  *v173 = 125;
  v174 = v170 + 1;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    v176.__r_.__value_.__l.__size_ = v174;
  }

  else
  {
    *(&v176.__r_.__value_.__s + 23) = v174 & 0x7F;
  }

  v172->__r_.__value_.__s.__data_[v174] = 0;
LABEL_450:
  result = *&v176.__r_.__value_.__l.__data_;
  *a2 = v176;
  return result;
}

std::string *webrtc::StringBuilder::operator<<(std::string *a1, absl::numbers_internal *this, char *a3)
{
  v19 = 0;
  v20 = 0x1600000000000000;
  __p = 0;
  v4 = absl::numbers_internal::FastIntToBuffer(this, &__p, a3);
  v5 = v4 - &__p;
  if ((SHIBYTE(v20) & 0x8000000000000000) != 0)
  {
    if (v19 < v5)
    {
      goto LABEL_35;
    }

    p_p = __p;
    v19 = v4 - &__p;
  }

  else
  {
    if (v5 > SHIBYTE(v20))
    {
      goto LABEL_35;
    }

    HIBYTE(v20) = v4 - &__p;
    p_p = &__p;
  }

  p_p[v5] = 0;
  if (v20 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v20 >= 0)
  {
    v8 = HIBYTE(v20);
  }

  else
  {
    v8 = v19;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    v11 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size < v8)
    {
LABEL_19:
      std::string::__grow_by_and_replace(a1, v11, v8 - v11 + size, size, size, 0, v8, v7);
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_33;
      }

      return a1;
    }
  }

  else
  {
    v11 = 22;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (22 - v10 < v8)
    {
      goto LABEL_19;
    }
  }

  if (v8)
  {
    v13 = a1;
    if ((v10 & 0x80000000) != 0)
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v14 = v13 + size;
    if (v13 + size <= v7 && &v14[v8] > v7)
    {
      goto LABEL_34;
    }

    v15 = v8;
    memmove(v14, v7, v8);
    v16 = size + v15;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      a1->__r_.__value_.__l.__size_ = v16;
      v13->__r_.__value_.__s.__data_[v16] = 0;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_33;
    }

    *(&a1->__r_.__value_.__s + 23) = v16 & 0x7F;
    v13->__r_.__value_.__s.__data_[v16] = 0;
  }

  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(__p);
  return a1;
}

{
  v19 = 0;
  v20 = 0x1600000000000000;
  __p = 0;
  v4 = absl::numbers_internal::FastIntToBuffer(this, &__p, a3);
  v5 = v4 - &__p;
  if ((SHIBYTE(v20) & 0x8000000000000000) != 0)
  {
    if (v19 < v5)
    {
      goto LABEL_35;
    }

    p_p = __p;
    v19 = v4 - &__p;
  }

  else
  {
    if (v5 > SHIBYTE(v20))
    {
      goto LABEL_35;
    }

    HIBYTE(v20) = v4 - &__p;
    p_p = &__p;
  }

  p_p[v5] = 0;
  if (v20 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v20 >= 0)
  {
    v8 = HIBYTE(v20);
  }

  else
  {
    v8 = v19;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    v11 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size < v8)
    {
LABEL_19:
      std::string::__grow_by_and_replace(a1, v11, v8 - v11 + size, size, size, 0, v8, v7);
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_33;
      }

      return a1;
    }
  }

  else
  {
    v11 = 22;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (22 - v10 < v8)
    {
      goto LABEL_19;
    }
  }

  if (v8)
  {
    v13 = a1;
    if ((v10 & 0x80000000) != 0)
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v14 = v13 + size;
    if (v13 + size <= v7 && &v14[v8] > v7)
    {
      goto LABEL_34;
    }

    v15 = v8;
    memmove(v14, v7, v8);
    v16 = size + v15;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      a1->__r_.__value_.__l.__size_ = v16;
      v13->__r_.__value_.__s.__data_[v16] = 0;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_33;
    }

    *(&a1->__r_.__value_.__s + 23) = v16 & 0x7F;
    v13->__r_.__value_.__s.__data_[v16] = 0;
  }

  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(__p);
  return a1;
}

{
  v19 = 0;
  v20 = 0x1600000000000000;
  __p = 0;
  v4 = absl::numbers_internal::FastIntToBuffer(this, &__p, a3);
  v5 = v4 - &__p;
  if ((SHIBYTE(v20) & 0x8000000000000000) != 0)
  {
    if (v19 < v5)
    {
      goto LABEL_35;
    }

    p_p = __p;
    v19 = v4 - &__p;
  }

  else
  {
    if (v5 > SHIBYTE(v20))
    {
      goto LABEL_35;
    }

    HIBYTE(v20) = v4 - &__p;
    p_p = &__p;
  }

  p_p[v5] = 0;
  if (v20 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v20 >= 0)
  {
    v8 = HIBYTE(v20);
  }

  else
  {
    v8 = v19;
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    v11 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size < v8)
    {
LABEL_19:
      std::string::__grow_by_and_replace(a1, v11, v8 - v11 + size, size, size, 0, v8, v7);
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_33;
      }

      return a1;
    }
  }

  else
  {
    v11 = 22;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (22 - v10 < v8)
    {
      goto LABEL_19;
    }
  }

  if (v8)
  {
    v13 = a1;
    if ((v10 & 0x80000000) != 0)
    {
      v13 = a1->__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v14 = v13 + size;
    if (v13 + size <= v7 && &v14[v8] > v7)
    {
      goto LABEL_34;
    }

    v15 = v8;
    memmove(v14, v7, v8);
    v16 = size + v15;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      a1->__r_.__value_.__l.__size_ = v16;
      v13->__r_.__value_.__s.__data_[v16] = 0;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_33;
    }

    *(&a1->__r_.__value_.__s + 23) = v16 & 0x7F;
    v13->__r_.__value_.__s.__data_[v16] = 0;
  }

  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_33:
  operator delete(__p);
  return a1;
}

void webrtc::AudioSendStream::Config::SendCodecSpec::~SendCodecSpec(webrtc::AudioSendStream::Config::SendCodecSpec *this)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 48, *(this + 7));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t webrtc::AudioSendStream::Config::SendCodecSpec::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 73) != *(a2 + 73))
  {
    return 0;
  }

  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  if (v2 == 1 && v3 != 0)
  {
    v2 = *(a1 + 76);
    v3 = *(a2 + 76);
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1 && *(a2 + 88))
  {
    v5 = *(a1 + 84);
    v6 = *(a2 + 84);
  }

  if (v5 != v6 || *a1 != *a2 || !webrtc::operator==((a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  v9 = *(a1 + 96);
  if (v9 == 1 && *(a2 + 96))
  {
    if (*(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if (v9 != *(a2 + 96))
  {
    return 0;
  }

  return 1;
}

void webrtc::AbslStringify<absl::strings_internal::StringifySink>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v51[8] = *MEMORY[0x277D85DE8];
  *(&v50.__r_.__value_.__s + 23) = 1;
  if (&v50 <= "{" && &v50.__r_.__value_.__l.__data_ + 1 > "{")
  {
    goto LABEL_123;
  }

  v3 = 123;
  LOWORD(v50.__r_.__value_.__l.__data_) = 123;
  v4 = *(a2 + 40);
  v5 = (a2 + 48);
  if (v4 != (a2 + 48))
  {
    v48 = a1;
    v6 = 1;
    while (1)
    {
      if (v6)
      {
        goto LABEL_29;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = 22;
      }

      else
      {
        v7 = (v50.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v50.__r_.__value_.__l.__size_;
      }

      if (v7 - size < 2)
      {
        std::string::__grow_by_and_replace(&v50, v7, size - v7 + 2, size, size, 0, 2uLL, ", ");
        v9 = *(v4 + 55);
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_15;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v50;
      }

      else
      {
        v13 = v50.__r_.__value_.__r.__words[0];
      }

      if (v13 + size <= ", " && &v13->__r_.__value_.__s.__data_[size + 2] > ", ")
      {
        goto LABEL_123;
      }

      *(&v13->__r_.__value_.__l.__data_ + size) = 8236;
      v15 = size + 2;
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      v50.__r_.__value_.__l.__size_ = size + 2;
      v13->__r_.__value_.__s.__data_[v15] = 0;
      v9 = *(v4 + 55);
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_30:
        v10 = (v4 + 4);
        v11 = v9 == 0;
        goto LABEL_31;
      }

LABEL_15:
      v10 = v4[4];
      v9 = v4[5];
      v11 = v9 == 0;
      if (v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9 == 0;
      }

      if (!v12)
      {
        goto LABEL_123;
      }

LABEL_31:
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = 22;
      }

      else
      {
        v16 = (v50.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v50.__r_.__value_.__l.__size_;
      }

      if (v16 - v17 >= v9)
      {
        if (!v11)
        {
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v50;
          }

          else
          {
            v18 = v50.__r_.__value_.__r.__words[0];
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_123;
          }

          if (v18 + v17 <= v10 && v18 + v17 + v9 > v10)
          {
            goto LABEL_123;
          }

          v20 = v9;
          memmove(v18 + v17, v10, v9);
          v21 = v17 + v20;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            v50.__r_.__value_.__l.__size_ = v17 + v20;
          }

          else
          {
            *(&v50.__r_.__value_.__s + 23) = v21 & 0x7F;
          }

          v18->__r_.__value_.__s.__data_[v21] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v50, v16, v17 + v9 - v16, v17, v17, 0, v9, v10);
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = 22;
      }

      else
      {
        v22 = (v50.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v50.__r_.__value_.__l.__size_;
      }

      if (v22 - v23 >= 2)
      {
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v50;
        }

        else
        {
          v27 = v50.__r_.__value_.__r.__words[0];
        }

        v28 = (v27 + v23);
        if (v27 + v23 <= ": " && v28 + 1 > ": ")
        {
          goto LABEL_123;
        }

        *v28 = 8250;
        v29 = v23 + 2;
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          v50.__r_.__value_.__l.__size_ = v23 + 2;
          v27->__r_.__value_.__s.__data_[v29] = 0;
          v24 = *(v4 + 79);
          if ((v24 & 0x8000000000000000) == 0)
          {
LABEL_62:
            v25 = (v4 + 7);
            v26 = v24 == 0;
            goto LABEL_72;
          }
        }

        else
        {
          *(&v50.__r_.__value_.__s + 23) = v29 & 0x7F;
          v27->__r_.__value_.__s.__data_[v29] = 0;
          v24 = *(v4 + 79);
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v50, v22, v23 - v22 + 2, v23, v23, 0, 2uLL, ": ");
        v24 = *(v4 + 79);
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }
      }

      v25 = v4[7];
      v24 = v4[8];
      v26 = v24 == 0;
      if (!v25 && v24)
      {
        goto LABEL_123;
      }

LABEL_72:
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = 22;
      }

      else
      {
        v30 = (v50.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v31 = v50.__r_.__value_.__l.__size_;
      }

      if (v30 - v31 < v24)
      {
        std::string::__grow_by_and_replace(&v50, v30, v31 + v24 - v30, v31, v31, 0, v24, v25);
        v32 = v4[1];
        if (v32)
        {
          goto LABEL_91;
        }

        goto LABEL_96;
      }

      if (v26)
      {
        goto LABEL_90;
      }

      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v50;
      }

      else
      {
        v33 = v50.__r_.__value_.__r.__words[0];
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_123;
      }

      v34 = v33 + v31;
      if (v33 + v31 <= v25 && &v34[v24] > v25)
      {
        goto LABEL_123;
      }

      v35 = v24;
      memmove(v34, v25, v24);
      v36 = v31 + v35;
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        *(&v50.__r_.__value_.__s + 23) = v36 & 0x7F;
        v33->__r_.__value_.__s.__data_[v36] = 0;
LABEL_90:
        v32 = v4[1];
        if (v32)
        {
          goto LABEL_91;
        }

        goto LABEL_96;
      }

      v50.__r_.__value_.__l.__size_ = v31 + v35;
      v33->__r_.__value_.__s.__data_[v36] = 0;
      v32 = v4[1];
      if (v32)
      {
        do
        {
LABEL_91:
          v37 = v32;
          v32 = *v32;
        }

        while (v32);
        goto LABEL_5;
      }

      do
      {
LABEL_96:
        v37 = v4[2];
        v12 = *v37 == v4;
        v4 = v37;
      }

      while (!v12);
LABEL_5:
      v6 = 0;
      v4 = v37;
      if (v37 == v5)
      {
        LODWORD(v38) = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        v3 = v50.__r_.__value_.__l.__size_;
        v2 = a2;
        a1 = v48;
        goto LABEL_101;
      }
    }

    *(&v50.__r_.__value_.__s + 23) = v15 & 0x7F;
    v13->__r_.__value_.__s.__data_[v15] = 0;
LABEL_29:
    v9 = *(v4 + 55);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  LODWORD(v38) = 1;
LABEL_101:
  v39 = v38;
  v38 = v38;
  if ((v38 & 0x80u) == 0)
  {
    v40 = 22;
  }

  else
  {
    v40 = (v50.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v38 & 0x80u) != 0)
  {
    v38 = v3;
  }

  if (v40 == v38)
  {
    v41 = a1;
    std::string::__grow_by_and_replace(&v50, v40, 1uLL, v40, v40, 0, 1uLL, "}");
    a1 = v41;
    goto LABEL_118;
  }

  v42 = v50.__r_.__value_.__r.__words[0];
  if (v39 >= 0)
  {
    v42 = &v50;
  }

  if (v42 + v38 <= "}" && &v42->__r_.__value_.__l.__data_ + v38 + 1 > "}")
  {
LABEL_123:
    __break(1u);
    return;
  }

  v42->__r_.__value_.__s.__data_[v38] = 125;
  v44 = v38 + 1;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    v50.__r_.__value_.__l.__size_ = v44;
  }

  else
  {
    *(&v50.__r_.__value_.__s + 23) = v44 & 0x7F;
  }

  v42->__r_.__value_.__s.__data_[v44] = 0;
LABEL_118:
  __p = v50;
  memset(&v50, 0, sizeof(v50));
  v51[0] = v2;
  v45 = *(v2 + 24);
  v51[1] = absl::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v51[2] = v45;
  v46 = *(v2 + 32);
  v51[3] = absl::str_format_internal::FormatArgImpl::Dispatch<int>;
  v51[4] = v46;
  v51[5] = absl::str_format_internal::FormatArgImpl::Dispatch<unsigned long>;
  v51[6] = &__p;
  v51[7] = absl::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::str_format_internal::FormatUntyped(a1, absl::str_format_internal::FormatRawSinkImpl::Flush<absl::strings_internal::StringifySink>, "{name: %s, clockrate_hz: %d, num_channels: %d, parameters: %v}", 62, v51, 4uLL);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_122:
    operator delete(v50.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_122;
  }
}

{
  v53 = *MEMORY[0x277D85DE8];
  v51.__r_.__value_.__r.__words[0] = *(a2 + 12);
  v51.__r_.__value_.__l.__size_ = absl::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::str_format_internal::FormatUntyped(a1, absl::str_format_internal::FormatRawSinkImpl::Flush<absl::strings_internal::StringifySink>, "[%d:", 4, &v51, 1uLL);
  v4 = *(a2 + 8);
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_24;
    }

    v5 = "video/";
    if (!"video/")
    {
      goto LABEL_134;
    }
  }

  else
  {
    v5 = "audio/";
    if (!"audio/")
    {
      goto LABEL_134;
    }
  }

  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = 22;
  }

  else
  {
    v7 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v7 - v8 >= 6)
  {
    if (v6 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 + v8);
    if (v9 + v8 <= v5 && v10 + 6 > v5)
    {
      goto LABEL_134;
    }

    memmove(v10, v5, 6uLL);
    v11 = v8 + 6;
    if (*(a1 + 23) < 0)
    {
      *(a1 + 8) = v11;
    }

    else
    {
      *(a1 + 23) = v11 & 0x7F;
    }

    *(v9 + v11) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(a1, v7, v8 + 6 - v7, v8, v8, 0, 6uLL, v5);
  }

LABEL_24:
  v12 = *(a2 + 40);
  v51.__r_.__value_.__r.__words[0] = a2 + 16;
  v51.__r_.__value_.__l.__size_ = absl::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v51.__r_.__value_.__r.__words[2] = v12;
  v13 = *(a2 + 48);
  __p.__r_.__value_.__r.__words[0] = absl::str_format_internal::FormatArgImpl::Dispatch<int>;
  __p.__r_.__value_.__l.__size_ = v13;
  __p.__r_.__value_.__r.__words[2] = absl::str_format_internal::FormatArgImpl::Dispatch<unsigned long>;
  absl::str_format_internal::FormatUntyped(a1, absl::str_format_internal::FormatRawSinkImpl::Flush<absl::strings_internal::StringifySink>, "%s/%d/%d", 8, &v51, 3uLL);
  v14 = *(a2 + 168);
  if (v14 != (a2 + 176))
  {
    do
    {
      if (*(v14 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v51, v14[4], v14[5]);
        if ((*(v14 + 79) & 0x80000000) == 0)
        {
LABEL_29:
          __p = *(v14 + 7);
          v15 = *(a1 + 23);
          if (v15 < 0)
          {
            goto LABEL_34;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v51 = *(v14 + 4);
        if ((*(v14 + 79) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      std::string::__init_copy_ctor_external(&__p, v14[7], v14[8]);
      v15 = *(a1 + 23);
      if (v15 < 0)
      {
LABEL_34:
        v15 = *(a1 + 8);
        v17 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v17 == v15)
        {
          goto LABEL_35;
        }

        v16 = *a1;
        goto LABEL_37;
      }

LABEL_30:
      v16 = a1;
      if (v15 == 22)
      {
        v17 = 22;
LABEL_35:
        std::string::__grow_by_and_replace(a1, v17, 1uLL, v17, v17, 0, 1uLL, ";");
        goto LABEL_43;
      }

LABEL_37:
      v18 = (v16 + v15);
      if (v16 + v15 <= ";" && v18 + 1 > ";")
      {
        goto LABEL_134;
      }

      *v18 = 59;
      v19 = v15 + 1;
      if (*(a1 + 23) < 0)
      {
        *(a1 + 8) = v19;
      }

      else
      {
        *(a1 + 23) = v19 & 0x7F;
      }

      *(v16 + v19) = 0;
LABEL_43:
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v51;
      }

      else
      {
        v20 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      if (!v20 && size)
      {
        goto LABEL_134;
      }

      v22 = *(a1 + 23);
      if (v22 >= 0)
      {
        v23 = 22;
      }

      else
      {
        v23 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v22 >= 0)
      {
        v24 = *(a1 + 23);
      }

      else
      {
        v24 = *(a1 + 8);
      }

      if (v23 - v24 < size)
      {
        std::string::__grow_by_and_replace(a1, v23, v24 + size - v23, v24, v24, 0, size, v20);
        v25 = *(a1 + 23);
        if (v25 < 0)
        {
          goto LABEL_59;
        }

        goto LABEL_71;
      }

      if (!size)
      {
        goto LABEL_70;
      }

      if (v22 >= 0)
      {
        v28 = a1;
      }

      else
      {
        v28 = *a1;
      }

      if ((size & 0x8000000000000000) != 0)
      {
        goto LABEL_134;
      }

      v29 = (v28 + v24);
      if (v28 + v24 <= v20 && &v29[size] > v20)
      {
        goto LABEL_134;
      }

      v30 = size;
      memmove(v29, v20, size);
      v31 = v24 + v30;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        *(a1 + 23) = v31 & 0x7F;
        *(v28 + v31) = 0;
LABEL_70:
        v25 = *(a1 + 23);
        if (v25 < 0)
        {
          goto LABEL_59;
        }

        goto LABEL_71;
      }

      *(a1 + 8) = v31;
      *(v28 + v31) = 0;
      v25 = *(a1 + 23);
      if (v25 < 0)
      {
LABEL_59:
        v25 = *(a1 + 8);
        v26 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v26 == v25)
        {
          goto LABEL_73;
        }

        v27 = *a1;
        goto LABEL_74;
      }

LABEL_71:
      v27 = a1;
      if (v25 == 22)
      {
        v26 = 22;
LABEL_73:
        std::string::__grow_by_and_replace(a1, v26, 1uLL, v26, v26, 0, 1uLL, "=");
        goto LABEL_80;
      }

LABEL_74:
      v32 = (v27 + v25);
      if (v27 + v25 <= "=" && v32 + 1 > "=")
      {
        goto LABEL_134;
      }

      *v32 = 61;
      v33 = v25 + 1;
      if (*(a1 + 23) < 0)
      {
        *(a1 + 8) = v33;
      }

      else
      {
        *(a1 + 23) = v33 & 0x7F;
      }

      *(v27 + v33) = 0;
LABEL_80:
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
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __p.__r_.__value_.__l.__size_;
      }

      if (!p_p && v35)
      {
        goto LABEL_134;
      }

      v36 = *(a1 + 23);
      if (v36 >= 0)
      {
        v37 = 22;
      }

      else
      {
        v37 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v36 >= 0)
      {
        v38 = *(a1 + 23);
      }

      else
      {
        v38 = *(a1 + 8);
      }

      if (v37 - v38 < v35)
      {
        std::string::__grow_by_and_replace(a1, v37, v38 + v35 - v37, v38, v38, 0, v35, p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_96;
        }

        goto LABEL_109;
      }

      if (!v35)
      {
        goto LABEL_108;
      }

      if (v36 >= 0)
      {
        v40 = a1;
      }

      else
      {
        v40 = *a1;
      }

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_134;
      }

      v41 = (v40 + v38);
      if (v40 + v38 <= p_p && &v41[v35] > p_p)
      {
        goto LABEL_134;
      }

      v42 = v35;
      memmove(v41, p_p, v35);
      v43 = v38 + v42;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        *(a1 + 23) = v43 & 0x7F;
        *(v40 + v43) = 0;
LABEL_108:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_96;
        }

        goto LABEL_109;
      }

      *(a1 + 8) = v43;
      *(v40 + v43) = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_96:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_97;
        }

        goto LABEL_110;
      }

LABEL_109:
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_97:
        operator delete(v51.__r_.__value_.__l.__data_);
        v39 = v14[1];
        if (v39)
        {
          goto LABEL_111;
        }

        goto LABEL_113;
      }

LABEL_110:
      v39 = v14[1];
      if (v39)
      {
        do
        {
LABEL_111:
          v44 = v39;
          v39 = *v39;
        }

        while (v39);
        goto LABEL_26;
      }

      do
      {
LABEL_113:
        v44 = v14[2];
        v45 = *v44 == v14;
        v14 = v44;
      }

      while (!v45);
LABEL_26:
      v14 = v44;
    }

    while (v44 != (a2 + 176));
  }

  v46 = *(a1 + 23);
  if (v46 < 0)
  {
    v46 = *(a1 + 8);
    v48 = (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v48 == v46)
    {
      goto LABEL_124;
    }

    v47 = *a1;
  }

  else
  {
    v47 = a1;
    if (v46 == 22)
    {
      v48 = 22;
LABEL_124:
      std::string::__grow_by_and_replace(a1, v48, 1uLL, v48, v48, 0, 1uLL, "]");
      return;
    }
  }

  if (v47 + v46 <= "]" && v47 + v46 + 1 > "]")
  {
LABEL_134:
    __break(1u);
  }

  *(v47 + v46) = 93;
  v50 = v46 + 1;
  if (*(a1 + 23) < 0)
  {
    *(a1 + 8) = v50;
  }

  else
  {
    *(a1 + 23) = v50 & 0x7F;
  }

  *(v47 + v50) = 0;
}