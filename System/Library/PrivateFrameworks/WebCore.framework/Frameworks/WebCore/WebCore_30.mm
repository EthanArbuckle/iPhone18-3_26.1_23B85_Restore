void webrtc::MatchedFilter::LogFilterProperties(webrtc::MatchedFilter *this)
{
  if (*(this + 5) != *(this + 4))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x18B8;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/matched_filter.cc");
      }

      v4 += *(this + 3);
      ++v5;
      v3 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - *(this + 4)) >> 3));
  }
}

uint64_t webrtc::MatchedFilterLagAggregator::MatchedFilterLagAggregator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = *(a4 + 60);
  *(a1 + 20) = *(a4 + 24) / *(a4 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  if (a3 != -1)
  {
    if (!((a3 + 1) >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 1048) = 0xFFFFFFFF00000000;
  bzero((a1 + 48), 0x3E8uLL);
  *(a1 + 1056) = 0;
  if (*(a4 + 96) == 1)
  {
    operator new();
  }

  return a1;
}

uint64_t webrtc::MatchedFilterLagAggregator::Aggregate@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) != 1)
  {
    goto LABEL_62;
  }

  v3 = *(result + 1056);
  if (v3)
  {
    v4 = a2[2] - *(result + 20);
    v5 = (v4 & ~(v4 >> 31)) >> *v3;
    v6 = *(v3 + 1016);
    v7 = *(v3 + 1008);
    v8 = (v6 - v7) >> 2;
    v9 = v8 - 1;
    if (v8 - 1 > v5)
    {
      v9 = v5;
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v3 + 1032);
    if (v11 >= 0xFA)
    {
      goto LABEL_66;
    }

    v12 = v3 + 4;
    v13 = *(v3 + 4 + 4 * v11);
    if (v13 != -1)
    {
      if (v8 <= v13)
      {
        goto LABEL_66;
      }

      --*&v7[4 * v13];
      v11 = *(v3 + 1032);
      if (v11 > 0xF9)
      {
        goto LABEL_66;
      }
    }

    *(v12 + 4 * v11) = v10;
    v14 = *(v3 + 1032);
    if (v14 >= 0xFA)
    {
      goto LABEL_66;
    }

    v15 = *(v12 + 4 * v14);
    if (v8 <= v15)
    {
      goto LABEL_66;
    }

    ++*&v7[4 * v15];
    *(v3 + 1032) = (*(v3 + 1032) + 1) % 0xFAuLL;
    v16 = *(v3 + 1040);
    if (v16 > 499)
    {
      if (v7 == v6)
      {
        v29 = v7;
      }

      else
      {
        v28 = v7 + 4;
        v29 = v7;
        if (v7 + 4 != v6)
        {
          v30 = *v7;
          v29 = v7;
          v31 = v7 + 4;
          do
          {
            v33 = *v31;
            v31 += 4;
            v32 = v33;
            v34 = v30 < v33;
            if (v30 <= v33)
            {
              v30 = v32;
            }

            if (v34)
            {
              v29 = v28;
            }

            v28 = v31;
          }

          while (v31 != v6);
        }
      }

      v17 = (v29 - v7) >> 2;
    }

    else
    {
      *(v3 + 1040) = v16 + 1;
      if (v6 - v7 < 125)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v17) = 0;
        v18 = -1.0;
        v19 = 1.0;
        v20 = v7;
        do
        {
          v21 = v20 + 32;
          v22 = v20 + 1;
          if (v20 + 1 != v20 + 32)
          {
            v23 = *v20;
            v24 = v20 + 1;
            do
            {
              v26 = *v24++;
              v25 = v26;
              v27 = v23 < v26;
              if (v23 <= v26)
              {
                v23 = v25;
              }

              if (v27)
              {
                v20 = v22;
              }

              v22 = v24;
            }

            while (v24 != v21);
          }

          if ((v19 * *v20) > v18)
          {
            v17 = (v20 - v7) >> 2;
            v18 = v19 * *v20;
          }

          v19 = v19 * 0.7;
          v20 = v21;
        }

        while (v6 - v21 > 124);
      }
    }

    *(v3 + 1036) = v17 << *v3;
  }

  v35 = *(result + 1048);
  if (v35 >= 0xFA || (v36 = result + 48, v37 = *(result + 48 + 4 * v35), v38 = *(result + 24), v39 = *(result + 32), v40 = (v39 - v38) >> 2, v40 <= v37) || (v41 = *a2, v42 = *(result + 20), --*&v38[4 * v37], v43 = *(result + 1048), v43 >= 0xFA) || (*(v36 + 4 * v43) = (v41 - v42) & ~((v41 - v42) >> 31), v44 = *(result + 1048), v44 >= 0xFA) || (v45 = *(v36 + 4 * v44), v40 <= v45))
  {
LABEL_66:
    __break(1u);
    return result;
  }

  ++*&v38[4 * v45];
  *(result + 1048) = (*(result + 1048) + 1) % 0xFAuLL;
  if (v38 == v39)
  {
    v47 = v38;
  }

  else
  {
    v46 = v38 + 4;
    v47 = v38;
    if (v38 + 4 != v39)
    {
      v48 = *v38;
      v47 = v38;
      v49 = (v38 + 4);
      do
      {
        v51 = *v49++;
        v50 = v51;
        v52 = v48 < v51;
        if (v48 <= v51)
        {
          v48 = v50;
        }

        if (v52)
        {
          v47 = v46;
        }

        v46 = v49;
      }

      while (v49 != v39);
    }
  }

  v53 = (v47 - v38) >> 2;
  *(result + 1052) = v53;
  if (v38 == v39)
  {
    v38 = 0;
  }

  if (*(result + 8) == 1)
  {
    v54 = *(result + 16);
    v55 = *&v38[4 * v53];
    v56 = 1;
    *(result + 8) = 1;
    if (v55 > v54)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v55 = *&v38[4 * v53];
    v57 = *(result + 16);
    v56 = v55 > v57;
    *(result + 8) = v56;
    if (v55 > v57)
    {
      goto LABEL_63;
    }
  }

  if (v55 <= *(result + 12) || v56)
  {
LABEL_62:
    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

LABEL_63:
  if (v3)
  {
    LODWORD(v53) = *(v3 + 1036);
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *a3 = v56;
  *(a3 + 8) = v53;
  *(a3 + 32) = 1;
  return result;
}

__n128 webrtc::InvokeSetParametersCallback@<Q0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    v8 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
      v5 = *(a1 + 24);
    }

    else
    {
      __p = *(a2 + 2);
    }

    v10[0] = a2[8];
    *(v10 + 3) = *(a2 + 35);
    v5(a1, &v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(a1 + 16))(1, a1, a1);
    *(a1 + 16) = absl::internal_any_invocable::EmptyManager;
    *(a1 + 24) = 0;
  }

  *a3 = *a2;
  result = *(a2 + 2);
  *(a3 + 8) = result;
  *(a3 + 24) = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a3 + 32) = a2[8];
  *(a3 + 35) = *(a2 + 35);
  return result;
}

void webrtc::MediaChannelUtil::TransportForMediaChannels::~TransportForMediaChannels(webrtc::MediaChannelUtil::TransportForMediaChannels *this)
{
  *this = &unk_288295F60;
  v1 = *(this + 1);
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
    }
  }
}

{
  *this = &unk_288295F60;
  v2 = *(this + 1);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::MediaChannelUtil::~MediaChannelUtil(webrtc::MediaChannelUtil *this)
{
  *this = &unk_288295EE8;
  *(this + 2) = &unk_288295F60;
  v1 = *(this + 3);
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
    }
  }
}

{
  *this = &unk_288295EE8;
  *(this + 2) = &unk_288295F60;
  v2 = *(this + 3);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::MediaChannelUtil::TransportForMediaChannels::SetPreferredDscp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *(a1 + 16);
  if (*result != v10)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 1u, memory_order_relaxed);
    }

    operator new();
  }

  if (*(a1 + 40) != v8)
  {
    *(a1 + 40) = v8;
    v13 = *(a1 + 24) ? v8 : 0;
    result = *(a1 + 32);
    if (result)
    {
      result = (*(*result + 16))(result, 0, 5, v13);
      if (!result)
      {
        result = *(a1 + 32);
        if (result)
        {
          v14 = *(*result + 16);

          return v14();
        }
      }
    }
  }

  return result;
}

void webrtc::VideoSenderInfo::~VideoSenderInfo(void **this)
{
  if (*(this + 456) == 1 && *(this + 455) < 0)
  {
    operator delete(this[54]);
    std::__tree<sigslot::_signal_base_interface *>::destroy((this + 41), this[42]);
    if (*(this + 264) != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy((this + 41), this[42]);
    if (*(this + 264) != 1)
    {
      goto LABEL_7;
    }
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

LABEL_7:
  v2 = this[27];
  if (v2)
  {
    v3 = this[28];
    v4 = this[27];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = this[27];
    }

    this[28] = v2;
    operator delete(v4);
  }

  v7 = this[20];
  if (v7)
  {
    this[21] = v7;
    operator delete(v7);
  }

  v8 = this[17];
  if (v8)
  {
    this[18] = v8;
    operator delete(v8);
  }

  v9 = this[14];
  if (v9)
  {
    this[15] = v9;
    operator delete(v9);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }
}

void webrtc::VideoReceiverInfo::~VideoReceiverInfo(void **this)
{
  if (*(this + 416) == 1 && *(this + 415) < 0)
  {
    operator delete(this[49]);
  }

  v2 = this[46];
  if (v2)
  {
    v3 = this[47];
    v4 = this[46];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = this[46];
    }

    this[47] = v2;
    operator delete(v4);
  }

  v7 = this[23];
  if (v7)
  {
    this[24] = v7;
    operator delete(v7);
  }

  v8 = this[20];
  if (v8)
  {
    this[21] = v8;
    operator delete(v8);
  }

  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }
}

void webrtc::VoiceMediaInfo::~VoiceMediaInfo(char **this)
{
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 9), this[10]);
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 6), this[7]);
  v2 = this[3];
  if (v2)
  {
    v3 = this[4];
    v4 = this[3];
    if (v3 != v2)
    {
      v5 = v3 - 424;
      do
      {
        v7 = *(v5 + 7);
        if (v7)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 4);
        if (v8)
        {
          *(v5 + 5) = v8;
          operator delete(v8);
        }

        if (v5[23] < 0)
        {
          operator delete(*v5);
        }

        v6 = v5 - 128;
        v5 -= 552;
      }

      while (v6 != v2);
      v4 = this[3];
    }

    this[4] = v2;
    operator delete(v4);
  }

  v9 = *this;
  if (*this)
  {
    v10 = this[1];
    v11 = *this;
    if (v10 != v9)
    {
      v12 = v10 - 312;
      do
      {
        v14 = *(v12 + 10);
        if (v14)
        {
          *(v12 + 11) = v14;
          operator delete(v14);
        }

        v15 = *(v12 + 7);
        if (v15)
        {
          *(v12 + 8) = v15;
          operator delete(v15);
        }

        v16 = *(v12 + 4);
        if (v16)
        {
          *(v12 + 5) = v16;
          operator delete(v16);
        }

        if (v12[23] < 0)
        {
          operator delete(*v12);
        }

        v13 = v12 - 80;
        v12 -= 392;
      }

      while (v13 != v9);
      v11 = *this;
    }

    this[1] = v9;
    operator delete(v11);
  }
}

void webrtc::VideoMediaInfo::~VideoMediaInfo(char **this)
{
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 12), this[13]);
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 9), this[10]);
  v2 = this[6];
  if (v2)
  {
    v3 = this[7];
    v4 = this[6];
    if (v3 != v2)
    {
      do
      {
        webrtc::VideoReceiverInfo::~VideoReceiverInfo(v3 - 99);
      }

      while (v3 != v2);
      v4 = this[6];
    }

    this[7] = v2;
    operator delete(v4);
  }

  v5 = this[3];
  if (v5)
  {
    v6 = this[4];
    v7 = this[3];
    if (v6 != v5)
    {
      do
      {
        webrtc::VideoSenderInfo::~VideoSenderInfo(v6 - 59);
      }

      while (v6 != v5);
      v7 = this[3];
    }

    this[4] = v5;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    v9 = this[1];
    v10 = *this;
    if (v9 != v8)
    {
      do
      {
        webrtc::VideoSenderInfo::~VideoSenderInfo(v9 - 59);
      }

      while (v9 != v8);
      v10 = *this;
    }

    this[1] = v8;
    operator delete(v10);
  }
}

void webrtc::VideoMediaSendInfo::~VideoMediaSendInfo(char **this)
{
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 6), this[7]);
  v2 = this[3];
  if (v2)
  {
    v3 = this[4];
    v4 = this[3];
    if (v3 != v2)
    {
      do
      {
        webrtc::VideoSenderInfo::~VideoSenderInfo(v3 - 59);
      }

      while (v3 != v2);
      v4 = this[3];
    }

    this[4] = v2;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    v6 = this[1];
    v7 = *this;
    if (v6 != v5)
    {
      do
      {
        webrtc::VideoSenderInfo::~VideoSenderInfo(v6 - 59);
      }

      while (v6 != v5);
      v7 = *this;
    }

    this[1] = v5;
    operator delete(v7);
  }
}

void webrtc::VoiceMediaSendInfo::~VoiceMediaSendInfo(char **this)
{
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 3), this[4]);
  v2 = *this;
  if (*this)
  {
    v3 = this[1];
    v4 = *this;
    if (v3 != v2)
    {
      v5 = v3 - 312;
      do
      {
        v7 = *(v5 + 10);
        if (v7)
        {
          *(v5 + 11) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 7);
        if (v8)
        {
          *(v5 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v5 + 4);
        if (v9)
        {
          *(v5 + 5) = v9;
          operator delete(v9);
        }

        if (v5[23] < 0)
        {
          operator delete(*v5);
        }

        v6 = v5 - 80;
        v5 -= 392;
      }

      while (v6 != v2);
      v4 = *this;
    }

    this[1] = v2;
    operator delete(v4);
  }
}

void webrtc::VoiceMediaReceiveInfo::~VoiceMediaReceiveInfo(char **this)
{
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((this + 3), this[4]);
  v2 = *this;
  if (*this)
  {
    v3 = this[1];
    v4 = *this;
    if (v3 != v2)
    {
      v5 = v3 - 424;
      do
      {
        v7 = *(v5 + 7);
        if (v7)
        {
          *(v5 + 8) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 4);
        if (v8)
        {
          *(v5 + 5) = v8;
          operator delete(v8);
        }

        if (v5[23] < 0)
        {
          operator delete(*v5);
        }

        v6 = v5 - 128;
        v5 -= 552;
      }

      while (v6 != v2);
      v4 = *this;
    }

    this[1] = v2;
    operator delete(v4);
  }
}

void webrtc::AudioSenderParameter::~AudioSenderParameter(void **this)
{
  *this = &unk_288295F10;
  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    v2 = this;
    operator delete(this[17]);
    this = v2;
  }

  webrtc::MediaChannelParameters::~MediaChannelParameters(this);
}

