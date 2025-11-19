uint64_t webrtc::MediaReceiverInfo::MediaReceiverInfo(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 64) = v7;
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v10 = a2[8];
    *(a1 + 144) = *(a2 + 18);
    *(a1 + 128) = v10;
  }

  *(a1 + 152) = *(a2 + 19);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v12 = *(a2 + 20);
  v11 = *(a2 + 21);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v14 = *(a2 + 23);
  v13 = *(a2 + 24);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v15;
  v16 = a2[15];
  v17 = a2[16];
  v18 = a2[18];
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v18;
  *(a1 + 240) = v16;
  *(a1 + 256) = v17;
  v19 = a2[19];
  v20 = a2[20];
  v21 = a2[21];
  *(a1 + 348) = *(a2 + 348);
  *(a1 + 320) = v20;
  *(a1 + 336) = v21;
  *(a1 + 304) = v19;
  return a1;
}

void std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
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

  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v23 = *(v10 + 1);
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
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
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
      v24[0] = v9 + 32;
      v24[1] = v9 + 40;
      std::pair<int &,webrtc::RtpCodecParameters &>::operator=[abi:sn200100]<int const,webrtc::RtpCodecParameters,0>(v24, (v14 + 4));
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_26:
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = v16;
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
        v10 = *(v10 + 2);
        if (v10)
        {
          v21 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v22 = *(v10 + 1);
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
            for (*(v10 + 1) = 0; v21; v21 = *(v10 + 1))
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
        if (*(v9 + 8) >= *(v15 + 8))
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
    *(v9 + 1) = 0;
    *(v9 + 2) = v16;
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
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(a1, v12);
  if (v10)
  {
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

uint64_t std::pair<int &,webrtc::RtpCodecParameters &>::operator=[abi:sn200100]<int const,webrtc::RtpCodecParameters,0>(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  **result = *a2;
  if (v3 == a2 + 8)
  {
    v7 = *(a2 + 40);
    *(v3 + 48) = *(a2 + 56);
    *(v3 + 32) = v7;
    *(v3 + 104) = *(a2 + 112);
  }

  else
  {
    v4 = *(a2 + 39);
    v5 = result;
    if (*(v3 + 31) < 0)
    {
      if (v4 >= 0)
      {
        v8 = (a2 + 16);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      if (v4 >= 0)
      {
        v9 = *(a2 + 39);
      }

      else
      {
        v9 = *(a2 + 24);
      }

      std::string::__assign_no_alias<false>((v3 + 8), v8, v9);
    }

    else if ((*(a2 + 39) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 8), *(a2 + 16), *(a2 + 24));
    }

    else
    {
      v6 = *(a2 + 16);
      *(v3 + 24) = *(a2 + 32);
      *(v3 + 8) = v6;
    }

    v10 = *(a2 + 40);
    *(v3 + 48) = *(a2 + 56);
    *(v3 + 32) = v10;
    std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(v3 + 56, *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 2));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v3 + 80, *(a2 + 88), (a2 + 96));
    result = v5;
    *(v3 + 104) = *(a2 + 112);
  }

  return result;
}

char *std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 2) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    goto LABEL_26;
  }

  v12 = *(a1 + 8);
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    while (v4 != a3)
    {
      v19 = *v4;
      *(result + 2) = *(v4 + 2);
      *result = v19;
      result += 12;
      v4 = (v4 + 12);
    }

    *(a1 + 8) = result;
  }

  else
  {
    if (v12 != result)
    {
      v14 = (a2 + v13);
      do
      {
        v15 = *v4;
        *(result + 2) = *(v4 + 2);
        *result = v15;
        result += 12;
        v4 = (v4 + 12);
        v13 -= 12;
      }

      while (v13);
      v12 = *(a1 + 8);
      v4 = v14;
    }

    v16 = v12;
    if (v4 != a3)
    {
      v16 = v12;
      v17 = v12;
      while (v17)
      {
        v18 = *v4;
        v17[8] = *(v4 + 8);
        *v17 = v18;
        v17 += 12;
        v4 = (v4 + 12);
        v16 += 12;
        if (v4 == a3)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_26:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_22:
    *(a1 + 8) = v16;
  }

  return result;
}

void std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(a1, *(a2 + 1));
    *(a2 + 5) = &unk_28829C078;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((a2 + 120), *(a2 + 16));
    v4 = *(a2 + 12);
    if (v4)
    {
      *(a2 + 13) = v4;
      operator delete(v4);
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void webrtc::anonymous namespace::GetTrackIdBySsrc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v3 = (a3 + 8);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v3;
  v7 = v4;
  do
  {
    v8 = *(v7 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = v7[v10];
  }

  while (v7);
  if (v6 == v3 || *(v6 + 8) > a2)
  {
    do
    {
      v11 = v4;
      v4 = *v4;
    }

    while (v4);
    if (v11 != v3 && !*(v11 + 8))
    {
      v12 = a1;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/legacy_stats_collector.cc");
      }

      a1 = v12;
      if ((*(v11 + 63) & 0x80000000) == 0)
      {
        v20 = *(v11 + 5);
        v21 = v11[7];
LABEL_19:
        *(a1 + 16) = v21;
        *a1 = v20;
        return;
      }

      v22 = v11[5];
      v23 = v11[6];

      goto LABEL_22;
    }

LABEL_16:
    *(a1 + 23) = 0;
    *a1 = 0;
    return;
  }

  if ((*(v6 + 63) & 0x80000000) == 0)
  {
    v20 = *(v6 + 5);
    v21 = v6[7];
    goto LABEL_19;
  }

  v22 = v6[5];
  v23 = v6[6];

LABEL_22:
  std::string::__init_copy_ctor_external(a1, v22, v23);
}

void webrtc::anonymous namespace::VideoChannelStatsGatherer::~VideoChannelStatsGatherer(webrtc::_anonymous_namespace_::VideoChannelStatsGatherer *this)
{
  webrtc::VideoMediaInfo::~VideoMediaInfo(this + 14);
  *this = &unk_288295198;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 8));
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  webrtc::VideoMediaInfo::~VideoMediaInfo(this + 14);
  *this = &unk_288295198;
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<unsigned int,std::string>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::string>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::string>>>::destroy(*(this + 8));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 1));
LABEL_3:

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::VideoChannelStatsGatherer::GetStatsOnWorkerThread(webrtc::_anonymous_namespace_::VideoChannelStatsGatherer *this)
{
  v31 = 0;
  v32 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = &v31;
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = &v27;
  v2 = (*(**(this + 13) + 48))(*(this + 13));
  v3 = (*(*v2 + 216))(v2, v29);
  v4 = (*(**(this + 13) + 72))(*(this + 13));
  v5 = v3 & (*(*v4 + 224))(v4, __p);
  if (v5 == 1)
  {
    v6 = v29[0];
    v14 = v29[0];
    v7 = *&v29[1];
    memset(v29, 0, sizeof(v29));
    v15 = v7;
    v16 = *&v29[3];
    v17 = v29[5];
    v18 = *__p;
    v8 = v25;
    __p[1] = 0;
    v25 = 0;
    __p[0] = 0;
    v19 = v8;
    v20 = v30;
    v21[0] = v31;
    v21[1] = v32;
    if (v32)
    {
      *(v31 + 16) = v21;
      v30 = &v31;
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v20 = v21;
    }

    v22 = v26;
    v23[0] = v27;
    v23[1] = v28;
    if (v28)
    {
      *(v27 + 2) = v23;
      v26 = &v27;
      v27 = 0;
      v28 = 0;
      v9 = (this + 112);
      if ((this + 112) == &v14)
      {
LABEL_8:
        webrtc::VideoMediaInfo::~VideoMediaInfo(&v14);
        goto LABEL_9;
      }
    }

    else
    {
      v22 = v23;
      v9 = (this + 112);
      if ((this + 112) == &v14)
      {
        goto LABEL_8;
      }
    }

    std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(v9, v6, v7, 0xCBEEA4E1A08AD8F3 * ((v7 - v6) >> 3));
    std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(this + 17, v16, *(&v16 + 1), 0xCBEEA4E1A08AD8F3 * ((*(&v16 + 1) - v16) >> 3));
    std::vector<webrtc::VideoReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoReceiverInfo*,webrtc::VideoReceiverInfo*>(this + 20, v18, *(&v18 + 1), 0xAFD6A052BF5A814BLL * ((*(&v18 + 1) - v18) >> 3));
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(this + 184, v20, v21);
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(this + 208, v22, v23);
    goto LABEL_8;
  }

LABEL_9:
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(&v26, v27);
  v10 = __p[0];
  if (__p[0])
  {
    v11 = __p[1];
    v12 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        webrtc::VideoReceiverInfo::~VideoReceiverInfo(v11 - 99);
      }

      while (v11 != v10);
      v12 = __p[0];
    }

    __p[1] = v10;
    operator delete(v12);
  }

  webrtc::VideoMediaSendInfo::~VideoMediaSendInfo(v29);
  return v5;
}

void std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(uint64_t *a1, uint64_t a2, const webrtc::VideoSenderInfo *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCBEEA4E1A08AD8F3 * ((v7 - *a1) >> 3) < a4)
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
          webrtc::VideoSenderInfo::~VideoSenderInfo((v10 - 472));
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

    if (a4 <= 0x8AD8F2FBA93868)
    {
      v12 = 0xCBEEA4E1A08AD8F3 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x456C797DD49C34)
      {
        v14 = 0x8AD8F2FBA93868;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x8AD8F2FBA93868)
      {
        operator new();
      }
    }

    goto LABEL_32;
  }

  v15 = a1[1];
  v16 = 0xCBEEA4E1A08AD8F3 * ((v15 - v8) >> 3);
  if (v16 >= a4)
  {
    if (a2 != a3)
    {
      v21 = 0;
      do
      {
        v28 = v8 + v21;
        v29 = a2 + v21;
        webrtc::MediaSenderInfo::operator=(v8 + v21, a2 + v21);
        v30 = *(a2 + v21 + 208);
        *(v28 + 200) = *(a2 + v21 + 200);
        *(v28 + 208) = v30;
        if (v8 == a2)
        {
          std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v28 + 240, (v29 + 240));
          v22 = *(v29 + 272);
          v23 = *(v29 + 288);
          v24 = *(v29 + 304);
          *(v28 + 320) = *(v29 + 320);
          *(v28 + 288) = v23;
          *(v28 + 304) = v24;
          *(v28 + 272) = v22;
        }

        else
        {
          std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>((v28 + 216), *(v29 + 216), *(v29 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(v29 + 224) - *(v29 + 216)) >> 4));
          std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v28 + 240, (v29 + 240));
          v31 = *(v29 + 272);
          v32 = *(v29 + 288);
          v33 = *(v29 + 304);
          *(v28 + 320) = *(v29 + 320);
          *(v28 + 288) = v32;
          *(v28 + 304) = v33;
          *(v28 + 272) = v31;
          std::__tree<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__map_value_compare<webrtc::QualityLimitationReason,std::__value_type<webrtc::QualityLimitationReason,long long>,std::less<webrtc::QualityLimitationReason>,true>,std::allocator<std::__value_type<webrtc::QualityLimitationReason,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__tree_node<std::__value_type<webrtc::QualityLimitationReason,long long>,void *> *,long>>(v28 + 328, *(v29 + 328), (a2 + 336 + v21));
        }

        *(v28 + 352) = *(v29 + 352);
        v25 = *(v29 + 368);
        v26 = *(v29 + 384);
        v27 = *(v29 + 416);
        *(v28 + 400) = *(v29 + 400);
        *(v28 + 416) = v27;
        *(v28 + 368) = v25;
        *(v28 + 384) = v26;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v28 + 432, (v29 + 432));
        *(v28 + 464) = *(v29 + 464);
        v21 += 472;
      }

      while ((v29 + 472) != a3);
      v15 = a1[1];
      v8 += v21;
    }

    while (v15 != v8)
    {
      webrtc::VideoSenderInfo::~VideoSenderInfo((v15 - 472));
    }
  }

  else
  {
    v17 = std::ranges::__copy_n::__go[abi:sn200100]<webrtc::VideoSenderInfo *,long,webrtc::VideoSenderInfo *>(a2, v16, v8);
    v8 = a1[1];
    if (v17 != a3)
    {
      v18 = v17;
      v19 = a1[1];
      while (v19)
      {
        v20 = webrtc::VideoSenderInfo::VideoSenderInfo(v19, v18);
        v18 = (v18 + 472);
        v19 = (v20 + 472);
        v8 += 472;
        if (v18 == a3)
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

uint64_t std::ranges::__copy_n::__go[abi:sn200100]<webrtc::VideoSenderInfo *,long,webrtc::VideoSenderInfo *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a1;
  }

  v5 = 0;
  v6 = a1 + 472 * a2;
  do
  {
    v13 = a3 + v5;
    v14 = a1 + v5;
    webrtc::MediaSenderInfo::operator=(a3 + v5, a1 + v5);
    v15 = *(a1 + v5 + 208);
    *(v13 + 200) = *(a1 + v5 + 200);
    *(v13 + 208) = v15;
    if (a3 == a1)
    {
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v13 + 240, (v14 + 240));
      v16 = *(v14 + 272);
      v17 = *(v14 + 288);
      v18 = *(v14 + 304);
      *(v13 + 320) = *(v14 + 320);
      *(v13 + 288) = v17;
      *(v13 + 304) = v18;
      *(v13 + 272) = v16;
    }

    else
    {
      std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>((v13 + 216), *(v14 + 216), *(v14 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(v14 + 224) - *(v14 + 216)) >> 4));
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v13 + 240, (v14 + 240));
      v7 = *(v14 + 272);
      v8 = *(v14 + 288);
      v9 = *(v14 + 304);
      *(v13 + 320) = *(v14 + 320);
      *(v13 + 288) = v8;
      *(v13 + 304) = v9;
      *(v13 + 272) = v7;
      std::__tree<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__map_value_compare<webrtc::QualityLimitationReason,std::__value_type<webrtc::QualityLimitationReason,long long>,std::less<webrtc::QualityLimitationReason>,true>,std::allocator<std::__value_type<webrtc::QualityLimitationReason,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__tree_node<std::__value_type<webrtc::QualityLimitationReason,long long>,void *> *,long>>(v13 + 328, *(v14 + 328), (a1 + 336 + v5));
    }

    *(v13 + 352) = *(v14 + 352);
    v10 = *(v14 + 368);
    v11 = *(v14 + 384);
    v12 = *(v14 + 416);
    *(v13 + 400) = *(v14 + 400);
    *(v13 + 416) = v12;
    *(v13 + 368) = v10;
    *(v13 + 384) = v11;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v13 + 432, (v14 + 432));
    *(v13 + 464) = *(v14 + 464);
    v5 += 472;
  }

  while (v14 + 472 != v6);
  return v6;
}

std::string *webrtc::VideoSenderInfo::VideoSenderInfo(std::string *this, const webrtc::VideoSenderInfo *a2)
{
  v4 = webrtc::MediaSenderInfo::MediaSenderInfo(this, a2);
  *(v4 + 200) = *(a2 + 200);
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 216) = 0;
  v5 = *(a2 + 27);
  v6 = *(a2 + 28);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[10].__r_.__value_.__s.__data_[0] = 0;
  v7 = this + 10;
  this[11].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 264) == 1)
  {
    if (*(a2 + 263) < 0)
    {
      std::string::__init_copy_ctor_external(v7, *(a2 + 30), *(a2 + 31));
    }

    else
    {
      v8 = *(a2 + 15);
      this[10].__r_.__value_.__r.__words[2] = *(a2 + 32);
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    this[11].__r_.__value_.__s.__data_[0] = 1;
  }

  v9 = *(a2 + 17);
  v10 = *(a2 + 19);
  v11 = *(a2 + 40);
  *&this[12].__r_.__value_.__l.__data_ = *(a2 + 18);
  *&this[12].__r_.__value_.__r.__words[2] = v10;
  *&this[11].__r_.__value_.__r.__words[1] = v9;
  this[14].__r_.__value_.__r.__words[0] = 0;
  this[14].__r_.__value_.__l.__size_ = 0;
  this[13].__r_.__value_.__l.__size_ = v11;
  this[13].__r_.__value_.__r.__words[2] = &this[14];
  v12 = *(a2 + 41);
  if (v12 != (a2 + 336))
  {
    do
    {
      if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(&this[13].__r_.__value_.__r.__words[2], &this[14], &v22, &v21, v12 + 8))
      {
        operator new();
      }

      v13 = *(v12 + 1);
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
          v14 = *(v12 + 2);
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != (a2 + 336));
  }

  *&this[14].__r_.__value_.__r.__words[2] = *(a2 + 22);
  v16 = *(a2 + 23);
  v17 = *(a2 + 24);
  v18 = *(a2 + 26);
  *&this[16].__r_.__value_.__r.__words[2] = *(a2 + 25);
  *&this[17].__r_.__value_.__r.__words[1] = v18;
  *&this[15].__r_.__value_.__r.__words[1] = v16;
  *&this[16].__r_.__value_.__l.__data_ = v17;
  this[18].__r_.__value_.__s.__data_[0] = 0;
  this[19].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 456) == 1)
  {
    if (*(a2 + 455) < 0)
    {
      std::string::__init_copy_ctor_external(this + 18, *(a2 + 54), *(a2 + 55));
    }

    else
    {
      v19 = *(a2 + 27);
      this[18].__r_.__value_.__r.__words[2] = *(a2 + 56);
      *&this[18].__r_.__value_.__l.__data_ = v19;
    }

    this[19].__r_.__value_.__s.__data_[0] = 1;
  }

  LODWORD(this[19].__r_.__value_.__r.__words[1]) = *(a2 + 116);
  return this;
}

void std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4) < a4)
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
          v12 = *(v10 - 3);
          if (v12)
          {
            *(v10 - 2) = v12;
            operator delete(v12);
          }

          v13 = v10 - 6;
          if (*(v10 - 25) < 0)
          {
            operator delete(*v13);
          }

          v10 -= 6;
        }

        while (v13 != v8);
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

    if (a4 <= 0x555555555555555)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v31 = 2 * v30;
      if (2 * v30 <= a4)
      {
        v31 = a4;
      }

      if (v30 >= 0x2AAAAAAAAAAAAAALL)
      {
        v32 = 0x555555555555555;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0x555555555555555)
      {
        operator new();
      }
    }

    goto LABEL_76;
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        if (v5 != v8)
        {
          v26 = &v8[v23];
          v27 = &v5[v23];
          v28 = HIBYTE(v5[v23 + 2]);
          if (SHIBYTE(v8[v23 + 2]) < 0)
          {
            if (v28 >= 0)
            {
              v24 = &v5[v23];
            }

            else
            {
              v24 = v5[v23];
            }

            if (v28 >= 0)
            {
              v25 = HIBYTE(v5[v23 + 2]);
            }

            else
            {
              v25 = v5[v23 + 1];
            }

            std::string::__assign_no_alias<false>(v26, v24, v25);
          }

          else if ((HIBYTE(v5[v23 + 2]) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v26, v5[v23], v5[v23 + 1]);
          }

          else
          {
            v29 = *v27;
            v26->__r_.__value_.__r.__words[2] = v27[2];
            *&v26->__r_.__value_.__l.__data_ = v29;
          }

          std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&v8[v23 + 3], v5[v23 + 3], v5[v23 + 4], (v5[v23 + 4] - v5[v23 + 3]) >> 2);
        }

        v23 += 6;
      }

      while (&v5[v23] != a3);
      v14 = a1[1];
      v8 = (v8 + v23 * 8);
    }

    if (v14 != v8)
    {
      do
      {
        v41 = *(v14 - 3);
        if (v41)
        {
          *(v14 - 2) = v41;
          operator delete(v41);
        }

        v42 = v14 - 6;
        if (*(v14 - 25) < 0)
        {
          operator delete(*v42);
        }

        v14 -= 6;
      }

      while (v42 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v14 != v8)
    {
      v16 = 0;
      do
      {
        if (v5 != v8)
        {
          v19 = &v8[v16 / 8];
          v20 = &v5[v16 / 8];
          v21 = HIBYTE(v5[v16 / 8 + 2]);
          if (SHIBYTE(v8[v16 / 8 + 2]) < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v5[v16 / 8];
            }

            else
            {
              v17 = v5[v16 / 8];
            }

            if (v21 >= 0)
            {
              v18 = HIBYTE(v5[v16 / 8 + 2]);
            }

            else
            {
              v18 = v5[v16 / 8 + 1];
            }

            std::string::__assign_no_alias<false>(v19, v17, v18);
          }

          else if ((HIBYTE(v5[v16 / 8 + 2]) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v19, v5[v16 / 8], v5[v16 / 8 + 1]);
          }

          else
          {
            v22 = *v20;
            v19->__r_.__value_.__r.__words[2] = v20[2];
            *&v19->__r_.__value_.__l.__data_ = v22;
          }

          std::vector<int>::__assign_with_size[abi:sn200100]<int *,int *>(&v8[v16 / 8 + 3], v5[v16 / 8 + 3], v5[v16 / 8 + 4], (v5[v16 / 8 + 4] - v5[v16 / 8 + 3]) >> 2);
        }

        v16 += 48;
      }

      while (v15 != v16);
      v14 = a1[1];
      v5 = (v5 + v15);
    }

    v33 = v14;
    if (v5 != a3)
    {
      v34 = 0;
      while (1)
      {
        v35 = &v14[v34];
        if (!&v14[v34])
        {
          break;
        }

        v36 = &v5[v34];
        if (SHIBYTE(v5[v34 + 2]) < 0)
        {
          std::string::__init_copy_ctor_external(v35, v5[v34], v5[v34 + 1]);
        }

        else
        {
          v37 = *v36;
          v35->__r_.__value_.__r.__words[2] = v36[2];
          *&v35->__r_.__value_.__l.__data_ = v37;
        }

        v38 = &v14[v34];
        v38[3] = 0;
        v38[4] = 0;
        v38[5] = 0;
        v40 = v5[v34 + 3];
        v39 = v5[v34 + 4];
        if (v39 != v40)
        {
          if (v39 - v40 < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          operator new();
        }

        v34 += 6;
        if (&v5[v34] == a3)
        {
          v33 = &v14[v34];
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_76:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_74:
    a1[1] = v33;
  }
}

void std::__tree<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__map_value_compare<webrtc::QualityLimitationReason,std::__value_type<webrtc::QualityLimitationReason,long long>,std::less<webrtc::QualityLimitationReason>,true>,std::allocator<std::__value_type<webrtc::QualityLimitationReason,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__tree_node<std::__value_type<webrtc::QualityLimitationReason,long long>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
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
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
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
      v15 = *(v14 + 8);
      *(v9 + 8) = v15;
      v9[5] = v14[5];
      v16 = *v8;
      v17 = (a1 + 8);
      v18 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_22:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **a1;
      if (v19)
      {
        goto LABEL_23;
      }

LABEL_24:
      std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
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
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v21 = *a2 == v14;
          v14 = a2;
        }

        while (!v21);
      }

      if (v12)
      {
        v14 = a2;
        v9 = v12;
        if (a2 != a3)
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
        v17 = v16;
        if (v15 >= *(v16 + 8))
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_22;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **a1;
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a1 = v19;
    goto LABEL_24;
  }

  v12 = v9;
LABEL_13:
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    std::__tree<sigslot::_signal_base_interface *>::destroy(a1, v10);
  }

LABEL_17:
  if (a2 != a3)
  {
    operator new();
  }
}

void std::vector<webrtc::VideoReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoReceiverInfo*,webrtc::VideoReceiverInfo*>(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xAFD6A052BF5A814BLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      v10 = a1[1];
      v11 = v9;
      if (v10 != v9)
      {
        do
        {
          webrtc::VideoReceiverInfo::~VideoReceiverInfo((v10 - 792));
        }

        while (v10 != v9);
        v11 = *a1;
      }

      a1[1] = v9;
      operator delete(v11);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x52BF5A814AFD6ALL)
    {
      v12 = 0xAFD6A052BF5A814BLL * (v8 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x295FAD40A57EB5)
      {
        v14 = 0x52BF5A814AFD6ALL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x52BF5A814AFD6ALL)
      {
        operator new();
      }
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = a1[1];
  v16 = v15 - v9;
  if (0xAFD6A052BF5A814BLL * ((v15 - v9) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        webrtc::VideoReceiverInfo::operator=(v9, v6);
        v6 = (v6 + 792);
        v9 += 792;
      }

      while (v6 != a3);
      v15 = a1[1];
    }

    while (v15 != v9)
    {
      webrtc::VideoReceiverInfo::~VideoReceiverInfo((v15 - 792));
    }

    a1[1] = v9;
  }

  else
  {
    if (v15 != v9)
    {
      v17 = (a2 + v16);
      do
      {
        webrtc::VideoReceiverInfo::operator=(v9, v6);
        v6 = (v6 + 792);
        v9 += 792;
        v16 -= 792;
      }

      while (v16);
      v6 = v17;
    }

    std::vector<webrtc::VideoReceiverInfo>::__construct_at_end<webrtc::VideoReceiverInfo*,webrtc::VideoReceiverInfo*>(a1, v6, a3);
  }
}

void *std::vector<webrtc::VideoReceiverInfo>::__construct_at_end<webrtc::VideoReceiverInfo*,webrtc::VideoReceiverInfo*>(void *result, uint64_t a2, uint64_t a3)
{
  v10 = result;
  v3 = result[1];
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      if (!v3)
      {
        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      webrtc::MediaReceiverInfo::MediaReceiverInfo(v3, v5);
      *(v3 + 368) = 0;
      *(v3 + 376) = 0;
      *(v3 + 384) = 0;
      v6 = *(v5 + 368);
      v7 = *(v5 + 376);
      if (v7 != v6)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4) < 0x555555555555556)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      *(v3 + 392) = 0;
      *(v3 + 416) = 0;
      if (*(v5 + 416) == 1)
      {
        v8 = (v3 + 392);
        if (*(v5 + 415) < 0)
        {
          std::string::__init_copy_ctor_external(v8, *(v5 + 392), *(v5 + 400));
        }

        else
        {
          v9 = *(v5 + 392);
          *(v3 + 408) = *(v5 + 408);
          *&v8->__r_.__value_.__l.__data_ = v9;
        }

        *(v3 + 416) = 1;
      }

      result = memcpy((v3 + 424), (v5 + 424), 0x169uLL);
      v5 += 792;
      v3 += 792;
    }

    while (v5 != a3);
  }

  v10[1] = v3;
  return result;
}

uint64_t webrtc::VideoReceiverInfo::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v6;
  *a1 = v4;
  *(a1 + 16) = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 64) = v7;
  if (a1 == a2)
  {
    v12 = *(a2 + 38);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 152) = v12;
    v13 = a2[18];
    v15 = a2[15];
    v14 = a2[16];
    *(a1 + 272) = a2[17];
    *(a1 + 288) = v13;
    *(a1 + 240) = v15;
    *(a1 + 256) = v14;
    v17 = a2[20];
    v16 = a2[21];
    v18 = a2[19];
    *(a1 + 348) = *(a2 + 348);
    *(a1 + 320) = v17;
    *(a1 + 336) = v16;
    *(a1 + 304) = v18;
    v19 = a2[14];
    *(a1 + 208) = a2[13];
    *(a1 + 224) = v19;
  }

  else
  {
    v10 = *(a2 + 151);
    if (*(a1 + 151) < 0)
    {
      if (v10 >= 0)
      {
        v20 = (a2 + 8);
      }

      else
      {
        v20 = *(a2 + 16);
      }

      if (v10 >= 0)
      {
        v21 = *(a2 + 151);
      }

      else
      {
        v21 = *(a2 + 17);
      }

      std::string::__assign_no_alias<false>((a1 + 128), v20, v21);
    }

    else if ((*(a2 + 151) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 128), *(a2 + 16), *(a2 + 17));
    }

    else
    {
      v11 = a2[8];
      *(a1 + 144) = *(a2 + 18);
      *(a1 + 128) = v11;
    }

    v22 = *(a2 + 38);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 152) = v22;
    std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((a1 + 160), *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 4);
    std::vector<webrtc::SsrcSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::SsrcSenderInfo*,webrtc::SsrcSenderInfo*>((a1 + 184), *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 4);
    v23 = a2[14];
    *(a1 + 208) = a2[13];
    *(a1 + 224) = v23;
    v24 = a2[15];
    v25 = a2[16];
    v26 = a2[18];
    *(a1 + 272) = a2[17];
    *(a1 + 288) = v26;
    *(a1 + 240) = v24;
    *(a1 + 256) = v25;
    v27 = a2[19];
    v28 = a2[20];
    v29 = a2[21];
    *(a1 + 348) = *(a2 + 348);
    *(a1 + 320) = v28;
    *(a1 + 336) = v29;
    *(a1 + 304) = v27;
    std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>((a1 + 368), *(a2 + 46), *(a2 + 47), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 47) - *(a2 + 46)) >> 4));
  }

  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1 + 392, a2 + 392);
  memcpy((a1 + 424), a2 + 424, 0x169uLL);
  return a1;
}

void std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