{
  *this = &unk_288295F10;
  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    v1 = this;
    operator delete(this[17]);
    this = v1;
  }

  webrtc::MediaChannelParameters::~MediaChannelParameters(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::AudioSenderParameter::ToStringMap(webrtc::AudioSenderParameter *this@<X0>, char *a2@<X2>, webrtc::SenderParameters *a3@<X8>)
{
  webrtc::SenderParameters::ToStringMap(a3, this, a2);
  webrtc::AudioOptions::ToString((this + 96), __p);
  v8 = 7;
  if (v7 <= "options" && v7 + 7 > "options")
  {
    __break(1u);
  }

  else
  {
    strcpy(v7, "options");
    v11 = v7;
    v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, v7);
    v6 = v5;
    if (*(v5 + 79) < 0)
    {
      operator delete(v5[7]);
    }

    *(v6 + 7) = *__p;
    v6[9] = v10;
    HIBYTE(v10) = 0;
    LOBYTE(__p[0]) = 0;
    if (v8 < 0)
    {
      operator delete(v7[0]);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void webrtc::SenderParameters::ToStringMap(webrtc::SenderParameters *this, uint64_t a2, char *a3)
{
  webrtc::MediaChannelParameters::ToStringMap(a2, a3, this);
  v5 = *(a2 + 84);
  v23.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&v23.__r_.__value_.__l.__data_ = 0uLL;
  v7 = absl::numbers_internal::FastIntToBuffer(v5, &v23, v6);
  v8 = v7 - &v23;
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v23.__r_.__value_.__l.__size_ < v8)
    {
      goto LABEL_48;
    }

    v9 = v23.__r_.__value_.__r.__words[0];
    v23.__r_.__value_.__l.__size_ = v7 - &v23;
  }

  else
  {
    if (v8 > SHIBYTE(v23.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_48;
    }

    *(&v23.__r_.__value_.__s + 23) = v7 - &v23;
    v9 = &v23;
  }

  v9->__r_.__value_.__s.__data_[v8] = 0;
  v22 = 17;
  if (__p <= "max_bandwidth_bps" && &__p[17] > "max_bandwidth_bps")
  {
LABEL_47:
    __break(1u);
LABEL_48:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  strcpy(__p, "max_bandwidth_bps");
  v24 = __p;
  v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v11 = v10;
  if (*(v10 + 79) < 0)
  {
    operator delete(v10[7]);
  }

  *(v11 + 7) = v23;
  *(&v23.__r_.__value_.__s + 23) = 0;
  v23.__r_.__value_.__s.__data_[0] = 0;
  if ((v22 & 0x80000000) == 0 || (operator delete(*__p), (SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0))
  {
    v12 = *(a2 + 31);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v13 = *(a2 + 16);
    if (v13)
    {
      std::string::__init_copy_ctor_external(&v23, *(a2 + 8), v13);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
  v12 = *(a2 + 31);
  if (v12 < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v12)
  {
    v23 = *(a2 + 8);
    goto LABEL_21;
  }

LABEL_18:
  *(&v23.__r_.__value_.__s + 23) = 9;
  if (&v23 <= "<not set>" && (&v23 | 9) > "<not set>")
  {
    goto LABEL_47;
  }

  strcpy(&v23, "<not set>");
LABEL_21:
  v22 = 3;
  if (__p <= "mid" && &__p[3] > "mid")
  {
    goto LABEL_47;
  }

  strcpy(__p, "mid");
  v24 = __p;
  v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p);
  v15 = (v14 + 7);
  if (v14 + 7 == &v23)
  {
LABEL_35:
    if (v22 < 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (*(v14 + 79) < 0)
  {
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v23;
    }

    else
    {
      v16 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(v15, v16, size);
    goto LABEL_35;
  }

  if ((*(&v23.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v15, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    if (v22 < 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *&v15->__r_.__value_.__l.__data_ = *&v23.__r_.__value_.__l.__data_;
    v14[9] = *(&v23.__r_.__value_.__l + 2);
    if (v22 < 0)
    {
LABEL_45:
      operator delete(*__p);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_46;
      }

      goto LABEL_37;
    }
  }

LABEL_36:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_46:
    operator delete(v23.__r_.__value_.__l.__data_);
  }

LABEL_37:
  v18 = *(a2 + 88);
  *(&v23.__r_.__value_.__s + 23) = 18;
  if (&v23 <= "extmap-allow-mixed" && &v23.__r_.__value_.__r.__words[2] + 2 > "extmap-allow-mixed")
  {
    goto LABEL_47;
  }

  LOWORD(v23.__r_.__value_.__r.__words[2]) = 25701;
  *&v23.__r_.__value_.__l.__data_ = *"extmap-allow-mixed";
  if (v18)
  {
    v19 = "true";
  }

  else
  {
    v19 = "false";
  }

  v23.__r_.__value_.__s.__data_[18] = 0;
  *__p = &v23;
  v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, &v23.__r_.__value_.__l.__data_);
  std::string::__assign_external((v20 + 7), v19);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void webrtc::VideoSenderParameters::~VideoSenderParameters(webrtc::VideoSenderParameters *this)
{
  webrtc::MediaChannelParameters::~MediaChannelParameters(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::VideoSenderParameters::ToStringMap(webrtc::VideoSenderParameters *this@<X0>, char *a2@<X2>, webrtc::SenderParameters *a3@<X8>)
{
  webrtc::SenderParameters::ToStringMap(a3, this, a2);
  v5 = *(this + 89);
  v9 = 15;
  if (__p <= "conference_mode" && &__p[1] + 7 > "conference_mode")
  {
    __break(1u);
  }

  else
  {
    __p[0] = *"conference_mode";
    if (v5)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    strcpy(__p + 7, "nce_mode");
    v10 = __p;
    v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a3, __p);
    std::string::__assign_external((v7 + 7), v6);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::MediaChannelUtil::TransportForMediaChannels::SendRtcp(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::PacketOptions const&)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = -1;
  v7 = -1;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v11 = -1;
  v12 = -1;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v6 = v1[4];
  if (*(v2 + 24) == 1)
  {
    v4 = *(v2 + 40);
  }

  v13 = *(v1 + 41);
  v14 = *(v1 + 40);
  v5 = *(v1 + 43);
  v21 = *(v1 + 22);
  v3 = *(v2 + 32);
  if (v3)
  {
    (*(*v3 + 8))(v3, v1 + 1, &v4);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::MediaChannelUtil::TransportForMediaChannels::SendRtcp(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::PacketOptions const&)::$_0>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v5 = *(result + 8);
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

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::MediaChannelUtil::TransportForMediaChannels::SendRtp(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::PacketOptions const&)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = -1;
  v7 = -1;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v11 = -1;
  v12 = -1;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v6 = v1[4];
  if (*(v2 + 24) == 1)
  {
    v4 = *(v2 + 40);
  }

  v13 = *(v1 + 41);
  v14 = *(v1 + 40);
  v5 = *(v1 + 43);
  v21 = *(v1 + 22);
  v3 = *(v2 + 32);
  if (v3)
  {
    (**v3)(v3, (v1 + 1), &v4);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::MediaChannelUtil::TransportForMediaChannels::SendRtp(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::PacketOptions const&)::$_0>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v5 = *(result + 8);
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

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void webrtc::CreateRtpParametersWithEncodings(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  webrtc::StreamParams::GetPrimarySsrcs(a1, &__p);
  if (v8 != __p)
  {
    if (((v8 - __p) >> 2) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a1 + 128) != *(a1 + 120))
  {
    __break(1u);
    goto LABEL_19;
  }

  *(a2 + 128) = 0;
  *(a2 + 124) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 256;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 105) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 164) = 0;
  std::vector<webrtc::RtpEncodingParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpEncodingParameters*,webrtc::RtpEncodingParameters*>((a2 + 96), 0, 0, 0);
  if (a2 + 128 != a1 + 72)
  {
    v4 = *(a1 + 95);
    if (*(a2 + 151) < 0)
    {
      if (v4 >= 0)
      {
        v5 = (a1 + 72);
      }

      else
      {
        v5 = *(a1 + 72);
      }

      if (v4 >= 0)
      {
        v6 = *(a1 + 95);
      }

      else
      {
        v6 = *(a1 + 80);
      }

      std::string::__assign_no_alias<false>((a2 + 128), v5, v6);
    }

    else
    {
      *(a2 + 128) = *(a1 + 72);
      *(a2 + 144) = *(a1 + 88);
    }
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void webrtc::GetDefaultEnabledRtpHeaderExtensions(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 16))(&__p);
  v3 = __p;
  if (__p != v8)
  {
    do
    {
      if (*(v3 + 9) != 4)
      {
        if ((*(v3 + 28) & 1) != 0 && !a2[2])
        {
          std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<std::string const&,int const&>(a2);
        }

        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v3 += 5;
    }

    while (v3 != v8);
    v3 = __p;
  }

  if (v3)
  {
    v4 = v8;
    v5 = v3;
    if (v8 != v3)
    {
      do
      {
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void webrtc::CheckScalabilityModeValues(uint64_t IsSameRtpCodecIgnoringLevel@<X0>, unsigned __int8 *a2@<X1>, const webrtc::RtpCodec *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  if (!a3)
  {
    goto LABEL_67;
  }

  v5 = IsSameRtpCodecIgnoringLevel;
  v87 = a5;
  v6 = *(IsSameRtpCodecIgnoringLevel + 96);
  if (*(IsSameRtpCodecIgnoringLevel + 104) == v6)
  {
LABEL_66:
    a5 = v87;
LABEL_67:
    *a5 = 0;
    *(a5 + 38) = 0;
    *(a5 + 2) = 0;
    *(a5 + 3) = 0;
    *(a5 + 1) = 0;
    *(a5 + 29) = 0;
    return;
  }

  v7 = a4;
  v8 = 0;
  v90 = &a2[216 * a3];
  v86 = (a4 + 96);
LABEL_5:
  if (*(v6 + 272 * v8 + 264) != 1)
  {
    goto LABEL_37;
  }

  v9 = a2;
  do
  {
    v10 = *(v5 + 96);
    if (0xF0F0F0F0F0F0F0F1 * ((*(v5 + 104) - v10) >> 4) <= v8)
    {
      goto LABEL_145;
    }

    v11 = v10 + 272 * v8;
    if ((*(v11 + 264) & 1) == 0)
    {
      goto LABEL_145;
    }

    IsSameRtpCodecIgnoringLevel = webrtc::IsSameRtpCodecIgnoringLevel(v9, (v11 + 160), a3);
    if (IsSameRtpCodecIgnoringLevel)
    {
      v12 = *(v5 + 96);
      if (0xF0F0F0F0F0F0F0F1 * ((*(v5 + 104) - v12) >> 4) <= v8)
      {
        goto LABEL_145;
      }

      v13 = v12 + 272 * v8;
      v94.__r_.__value_.__s.__data_[0] = 0;
      v95 = 0;
      if (*(v13 + 104) != 1)
      {
        goto LABEL_33;
      }

      if (*(v13 + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v94, *(v13 + 80), *(v13 + 88));
      }

      else
      {
        v14 = *(v13 + 80);
        v94.__r_.__value_.__r.__words[2] = *(v13 + 96);
        *&v94.__r_.__value_.__l.__data_ = v14;
      }

      v15 = *(v9 + 12);
      v95 = 1;
      v16 = *(v9 + 11);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = v9 + 96;
      }

      v18 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
      if (v16 >= 2)
      {
        v19 = v16 >> 1;
        v20 = v94.__r_.__value_.__r.__words[0];
        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v94.__r_.__value_.__l.__size_;
        }

        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v94;
        }

        else
        {
          v22 = v94.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v23 = *v17;
          if (v23 >= 0x22)
          {
            goto LABEL_146;
          }

          if (qword_273B951C0[v23] == size)
          {
            IsSameRtpCodecIgnoringLevel = memcmp(off_279E94228[v23], v22, size);
            if (!IsSameRtpCodecIgnoringLevel)
            {
              break;
            }
          }

          ++v17;
          if (!--v19)
          {
            goto LABEL_7;
          }
        }

        v7 = a4;
        if (v18 < 0)
        {
          operator delete(v20);
          v24 = a4;
          v25 = v9;
          if (*(a4 + 216) != 1)
          {
            goto LABEL_36;
          }

LABEL_34:
          webrtc::Codec::operator=(v24, v25);
        }

        else
        {
LABEL_33:
          v24 = v7;
          v25 = v9;
          if (*(v7 + 216) == 1)
          {
            goto LABEL_34;
          }

LABEL_36:
          IsSameRtpCodecIgnoringLevel = webrtc::Codec::Codec(v24, v25);
          *(v7 + 216) = 1;
        }

LABEL_37:
        v6 = *(v5 + 96);
        v26 = 0xF0F0F0F0F0F0F0F1 * ((*(v5 + 104) - v6) >> 4);
        if (v26 <= v8)
        {
          goto LABEL_145;
        }

        if (*(v6 + 272 * v8 + 104) == 1)
        {
          if (*(v7 + 216))
          {
            v27 = *(v7 + 88);
            v28 = v86;
            if (v27)
            {
              v28 = *v86;
            }

            if (v27 < 2)
            {
LABEL_68:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                __p[0] = "INVALID_MODIFICATION";
                __p[1] = 20;
                webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
              }

              *v87 = 7;
              operator new();
            }

            v29 = v27 >> 1;
            while (2)
            {
              v30 = *v28;
              if (v30 >= 0x22)
              {
                goto LABEL_146;
              }

              v31 = *(v6 + 272 * v8 + 103);
              if (v31 < 0)
              {
                v32 = *(v6 + 272 * v8 + 80);
                v33 = qword_273B951C0[v30];
                if (v33 == *(v6 + 272 * v8 + 88))
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v32 = (v6 + 272 * v8 + 80);
                v33 = qword_273B951C0[v30];
                if (v33 == v31)
                {
LABEL_44:
                  IsSameRtpCodecIgnoringLevel = memcmp(off_279E94228[v30], v32, v33);
                  if (!IsSameRtpCodecIgnoringLevel)
                  {
                    goto LABEL_4;
                  }
                }
              }

              ++v28;
              if (!--v29)
              {
                goto LABEL_68;
              }

              continue;
            }
          }

          v34 = a2;
          while (1)
          {
            v35 = *(v34 + 11);
            v36 = v34 + 96;
            if (v35)
            {
              v36 = *v36;
            }

            if (v35 >= 2)
            {
              break;
            }

LABEL_53:
            v34 += 216;
            if (v34 == v90)
            {
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                __p[0] = "INVALID_MODIFICATION";
                __p[1] = 20;
                webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v61, v62, v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
              }

              *v87 = 7;
              operator new();
            }
          }

          v37 = v35 >> 1;
          while (2)
          {
            v38 = *v36;
            if (v38 >= 0x22)
            {
              goto LABEL_146;
            }

            v39 = *(v6 + 272 * v8 + 103);
            if (v39 < 0)
            {
              v40 = *(v6 + 272 * v8 + 80);
              v41 = qword_273B951C0[v38];
              if (v41 == *(v6 + 272 * v8 + 88))
              {
                goto LABEL_58;
              }
            }

            else
            {
              v40 = (v6 + 272 * v8 + 80);
              v41 = qword_273B951C0[v38];
              if (v41 == v39)
              {
LABEL_58:
                IsSameRtpCodecIgnoringLevel = memcmp(off_279E94228[v38], v40, v41);
                if (!IsSameRtpCodecIgnoringLevel)
                {
                  break;
                }
              }
            }

            ++v36;
            if (!--v37)
            {
              goto LABEL_53;
            }

            continue;
          }
        }

LABEL_4:
        if (++v8 >= v26)
        {
          goto LABEL_66;
        }

        goto LABEL_5;
      }

LABEL_7:
      v7 = a4;
      if (v18 < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }
    }

    v9 += 216;
  }

  while (v9 != v90);
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    v49 = v87;
  }

  else
  {
    v50 = &v91;
    IsSameRtpCodecIgnoringLevel = std::to_string(&v91, v8);
    v58 = v91.__r_.__value_.__r.__words[2];
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v91.__r_.__value_.__l.__size_;
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = 22;
    }

    else
    {
      v60 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v60 - v59 < 0x30)
    {
      if (0x7FFFFFFFFFFFFFF6 - v60 >= v59 + 48 - v60)
      {
        operator new();
      }

LABEL_147:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = v91.__r_.__value_.__r.__words[0];
    }

    v68 = "Attempted to use an unsupported codec for layer ";
    if (v59)
    {
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_145;
      }

      v69 = v50 + v59 <= "Attempted to use an unsupported codec for layer " || v50 > "Attempted to use an unsupported codec for layer ";
      v70 = 48;
      if (v69)
      {
        v70 = 0;
      }

      v68 = &aAttemptedToUse[v70];
      v71 = &v91;
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v71 = v91.__r_.__value_.__r.__words[0];
      }

      memmove(&v71[2], v50, v59);
    }

    *&v50->__r_.__value_.__l.__data_ = *v68;
    *&v50->__r_.__value_.__r.__words[2] = *(v68 + 1);
    *&v50[1].__r_.__value_.__r.__words[1] = *(v68 + 2);
    v72 = v59 + 48;
    if ((v58 & 0x8000000000000000) != 0)
    {
      v91.__r_.__value_.__l.__size_ = v59 + 48;
    }

    else
    {
      *(&v91.__r_.__value_.__s + 23) = v72 & 0x7F;
    }

    v49 = v87;
    v50->__r_.__value_.__s.__data_[v72] = 0;
    *__p = *&v91.__r_.__value_.__l.__data_;
    __len = v91.__r_.__value_.__r.__words[2];
    memset(&v91, 0, sizeof(v91));
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
    if (SHIBYTE(__len) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }
  }

  v73 = &v91;
  IsSameRtpCodecIgnoringLevel = std::to_string(&v91, v8);
  v74 = v91.__r_.__value_.__r.__words[2];
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v75 = v91.__r_.__value_.__l.__size_;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v76 = 22;
  }

  else
  {
    v76 = (v91.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v76 - v75 < 0x30)
  {
    if (0x7FFFFFFFFFFFFFF6 - v76 >= v75 + 48 - v76)
    {
      operator new();
    }

    goto LABEL_147;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v73 = v91.__r_.__value_.__r.__words[0];
  }

  v77 = "Attempted to use an unsupported codec for layer ";
  if (v75)
  {
    if ((v75 & 0x8000000000000000) != 0)
    {
      goto LABEL_145;
    }

    v78 = v73 + v75 <= "Attempted to use an unsupported codec for layer " || v73 > "Attempted to use an unsupported codec for layer ";
    v79 = 48;
    if (v78)
    {
      v79 = 0;
    }

    v77 = &aAttemptedToUse[v79];
    v80 = &v91;
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v80 = v91.__r_.__value_.__r.__words[0];
    }

    memmove(&v80[2], v73, v75);
  }

  *&v73->__r_.__value_.__l.__data_ = *v77;
  *&v73->__r_.__value_.__r.__words[2] = *(v77 + 1);
  *&v73[1].__r_.__value_.__r.__words[1] = *(v77 + 2);
  v81 = v75 + 48;
  if ((v74 & 0x8000000000000000) != 0)
  {
    v91.__r_.__value_.__l.__size_ = v75 + 48;
  }

  else
  {
    *(&v91.__r_.__value_.__s + 23) = v81 & 0x7F;
  }

  v73->__r_.__value_.__s.__data_[v81] = 0;
  __len = v91.__r_.__value_.__r.__words[2];
  *__p = *&v91.__r_.__value_.__l.__data_;
  memset(&v91, 0, sizeof(v91));
  v82 = SHIBYTE(__len);
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    v83 = __p[0];
    v84 = __p[1];
    *v49 = 7;
    if (v84 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_147;
    }
  }

  else
  {
    *v49 = 7;
    v83 = __p;
    v84 = v82;
  }

  if (v84 > 0x16)
  {
    operator new();
  }

  IsSameRtpCodecIgnoringLevel = (v49 + 2);
  *(v49 + 31) = v84;
  v85 = &v84[(v49 + 2)];
  if (v49 + 2 <= v83 && v85 > v83)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(IsSameRtpCodecIgnoringLevel);
  }

  if (v84)
  {
    memmove(IsSameRtpCodecIgnoringLevel, v83, v84);
  }

  *v85 = 0;
  v49[8] = 0;
  *(v49 + 36) = 0;
  *(v49 + 38) = 0;
  if ((v82 & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }
}

void webrtc::CheckRtpParametersValues(webrtc::Codec *a1@<X3>, uint64_t a2@<X0>, unsigned __int8 *a3@<X1>, const webrtc::RtpCodec *a4@<X2>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v93 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 96);
  if (*(a2 + 104) != v11)
  {
    if (*(v11 + 8) <= 0.0)
    {
LABEL_69:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p = "INVALID_RANGE";
        v89 = 13;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
      }

      *a6 = 4;
      operator new();
    }

    if (*(v11 + 72) == 1 && *(v11 + 64) < 1.0)
    {
LABEL_5:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p = "INVALID_RANGE";
        v89 = 13;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
      }

      *a6 = 4;
      operator new();
    }

    if (*(v11 + 48) == 1 && *(v11 + 40) < 0.0)
    {
LABEL_10:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p = "INVALID_RANGE";
        v89 = 13;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
      }

      *a6 = 4;
      operator new();
    }

    if (*(v11 + 32) == 1 && *(v11 + 24) == 1 && *(v11 + 20) < *(v11 + 28))
    {
LABEL_16:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p = "INVALID_RANGE";
        v89 = 13;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
      }

      *a6 = 4;
      operator new();
    }

    if (*(v11 + 60) == 1 && (*(v11 + 56) - 5) < 0xFFFFFFFC)
    {
LABEL_21:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p = "INVALID_RANGE";
        v89 = 13;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
      }

      *a6 = 4;
      operator new();
    }

    v41 = *(v11 + 120);
    if (v41 == 1 && (*(v11 + 112) < 1 || *(v11 + 116) < 1))
    {
LABEL_87:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p = "INVALID_MODIFICATION";
        v89 = 20;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v67, v68, v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
      }

      *a6 = 7;
      operator new();
    }

    (*(*a5 + 16))(&__p, a5, "WebRTC-MixedCodecSimulcast", 26);
    if (v90 < 0)
    {
      operator delete(__p);
    }

    v42 = *(a2 + 96);
    v43 = *(a2 + 104);
    if (0xF0F0F0F0F0F0F0F1 * ((v43 - v42) >> 4) >= 2)
    {
      v44 = 1;
      v45 = 536;
      while (1)
      {
        if (*(v42 + v45 - 256) <= 0.0)
        {
          goto LABEL_69;
        }

        if (*(v42 + v45 - 192) == 1 && *(v42 + v45 - 200) < 1.0)
        {
          goto LABEL_5;
        }

        v46 = v42 + v45;
        if (*(v42 + v45 - 216) == 1 && *(v46 - 224) < 0.0)
        {
          goto LABEL_10;
        }

        if (*(v46 - 232) == 1 && *(v42 + v45 - 240) == 1 && *(v42 + v45 - 244) < *(v46 - 236))
        {
          goto LABEL_16;
        }

        v47 = v42 + v45;
        if (*(v42 + v45 - 204) == 1 && (*(v47 - 208) - 5) <= 0xFFFFFFFB)
        {
          goto LABEL_21;
        }

        if (*(v47 - 144) == 1)
        {
          v48 = v42 + v45;
          if (*(v48 - 152) < 1 || *(v48 - 148) <= 0)
          {
            goto LABEL_87;
          }

          LOBYTE(v41) = 1;
        }

        (*(*a5 + 16))(&__p, a5, "WebRTC-MixedCodecSimulcast", 26);
        v49 = v90;
        if ((v90 & 0x80u) != 0)
        {
          v49 = v89;
        }

        if (v49 >= 7)
        {
          break;
        }

        v50 = 0;
        if (v90 < 0)
        {
          goto LABEL_61;
        }

LABEL_62:
        v42 = *(a2 + 96);
        v43 = *(a2 + 104);
        if ((v50 & 1) == 0)
        {
          v55 = 0xF0F0F0F0F0F0F0F1 * ((v43 - v42) >> 4);
          if (v55 <= v44 - 1 || v55 <= v44)
          {
            __break(1u);
          }

          v56 = *(v42 + v45 - 272);
          if (v56 == 1 && (*(v42 + v45) & 1) != 0)
          {
            if (!webrtc::RtpCodec::operator==(v42 + v45 - 376, v42 + v45 - 104))
            {
LABEL_93:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
              {
                __p = "UNSUPPORTED_OPERATION";
                v89 = 21;
                webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v81, v82, v83, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
              }

              *a6 = 1;
              operator new();
            }

            v42 = *(a2 + 96);
            v43 = *(a2 + 104);
          }

          else if (v56 != (*(v42 + v45) & 1))
          {
            goto LABEL_93;
          }
        }

        ++v44;
        v45 += 272;
        if (v44 >= 0xF0F0F0F0F0F0F0F1 * ((v43 - v42) >> 4))
        {
          goto LABEL_72;
        }
      }

      p_p = __p;
      if ((v90 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      v52 = *p_p;
      v53 = *(p_p + 3);
      v54 = v52 == 1650552389 && v53 == 1684368482;
      v50 = v54;
      if ((v90 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

LABEL_61:
      operator delete(__p);
      goto LABEL_62;
    }

LABEL_72:
    if ((v41 & 1) != 0 && v42 != v43)
    {
      v64 = v42 + 272;
      do
      {
        v65 = *(v64 - 148) ^ 1 | *(v64 - 152);
        if ((v65 & 1) == 0)
        {
          break;
        }

        v54 = v64 == v43;
        v64 += 272;
      }

      while (!v54);
      if ((v65 & 1) == 0)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          __p = "INVALID_MODIFICATION";
          v89 = 20;
          webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v74, v75, v76, v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
        }

        *a6 = 7;
        operator new();
      }
    }
  }

  v91[0] = 0;
  v92 = 0;
  if (*(a1 + 216) == 1)
  {
    webrtc::Codec::Codec(v91, a1);
    v92 = 1;
  }

  if (a4)
  {
    v66 = a3;
  }

  else
  {
    v66 = 0;
  }

  webrtc::CheckScalabilityModeValues(a2, v66, a4, v91, a6);
  if (v92 == 1)
  {
    webrtc::Codec::~Codec(v91);
  }
}