void *std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::LegacyStatsCollector::ExtractSessionAndDataInfo(void)::$_0>(__int128 *a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 9);
  v1 = *(a1 + 10);
  LOBYTE(v109[0]) = 0;
  v111 = 0;
  if (*(a1 + 24) != 1)
  {
    LOBYTE(__p[0]) = 0;
    v108 = 0;
    if (*(a1 + 56) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    *__p = a1[2];
    v107 = *(a1 + 6);
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    *(a1 + 4) = 0;
    v108 = 1;
    v105 = a1;
    {
      goto LABEL_7;
    }

    goto LABEL_198;
  }

  v3 = *a1;
  v110 = *(a1 + 2);
  *v109 = v3;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v111 = 1;
  LOBYTE(__p[0]) = 0;
  v108 = 0;
  if (*(a1 + 56) == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v105 = a1;
  {
    goto LABEL_7;
  }

LABEL_198:
  {
    operator new();
  }

LABEL_7:
  v4 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v103 = v4[217];
  v4[217] = 0;
  v120 = 0;
  v121 = 0;
  memset(v118, 0, sizeof(v118));
  v104 = v4;
  v119 = &v120;
  (*(**(v2 + 64) + 584))(&v117);
  v9 = v118[0].__r_.__value_.__r.__words[0];
  if (v118[0].__r_.__value_.__r.__words[0])
  {
    size = v118[0].__r_.__value_.__l.__size_;
    v11 = v118[0].__r_.__value_.__r.__words[0];
    if (v118[0].__r_.__value_.__l.__size_ != v118[0].__r_.__value_.__r.__words[0])
    {
      do
      {
        webrtc::Candidate::~Candidate((size - 464));
      }

      while (size != v9);
      v11 = v118[0].__r_.__value_.__r.__words[0];
    }

    v118[0].__r_.__value_.__l.__size_ = v9;
    operator delete(v11);
  }

  v118[0] = v117;
  v13 = *v1;
  for (i = v1[1]; v13 != i; v13 += 8)
  {
    v14 = *(*(*v13 + 16) + 160);
    if (v14)
    {
      v15 = (*(*v14 + 88))(v14);
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_195;
      }

      if (v16 > 0x16)
      {
        operator new();
      }

      *(&v117.__r_.__value_.__s + 23) = v16;
      v17 = (&v117 + v16);
      if (&v117 <= v15 && v17 > v15)
      {
LABEL_194:
        __break(1u);
        webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/api/data_channel_interface.h", 142, "false", webrtc::webrtc_checks_impl::LogStreamer<>::Call<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v5, v6, v7, v8, "Unknown DataChannel state: ");
LABEL_195:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v16)
      {
        memmove(&v117, v15, v16);
      }

      v17->__r_.__value_.__s.__data_[0] = 0;
      v115 = (*(*v14 + 96))(v14);
      v19 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v119, v115);
      if (*(v19 + 79) < 0)
      {
        v20 = v19;
        operator delete(v19[7]);
        v19 = v20;
      }

      *(v19 + 7) = v117;
    }
  }

  if (v111)
  {
    if ((v108 & 1) == 0)
    {
      goto LABEL_194;
    }

    v117.__r_.__value_.__r.__words[0] = __p;
    v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v119, __p);
    v22 = (v21 + 7);
    if (v21 + 7 != v109)
    {
      if (*(v21 + 79) < 0)
      {
        if (v110 >= 0)
        {
          v23 = v109;
        }

        else
        {
          v23 = v109[0];
        }

        if (v110 >= 0)
        {
          v24 = HIBYTE(v110);
        }

        else
        {
          v24 = v109[1];
        }

        std::string::__assign_no_alias<false>(v22, v23, v24);
      }

      else if (v110 < 0)
      {
        std::string::__assign_no_alias<true>(v22, v109[0], v109[1]);
      }

      else
      {
        *&v22->__r_.__value_.__l.__data_ = *v109;
        v21[9] = v110;
      }
    }
  }

  v116[0] = 0;
  v116[1] = 0;
  v115 = v116;
  v25 = v119;
  if (v119 != &v120)
  {
    do
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v115, v25 + 7);
      v27 = v25[1];
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
        do
        {
          v28 = v25[2];
          v29 = *v28 == v25;
          v25 = v28;
        }

        while (!v29);
      }

      v25 = v28;
    }

    while (v28 != &v120);
  }

  (*(**(v2 + 64) + 592))(&v113);
  v26 = v113;
  if (v113 != v114)
  {
    while (1)
    {
      v30 = v118[1].__r_.__value_.__l.__size_;
      if (v118[1].__r_.__value_.__l.__size_ >= v118[1].__r_.__value_.__r.__words[2])
      {
        v31 = 0x2E8BA2E8BA2E8BA3 * ((v118[1].__r_.__value_.__l.__size_ - v118[1].__r_.__value_.__r.__words[0]) >> 3) + 1;
        if (v31 > 0x2E8BA2E8BA2E8BALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (0x5D1745D1745D1746 * ((v118[1].__r_.__value_.__r.__words[2] - v118[1].__r_.__value_.__r.__words[0]) >> 3) > v31)
        {
          v31 = 0x5D1745D1745D1746 * ((v118[1].__r_.__value_.__r.__words[2] - v118[1].__r_.__value_.__r.__words[0]) >> 3);
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((v118[1].__r_.__value_.__r.__words[2] - v118[1].__r_.__value_.__r.__words[0]) >> 3)) >= 0x1745D1745D1745DLL)
        {
          v32 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          if (v32 <= 0x2E8BA2E8BA2E8BALL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        goto LABEL_194;
      }

      if (!v118[1].__r_.__value_.__l.__size_)
      {
        goto LABEL_194;
      }

      if (*(v26 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v117, v26[4], v26[5]);
      }

      else
      {
        v117 = *(v26 + 4);
      }

      v33 = v26[7];
      *v122 = v26[8];
      *&v122[7] = *(v26 + 71);
      v34 = *(v26 + 79);
      v26[7] = 0;
      v26[8] = 0;
      v35 = v26[12];
      v36 = *(v26 + 5);
      v26[9] = 0;
      v26[10] = 0;
      v26[11] = 0;
      v26[12] = 0;
      v37 = v117.__r_.__value_.__r.__words[2];
      *v30 = *&v117.__r_.__value_.__l.__data_;
      *(v30 + 16) = v37;
      *(v30 + 24) = v33;
      *(v30 + 32) = *v122;
      *(v30 + 39) = *&v122[7];
      *(v30 + 47) = v34;
      *(v30 + 48) = v36;
      *(v30 + 64) = v35;
      *(v30 + 72) = 0;
      *(v30 + 80) = 0;
      v118[1].__r_.__value_.__l.__size_ = v30 + 88;
      if (v118[1].__r_.__value_.__r.__words[0] == v30 + 88)
      {
        goto LABEL_194;
      }

      v117.__r_.__value_.__r.__words[0] = 0;
      if ((*(**(v2 + 64) + 616))(*(v2 + 64), v30, &v117))
      {
        break;
      }

LABEL_84:
      (*(**(v2 + 64) + 624))(v122);
      if (*v122)
      {
        webrtc::SSLCertChain::GetStats(*v122, &v112);
        v44 = v112;
        v112 = 0;
        v45 = *(v30 + 80);
        *(v30 + 80) = v44;
        if (v45)
        {
          v46 = *(v45 + 72);
          *(v45 + 72) = 0;
          if (v46)
          {
            std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v45 + 72, v46);
          }

          if (*(v45 + 71) < 0)
          {
            operator delete(*(v45 + 48));
            if (*(v45 + 47) < 0)
            {
              goto LABEL_121;
            }

LABEL_90:
            if (*(v45 + 23) < 0)
            {
LABEL_122:
              operator delete(*v45);
            }
          }

          else
          {
            if ((*(v45 + 47) & 0x80000000) == 0)
            {
              goto LABEL_90;
            }

LABEL_121:
            operator delete(*(v45 + 24));
            if (*(v45 + 23) < 0)
            {
              goto LABEL_122;
            }
          }

          MEMORY[0x2743DA540](v45, 0x1032C40C3789C24);
        }

        v47 = v112;
        v112 = 0;
        if (v47)
        {
          v48 = *(v47 + 72);
          *(v47 + 72) = 0;
          if (v48)
          {
            std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v47 + 72, v48);
          }

          if (*(v47 + 71) < 0)
          {
            operator delete(*(v47 + 48));
            if (*(v47 + 47) < 0)
            {
              goto LABEL_124;
            }

LABEL_97:
            if (*(v47 + 23) < 0)
            {
LABEL_125:
              operator delete(*v47);
            }
          }

          else
          {
            if ((*(v47 + 47) & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

LABEL_124:
            operator delete(*(v47 + 24));
            if (*(v47 + 23) < 0)
            {
              goto LABEL_125;
            }
          }

          MEMORY[0x2743DA540](v47, 0x1032C40C3789C24);
        }

        v49 = *v122;
        *v122 = 0;
        if (v49)
        {
          v50 = *v49;
          if (*v49)
          {
            v51 = v49[1];
            v52 = *v49;
            if (v51 != v50)
            {
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
              v52 = *v49;
            }

            v49[1] = v50;
            operator delete(v52);
          }

          MEMORY[0x2743DA540](v49, 0x20C40960023A9);
        }
      }

      v55 = v117.__r_.__value_.__r.__words[0];
      if (v117.__r_.__value_.__r.__words[0] && atomic_fetch_add(v117.__r_.__value_.__l.__data_, 0xFFFFFFFF) == 1)
      {
        v56 = *(v55 + 8);
        *(v55 + 8) = 0;
        if (v56)
        {
          (*(*v56 + 8))(v56);
        }

        MEMORY[0x2743DA540](v55, 0x1020C40D5A9D86FLL);
      }

      v57 = v26[1];
      if (v57)
      {
        do
        {
          v58 = v57;
          v57 = *v57;
        }

        while (v57);
      }

      else
      {
        do
        {
          v58 = v26[2];
          v29 = *v58 == v26;
          v26 = v58;
        }

        while (!v29);
      }

      v26 = v58;
      if (v58 == v114)
      {
        goto LABEL_132;
      }
    }

    v38 = (*(**(v117.__r_.__value_.__r.__words[0] + 8) + 24))(*(v117.__r_.__value_.__r.__words[0] + 8));
    webrtc::SSLCertChain::GetStats(v38, v122);
    v39 = *v122;
    *v122 = 0;
    v40 = *(v30 + 72);
    *(v30 + 72) = v39;
    if (!v40)
    {
LABEL_77:
      v42 = *v122;
      *v122 = 0;
      if (!v42)
      {
        goto LABEL_84;
      }

      v43 = *(v42 + 72);
      *(v42 + 72) = 0;
      if (v43)
      {
        std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v42 + 72, v43);
      }

      if (*(v42 + 71) < 0)
      {
        operator delete(*(v42 + 48));
        if ((*(v42 + 47) & 0x80000000) == 0)
        {
LABEL_82:
          if ((*(v42 + 23) & 0x80000000) == 0)
          {
LABEL_83:
            MEMORY[0x2743DA540](v42, 0x1032C40C3789C24);
            goto LABEL_84;
          }

LABEL_131:
          operator delete(*v42);
          goto LABEL_83;
        }
      }

      else if ((*(v42 + 47) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

      operator delete(*(v42 + 24));
      if ((*(v42 + 23) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_131;
    }

    v41 = *(v40 + 72);
    *(v40 + 72) = 0;
    if (v41)
    {
      std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v40 + 72, v41);
    }

    if (*(v40 + 71) < 0)
    {
      operator delete(*(v40 + 48));
      if ((*(v40 + 47) & 0x80000000) == 0)
      {
LABEL_75:
        if ((*(v40 + 23) & 0x80000000) == 0)
        {
LABEL_76:
          MEMORY[0x2743DA540](v40, 0x1032C40C3789C24);
          goto LABEL_77;
        }

LABEL_128:
        operator delete(*v40);
        goto LABEL_76;
      }
    }

    else if ((*(v40 + 47) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    operator delete(*(v40 + 24));
    if ((*(v40 + 23) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_128;
  }

LABEL_132:
  std::__tree<std::__value_type<std::string,webrtc::TransportStats>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::TransportStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::TransportStats>>>::destroy(&v113, v114[0]);
  std::__tree<webrtc::SocketAddress>::destroy(&v115, v116[0]);
  v104[217] = v103;
  v59 = *(v105 + 8);
  v60 = *v59;
  if (*v59)
  {
    v61 = v59[1];
    v62 = *v59;
    if (v61 != v60)
    {
      do
      {
        webrtc::Candidate::~Candidate(v61 - 58);
      }

      while (v61 != v60);
      v62 = *v59;
    }

    v59[1] = v60;
    operator delete(v62);
    *v59 = 0;
    v59[1] = 0;
    v59[2] = 0;
  }

  *v59 = v118[0];
  memset(v118, 0, 24);
  v63 = (v59 + 3);
  v64 = v59[3];
  if (v64)
  {
    v65 = v59[4];
    v66 = v59[3];
    if (v65 != v64)
    {
      do
      {
        webrtc::LegacyStatsCollector::TransportStats::~TransportStats((v65 - 88));
      }

      while (v65 != v64);
      v66 = *v63;
    }

    v59[4] = v64;
    operator delete(v66);
    *v63 = 0;
    v59[4] = 0;
    v59[5] = 0;
  }

  v68 = v59[7];
  v67 = v59 + 7;
  *(v67 - 4) = v118[1];
  memset(&v118[1], 0, sizeof(std::string));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v67 - 1), v68);
  *(v67 - 1) = v119;
  v69 = v120;
  *v67 = v120;
  v70 = v121;
  v67[1] = v121;
  if (v70)
  {
    *(v69 + 16) = v67;
    v69 = 0;
    v119 = &v120;
    v120 = 0;
    v121 = 0;
  }

  else
  {
    *(v67 - 1) = v67;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v119, v69);
  data = v118[1].__r_.__value_.__l.__data_;
  if (v118[1].__r_.__value_.__r.__words[0])
  {
    v72 = v118[1].__r_.__value_.__l.__size_;
    v73 = v118[1].__r_.__value_.__l.__data_;
    if (v118[1].__r_.__value_.__l.__size_ != v118[1].__r_.__value_.__r.__words[0])
    {
      do
      {
        webrtc::LegacyStatsCollector::TransportStats::~TransportStats((v72 - 88));
      }

      while (v72 != data);
      v73 = v118[1].__r_.__value_.__l.__data_;
    }

    v118[1].__r_.__value_.__l.__size_ = data;
    operator delete(v73);
  }

  v74 = v118[0].__r_.__value_.__r.__words[0];
  if (v118[0].__r_.__value_.__r.__words[0])
  {
    v75 = v118[0].__r_.__value_.__l.__size_;
    v76 = v118[0].__r_.__value_.__r.__words[0];
    if (v118[0].__r_.__value_.__l.__size_ != v118[0].__r_.__value_.__r.__words[0])
    {
      do
      {
        webrtc::Candidate::~Candidate((v75 - 464));
      }

      while (v75 != v74);
      v76 = v118[0].__r_.__value_.__r.__words[0];
    }

    v118[0].__r_.__value_.__l.__size_ = v74;
    operator delete(v76);
  }

  if (v108 == 1 && SHIBYTE(v107) < 0)
  {
    operator delete(__p[0]);
  }

  if (v111 == 1 && SHIBYTE(v110) < 0)
  {
    operator delete(v109[0]);
  }

  v118[0].__r_.__value_.__r.__words[0] = v118;
  v118[0].__r_.__value_.__l.__size_ = v118;
  v118[0].__r_.__value_.__r.__words[2] = 0;
  {
    operator new();
  }

  v77 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v78 = v77[217];
  v77[217] = 0;
  (*(**(v2 + 64) + 568))(&v117);
  v79 = v117.__r_.__value_.__r.__words[0];
  if (v117.__r_.__value_.__r.__words[0] != v117.__r_.__value_.__l.__size_)
  {
    operator new();
  }

  if (v117.__r_.__value_.__r.__words[0])
  {
    v80 = v117.__r_.__value_.__l.__size_;
    v81 = v117.__r_.__value_.__r.__words[0];
    if (v117.__r_.__value_.__l.__size_ == v117.__r_.__value_.__r.__words[0])
    {
LABEL_174:
      v117.__r_.__value_.__l.__size_ = v79;
      operator delete(v81);
      goto LABEL_175;
    }

    while (1)
    {
      if (*(v80 - 33) < 0)
      {
        operator delete(*(v80 - 56));
        if (*(v80 - 57) < 0)
        {
LABEL_172:
          operator delete(*(v80 - 80));
        }
      }

      else if (*(v80 - 57) < 0)
      {
        goto LABEL_172;
      }

      v80 -= 88;
      if (v80 == v79)
      {
        v81 = v117.__r_.__value_.__r.__words[0];
        goto LABEL_174;
      }
    }
  }

LABEL_175:
  v77[217] = v78;
  v117.__r_.__value_.__r.__words[0] = &v117;
  *&v117.__r_.__value_.__r.__words[1] = &v117;
  v82 = v118[0].__r_.__value_.__r.__words[2];
  if (v118[0].__r_.__value_.__r.__words[2])
  {
    v83 = *&v118[0].__r_.__value_.__l.__data_;
    v84 = *(v118[0].__r_.__value_.__r.__words[0] + 8);
    v85 = *v118[0].__r_.__value_.__l.__size_;
    *(v85 + 8) = v84;
    *v84 = v85;
    v86 = v117.__r_.__value_.__r.__words[0];
    *(v117.__r_.__value_.__r.__words[0] + 8) = *(&v83 + 1);
    **(&v83 + 1) = v86;
    *(v83 + 8) = &v117;
    v117.__r_.__value_.__r.__words[0] = v83;
    v117.__r_.__value_.__r.__words[2] = v82;
    v118[0].__r_.__value_.__r.__words[2] = 0;
  }

  v87 = *(v105 + 11);
  if (v87->__r_.__value_.__r.__words[2])
  {
    v88 = v87->__r_.__value_.__l.__size_;
    v89 = *(v87->__r_.__value_.__r.__words[0] + 8);
    v90 = v88->__r_.__value_.__r.__words[0];
    *(v90 + 8) = v89;
    *v89 = v90;
    v87->__r_.__value_.__r.__words[2] = 0;
    if (v88 != v87)
    {
      do
      {
        v91 = v88->__r_.__value_.__l.__size_;
        operator delete(v88);
        v88 = v91;
      }

      while (v91 != v87);
    }
  }

  if (v87 == &v117)
  {
    goto LABEL_194;
  }

  v92 = v117.__r_.__value_.__r.__words[2];
  if (v117.__r_.__value_.__r.__words[2])
  {
    v93 = *&v117.__r_.__value_.__l.__data_;
    v94 = *(v117.__r_.__value_.__r.__words[0] + 8);
    v95 = *v117.__r_.__value_.__l.__size_;
    *(v95 + 8) = v94;
    *v94 = v95;
    v96 = v87->__r_.__value_.__r.__words[0];
    *(v96 + 8) = *(&v93 + 1);
    **(&v93 + 1) = v96;
    v87->__r_.__value_.__r.__words[0] = v93;
    *(v93 + 8) = v87;
    v87->__r_.__value_.__r.__words[2] += v92;
  }

  for (j = v118[0].__r_.__value_.__l.__size_; j != v118; j = j->__r_.__value_.__l.__size_)
  {
    v98 = j->__r_.__value_.__r.__words[2];
    if (v98)
    {
      std::__tree<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::__map_value_compare<webrtc::StatsReport::StatsValueName,std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::less<webrtc::StatsReport::StatsValueName>,true>,std::allocator<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>>>::destroy((v98 + 2), v98[3]);
      if (*v98)
      {
        (*(**v98 + 8))(*v98);
      }

      MEMORY[0x2743DA540](v98, 0x1020C40FF594A20);
    }
  }

  if (v118[0].__r_.__value_.__r.__words[2])
  {
    v99 = v118[0].__r_.__value_.__l.__size_;
    v100 = *(v118[0].__r_.__value_.__r.__words[0] + 8);
    v101 = *v118[0].__r_.__value_.__l.__size_;
    *(v101 + 8) = v100;
    *v100 = v101;
    v118[0].__r_.__value_.__r.__words[2] = 0;
    if (v99 != v118)
    {
      do
      {
        v102 = v99->__r_.__value_.__l.__size_;
        operator delete(v99);
        v99 = v102;
      }

      while (v102 != v118);
    }
  }
}

void std::__tree<std::__value_type<std::string,webrtc::TransportStats>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::TransportStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::TransportStats>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,webrtc::TransportStats>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::TransportStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::TransportStats>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,webrtc::TransportStats>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::TransportStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::TransportStats>>>::destroy(a1, *(a2 + 8));
    v4 = *(a2 + 80);
    if (v4)
    {
      v5 = *(a2 + 88);
      v6 = *(a2 + 80);
      if (v5 != v4)
      {
        do
        {
          webrtc::TransportChannelStats::~TransportChannelStats((v5 - 192));
        }

        while (v5 != v4);
        v6 = *(a2 + 80);
      }

      *(a2 + 88) = v4;
      operator delete(v6);
    }

    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_9:
        v7 = a2;

LABEL_11:
        operator delete(v7);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(*(a2 + 32));
    v7 = a2;

    goto LABEL_11;
  }
}

uint64_t ***webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::LegacyStatsCollector::ExtractBweInfo(void)::$_0>(uint64_t ***result)
{
  v1 = **result;
  v2 = (*result)[1];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *v1++;
      result = (*(*v4 + 224))(v4, v3[1]);
    }

    while (v1 != v2);
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::LegacyStatsCollector::ExtractMediaInfo(std::map<std::string,std::string> const&)::$_0>(uint64_t **a1)
{
  {
    operator new();
  }

  v3 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v26 = v3[217];
  v27 = v3;
  v3[217] = 0;
  v4 = **a1;
  v5 = (*a1)[1];
  if (v4 != v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*v4 + 16);
      if (v7[20])
      {
        if (v6 >= ((a1[1][1] - *a1[1]) >> 3))
        {
          goto LABEL_28;
        }

        ++v6;
        v8 = v7[7];
        v9 = v7[8];
        if (v9 != v8)
        {
          break;
        }
      }

      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_29:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_10:
  v10 = a1[1];
  v11 = *v10;
  if (*v10 != v10[1])
  {
    while (1)
    {
      while (((*(**v11 + 16))(*v11) & 1) != 0)
      {
        if (++v11 == a1[1][1])
        {
          goto LABEL_27;
        }
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x27B3;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/legacy_stats_collector.cc");
      }

      v19 = a1[1];
      v20 = v19[1];
      if (v20 == v11)
      {
        break;
      }

      v21 = v11 + 1;
      if (v11 + 1 == v20)
      {
        v22 = v11;
      }

      else
      {
        do
        {
          v23 = *(v21 - 1);
          *(v21 - 1) = *v21;
          *v21 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          ++v21;
        }

        while (v21 != v20);
        v20 = v19[1];
        v22 = v21 - 1;
      }

      while (v20 != v22)
      {
        v25 = *--v20;
        v24 = v25;
        *v20 = 0;
        if (v25)
        {
          (*(*v24 + 8))(v24);
        }
      }

      v19[1] = v22;
      if (v11 == a1[1][1])
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_27:
  v27[217] = v26;
}

uint64_t webrtc::StatsReport::AddString(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    goto LABEL_41;
  }

  v5 = a1 + 24;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == a1 + 24 || *(v5 + 32) > a2 || (v6 = *(v5 + 40)) == 0)
  {
LABEL_41:
    operator new();
  }

  v7 = *(v6 + 12);
  if (v7 == 4)
  {
    v17 = *(v6 + 16);
    if (v17)
    {
      v18 = strlen(*(v6 + 16));
      v19 = v18;
      v20 = *(a3 + 23);
      if ((v20 & 0x8000000000000000) != 0)
      {
        if (v18 == -1)
        {
          goto LABEL_44;
        }

        v21 = *a3;
        v20 = *(a3 + 8);
      }

      else
      {
        v21 = a3;
        if (v19 == -1)
        {
LABEL_44:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      if (v20 >= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v20;
      }

      result = memcmp(v21, v17, v22);
      if (result)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == v19;
      }

      if (!v23)
      {
        goto LABEL_41;
      }

      return result;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v7 != 3)
  {
    goto LABEL_41;
  }

  v8 = *(v6 + 16);
  v9 = *(a3 + 23);
  v10 = *(v8 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = v8;
    v8 = *v8;
    v10 = v11[1];
  }

  v12 = v9 >= 0 ? *(a3 + 23) : *(a3 + 8);
  v13 = v9 >= 0 ? a3 : *a3;
  v14 = v12 >= v10 ? v10 : v12;
  result = memcmp(v8, v13, v14);
  if (v12 != v10 || result != 0)
  {
    goto LABEL_41;
  }

  return result;
}

void *webrtc::scoped_refptr<webrtc::StatsReport::Value>::~scoped_refptr(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 + 8) - 1;
    *(v1 + 8) = v2;
    if (!v2)
    {
      v3 = *(v1 + 12);
      v4 = result;
      if (v3 == 6)
      {
        v5 = *(v1 + 16);
        if (!v5)
        {
LABEL_15:
          MEMORY[0x2743DA540](v1, 0x1072C40C6644164);
          return v4;
        }

        if (*v5)
        {
          (*(**v5 + 8))(*v5);
        }

        v6 = 0x20C4093837F09;
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 16);
        if (!v5)
        {
          goto LABEL_15;
        }

        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v6 = 0x1012C40EC159624;
      }

      MEMORY[0x2743DA540](v5, v6);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t webrtc::StatsReport::AddString(uint64_t result, int a2, char *__s)
{
  v4 = *(result + 24);
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = result + 24;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == result + 24)
  {
    goto LABEL_26;
  }

  if (*(v5 + 32) > a2)
  {
    goto LABEL_26;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = *(v6 + 12);
  if (v7 == 4)
  {
    if (*(v6 + 16) != __s)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v7 != 3)
    {
      goto LABEL_26;
    }

    if (!__s)
    {
      __break(1u);
      goto LABEL_29;
    }

    v8 = *(v6 + 16);
    v9 = strlen(__s);
    v10 = v9;
    v11 = *(v8 + 23);
    if ((v11 & 0x8000000000000000) != 0)
    {
      if (v9 == -1)
      {
        goto LABEL_29;
      }

      v12 = v8;
      v8 = *v8;
      v11 = v12[1];
    }

    else if (v9 == -1)
    {
LABEL_29:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v13 = v11 >= v9 ? v9 : v11;
    result = memcmp(v8, __s, v13);
    if (result || v11 != v10)
    {
LABEL_26:
      operator new();
    }
  }

  return result;
}

uint64_t webrtc::StatsReport::AddInt64(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = result + 24;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == result + 24)
  {
    goto LABEL_14;
  }

  if (*(v4 + 32) > a2)
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(v5 + 12);
  if (v6 == 1)
  {
    if (*(v5 + 16) == a3)
    {
      return result;
    }

LABEL_14:
    operator new();
  }

  if (v6 || *(v5 + 16) != a3)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t webrtc::StatsReport::AddInt(uint64_t result, int a2, int a3)
{
  v3 = *(result + 24);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = result + 24;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == result + 24)
  {
    goto LABEL_14;
  }

  if (*(v4 + 32) > a2)
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(v5 + 12);
  if (v6 == 1)
  {
    if (*(v5 + 16) == a3)
    {
      return result;
    }

LABEL_14:
    operator new();
  }

  if (v6 || *(v5 + 16) != a3)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t webrtc::StatsReport::AddFloat(uint64_t result, int a2, float a3)
{
  v3 = *(result + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = result + 24;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == result + 24 || *(v4 + 32) > a2 || (v5 = *(v4 + 40)) == 0 || *(v5 + 12) != 2 || *(v5 + 16) != a3)
  {
LABEL_11:
    operator new();
  }

  return result;
}

uint64_t webrtc::StatsReport::AddBoolean(uint64_t result, int a2, int a3)
{
  v3 = *(result + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = result + 24;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == result + 24 || *(v4 + 32) > a2 || (v5 = *(v4 + 40)) == 0 || *(v5 + 12) != 5 || *(v5 + 16) != a3)
  {
LABEL_11:
    operator new();
  }

  return result;
}

uint64_t webrtc::StatsReport::AddId(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = a1 + 24;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == a1 + 24 || *(v4 + 32) > a2 || (v5 = *(v4 + 40)) == 0 || *(v5 + 12) != 6 || (result = (*(***(v5 + 16) + 40))(**(v5 + 16), *a3), (result & 1) == 0))
  {
LABEL_11:
    operator new();
  }

  return result;
}

void webrtc::StatsCollection::~StatsCollection(webrtc::StatsCollection *this)
{
  for (i = *(this + 1); i != this; i = *(i + 1))
  {
    v3 = *(i + 2);
    if (v3)
    {
      std::__tree<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::__map_value_compare<webrtc::StatsReport::StatsValueName,std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::less<webrtc::StatsReport::StatsValueName>,true>,std::allocator<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>>>::destroy((v3 + 2), v3[3]);
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      MEMORY[0x2743DA540](v3, 0x1020C40FF594A20);
    }
  }

  if (*(this + 2))
  {
    v4 = *(this + 1);
    v5 = *(*this + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    *(this + 2) = 0;
    if (v4 != this)
    {
      do
      {
        v7 = *(v4 + 1);
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != this);
    }
  }
}

uint64_t webrtc::StatsCollection::FindOrAddNew(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 == a1)
  {
    goto LABEL_8;
  }

  while (((*(***(v4 + 16) + 40))(**(v4 + 16), *a2) & 1) == 0)
  {
    v4 = *(v4 + 8);
    if (v4 == a1)
    {
      goto LABEL_8;
    }
  }

  if (v4 == a1 || (v5 = *(v4 + 16)) == 0)
  {
LABEL_8:
    operator new();
  }

  return v5;
}

void webrtc::StatsCollection::ReplaceOrAddNew(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a1)
  {
    while (((*(***(v4 + 16) + 40))(**(v4 + 16), *a2) & 1) == 0)
    {
      v4 = *(v4 + 8);
      if (v4 == a1)
      {
        goto LABEL_7;
      }
    }

    if (v4 != a1)
    {
      operator new();
    }
  }

LABEL_7:
  operator new();
}

uint64_t webrtc::StatsCollection::MergeCollection(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v4 = result;
    v5 = *(v2 + 16);
    v6 = *(result + 8);
    if (v6 != result)
    {
      do
      {
        while (1)
        {
          result = (*(***(v6 + 16) + 40))(**(v6 + 16), *v5);
          if (result)
          {
            break;
          }

          v6 = *(v6 + 8);
          if (v6 == v4)
          {
            goto LABEL_3;
          }
        }

        if (v6 == v4)
        {
          break;
        }

        v7 = *(v6 + 16);
        if (v7)
        {
          std::__tree<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::__map_value_compare<webrtc::StatsReport::StatsValueName,std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::less<webrtc::StatsReport::StatsValueName>,true>,std::allocator<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>>>::destroy((v7 + 2), v7[3]);
          if (*v7)
          {
            (*(**v7 + 8))(*v7);
          }

          result = MEMORY[0x2743DA540](v7, 0x1020C40FF594A20);
        }

        *(v6 + 16) = v5;
        v2 = *(v2 + 8);
        if (v2 == a2)
        {
          return result;
        }

        v5 = *(v2 + 16);
        v6 = *(v4 + 8);
      }

      while (v6 != v4);
    }

LABEL_3:
    operator new();
  }

  return result;
}

void std::__tree<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::__map_value_compare<webrtc::StatsReport::StatsValueName,std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::less<webrtc::StatsReport::StatsValueName>,true>,std::allocator<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::__map_value_compare<webrtc::StatsReport::StatsValueName,std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::less<webrtc::StatsReport::StatsValueName>,true>,std::allocator<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::__map_value_compare<webrtc::StatsReport::StatsValueName,std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>,std::less<webrtc::StatsReport::StatsValueName>,true>,std::allocator<std::__value_type<webrtc::StatsReport::StatsValueName,webrtc::scoped_refptr<webrtc::StatsReport::Value>>>>::destroy(a1, a2[1]);
    webrtc::scoped_refptr<webrtc::StatsReport::Value>::~scoped_refptr(a2 + 5);

    operator delete(a2);
  }
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::BandwidthEstimationId>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 3, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::anonymous namespace::BandwidthEstimationId::ToString(char *a1@<X8>)
{
  a1[23] = 11;
  if (a1 <= "bweforvideo" && a1 + 11 > "bweforvideo")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "bweforvideo");
  }
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::TypedId>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::TypedId>::~RefCountedObject(uint64_t result)
{
  *result = &unk_288295298;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::TypedId>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288295298;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::TypedId::ToString(webrtc::_anonymous_namespace_::TypedId *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 >= 0xC)
  {
    goto LABEL_44;
  }

  v5 = off_279E93F80[v3];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_45;
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  *(&v21.__r_.__value_.__s + 23) = v6;
  v7 = &v21 + v6;
  if (&v21 <= v5 && v7 > v5)
  {
    goto LABEL_44;
  }

  if (v6)
  {
    memcpy(&v21, v5, v6);
  }

  *v7 = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v21.__r_.__value_.__l.__size_;
    v9 = (v21.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v21.__r_.__value_.__l.__size_ != v9)
    {
LABEL_17:
      v11 = v21.__r_.__value_.__r.__words[0];
      v21.__r_.__value_.__l.__size_ = size + 1;
      goto LABEL_19;
    }

LABEL_16:
    std::string::__grow_by(&v21, v9, 1uLL, v9, v9, 0, 0);
    size = v9;
    goto LABEL_17;
  }

  if (HIBYTE(v21.__r_.__value_.__r.__words[2]) == 22)
  {
    v9 = 22;
    goto LABEL_16;
  }

  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  *(&v21.__r_.__value_.__s + 23) = (*(&v21.__r_.__value_.__s + 23) + 1) & 0x7F;
  v11 = &v21;