void webrtc::CheckRtpParametersInvalidModificationAndValues(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, const webrtc::RtpCodec *a4@<X3>, const webrtc::Codec *a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X8>)
{
  v92 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 96);
  v8 = *(a2 + 104);
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  if (v8 - v9 != v10 - v11)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_72;
    }

LABEL_71:
    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v57, v58, v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
LABEL_72:
    *a7 = 7;
    operator new();
  }

  v12 = *(a2 + 124);
  v13 = *(a1 + 124);
  if (v12 == 1 && v13 != 0)
  {
    v12 = *(a2 + 120);
    v13 = *(a1 + 120);
  }

  if (v12 != v13)
  {
    goto LABEL_70;
  }

  v15 = *(a2 + 151);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 136);
  }

  v17 = *(a1 + 151);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 136);
  }

  if (v15 != v17 || (v16 >= 0 ? (v19 = (a2 + 128)) : (v19 = *(a2 + 128)), v18 >= 0 ? (v20 = (a1 + 128)) : (v20 = *(a1 + 128)), memcmp(v19, v20, v15) || (v24 = a2, *(a2 + 152) != *(a1 + 152)) || *(a2 + 153) != *(a1 + 153)))
  {
LABEL_70:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v25 = *(a2 + 72);
  v86 = *(a2 + 80);
  v26 = *(a1 + 72);
  if (v86 - v25 != *(a1 + 80) - v26)
  {
    goto LABEL_74;
  }

  if (v25 != v86)
  {
    v27 = 0;
    while (1)
    {
      v28 = v26 + v27;
      v29 = *(v25 + v27 + 23);
      if (v29 >= 0)
      {
        v30 = *(v25 + v27 + 23);
      }

      else
      {
        v30 = *(v25 + v27 + 8);
      }

      v31 = *(v28 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v28 + 8);
      }

      if (v30 != v31)
      {
        break;
      }

      v33 = v29 >= 0 ? (v25 + v27) : *(v25 + v27);
      v34 = v32 >= 0 ? (v26 + v27) : *v28;
      if (memcmp(v33, v34, v30) || *(v25 + v27 + 24) != *(v26 + v27 + 24) || *(v25 + v27 + 28) != *(v26 + v27 + 28))
      {
        break;
      }

      v24 = a2;
      v27 += 32;
      if (v25 + v27 == v86)
      {
        goto LABEL_41;
      }
    }

LABEL_74:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
    }

    *a7 = 7;
    operator new();
  }

LABEL_41:
  if (v9 != v8 && v11 != v10)
  {
    v35 = 0;
    do
    {
      v36 = v11 + v35;
      v37 = *(v11 + v35 + 151);
      if (v37 >= 0)
      {
        v38 = *(v11 + v35 + 151);
      }

      else
      {
        v38 = *(v11 + v35 + 136);
      }

      v39 = v9 + v35;
      v40 = *(v9 + v35 + 151);
      v41 = v40;
      if ((v40 & 0x80u) != 0)
      {
        v40 = *(v9 + v35 + 136);
      }

      if (v38 != v40)
      {
        goto LABEL_89;
      }

      v44 = *(v36 + 128);
      v42 = v36 + 128;
      v43 = v44;
      v45 = (v37 >= 0 ? v42 : v43);
      v48 = *(v39 + 128);
      v47 = v39 + 128;
      v46 = v48;
      v49 = (v41 >= 0 ? v47 : v46);
      if (memcmp(v45, v49, v38))
      {
        goto LABEL_89;
      }

      v24 = a2;
      v35 += 272;
    }

    while (v35 + v11 != v10 && v35 + v9 != v8);
    if (v11 + v35 == v10 && v9 + v35 == v8)
    {
      v50 = a4;
      v51 = a6;
      v52 = a3;
      v53 = a5;
      while (1)
      {
        v54 = *(v11 + 4);
        v55 = *(v9 + 4);
        v56 = *v11 == *v9;
        if ((v54 & v55 & 1) == 0)
        {
          v56 = ~(v54 ^ v55);
        }

        if ((v56 & 1) == 0)
        {
          goto LABEL_92;
        }

        v11 += 272;
        v9 += 272;
        if (v11 == v10 || v9 == v8)
        {
          goto LABEL_80;
        }
      }
    }

LABEL_89:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
    }

    *a7 = 7;
    operator new();
  }

  if (v9 != v8 || v11 != v10)
  {
    goto LABEL_89;
  }

  v9 = v8;
  v11 = v10;
  v50 = a4;
  v51 = a6;
  v52 = a3;
  v53 = a5;
LABEL_80:
  if (v11 != v10 || v9 != v8)
  {
LABEL_92:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v79, v80, v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/base/media_engine.cc");
    }

    *a7 = 7;
    operator new();
  }

  v90[0] = 0;
  v91 = 0;
  if (*(v53 + 216) == 1)
  {
    webrtc::Codec::Codec(v90, v53);
    v51 = a6;
    v52 = a3;
    v24 = a2;
    v50 = a4;
    v91 = 1;
  }

  if (v50)
  {
    v71 = v52;
  }

  else
  {
    v71 = 0;
  }

  webrtc::CheckRtpParametersValues(v90, v24, v71, v50, v51, a7);
  if (v91 == 1)
  {
    webrtc::Codec::~Codec(v90);
  }
}

void webrtc::CompositeMediaEngine::~CompositeMediaEngine(webrtc::CompositeMediaEngine *this)
{
  *this = &unk_288295F90;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_288295F90;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::CompositeMediaEngine::Init(webrtc::CompositeMediaEngine *this)
{
  v1 = (*(*this + 24))(this);
  (*(*v1 + 24))(v1);
  return 1;
}

uint64_t webrtc::CompositeMediaEngine::voice(webrtc::CompositeMediaEngine *this)
{
  return *(this + 2);
}

{
  return *(this + 2);
}

uint64_t webrtc::CompositeMediaEngine::video(webrtc::CompositeMediaEngine *this)
{
  return *(this + 3);
}

{
  return *(this + 3);
}

void std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<webrtc::RtpEncodingParameters const&>(void *a1)
{
  v1 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0xF0F0F0F0F0F0F0)
  {
    if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
    }

    if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
    {
      v2 = 0xF0F0F0F0F0F0F0;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0xF0F0F0F0F0F0F0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<webrtc::RtpEncodingParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpEncodingParameters*,webrtc::RtpEncodingParameters*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((v7 - *a1) >> 4) < a4)
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
          webrtc::RtpEncodingParameters::~RtpEncodingParameters((v10 - 272));
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

    if (a4 <= 0xF0F0F0F0F0F0F0)
    {
      v12 = 0xF0F0F0F0F0F0F0F1 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x78787878787878)
      {
        v14 = 0xF0F0F0F0F0F0F0;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xF0F0F0F0F0F0F0)
      {
        operator new();
      }
    }

    goto LABEL_43;
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xF0F0F0F0F0F0F0F1 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::RtpEncodingParameters::operator=(v8, v5);
        v5 += 272;
        v8 += 272;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 = (v15 - 272);
      webrtc::RtpEncodingParameters::~RtpEncodingParameters(v15);
    }

    a1[1] = v8;
  }

  else
  {
    if (v15 != v8)
    {
      v17 = &v16[a2];
      do
      {
        webrtc::RtpEncodingParameters::operator=(v8, v5);
        v5 += 272;
        v8 += 272;
        v16 -= 272;
      }

      while (v16);
      v15 = a1[1];
      v5 = v17;
    }

    v18 = v15;
    if (v5 != a3)
    {
      v19 = 0;
      while (1)
      {
        v20 = (v15 + v19);
        if (!(v15 + v19))
        {
          break;
        }

        v21 = v5 + v19;
        *v20 = *(v5 + v19);
        v22 = *(v5 + v19 + 16);
        v23 = *(v5 + v19 + 32);
        v24 = *(v5 + v19 + 48);
        *(v20 + 57) = *(v5 + v19 + 57);
        v20[2] = v23;
        v20[3] = v24;
        v20[1] = v22;
        v25 = v15 + v19;
        *(v15 + v19 + 80) = 0;
        v26 = (v15 + v19 + 80);
        *(v15 + v19 + 104) = 0;
        if (*(v5 + v19 + 104) == 1)
        {
          if (*(v5 + v19 + 103) < 0)
          {
            std::string::__init_copy_ctor_external(v26, *(v21 + 80), *(v5 + v19 + 88));
          }

          else
          {
            v27 = *(v21 + 80);
            *(v15 + v19 + 96) = *(v21 + 96);
            *&v26->__r_.__value_.__l.__data_ = v27;
          }

          v25[104] = 1;
        }

        v28 = *(v21 + 112);
        *(v25 + 117) = *(v21 + 117);
        *(v25 + 14) = v28;
        v29 = v5 + v19;
        if (*(v21 + 151) < 0)
        {
          std::string::__init_copy_ctor_external((v25 + 128), *(v29 + 128), *(v29 + 136));
        }

        else
        {
          v30 = *(v29 + 128);
          *(v25 + 18) = *(v29 + 144);
          *(v25 + 8) = v30;
        }

        v31 = v15 + v19;
        *(v31 + 76) = *(v21 + 152);
        *(v15 + v19 + 160) = 0;
        v31[264] = 0;
        if (*(v21 + 264) == 1)
        {
          webrtc::RtpCodec::RtpCodec((v15 + v19 + 160), (v5 + v19 + 160));
          v31[264] = 1;
        }

        v19 += 272;
        if (v21 + 272 == a3)
        {
          v18 = (v15 + v19);
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_43:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_41:
    a1[1] = v18;
  }
}

uint64_t webrtc::RtpEncodingParameters::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 80, (a2 + 80));
  v7 = *(a2 + 112);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 112) = v7;
  if (a1 == a2)
  {
    goto LABEL_13;
  }

  v8 = *(a2 + 151);
  if (*(a1 + 151) < 0)
  {
    if (v8 >= 0)
    {
      v11 = (a2 + 128);
    }

    else
    {
      v11 = *(a2 + 128);
    }

    if (v8 >= 0)
    {
      v12 = *(a2 + 151);
    }

    else
    {
      v12 = *(a2 + 136);
    }

    std::string::__assign_no_alias<false>((a1 + 128), v11, v12);
LABEL_13:
    *(a1 + 152) = *(a2 + 152);
    v10 = *(a1 + 264);
    if (v10 == *(a2 + 264))
    {
      goto LABEL_14;
    }

LABEL_20:
    if (v10)
    {
      *(a1 + 160) = &unk_28829C078;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1 + 240, *(a1 + 248));
      v15 = *(a1 + 216);
      if (v15)
      {
        *(a1 + 224) = v15;
        operator delete(v15);
      }

      if (*(a1 + 191) < 0)
      {
        operator delete(*(a1 + 168));
      }

      *(a1 + 264) = 0;
      return a1;
    }

    webrtc::RtpCodec::RtpCodec((a1 + 160), (a2 + 160));
    *(a1 + 264) = 1;
    return a1;
  }

  if ((*(a2 + 151) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((a1 + 128), *(a2 + 128), *(a2 + 136));
    *(a1 + 152) = *(a2 + 152);
    v10 = *(a1 + 264);
    if (v10 == *(a2 + 264))
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  v9 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v9;
  *(a1 + 152) = *(a2 + 152);
  v10 = *(a1 + 264);
  if (v10 != *(a2 + 264))
  {
    goto LABEL_20;
  }

LABEL_14:
  if (!v10)
  {
    return a1;
  }

  if (a1 == a2)
  {
    v17 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v17;
    return a1;
  }

  else
  {
    v13 = *(a2 + 191);
    if (*(a1 + 191) < 0)
    {
      if (v13 >= 0)
      {
        v18 = (a2 + 168);
      }

      else
      {
        v18 = *(a2 + 168);
      }

      if (v13 >= 0)
      {
        v19 = *(a2 + 191);
      }

      else
      {
        v19 = *(a2 + 176);
      }

      std::string::__assign_no_alias<false>((a1 + 168), v18, v19);
    }

    else if ((*(a2 + 191) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 168), *(a2 + 168), *(a2 + 176));
    }

    else
    {
      v14 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 168) = v14;
    }

    v20 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v20;
    std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a1 + 240, *(a2 + 240), (a2 + 248));
    return a1;
  }
}

void std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<std::string const&,int const&>(void *a1)
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

uint64_t webrtc::RtpCodec::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (!memcmp(v7, v9, v3))
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      v11 = a1;
      v12 = a2;
      v13 = *(a1 + 40);
      if (v13 == 1 && *(a2 + 40))
      {
        if (*(a1 + 36) != *(a2 + 36))
        {
          return 0;
        }
      }

      else if (v13 != *(a2 + 40))
      {
        return 0;
      }

      v14 = *(a1 + 48);
      v15 = *(a2 + 48);
      if (v14 == 1 && *(a2 + 48))
      {
        v14 = *(a1 + 44);
        v15 = *(a2 + 44);
      }

      if (v14 == v15)
      {
        v17 = *(a1 + 56);
        v16 = *(a1 + 64);
        v18 = *(a2 + 56);
        if (v16 - v17 == *(a2 + 64) - v18)
        {
          if (v17 == v16)
          {
LABEL_39:
            if (*(a1 + 96) == *(a2 + 96))
            {
              v25 = *(a1 + 80);
              v26 = (a1 + 88);
              if (v25 == (v11 + 88))
              {
                return 1;
              }

              v27 = *(v12 + 80);
              while (1)
              {
                v28 = *(v25 + 55);
                if (v28 >= 0)
                {
                  v29 = *(v25 + 55);
                }

                else
                {
                  v29 = v25[5];
                }

                v30 = *(v27 + 55);
                v31 = v30;
                if ((v30 & 0x80u) != 0)
                {
                  v30 = v27[5];
                }

                if (v29 != v30)
                {
                  break;
                }

                v32 = v28 >= 0 ? v25 + 4 : v25[4];
                v33 = v31 >= 0 ? v27 + 4 : v27[4];
                if (memcmp(v32, v33, v29))
                {
                  break;
                }

                v34 = *(v25 + 79);
                if (v34 >= 0)
                {
                  v35 = *(v25 + 79);
                }

                else
                {
                  v35 = v25[8];
                }

                v36 = *(v27 + 79);
                v37 = v36;
                if ((v36 & 0x80u) != 0)
                {
                  v36 = v27[8];
                }

                if (v35 != v36)
                {
                  break;
                }

                v38 = v34 >= 0 ? v25 + 7 : v25[7];
                v39 = v37 >= 0 ? v27 + 7 : v27[7];
                if (memcmp(v38, v39, v35))
                {
                  break;
                }

                v40 = v25[1];
                v41 = v25;
                if (v40)
                {
                  do
                  {
                    v25 = v40;
                    v40 = *v40;
                  }

                  while (v40);
                }

                else
                {
                  do
                  {
                    v25 = v41[2];
                    v24 = *v25 == v41;
                    v41 = v25;
                  }

                  while (!v24);
                }

                v42 = v27[1];
                if (v42)
                {
                  do
                  {
                    v43 = v42;
                    v42 = *v42;
                  }

                  while (v42);
                }

                else
                {
                  do
                  {
                    v43 = v27[2];
                    v24 = *v43 == v27;
                    v27 = v43;
                  }

                  while (!v24);
                }

                result = 1;
                v27 = v43;
                if (v25 == v26)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            v19 = v18 + 4;
            v20 = v17 + 4;
            while (1)
            {
              v21 = v20 - 4;
              if (*(v20 - 4) != *(v19 - 4))
              {
                break;
              }

              v22 = *(v20 + 4);
              v23 = *(v19 + 4);
              v24 = v22 != 1 || v23 == 0;
              if (v24)
              {
                if (v22 != v23)
                {
                  return 0;
                }
              }

              else if (*v20 != *v19)
              {
                return 0;
              }

              v19 += 12;
              v20 += 12;
              if (v21 + 12 == v16)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

void webrtc::media_optimization::VCMNackFecMethod::~VCMNackFecMethod(webrtc::media_optimization::VCMNackFecMethod *this)
{
  *this = &unk_288296088;
}

{
  *this = &unk_288296088;
  JUMPOUT(0x2743DA540);
}

void webrtc::media_optimization::VCMFecMethod::ProtectionFactor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8) * 255.0;
  v5 = (v4 < 0.0) | (2 * (v4 > 255.0));
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_92;
    }

    v6 = 255;
  }

  else
  {
    v6 = v4;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      *(a1 + 9) = 0;
      return;
    }
  }

  v12 = powf((*(a2 + 36) * *(a2 + 34)) / 405500.0, 0.3);
  v13 = *(a2 + 40);
  if (v13 <= 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/simulcast_rate_allocator.cc", 56, "num_layers > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v8, v9, v10, v11, *(a2 + 40));
    goto LABEL_94;
  }

  if (v13 >= 5)
  {
LABEL_94:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/simulcast_rate_allocator.cc", 57, "num_layers <= kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v8, v9, v10, v11, v13);
    webrtc::media_optimization::VCMNackFecMethod::MaxFramesFec(v59);
    return;
  }

  v14 = v12;
  v15 = v13 == 3;
  v16 = v13 - 1;
  if ((v15 & *(a1 + 113)) != 0)
  {
  }

  else
  {
  }

  v18 = *v17;
  v19 = exp2f(-v16) * *(a2 + 24);
  if (v19 < 1.0)
  {
    v19 = 1.0;
  }

  v20 = (v18 * *(a2 + 12)) / v19;
  v21 = -2147500000.0;
  v22 = (v20 < -2147500000.0) | (2 * (v20 > 2147500000.0));
  if (v22 > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_92;
    }

    v21 = 2147500000.0;
  }

  else if (!v22)
  {
    v21 = v20;
  }

  v23 = *(a1 + 16) * 8.0;
  v24 = ((v21 * 1000.0) / v23) + 1.5;
  v25 = (v24 < 0.0) | (2 * (v24 > 255.0));
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_92;
    }

    v26 = 1;
  }

  else if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24 > 1;
  }

  v27 = (1.0 / v14) * v21;
  v28 = (v27 < 0.0) | (2 * (v27 > 65535.0));
  if (v28 <= 1)
  {
    if (v28)
    {
      LOWORD(v29) = 0;
      v30 = 0;
    }

    else
    {
      v29 = v27;
      v30 = v27;
      if (v30 > 9)
      {
        v31 = 0;
        v32 = (v30 - 5) / 5;
        if (v30 > 0xF9)
        {
          v32 = 49;
        }

        v33 = 129 * v32;
        if (v32 < 0)
        {
          v33 = 0;
        }

        goto LABEL_41;
      }
    }

    v33 = 0;
    v31 = v29 == 0;
    goto LABEL_41;
  }

  if (v28 != 2)
  {
    goto LABEL_92;
  }

  v31 = 0;
  v33 = 6321;
  v30 = 0xFFFF;
LABEL_41:
  if (v6 >= 0x80)
  {
    v34 = 128;
  }

  else
  {
    v34 = v6;
  }

  v35 = webrtc::kFecRateTable[v34 + v33];
  if (v35 <= 0x33)
  {
    v36 = 51;
  }

  else
  {
    v36 = v35;
  }

  if (v26)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  if ((v37 & 0x80) != 0)
  {
    v38 = 128;
  }

  else
  {
    v38 = v37;
  }

  v39 = *(a2 + 16) + 0.5;
  v40 = (v39 < 0.0) | (2 * (v39 > 255.0));
  if (v40 > 1)
  {
    if (v40 != 2)
    {
      goto LABEL_92;
    }

    v41 = 255;
  }

  else if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v39;
  }

  v42 = *(a2 + 20) + 0.5;
  v43 = (v42 < 0.0) | (2 * (v42 > 255.0));
  if (v43 <= 1)
  {
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v42;
    }

    goto LABEL_65;
  }

  if (v43 != 2)
  {
LABEL_92:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

  v44 = 255;
LABEL_65:
  v45 = v44 / v41;
  if (v45 <= 2)
  {
    v45 = 2;
  }

  v46 = v30 * v45;
  if (v46 <= 0xF4)
  {
    v47 = ((v46 - 5) / 5 + 1);
  }

  else
  {
    v47 = 49;
  }

  if (v31)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  if (v48 <= 0xFF)
  {
    v49 = 129 * v48;
  }

  else
  {
    v49 = 32895;
  }

  v50 = v49 + v34;
  if (v50 >= 0x1932)
  {
    v50 = 6450;
  }

  v51 = webrtc::kFecRateTable[v50];
  v52 = (*(a1 + 12) * v38);
  if (v52 >= 128)
  {
    v52 = 128;
  }

  if (v52 > v51)
  {
    v51 = v52;
  }

  if (v51 <= v34)
  {
    LOBYTE(v51) = v34;
  }

  if ((v51 & 0x80) != 0)
  {
    LOBYTE(v51) = 0x80;
  }

  *(a1 + 9) = v51;
  *(a1 + 10) = v38;
  v53 = v21 * 1000.0 / v23 + 0.5 + 1.0;
  v54 = (v53 * v38) / 255.0;
  v55 = 0.5;
  v56 = v54 + 0.5;
  *(a1 + 24) = 1065353216;
  v57 = v37 < 0x55;
  v58 = (v56 < 0.9) & v57;
  if (v56 >= 1.1)
  {
    v57 = (v56 < 0.9) & v57;
  }

  if (v57 == 1)
  {
    if (v58)
    {
      v55 = 0.0;
    }

    *(a1 + 24) = v55;
  }
}

uint64_t webrtc::media_optimization::VCMNackFecMethod::UpdateParameters(uint64_t a1, uint64_t a2)
{
  webrtc::media_optimization::VCMFecMethod::ProtectionFactor(a1, a2);
  v9 = *(a1 + 120);
  if (v9 == -1 || *a2 < v9)
  {
    *(a1 + 10) = 0;
  }

  *(a1 + 8) = 0;
  v10 = *(a2 + 40);
  if (v10 <= 2)
  {
    v12 = *(a2 + 24);
    v13 = v10 - 1;
    v14 = ((((v12 / (1 << (v10 - 1))) + (v12 / (1 << (v10 - 1)))) * *a2) / 1000.0) + 0.5;
    v15 = (v14 < -2147500000.0) | (2 * (v14 > 2147500000.0));
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_60;
      }

      *(a1 + 136) = 6;
      if (v10 >= 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = v15 == 0;
      v17 = v14;
      if (!v16 || v17 <= 0)
      {
        v17 = 1;
      }

      if (v17 >= 6)
      {
        v17 = 6;
      }

      *(a1 + 136) = v17;
      if (v10 >= 1)
      {
LABEL_17:
        v11 = *(a1 + 113);
        goto LABEL_18;
      }
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/simulcast_rate_allocator.cc", 56, "num_layers > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v5, v6, v7, v8, v10);
    goto LABEL_60;
  }

  *(a1 + 136) = 1;
  if (v10 > 4)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/utility/simulcast_rate_allocator.cc", 57, "num_layers <= kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v5, v6, v7, v8, v10);
    JUMPOUT(0x27329584CLL);
  }

  v11 = *(a1 + 113);
  v12 = *(a2 + 24);
  v13 = v10 - 1;
LABEL_18:
  if (((v10 == 3) & v11) != 0)
  {
  }

  else
  {
  }

  v20 = *v19;
  v21 = exp2f(-v13) * v12;
  if (v21 < 1.0)
  {
    v21 = 1.0;
  }

  v22 = (v20 * *(a2 + 12)) / v21;
  v23 = (v22 < -2147500000.0) | (2 * (v22 > 2147500000.0));
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_60;
    }

    v24 = 2147483523;
  }

  else if (v23)
  {
    v24 = 0x80000000;
  }

  else
  {
    v24 = 125 * v22;
  }

  v25 = *(a2 + 36) * *(a2 + 34);
  if (v25 <= 0x4B000)
  {
    v26 = 700;
  }

  else
  {
    v26 = 1000;
  }

  if (v25 >= 0x18C01)
  {
    v27 = v26;
  }

  else
  {
    v27 = 400;
  }

  if (v10 > 2 || v24 >= v27 || *a2 >= 200)
  {
    v28 = *(a1 + 9);
  }

  else
  {
    v28 = 0;
    *(a1 + 9) = 0;
  }

  v29 = v28 * 255.0 / (v28 ^ 0xFF) + 0.5;
  if (v29 > 255.0)
  {
    v29 = 255.0;
  }

  v30 = (v29 < 0.0) | (2 * (v29 > 255.0));
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_60;
    }

    v31 = -1;
  }

  else if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v32 = *(a1 + 10);
  *(a1 + 9) = v31;
  v33 = v32 * 255.0 / (v32 ^ 0xFF) + 0.5;
  if (v33 > 255.0)
  {
    v33 = 255.0;
  }

  v34 = (v33 < 0.0) | (2 * (v33 > 255.0));
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      LOBYTE(v35) = -1;
      goto LABEL_56;
    }

LABEL_60:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v4);
  }

  if (v34)
  {
    LOBYTE(v35) = 0;
  }

  else
  {
    v35 = v33;
  }

LABEL_56:
  *(a1 + 10) = v35;
  return 1;
}

void webrtc::media_optimization::VCMFecMethod::~VCMFecMethod(webrtc::media_optimization::VCMFecMethod *this)
{
  *this = &unk_288296088;
}

{
  *this = &unk_288296088;
  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::media_optimization::VCMFecMethod::UpdateParameters(_BYTE *a1, uint64_t a2)
{
  webrtc::media_optimization::VCMFecMethod::ProtectionFactor(a1, a2);
  v4 = a1[9];
  a1[8] = 0;
  v5 = v4 * 255.0 / (v4 ^ 0xFF) + 0.5;
  if (v5 > 255.0)
  {
    v5 = 255.0;
  }

  v6 = (v5 < 0.0) | (2 * (v5 > 255.0));
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_18;
    }

    v7 = -1;
  }

  else if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = a1[10];
  a1[9] = v7;
  v9 = v8 * 255.0 / (v8 ^ 0xFF) + 0.5;
  if (v9 > 255.0)
  {
    v9 = 255.0;
  }

  v10 = (v9 < 0.0) | (2 * (v9 > 255.0));
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      a1[10] = -1;
      return 1;
    }

LABEL_18:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v3);
  }

  if (v10)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v11 = v9;
  }

  a1[10] = v11;
  return 1;
}

uint64_t webrtc::media_optimization::VCMLossProtectionLogic::VCMLossProtectionLogic(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 70) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 160) = -1082130432;
  *(a1 + 152) = 0xBF8000003F7FF972;
  *(a1 + 168) = 0;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 192) = -1;
  *(a1 + 200) = 0;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0;
  *(a1 + 240) = -1;
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 288) = -1;
  *(a1 + 296) = 0;
  *(a1 + 304) = -1;
  *(a1 + 312) = 0;
  *(a1 + 320) = -1;
  *(a1 + 328) = 0;
  *(a1 + 352) = -1082130432;
  *(a1 + 332) = xmmword_273B952D0;
  *(a1 + 348) = -1082130432;
  *(a1 + 360) = 704;
  *(a1 + 368) = 576;
  *(a1 + 376) = 1;
  v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (-v5 % 0x3E8uLL <= 0x1F4)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }

    v6 = v7 - -v5 / 0x3E8uLL;
  }

  else
  {
    v6 = v5 / 0x3E8;
    if (v5 % 0x3E8 > 0x1F3)
    {
      ++v6;
    }
  }

  *(a1 + 128) = v6;
  *(a1 + 136) = v6;
  *(a1 + 144) = v6;
  *(a1 + 152) = 0xBF8000003F7FF972;
  *(a1 + 332) = 0xBF8000003F7FF972;
  *(a1 + 120) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 192) = -1;
  *(a1 + 200) = 0;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0;
  *(a1 + 224) = -1;
  *(a1 + 232) = 0;
  *(a1 + 240) = -1;
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 288) = -1;
  *(a1 + 296) = 0;
  *(a1 + 304) = -1;
  *(a1 + 312) = 0;
  *(a1 + 320) = -1;
  *(a1 + 328) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

_DWORD *webrtc::media_optimization::VCMLossProtectionLogic::SetMethod(void *a1, int a2)
{
  result = a1[5];
  if (!result || result[7] != a2)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        operator new();
      }

      if (a2 == 3)
      {
        a1[5] = 0;
        if (!result)
        {
          return result;
        }

        (*(*result + 8))(result);
        result = a1[5];
      }
    }

    else
    {
      if (!a2)
      {
        operator new();
      }

      if (a2 == 1)
      {
        operator new();
      }
    }

    if (result)
    {
      a1[6] = a1[12];
      v4 = a1 + 6;
      *&v5 = v4[7];
      v4[3] = v4[8];
      *(v4 + 32) = *(v4 + 73);
      *(v4 + 33) = *(v4 + 72);
      DWORD2(v5) = *(v4 + 72);
      HIDWORD(v5) = *(v4 + 75);
      *(v4 + 1) = v5;
      v6 = v4[40];
      *(v4 + 17) = v4[39];
      *(v4 + 18) = v6;
      *(v4 + 10) = *(v4 + 82);
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t webrtc::media_optimization::VCMLossProtectionLogic::FilteredLoss(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 176);
  if (v4 < 0 || a2 - v4 > 999)
  {
    v9 = a4;
    if (v4 != -1)
    {
      *(a1 + 312) = *(a1 + 296);
      *(a1 + 320) = *(a1 + 304);
      *(a1 + 296) = *(a1 + 280);
      *(a1 + 304) = *(a1 + 288);
      *(a1 + 280) = *(a1 + 264);
      *(a1 + 288) = *(a1 + 272);
      *(a1 + 264) = *(a1 + 248);
      *(a1 + 272) = *(a1 + 256);
      *(a1 + 248) = *(a1 + 232);
      *(a1 + 256) = *(a1 + 240);
      *(a1 + 232) = *(a1 + 216);
      *(a1 + 240) = *(a1 + 224);
      *(a1 + 216) = *(a1 + 200);
      *(a1 + 224) = *(a1 + 208);
      *(a1 + 200) = *(a1 + 184);
      *(a1 + 208) = *(a1 + 192);
      *(a1 + 184) = *(a1 + 168);
      *(a1 + 192) = v4;
      v9 = *(a1 + 328);
    }

    v5 = 0;
    if (!v9)
    {
      LOBYTE(v9) = a4;
    }

    *(a1 + 168) = v9;
    *(a1 + 176) = a2;
    *(a1 + 328) = 0;
    v4 = a2;
    v6 = a4;
    v7 = *(a1 + 156);
    v8 = -1.0;
    if (v7 != -1.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(a1 + 328);
    if (v5 < a4)
    {
      *(a1 + 328) = a4;
      v5 = a4;
    }

    v6 = a4;
    v7 = *(a1 + 156);
    v8 = -1.0;
    if (v7 != -1.0)
    {
LABEL_12:
      v10 = a2 - *(a1 + 128);
      v11 = *(a1 + 152);
      if (v10 != 1)
      {
        v12 = a4;
        v13 = a1;
        v14 = a2;
        v15 = a3;
        v11 = powf(v11, v10);
        a3 = v15;
        a2 = v14;
        a1 = v13;
        a4 = v12;
      }

      v6 = ((1.0 - v11) * v6) + (v11 * v7);
    }
  }

  v16 = *(a1 + 160);
  if (v6 <= v16 || v16 == v8)
  {
    v16 = v6;
  }

  *(a1 + 156) = v16;
  *(a1 + 128) = a2;
  if (a3 == 2)
  {
    if (v4 == -1 || a2 - v4 > 10000)
    {
      return v5;
    }

    else
    {
      if (*(a1 + 168) <= v5)
      {
        a4 = v5;
      }

      else
      {
        a4 = *(a1 + 168);
      }

      v20 = *(a1 + 192);
      if (v20 != -1 && a2 - v20 <= 10000)
      {
        a4 = *(a1 + 184) <= a4 ? a4 : *(a1 + 184);
        v21 = *(a1 + 208);
        if (v21 != -1 && a2 - v21 <= 10000)
        {
          a4 = *(a1 + 200) <= a4 ? a4 : *(a1 + 200);
          v22 = *(a1 + 224);
          if (v22 != -1 && a2 - v22 <= 10000)
          {
            a4 = *(a1 + 216) <= a4 ? a4 : *(a1 + 216);
            v23 = *(a1 + 240);
            if (v23 != -1 && a2 - v23 <= 10000)
            {
              a4 = *(a1 + 232) <= a4 ? a4 : *(a1 + 232);
              v24 = *(a1 + 256);
              if (v24 != -1 && a2 - v24 <= 10000)
              {
                a4 = *(a1 + 248) <= a4 ? a4 : *(a1 + 248);
                v25 = *(a1 + 272);
                if (v25 != -1 && a2 - v25 <= 10000)
                {
                  a4 = *(a1 + 264) <= a4 ? a4 : *(a1 + 264);
                  v26 = *(a1 + 288);
                  if (v26 != -1 && a2 - v26 <= 10000)
                  {
                    a4 = *(a1 + 280) <= a4 ? a4 : *(a1 + 280);
                    v27 = *(a1 + 304);
                    if (v27 != -1 && a2 - v27 <= 10000)
                    {
                      a4 = *(a1 + 296) <= a4 ? a4 : *(a1 + 296);
                      v28 = *(a1 + 320);
                      if (v28 != -1 && a2 - v28 <= 10000)
                      {
                        if (*(a1 + 312) <= a4)
                        {
                          return a4;
                        }

                        else
                        {
                          return *(a1 + 312);
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

  else if (a3 == 1)
  {
    v18 = v16 + 0.5;
    v19 = (v18 < 0.0) | (2 * (v18 > 255.0));
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
      }

      return 255;
    }

    else if (v19)
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }

  return a4;
}

void webrtc::MediaDescriptionOptions::AddSenderInternal(void *a1, _OWORD *a2, std::string **a3, webrtc::RidDescription **a4, std::string ***a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3[1] - *a3 != 24)
  {
    goto LABEL_18;
  }

  v8 = a6;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  if (v18 != a2)
  {
    if (*(a2 + 23) < 0)
    {
      v13 = a3;
      std::string::__assign_no_alias<true>(v18, *a2, *(a2 + 1));
      a3 = v13;
      if ((&v18[1] + 8) == v13)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v18[0] = *a2;
    *&v18[1] = *(a2 + 2);
  }

  if ((&v18[1] + 8) != a3)
  {
LABEL_6:
    std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(&v18[1] + 1, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

LABEL_7:
  if ((&v19[1] + 8) != a5)
  {
    std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(&v19[1] + 8, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * (a5[1] - *a5));
  }

  if (v19 != a4)
  {
    std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>(v19, *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 4));
  }

  v20 = v8;
  v12 = a1[6];
  if (v12 >= a1[7])
  {
    std::vector<webrtc::SenderOptions>::__emplace_back_slow_path<webrtc::SenderOptions const&>(a1 + 5);
  }

  if (v12)
  {
    a1[6] = webrtc::SenderOptions::SenderOptions(v12, v18) + 104;
    webrtc::SenderOptions::~SenderOptions(v18);
    return;
  }

  __break(1u);
LABEL_18:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/media_options.cc", 66, "stream_ids.size() == 1U", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, *&v18[0]);
  std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(v14, v15, v16, v17);
}

void std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(uint64_t a1, std::string **a2, std::string **a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = *(a1 + 8);
        do
        {
          v15 = *(v12 - 3);
          v12 -= 3;
          v14 = v15;
          if (v15)
          {
            v16 = *(v10 - 2);
            v13 = v14;
            if (v16 != v14)
            {
              do
              {
                v17 = *(v16 - 9);
                v16 -= 4;
                if (v17 < 0)
                {
                  operator delete(*v16);
                }
              }

              while (v16 != v14);
              v13 = *v12;
            }

            *(v10 - 2) = v14;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= a4)
      {
        v22 = a4;
      }

      if (v21 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v22;
      }

      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v18 = *(a1 + 8);
  v19 = v18 - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v18 - v8) >= a4)
  {
    if (a2 == a3)
    {
      if (v18 == v8)
      {
LABEL_56:
        *(a1 + 8) = v8;
        return;
      }
    }

    else
    {
      do
      {
        if (v5 != v8)
        {
          std::vector<webrtc::SimulcastLayer>::__assign_with_size[abi:sn200100]<webrtc::SimulcastLayer*,webrtc::SimulcastLayer*>(v8, *v5, v5[1], (v5[1] - *v5) >> 5);
        }

        v5 += 3;
        v8 += 3;
      }

      while (v5 != a3);
      v18 = *(a1 + 8);
      if (v18 == v8)
      {
        goto LABEL_56;
      }
    }

    v26 = v18;
    do
    {
      v29 = *(v26 - 3);
      v26 -= 3;
      v28 = v29;
      if (v29)
      {
        v30 = *(v18 - 2);
        v27 = v28;
        if (v30 != v28)
        {
          do
          {
            v31 = *(v30 - 9);
            v30 -= 4;
            if (v31 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v28);
          v27 = *v26;
        }

        *(v18 - 2) = v28;
        operator delete(v27);
      }

      v18 = v26;
    }

    while (v26 != v8);
    goto LABEL_56;
  }

  if (v18 != v8)
  {
    v20 = (a2 + v19);
    do
    {
      if (v5 != v8)
      {
        std::vector<webrtc::SimulcastLayer>::__assign_with_size[abi:sn200100]<webrtc::SimulcastLayer*,webrtc::SimulcastLayer*>(v8, *v5, v5[1], (v5[1] - *v5) >> 5);
      }

      v5 += 3;
      v8 += 3;
      v19 -= 24;
    }

    while (v19);
    v18 = *(a1 + 8);
    v5 = v20;
  }

  v24 = v18;
  if (v5 != a3)
  {
    v24 = v18;
    while (v24)
    {
      *v24 = 0;
      v24[1] = 0;
      v24[2] = 0;
      v25 = v5[1];
      if (v25 != *v5)
      {
        if (((v25 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_58:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v5 += 3;
      v24 += 3;
      if (v5 == a3)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_44:
  *(a1 + 8) = v24;
}

void std::vector<webrtc::SimulcastLayer>::__assign_with_size[abi:sn200100]<webrtc::SimulcastLayer*,webrtc::SimulcastLayer*>(void **a1, std::string *a2, std::string *a3, unint64_t a4)
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
      v26 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v26 = a4;
      }

      v27 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v28 = 0x7FFFFFFFFFFFFFFLL;
      if (!v27)
      {
        v28 = v26;
      }

      if (!(v28 >> 59))
      {
        operator new();
      }
    }

    goto LABEL_64;
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
          v24 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            if (v24 >= 0)
            {
              v22 = v5;
            }

            else
            {
              v22 = v5->__r_.__value_.__r.__words[0];
            }

            if (v24 >= 0)
            {
              size = HIBYTE(v5->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v5->__r_.__value_.__l.__size_;
            }

            std::string::__assign_no_alias<false>(v8, v22, size);
          }

          else if ((*(&v5->__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, v5->__r_.__value_.__l.__data_, v5->__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = *&v5->__r_.__value_.__l.__data_;
            v8->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
            *&v8->__r_.__value_.__l.__data_ = v25;
          }
        }

        v8[1].__r_.__value_.__s.__data_[0] = v5[1].__r_.__value_.__s.__data_[0];
        v5 = (v5 + 32);
        v8 = (v8 + 32);
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v34 = *(v13 - 9);
      v13 -= 4;
      if (v34 < 0)
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
        v18 = &v15[v8];
        v19 = &v15[v5];
        if (v5 != v8)
        {
          v20 = v19[23];
          if (v18[23] < 0)
          {
            if (v20 >= 0)
            {
              v16 = &v15[v5];
            }

            else
            {
              v16 = *&v15[v5];
            }

            if (v20 >= 0)
            {
              v17 = v19[23];
            }

            else
            {
              v17 = *&v15[v5 + 8];
            }

            std::string::__assign_no_alias<false>(&v15[v8], v16, v17);
          }

          else if (v19[23] < 0)
          {
            std::string::__assign_no_alias<true>(&v15[v8], *&v15[v5], *&v15[v5 + 8]);
          }

          else
          {
            v21 = *v19;
            *(v18 + 2) = *(v19 + 2);
            *v18 = v21;
          }
        }

        v18[24] = v19[24];
        v15 += 32;
      }

      while (v14 != v15);
      v13 = a1[1];
      v5 = &v14[v5];
    }

    v29 = v13;
    if (v5 != a3)
    {
      v30 = 0;
      while (1)
      {
        v31 = &v13[v30];
        if (!&v13[v30])
        {
          break;
        }

        v32 = (&v5->__r_.__value_.__l.__data_ + v30 * 8);
        if (SHIBYTE(v5->__r_.__value_.__r.__words[v30 + 2]) < 0)
        {
          std::string::__init_copy_ctor_external(v31, *(&v5->__r_.__value_.__l.__data_ + v30 * 8), *(&v5->__r_.__value_.__l.__size_ + v30 * 8));
        }

        else
        {
          v33 = *v32;
          v31->__r_.__value_.__r.__words[2] = v32[2];
          *&v31->__r_.__value_.__l.__data_ = v33;
        }

        LOBYTE(v13[v30 + 3]) = v5[1].__r_.__value_.__s.__data_[v30 * 8];
        v30 += 4;
        if ((v5 + v30 * 8) == a3)
        {
          v29 = &v13[v30];
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_64:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_62:
    a1[1] = v29;
  }
}

void std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>(uint64_t *a1, webrtc::RidDescription *a2, webrtc::RidDescription *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
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
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v10 - 24, *(v10 - 16));
          v12 = *(v10 - 48);
          if (v12)
          {
            v13 = *(v10 - 40);
            v14 = *(v10 - 48);
            if (v13 != v12)
            {
              v15 = v13 - 27;
              v16 = v13 - 27;
              v17 = v13 - 27;
              do
              {
                v18 = *v17;
                v17 -= 27;
                (*v18)(v16);
                v15 -= 27;
                v19 = v16 == v12;
                v16 = v17;
              }

              while (!v19);
              v14 = *(v10 - 48);
            }

            *(v10 - 40) = v12;
            operator delete(v14);
          }

          v20 = (v10 - 80);
          if (*(v10 - 57) < 0)
          {
            operator delete(*v20);
          }

          v10 -= 80;
        }

        while (v20 != v8);
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

    if (a4 <= 0x333333333333333)
    {
      v35 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v36 = 2 * v35;
      if (2 * v35 <= a4)
      {
        v36 = a4;
      }

      if (v35 >= 0x199999999999999)
      {
        v37 = 0x333333333333333;
      }

      else
      {
        v37 = v36;
      }

      if (v37 <= 0x333333333333333)
      {
        operator new();
      }
    }

    goto LABEL_51;
  }

  v21 = a1[1];
  v22 = v21 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v21 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::RidDescription::operator=(v8, v5);
        v5 = (v5 + 80);
        v8 += 80;
      }

      while (v5 != a3);
      v21 = a1[1];
    }

    if (v21 != v8)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v21[-1], v21[-1].__r_.__value_.__l.__size_);
        data = v21[-2].__r_.__value_.__l.__data_;
        if (data)
        {
          size = v21[-2].__r_.__value_.__l.__size_;
          v29 = v21[-2].__r_.__value_.__l.__data_;
          if (size != data)
          {
            v30 = size - 216;
            v31 = (size - 216);
            v32 = (size - 216);
            do
            {
              v33 = *v32;
              v32 -= 27;
              (*v33)(v31);
              v30 -= 216;
              v19 = v31 == data;
              v31 = v32;
            }

            while (!v19);
            v29 = v21[-2].__r_.__value_.__l.__data_;
          }

          v21[-2].__r_.__value_.__l.__size_ = data;
          operator delete(v29);
        }

        v34 = &v21[-4].__r_.__value_.__r.__words[2];
        if (v21[-3].__r_.__value_.__s.__data_[15] < 0)
        {
          operator delete(*v34);
        }

        v21 = (v21 - 80);
      }

      while (v34 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v21 != v8)
    {
      v23 = &v22[a2];
      do
      {
        webrtc::RidDescription::operator=(v8, v5);
        v5 = (v5 + 80);
        v8 += 80;
        v22 -= 80;
      }

      while (v22);
      v21 = a1[1];
      v5 = v23;
    }

    v24 = v21;
    if (v5 != a3)
    {
      v24 = v21;
      v25 = v21;
      while (v25)
      {
        v26 = webrtc::RidDescription::RidDescription(v25, v5);
        v5 = (v5 + 80);
        v25 = (v26 + 80);
        v24 += 80;
        if (v5 == a3)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_51:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_24:
    a1[1] = v24;
  }
}

void std::vector<webrtc::SenderOptions>::__emplace_back_slow_path<webrtc::SenderOptions const&>(void *a1)
{
  v1 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v2 = 0x276276276276276;
    }

    else
    {
      v2 = v1;
    }

    v3 = a1;
    if (v2)
    {
      if (v2 <= 0x276276276276276)
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

std::string *webrtc::SenderOptions::SenderOptions(std::string *this, const webrtc::SenderOptions *a2)
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

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v7)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[3].__r_.__value_.__r.__words[2] = 0;
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  if (v10 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  LODWORD(this[4].__r_.__value_.__l.__data_) = *(a2 + 24);
  return this;
}

webrtc::SenderOptions *std::vector<webrtc::SenderOptions>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 == result)
  {
LABEL_8:
    a2[1] = v7;
    *a1 = v7;
    *(a1 + 8) = result;
    a2[1] = result;
    v12 = *(a1 + 8);
    *(a1 + 8) = a2[2];
    a2[2] = v12;
    v13 = *(a1 + 16);
    *(a1 + 16) = a2[3];
    a2[3] = v13;
    *a2 = a2[1];
  }

  else
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    while (v9)
    {
      v10 = *v8;
      *(v9 + 2) = *(v8 + 2);
      *v9 = v10;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = 0;
      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 5) = *(v8 + 5);
      *(v8 + 3) = 0;
      *(v8 + 4) = 0;
      *(v8 + 5) = 0;
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 3) = *(v8 + 3);
      *(v9 + 8) = *(v8 + 8);
      *(v8 + 6) = 0;
      *(v8 + 7) = 0;
      *(v8 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 11) = *(v8 + 11);
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      *(v8 + 11) = 0;
      *(v9 + 24) = *(v8 + 24);
      v8 = (v8 + 104);
      v9 += 104;
      if (v8 == v5)
      {
        while (result)
        {
          webrtc::SenderOptions::~SenderOptions(result);
          result = (v11 + 104);
          if (result == v5)
          {
            result = *a1;
            goto LABEL_8;
          }
        }

        break;
      }
    }

    __break(1u);
  }

  return result;
}

void webrtc::SenderOptions::~SenderOptions(webrtc::SenderOptions *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = *(this + 9);
    if (v3 != v2)
    {
      v5 = *(this + 10);
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
            do
            {
              v10 = *(v9 - 9);
              v9 -= 4;
              if (v10 < 0)
              {
                operator delete(*v9);
              }
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 9);
    }

    *(this + 10) = v2;
    operator delete(v4);
  }

  v11 = *(this + 6);
  if (v11)
  {
    v12 = *(this + 7);
    v13 = *(this + 6);
    if (v12 != v11)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v12 - 3), *(v12 - 2));
        v14 = *(v12 - 6);
        if (v14)
        {
          v15 = *(v12 - 5);
          v16 = *(v12 - 6);
          if (v15 != v14)
          {
            v17 = v15 - 27;
            v18 = v15 - 27;
            v19 = v15 - 27;
            do
            {
              v20 = *v19;
              v19 -= 27;
              (*v20)(v18);
              v17 -= 27;
              v21 = v18 == v14;
              v18 = v19;
            }

            while (!v21);
            v16 = *(v12 - 6);
          }

          *(v12 - 5) = v14;
          operator delete(v16);
        }

        v22 = v12 - 10;
        if (*(v12 - 57) < 0)
        {
          operator delete(*v22);
        }

        v12 -= 10;
      }

      while (v22 != v11);
      v13 = *(this + 6);
    }

    *(this + 7) = v11;
    operator delete(v13);
  }

  v23 = *(this + 3);
  if (v23)
  {
    v24 = *(this + 4);
    v25 = *(this + 3);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = *(this + 3);
    }

    *(this + 4) = v23;
    operator delete(v25);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL webrtc::IsDtlsSctp(uint64_t a1, uint64_t a2)
{
  if (a2 == 13)
  {
    return *a1 == 0x534C54442F504455 && *(a1 + 5) == 0x505443532F534C54 || *a1 == 0x534C54442F504354 && *(a1 + 5) == 0x505443532F534C54;
  }

  else
  {
    return a2 == 9 && *a1 == 0x5443532F534C5444 && *(a1 + 8) == 80;
  }
}

uint64_t webrtc::IsRtpProtocol(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 >= 4)
  {
    v3 = &a1[a2];
    v5 = a2;
    v6 = a1;
    while (1)
    {
      result = memchr(a1, 82, v5 - 3);
      if (!result)
      {
        return result;
      }

      if (*result == 793793618)
      {
        break;
      }

      a1 = (result + 1);
      v5 = v3 - a1;
      if (v3 - a1 < 4)
      {
        return 0;
      }
    }

    if (result == v3)
    {
      return 0;
    }

    v7 = result - v6;
    if (result - v6 == -1)
    {
      return 0;
    }

    if (!v7)
    {
      return 1;
    }

    v8 = v7 - 1;
    if (a2 <= v8)
    {
      __break(1u);
      return result;
    }

    v9 = v6[v8];
    return !(v9 < 0 ? __maskrune(v9, 0x100uLL) : *(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x100);
  }

  return 0;
}

BOOL webrtc::IsDtlsRtp(uint64_t a1, uint64_t a2)
{
  if (a2 != 16)
  {
    if (a2 != 17)
    {
      return 0;
    }

    if (*a1 != 0x2F534C542F504455 || *(a1 + 8) != 0x505641532F505452 || *(a1 + 16) != 70)
    {
      v4 = *a1 == 0x2F534C542F504354 && *(a1 + 8) == 0x505641532F505452;
      if (!v4 || *(a1 + 16) != 70)
      {
        return *a1 == 0x2F534C542F504455 && *(a1 + 8) == 0x505641532F505452 && *(a1 + 16) == 70;
      }
    }

    return 1;
  }

  if (*a1 == 0x2F534C542F504455 && *(a1 + 8) == 0x505641532F505452)
  {
    return 1;
  }

  return *a1 == 0x2F534C542F504354 && *(a1 + 8) == 0x505641532F505452;
}

uint64_t webrtc::MediaSessionDescriptionFactory::MediaSessionDescriptionFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (!a4)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 24) = 1;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  (*(**(a5 + 16) + 16))(__p);
  v11 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v11 = __p[1];
  }

  if (v11 < 7)
  {
    v12 = 0;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = __p[0];
  if ((v19 & 0x80u) == 0)
  {
    v13 = __p;
  }

  v14 = *v13;
  v15 = *(v13 + 3);
  v12 = v14 == 1650552389 && v15 == 1684368482;
  if (v19 < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  *(a1 + 48) = v12;
  if (!*(a1 + 32))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/media_session.cc", 683, "transport_desc_factory_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v7, v8, v9, v10, __p[0]);
LABEL_23:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/media_session.cc", 684, "codec_lookup_helper_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v7, v8, v9, v10, __p[0]);
  }

  if (!*(a1 + 40))
  {
    goto LABEL_23;
  }

  return a1;
}