LABEL_19:
  *(&v11->__r_.__value_.__l.__data_ + size) = 95;
  v22 = v21;
  memset(&v21, 0, sizeof(v21));
  v12 = *(this + 39);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = *(this + 2);
    v12 = *(this + 3);
    v14 = v12 == 0;
    if (v13 || !v12)
    {
      goto LABEL_23;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = this + 16;
  v14 = v12 == 0;
LABEL_23:
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v22.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v22.__r_.__value_.__l.__size_;
  }

  if (v15 - v16 < v12)
  {
    std::string::__grow_by_and_replace(&v22, v15, v16 + v12 - v15, v16, v16, 0, v12, v13);
    goto LABEL_42;
  }

  if (!v14)
  {
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v18 = v17 + v16;
      if (v17 + v16 > v13 || &v18[v12] <= v13)
      {
        v19 = v12;
        memmove(v18, v13, v12);
        v20 = v16 + v19;
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          v22.__r_.__value_.__l.__size_ = v16 + v19;
        }

        else
        {
          *(&v22.__r_.__value_.__s + 23) = v20 & 0x7F;
        }

        v17->__r_.__value_.__s.__data_[v20] = 0;
        goto LABEL_42;
      }
    }

    goto LABEL_44;
  }

LABEL_42:
  *a2 = v22;
  memset(&v22, 0, sizeof(v22));
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

BOOL webrtc::anonymous namespace::TypedId::Equals(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    return 0;
  }

  v2 = *(a2 + 39);
  if (v2 >= 0)
  {
    v3 = *(a2 + 39);
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = *(a1 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  v6 = (a2 + 16);
  v7 = v8;
  if (v2 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v12 = *(a1 + 16);
  v10 = (a1 + 16);
  v11 = v12;
  if (v5 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v9, v13, v3) == 0;
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::TypedIntId>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 4, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::anonymous namespace::TypedIntId::ToString(webrtc::_anonymous_namespace_::TypedIntId *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3 >= 0xC)
  {
    goto LABEL_52;
  }

  v5 = off_279E93F80[v3];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_53;
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  *(&v28.__r_.__value_.__s + 23) = v6;
  v8 = &v28 + v6;
  if (&v28 <= v5 && v8 > v5)
  {
    goto LABEL_52;
  }

  if (v6)
  {
    memcpy(&v28, v5, v6);
  }

  *v8 = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v28.__r_.__value_.__l.__size_;
    v10 = (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v28.__r_.__value_.__l.__size_ != v10)
    {
LABEL_17:
      v12 = v28.__r_.__value_.__r.__words[0];
      v28.__r_.__value_.__l.__size_ = size + 1;
      goto LABEL_19;
    }

LABEL_16:
    std::string::__grow_by(&v28, v10, 1uLL, v10, v10, 0, 0);
    size = v10;
    goto LABEL_17;
  }

  if (HIBYTE(v28.__r_.__value_.__r.__words[2]) == 22)
  {
    v10 = 22;
    goto LABEL_16;
  }

  size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  *(&v28.__r_.__value_.__s + 23) = (*(&v28.__r_.__value_.__s + 23) + 1) & 0x7F;
  v12 = &v28;
LABEL_19:
  *(&v12->__r_.__value_.__l.__data_ + size) = 95;
  v29 = v28;
  __len = 0;
  memset(&v28, 0, sizeof(v28));
  v13 = *(this + 3);
  __p = 0;
  v26 = 0;
  HIBYTE(__len) = 22;
  v14 = absl::numbers_internal::FastIntToBuffer(v13, &__p, v7);
  v15 = v14 - &__p;
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    if (v26 >= v15)
    {
      v26 = v14 - &__p;
      *(__p + v15) = 0;
      v16 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

LABEL_54:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v15 > SHIBYTE(__len))
  {
    goto LABEL_54;
  }

  HIBYTE(__len) = v14 - &__p;
  *v14 = 0;
  v16 = SHIBYTE(__len);
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
LABEL_25:
    p_p = __p;
    v16 = v26;
    v17 = v26 == 0;
    if (__p || !v26)
    {
      goto LABEL_27;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_22:
  v17 = v16 == 0;
  p_p = &__p;
LABEL_27:
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = 22;
  }

  else
  {
    v19 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v29.__r_.__value_.__l.__size_;
  }

  if (v19 - v20 < v16)
  {
    std::string::__grow_by_and_replace(&v29, v19, v20 + v16 - v19, v20, v20, 0, v16, p_p);
    goto LABEL_46;
  }

  if (v17)
  {
    goto LABEL_46;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v29;
  }

  else
  {
    v21 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v22 = v21 + v20;
  if (v21 + v20 <= p_p && &v22[v16] > p_p)
  {
    goto LABEL_52;
  }

  v23 = v16;
  memmove(v22, p_p, v16);
  v24 = v20 + v23;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    v29.__r_.__value_.__l.__size_ = v20 + v23;
  }

  else
  {
    *(&v29.__r_.__value_.__s + 23) = v24 & 0x7F;
  }

  v21->__r_.__value_.__s.__data_[v24] = 0;
LABEL_46:
  *a2 = v29;
  memset(&v29, 0, sizeof(v29));
  if ((SHIBYTE(__len) & 0x80000000) == 0 || (operator delete(__p), (SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0))
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::IdWithDirection>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 11, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::IdWithDirection>::~RefCountedObject(uint64_t result)
{
  *result = &unk_288295298;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::IdWithDirection>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288295298;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::IdWithDirection::ToString(webrtc::_anonymous_namespace_::IdWithDirection *this@<X0>, std::string *a2@<X8>)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    v4 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (size != v4)
    {
LABEL_6:
      v6 = a2->__r_.__value_.__r.__words[0];
      a2->__r_.__value_.__l.__size_ = size + 1;
      goto LABEL_8;
    }

LABEL_5:
    std::string::__grow_by(a2, v4, 1uLL, v4, v4, 0, 0);
    size = v4;
    goto LABEL_6;
  }

  if (*(&a2->__r_.__value_.__s + 23) == 22)
  {
    v4 = 22;
    goto LABEL_5;
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  *(&a2->__r_.__value_.__s + 23) = (*(&a2->__r_.__value_.__s + 23) + 1) & 0x7F;
  v6 = a2;
LABEL_8:
  *(&v6->__r_.__value_.__l.__data_ + size) = 95;
  if (*(this + 10))
  {
    v7 = "recv";
  }

  else
  {
    v7 = "send";
  }

  v8 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v8 >= 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v8 >= 0)
  {
    v10 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = a2->__r_.__value_.__l.__size_;
  }

  if (v9 - v10 >= 4)
  {
    if (v8 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2->__r_.__value_.__r.__words[0];
    }

    v12 = (v11 + v10);
    if (v11 + v10 <= v7 && v12 + 1 > v7)
    {
      __break(1u);
    }

    else
    {
      *v12 = *v7;
      v13 = v10 + 4;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v13;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v13 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v13] = 0;
    }
  }

  else
  {

    std::string::__grow_by_and_replace(a2, v9, v10 - v9 + 4, v10, v10, 0, 4uLL, v7);
  }
}

BOOL webrtc::anonymous namespace::IdWithDirection::Equals(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    return 0;
  }

  v2 = *(a2 + 39);
  if (v2 >= 0)
  {
    v3 = *(a2 + 39);
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = *(a1 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v5 >= 0)
  {
    v9 = (a1 + 16);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return !memcmp(v7, v9, v3) && *(a2 + 40) == *(a1 + 40);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::CandidateId>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 10, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::CandidateId>::~RefCountedObject(uint64_t result)
{
  *result = &unk_288295298;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::CandidateId>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_288295298;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::ComponentId>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 11, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::ComponentId>::~RefCountedObject(uint64_t result)
{
  *result = &unk_2882953F8;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::ComponentId>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_2882953F8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::anonymous namespace::ComponentId::Equals(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8) || *(a2 + 40) != *(a1 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 39);
  if (v2 >= 0)
  {
    v3 = *(a2 + 39);
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = *(a1 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  v6 = (a2 + 16);
  v7 = v8;
  if (v2 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v12 = *(a1 + 16);
  v10 = (a1 + 16);
  v11 = v12;
  if (v5 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v9, v13, v3) == 0;
}

void webrtc::anonymous namespace::ComponentId::ToString(std::string *this, const char *a2, const char *a3)
{
  if (!a3)
  {
    goto LABEL_62;
  }

  v6 = strlen(a3);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_63;
  }

  if (v6 > 0x16)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = v6;
  v8 = this + v6;
  if (this <= a3 && v8 > a3)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v6)
  {
    memcpy(this, a3, v6);
  }

  *v8 = 0;
  v10 = a2[39];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = *(a2 + 2);
    v10 = *(a2 + 3);
    v12 = v10 == 0;
    if (!v11 && v10)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v11 = a2 + 16;
    v12 = v10 == 0;
  }

  v13 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v13 < v10)
    {
      goto LABEL_18;
    }

LABEL_21:
    if (!v12)
    {
      v17 = this;
      if ((v13 & 0x80000000) != 0)
      {
        v17 = this->__r_.__value_.__r.__words[0];
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      v18 = v17 + size;
      if (v17 + size <= v11 && &v18[v10] > v11)
      {
        goto LABEL_62;
      }

      v19 = v10;
      memmove(v18, v11, v10);
      v16 = size + v19;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v16;
        v17->__r_.__value_.__s.__data_[v16] = 0;
        LODWORD(v16) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_34;
        }

LABEL_30:
        if (v16 != 22)
        {
          v16 = v16;
          *(&this->__r_.__value_.__s + 23) = (v16 + 1) & 0x7F;
          v21 = this;
          goto LABEL_37;
        }

        v20 = 22;
        goto LABEL_35;
      }

      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
      v17->__r_.__value_.__s.__data_[v16] = 0;
    }

    LODWORD(v16) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  size = this->__r_.__value_.__l.__size_;
  v14 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 - size >= v10)
  {
    goto LABEL_21;
  }

LABEL_18:
  std::string::__grow_by_and_replace(this, v14, v10 - v14 + size, size, size, 0, v10, v11);
  LODWORD(v16) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_34:
  v16 = this->__r_.__value_.__l.__size_;
  v20 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v16 == v20)
  {
LABEL_35:
    std::string::__grow_by(this, v20, 1uLL, v20, v20, 0, 0);
    v16 = v20;
  }

  v21 = this->__r_.__value_.__r.__words[0];
  this->__r_.__value_.__l.__size_ = v16 + 1;
LABEL_37:
  *(&v21->__r_.__value_.__l.__data_ + v16) = 45;
  v22 = *(a2 + 10);
  v36 = 0;
  __len = 0x1600000000000000;
  __src = 0;
  v23 = absl::numbers_internal::FastIntToBuffer(v22, &__src, v7);
  v24 = v23 - &__src;
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    if (v36 >= v24)
    {
      v36 = v23 - &__src;
      __src[v24] = 0;
      v25 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }

LABEL_64:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v24 > SHIBYTE(__len))
  {
    goto LABEL_64;
  }

  HIBYTE(__len) = v23 - &__src;
  *v23 = 0;
  v25 = SHIBYTE(__len);
  if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
  {
LABEL_40:
    v26 = v25 == 0;
    p_src = &__src;
    goto LABEL_45;
  }

LABEL_43:
  p_src = __src;
  v25 = v36;
  v26 = v36 == 0;
  if (!__src && v36)
  {
    goto LABEL_62;
  }

LABEL_45:
  v28 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = 22;
    v30 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v28 < v25)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v30 = this->__r_.__value_.__l.__size_;
  v29 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v29 - v30 >= v25)
  {
LABEL_50:
    if (v26)
    {
      goto LABEL_58;
    }

    v31 = this;
    if ((v28 & 0x80000000) != 0)
    {
      v31 = this->__r_.__value_.__r.__words[0];
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v32 = v31 + v30;
      if (v31 + v30 > p_src || &v32[v25] <= p_src)
      {
        v33 = v25;
        memmove(v32, p_src, v25);
        v34 = v30 + v33;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v34;
          v31->__r_.__value_.__s.__data_[v34] = 0;
          if ((SHIBYTE(__len) & 0x80000000) == 0)
          {
            return;
          }

LABEL_61:
          operator delete(__src);
          return;
        }

        *(&this->__r_.__value_.__s + 23) = v34 & 0x7F;
        v31->__r_.__value_.__s.__data_[v34] = 0;
LABEL_58:
        if ((SHIBYTE(__len) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_61;
      }
    }

    goto LABEL_62;
  }

LABEL_47:
  std::string::__grow_by_and_replace(this, v29, v25 - v29 + v30, v30, v30, 0, v25, p_src);
  if (SHIBYTE(__len) < 0)
  {
    goto LABEL_61;
  }
}

BOOL webrtc::RefCountedObject<webrtc::anonymous namespace::CandidatePairId>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

uint64_t webrtc::RefCountedObject<webrtc::anonymous namespace::CandidatePairId>::~RefCountedObject(uint64_t result)
{
  *result = &unk_2882953F8;
  if (*(result + 39) < 0)
  {
    v1 = result;
    operator delete(*(result + 16));
    return v1;
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::anonymous namespace::CandidatePairId>::~RefCountedObject(uint64_t a1)
{
  *a1 = &unk_2882953F8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::anonymous namespace::CandidatePairId::ToString(webrtc::_anonymous_namespace_::CandidatePairId *this@<X0>, std::string *a2@<X8>)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
    v5 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (size != v5)
    {
LABEL_6:
      v7 = a2->__r_.__value_.__r.__words[0];
      a2->__r_.__value_.__l.__size_ = size + 1;
      goto LABEL_8;
    }

LABEL_5:
    std::string::__grow_by(a2, v5, 1uLL, v5, v5, 0, 0);
    size = v5;
    goto LABEL_6;
  }

  if (*(&a2->__r_.__value_.__s + 23) == 22)
  {
    v5 = 22;
    goto LABEL_5;
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  *(&a2->__r_.__value_.__s + 23) = (*(&a2->__r_.__value_.__s + 23) + 1) & 0x7F;
  v7 = a2;
LABEL_8:
  *(&v7->__r_.__value_.__l.__data_ + size) = 45;
  v8 = *(this + 11);
  v22 = 0;
  __len = 0x1600000000000000;
  __src = 0;
  v9 = absl::numbers_internal::FastIntToBuffer(v8, &__src, v4);
  v10 = v9 - &__src;
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    if (v22 < v10)
    {
      goto LABEL_39;
    }

    v22 = v9 - &__src;
    __src[v10] = 0;
    v11 = SHIBYTE(__len);
    if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v10 > SHIBYTE(__len))
    {
      goto LABEL_39;
    }

    HIBYTE(__len) = v9 - &__src;
    *v9 = 0;
    v11 = SHIBYTE(__len);
    if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
    {
LABEL_11:
      v12 = v11 == 0;
      p_src = &__src;
      goto LABEL_16;
    }
  }

  p_src = __src;
  v11 = v22;
  v12 = v22 == 0;
  if (!__src && v22)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_16:
  v14 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v14 >= 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v14 >= 0)
  {
    v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = a2->__r_.__value_.__l.__size_;
  }

  if (v15 - v16 >= v11)
  {
    if (v12)
    {
      goto LABEL_34;
    }

    if (v14 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = a2->__r_.__value_.__r.__words[0];
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      v18 = v17 + v16;
      if (v17 + v16 > p_src || &v18[v11] <= p_src)
      {
        v19 = v11;
        memmove(v18, p_src, v11);
        v20 = v16 + v19;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v20;
          v17->__r_.__value_.__s.__data_[v20] = 0;
          if ((SHIBYTE(__len) & 0x80000000) == 0)
          {
            return;
          }

LABEL_37:
          operator delete(__src);
          return;
        }

        *(&a2->__r_.__value_.__s + 23) = v20 & 0x7F;
        v17->__r_.__value_.__s.__data_[v20] = 0;
LABEL_34:
        if ((SHIBYTE(__len) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_37;
      }
    }

    goto LABEL_38;
  }

  std::string::__grow_by_and_replace(a2, v15, v16 + v11 - v15, v16, v16, 0, v11, p_src);
  if (SHIBYTE(__len) < 0)
  {
    goto LABEL_37;
  }
}

BOOL webrtc::anonymous namespace::CandidatePairId::Equals(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8) || *(a2 + 40) != *(a1 + 40))
  {
    return 0;
  }

  v2 = *(a2 + 39);
  if (v2 >= 0)
  {
    v3 = *(a2 + 39);
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = *(a1 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if (v5 >= 0)
  {
    v9 = (a1 + 16);
  }

  else
  {
    v9 = *(a1 + 16);
  }

  return !memcmp(v7, v9, v3) && *(a2 + 44) == *(a1 + 44);
}

uint64_t WebRtcSpl_LevinsonDurbin(uint32x4_t *a1, _WORD *a2, _WORD *a3, unint64_t a4)
{
  v213[3] = *MEMORY[0x277D85DE8];
  v4 = (__clz(a1->i32[0] ^ (a1->i32[0] >> 31)) - 1);
  if (a1->i32[0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = a4 + 1;
  v7 = 1;
  if (a4 + 1 > 1)
  {
    v7 = a4 + 1;
  }

  if (v6 >= 4)
  {
    v9 = vdupq_n_s32(v5);
    if (v6 >= 0x10)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFF0;
      v10 = a1 + 2;
      v11 = &v212;
      v12 = &v210;
      v13 = v7 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v14 = v10[-2];
        v15 = v10[-1];
        v16 = *v10;
        v17 = v10[1];
        v10 += 4;
        v18 = vshlq_u32(v15, v9);
        v19 = vshlq_u32(v14, v9);
        v20 = vshlq_u32(v17, v9);
        v21 = vshlq_u32(v16, v9);
        v11[-1] = vuzp2q_s16(v19, v18);
        *v11 = vuzp2q_s16(v21, v20);
        v12[-1] = vshrq_n_u16(vuzp1q_s16(v19, v18), 1uLL);
        *v12 = vshrq_n_u16(vuzp1q_s16(v21, v20), 1uLL);
        v11 += 2;
        v12 += 2;
        v13 -= 16;
      }

      while (v13);
      if (v6 == v8)
      {
        goto LABEL_19;
      }

      if ((v7 & 0xC) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

    v22 = v8;
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = (a1 + 4 * v22);
    v24 = &v211[v22];
    v25 = &v209[v22];
    v26 = v22 - (v7 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v27 = *v23++;
      v28 = vshlq_u32(v27, v9);
      *v24++ = vshrn_n_s32(v28, 0x10uLL);
      *v25++ = vshr_n_u16(vmovn_s32(v28), 1uLL);
      v26 += 4;
    }

    while (v26);
    if (v6 == v8)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v8 = 0;
LABEL_17:
  v29 = v7 - v8;
  v30 = &v209[v8];
  v31 = &v211[v8];
  v32 = &a1->i32[v8];
  do
  {
    v33 = *v32++;
    *v31++ = (v33 << v5) >> 16;
    *v30++ = (v33 << v5) >> 1;
    --v29;
  }

  while (v29);
LABEL_19:
  v34 = a1->i32[1] << v5;
  if (v34 >= 0)
  {
    v35 = a1->i32[1] << v5;
  }

  else
  {
    v35 = -v34;
  }

  v36 = v211[0];
  v37 = v209[0];
  v188 = a4 + 1;
  if (v211[0])
  {
    v38 = 0x1FFFFFFF / v211[0];
    v39 = -2 * v211[0];
  }

  else
  {
    v39 = 0;
    v38 = -1;
  }

  v40 = v38 * v39 - 2 * ((v38 * v209[0]) >> 15) + 0x7FFFFFFF;
  v41 = (v40 >> 16) * v38 + (((v40 >> 1) * v38) >> 15);
  v42 = 8 * ((v41 >> 15) * HIWORD(v35) + (((v41 & 0x7FFF) * HIWORD(v35)) >> 15) + (((v41 >> 15) * (v35 >> 1)) >> 15));
  if (v34 <= 0)
  {
    v43 = v42;
  }

  else
  {
    v43 = -v42;
  }

  *a3 = HIWORD(v43);
  v192 = a3 - 1;
  v207 = v43 >> 20;
  v202 = ((v43 >> 4) - (v43 >> 20 << 16)) >> 1;
  v191 = a4 - 2;
  if (a4 >= 2)
  {
    v46 = 0;
    v47 = 2 * ((v43 >> 16) * (v43 >> 16) + ((((v43 >> 1) & 0x7FFC) * (v43 >> 16)) >> 14));
    if (v47 < 0)
    {
      v47 = -v47;
    }

    v48 = 2 * (((v47 ^ 0x7FFFFFFFu) >> 16) * v36 + ((((v47 ^ 0x7FFFFFFFu) >> 16) * v37) >> 15) + (((~v47 >> 1) * v36) >> 15));
    v49 = __clz(v48 ^ (v48 >> 31)) - 1;
    if (v48)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v51 = v48 << v50;
    v52 = &v199;
    v53 = &v204;
    v54 = &v200;
    v55 = &v205;
    v56 = &v203;
    v57 = &v208;
    v58 = 1;
    v59 = 2;
    do
    {
      v66 = v46 + 1;
      v67 = v46 + 3;
      if ((v46 + 3) <= 2)
      {
        v67 = 2;
      }

      if (v66 >= 4)
      {
        if (v66 < 0x10)
        {
          v68 = 0;
          v70 = 0;
LABEL_56:
          v69 = v66 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v96 = &v211[v70 + 1];
          v97 = v68;
          v98 = (v54 - 2 * v70);
          v99 = &v55[-v70];
          v100 = &v209[v70 + 1];
          v101 = v70 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v102 = *v96++;
            v103 = v102;
            v104 = *v99--;
            v105 = vrev64_s16(v104);
            v106 = vmull_s16(v105, v103);
            v107 = *v98--;
            v108 = vmull_s16(vrev64_s16(v107), v103);
            v109 = *v100++;
            v110 = vsraq_n_s32(vsraq_n_s32(v106, v108, 0xFuLL), vmull_s16(v109, v105), 0xFuLL);
            v97 = vaddq_s32(vaddq_s32(v110, v110), v97);
            v101 += 4;
          }

          while (v101);
          v68 = vaddvq_s32(v97);
          if (v66 == (v66 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_63;
          }

          goto LABEL_61;
        }

        v71 = v58 & 0xFFFFFFFFFFFFFFF0;
        v70 = v66 & 0xFFFFFFFFFFFFFFF0;
        v72 = 0uLL;
        v73 = v53;
        v74 = v52;
        v75 = 0uLL;
        v76 = (&v210 + 2);
        v77 = v213;
        v78 = 0uLL;
        v79 = 0uLL;
        do
        {
          v80 = *v77[-2].i8;
          v81 = vrev64q_s16(*v73);
          v82 = vextq_s8(v81, v81, 8uLL);
          v83 = vrev64q_s16(v73[-1]);
          v84 = vextq_s8(v83, v83, 8uLL);
          v85 = vrev64q_s16(*v74);
          v86 = vextq_s8(v85, v85, 8uLL);
          v87 = vrev64q_s16(v74[-1]);
          v88 = vextq_s8(v87, v87, 8uLL);
          v89 = vmull_s16(*v86.i8, *v80.i8);
          v90 = vmull_s16(*v88.i8, *v77);
          v91 = v76[-1];
          v92 = vsraq_n_s32(vmlal_high_s16(vshrq_n_s32(vmull_high_s16(v86, v80), 0xFuLL), v82, v80), vmull_high_s16(v91, v82), 0xFuLL);
          v93 = vsraq_n_s32(vsraq_n_s32(vmull_s16(*v82.i8, *v80.i8), v89, 0xFuLL), vmull_s16(*v91.i8, *v82.i8), 0xFuLL);
          v94 = vsraq_n_s32(vmlal_high_s16(vshrq_n_s32(vmull_high_s16(v88, *v77->i8), 0xFuLL), v84, *v77->i8), vmull_high_s16(*v76, v84), 0xFuLL);
          v95 = vsraq_n_s32(vsraq_n_s32(vmull_s16(*v84.i8, *v77), v90, 0xFuLL), vmull_s16(*v76->i8, *v84.i8), 0xFuLL);
          v75 = vaddq_s32(vaddq_s32(v92, v92), v75);
          v72 = vaddq_s32(vaddq_s32(v93, v93), v72);
          v79 = vaddq_s32(vaddq_s32(v94, v94), v79);
          v77 += 4;
          v78 = vaddq_s32(vaddq_s32(v95, v95), v78);
          v76 += 2;
          v74 -= 2;
          v73 -= 2;
          v71 -= 16;
        }

        while (v71);
        v68 = vaddvq_s32(vaddq_s32(vaddq_s32(v78, v72), vaddq_s32(v79, v75)));
        if (v66 == v70)
        {
          goto LABEL_63;
        }

        if ((v66 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        v69 = v70 | 1;
      }

      else
      {
        v68 = 0;
        v69 = 1;
      }

LABEL_61:
      v111 = &v209[v69];
      v112 = &v211[v69];
      v113 = v59;
      do
      {
        v114 = *v112++;
        v115 = *&v206[2 * v113 + -2 * v69];
        v116 = v115 * v114;
        v117 = *&v201[2 * v113 + -2 * v69] * v114;
        v118 = *v111++;
        v68 += 2 * (v116 + (v117 >> 15) + ((v118 * v115) >> 15));
        --v113;
      }

      while (v69 != v113);
LABEL_63:
      v119 = (v211[v59] << 16) + 16 * v68 + 2 * v209[v59];
      if (v119 >= 0)
      {
        v120 = v119;
      }

      else
      {
        v120 = -v119;
      }

      v121 = -2 * (v51 >> 16);
      if (v51 >= 0x10000)
      {
        v122 = 0x1FFFFFFF / (v51 >> 16);
      }

      else
      {
        v121 = 0;
        v122 = -1;
      }

      v123 = v51 >> 1;
      v124 = v122 * v121 - 2 * ((v122 * v123) >> 15) + 0x7FFFFFFF;
      v125 = (v124 >> 16) * v122 + (((v124 >> 1) * v122) >> 15);
      v126 = 8 * ((v125 >> 15) * HIWORD(v120) + (((v125 & 0x7FFF) * HIWORD(v120)) >> 15) + (((v125 >> 15) * (v120 >> 1)) >> 15));
      if (v119 <= 0)
      {
        v127 = v126;
      }

      else
      {
        v127 = -v126;
      }

      v128 = __clz(v127 ^ (v127 >> 31)) - 1;
      if (!v127)
      {
        v128 = 0;
      }

      if (v127 > 0)
      {
        v129 = 0x7FFFFFFF;
      }

      else
      {
        v129 = 0x80000000;
      }

      v130 = v50 <= v128 || v127 == 0;
      v131 = v127 << v50;
      if (v130)
      {
        v132 = v131;
      }

      else
      {
        v132 = v129;
      }

      v133 = v132 >> 16;
      v192[v59] = HIWORD(v132);
      if (v132 >> 16 >= 0)
      {
        v134 = v132 >> 16;
      }

      else
      {
        v134 = -v133;
      }

      if (v134 > 0x7FEE)
      {
        return 0;
      }

      v194 = v54;
      v195 = v46;
      v135 = v132 >> 1;
      v193 = v55;
      if (v66 >= 8)
      {
        v137 = 0;
        v138 = v58 & 0xFFFFFFFFFFFFFFF8;
        v136 = v66 & 0xFFFFFFFFFFFFFFF8 | 1;
        v139 = vdupq_n_s32(v133);
        v140 = vdupq_n_s32(v135);
        v141 = v197;
        v142 = v198;
        v143 = &v202;
        v144 = &v207;
        do
        {
          v145 = *v144++;
          v146 = v145;
          v147 = *v143++;
          v148 = vrev64q_s16(v53[v137 / 4]);
          v149 = vextq_s8(v148, v148, 8uLL);
          v150 = vmovl_high_s16(v149);
          v151 = vmovl_s16(*v149.i8);
          v152 = vrev64q_s16(*&v52[v137]);
          v153 = vextq_s8(v152, v152, 8uLL);
          v154 = vsraq_n_s32(vsraq_n_s32(vaddw_high_s16(vmulq_s32(v139, v150), v147), vmulq_s32(v140, v150), 0xFuLL), vmulq_s32(v139, vmovl_high_s16(v153)), 0xFuLL);
          v155 = vsraq_n_s32(vsraq_n_s32(vaddw_s16(vmulq_s32(v139, v151), *v147.i8), vmulq_s32(v140, v151), 0xFuLL), vmulq_s32(v139, vmovl_s16(*v153.i8)), 0xFuLL);
          *v150.i8 = vmovn_s32(v154);
          v156 = vaddq_s16(v146, vshrn_high_n_s32(vshrn_n_s32(v155, 0xFuLL), v154, 0xFuLL));
          *v155.i8 = vmovn_s32(v155);
          *v155.i8 = vadd_s16(*v155.i8, *v155.i8);
          v155.u64[1] = vadd_s16(*v150.i8, *v150.i8);
          *v142++ = v156;
          *v141++ = vshrq_n_u16(v155, 1uLL);
          v137 -= 4;
          v138 -= 8;
        }

        while (v138);
        if (v66 == (v66 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v136 = 1;
      }

      v157 = 0;
      v158 = v59 - v136;
      v159 = 2 * v136;
      v160 = &v196[v136];
      v161 = &v197[v159 + 40];
      v162 = (v56 - v159);
      v163 = &v57[v159 / 0xFFFFFFFFFFFFFFFELL];
      v164 = &v201[v159];
      v165 = &v206[v159];
      do
      {
        v167 = *v163--;
        v166 = v167;
        v168 = *v162--;
        v169 = *&v164[2 * v157] + v133 * v166 + ((v135 * v166) >> 15) + ((v133 * v168) >> 15);
        *&v161[2 * v157] = *&v165[2 * v157] + (v169 >> 15);
        *&v160[2 * v157++] = v169 & 0x7FFF;
      }

      while (v158 != v157);
LABEL_40:
      v60 = 2 * v67 - 2;
      *&v197[2 * v59 + 40] = v132 >> 20;
      v196[v59] = ((v132 >> 4) - (v132 >> 20 << 16)) >> 1;
      v61 = 2 * (v133 * v133 + ((v135 * v133) >> 14));
      if (((v133 * v133 + ((v135 * v133) >> 14)) & 0x40000000) != 0)
      {
        v61 = -2 * (v133 * v133 + ((v135 * v133) >> 14));
      }

      v62 = ((v61 ^ 0x7FFFFFFFu) >> 16) * (v51 >> 16) + ((((v61 ^ 0x7FFFFFFFu) >> 16) * v123) >> 15) + (((~v61 >> 1) * (v51 >> 16)) >> 15);
      v63 = __clz((2 * v62) ^ (v62 >> 30)) - 1;
      v64 = v56;
      if (v62)
      {
        v65 = v63;
      }

      else
      {
        v65 = 0;
      }

      v51 = (2 * v62) << v65;
      memcpy(&v207, v198, v60);
      memcpy(&v202, v197, v60);
      v50 += v65;
      ++v59;
      v46 = v195 + 1;
      ++v58;
      v52 = (v52 + 2);
      v53 = (v53 + 2);
      v54 = (v194 + 2);
      v55 = v193 + 1;
      v56 = (v64 + 2);
      ++v57;
    }

    while (v195 != v191);
  }

  *a2 = 4096;
  if (a4)
  {
    v44 = 2;
    if (v188 > 2)
    {
      v44 = v188;
    }

    if (v188 >= 9)
    {
      v171 = (v44 - 1) & 0xFFFFFFFFFFFFFFF8;
      v45 = v171 | 1;
      v172 = &v207;
      v173 = &v202;
      v174 = (a2 + 1);
      v175 = v171;
      do
      {
        v176 = *v172++;
        v177 = *v176.i8;
        v178 = vmovl_high_u16(v176);
        v179 = *v173++;
        *v174++ = vraddhn_high_s32(vraddhn_s32(vaddq_s32(vshll_n_s16(*v179.i8, 2uLL), vshlq_n_s32(vmovl_u16(v177), 0x11uLL)), 0), vaddq_s32(vshll_high_n_s16(v179, 2uLL), vshlq_n_s32(v178, 0x11uLL)), 0);
        v175 -= 8;
      }

      while (v175);
      if (v44 - 1 == v171)
      {
        return 1;
      }
    }

    else
    {
      v45 = 1;
    }

    v180 = v44 - v45;
    v181 = 2 * v45;
    v182 = &a2[v45];
    v183 = &v201[v181];
    v184 = &v206[v181];
    do
    {
      v186 = *v184++;
      v185 = v186;
      v187 = *v183++;
      *v182++ = ((v185 << 17) + 4 * v187 + 0x8000) >> 16;
      --v180;
    }

    while (v180);
  }

  return 1;
}

void webrtc::anonymous namespace::LibaomAv1Decoder::~LibaomAv1Decoder(webrtc::_anonymous_namespace_::LibaomAv1Decoder *this)
{
  v2 = *(this + 2);
  if (!v2 || !*(this + 7))
  {
    *(this + 6) = 1;
    if (!*(this + 13))
    {
      return;
    }

    goto LABEL_11;
  }

  (*(v2 + 32))();
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (*(this + 13))
  {
    v3 = *(this + 12);
    v4 = *(*(this + 11) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 13) = 0;
    if (v3 != (this + 88))
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != (this + 88));
    }
  }

  *(this + 64) = 0;
  if (*(this + 13))
  {
LABEL_11:
    v8 = *(this + 12);
    v9 = *(*(this + 11) + 8);
    v10 = *v8;
    *(v10 + 8) = v9;
    *v9 = v10;
    *(this + 13) = 0;
    if (v8 != (this + 88))
    {
      do
      {
        v12 = *(v8 + 1);
        v11 = *(v8 + 2);
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        operator delete(v8);
        v8 = v12;
      }

      while (v12 != (this + 88));
    }
  }
}

{
  v2 = *(this + 2);
  if (v2 && *(this + 7))
  {
    (*(v2 + 32))();
    *(this + 7) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 6) = 0;
    if (*(this + 13))
    {
      v3 = *(this + 12);
      v4 = *(*(this + 11) + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      *(this + 13) = 0;
      if (v3 != (this + 88))
      {
        do
        {
          v7 = *(v3 + 1);
          v6 = *(v3 + 2);
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }

          operator delete(v3);
          v3 = v7;
        }

        while (v7 != (this + 88));
      }
    }

    *(this + 64) = 0;
    if (!*(this + 13))
    {
LABEL_12:

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *(this + 6) = 1;
    if (!*(this + 13))
    {
      goto LABEL_12;
    }
  }

  v8 = *(this + 12);
  v9 = *(*(this + 11) + 8);
  v10 = *v8;
  *(v10 + 8) = v9;
  *v9 = v10;
  *(this + 13) = 0;
  if (v8 != (this + 88))
  {
    do
    {
      v12 = *(v8 + 1);
      v11 = *(v8 + 2);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      operator delete(v8);
      v8 = v12;
    }

    while (v12 != (this + 88));
  }

  goto LABEL_12;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Decoder::Configure(webrtc::_anonymous_namespace_::LibaomAv1Decoder *this, const webrtc::VideoDecoder::Settings *a2)
{
  v16 = 0;
  v15 = *(a2 + 4);
  v17 = 1;
  if (dword_2882ABB90 == 7)
  {
    if (byte_2882ABB98)
    {
      *(this + 7) = 0;
      *(this + 40) = 0u;
      *(this + 24) = 0u;
      *(this + 8) = 0u;
      *(this + 1) = aom_codec_av1_dx_algo;
      *(this + 2) = &aom_codec_av1_dx_algo;
      *(this + 5) = 0;
      *(this + 6) = &v15;
      *(this + 7) = 0;
      v11 = this;
      v12 = (off_2882ABBA0[0])(this + 1);
      if (!v12)
      {
        *(v11 + 6) = 0;
        result = 1;
        *(v11 + 64) = 1;
        return result;
      }

      v2 = v12;
      this = v11;
      v13 = *(v11 + 7);
      if (v13)
      {
        *(v11 + 4) = *v13;
        v14 = *(v11 + 2);
        if (v14)
        {
          (*(v14 + 32))(v13);
          this = v11;
          *(v11 + 7) = 0;
          *(v11 + 1) = 0;
          *(v11 + 2) = 0;
        }
      }

      else
      {
        *(v11 + 4) = 0;
      }
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = 3;
  }

  *(this + 6) = v2;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_decoder.cc");
  }

  return 0;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Decoder::Decode(webrtc::_anonymous_namespace_::LibaomAv1Decoder *this, const webrtc::EncodedImage *a2)
{
  v103 = *MEMORY[0x277D85DE8];
  if (*(this + 64) != 1 || !*(this + 16))
  {
    return 4294967289;
  }

  v4 = *(a2 + 17);
  if (v4)
  {
    v5 = (*(*v4 + 40))(v4);
    v6 = *(this + 2);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(this + 2);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v8 = *(this + 7);
  if (v8)
  {
    v9 = (*(v6 + 64))(v8, v5, *(a2 + 18), 0);
    *(this + 6) = v9;
    if (!v9)
    {
      v98 = 0;
      v97 = 0;
      while (1)
      {
        v17 = *(this + 2);
        if (!v17)
        {
          return 0;
        }

        result = *(this + 7);
        if (!result)
        {
          return result;
        }

        result = (*(v17 + 72))(result, &v97);
        if (!result)
        {
          return result;
        }

        v24 = result;
        if (aom_codec_control(this + 8, 257, v18, v19, v20, v21, v22, v23, &v98) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v65 = v65 & 0xFFFFFFFF00000000 | 0x3AA;
          webrtc::webrtc_logging_impl::Log("\r\t", v31, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_decoder.cc");
        }

        if (*v24 != 258)
        {
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
          {
            return 0xFFFFFFFFLL;
          }

LABEL_53:
          webrtc::webrtc_logging_impl::Log("\r\t", v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_decoder.cc");
          return 0xFFFFFFFFLL;
        }

        v96 = 0;
        if (aom_codec_control(this + 8, 269, v25, v26, v27, v28, v29, v30, &v96))
        {
          break;
        }

        webrtc::VideoFrameBufferPool::CreateI420Buffer((this + 72), *(v24 + 40), *(v24 + 44), &v95);
        v32 = v95;
        if (!v95)
        {
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_53;
        }

        v69 = *(v24 + 72);
        v70 = *(v24 + 64);
        v33 = *(v24 + 88);
        v68 = *(v24 + 92);
        v67 = *(v24 + 80);
        v66 = *(v24 + 96);
        v34 = (*(*v95 + 136))(v95);
        v35 = (*(*v32 + 112))(v32);
        v36 = (*(*v32 + 144))(v32);
        v37 = (*(*v32 + 120))(v32);
        v38 = (*(*v32 + 152))(v32);
        v39 = (*(*v32 + 128))(v32);
        I420Copy(v70, v33, v69, v68, v67, v66, v34, v35, v36, v37, v38, v39, *(v24 + 40), *(v24 + 44));
        (**v32)(v32);
        (**v32)(v32);
        v40 = *(a2 + 292);
        if (v40 == 1)
        {
          v41 = *(a2 + 224);
          v42 = *(a2 + 241);
          v99 = *(a2 + 225);
          v100 = v42;
          v43 = *(a2 + 273);
          v101 = *(a2 + 257);
          v102 = v43;
        }

        else
        {
          v41 = 0;
        }

        v44 = *(a2 + 38);
        v45 = *(a2 + 1);
        v71 = 0;
        v72 = v32;
        (**v32)(v32);
        v73 = v44;
        v75 = 0;
        v76 = 0;
        v74 = v45;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v86 = 0;
        if (v40)
        {
          v81 = v41;
          v82 = v99;
          v83 = v100;
          v84 = v101;
          v85 = v102;
          v86 = 1;
        }

        v87 = 0;
        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        (*(*v32 + 8))(v32);
        (*(*v32 + 8))(v32);
        (*(**(this + 16) + 32))(*(this + 16), &v71, 0, 0);
        v46 = v92;
        if (v92 && atomic_fetch_add(v92, 0xFFFFFFFF) == 1)
        {
          v47 = *(v46 + 1);
          if (v47)
          {
            v48 = *(v46 + 2);
            v49 = *(v46 + 1);
            if (v48 != v47)
            {
              do
              {
                v50 = *(v48 - 96);
                if (v50)
                {
                  *(v48 - 88) = v50;
                  operator delete(v50);
                }

                v48 -= 104;
              }

              while (v48 != v47);
              v49 = *(v46 + 1);
            }

            *(v46 + 2) = v47;
            operator delete(v49);
          }

          MEMORY[0x2743DA540](v46, 0x1020C40E72D6CFBLL);
        }

        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (v95)
        {
          (*(*v95 + 8))(v95);
        }
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v58, v59, v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_decoder.cc");
      }

      return 0xFFFFFFFFLL;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_15;
  }

LABEL_13:
  *(this + 6) = 1;
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    return 0xFFFFFFFFLL;
  }

LABEL_15:
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_decoder.cc");
  return 0xFFFFFFFFLL;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Decoder::Release(webrtc::_anonymous_namespace_::LibaomAv1Decoder *this)
{
  v2 = *(this + 2);
  if (v2 && *(this + 7))
  {
    (*(v2 + 32))();
    *(this + 7) = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 6) = 0;
    if (*(this + 13))
    {
      v3 = *(this + 12);
      v4 = *(*(this + 11) + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      *(this + 13) = 0;
      if (v3 != (this + 88))
      {
        do
        {
          v8 = *(v3 + 1);
          v7 = *(v3 + 2);
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }

          operator delete(v3);
          v3 = v8;
        }

        while (v8 != (this + 88));
      }
    }

    result = 0;
    *(this + 64) = 0;
  }

  else
  {
    *(this + 6) = 1;
    return 4294967293;
  }

  return result;
}

void webrtc::anonymous namespace::LibaomAv1Decoder::GetDecoderInfo(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = 6;
  *(a1 + 4) = 28015;
  *a1 = 1633839468;
  *(a1 + 24) = 0;
}

void webrtc::anonymous namespace::LibaomAv1Encoder::~LibaomAv1Encoder(webrtc::_anonymous_namespace_::LibaomAv1Encoder *this)
{
  v2 = *(this + 119);
  if (v2)
  {
    aom_img_free(v2);
    *(this + 119) = 0;
  }

  if (*(this + 76) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(this + 121);
  if (v3 && *(this + 126))
  {
    (*(v3 + 32))();
    *(this + 126) = 0;
    *(this + 120) = 0;
    *(this + 121) = 0;
    *(this + 244) = 0;
    *(this + 76) = 0;
LABEL_7:
    *(this + 77) = 0;
    goto LABEL_9;
  }

  *(this + 244) = 1;
LABEL_9:
  webrtc::EncoderInfoSettings::~EncoderInfoSettings((this + 1944));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 928, *(this + 117));
  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

{

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::LibaomAv1Encoder::InitEncode(uint64_t a1, void *__src, uint64_t a3)
{
  if (!__src)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 4294967292;
    }

LABEL_31:
    webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    return 4294967292;
  }

  if (*(a3 + 4) < 1)
  {
    return 4294967292;
  }

  if (*(a1 + 76) != 1)
  {
LABEL_13:
    memcpy((a1 + 544), __src, 0x17DuLL);
    if (!*(a1 + 548))
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
  }

  v13 = *(a1 + 952);
  if (v13)
  {
    aom_img_free(v13);
    *(a1 + 952) = 0;
  }

  if (*(a1 + 76) != 1)
  {
LABEL_12:
    *(a1 + 77) = 0;
    goto LABEL_13;
  }

  v14 = *(a1 + 968);
  if (v14 && *(a1 + 1008))
  {
    (*(v14 + 32))();
    *(a1 + 1008) = 0;
    *(a1 + 960) = 0;
    *(a1 + 968) = 0;
    *(a1 + 976) = 0;
    *(a1 + 76) = 0;
    goto LABEL_12;
  }

  *(a1 + 976) = 1;
  memcpy((a1 + 544), __src, 0x17DuLL);
  if (!*(a1 + 548))
  {
    goto LABEL_29;
  }

LABEL_14:
  if (!*(a1 + 550) || (v15 = *(a1 + 556), v16 = *(a1 + 560), v15) && v16 > v15 || (v17 = *(a1 + 552), v15) && v17 > v15 || v17 < v16 || !*(a1 + 564) || (*(a1 + 572) - 64) <= 0xFFFFFFC9)
  {
LABEL_29:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 4294967292;
    }

    goto LABEL_31;
  }

  if (*(a1 + 576) >= 2u)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    return 0;
  }

  v33 = *(a1 + 916);
  *(a1 + 16) = v33;
  if ((v33 & 0x100) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    LOBYTE(v33) = 0;
    *(a1 + 16) = 256;
  }

  webrtc::CreateScalabilityStructure(v33, v285);
  v41 = *v285;
  *v285 = 0;
  v42 = *(a1 + 8);
  *(a1 + 8) = v41;
  if (v42)
  {
    (*(*v42 + 8))(v42);
    v43 = *v285;
    *v285 = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v41 = *(a1 + 8);
  }

  if (!v41)
  {
    v52 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
    if ((v52 & 1) == 0)
    {
      if ((*(a1 + 17) & 1) == 0)
      {
        __break(1u);
        goto LABEL_85;
      }

      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v53, v54, v55, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
      return 4294967292;
    }

    return 4294967292;
  }

  aom_codec_enc_config_default(&aom_codec_av1_cx_algo, (a1 + 1016), 1);
  if (v44)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_67;
    }

    return 0xFFFFFFFFLL;
  }

  v60 = *(a1 + 548);
  *(a1 + 1028) = v60;
  v61 = *(a1 + 550);
  *(a1 + 1032) = v61;
  v62 = *(a3 + 4);
  v63 = v61 * v60;
  if (v63 <= 0xE1000 || v62 <= 8)
  {
    if (v63 >> 10 < 0xE1 || v62 <= 4)
    {
      v65 = v63 >> 8;
      if (v62 > 2 && v65 > 0xE0)
      {
        v64 = 2;
      }

      else
      {
        v64 = 1;
      }
    }

    else
    {
      v64 = 4;
    }
  }

  else
  {
    v64 = 8;
  }

  *(a1 + 1020) = v64;
  *(a1 + 1152) = *(a1 + 552);
  if (*(a1 + 924))
  {
    v67 = 30;
  }

  else
  {
    v67 = 0;
  }

  *(a1 + 1076) = v67;
  *(a1 + 1200) = 0;
  *(a1 + 1156) = 10;
  *(a1 + 1160) = *(a1 + 572);
  *(a1 + 1180) = 600;
  *(a1 + 1164) = xmmword_273B94A10;
  *(a1 + 1016) = 1;
  *(a1 + 1052) = xmmword_273B94A20;
  *(a1 + 1112) = 1;
  *(a1 + 1068) = 0;
  v68 = *(a1 + 952);
  if (v68)
  {
    aom_img_free(v68);
    *(a1 + 952) = 0;
  }

  if (!aom_codec_enc_init_ver(a1 + 960, &aom_codec_av1_cx_algo, a1 + 1016, 0, 29))
  {
    (*(**(a1 + 8) + 16))(v285);
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 76) = 1;
    {
      return 0xFFFFFFFFLL;
    }

    v52 = a1;
    if (*(__src + 81) == 1)
    {
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_86;
    }

LABEL_85:
    {
      return 0xFFFFFFFFLL;
    }

LABEL_86:
    {
      v168 = (*(a1 + 1032) * *(a1 + 1028) - 518400) >= 0x17BB00 || *(a1 + 1020) <= 3;
      v169 = v168 ? 2 : 0;
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_67:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
  }

  return 0xFFFFFFFFLL;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Encoder::Release(webrtc::_anonymous_namespace_::LibaomAv1Encoder *this)
{
  v2 = *(this + 119);
  if (v2)
  {
    aom_img_free(v2);
    *(this + 119) = 0;
  }

  if (*(this + 76) != 1)
  {
    goto LABEL_7;
  }

  v3 = *(this + 121);
  if (v3 && *(this + 126))
  {
    (*(v3 + 32))();
    *(this + 126) = 0;
    *(this + 120) = 0;
    *(this + 121) = 0;
    *(this + 244) = 0;
    *(this + 76) = 0;
LABEL_7:
    result = 0;
    *(this + 77) = 0;
    return result;
  }

  *(this + 244) = 1;
  return 4294967293;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Encoder::Encode(uint64_t a1, uint64_t a2, void *a3)
{
  v251[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 76) != 1 || !*(a1 + 1920) || *(a1 + 77) != 1)
  {
    return 4294967289;
  }

  if (a3)
  {
    v5 = *a3;
    v4 = a3[1];
    if (*a3 != v4)
    {
      v6 = *a3;
      do
      {
        if (*v6 == 3)
        {
          break;
        }

        ++v6;
        ++v5;
      }

      while (v6 != v4);
    }
  }

  (*(**(a1 + 8) + 40))(&v207);
  if (v207 == v208)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_270;
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    (**v8)(*(a2 + 8));
  }

  v251[0] = 0x800000001;
  v250 = 4;
  if (*(a1 + 536) == 1 && (v9 = *(a1 + 72), v9 + 1 != *(a1 + 80)))
  {
    v18 = a1 + 36 * v9;
    v19 = *(v18 + 688);
    v20 = *(v18 + 692);
    v21 = (*(*v8 + 40))(v8);
    v22 = (*(*v8 + 48))(v8);
    (*(*v8 + 72))(&__src, v8, 0, 0, v21, v22, v19, v20);
    v10 = __src;
  }

  else if (v8)
  {
    (**v8)(v8);
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if ((*(*v10 + 32))(v10))
  {
    (**v10)(v10);
    v23 = v10;
  }

  else
  {
    v24 = v251[0];
    if ((v250 & 1) == 0)
    {
      v24 = v251;
    }

    if (v250 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    (*(*v10 + 80))(&__src, v10, v25, v250 >> 1);
    v23 = __src;
    if (!__src)
    {
      goto LABEL_42;
    }
  }

  v26 = (*(*v23 + 32))(v23);
  v27 = v251[0];
  if ((v250 & 1) == 0)
  {
    v27 = v251;
  }

  v28 = v250 >> 1;
  if (v250 >= 2)
  {
    v30 = 4 * v28;
    v29 = v27;
    while (*v29 != v26)
    {
      v29 = (v29 + 4);
      v30 -= 4;
      if (!v30)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v29 = v27;
  }

  if (v29 != (v27 + 4 * v28))
  {
    goto LABEL_58;
  }

LABEL_41:
  if ((*(*v23 + 32))(v23) == 2)
  {
    goto LABEL_58;
  }

LABEL_42:
  (*(*v8 + 56))(&__src, v8);
  v31 = __src;
  if (__src)
  {
    if ((*(*__src + 32))(__src) != 1 && (*(*__src + 32))(__src) != 2)
    {
LABEL_287:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 678, "converted_buffer->type() == VideoFrameBuffer::Type::kI420 || converted_buffer->type() == VideoFrameBuffer::Type::kI420A", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v32, v33, v34, v35, v164);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v36 = __src;
    if (__src)
    {
      (**__src)(__src);
    }

    if (!v23)
    {
      v23 = v36;
      goto LABEL_55;
    }

    v37 = v23;
    v23 = v36;
  }

  else
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_55;
    }

    v37 = *(a2 + 8);
    if (v37)
    {
      (**v37)(*(a2 + 8));
    }

    v38 = (*(*v37 + 32))(v37);
    webrtc::VideoFrameBufferTypeToString(v38);
    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
  }

  (*(*v37 + 8))(v37);
LABEL_55:
  if (__src)
  {
    (*(*__src + 8))(__src);
  }

  if (!v31)
  {
    v139 = 4294967280;
    goto LABEL_264;
  }

LABEL_58:
  v46 = (*(*v23 + 32))(v23);
  if ((v46 - 1) >= 2)
  {
    if (v46 != 8)
    {
      v139 = 4294967280;
LABEL_265:
      (*(*v23 + 8))(v23);
      goto LABEL_266;
    }

    v62 = (*(*v23 + 40))(v23);
    v63 = (*(*v23 + 48))(v23);
    if ((*(*v23 + 32))(v23) == 8)
    {
      v68 = (*(*v23 + 40))(v23);
      v69 = *v23;
      if (v68 == *(*(a1 + 952) + 40))
      {
        v70 = (*(*v23 + 48))(v23);
        v71 = *v23;
        if (v70 == *(*(a1 + 952) + 44))
        {
          *(*(a1 + 952) + 64) = (*(*v23 + 128))(v23);
          v72 = (*(*v23 + 136))(v23);
          v73 = *(a1 + 952);
          *(v73 + 72) = v72;
          *(v73 + 80) = 0;
          *(*(a1 + 952) + 88) = (*(*v23 + 112))(v23);
          v74 = (*(*v23 + 120))(v23);
          v54 = 0;
          v61 = *(a1 + 952);
          *(v61 + 92) = v74;
          goto LABEL_67;
        }

        goto LABEL_286;
      }

LABEL_285:
      v154 = (*(v69 + 40))(v23);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 709, "nv12_buffer->width() == frame_for_encode_->d_w", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v155, v156, v157, v158, v154);
LABEL_286:
      v159 = (*(v71 + 48))(v23);
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 710, "nv12_buffer->height() == frame_for_encode_->d_h", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v160, v161, v162, v163, v159);
      goto LABEL_287;
    }

LABEL_284:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_frame_buffer.cc", 76, "type() == Type::kNV12", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v64, v65, v66, v67, v164);
    goto LABEL_285;
  }

  v47 = (*(*v23 + 40))(v23);
  v48 = (*(*v23 + 48))(v23);
  v49 = (*(*v23 + 64))(v23);
  v50 = (*(*v49 + 40))(v49);
  v51 = *v49;
  if (v50 != *(*(a1 + 952) + 40))
  {
    goto LABEL_282;
  }

  v52 = (*(*v49 + 48))(v49);
  v53 = *v49;
  if (v52 != *(*(a1 + 952) + 44))
  {
LABEL_283:
    v149 = (*(v53 + 48))(v49);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 692, "i420_buffer->height() == frame_for_encode_->d_h", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v150, v151, v152, v153, v149);
    goto LABEL_284;
  }

  *(*(a1 + 952) + 64) = (*(*v49 + 136))(v49);
  *(*(a1 + 952) + 72) = (*(*v49 + 144))(v49);
  *(*(a1 + 952) + 80) = (*(*v49 + 152))(v49);
  *(*(a1 + 952) + 88) = (*(*v49 + 112))(v49);
  *(*(a1 + 952) + 92) = (*(*v49 + 120))(v49);
  v54 = (*(*v49 + 128))(v49);
  v61 = *(a1 + 952);
LABEL_67:
  *(v61 + 96) = v54;
  v172 = (90000.0 / *(a1 + 1928));
  *(a1 + 1936) += v172;
  if ((*(a1 + 536) & 1) == 0)
  {
    v165 = v23;
    v166 = v10;
    v167 = v8;
    v75 = v207;
    v171 = 1;
    goto LABEL_71;
  }

  v171 = *(a1 + 80);
  if (v171)
  {
    v165 = v23;
    v166 = v10;
    v167 = v8;
    v75 = v207;
LABEL_71:
    v76 = 0;
    v23 = &v209;
    v173 = a1 + 960;
    v77 = 4294967280;
    while (1)
    {
      LOBYTE(v243) = 0;
      v249 = 0;
      if (v75 == v208)
      {
        v78 = v76;
      }

      else
      {
        v78 = v76;
        if (*(v75 + 2) == v76)
        {
          v49 = (v75 + 11);
          v78 = *(v75 + 2);
          goto LABEL_78;
        }
      }

      v243 = 0u;
      v248 = 0;
      v247 = 0u;
      v246 = 0u;
      v245 = 0u;
      v244 = 0u;
      v249 = 1;
      v49 = v75;
      v75 = &v243;
      DWORD2(v243) = v78;
LABEL_78:
      v170 = v49 == v208;
      if (*(a1 + 536) == 1)
      {
        *&__src = __PAIR64__(*(v75 + 3), v78);
        if (aom_codec_control(v173, 131, v55, v56, v57, v58, v59, v60, &__src) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v85, v79, v80, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
        }

        v225 = 0;
        memset(v224, 0, sizeof(v224));
        v222 = 0u;
        v223 = 0u;
        __src = 0u;
        v86 = v75[2];
        v87 = v86 >> 1;
        if (v86 > 0xF)
        {
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 527, "layer_frame.Buffers().size() <= (sizeof(::absl::macros_internal::ArraySizeHelper(kPreferedSlotName)))", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v81, v82, v83, v84, v87);
LABEL_280:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 532, "buffer.id < kAv1NumBuffers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v81, v82, v83, v84, v90);
LABEL_281:
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 531, "buffer.id >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v81, v82, v83, v84, v90);
LABEL_282:
          v144 = (*(v51 + 40))(v49);
          webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc", 691, "i420_buffer->width() == frame_for_encode_->d_w", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v145, v146, v147, v148, v144);
          goto LABEL_283;
        }

        if (v86 >= 2)
        {
          v88 = (v75 + 3);
          v89 = v75[3];
          if (v86)
          {
            v88 = v75[3];
          }

          v90 = *v88;
          if ((v90 & 0x80000000) != 0)
          {
            goto LABEL_281;
          }

          if (v90 >= 8)
          {
            goto LABEL_280;
          }

          HIDWORD(v222) = v90;
          v91 = v75 + 28;
          if (v86)
          {
            v91 = v89 + 4;
          }

          if (*v91 == 1)
          {
            LODWORD(__src) = 1;
          }

          v92 = v75 + 29;
          if (v86)
          {
            v92 = v89 + 5;
          }

          if (*v92 == 1)
          {
            v224[v90 + 2] = 1;
          }

          if (v87 != 1)
          {
            v93 = (v75 + 4);
            if (v86)
            {
              v93 = (v89 + 8);
            }

            v90 = *v93;
            if ((v90 & 0x80000000) != 0)
            {
              goto LABEL_281;
            }

            if (v90 > 7)
            {
              goto LABEL_280;
            }

            DWORD2(v223) = v90;
            v94 = v75 + 36;
            if (v86)
            {
              v94 = v89 + 12;
            }

            if (*v94 == 1)
            {
              HIDWORD(__src) = 1;
            }

            v95 = v75 + 37;
            if (v86)
            {
              v95 = v89 + 13;
            }

            if (*v95 == 1)
            {
              v224[v90 + 2] = 1;
            }

            if (v87 != 2)
            {
              v96 = (v75 + 5);
              if (v86)
              {
                v96 = (v89 + 16);
              }

              v90 = *v96;
              if ((v90 & 0x80000000) != 0)
              {
                goto LABEL_281;
              }

              if (v90 > 7)
              {
                goto LABEL_280;
              }

              LODWORD(v223) = v90;
              v97 = v75 + 44;
              if (v86)
              {
                v97 = v89 + 20;
              }

              if (*v97 == 1)
              {
                DWORD1(__src) = 1;
              }

              v98 = v75 + 45;
              if (v86)
              {
                v98 = v89 + 21;
              }

              if (*v98 == 1)
              {
                v224[v90 + 2] = 1;
              }

              if (v87 != 3)
              {
                v99 = (v75 + 6);
                if (v86)
                {
                  v99 = (v89 + 24);
                }

                v90 = *v99;
                if ((v90 & 0x80000000) != 0)
                {
                  goto LABEL_281;
                }

                if (v90 > 7)
                {
                  goto LABEL_280;
                }

                DWORD1(v223) = v90;
                v100 = v75 + 52;
                if (v86)
                {
                  v100 = v89 + 28;
                }

                if (*v100 == 1)
                {
                  DWORD2(__src) = 1;
                }

                v101 = v75 + 53;
                if (v86)
                {
                  v101 = v89 + 29;
                }

                if (*v101 == 1)
                {
                  v224[v90 + 2] = 1;
                }

                if (v87 != 4)
                {
                  v102 = (v75 + 7);
                  if (v86)
                  {
                    v102 = (v89 + 32);
                  }

                  v90 = *v102;
                  if ((v90 & 0x80000000) != 0)
                  {
                    goto LABEL_281;
                  }

                  if (v90 > 7)
                  {
                    goto LABEL_280;
                  }

                  HIDWORD(v223) = v90;
                  v103 = v75 + 60;
                  if (v86)
                  {
                    v103 = v89 + 36;
                  }

                  if (*v103 == 1)
                  {
                    LODWORD(v222) = 1;
                  }

                  v104 = v75 + 61;
                  if (v86)
                  {
                    v104 = v89 + 37;
                  }

                  if (*v104 == 1)
                  {
                    v224[v90 + 2] = 1;
                  }

                  if (v87 != 5)
                  {
                    v105 = (v75 + 8);
                    if (v86)
                    {
                      v105 = (v89 + 40);
                    }

                    v90 = *v105;
                    if ((v90 & 0x80000000) != 0)
                    {
                      goto LABEL_281;
                    }

                    if (v90 > 7)
                    {
                      goto LABEL_280;
                    }

                    v224[0] = v90;
                    v106 = v75 + 68;
                    if (v86)
                    {
                      v106 = v89 + 44;
                    }

                    if (*v106 == 1)
                    {
                      DWORD1(v222) = 1;
                    }

                    v107 = v75 + 69;
                    if (v86)
                    {
                      v107 = v89 + 45;
                    }

                    if (*v107 == 1)
                    {
                      v224[v90 + 2] = 1;
                    }

                    if (v87 != 6)
                    {
                      v108 = (v75 + 9);
                      if (v86)
                      {
                        v108 = (v89 + 48);
                      }

                      v90 = *v108;
                      if ((v90 & 0x80000000) != 0)
                      {
                        goto LABEL_281;
                      }

                      if (v90 > 7)
                      {
                        goto LABEL_280;
                      }

                      v224[1] = v90;
                      v109 = v75 + 76;
                      if (v86)
                      {
                        v109 = v89 + 52;
                      }

                      if (*v109 == 1)
                      {
                        DWORD2(v222) = 1;
                      }

                      v110 = v89 + 53;
                      if (v86)
                      {
                        v111 = v110;
                      }

                      else
                      {
                        v111 = v75 + 77;
                      }

                      if (*v111 == 1)
                      {
                        v224[v90 + 2] = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if (aom_codec_control(v173, 133, v79, v80, v81, v82, v83, v84, &__src) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v112, v113, v114, v115, v116, v117, v118, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
        }
      }

      v119 = *(a1 + 952);
      if (!v172 && v119)
      {
LABEL_180:
        *(a1 + 976) = 8;
        goto LABEL_186;
      }

      v120 = *(a1 + 968);
      if (!v120 || !*(a1 + 1008))
      {
        *(a1 + 976) = 1;
LABEL_186:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v169 = v169 & 0xFFFFFFFF00000000 | 0x17E2;
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v121, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
        }

        v77 = 0xFFFFFFFFLL;
        v122 = 1;
        if (v249 != 1)
        {
          goto LABEL_191;
        }

        goto LABEL_189;
      }

      if ((*(v120 + 16) & 2) == 0)
      {
        *(a1 + 976) = 4;
        goto LABEL_186;
      }

      if (v119 && (((*(a1 + 992) >> 18) ^ (*v119 >> 11)) & 1) != 0)
      {
        goto LABEL_180;
      }

      v123 = (*(v120 + 104))();
      *(a1 + 976) = v123;
      if (v123)
      {
        goto LABEL_186;
      }

      if ((v249 & 1) == 0)
      {
        v176 = 0;
        v175 = 0u;
        v177 = 4;
        v178 = 0;
        v179 = -1;
        v180 = -1;
        v186 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        LOBYTE(v192) = 0;
        v193 = 0;
        LOBYTE(v194) = 0;
        v195 = 0;
        v197[0] = 0;
        v197[1] = 0;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        LOBYTE(v185) = 0;
        v187 = 0;
        memset(v188, 0, 13);
        v196 = v197;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 1;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v174 = 0;
        cx_data = aom_codec_get_cx_data(v173, &v174);
        if (cx_data)
        {
          v125 = cx_data;
          do
          {
            if (!*v125 && *(v125 + 16))
            {
              operator new();
            }

            v125 = aom_codec_get_cx_data(v173, &v174);
          }

          while (v125);
        }

        if (v188[0])
        {
          LOBYTE(v227) = 0;
          v228 = 0;
          LOBYTE(v229) = 0;
          v239 = 0;
          v241 = 0;
          v242 = 0;
          bzero(&__src + 8, 0x658uLL);
          LODWORD(__src) = 3;
          v226 = v170;
          v240 = *(a1 + 16);
          v126 = *(v75 + 4);
          (*(**(a1 + 8) + 48))(&v209);
          if (v228 == 1)
          {
            webrtc::GenericFrameInfo::operator=(&v227, &v209);
          }

          else
          {
            webrtc::GenericFrameInfo::GenericFrameInfo(&v227, &v209);
            v228 = 1;
          }

          if (__p)
          {
            operator delete(__p);
          }

          if ((v218 & 1) == 0)
          {
            if ((BYTE8(v216) & 1) == 0)
            {
              goto LABEL_214;
            }

LABEL_219:
            operator delete(v217);
            if (v214)
            {
              goto LABEL_220;
            }

LABEL_215:
            if ((v210 & 1) == 0)
            {
              goto LABEL_216;
            }

LABEL_221:
            operator delete(v211);
            if (v126)
            {
              goto LABEL_222;
            }

LABEL_257:
            operator new();
          }

          operator delete(*(&v218 + 1));
          if (BYTE8(v216))
          {
            goto LABEL_219;
          }

LABEL_214:
          if ((v214 & 1) == 0)
          {
            goto LABEL_215;
          }

LABEL_220:
          operator delete(v215);
          if (v210)
          {
            goto LABEL_221;
          }

LABEL_216:
          if (!v126)
          {
            goto LABEL_257;
          }

LABEL_222:
          if (v228 != 1)
          {
            goto LABEL_257;
          }

          (*(**(a1 + 8) + 24))(&v209);
          if ((v239 & 1) == 0)
          {
            v229 = v209;
            v230 = v210;
            v231 = v211;
            v234 = v214;
            v232 = v212;
            v233 = v213;
            v235 = v215;
            v236[0] = v216;
            v236[1] = v217;
            v211 = 0;
            v215 = 0;
            v237 = v218;
            v238 = v219;
            v219 = 0;
            v218 = 0uLL;
            v239 = 1;
            goto LABEL_238;
          }

          webrtc::FrameDependencyStructure::operator=(&v229, &v209);
          v127 = v218;
          if (!v218)
          {
            goto LABEL_238;
          }

          v128 = *(&v218 + 1);
          v129 = v218;
          if (*(&v218 + 1) == v218)
          {
LABEL_237:
            *(&v218 + 1) = v127;
            operator delete(v129);
LABEL_238:
            if (v215)
            {
              operator delete(v216);
              if (v211)
              {
                goto LABEL_243;
              }

LABEL_240:
              if (v239)
              {
LABEL_244:
                if (*(a1 + 536) != 1)
                {
                  v209 = *(a1 + 1028);
                  absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::RenderResolution>,webrtc::RenderResolution const*>>(&v235, &v209, 1uLL);
                  goto LABEL_257;
                }

                v130 = *(a1 + 80);
                if ((v130 & 0x80000000) == 0)
                {
                  absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<webrtc::RenderResolution>>>(&v235, v130);
                  if (*(a1 + 536) == 1)
                  {
                    v131 = 0;
                    while (v131 < *(a1 + 80))
                    {
                      v132 = *(a1 + 24);
                      if (v131 < (*(a1 + 32) - v132) >> 2)
                      {
                        v133 = *(a1 + 48);
                        if (v131 < (*(a1 + 56) - v133) >> 2 && v131 < v235 >> 1)
                        {
                          v134 = *(v132 + 4 * v131);
                          v135 = *(v133 + 4 * v131);
                          v136 = (v134 * *(a1 + 550) / v135);
                          v137 = (v134 * *(a1 + 548) / v135);
                          v138 = *&v236[0];
                          if ((v235 & 1) == 0)
                          {
                            v138 = v236;
                          }

                          *(v138 + v131++) = v137 | (v136 << 32);
                          if (*(a1 + 536))
                          {
                            continue;
                          }
                        }
                      }

                      goto LABEL_278;
                    }

                    goto LABEL_257;
                  }
                }
              }
            }

            else
            {
              if ((v211 & 1) == 0)
              {
                goto LABEL_240;
              }

LABEL_243:
              operator delete(v212);
              if (v239)
              {
                goto LABEL_244;
              }
            }

LABEL_278:
            __break(1u);
          }

          while (2)
          {
            if (*(v128 - 24))
            {
              operator delete(*(v128 - 16));
              if (*(v128 - 48))
              {
                goto LABEL_233;
              }

LABEL_230:
              if (*(v128 - 96))
              {
LABEL_234:
                operator delete(*(v128 - 88));
              }
            }

            else
            {
              if ((*(v128 - 48) & 1) == 0)
              {
                goto LABEL_230;
              }

LABEL_233:
              operator delete(*(v128 - 40));
              if (*(v128 - 96))
              {
                goto LABEL_234;
              }
            }

            v128 -= 104;
            if (v128 == v127)
            {
              v129 = v218;
              goto LABEL_237;
            }

            continue;
          }
        }

        v122 = 0;
        webrtc::EncodedImage::~EncodedImage(&v175);
        if (v249 != 1)
        {
          goto LABEL_191;
        }

LABEL_189:
        if (v244)
        {
          operator delete(*(&v244 + 1));
        }

        goto LABEL_191;
      }

      v122 = 5;
      if (v249 == 1)
      {
        goto LABEL_189;
      }

LABEL_191:
      if (v122 != 5 && v122)
      {
        v139 = v77;
        v10 = v166;
        v8 = v167;
        v23 = v165;
        goto LABEL_264;
      }

      ++v76;
      v75 = v49;
      if (v76 == v171)
      {
        v139 = 0;
        v10 = v166;
        v8 = v167;
        v23 = v165;
        goto LABEL_264;
      }
    }
  }

  v139 = 0;
LABEL_264:
  if (v23)
  {
    goto LABEL_265;
  }

LABEL_266:
  (*(*v10 + 8))(v10);
  if (v250)
  {
    operator delete(v251[0]);
  }

  result = v139;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    result = v139;
  }

LABEL_270:
  v140 = v207;
  if (v207)
  {
    v141 = result;
    v142 = v208;
    v143 = v207;
    if (v208 != v207)
    {
      do
      {
        if (*(v142 - 9))
        {
          operator delete(*(v142 - 8));
        }

        v142 -= 11;
      }

      while (v142 != v140);
      v143 = v207;
    }

    v208 = v140;
    operator delete(v143);
    return v141;
  }

  return result;
}

void webrtc::anonymous namespace::LibaomAv1Encoder::SetRates(webrtc::_anonymous_namespace_::LibaomAv1Encoder *this, const webrtc::VideoEncoder::RateControlParameters *a2)
{
  if ((*(this + 76) & 1) == 0)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

    goto LABEL_11;
  }

  if (*(a2 + 43) < 1.0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\a\t\a", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    return;
  }

  v17 = (a2 + 176);
  if (!*(a2 + 44))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return;
    }

LABEL_11:
    webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    return;
  }

  (*(**(this + 1) + 32))(*(this + 1), a2 + 176);
  *(this + 288) = *v17 / 0x3E8u;
  if (*(this + 536) != 1)
  {
    goto LABEL_99;
  }

  v25 = (this + 80);
  v26 = *(this + 20);
  if (v26 <= 0)
  {
    v39 = v26 - 1;
    *(this + 18) = v26 - 1;
    goto LABEL_54;
  }

  v27 = 0;
  v28 = (this + 376);
  v29 = a2 + 180;
  v30 = *(this + 21);
  do
  {
    if (v30 >= 1)
    {
      if (v27 > 4)
      {
        goto LABEL_110;
      }

      v32 = v29[4];
      if (v32)
      {
        v28[(v30 * v27)] = *v29 / 0x3E8u;
        v30 = *(this + 21);
        if (v30 <= 1)
        {
          goto LABEL_16;
        }

        v33 = *v29;
      }

      else
      {
        v33 = 0;
        v28[(v30 * v27)] = 0;
        v30 = *(this + 21);
        if (v30 <= 1)
        {
          goto LABEL_16;
        }
      }

      v34 = v29[12];
      if (v34 == 1)
      {
        v35 = *(v29 + 2);
      }

      else
      {
        v35 = 0;
      }

      v28[(v30 * v27 + 1)] = (v35 + v33) / 0x3E8u;
      v30 = *(this + 21);
      if (v30 < 3)
      {
        goto LABEL_16;
      }

      if (v32)
      {
        v36 = *v29;
        if (!v34)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v36 = 0;
        if (!v34)
        {
LABEL_30:
          v37 = 0;
          v38 = v29[20];
          if (v38 != 1)
          {
LABEL_31:
            v19 = 0;
            goto LABEL_35;
          }

LABEL_34:
          v19 = *(v29 + 4);
LABEL_35:
          v28[(v30 * v27 + 2)] = (v19 + v37 + v36) / 0x3E8u;
          v30 = *(this + 21);
          if (v30 >= 4)
          {
            if (v32)
            {
              v32 = *v29;
              if (!v34)
              {
                goto LABEL_38;
              }
            }

            else if (!v34)
            {
LABEL_38:
              if (v38)
              {
                goto LABEL_39;
              }

              goto LABEL_43;
            }

            v34 = *(v29 + 2);
            if (v38)
            {
LABEL_39:
              v38 = *(v29 + 4);
              if (v29[28] != 1)
              {
                goto LABEL_44;
              }

              goto LABEL_14;
            }

LABEL_43:
            if (v29[28] != 1)
            {
LABEL_44:
              v31 = 0;
LABEL_15:
              v28[(v30 * v27 + 3)] = (v31 + v38 + v34 + v32) / 0x3E8u;
              v30 = *(this + 21);
              if (v30 > 4)
              {
                goto LABEL_111;
              }

              goto LABEL_16;
            }

LABEL_14:
            v31 = *(v29 + 6);
            goto LABEL_15;
          }

LABEL_16:
          v26 = *v25;
          goto LABEL_17;
        }
      }

      v37 = *(v29 + 2);
      v38 = v29[20];
      if (v38 != 1)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

LABEL_17:
    ++v27;
    v29 += 32;
  }

  while (v27 < v26);
  v39 = v26 - 1;
  *(this + 18) = v26 - 1;
  if (v26 >= 1)
  {
    v40 = *(this + 21);
    if (v40 >= 1)
    {
      for (i = 0; i != v26; ++i)
      {
        v42 = v28;
        v43 = v40;
        do
        {
          v44 = *v42++;
          if (v44 >= 1)
          {
            *(this + 18) = i;
            v39 = i;
          }

          --v43;
        }

        while (v43);
        v28 += v40;
      }
    }
  }

LABEL_54:
  v45 = *(this + 9 * v39 + 172);
  if (*(this + 257) == v45)
  {
    goto LABEL_96;
  }

  v46 = v39;
  *(this + 257) = v45;
  *(this + 258) = *(this + 9 * v39 + 173);
  if (v39 < 0)
  {
    LODWORD(v27) = v39 + 1;
LABEL_93:
    if (v27 < v26)
    {
      v56 = v27 + 86;
      v57 = (this + 4 * v27 + 360);
      do
      {
        *(v57 - 4) = 1;
        *v57++ = 1;
        v58 = v56 - 85;
        ++v56;
      }

      while (v58 < *v25);
    }

LABEL_96:
    if (aom_codec_control(this + 960, 132, v19, v20, v21, v22, v23, v24, this + 80) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v59, v60, v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

LABEL_99:
    v66 = *(this + 121);
    if (v66 && *(this + 126))
    {
      if ((*(v66 + 16) & 2) != 0)
      {
        v74 = (*(v66 + 120))();
        *(this + 244) = v74;
        if (!v74)
        {
LABEL_106:
          *(this + 241) = *(a2 + 43);
          *(this + 77) = 1;
          return;
        }
      }

      else
      {
        *(this + 244) = 4;
      }
    }

    else
    {
      *(this + 244) = 8;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v67, v68, v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    goto LABEL_106;
  }

  v47 = *(this + 3);
  v27 = *(this + 4);
  v48 = (v27 - v47) >> 2;
  if (v48 > v46)
  {
    v49 = 0;
    v27 = (v46 + 1);
    while (v49 != v48)
    {
      v50 = *(this + 6);
      v51 = (*(this + 7) - v50) >> 2;
      if (v51 <= v46 || v51 <= v49)
      {
        break;
      }

      v52 = *(v50 + 4 * v46) * *(v47 + 4 * v49);
      v53 = *(v47 + 4 * v46) * *(v50 + 4 * v49);
      if (v52 == 0x80000000)
      {
        v54 = 0;
      }

      else
      {
        v54 = -v52;
      }

      if (v52 >= 0)
      {
        LODWORD(v20) = v52;
      }

      else
      {
        LODWORD(v20) = v54;
      }

      if (v53 == 0x80000000)
      {
        v55 = 0;
      }

      else
      {
        v55 = -v53;
      }

      if (v53 >= 0)
      {
        v21 = v53;
      }

      else
      {
        v21 = v55;
      }

      if (v20 >= v21)
      {
        v19 = v21;
      }

      else
      {
        v19 = v20;
      }

      if (v20 <= v21)
      {
        v20 = v21;
      }

      else
      {
        v20 = v20;
      }

      if (v19)
      {
        v21 = v20 / v19;
        v20 = v20 % v19;
        if (v20)
        {
          LODWORD(v21) = v20 >> __clz(__rbit32(v20));
          LODWORD(v22) = v19;
          do
          {
            v23 = v22 >> __clz(__rbit32(v22));
            LODWORD(v22) = v23 - v21;
            v24 = (v21 - v23);
            if (v21 <= v23)
            {
              v22 = v22;
            }

            else
            {
              v22 = v24;
            }

            if (v21 >= v23)
            {
              v21 = v23;
            }

            else
            {
              v21 = v21;
            }
          }

          while (v22);
          v19 = (v21 << __clz(__rbit32(v20 | v19)));
        }
      }

      else
      {
        v19 = v20;
      }

      *(this + v49 + 86) = v52 / v19;
      *(this + v49++ + 90) = v53 / v19;
      if (v49 == v27)
      {
        goto LABEL_93;
      }
    }
  }

  __break(1u);
LABEL_110:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 85, "spatial_index < kMaxSpatialLayers", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v21, v22, v23, v24, v27);
LABEL_111:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/api/video/video_bitrate_allocation.cc", 86, "temporal_index < kMaxTemporalStreams", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v21, v22, v23, v24, 4);
}

uint64_t webrtc::anonymous namespace::LibaomAv1Encoder::GetEncoderInfo@<X0>(webrtc::_anonymous_namespace_::LibaomAv1Encoder *this@<X0>, uint64_t a2@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0x10000E100;
  *(a2 + 20) = 0;
  if (a2 + 24 <= "unknown" && a2 + 31 > "unknown")
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(a2 + 56) = 2;
  *(a2 + 31) = 0;
  *(a2 + 64) = -1;
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 0;
  *(a2 + 208) = 2;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 216) = 1;
  *(a2 + 240) = 0;
  *(a2 + 244) = 0;
  *(a2 + 248) = 0;
  *(a2 + 21) = 0;
  *(a2 + 47) = 6;
  strcpy((a2 + 24), "libaom");
  v20 = a2 + 56;
  *(a2 + 48) = 1;
  if (*(this + 76) == 1 && *(this + 900) != 1)
  {
    v3 = 0;
    v4 = 0xCD00000000;
  }

  else
  {
    v3 = 1;
    v4 = 0xCD00000091;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 12) = 57600;
  v21[0] = 0x800000001;
  absl::inlined_vector_internal::Storage<webrtc::VideoFrameBuffer::Type,5ul,std::allocator<webrtc::VideoFrameBuffer::Type>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::VideoFrameBuffer::Type>,webrtc::VideoFrameBuffer::Type const*>>((a2 + 208), v21, 2uLL);
  if (*(this + 536) == 1 && *(this + 20) >= 1)
  {
    v5 = 0;
    v6 = *(this + 21);
    do
    {
      if (v6 < 0)
      {
        goto LABEL_31;
      }

      v7 = (v20 + 24 * v5);
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];
        v10 = v7[2];
        v11 = v6;
        v12 = v8 >> 1;
        v13 = v6 - (v8 >> 1);
        if (v6 > v8 >> 1)
        {
LABEL_16:
          if (v10 < v11)
          {
            operator new();
          }

          if (!v9)
          {
            goto LABEL_31;
          }

          bzero(v9 + v12, v13);
          v8 = *v7;
        }
      }

      else
      {
        v9 = v7 + 1;
        v10 = 16;
        v11 = v6;
        v12 = v8 >> 1;
        v13 = v6 - (v8 >> 1);
        if (v6 > v8 >> 1)
        {
          goto LABEL_16;
        }
      }

      *v7 = v8 & 1 | (2 * v11);
      if (*(this + 536) != 1)
      {
        goto LABEL_31;
      }

      v14 = 0;
      while (v14 < *(this + 21))
      {
        if (v14 < *v7 >> 1)
        {
          v15 = v7 + 1;
          if (*v7)
          {
            v15 = v7[1];
          }

          *(v15 + v14) = 255 / *(this + v14 + 126);
          ++v14;
          if (*(this + 536))
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      ++v5;
      v6 = *(this + 21);
    }

    while (v5 < *(this + 20));
  }

  v16 = *(this + 261);
  v17 = *(this + 262);
  result = v17 - v16;
  if (v17 != v16)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a2 + 244) = 40;
  *(a2 + 248) = 1;
  return result;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Encoder::SetSvcParams(uint64_t result, int *a2, uint64_t a3)
{
  if (*a2 <= 1 && a2[1] <= 1)
  {
    if (*(result + 536) == 1)
    {
      *(result + 536) = 0;
      return 1;
    }

    return 1;
  }

  if ((*a2 - 5) <= 0xFFFFFFFB)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

LABEL_25:
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    return 0;
  }

  if ((a2[1] - 9) <= 0xFFFFFFF7)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 0;
    }

    goto LABEL_25;
  }

  *(result + 528) = 0;
  *(result + 496) = 0u;
  *(result + 512) = 0u;
  *(result + 464) = 0u;
  *(result + 480) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = 0u;
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 368) = 0u;
  *(result + 384) = 0u;
  *(result + 336) = 0u;
  *(result + 352) = 0u;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 536) = 1;
  LODWORD(v11) = a2[1];
  v12 = (v11 * *a2);
  *(result + 80) = *a2;
  *(result + 84) = v11;
  if (v12 >= 1)
  {
    if (v12 > 7 && (result + 88 >= (a3 + 148) || a3 + 140 >= (result + 4 * v12 + 216)))
    {
      v13 = v12 & 0x7FFFFFF8;
      v37 = (result + 232);
      v38 = v13;
      do
      {
        v39 = (a3 + 140);
        v40 = vld1q_dup_f32(v39);
        v37[-1] = v40;
        *v37 = v40;
        v41 = (a3 + 144);
        v42 = vld1q_dup_f32(v41);
        v37[-9] = v42;
        v37[-8] = v42;
        v37 += 2;
        v38 -= 8;
      }

      while (v38);
      if (v13 == v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 - v13;
    v15 = (result + 4 * v13 + 216);
    do
    {
      *v15 = *(a3 + 140);
      *(v15 - 32) = *(a3 + 144);
      ++v15;
      --v14;
    }

    while (v14);
LABEL_19:
    LODWORD(v11) = a2[1];
  }

  if (v11 >= 1)
  {
    v16 = 0;
    v17 = -1;
    do
    {
      *(result + 504 + 4 * v16++) = 1 << (v11 + v17);
      v11 = a2[1];
      --v17;
    }

    while (v16 < v11);
  }

  v18 = *(result + 48);
  v19 = *a2;
  v20 = v19;
  v21 = (*(result + 56) - v18) >> 2;
  v22 = *a2 - v21;
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      *(result + 56) = v18 + 4 * v19;
    }
  }

  else
  {
    v23 = result;
    std::vector<float>::__append((result + 48), v22);
    result = v23;
    v19 = *a2;
    v20 = *a2;
  }

  v24 = *(result + 24);
  v25 = (*(result + 32) - v24) >> 2;
  if (v20 <= v25)
  {
    if (v20 < v25)
    {
      *(result + 32) = v24 + 4 * v20;
    }
  }

  else
  {
    v26 = result;
    std::vector<float>::__append((result + 24), v20 - v25);
    result = v26;
    v19 = *a2;
  }

  if (v19 < 1)
  {
    return 1;
  }

  v27 = 0;
  v28 = *(result + 24);
  v29 = (*(result + 32) - v28) >> 2;
  v30 = a2 + 7;
  v31 = 688;
  while (v29 != v27)
  {
    v32 = *(v30 - 4);
    *(v28 + 4 * v27) = v32;
    v33 = result + 4 * v27;
    *(v33 + 344) = v32;
    v34 = *(result + 48);
    if (v27 >= (*(result + 56) - v34) >> 2)
    {
      break;
    }

    v35 = *v30++;
    *(v34 + 4 * v27) = v35;
    *(v33 + 360) = v35;
    v36 = (result + v31);
    *v36 = *(v28 + 4 * v27) * *(result + 548) / *(v34 + 4 * v27);
    v36[1] = *(v28 + 4 * v27) * *(result + 550) / *(v34 + 4 * v27);
    ++v27;
    v31 += 36;
    if (v27 >= *a2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

BOOL webrtc::anonymous namespace::LibaomAv1Encoder::SetEncoderControlParameters<int>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = aom_codec_control(a1 + 960, a2, a3, a4, a5, a6, a7, a8, a3);
  if (v8 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
  }

  return v8 == 0;
}

uint64_t webrtc::anonymous namespace::LibaomAv1Encoder::GetCpuSpeed(webrtc::_anonymous_namespace_::LibaomAv1Encoder *this, int a2, int a3)
{
  if (*(this + 118))
  {
    v3 = *(this + 117);
    if (!v3)
    {
      return 10;
    }

    v4 = a3 * a2;
    v5 = (this + 936);
    do
    {
      if (v3[7] >= v4)
      {
        v5 = v3;
      }

      v3 = *&v3[2 * (v3[7] < v4)];
    }

    while (v3);
    if (v5 == (this + 936))
    {
      return 10;
    }

    else
    {
      return v5[8];
    }
  }

  else if (*(this + 217) == 1)
  {
    return 11;
  }

  else
  {
    v7 = *(this + 230);
    if (v7 == 3)
    {
      v15 = a3 * a2;
      if ((a3 * a2) <= 0xE1000)
      {
        v16 = 8;
      }

      else
      {
        v16 = 9;
      }

      if (v15 >= 0x38401)
      {
        v17 = v16;
      }

      else
      {
        v17 = 7;
      }

      if (v15 >= 57601)
      {
        return v17;
      }

      else
      {
        return 6;
      }
    }

    else
    {
      v8 = a3 * a2;
      if ((a3 * a2) <= 0xE1000)
      {
        v9 = 9;
      }

      else
      {
        v9 = 10;
      }

      if (v8 >= 0x38401)
      {
        v10 = v9;
      }

      else
      {
        v10 = 8;
      }

      if (v8 >= 57601)
      {
        v11 = v10;
      }

      else
      {
        v11 = 7;
      }

      if (v8 < 0x38401)
      {
        v12 = 9;
      }

      else
      {
        v12 = 10;
      }

      if (v8 >= 57601)
      {
        v13 = v12;
      }

      else
      {
        v13 = 8;
      }

      if (v7 == 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 10;
      }

      if (v7 == 2)
      {
        return v11;
      }

      else
      {
        return v14;
      }
    }
  }
}

BOOL webrtc::anonymous namespace::LibaomAv1Encoder::SetEncoderControlParameters<aom_tune_content>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = aom_codec_control(a1 + 960, 43, a3, a4, a5, a6, a7, a8, 1);
  if (v8 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
  }

  return v8 == 0;
}

BOOL webrtc::anonymous namespace::LibaomAv1Encoder::SetEncoderControlParameters<aom_superblock_size>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = aom_codec_control(a1 + 960, 56, a3, a4, a5, a6, a7, a8, a2);
  if (v8 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
  }

  return v8 == 0;
}

uint64_t webrtc::VideoFrameBuffer::Scale(webrtc::VideoFrameBuffer *this, uint64_t a2, uint64_t a3)
{
  v6 = (*(*this + 40))(this);
  v7 = (*(*this + 48))(this);
  v8 = *(*this + 72);

  return v8(this, 0, 0, v6, v7, a2, a3);
}

void *webrtc::anonymous namespace::LibaomAv1Encoder::MaybeRewrapImgWithFormat(void *result, int a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = result[119];
  if (!v8)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    goto LABEL_10;
  }

  if (*v8 != a2 || v8[10] != a3 || v8[11] != a4)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/codecs/av1/libaom_av1_encoder.cc");
    }

    aom_img_free(v7[119]);
LABEL_10:
    result = img_alloc_helper_0(0, a2, a3, a4, 1u, 1u, 1u, 0, 0, 0, 0);
    v7[119] = result;
  }

  return result;
}