__n128 webrtc::MediaSessionDescriptionFactory::filtered_rtp_header_extensions(uint64_t a1, char a2, void ***a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = *a3;
    v6 = a3[1];
    if (*a3 == v6)
    {
      goto LABEL_138;
    }

    while (1)
    {
      v11 = *(v5 + 23);
      v12 = v5[1];
      if (v11 < 0 && v12 == 35)
      {
        if (**v5 == *"urn:ietf:params:rtp-hdrext:sdes:mid" && *(*v5 + 1) == *":params:rtp-hdrext:sdes:mid" && *(*v5 + 2) == *"rtp-hdrext:sdes:mid" && *(*v5 + 3) == *"xt:sdes:mid" && *(*v5 + 27) == *"sdes:mid")
        {
LABEL_62:
          if (v5 == v6 || (v24 = v5 + 4, v5 + 4 == v6))
          {
LABEL_138:
            std::vector<webrtc::RtpExtension>::erase(a3, v5, v6);
            break;
          }

          while (2)
          {
            v28 = *(v24 + 23);
            v26 = v24[1];
            if (v28 < 0 && v26 == 35)
            {
              if (**v24 != *"urn:ietf:params:rtp-hdrext:sdes:mid" || *(*v24 + 1) != *":params:rtp-hdrext:sdes:mid" || *(*v24 + 2) != *"rtp-hdrext:sdes:mid" || *(*v24 + 3) != *"xt:sdes:mid" || *(*v24 + 27) != *"sdes:mid")
              {
                goto LABEL_131;
              }
            }

            else
            {
              if ((v28 & 0x80000000) != 0 && v26 == 45)
              {
                if (**v24 == *"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id" && *(*v24 + 1) == *":params:rtp-hdrext:sdes:rtp-stream-id" && *(*v24 + 2) == *"rtp-hdrext:sdes:rtp-stream-id" && *(*v24 + 3) == *"xt:sdes:rtp-stream-id" && *(*v24 + 4) == *"rtp-stream-id" && *(*v24 + 37) == *"tream-id")
                {
                  goto LABEL_72;
                }
              }

              else if ((v28 & 0x80000000) != 0 && v26 == 54)
              {
                v38 = **v24 == *"urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id" && *(*v24 + 1) == *":params:rtp-hdrext:sdes:repaired-rtp-stream-id";
                v39 = v38 && *(*v24 + 2) == *"rtp-hdrext:sdes:repaired-rtp-stream-id";
                v40 = v39 && *(*v24 + 3) == *"xt:sdes:repaired-rtp-stream-id";
                v41 = v40 && *(*v24 + 4) == *"repaired-rtp-stream-id";
                v42 = v41 && *(*v24 + 5) == *"-rtp-stream-id";
                if (v42 && *(*v24 + 46) == *"tream-id")
                {
                  goto LABEL_72;
                }
              }

LABEL_131:
              if (v24 != v5)
              {
                if (*(v5 + 23) < 0)
                {
                  if (v28 >= 0)
                  {
                    v25 = v24;
                  }

                  else
                  {
                    v25 = *v24;
                  }

                  if (v28 >= 0)
                  {
                    v26 = *(v24 + 23);
                  }

                  std::string::__assign_no_alias<false>(v5, v25, v26);
                }

                else if ((v28 & 0x80000000) != 0)
                {
                  std::string::__assign_no_alias<true>(v5, *v24, v26);
                }

                else
                {
                  v44 = *v24;
                  v5[2] = v24[2];
                  *v5 = v44;
                }
              }

              v27 = *(v24 + 6);
              *(v5 + 28) = *(v24 + 28);
              *(v5 + 6) = v27;
              v5 += 4;
            }

LABEL_72:
            v24 += 4;
            if (v24 == v6)
            {
              v6 = a3[1];
              goto LABEL_138;
            }

            continue;
          }
        }
      }

      else if (v11 < 0 && v12 == 45)
      {
        if (**v5 == *"urn:ietf:params:rtp-hdrext:sdes:rtp-stream-id" && *(*v5 + 1) == *":params:rtp-hdrext:sdes:rtp-stream-id" && *(*v5 + 2) == *"rtp-hdrext:sdes:rtp-stream-id" && *(*v5 + 3) == *"xt:sdes:rtp-stream-id" && *(*v5 + 4) == *"rtp-stream-id" && *(*v5 + 37) == *"tream-id")
        {
          goto LABEL_62;
        }
      }

      else if (v11 < 0 && v12 == 54)
      {
        v18 = **v5 == *"urn:ietf:params:rtp-hdrext:sdes:repaired-rtp-stream-id" && *(*v5 + 1) == *":params:rtp-hdrext:sdes:repaired-rtp-stream-id";
        v19 = v18 && *(*v5 + 2) == *"rtp-hdrext:sdes:repaired-rtp-stream-id";
        v20 = v19 && *(*v5 + 3) == *"xt:sdes:repaired-rtp-stream-id";
        v21 = v20 && *(*v5 + 4) == *"repaired-rtp-stream-id";
        v22 = v21 && *(*v5 + 5) == *"-rtp-stream-id";
        if (v22 && *(*v5 + 46) == *"tream-id")
        {
          goto LABEL_62;
        }
      }

      v5 += 4;
      if (v5 == v6)
      {
        v5 = a3[1];
        goto LABEL_138;
      }
    }
  }

  result = *a3;
  *a1 = *a3;
  *(a1 + 16) = a3[2];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return result;
}

void *std::vector<webrtc::RtpExtension>::erase(void *result, void **a2, void **a3)
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
        v17 = a2;
      }

      else
      {
        v6 = *result;
        v7 = -*result;
        v8 = a2 + *result;
        v9 = a3 + *result;
        do
        {
          v13 = &v8[v7];
          v14 = &v9[v7];
          if (v9 != v8)
          {
            v15 = v14[23];
            if (v13[23] < 0)
            {
              if (v15 >= 0)
              {
                v10 = &v9[v7];
              }

              else
              {
                v10 = *&v9[v7];
              }

              if (v15 >= 0)
              {
                v11 = v14[23];
              }

              else
              {
                v11 = *&v9[v7 + 8];
              }

              std::string::__assign_no_alias<false>(&v8[v7], v10, v11);
            }

            else if (v14[23] < 0)
            {
              std::string::__assign_no_alias<true>(&v8[v7], *&v9[v7], *&v9[v7 + 8]);
            }

            else
            {
              v16 = *v14;
              *(v13 + 2) = *(v14 + 2);
              *v13 = v16;
            }
          }

          v12 = *(v14 + 6);
          v13[28] = v14[28];
          *(v13 + 6) = v12;
          v8 += 32;
          v9 += 32;
        }

        while (&v9[v7] != v5);
        v5 = v4[1];
        v17 = &v8[-v6];
      }

      while (v5 != v17)
      {
        v18 = *(v5 - 9);
        v5 -= 4;
        if (v18 < 0)
        {
          operator delete(*v5);
        }
      }

      v4[1] = v17;
    }

    return a2;
  }

  return result;
}