__n128 std::optional<webrtc::FrameDependencyStructure>::operator=[abi:sn200100]<webrtc::FrameDependencyStructure,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == 1)
  {
    webrtc::FrameDependencyStructure::operator=(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v3;
    *(a1 + 16) = 0;
    *(a1 + 16) = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 24) = v4;
    *(a2 + 16) = 0;
    *(a1 + 64) = 0;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
    *(a2 + 64) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    result = *(a2 + 104);
    *(a1 + 104) = result;
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a1 + 128) = 1;
  }

  return result;
}

unint64_t *webrtc::GenericFrameInfo::operator=(unint64_t *a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = a2 + 16;
    }

    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(a1 + 1, v5, v4 >> 1);
    v6 = *(a2 + 56);
    if (v6)
    {
      v7 = *(a2 + 64);
    }

    else
    {
      v7 = a2 + 64;
    }

    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(a1 + 7, v7, v6 >> 1);
    v8 = *(a2 + 80);
    if (v8)
    {
      v9 = *(a2 + 88);
    }

    else
    {
      v9 = a2 + 88;
    }

    absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(a1 + 10, v9, v8 >> 1);
    v10 = *(a2 + 104);
    if (v10)
    {
      v11 = *(a2 + 112);
    }

    else
    {
      v11 = (a2 + 112);
    }

    absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>(a1 + 13, v11, v10 >> 1);
    v12 = *(a2 + 184);
    if (v12)
    {
      v13 = a1[22];
      if (v12 > a1[24] << 6)
      {
        if (v13)
        {
          operator delete(v13);
          a1[22] = 0;
          a1[23] = 0;
          a1[24] = 0;
          v12 = *(a2 + 184);
        }

        if ((v12 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      memmove(v13, *(a2 + 176), (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v12 = *(a2 + 184);
    }

    a1[23] = v12;
  }

  a1[25] = *(a2 + 200);
  return a1;
}

void absl::inlined_vector_internal::Storage<webrtc::CodecBufferUsage,8ul,std::allocator<webrtc::CodecBufferUsage>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::CodecBufferUsage>,webrtc::CodecBufferUsage const*>>(unint64_t *a1, int *a2, unint64_t a3)
{
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 8;
    v6 = a1 + 1;
    if (a3 <= 8)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (2 * v5 <= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = 2 * v5;
    }

    if (!(v15 >> 61))
    {
      operator new();
    }

LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 >= v4 >> 1;
  v9 = a3 - (v4 >> 1);
  if (!v8)
  {
    v9 = 0;
  }

  if (v7 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v7;
  }

  if (v10)
  {
    v11 = v6;
    do
    {
      v12 = *a2;
      *(v11 + 2) = *(a2 + 2);
      *v11++ = v12;
      a2 += 2;
      --v10;
    }

    while (v10);
  }

  if (v7 >= a3)
  {
    v24 = *a1;
    goto LABEL_31;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_33;
  }

  v13 = &v6[v7];
  v14 = 0;
  if (v9 < 4 || (v13 - a2) < 0x20)
  {
    v16 = a2;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = &a2[2 * (v9 & 0xFFFFFFFFFFFFFFFCLL)];
    v17 = v13 + 2;
    v18 = (a2 + 4);
    v19 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v20 = *v18;
      *(v17 - 1) = *(v18 - 1);
      *v17 = v20;
      v17 += 2;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    if (v9 == v14)
    {
      goto LABEL_29;
    }
  }

  v21 = v9 - v14;
  v22 = &v13[v14];
  do
  {
    v23 = *v16++;
    *v22++ = v23;
    --v21;
  }

  while (v21);
LABEL_29:
  v24 = *a1;
LABEL_31:
  *a1 = v24 & 1 | (2 * a3);
}

void webrtc::FrameDependencyStructure::~FrameDependencyStructure(webrtc::FrameDependencyStructure *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    v3 = *(this + 14);
    v4 = *(this + 13);
    if (v3 == v2)
    {
LABEL_13:
      *(this + 14) = v2;
      operator delete(v4);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v3 - 24))
      {
        operator delete(*(v3 - 16));
        if ((*(v3 - 48) & 1) == 0)
        {
LABEL_7:
          if (*(v3 - 96))
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((*(v3 - 48) & 1) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 40));
      if (*(v3 - 96))
      {
LABEL_11:
        operator delete(*(v3 - 88));
      }

LABEL_4:
      v3 -= 104;
      if (v3 == v2)
      {
        v4 = *(this + 13);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if ((*(this + 64) & 1) == 0)
  {
    if ((*(this + 16) & 1) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(*(this + 3));
    return;
  }

  operator delete(*(this + 9));
  if (*(this + 16))
  {
    goto LABEL_18;
  }
}

void absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<webrtc::RenderResolution>>>(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v5 = a1[2];
    v7 = v4 >> 1;
    v8 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 4;
    v6 = a1 + 1;
    v7 = v4 >> 1;
    v8 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_13;
    }
  }

  if (v5 < a2)
  {
    v9 = 2 * v5;
    if (v9 <= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  bzero(&v6[v7], 8 * v8);
  v4 = *a1;
LABEL_13:
  *a1 = v4 & 1 | (2 * a2);
}

void absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::RenderResolution>,webrtc::RenderResolution const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 4;
    v6 = a1 + 1;
    if (a3 <= 4)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (2 * v5 <= a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = 2 * v5;
    }

    if (!(v22 >> 61))
    {
      operator new();
    }

LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_21;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 >= v4 >> 1;
  v9 = a3 - (v4 >> 1);
  if (!v8)
  {
    v9 = 0;
  }

  if (v7 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v7;
  }

  if (!v10)
  {
    v12 = a2;
    if (v7 < a3)
    {
      goto LABEL_17;
    }

LABEL_36:
    v31 = *a1;
    goto LABEL_37;
  }

  v11 = 0;
  if (v10 < 4)
  {
    goto LABEL_14;
  }

  if (v6 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = (a2 + 8 * (v10 & 0x7FFFFFFFFFFFFFFCLL));
  v13 = v6 + 2;
  v14 = (a2 + 16);
  v15 = v10 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v14;
    *(v13 - 1) = *(v14 - 1);
    *v13 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v3 = (a2 + 8 * (v10 & 0x7FFFFFFFFFFFFFFCLL));
  if (v10 != v11)
  {
LABEL_14:
    v17 = v10 - v11;
    v18 = &v6[v11];
    v12 = v3;
    do
    {
      v19 = *v12++;
      *v18++ = v19;
      --v17;
    }

    while (v17);
  }

  if (v7 >= a3)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (!v6)
  {
    __break(1u);
    goto LABEL_39;
  }

  v20 = &v6[v7];
  v21 = 0;
  if (v9 < 4 || (v20 - v12) < 0x20)
  {
    v23 = v12;
  }

  else
  {
    v21 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = &v12[v9 & 0xFFFFFFFFFFFFFFFCLL];
    v24 = v20 + 2;
    v25 = (v12 + 2);
    v26 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 2;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v9 == v21)
    {
      goto LABEL_34;
    }
  }

  v28 = v9 - v21;
  v29 = &v20[v21];
  do
  {
    v30 = *v23++;
    *v29++ = v30;
    --v28;
  }

  while (v28);
LABEL_34:
  v31 = *a1;
LABEL_37:
  *a1 = v31 & 1 | (2 * a3);
}

void webrtc::anonymous namespace::LibvpxFacade::img_free(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[14];
    if (v3 && *(a2 + 30))
    {
      v4 = a2;
      free(*(v3 - 8));
      a2 = v4;
      v2 = vars8;
    }

    if (*(a2 + 31))
    {

      free(a2);
    }
  }
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_enc_config_set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 8;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    result = 8;
    if (a3)
    {
      v5 = *(a2 + 48);
      if (v5)
      {
        if ((*(v3 + 16) & 2) == 0)
        {
          result = 4;
          *(a2 + 16) = 4;
          return result;
        }

        v6 = a2;
        result = (*(v3 + 120))(v5, a3);
        a2 = v6;
      }
    }

    *(a2 + 16) = result;
  }

  else
  {
    result = 8;
    *(a2 + 16) = 8;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_enc_config_default(int a1, uint64_t a2, void *__dst, int a4)
{
  result = 8;
  if (a2 && __dst && !a4)
  {
    if ((*(a2 + 16) & 2) != 0)
    {
      memcpy(__dst, (*(a2 + 96) + 8), 0x1F8uLL);
      return 0;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_enc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a3 && a4)
  {
    if (*(a3 + 8) != 5)
    {
      result = 3;
      goto LABEL_10;
    }

    v5 = *(a3 + 16);
    if ((v5 & 2) == 0)
    {
      result = 4;
      *(a2 + 16) = 4;
      return result;
    }

    if ((a5 & 0x10000) != 0 && (v5 & 0x10000) == 0)
    {
      result = 4;
      *(a2 + 16) = 4;
      return result;
    }

    if ((a5 & 0x20000) != 0 && (v5 & 0x20000) == 0)
    {
      result = 4;
      *(a2 + 16) = 4;
      return result;
    }

    *a2 = *a3;
    *(a2 + 8) = a3;
    *(a2 + 40) = a4;
    *(a2 + 48) = 0;
    *(a2 + 32) = a5;
    v7 = a2;
    result = (*(a3 + 24))(a2, 0);
    if (result)
    {
      a2 = v7;
      v8 = *(v7 + 48);
      if (v8)
      {
        *(v7 + 24) = *v8;
        v9 = *(v7 + 8);
        if (v9)
        {
          v10 = result;
          (*(v9 + 32))(v8, v7);
          result = v10;
          *(v7 + 48) = 0;
          *v7 = 0;
          *(v7 + 8) = 0;
          *(v7 + 16) = v10;
          return result;
        }

LABEL_10:
        *(a2 + 16) = result;
        return result;
      }

      *(v7 + 24) = 0;
      *(v7 + 16) = result;
    }

    else
    {
      *(v7 + 16) = 0;
    }
  }

  else
  {
    result = 8;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_destroy(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 8;
  }

  v2 = *(a2 + 8);
  if (v2 && *(a2 + 48))
  {
    (*(v2 + 32))();
    result = 0;
    *(a2 + 48) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    result = 1;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_control(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 - 14) <= 0x34 && ((1 << (a3 - 14)) & 0x12730C01E6D98FLL) != 0)
  {
    return vpx_codec_control_(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  switch(a3)
  {
    case 13:
      result = vpx_codec_control_(a2, 13, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 18:
      result = vpx_codec_control_(a2, 18, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 24:
      result = vpx_codec_control_(a2, 24, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 27:
      result = vpx_codec_control_(a2, 27, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 30:
      result = vpx_codec_control_(a2, 30, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 33:
      result = vpx_codec_control_(a2, 33, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 34:
      result = vpx_codec_control_(a2, 34, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 39:
      result = vpx_codec_control_(a2, 39, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 43:
      result = vpx_codec_control_(a2, 43, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 46:
      result = vpx_codec_control_(a2, 46, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 51:
      result = vpx_codec_control_(a2, 51, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 57:
      result = vpx_codec_control_(a2, 57, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 65:
      result = vpx_codec_control_(a2, 65, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 67:
      result = vpx_codec_control_(a2, 67, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 68:
      result = vpx_codec_control_(a2, 68, a3, a4, a5, a6, a7, a8, a4);
      break;
    case 69:
      result = vpx_codec_control_(a2, 69, a3, a4, a5, a6, a7, a8, a4);
      break;
    default:
      if ((a4 & 0x80000000) != 0)
      {
        result = 1;
      }

      else
      {
        v9 = *(*a1 + 80);

        result = v9();
      }

      break;
  }

  return result;
}

{
  if (a3 <= 0x38 && ((1 << a3) & 0x120000000180000) != 0)
  {
    return vpx_codec_control_(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if ((a3 | 0x20) == 0x28)
  {
    return vpx_codec_control_(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 50 || a3 == 9)
  {
    return vpx_codec_control_(a2, 9, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 11)
  {
    return vpx_codec_control_(a2, 11, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 41)
  {
    return vpx_codec_control_(a2, 41, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 61)
  {
    return vpx_codec_control_(a2, 61, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if ((a3 | 4) == 0x2D)
  {
    return vpx_codec_control_(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 44 || a3 == 42)
  {
    return vpx_codec_control_(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 62 || a3 == 52)
  {
    return vpx_codec_control_(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 64)
  {
    return vpx_codec_control_(a2, 64, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

{
  if (a3 == 70)
  {
    return vpx_codec_control_(a2, 70, a3, a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 8;
  }

  if (!a3 || a5)
  {
    v8 = *(a2 + 8);
    if (!v8 || (v9 = *(a2 + 48)) == 0)
    {
      result = 1;
      goto LABEL_11;
    }

    if ((*(v8 + 16) & 2) == 0)
    {
      result = 4;
      goto LABEL_11;
    }

    if (!((a7 | a5) >> 32))
    {
      v10 = *(v9 + 208);
      v11 = v10 - 1;
      if (v10 == 1)
      {
        v12 = a2;
        result = (*(v8 + 104))();
        a2 = v12;
      }

      else
      {
        v13 = a2 + 56 * v11;
        if (v10 - 1 < 0)
        {
LABEL_24:
          result = 0;
        }

        else
        {
          if (a3)
          {
            v14 = a3 + 136 * v11;
          }

          else
          {
            v14 = 0;
          }

          while (1)
          {
            v15 = a4;
            v16 = a5;
            v17 = a6;
            v18 = a7;
            result = (*(*(v13 + 8) + 104))(*(v13 + 48), v14, a4, a5, a6, a7);
            if (result)
            {
              break;
            }

            v13 -= 56;
            if (v14)
            {
              v14 -= 136;
            }

            else
            {
              v14 = 0;
            }

            --v10;
            a7 = v18;
            a6 = v17;
            a5 = v16;
            a4 = v15;
            if (v10 <= 0)
            {
              goto LABEL_24;
            }
          }
        }

        a2 = v13 + 56;
      }

      goto LABEL_11;
    }
  }

  result = 8;
LABEL_11:
  *(a2 + 16) = result;
  return result;
}

uint64_t webrtc::anonymous namespace::LibvpxFacade::codec_error_detail(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (!v2)
  {
    v2 = a2 + 24;
  }

  return *v2;
}

const char *webrtc::anonymous namespace::LibvpxFacade::codec_error(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return "Invalid parameter";
  }

  v2 = *(a2 + 16);
  if (v2 > 9)
  {
    return "Unrecognized error code";
  }

  else
  {
    return off_279E93FE0[v2];
  }
}

const char *webrtc::anonymous namespace::LibvpxFacade::codec_err_to_string(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return "Unrecognized error code";
  }

  else
  {
    return off_279E93FE0[a2];
  }
}

uint64_t webrtc::LibvpxVp8Decoder::LibvpxVp8Decoder(uint64_t a1, uint64_t a2)
{
  v3 = 0x10000001ELL;
  *a1 = &unk_288295640;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 32) = a1 + 32;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 300;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  (*(**(a2 + 8) + 16))(v9);
  if (v10 < 0)
  {
    if (!v9[1])
    {
      v5 = 0x3C00000008;
      goto LABEL_17;
    }

    v7 = 0x100000006;
    v8 = 0;
    v4 = v9[0];
  }

  else
  {
    if (!v10)
    {
      v5 = 0x3C00000008;
      goto LABEL_14;
    }

    v7 = 0x100000006;
    v8 = 0;
    v4 = v9;
  }

  v5 = 0x3C00000008;
  if (sscanf(v4, "Enabled-%d,%d,%d", &v7, &v8, &v7 + 4) == 3 && v7 <= 0x10 && (v8 & 0x80000000) == 0 && SHIDWORD(v7) > v8)
  {
    v5 = v7;
    v3 = v8 | 0x100000000;
  }

  if (v10 < 0)
  {
LABEL_17:
    operator delete(v9[0]);
    *(a1 + 108) = v5;
    *(a1 + 116) = v3;
    *(a1 + 120) = BYTE4(v3);
    if ((*(a1 + 8) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    operator new();
  }

LABEL_14:
  *(a1 + 108) = v5;
  *(a1 + 116) = v3;
  *(a1 + 120) = BYTE4(v3);
  if (*(a1 + 8))
  {
    goto LABEL_15;
  }

LABEL_18:
  *(a1 + 128) = 0;
  return a1;
}