void webrtc::MediaSessionDescriptionFactory::CreateOfferOrError(webrtc::MediaSessionDescriptionFactory *this, const webrtc::MediaSessionOptions *a2, void **a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v94 = &unk_2882948C8;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v3 = *(a2 + 11);
  v4 = *(a2 + 12);
  if (v4 != v3)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = a3;
  if (a3)
  {
    v6 = *a3;
    v7 = a2;
    if (a3[1] != *a3)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v47 = *(a2 + 8);
        if (0xF0F0F0F0F0F0F0F1 * ((*(a2 + 9) - v47) >> 3) <= v11)
        {
          goto LABEL_160;
        }

        if ((v6[v8 + 4] & 1) == 0)
        {
          v48 = v47 + v9;
          if ((*(v47 + v9 + 36) & 1) == 0)
          {
            v49 = &v6[v8];
            v50 = v49[31];
            if (v50 >= 0)
            {
              v51 = v49[31];
            }

            else
            {
              v51 = *(v49 + 2);
            }

            v52 = *(v48 + 31);
            v53 = *(v48 + 16);
            if ((v52 & 0x80u) == 0)
            {
              v53 = v52;
            }

            if (v51 == v53)
            {
              v54 = v47 + v9;
              v57 = *(v49 + 1);
              v55 = v49 + 8;
              v56 = v57;
              v58 = v50 >= 0 ? v55 : v56;
              v61 = *(v54 + 8);
              v60 = v54 + 8;
              v59 = v61;
              v62 = ((v52 & 0x80u) == 0 ? v60 : v59);
              if (!memcmp(v58, v62, v51))
              {
                operator new();
              }
            }
          }
        }

        ++v11;
        v6 = *a3;
        v9 += 136;
        v8 += 40;
      }

      while (v11 < 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
      v91 = 0;
      v92 = 0;
      v93 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = a2;
  }

  v91 = 0;
  v92 = 0;
  v93 = 0;
LABEL_9:
  v12 = *(v7 + 3);
  if (*(v7 + 3))
  {
    v13 = 255;
  }

  else
  {
    v13 = 14;
  }

  v103 = 1;
  v104 = v13;
  v105 = v13;
  v108[0] = 0;
  v108[1] = 0;
  v107 = v108;
  v102 = &unk_2882960E0;
  v109 = v12;
  v110 = 14;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  *v88 = 0u;
  *v89 = 0u;
  v90 = 0u;
  v79 = 0;
  v14 = *(a2 + 8);
  v80 = *(a2 + 9);
  if (v14 == v80)
  {
LABEL_97:
    v43 = v85;
    if (v85)
    {
      v44 = v86;
      v45 = v85;
      if (v86 != v85)
      {
        do
        {
          v46 = *(v44 - 9);
          v44 -= 4;
          if (v46 < 0)
          {
            operator delete(*v44);
          }
        }

        while (v44 != v43);
        v45 = v85;
      }

      v86 = v43;
      operator delete(v45);
    }

    v102 = &unk_288296110;
    std::__tree<sigslot::_signal_base_interface *>::destroy(&v107, v108[0]);
    operator new();
  }

LABEL_16:
  v10 = *(v14 + 11);
  v15 = *(v14 + 12);
  v82 = v14;
  memset(&v111, 0, sizeof(v111));
  while (1)
  {
    if (v10 == v15)
    {
      webrtc::MediaSessionDescriptionFactory::filtered_rtp_header_extensions(__p, *this, &v111);
      v36 = v111.__r_.__value_.__r.__words[0];
      if (v111.__r_.__value_.__r.__words[0])
      {
        size = v111.__r_.__value_.__l.__size_;
        v38 = v111.__r_.__value_.__r.__words[0];
        if (v111.__r_.__value_.__l.__size_ != v111.__r_.__value_.__r.__words[0])
        {
          do
          {
            v39 = *(size - 9);
            size -= 4;
            if (v39 < 0)
            {
              operator delete(*size);
            }
          }

          while (size != v36);
          v38 = v111.__r_.__value_.__r.__words[0];
        }

        v111.__r_.__value_.__l.__size_ = v36;
        operator delete(v38);
      }

      if (*v82 == 1)
      {
        v40 = __p[0];
        if (!v40)
        {
          goto LABEL_15;
        }
      }

      else if (*v82)
      {
        v40 = __p[0];
        if (!__p[0])
        {
          goto LABEL_15;
        }
      }

      else
      {
        v40 = __p[0];
        if (!v40)
        {
          goto LABEL_15;
        }
      }

      v41 = __p[1];
      while (v41 != v40)
      {
        v42 = *(v41 - 9);
        v41 -= 4;
        if (v42 < 0)
        {
          operator delete(*v41);
        }
      }

      operator delete(v40);
LABEL_15:
      v14 = v82 + 34;
      if (v82 + 34 == v80)
      {
        goto LABEL_97;
      }

      goto LABEL_16;
    }

    if (*(v10 + 36) == 4)
    {
      v16 = v85;
      v17 = v86;
      if (v85 != v86)
      {
        if (*(v10 + 23) >= 0)
        {
          v18 = *(v10 + 23);
        }

        else
        {
          v18 = *(v10 + 8);
        }

        if ((*(v10 + 23) & 0x80) != 0)
        {
          v19 = *v10;
          while (1)
          {
            v23 = *(v16 + 23);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = v16[1];
            }

            if (v18 == v23)
            {
              v25 = v24 >= 0 ? v16 : *v16;
              if (!memcmp(v19, v25, v18))
              {
                break;
              }
            }

            v16 += 4;
            if (v16 == v17)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          while (1)
          {
            v20 = *(v16 + 23);
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = v16[1];
            }

            if (v18 == v20)
            {
              v22 = v21 >= 0 ? v16 : *v16;
              if (!memcmp(v10, v22, v18))
              {
                break;
              }
            }

            v16 += 4;
            if (v16 == v17)
            {
              goto LABEL_17;
            }
          }
        }
      }

      if (v16 == v17)
      {
        goto LABEL_17;
      }
    }

    v26 = *(v10 + 23);
    if (v26 >= 0)
    {
      v5 = v10;
    }

    else
    {
      v5 = *v10;
    }

    if (v26 >= 0)
    {
      v7 = *(v10 + 23);
    }

    else
    {
      v7 = *(v10 + 8);
    }

    if (*(v10 + 28))
    {
      v27 = *(v10 + 24);
    }

    else
    {
      v27 = 1;
    }

    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v28 = *(v10 + 32);
    if (v7 > 0x16)
    {
      operator new();
    }

    HIBYTE(v99) = v7;
    v29 = (__p + v7);
    if (__p <= v5 && v29 > v5)
    {
      goto LABEL_160;
    }

    if (v7)
    {
      memmove(__p, v5, v7);
    }

    *v29 = 0;
    v100 = v27;
    v101 = v28;
    v7 = v111.__r_.__value_.__l.__size_;
    if (v111.__r_.__value_.__l.__size_ >= v111.__r_.__value_.__r.__words[2])
    {
      break;
    }

    if (!v111.__r_.__value_.__l.__size_)
    {
      goto LABEL_160;
    }

    if (SHIBYTE(v99) < 0)
    {
      std::string::__init_copy_ctor_external(v111.__r_.__value_.__l.__size_, __p[0], __p[1]);
    }

    else
    {
      v31 = *__p;
      *(v111.__r_.__value_.__l.__size_ + 16) = v99;
      *v7 = v31;
    }

    v35 = v100;
    *(v7 + 28) = v101;
    *(v7 + 24) = v35;
    v111.__r_.__value_.__l.__size_ = v7 + 32;
    if (SHIBYTE(v99) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_17:
    v10 += 40;
  }

  v32 = ((v111.__r_.__value_.__l.__size_ - v111.__r_.__value_.__r.__words[0]) >> 5) + 1;
  if (v32 >> 59)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v33 = (v111.__r_.__value_.__r.__words[2] - v111.__r_.__value_.__r.__words[0]) >> 4;
  if (v33 <= v32)
  {
    v33 = ((v111.__r_.__value_.__l.__size_ - v111.__r_.__value_.__r.__words[0]) >> 5) + 1;
  }

  v34 = 0x7FFFFFFFFFFFFFFLL;
  if (v111.__r_.__value_.__r.__words[2] - v111.__r_.__value_.__r.__words[0] < 0x7FFFFFFFFFFFFFE0)
  {
    v34 = v33;
  }

  if (v34)
  {
    if (!(v34 >> 59))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_160:
  __break(1u);
  while (v5 != v7)
  {
    v78 = *(v5 - 1);
    v5 -= 3;
    if (v78 < 0)
    {
      operator delete(*v5);
    }
  }

  v108[0] = v7;
  operator delete(v107);
  if (v106 < 0)
  {
    operator delete(v102);
  }

  webrtc::SessionDescription::~SessionDescription(v10);
  MEMORY[0x2743DA540]();
  v63 = v89[1];
  if (v89[1])
  {
    v64 = v90;
    v65 = v89[1];
    if (v90 != v89[1])
    {
      do
      {
        v66 = *(v64 - 9);
        v64 -= 4;
        if (v66 < 0)
        {
          operator delete(*v64);
        }
      }

      while (v64 != v63);
      v65 = v89[1];
    }

    *&v90 = v63;
    operator delete(v65);
  }

  v67 = v88[0];
  if (v88[0])
  {
    v68 = v88[1];
    v69 = v88[0];
    if (v88[1] != v88[0])
    {
      do
      {
        v70 = *(v68 - 9);
        v68 -= 4;
        if (v70 < 0)
        {
          operator delete(*v68);
        }
      }

      while (v68 != v67);
      v69 = v88[0];
    }

    v88[1] = v67;
    operator delete(v69);
  }

  v71 = v91;
  if (v91)
  {
    v72 = v92;
    v73 = v91;
    if (v92 != v91)
    {
      do
      {
        webrtc::StreamParams::~StreamParams((v72 - 144));
      }

      while (v72 != v71);
      v73 = v91;
    }

    v92 = v71;
    operator delete(v73);
  }

  if (v79)
  {
    operator delete(v79);
  }

  v94 = &unk_2882948C8;
  v74 = v95;
  if (v95)
  {
    v75 = v96;
    v76 = v95;
    if (v96 == v95)
    {
LABEL_158:
      v96 = v74;
      operator delete(v76);
      return;
    }

    while (2)
    {
      if (*(v75 - 9) < 0)
      {
        operator delete(*(v75 - 4));
        v77 = v75 - 7;
        if (*(v75 - 33) < 0)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v77 = v75 - 7;
        if (*(v75 - 33) < 0)
        {
LABEL_156:
          operator delete(*v77);
        }
      }

      v75 = v77;
      if (v77 == v74)
      {
        v76 = v95;
        goto LABEL_158;
      }

      continue;
    }
  }
}

uint64_t webrtc::anonymous namespace::UpdateTransportInfoForBundle(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = v3 == *(a1 + 32);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = v3[23];
  if ((v8 & 0x80u) == 0)
  {
    v9 = v3[23];
  }

  else
  {
    v9 = *(v3 + 1);
  }

  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a1 + 24);
  }

  else
  {
    v10 = *v3;
  }

  while (1)
  {
    v11 = *(v5 + v7 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v5 + v7 + 8);
    }

    if (v11 == v9)
    {
      v13 = v12 >= 0 ? (v5 + v7) : *(v5 + v7);
      if (!memcmp(v13, v10, v9))
      {
        break;
      }
    }

    v7 += 112;
    if (v5 + v7 == v6)
    {
      return 0;
    }
  }

  v14 = v5 + v7;
  v36 = (v14 + 72);
  v37 = (v14 + 48);
  v38 = *(v14 + 100);
  while (2)
  {
    v18 = *(v5 + 23);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v19 = *v5;
      v20 = *(v5 + 8);
    }

    else
    {
      v19 = v5;
      v20 = *(v5 + 23);
    }

    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    while (1)
    {
      if (v21 == v22)
      {
        goto LABEL_32;
      }

      v23 = *(v21 + 23);
      if (v23 < 0)
      {
        break;
      }

      v24 = v21;
      if (v20 == v23)
      {
        goto LABEL_37;
      }

LABEL_38:
      v21 += 3;
    }

    v24 = *v21;
    if (v20 != v21[1])
    {
      goto LABEL_38;
    }

LABEL_37:
    if (memcmp(v19, v24, v20))
    {
      goto LABEL_38;
    }

    if (v21 != v22)
    {
      if ((v18 & 0x80000000) == 0)
      {
        v25 = v18;
      }

      else
      {
        v25 = *(v5 + 8);
      }

      v26 = v3[23];
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v3 + 1);
      }

      if (v25 != v26 || ((v18 & 0x80000000) == 0 ? (v28 = v5) : (v28 = *v5), v27 >= 0 ? (v29 = v3) : (v29 = *v3), memcmp(v28, v29, v25)))
      {
        if (v14 != v5)
        {
          v30 = *(v14 + 71);
          if (*(v5 + 71) < 0)
          {
            if (v30 >= 0)
            {
              v33 = (v14 + 48);
            }

            else
            {
              v33 = *v37;
            }

            if (v30 >= 0)
            {
              v34 = *(v14 + 71);
            }

            else
            {
              v34 = *(v14 + 56);
            }

            std::string::__assign_no_alias<false>((v5 + 48), v33, v34);
            v32 = *(v14 + 95);
            if ((*(v5 + 95) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

LABEL_24:
            if ((v32 & 0x80u) == 0)
            {
              v16 = (v14 + 72);
            }

            else
            {
              v16 = *v36;
            }

            if ((v32 & 0x80u) == 0)
            {
              v17 = v32;
            }

            else
            {
              v17 = *(v14 + 80);
            }

            std::string::__assign_no_alias<false>((v5 + 72), v16, v17);
          }

          else
          {
            if ((*(v14 + 71) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>((v5 + 48), *v37, *(v14 + 56));
              v32 = *(v14 + 95);
              if (*(v5 + 95) < 0)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v31 = *v37;
              *(v5 + 64) = *(v14 + 64);
              *(v5 + 48) = v31;
              v32 = *(v14 + 95);
              if (*(v5 + 95) < 0)
              {
                goto LABEL_24;
              }
            }

LABEL_73:
            if ((v32 & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>((v5 + 72), *v36, *(v14 + 80));
            }

            else
            {
              v35 = *v36;
              *(v5 + 88) = *(v14 + 88);
              *(v5 + 72) = v35;
            }
          }
        }

        *(v5 + 100) = v38;
      }
    }

LABEL_32:
    v5 += 112;
    if (v5 != v6)
    {
      continue;
    }

    return 1;
  }
}

void webrtc::MediaSessionDescriptionFactory::CreateAnswerOrError(webrtc::MediaSessionDescriptionFactory *this@<X0>, const webrtc::SessionDescription *a2@<X1>, const webrtc::MediaSessionOptions *a3@<X2>, const webrtc::SessionDescription *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v72 = 0;
    v73 = 0;
    v10 = *(a3 + 11);
    v11 = *(a3 + 12);
    if (v11 != v10)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 3)) < 0x492492492492493)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v5 = a4;
    if (a4)
    {
      v12 = *a4;
      if (*(a4 + 1) != *a4)
      {
        v6 = 0;
        v13 = 0;
        v7 = 0;
        v14 = 0;
        do
        {
          v38 = *(a3 + 8);
          if (0xF0F0F0F0F0F0F0F1 * ((*(a3 + 9) - v38) >> 3) <= v14)
          {
            goto LABEL_56;
          }

          v8 = (v6 + v12);
          if ((*(v6 + v12 + 4) & 1) == 0)
          {
            v39 = v38 + v13;
            if ((*(v38 + v13 + 36) & 1) == 0)
            {
              v40 = v6 + v12;
              v41 = v40[31];
              if (v41 >= 0)
              {
                v42 = v40[31];
              }

              else
              {
                v42 = *(v40 + 2);
              }

              v43 = *(v39 + 31);
              v44 = *(v39 + 16);
              if ((v43 & 0x80u) == 0)
              {
                v44 = v43;
              }

              if (v42 == v44)
              {
                v45 = v38 + v13;
                v48 = *(v40 + 1);
                v46 = v40 + 8;
                v47 = v48;
                v49 = v41 >= 0 ? v46 : v47;
                v52 = *(v45 + 8);
                v51 = v45 + 8;
                v50 = v52;
                v53 = ((v43 & 0x80u) == 0 ? v51 : v50);
                if (!memcmp(v49, v53, v42))
                {
                  operator new();
                }
              }
            }
          }

          ++v14;
          v12 = *a4;
          v13 += 136;
          v6 += 5;
        }

        while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 3));
      }
    }

    (*(**(*(this + 4) + 16) + 16))(&v74);
    v15 = v75.__r_.__value_.__s.__data_[15];
    if (v75.__r_.__value_.__s.__data_[15] < 0)
    {
      v15 = v75.__r_.__value_.__r.__words[0];
    }

    if (v15 >= 7)
    {
      v24 = v74;
      if (v75.__r_.__value_.__s.__data_[15] >= 0)
      {
        v24 = &v74;
      }

      v25 = *v24;
      v26 = *(v24 + 3);
      v16 = v25 == 1650552389 && v26 == 1684368482;
      if (v75.__r_.__value_.__s.__data_[15] < 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = 0;
      if (v75.__r_.__value_.__s.__data_[15] < 0)
      {
LABEL_27:
        operator delete(v74);
      }
    }

    if (v16)
    {
      v28 = *a2;
      v29 = *(a2 + 1);
      if (*a2 != v29)
      {
        v30 = 0;
        while ((*(*(v28 + 32) + 35) & 1) != 0 || (v30 & 1) == 0)
        {
          v30 |= *(*(v28 + 32) + 35);
          v28 += 40;
          if (v28 == v29)
          {
            goto LABEL_36;
          }
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/media_session.cc");
        }
      }
    }

LABEL_36:
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v74 = "INTERNAL_ERROR";
    v75.__r_.__value_.__r.__words[0] = 14;
    webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/media_session.cc");
  }

  *(&v75.__r_.__value_.__s + 23) = 21;
  if (&v75 > "Called without offer." || &v75.__r_.__value_.__r.__words[2] + 5 <= "Called without offer.")
  {
    strcpy(&v75, "Called without offer.");
    *v76 = 0;
    v76[4] = 0;
    v76[6] = 0;
    *a5 = 10;
    *(a5 + 8) = *&v75.__r_.__value_.__l.__data_;
    *(a5 + 24) = *(&v75.__r_.__value_.__l + 2);
    *(a5 + 32) = 0;
    *(a5 + 35) = *&v76[3];
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    return;
  }

LABEL_56:
  __break(1u);
  operator delete(v67);
  if (v6)
  {
    if (v8 != v6)
    {
      do
      {
        v58 = *(v8 - 3);
        if (v58)
        {
          v59 = *(v8 - 2);
          v60 = *(v8 - 3);
          if (v59 != v58)
          {
            do
            {
              v61 = *(v59 - 1);
              v59 -= 3;
              if (v61 < 0)
              {
                operator delete(*v59);
              }
            }

            while (v59 != v58);
            v60 = *(v8 - 3);
          }

          *(v8 - 2) = v58;
          operator delete(v60);
        }

        v62 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          operator delete(*v62);
        }

        v8 -= 6;
      }

      while (v62 != v6);
    }

    operator delete(v6);
  }

  if (__src)
  {
    operator delete(__src);
  }

  if (v5)
  {
    webrtc::SessionDescription::~SessionDescription(v5);
    MEMORY[0x2743DA540]();
  }

  if (__p)
  {
    v54 = v71;
    v55 = __p;
    if (v71 != __p)
    {
      do
      {
        webrtc::StreamParams::~StreamParams((v54 - 144));
      }

      while (v54 != __p);
      v55 = __p;
    }

    operator delete(v55);
  }

  if (v7)
  {
    operator delete(v7);
  }

  if (v72)
  {
    v56 = v73;
    v57 = v72;
    if (v73 == v72)
    {
LABEL_90:
      operator delete(v57);
      return;
    }

    while (1)
    {
      if (*(v56 - 9) < 0)
      {
        operator delete(*(v56 - 4));
        v63 = v56 - 7;
        if ((*(v56 - 33) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

LABEL_88:
        operator delete(*v63);
        v56 = v63;
        if (v63 == v72)
        {
LABEL_89:
          v57 = v72;
          goto LABEL_90;
        }
      }

      else
      {
        v63 = v56 - 7;
        if (*(v56 - 33) < 0)
        {
          goto LABEL_88;
        }

LABEL_85:
        v56 = v63;
        if (v63 == v72)
        {
          goto LABEL_89;
        }
      }
    }
  }
}

void webrtc::anonymous namespace::MergeRtpHdrExts(uint64_t a1, uint64_t a2, int a3, unsigned __int8 **a4, __int128 **a5, uint64_t *a6)
{
  if (a1 == a2)
  {
    return;
  }

  v8 = a2;
  v9 = a1;
  v35 = a6 + 4;
  while (2)
  {
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *v9, *(v9 + 8));
    }

    else
    {
      v39 = *v9;
    }

    v41 = *(v9 + 28);
    v40 = *(v9 + 24);
    v10 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v39.__r_.__value_.__l.__size_;
    }

    v13 = v41;
    v14 = *a4;
    v15 = a4[1];
    while (v14 != v15)
    {
      v16 = v14[23];
      if (v16 < 0)
      {
        v17 = *v14;
        if (size != *(v14 + 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = v14;
        if (size != v16)
        {
          goto LABEL_17;
        }
      }

      if (!memcmp(v11, v17, size) && v14[28] == v13)
      {
        goto LABEL_5;
      }

LABEL_17:
      v14 += 32;
    }

    if (v13 && !a3)
    {
      goto LABEL_5;
    }

    v19 = *a5;
    v18 = a5[1];
LABEL_30:
    if (v19 == v18)
    {
      v23 = v40;
      if (v40 > *(a6 + 3) || v40 < *(a6 + 2))
      {
        goto LABEL_55;
      }

      if ((*(*a6 + 16))())
      {
        v23 = (*(*a6 + 24))(a6);
        v40 = v23;
        v24 = *v35;
        if (*v35)
        {
          while (1)
          {
LABEL_51:
            while (1)
            {
              v25 = v24;
              v26 = *(v24 + 28);
              if (v26 <= v23)
              {
                break;
              }

              v24 = *v25;
              if (!*v25)
              {
                goto LABEL_54;
              }
            }

            if (v26 >= v23)
            {
              break;
            }

            v24 = v25[1];
            if (!v24)
            {
              goto LABEL_54;
            }
          }

LABEL_55:
          v27 = a5[1];
          if (v27 >= a5[2])
          {
            std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(a5);
          }

          v8 = a2;
          if (!v27)
          {
            goto LABEL_71;
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(a5[1], v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
          }

          else
          {
            v28 = *&v39.__r_.__value_.__l.__data_;
            *(v27 + 16) = *(&v39.__r_.__value_.__l + 2);
            *v27 = v28;
          }

          v29 = v40;
          *(v27 + 28) = v41;
          *(v27 + 24) = v29;
          a5[1] = (v27 + 32);
          v30 = a4[1];
          if (v30 >= a4[2])
          {
            std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(a4);
          }

          if (!v30)
          {
            goto LABEL_71;
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v30, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
          }

          else
          {
            v31 = *&v39.__r_.__value_.__l.__data_;
            *(v30 + 2) = *(&v39.__r_.__value_.__l + 2);
            *v30 = v31;
          }

          v32 = v40;
          v30[28] = v41;
          *(v30 + 6) = v32;
          v33 = v30 + 32;
LABEL_4:
          a4[1] = v33;
          v10 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
LABEL_5:
          if (v10 < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
            v9 += 32;
            if (v9 == v8)
            {
              return;
            }
          }

          else
          {
            v9 += 32;
            if (v9 == v8)
            {
              return;
            }
          }

          continue;
        }
      }

      else
      {
        v24 = *v35;
        if (*v35)
        {
          goto LABEL_51;
        }
      }

LABEL_54:
      operator new();
    }

    break;
  }

  v20 = *(v19 + 23);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = v19;
    if (size == v20)
    {
      goto LABEL_35;
    }

LABEL_29:
    v19 += 2;
    goto LABEL_30;
  }

  v21 = *v19;
  if (size != *(v19 + 1))
  {
    goto LABEL_29;
  }

LABEL_35:
  if (memcmp(v11, v21, size) || *(v19 + 28) != v13)
  {
    goto LABEL_29;
  }

  if (v15 >= a4[2])
  {
    std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(a4);
  }

  if (v15)
  {
    if ((v20 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v15, *v19, *(v19 + 1));
    }

    else
    {
      v22 = *v19;
      *(v15 + 2) = *(v19 + 2);
      *v15 = v22;
    }

    v34 = *(v19 + 6);
    v15[28] = *(v19 + 28);
    *(v15 + 6) = v34;
    v33 = v15 + 32;
    v8 = a2;
    goto LABEL_4;
  }

LABEL_71:
  __break(1u);
}

void webrtc::UsedRtpHeaderExtensionIds::~UsedRtpHeaderExtensionIds(webrtc::UsedRtpHeaderExtensionIds *this)
{
  *this = &unk_288296110;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 24, *(this + 4));
}

{
  *this = &unk_288296110;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 24, *(this + 4));

  JUMPOUT(0x2743DA540);
}

void webrtc::MediaSessionDescriptionFactory::AddTransportOffer(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = *(a5 + 24);
    v6 = *(a5 + 32);
    if (v5 != v6)
    {
      v7 = *(a3 + 23);
      if (v7 >= 0)
      {
        v8 = *(a3 + 23);
      }

      else
      {
        v8 = a3[1];
      }

      if (v7 >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      do
      {
        v10 = *(v5 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v5 + 8);
        }

        if (v10 == v8)
        {
          v12 = v11 >= 0 ? v5 : *v5;
          if (!memcmp(v12, v9, v8))
          {
            break;
          }
        }

        v5 += 112;
      }

      while (v5 != v6);
    }
  }

  webrtc::TransportDescriptionFactory::CreateOffer();
}

void webrtc::anonymous namespace::CreateContentOffer(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  *(a6 + 32) = a3 & 1;
  *(a6 + 33) = 1;
  if (a4 != a5 && a2[11] != a2[12])
  {
    v7 = a4;
    do
    {
      v9 = v6[11];
      for (i = v6[12]; v9 != i; v9 += 40)
      {
        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = *(v7 + 23);
        }

        else
        {
          v11 = *(v7 + 8);
        }

        v12 = *(v9 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v9 + 8);
        }

        if (v11 == v12)
        {
          v14 = v10 >= 0 ? v7 : *v7;
          v15 = v13 >= 0 ? v9 : *v9;
          if (!memcmp(v14, v15, v11) && *(v7 + 28) == *(v9 + 32) && *(v9 + 36) != 4)
          {
            operator new();
          }
        }
      }

      v7 += 32;
      v6 = a2;
    }

    while (v7 != a5);
  }

  std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a6 + 64), 0, 0, 0);
  *(a6 + 88) = 1;
  v16 = *(a6 + 96);
  v17 = *(a6 + 104);
  if (v16 != v17)
  {
    v18 = v6[5];
    v19 = v6[6];
    v20 = *(a6 + 96);
    while (*(v20 + 120) == *(v20 + 128))
    {
      v20 += 144;
      if (v20 == v17)
      {
        goto LABEL_36;
      }
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(v16 + 128) - *(v16 + 120)) >> 4) >= 2)
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      if (v19 == v18)
      {
        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (&v25 != (v18 + 72))
      {
        std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(&v25, *(v18 + 72), *(v18 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 80) - *(v18 + 72)) >> 3));
      }

      if ((a6 + 208) != &v25)
      {
        std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(a6 + 208, v25, *(&v25 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v25 + 1) - v25) >> 3));
        std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(a6 + 232, *(&v26 + 1), v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - *(&v26 + 1)) >> 3));
      }

      webrtc::SimulcastDescription::~SimulcastDescription(&v25);
    }
  }

LABEL_36:
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

void webrtc::anonymous namespace::CreateMediaContentAnswer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = a7;
  v8 = a4;
  v9 = a1;
  v10 = *(a1 + 200);
  if (v10 != 2 || *(a7 + 200) != 1)
  {
    *(a7 + 200) = v10;
  }

  if (a4 == a5 || *(a2 + 88) == *(a2 + 96))
  {
    __p = 0;
    v75 = 0;
    v76 = 0;
    v19 = (a1 + 64);
  }

  else
  {
    do
    {
      v12 = *(a2 + 88);
      for (i = *(a2 + 96); v12 != i; v12 += 40)
      {
        v13 = *(v8 + 23);
        if (v13 >= 0)
        {
          v14 = *(v8 + 23);
        }

        else
        {
          v14 = *(v8 + 8);
        }

        v15 = *(v12 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v12 + 8);
        }

        if (v14 == v15)
        {
          v17 = v13 >= 0 ? v8 : *v8;
          v18 = v16 >= 0 ? v12 : *v12;
          if (!memcmp(v17, v18, v14) && *(v8 + 28) == *(v12 + 32) && *(v12 + 36) != 4)
          {
            operator new();
          }
        }
      }

      v8 += 32;
    }

    while (v8 != a5);
    __p = 0;
    v75 = 0;
    v9 = a1;
    v19 = (a1 + 64);
    v76 = 0;
    v7 = a7;
  }

  v20 = *(v9 + 64);
  v21 = *(v9 + 72);
  if (v20 == v21)
  {
    goto LABEL_43;
  }

  v22 = 0;
  do
  {
    v23 = v20[23];
    if (v23 < 0)
    {
      v24 = *v20;
      if (*(v20 + 1) != 87)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v24 = v20;
      if (v23 != 87)
      {
        goto LABEL_31;
      }
    }

    if (!memcmp("https://aomediacodec.github.io/av1-rtp-spec/#dependency-descriptor-rtp-header-extension", v24, 0x57uLL))
    {
      if (a6)
      {
        v22 = v20;
        if (v20[28])
        {
          goto LABEL_39;
        }
      }

      else if ((v20[28] & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_31:
    v20 += 32;
  }

  while (v20 != v21);
  if (v22)
  {
LABEL_39:
    std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(&__p);
  }

LABEL_43:
  v25 = *v19;
  v26 = v19[1];
  if (*v19 == v26)
  {
    goto LABEL_56;
  }

  v27 = 0;
  while (2)
  {
    v28 = v25[23];
    if (v28 < 0)
    {
      v29 = *v25;
      if (*(v25 + 1) == 72)
      {
LABEL_51:
        if (!memcmp("http://www.webrtc.org/experiments/rtp-hdrext/generic-frame-descriptor-00", v29, 0x48uLL))
        {
          if (a6)
          {
            v27 = v25;
            if (v25[28])
            {
              goto LABEL_54;
            }
          }

          else if ((v25[28] & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }
    }

    else
    {
      v29 = v25;
      if (v28 == 72)
      {
        goto LABEL_51;
      }
    }

    v25 += 32;
    if (v25 != v26)
    {
      continue;
    }

    break;
  }

  if (v27)
  {
LABEL_54:
    std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(&__p);
  }

LABEL_56:
  v30 = *v19;
  v31 = v19[1];
  if (*v19 == v31)
  {
    goto LABEL_91;
  }

  v32 = 0;
  while (2)
  {
    v33 = v30[23];
    if (v33 < 0)
    {
      v34 = *v30;
      if (*(v30 + 1) == 61)
      {
LABEL_64:
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[2];
        v38 = v34[3];
        v39 = v34[4];
        v40 = v34[5];
        v41 = v34[6];
        v42 = *(v34 + 53);
        if (*"http://www.webrtc.org/experiments/rtp-hdrext/abs-capture-time" == v35 && *"ww.webrtc.org/experiments/rtp-hdrext/abs-capture-time" == v36 && *"c.org/experiments/rtp-hdrext/abs-capture-time" == v37 && *"periments/rtp-hdrext/abs-capture-time" == v38 && *"s/rtp-hdrext/abs-capture-time" == v39 && *"rext/abs-capture-time" == v40 && *"-capture-time" == v41 && *"ure-time" == v42)
        {
          if (a6)
          {
            v32 = v30;
            if (v30[28])
            {
              goto LABEL_89;
            }
          }

          else if ((v30[28] & 1) == 0)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else
    {
      v34 = v30;
      if (v33 == 61)
      {
        goto LABEL_64;
      }
    }

    v30 += 32;
    if (v30 != v31)
    {
      continue;
    }

    break;
  }

  if (v32)
  {
LABEL_89:
    std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(&__p);
  }

LABEL_91:
  if ((v7 + 64) != &__p)
  {
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((v7 + 64), __p, 0, -__p >> 5);
  }

  *(v7 + 88) = 1;
  if (*(a3 + 1))
  {
    v50 = *(a1 + 32);
  }

  else
  {
    v50 = 0;
  }

  *(v7 + 32) = v50 & 1;
  *(v7 + 33) = *(a1 + 33);
  v51 = *(v7 + 96);
  v52 = *(v7 + 104);
  if (v51 != v52)
  {
    v53 = *(a2 + 40);
    v54 = *(a2 + 48);
    v55 = *(v7 + 96);
    while (*(v55 + 120) == *(v55 + 128))
    {
      v55 += 144;
      if (v55 == v52)
      {
        goto LABEL_108;
      }
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(v51 + 128) - *(v51 + 120)) >> 4) >= 2)
    {
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      if (v54 == v53)
      {
        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (&v77 != (v53 + 72))
      {
        std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(&v77, *(v53 + 72), *(v53 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(v53 + 80) - *(v53 + 72)) >> 3));
      }

      if ((v7 + 208) != &v77)
      {
        std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(v7 + 208, v77, *(&v77 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v77) >> 3));
        std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(v7 + 232, *(&v78 + 1), v79, 0xAAAAAAAAAAAAAAABLL * ((v79 - *(&v78 + 1)) >> 3));
      }

      webrtc::SimulcastDescription::~SimulcastDescription(&v77);
    }
  }

LABEL_108:
  v56 = *(a1 + 124);
  v57 = *(a2 + 32);
  v59 = (v56 & 0xFFFFFFFD) == 0 && v57 < 2;
  v60 = (v57 & 0xFFFFFFFD) != 0 || v56 > 1;
  v61 = v60;
  if (v60 || !v59)
  {
    v63 = v59 & v61;
    if (v59 | v61)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    if (v63)
    {
      v64 = 1;
    }

    *(v7 + 124) = v64;
    v62 = __p;
    if (__p)
    {
      goto LABEL_130;
    }
  }

  else
  {
    *(v7 + 124) = 0;
    v62 = __p;
    if (!__p)
    {
      return;
    }

LABEL_130:
    v65 = v75;
    v66 = v62;
    if (v75 != v62)
    {
      do
      {
        v67 = *(v65 - 9);
        v65 -= 4;
        if (v67 < 0)
        {
          operator delete(*v65);
        }
      }

      while (v65 != v62);
      v66 = __p;
    }

    v75 = v62;
    operator delete(v66);
  }
}

uint64_t webrtc::GetFirstAudioContent(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = a1[1];
    while (v1 != v2)
    {
      if (v1)
      {
        v3 = *(v1 + 32);
        if (v3)
        {
          if (!(*(*v3 + 16))(v3))
          {
            return v1;
          }
        }
      }

      v1 += 40;
    }
  }

  return 0;
}

uint64_t webrtc::GetFirstVideoContent(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = a1[1];
    while (v1 != v2)
    {
      if (v1)
      {
        v3 = *(v1 + 32);
        if (v3)
        {
          if ((*(*v3 + 16))(v3) == 1)
          {
            return v1;
          }
        }
      }

      v1 += 40;
    }
  }

  return 0;
}

uint64_t webrtc::GetFirstAudioContentDescription(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = a1[1];
    while (v1 != v2)
    {
      if (v1)
      {
        v3 = *(v1 + 32);
        if (v3)
        {
          if (!(*(*v3 + 16))(v3))
          {
            v4 = *(v1 + 32);
            if (!v4)
            {
              return 0;
            }

            v5 = *(*v4 + 32);

            return v5();
          }
        }
      }

      v1 += 40;
    }
  }

  return 0;
}

uint64_t webrtc::GetFirstVideoContentDescription(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = a1[1];
    while (v1 != v2)
    {
      if (v1)
      {
        v3 = *(v1 + 32);
        if (v3)
        {
          if ((*(*v3 + 16))(v3) == 1)
          {
            v4 = *(v1 + 32);
            if (!v4)
            {
              return 0;
            }

            v5 = *(*v4 + 48);

            return v5();
          }
        }
      }

      v1 += 40;
    }
  }

  return 0;
}

void std::vector<webrtc::ContentGroup>::__emplace_back_slow_path<webrtc::ContentGroup const&>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x555555555555555)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v2 = 0x555555555555555;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

BOOL webrtc::UsedIds<webrtc::RtpExtension>::IsIdUsed(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v5 == v2 || *(v5 + 28) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

uint64_t webrtc::UsedRtpHeaderExtensionIds::FindUnusedId(webrtc::UsedRtpHeaderExtensionIds *this)
{
  if (*(this + 13) <= 14 && (*(*this + 16))(this))
  {
    do
    {
      v2 = *(this + 13);
      if (v2 < *(this + 2))
      {
        break;
      }

      *(this + 13) = v2 - 1;
    }

    while (((*(*this + 16))(this) & 1) != 0);
  }

  if (*(this + 12) == 1)
  {
    v3 = *(this + 13);
    if (v3 >= *(this + 2))
    {
      if (v3 < 15)
      {
        return *(this + 13);
      }
    }

    else
    {
      *(this + 13) = 16;
    }

    if ((*(*this + 16))(this))
    {
      do
      {
        v4 = *(this + 13);
        if (v4 > *(this + 3))
        {
          break;
        }

        *(this + 13) = v4 + 1;
      }

      while (((*(*this + 16))(this) & 1) != 0);
    }
  }

  return *(this + 13);
}

uint64_t webrtc::UsedIds<webrtc::RtpExtension>::~UsedIds(uint64_t a1)
{
  *a1 = &unk_288296110;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 24, *(a1 + 32));
  return a1;
}

void webrtc::UsedIds<webrtc::RtpExtension>::~UsedIds(uint64_t a1)
{
  *a1 = &unk_288296110;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 24, *(a1 + 32));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::UsedIds<webrtc::RtpExtension>::FindUnusedId(_DWORD *a1)
{
  if ((*(*a1 + 16))(a1, a1[4]))
  {
    do
    {
      v2 = a1[4];
      if (v2 < a1[2])
      {
        break;
      }

      a1[4] = v2 - 1;
    }

    while (((*(*a1 + 16))(a1) & 1) != 0);
  }

  return a1[4];
}

void std::vector<webrtc::RtpExtension>::__emplace_back_slow_path<webrtc::RtpExtension const&>(void *a1)
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

void webrtc::AudioContentDescription::~AudioContentDescription(webrtc::AudioContentDescription *this)
{
  webrtc::MediaContentDescription::~MediaContentDescription(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::MediaContentDescription::as_video(webrtc::MediaContentDescription *this)
{
  return 0;
}

{
  return 0;
}

uint64_t webrtc::MediaContentDescription::as_sctp(webrtc::MediaContentDescription *this)
{
  return 0;
}

{
  return 0;
}

uint64_t webrtc::MediaContentDescription::as_unsupported(webrtc::MediaContentDescription *this)
{
  return 0;
}

{
  return 0;
}

double webrtc::AudioContentDescription::set_protocol(uint64_t a1, __int128 *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  v4 = (&v6 + a3);
  if (&v6 <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    memmove(&v6, a2, a3);
  }

  *v4 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *&v6;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t webrtc::MediaContentDescription::MediaContentDescription(uint64_t this)
{
  *this = &unk_2882961C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFF00000000;
  *(this + 63) = 2;
  if (this + 40 <= "AS" && this + 42 > "AS")
  {
    __break(1u);
  }

  else
  {
    strcpy((this + 40), "AS");
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 64) = 0;
    *(this + 88) = 0;
    *(this + 104) = 0;
    *(this + 112) = 0;
    *(this + 96) = 0;
    *(this + 120) = 0;
    *(this + 124) = 0;
    *(this + 140) = 0;
    *(this + 132) = 0;
    *(this + 148) = 0;
    *(this + 152) = &unk_28828CE50;
    *(this + 192) = 0;
    memset(v2, 0, sizeof(v2));
    *(this + 160) = 0;
    *(this + 164) = *&v2[4];
    *(this + 184) = 0;
    *(this + 188) = 0;
    *(this + 200) = 2;
    *(this + 208) = 0u;
    *(this + 224) = 0u;
    *(this + 240) = 0u;
    *(this + 256) = 0u;
    *(this + 272) = 0u;
    *(this + 288) = 0u;
  }

  return this;
}

uint64_t webrtc::MediaContentDescription::as_audio(webrtc::MediaContentDescription *this)
{
  return 0;
}

{
  return 0;
}

double webrtc::MediaContentDescription::set_protocol(uint64_t a1, __int128 *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  v4 = (&v6 + a3);
  if (&v6 <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    memmove(&v6, a2, a3);
  }

  *v4 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *&v6;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return result;
}

void webrtc::MediaContentDescription::~MediaContentDescription(webrtc::MediaContentDescription *this)
{
  *this = &unk_2882961C0;
  v2 = *(this + 35);
  if (v2)
  {
    v3 = *(this + 36);
    v4 = *(this + 35);
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
      v4 = *(this + 35);
    }

    *(this + 36) = v2;
    operator delete(v4);
  }

  v10 = *(this + 32);
  if (v10)
  {
    v11 = *(this + 33);
    v12 = *(this + 32);
    if (v11 != v10)
    {
      do
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v11 - 3), *(v11 - 2));
        v13 = *(v11 - 6);
        if (v13)
        {
          v14 = *(v11 - 5);
          v15 = *(v11 - 6);
          if (v14 != v13)
          {
            v16 = v14 - 27;
            v17 = v14 - 27;
            v18 = v14 - 27;
            do
            {
              v19 = *v18;
              v18 -= 27;
              (*v19)(v17);
              v16 -= 27;
              v9 = v17 == v13;
              v17 = v18;
            }

            while (!v9);
            v15 = *(v11 - 6);
          }

          *(v11 - 5) = v13;
          operator delete(v15);
        }

        v20 = v11 - 10;
        if (*(v11 - 57) < 0)
        {
          operator delete(*v20);
        }

        v11 -= 10;
      }

      while (v20 != v10);
      v12 = *(this + 32);
    }

    *(this + 33) = v10;
    operator delete(v12);
  }

  webrtc::SimulcastDescription::~SimulcastDescription((this + 208));
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v21 = *(this + 12);
  if (v21)
  {
    v22 = *(this + 13);
    v23 = *(this + 12);
    if (v22 != v21)
    {
      do
      {
        webrtc::StreamParams::~StreamParams((v22 - 144));
      }

      while (v22 != v21);
      v23 = *(this + 12);
    }

    *(this + 13) = v21;
    operator delete(v23);
  }

  v24 = *(this + 8);
  if (v24)
  {
    v25 = *(this + 9);
    v26 = *(this + 8);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 9);
        v25 -= 4;
        if (v27 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v24);
      v26 = *(this + 8);
    }

    *(this + 9) = v24;
    operator delete(v26);
  }

  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 5));
  if (*(this + 31) < 0)
  {
    goto LABEL_42;
  }
}

void webrtc::SimulcastDescription::~SimulcastDescription(webrtc::SimulcastDescription *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = *(this + 3);
    if (v3 != v2)
    {
      v5 = *(this + 4);
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
            do
            {
              v10 = *(v9 - 9);
              v9 -= 4;
              if (v10 < 0)
              {
                operator delete(*v9);
              }
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 3);
    }

    *(this + 4) = v2;
    operator delete(v4);
  }

  v11 = *this;
  if (*this)
  {
    v12 = *(this + 1);
    v13 = *this;
    if (v12 != v11)
    {
      v14 = *(this + 1);
      do
      {
        v17 = *(v14 - 3);
        v14 -= 3;
        v16 = v17;
        if (v17)
        {
          v18 = *(v12 - 2);
          v15 = v16;
          if (v18 != v16)
          {
            do
            {
              v19 = *(v18 - 9);
              v18 -= 4;
              if (v19 < 0)
              {
                operator delete(*v18);
              }
            }

            while (v18 != v16);
            v15 = *v14;
          }

          *(v12 - 2) = v16;
          operator delete(v15);
        }

        v12 = v14;
      }

      while (v14 != v11);
      v13 = *this;
    }

    *(this + 1) = v11;
    operator delete(v13);
  }
}

webrtc::MediaContentDescription *webrtc::MediaContentDescription::MediaContentDescription(webrtc::MediaContentDescription *this, const webrtc::MediaContentDescription *a2)
{
  *this = &unk_2882961C0;
  v4 = (this + 8);
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v4->__r_.__value_.__l.__data_ = v5;
    *(this + 4) = *(a2 + 4);
    if ((*(a2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    v10 = *(a2 + 8);
    v11 = *(a2 + 9);
    v9 = v11 - v10;
    if (v11 == v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
  *(this + 4) = *(a2 + 4);
  if (*(a2 + 63) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v6;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = v8 - v7;
  if (v8 != v7)
  {
    goto LABEL_7;
  }

LABEL_9:
  *(this + 88) = *(a2 + 88);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  v12 = *(a2 + 12);
  v13 = *(a2 + 13);
  if (v13 != v12)
  {
    if (0x8E38E38E38E38E39 * ((v13 - v12) >> 4) < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 15) = *(a2 + 15);
  *(this + 16) = 0;
  v14 = this + 128;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = &unk_28828CE50;
  *(this + 44) = 0;
  if (this != a2)
  {
    if (*(a2 + 151) < 0)
    {
      std::string::__assign_no_alias<true>(v14, *(a2 + 16), *(a2 + 17));
    }

    else
    {
      v15 = *(a2 + 8);
      *(this + 18) = *(a2 + 18);
      *v14 = v15;
    }
  }

  *(this + 40) = *(a2 + 40);
  *(this + 164) = *(a2 + 164);
  *(this + 92) = *(a2 + 92);
  *(this + 192) = *(a2 + 192);
  *(this + 47) = *(a2 + 47);
  *(this + 50) = *(a2 + 50);
  webrtc::SimulcastLayerList::SimulcastLayerList(this + 26, a2 + 26);
  webrtc::SimulcastLayerList::SimulcastLayerList(this + 29, a2 + 29);
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  v16 = *(a2 + 32);
  v17 = *(a2 + 33);
  if (v17 != v16)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v17 - v16) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  v18 = *(a2 + 35);
  v19 = *(a2 + 36);
  if (v19 != v18)
  {
    if (0x84BDA12F684BDA13 * ((v19 - v18) >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void *webrtc::SimulcastLayerList::SimulcastLayerList(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::VideoContentDescription::~VideoContentDescription(webrtc::VideoContentDescription *this)
{
  webrtc::MediaContentDescription::~MediaContentDescription(this);

  JUMPOUT(0x2743DA540);
}

double webrtc::VideoContentDescription::set_protocol(uint64_t a1, __int128 *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  v4 = (&v6 + a3);
  if (&v6 <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    memmove(&v6, a2, a3);
  }

  *v4 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *&v6;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return result;
}

void webrtc::anonymous namespace::AddStreamParams(int **a1, _BYTE **a2, webrtc::UniqueRandomIdGenerator *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(__dst, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    *__dst = *(a5 + 8);
    *&__dst[16] = *(a5 + 24);
  }

  v10 = __dst[23];
  v11 = __dst;
  if (__dst[23] < 0)
  {
    v10 = *&__dst[8];
    v11 = *__dst;
  }

  if (v10 == 13)
  {
    if (*v11 == *"UDP/DTLS/SCTP" && *(v11 + 5) == *"TLS/SCTP")
    {
      v18 = 1;
      if ((__dst[23] & 0x80000000) != 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      if (v18)
      {
        return;
      }

      goto LABEL_29;
    }

    v13 = *v11;
    v14 = *"TCP/DTLS/SCTP";
    v15 = *(v11 + 5);
    v16 = *"TLS/SCTP";
LABEL_16:
    v12 = v13 == v14 && v15 == v16;
    goto LABEL_19;
  }

  if (v10 == 9)
  {
    v13 = *v11;
    v14 = *"DTLS/SCTP";
    v15 = v11[8];
    v16 = webrtc::kMediaProtocolDtlsSctp[8];
    goto LABEL_16;
  }

  if (v10 != 4)
  {
    v18 = 0;
    if ((__dst[23] & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v12 = *v11 == *"SCTP";
LABEL_19:
  v18 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  operator delete(*__dst);
  if (v18)
  {
    return;
  }

LABEL_29:
  v20 = *(a5 + 280);
  v19 = *(a5 + 288);
  if (v20 == v19)
  {
    v64 = *(a5 + 280);
    v65 = *(a5 + 288);
    goto LABEL_40;
  }

  while (webrtc::Codec::GetResiliencyType(v20) != 4)
  {
    v20 = (v20 + 216);
    if (v20 == v19)
    {
      v20 = v19;
      break;
    }
  }

  v64 = v20;
  v20 = *(a5 + 280);
  v19 = *(a5 + 288);
  v65 = v19;
  if (v20 == v19)
  {
LABEL_40:
    v67 = v19;
    v21 = *a1;
    v68 = a1[1];
    if (*a1 == v68)
    {
      return;
    }

    while (1)
    {
      while (1)
      {
LABEL_44:
        v22 = *a4;
        v23 = a4[1];
        if (*a4 != v23)
        {
          if (*(v21 + 23) >= 0)
          {
            v24 = *(v21 + 23);
          }

          else
          {
            v24 = *(v21 + 1);
          }

          if ((*(v21 + 23) & 0x80) != 0)
          {
            v25 = *v21;
            while (1)
            {
              v29 = *(v22 + 23);
              v30 = v29;
              if ((v29 & 0x80u) != 0)
              {
                v29 = *(v22 + 8);
              }

              if (v29 == v24)
              {
                v31 = v30 >= 0 ? v22 : *v22;
                if (!memcmp(v31, v25, v24))
                {
                  break;
                }
              }

              v22 += 144;
              if (v22 == v23)
              {
                goto LABEL_72;
              }
            }
          }

          else
          {
            while (1)
            {
              v26 = *(v22 + 23);
              v27 = v26;
              if ((v26 & 0x80u) != 0)
              {
                v26 = *(v22 + 8);
              }

              if (v26 == v24)
              {
                v28 = v27 >= 0 ? v22 : *v22;
                if (!memcmp(v28, v21, v24))
                {
                  break;
                }
              }

              v22 += 144;
              if (v22 == v23)
              {
                goto LABEL_72;
              }
            }
          }
        }

        if (v23 == v22 || v22 == 0)
        {
          break;
        }

        if ((v22 + 96) != v21 + 6)
        {
          std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>((v22 + 96), *(v21 + 3), *(v21 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 4) - *(v21 + 3)) >> 3));
        }

        v35 = *(a5 + 104);
        if (v35 >= *(a5 + 112))
        {
          std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>((a5 + 96));
        }

        if (!v35)
        {
          goto LABEL_159;
        }

        *(a5 + 104) = webrtc::StreamParams::StreamParams(v35, v22) + 6;
        v21 += 26;
        if (v21 == v68)
        {
          return;
        }
      }

LABEL_72:
      if (*(v21 + 6) != *(v21 + 7))
      {
        v74 = 0uLL;
        v75 = 0uLL;
        v73 = 0uLL;
        v71 = 0uLL;
        memset(v72, 0, sizeof(v72));
        v70 = 0uLL;
        memset(__dst, 0, sizeof(__dst));
        if (__dst == v21)
        {
          goto LABEL_76;
        }

        if (*(v21 + 23) < 0)
        {
          std::string::__assign_no_alias<true>(__dst, *v21, *(v21 + 1));
          if ((v72 + 8) != a2)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v33 = *v21;
          *&__dst[16] = *(v21 + 2);
          *__dst = v33;
LABEL_76:
          if ((v72 + 8) != a2)
          {
LABEL_77:
            v34 = *(a2 + 23);
            if ((SHIBYTE(v72[1]) & 0x80000000) == 0)
            {
              if ((*(a2 + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(v72 + 8, *a2, a2[1]);
                if (&v73 == (v21 + 6))
                {
LABEL_106:
                  v46 = *(v21 + 6);
                  v47 = *(v21 + 7);
                  v48 = 0xCCCCCCCCCCCCCCCDLL * ((v47 - v46) >> 4);
                  if (v48 >= 2 && (&v74 + 8) != v21 + 12)
                  {
                    std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>(&v74 + 1, v46, v47, v48);
                  }

                  goto LABEL_149;
                }
              }

              else
              {
                *(v72 + 8) = *a2;
                *(&v72[1] + 1) = a2[2];
                if (&v73 == (v21 + 6))
                {
                  goto LABEL_106;
                }
              }

LABEL_105:
              std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(&v73, *(v21 + 3), *(v21 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 4) - *(v21 + 3)) >> 3));
              goto LABEL_106;
            }

            if (v34 >= 0)
            {
              v44 = a2;
            }

            else
            {
              v44 = *a2;
            }

            if (v34 >= 0)
            {
              v45 = *(a2 + 23);
            }

            else
            {
              v45 = a2[1];
            }

            std::string::__assign_no_alias<false>((v72 + 8), v44, v45);
          }
        }

        if (&v73 == (v21 + 6))
        {
          goto LABEL_106;
        }

        goto LABEL_105;
      }

      v74 = 0uLL;
      v75 = 0uLL;
      v73 = 0uLL;
      v71 = 0uLL;
      memset(v72, 0, sizeof(v72));
      v70 = 0uLL;
      memset(__dst, 0, sizeof(__dst));
      if (__dst != v21)
      {
        if (*(v21 + 23) < 0)
        {
          std::string::__assign_no_alias<true>(__dst, *v21, *(v21 + 1));
          if (v20 == v67)
          {
            goto LABEL_114;
          }

          goto LABEL_91;
        }

        v36 = *v21;
        *&__dst[16] = *(v21 + 2);
        *__dst = v36;
      }

      if (v20 == v67)
      {
        goto LABEL_114;
      }

LABEL_91:
      if (v21[24] >= 2)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
LABEL_133:
          webrtc::webrtc_logging_impl::Log("\r\t", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/media_session.cc");
        }

LABEL_134:
        v56 = 0;
        goto LABEL_135;
      }

LABEL_114:
      if (v20 == v67)
      {
        goto LABEL_134;
      }

      (*(*a6 + 16))(v76);
      v50 = v77;
      if ((v77 & 0x80u) != 0)
      {
        v50 = v76[1];
      }

      if (v50 >= 7)
      {
        v52 = v76[0];
        if ((v77 & 0x80u) == 0)
        {
          v52 = v76;
        }

        v53 = *v52;
        v54 = *(v52 + 3);
        v51 = v53 == 1650552389 && v54 == 1684368482;
        if ((v77 & 0x80000000) == 0)
        {
LABEL_129:
          if (!v51)
          {
            goto LABEL_132;
          }

          goto LABEL_130;
        }
      }

      else
      {
        v51 = 0;
        if ((v77 & 0x80000000) == 0)
        {
          goto LABEL_129;
        }
      }

      operator delete(v76[0]);
      if (!v51)
      {
LABEL_132:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          goto LABEL_133;
        }

        goto LABEL_134;
      }

LABEL_130:
      v56 = 1;
LABEL_135:
      webrtc::StreamParams::GenerateSsrcs(__dst, v21[24], v64 != v65, v56, a3);
      if ((v72 + 8) == a2)
      {
        goto LABEL_147;
      }

      v57 = *(a2 + 23);
      if (SHIBYTE(v72[1]) < 0)
      {
        if (v57 >= 0)
        {
          v58 = a2;
        }

        else
        {
          v58 = *a2;
        }

        if (v57 >= 0)
        {
          v59 = *(a2 + 23);
        }

        else
        {
          v59 = a2[1];
        }

        std::string::__assign_no_alias<false>((v72 + 8), v58, v59);
LABEL_147:
        if (&v73 == (v21 + 6))
        {
          goto LABEL_149;
        }

LABEL_148:
        std::vector<std::string>::__assign_with_size[abi:sn200100]<std::string*,std::string*>(&v73, *(v21 + 3), *(v21 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + 4) - *(v21 + 3)) >> 3));
        goto LABEL_149;
      }

      if ((*(a2 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v72 + 8, *a2, a2[1]);
        if (&v73 != (v21 + 6))
        {
          goto LABEL_148;
        }
      }

      else
      {
        *(v72 + 8) = *a2;
        *(&v72[1] + 1) = a2[2];
        if (&v73 != (v21 + 6))
        {
          goto LABEL_148;
        }
      }

LABEL_149:
      v60 = *(a5 + 104);
      if (v60 >= *(a5 + 112))
      {
        std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>((a5 + 96));
      }

      if (!v60)
      {
        goto LABEL_159;
      }

      *(a5 + 104) = webrtc::StreamParams::StreamParams(v60, __dst) + 6;
      v61 = a4[1];
      if (v61 >= a4[2])
      {
        std::vector<webrtc::StreamParams>::__emplace_back_slow_path<webrtc::StreamParams const&>(a4);
      }

      if (!v61)
      {
LABEL_159:
        __break(1u);
        return;
      }

      v62 = webrtc::StreamParams::StreamParams(v61, __dst) + 6;
      a4[1] = v62;
      webrtc::StreamParams::~StreamParams(__dst);
      v21 += 26;
      if (v21 == v68)
      {
        return;
      }
    }
  }

  while (webrtc::Codec::GetResiliencyType(v20) != 3)
  {
    v20 = (v20 + 216);
    if (v20 == v19)
    {
      v20 = v19;
      break;
    }
  }

  v67 = *(a5 + 288);
  v21 = *a1;
  v68 = a1[1];
  if (*a1 != v68)
  {
    goto LABEL_44;
  }
}

void webrtc::SctpDataContentDescription::~SctpDataContentDescription(webrtc::SctpDataContentDescription *this)
{
  webrtc::MediaContentDescription::~MediaContentDescription(this);

  JUMPOUT(0x2743DA540);
}

double webrtc::SctpDataContentDescription::set_protocol(uint64_t a1, __int128 *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  v4 = (&v6 + a3);
  if (&v6 <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    memmove(&v6, a2, a3);
  }

  *v4 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  result = *&v6;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  return result;
}

void webrtc::UnsupportedContentDescription::~UnsupportedContentDescription(void **this)
{
  *this = &unk_288296340;
  if (*(this + 327) < 0)
  {
    v2 = this;
    operator delete(this[38]);
    this = v2;
  }

  webrtc::MediaContentDescription::~MediaContentDescription(this);
}

{
  *this = &unk_288296340;
  if (*(this + 327) < 0)
  {
    operator delete(this[38]);
  }

  webrtc::MediaContentDescription::~MediaContentDescription(this);

  JUMPOUT(0x2743DA540);
}

double webrtc::MediaStream::MediaStream(uint64_t a1, __int128 *a2)
{
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  *a1 = &unk_2882963C0;
  *(a1 + 8) = &unk_288296448;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
    result = 0.0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    v2 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v2;
    result = 0.0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
  }

  return result;
}

BOOL webrtc::MediaStream::AddTrack(void *a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    (**v3)(*a2);
  }

  (*(*v3 + 40))(v19, v3);
  v4 = a1[8];
  if (v4 != a1[9])
  {
    while (1)
    {
      (*(**v4 + 40))(__p);
      v5 = v22;
      if ((v22 & 0x80u) == 0)
      {
        v6 = v22;
      }

      else
      {
        v6 = __p[1];
      }

      v7 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v7 = v19[1];
      }

      if (v6 == v7)
      {
        if ((v22 & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if ((v20 & 0x80u) == 0)
        {
          v9 = v19;
        }

        else
        {
          v9 = v19[0];
        }

        v10 = memcmp(v8, v9, v6) == 0;
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v10 = 0;
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      operator delete(__p[0]);
LABEL_20:
      if (!v10 && ++v4 != a1[9])
      {
        continue;
      }

      break;
    }
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
    v11 = a1[9];
    if (v4 != v11)
    {
      goto LABEL_24;
    }

LABEL_26:
    v12 = a1[10];
    if (v4 >= v12)
    {
      v13 = a1[8];
      v14 = ((v4 - v13) >> 3) + 1;
      if (v14 >> 61)
      {
        goto LABEL_39;
      }

      v15 = v12 - v13;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
      v17 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v4)
    {
      *v11 = v3;
      a1[9] = v11 + 1;
      webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(a1);
      return v4 == v11;
    }

    __break(1u);
LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = a1[9];
  if (v4 == v11)
  {
    goto LABEL_26;
  }

LABEL_24:
  (*(*v3 + 8))(v3);
  return v4 == v11;
}

{
  v3 = *a2;
  if (*a2)
  {
    (**v3)(*a2);
  }

  (*(*v3 + 40))(v19, v3);
  v4 = a1[11];
  if (v4 != a1[12])
  {
    while (1)
    {
      (*(**v4 + 40))(__p);
      v5 = v22;
      if ((v22 & 0x80u) == 0)
      {
        v6 = v22;
      }

      else
      {
        v6 = __p[1];
      }

      v7 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v7 = v19[1];
      }

      if (v6 == v7)
      {
        if ((v22 & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if ((v20 & 0x80u) == 0)
        {
          v9 = v19;
        }

        else
        {
          v9 = v19[0];
        }

        v10 = memcmp(v8, v9, v6) == 0;
        if ((v5 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v10 = 0;
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      operator delete(__p[0]);
LABEL_20:
      if (!v10 && ++v4 != a1[12])
      {
        continue;
      }

      break;
    }
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
    v11 = a1[12];
    if (v4 != v11)
    {
      goto LABEL_24;
    }

LABEL_26:
    v12 = a1[13];
    if (v4 >= v12)
    {
      v13 = a1[11];
      v14 = ((v4 - v13) >> 3) + 1;
      if (v14 >> 61)
      {
        goto LABEL_39;
      }

      v15 = v12 - v13;
      if (v15 >> 2 > v14)
      {
        v14 = v15 >> 2;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
      v17 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v4)
    {
      *v11 = v3;
      a1[12] = v11 + 1;
      webrtc::Notifier<webrtc::AudioTrackInterface>::FireOnChanged(a1);
      return v4 == v11;
    }

    __break(1u);
LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = a1[12];
  if (v4 == v11)
  {
    goto LABEL_26;
  }

LABEL_24:
  (*(*v3 + 8))(v3);
  return v4 == v11;
}