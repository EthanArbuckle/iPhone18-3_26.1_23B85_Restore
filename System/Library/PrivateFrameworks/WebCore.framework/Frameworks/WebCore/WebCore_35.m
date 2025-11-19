void webrtc::anonymous namespace::SendProcessingUsage1::~SendProcessingUsage1(webrtc::_anonymous_namespace_::SendProcessingUsage1 *this)
{
  *this = &unk_288297448;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1000C403E1C8BA9);
  }

  if (*(this + 8))
  {
    v4 = *(this + 7);
    v5 = *v4;
    v6 = *(*(this + 6) + 8);
    *(v5 + 8) = v6;
    *v6 = v5;
    *(this + 8) = 0;
    if (v4 != (this + 48))
    {
      do
      {
        v7 = *(v4 + 1);
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (this + 48));
    }
  }
}

{
  *this = &unk_288297448;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x2743DA540](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x2743DA540](v3, 0x1000C403E1C8BA9);
  }

  if (*(this + 8))
  {
    v4 = *(this + 7);
    v5 = *v4;
    v6 = *(*(this + 6) + 8);
    *(v5 + 8) = v6;
    *v6 = v5;
    *(this + 8) = 0;
    if (v4 != (this + 48))
    {
      do
      {
        v7 = *(v4 + 1);
        operator delete(v4);
        v4 = v7;
      }

      while (v7 != (this + 48));
    }
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::OverdoseInjector::Value(webrtc::_anonymous_namespace_::OverdoseInjector *this)
{
  if (webrtc::g_clock)
  {
    v2 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v2 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v3 = v2 / 1000000;
  v4 = *(this + 6);
  if (v4 == -1)
  {
    *(this + 6) = v3;
  }

  else
  {
    v5 = *(this + 10);
    if (v5 == 2)
    {
      if (v3 <= *(this + 4) + v4)
      {
        goto LABEL_20;
      }

      *(this + 10) = 0;
      *(this + 6) = v3;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_20;
      }
    }

    else if (v5 == 1)
    {
      if (v3 <= *(this + 3) + v4)
      {
        goto LABEL_20;
      }

      *(this + 10) = 2;
      *(this + 6) = v3;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v5)
      {
        goto LABEL_20;
      }

      if (v3 <= *(this + 2) + v4)
      {
        goto LABEL_20;
      }

      *(this + 10) = 1;
      *(this + 6) = v3;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_20;
      }
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/overuse_frame_detector.cc");
  }

LABEL_20:
  v13 = *(this + 10);
  if (v13 == 1)
  {
    v14 = 250;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 == 2 || v13 == 1;
  if (v13 == 2)
  {
    v16 = 5;
  }

  else
  {
    v16 = v14;
  }

  LODWORD(result) = (*(**(this + 1) + 32))(*(this + 1));
  if (v15)
  {
    return v16;
  }

  else
  {
    return result;
  }
}

void webrtc::anonymous namespace::OverdoseInjector::~OverdoseInjector(webrtc::_anonymous_namespace_::OverdoseInjector *this)
{
  v1 = *(this + 1);
  *this = &unk_288297490;
  *(this + 1) = 0;
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_288297490;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::OveruseFrameDetector::StartCheckForOveruse(webrtc::TaskQueueBase *,webrtc::CpuOveruseOptions const&,webrtc::OveruseFrameDetectorObserverInterface *)::$_0 &>(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(*a1 + 104);
  *(v2 + 104) = v3 + 1;
  if (v3 < *(v2 + 24) || *(v2 + 100) != 1)
  {
    return 5000000;
  }

  if (webrtc::g_clock)
  {
    result = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    if ((*(v2 + 100) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    if ((*(v2 + 100) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v5 = result / 1000000;
  v6 = *(v2 + 96);
  if (*(v2 + 8) > v6)
  {
    *(v2 + 136) = 0;
    if (*(v2 + 28) <= 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    if (*(v2 + 152))
    {
      if (*(v2 + 144) + 10000 > v5)
      {
        goto LABEL_24;
      }
    }

    else if (*(v2 + 144) + *(v2 + 156) > v5)
    {
      goto LABEL_24;
    }

    if (*(v2 + 12) > v6)
    {
      *(v2 + 144) = v5;
      *(v2 + 152) = 1;
      (**v1)(v1);
      if (*(v2 + 152))
      {
        goto LABEL_30;
      }

LABEL_25:
      result = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
      if (result)
      {
        return 5000000;
      }

      goto LABEL_31;
    }

LABEL_24:
    if (*(v2 + 152))
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v9 = *(v2 + 136) + 1;
  *(v2 + 136) = v9;
  if (v9 < *(v2 + 28))
  {
    goto LABEL_17;
  }

LABEL_11:
  v7 = *(v2 + 144);
  if (v7 > *(v2 + 128))
  {
    if (v5 - v7 >= 40000 && *(v2 + 140) < 5)
    {
      v8 = 40000;
    }

    else
    {
      v8 = 2 * *(v2 + 156);
      if (v8 >= 240000)
      {
        v8 = 240000;
      }
    }

    *(v2 + 156) = v8;
  }

  *(v2 + 128) = v5;
  *(v2 + 152) = 0;
  v17 = *(v2 + 140) + 1;
  *(v2 + 136) = 0;
  *(v2 + 140) = v17;
  (*(*v1 + 8))(v1);
  if ((*(v2 + 152) & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_30:
  result = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if (result)
  {
    return 5000000;
  }

LABEL_31:
  if (*(v2 + 100))
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/adaptation/overuse_frame_detector.cc");
    return 5000000;
  }

LABEL_34:
  __break(1u);
  return result;
}

void webrtc::P2PTransportChannel::P2PTransportChannel(uint64_t a1, _BYTE *a2, size_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  webrtc::IceTransportInternal::IceTransportInternal(a1);
  *v18 = &unk_2882974D8;
  v18[117] = &unk_288297658;
  if (a3 < 0x7FFFFFFFFFFFFFF8)
  {
    if (a3 > 0x16)
    {
      operator new();
    }

    *(a1 + 967) = a3;
    v19 = (a1 + 944 + a3);
    if (a1 + 944 > a2 || v19 <= a2)
    {
      if (a3)
      {
        memmove((a1 + 944), a2, a3);
      }

      *v19 = 0;
      *(a1 + 968) = a4;
      *(a1 + 976) = a5;
      v20 = *a7;
      if (*a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = a6;
      }

      *(a1 + 984) = v21;
      *a7 = 0;
      *(a1 + 992) = v20;
      {
        operator new();
      }

      *(a1 + 1000) = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
      *(a1 + 1008) = 0;
      *(a1 + 1160) = 0u;
      *(a1 + 1012) = 0u;
      *(a1 + 1028) = 0u;
      *(a1 + 1044) = 0u;
      *(a1 + 1060) = 0u;
      *(a1 + 1076) = 0u;
      *(a1 + 1092) = 0u;
      *(a1 + 1108) = 0u;
      *(a1 + 1124) = 0u;
      *(a1 + 1137) = 0;
      *(a1 + 1152) = a1 + 1160;
      *(a1 + 1176) = 0u;
      *(a1 + 1192) = 0u;
      *(a1 + 1208) = 0u;
      *(a1 + 1224) = 0;
      *(a1 + 1256) = 0;
      *(a1 + 1248) = 0;
      *(a1 + 1232) = 0u;
      *(a1 + 1260) = 2;
      *(a1 + 1272) = 0u;
      if (a11)
      {
        (*(*a11 + 16))(&__p, a11, "WebRTC-StunInterPacketDelay", 27);
        if (v26 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v23 = strtoul(p_p, 0, 10);
        if (v26 < 0)
        {
          v24 = v23;
          operator delete(__p);
          v23 = v24;
          if (v24)
          {
LABEL_20:
            *(a1 + 1288) = v23;
            *(a1 + 1292) = 0;
            *(a1 + 1296) = 0x9C400000000;
            *(a1 + 1304) = 1;
            *(a1 + 1308) = 25000;
            *(a1 + 1312) = 1;
            *(a1 + 1316) = 0;
            *(a1 + 1320) = 0;
            *(a1 + 1324) = 2500;
            *(a1 + 1328) = 1;
            *(a1 + 1332) = 1;
            *(a1 + 1336) = 300000;
            *(a1 + 1340) = 1;
            *(a1 + 1344) = 1000;
            *(a1 + 1348) = 1;
            *(a1 + 1352) = 2;
            *(a1 + 1356) = 0;
            *(a1 + 1360) = 0;
            *(a1 + 1364) = 0;
            *(a1 + 1368) = 0;
            *(a1 + 1372) = 0;
            *(a1 + 1376) = 0;
            *(a1 + 1380) = 0;
            *(a1 + 1384) = 0;
            *(a1 + 1388) = 0;
            *(a1 + 1392) = 0;
            *(a1 + 1396) = 0;
            *(a1 + 1400) = 0;
            *(a1 + 1404) = 0;
            *(a1 + 1408) = 0;
            *(a1 + 1412) = 0;
            *(a1 + 1416) = 0;
            *(a1 + 1420) = 0;
            *(a1 + 1424) = 0;
            *(a1 + 1428) = -1;
            *(a1 + 1440) = 0;
            *(a1 + 1476) = 0;
            *(a1 + 1435) = 0;
            *(a1 + 1432) = 0;
            *(a1 + 1480) = 0u;
            *(a1 + 1496) = 0u;
            *(a1 + 1512) = 0;
            *(a1 + 1520) = 1065353216;
            *(a1 + 1600) = 0;
            *(a1 + 1608) = 0;
            *(a1 + 1612) = 0;
            *(a1 + 1616) = 0;
            *(a1 + 1620) = 0;
            *(a1 + 1624) = 0;
            *(a1 + 1628) = 0;
            *(a1 + 1632) = 0;
            *(a1 + 1528) = 0u;
            *(a1 + 1544) = 0u;
            *(a1 + 1560) = 0u;
            *(a1 + 1576) = 0u;
            *(a1 + 1592) = 0;
            *(a1 + 1636) = 1;
            *(a1 + 1640) = 500;
            *(a1 + 1644) = 0;
            *(a1 + 1646) = 0;
            *(a1 + 1648) = 30000;
            *(a1 + 1652) = 1;
            *(a1 + 1656) = 0;
            *(a1 + 1660) = 0;
            *(a1 + 1664) = 16842752;
            *(a1 + 1672) = a11;
            *(a1 + 1680) = 0;
            *(a1 + 1688) = 1;
            *(a1 + 1736) = 0u;
            *(a1 + 1712) = 0u;
            *(a1 + 1696) = 0u;
            *(a1 + 1728) = a1 + 1736;
            operator new();
          }
        }

        else if (v23)
        {
          goto LABEL_20;
        }
      }

      v23 = 48;
      goto LABEL_20;
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t webrtc::P2PTransportChannel::OnCandidateFilterChanged(uint64_t this, int a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = *(this + 1024);
    if (*(this + 1016) != v3)
    {
      v4 = *(v3 - 8);
      if (v4)
      {
        if (*(this + 1333) == 1)
        {
          return (*(*v4 + 16))(v4, a3);
        }
      }
    }
  }

  return this;
}

void webrtc::P2PTransportChannel::~P2PTransportChannel(webrtc::P2PTransportChannel *this)
{
  *this = &unk_2882974D8;
  *(this + 117) = &unk_288297658;
  v2 = *(this + 137);
  v3 = *(this + 138);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = *(this + 193);
  v5 = *(this + 192);
  while (v4 != v5)
  {
    v6 = *(v4 - 1);
    *(v4 - 1) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v4 -= 55;
    webrtc::Candidate::~Candidate(v4);
  }

  *(this + 193) = v5;
  (*(this + 232))(1, this + 1840, this + 1840);
  (*(this + 228))(1, this + 1808, this + 1808);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 223));
  std::__tree<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>>>::destroy(*(this + 220));
  std::__tree<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>>>::destroy(*(this + 217));
  v7 = *(this + 213);
  if (v7)
  {
    *(this + 214) = v7;
    operator delete(v7);
  }

  v8 = *(this + 212);
  *(this + 212) = 0;
  if (v8)
  {
    std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v8 + 32));
    std::__tree<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>>>::destroy(*(v8 + 8));
    MEMORY[0x2743DA540](v8, 0x1020C4014A78C51);
  }

  v9 = *(this + 192);
  if (v9)
  {
    v10 = *(this + 193);
    v11 = *(this + 192);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        *(v10 - 1) = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v10 -= 55;
        webrtc::Candidate::~Candidate(v10);
      }

      while (v10 != v9);
      v11 = *(this + 192);
    }

    *(this + 193) = v9;
    operator delete(v11);
  }

  v13 = *(this + 191);
  *(this + 191) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 188);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *(this + 186);
  *(this + 186) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *(this + 159);
  *(this + 159) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 154);
  if (v18)
  {
    v19 = *(this + 155);
    v20 = *(this + 154);
    if (v19 == v18)
    {
LABEL_39:
      *(this + 155) = v18;
      operator delete(v20);
      goto LABEL_40;
    }

    while (1)
    {
      if (*(v19 - 9) < 0)
      {
        operator delete(*(v19 - 4));
        v21 = v19 - 7;
        if (*(v19 - 33) < 0)
        {
LABEL_37:
          operator delete(*v21);
        }
      }

      else
      {
        v21 = v19 - 7;
        if (*(v19 - 33) < 0)
        {
          goto LABEL_37;
        }
      }

      v19 = v21;
      if (v21 == v18)
      {
        v20 = *(this + 154);
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if (*(this + 1223) < 0)
  {
    operator delete(*(this + 150));
    if ((*(this + 1199) & 0x80000000) == 0)
    {
LABEL_42:
      std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1152, *(this + 145));
      v22 = *(this + 140);
      if (!v22)
      {
        goto LABEL_43;
      }

      goto LABEL_66;
    }
  }

  else if ((*(this + 1199) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(this + 147));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1152, *(this + 145));
  v22 = *(this + 140);
  if (!v22)
  {
LABEL_43:
    v23 = *(this + 137);
    if (!v23)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_66:
  v32 = *(this + 141);
  v33 = v22;
  if (v32 != v22)
  {
    do
    {
      webrtc::Candidate::~Candidate(v32 - 55);
    }

    while (v32 != v22);
    v33 = *(this + 140);
  }

  *(this + 141) = v22;
  operator delete(v33);
  v23 = *(this + 137);
  if (v23)
  {
LABEL_44:
    *(this + 138) = v23;
    operator delete(v23);
  }

LABEL_45:
  v24 = *(this + 133);
  if (v24)
  {
    *(this + 134) = v24;
    operator delete(v24);
  }

  v25 = *(this + 130);
  if (v25)
  {
    *(this + 131) = v25;
    operator delete(v25);
  }

  v26 = *(this + 127);
  if (v26)
  {
    v27 = *(this + 128);
    v28 = *(this + 127);
    if (v27 != v26)
    {
      do
      {
        v30 = *--v27;
        v29 = v30;
        *v27 = 0;
        if (v30)
        {
          (*(*v29 + 8))(v29);
        }
      }

      while (v27 != v26);
      v28 = *(this + 127);
    }

    *(this + 128) = v26;
    operator delete(v28);
  }

  v31 = *(this + 124);
  *(this + 124) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (*(this + 967) < 0)
  {
    operator delete(*(this + 118));
  }

  webrtc::IceTransportInternal::~IceTransportInternal(this);
}

{
  webrtc::P2PTransportChannel::~P2PTransportChannel(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::P2PTransportChannel::RemoveConnection(webrtc::P2PTransportChannel *this, uint64_t (**a2)(uint64_t, char *, char *))
{
  v4 = *(this + 137);
  v5 = *(this + 138);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if (++v4 == v5)
      {
        v4 = *(this + 138);
        break;
      }
    }
  }

  result = webrtc::Connection::DeregisterReceivedPacketCallback(a2);
  v7 = *(this + 138);
  if (v7 == v4)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - (v4 + 1);
    if (v7 != v4 + 1)
    {
      memmove(v4, v4 + 1, v7 - (v4 + 1));
    }

    *(this + 138) = v4 + v8;
    if (*(a2 + 2744) == 1)
    {
      v9 = a2[342];
      if (v9 == (a2 + 339))
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      *(a2 + 2744) = 0;
    }

    if (*(a2 + 2784) == 1)
    {
      v10 = a2[347];
      if (v10 == (a2 + 344))
      {
        (*(*v10 + 32))(v10);
      }

      else if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      *(a2 + 2784) = 0;
    }

    a2[355](1, a2 + 2824, a2 + 2824);
    a2[355] = absl::internal_any_invocable::EmptyManager;
    a2[356] = 0;
    a2[359](1, a2 + 2856, a2 + 2856);
    a2[359] = absl::internal_any_invocable::EmptyManager;
    a2[360] = 0;
    v11 = *(**(this + 191) + 40);

    return v11();
  }

  return result;
}

void non-virtual thunk towebrtc::P2PTransportChannel::~P2PTransportChannel(webrtc::P2PTransportChannel *this)
{
  webrtc::P2PTransportChannel::~P2PTransportChannel((this - 936));
}

{
  webrtc::P2PTransportChannel::~P2PTransportChannel((this - 936));

  JUMPOUT(0x2743DA540);
}

void webrtc::P2PTransportChannel::OnPortReady(webrtc::P2PTransportChannel *this, webrtc::PortAllocatorSession *a2, webrtc::PortInterface *a3)
{
  v5 = a3;
  v26[5] = *MEMORY[0x277D85DE8];
  v26[0] = a3;
  v7 = *(this + 144);
  v8 = this + 1160;
  if (v7 != this + 1160)
  {
    do
    {
      if (((*(*v5 + 104))(v5, *(v7 + 7), *(v7 + 8)) & 0x80000000) != 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v4 = v4 & 0xFFFFFFFF00000000 | 0x1C21;
        v23[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc";
        v23[1] = v4;
        v23[2] = &v22;
        (*(*v5 + 176))(__p, v5);
        v24[0] = __p;
        v24[1] = v23;
        v24[2] = ": SetOption(";
        v25 = v24;
        v9 = *(v7 + 7);
        v5 = v26[0];
        (*(*v26[0] + 120))(v26[0]);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v10, v11, v12, v13, v14, v15, v16, *v25[1]);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        v3 = v3 & 0xFFFFFFFF00000000 | v9;
      }

      v17 = *(v7 + 1);
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
        do
        {
          v18 = *(v7 + 2);
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v7 = v18;
    }

    while (v18 != v8);
  }

  (*(*v5 + 32))(v5, *(this + 315));
  (*(*v26[0] + 48))(v26[0], *(*(this + 122) + 288));
  std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](this + 130, v26);
  operator new();
}

void webrtc::P2PTransportChannel::OnPortsPruned(void *a1, uint64_t a2, void ***a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      v7 = *v4;
      __p[0] = *v4;
      v8 = a1[130];
      v9 = a1[131];
      if (v8 != v9)
      {
        while (*v8 != v7)
        {
          if (++v8 == v9)
          {
            goto LABEL_3;
          }
        }
      }

      if (v8 != v9)
      {
        v10 = v9 - (v8 + 1);
        if (v9 != v8 + 1)
        {
          memmove(v8, v8 + 1, v9 - (v8 + 1));
        }

        a1[131] = v8 + v10;
        std::vector<webrtc::BufferT<unsigned char,false> *,std::allocator<webrtc::BufferT<unsigned char,false> *>>::push_back[abi:sn200100](a1 + 133, __p);
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          v3 = v3 & 0xFFFFFFFF00000000 | 0x42B1;
          (*(*v7 + 176))(__p, v7);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

LABEL_3:
      ++v4;
    }

    while (v4 != v5);
  }
}

void *webrtc::P2PTransportChannel::OnCandidatesReady(void *result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3 != *a3)
  {
    v5 = result;
    v6 = result + 53;
    v7 = result[54];
    if (v7 == result + 53)
    {
      result[56] = v7;
    }

    else
    {
      v9 = 0;
      do
      {
        result = v5[54];
        v5[56] = result;
        if (result != v6)
        {
          v10 = v4 + 432 * v9;
          do
          {
            v12 = result[2];
            v11 = result + 2;
            v5[56] = *(v11 - 1);
            v12(v11, v5, v10);
            result = v5[56];
          }

          while (result != v6);
          v4 = *a3;
          v3 = a3[1];
        }

        ++v9;
      }

      while (v9 < 0x84BDA12F684BDA13 * ((v3 - v4) >> 4));
    }
  }

  return result;
}

uint64_t webrtc::P2PTransportChannel::OnCandidateError(uint64_t result)
{
  v1 = *(result + 864);
  if (v1)
  {
    return v1(result + 840, result);
  }

  return result;
}

void webrtc::P2PTransportChannel::OnCandidatesRemoved(uint64_t a1, uint64_t a2, std::string **a3)
{
  if (*(a1 + 1316) == 1)
  {
    v4 = *(a1 + 1024);
    if (*(a1 + 1016) == v4)
    {
      if (a2)
      {
        return;
      }
    }

    else if (*(v4 - 8) != a2)
    {
      return;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v5 = *a3;
    v6 = a3[1];
    if (*a3 == v6)
    {
LABEL_23:
      v12 = *(a1 + 896);
      if (v12)
      {
        v12(a1 + 872, a1, &v18);
      }

      v13 = v18;
      if (v18)
      {
        v14 = v19;
        v15 = v18;
        if (v19 != v18)
        {
          do
          {
            webrtc::Candidate::~Candidate(&v14[-18].__r_.__value_.__l.__data_);
          }

          while (v14 != v13);
          v15 = v18;
        }

        v19 = v13;
        operator delete(v15);
      }
    }

    else
    {
      while (1)
      {
        webrtc::Candidate::Candidate(&v16, v5);
        v7 = (*(*a1 + 16))(a1);
        v8 = *(v7 + 23);
        v9 = v8 >= 0 ? v7 : *v7;
        v10 = v8 >= 0 ? *(v7 + 23) : *(v7 + 8);
        if (!v9 && v10 != 0)
        {
          break;
        }

        std::string::__assign_external(v17, v9, v10);
        if (v19 >= v20)
        {
          std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(&v18);
        }

        if (!v19)
        {
          break;
        }

        v19 = webrtc::Candidate::Candidate(v19, &v16) + 18;
        webrtc::Candidate::~Candidate(&v16.__r_.__value_.__l.__data_);
        v5 += 18;
        if (v5 == v6)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }
  }
}

void webrtc::P2PTransportChannel::OnCandidatesAllocationDone(webrtc::P2PTransportChannel *this, webrtc::PortAllocatorSession *a2)
{
  if (*(this + 329) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(*this + 16))(this);
      (*(*this + 96))(this);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  else
  {
    *(this + 316) = 2;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(*this + 16))(this);
      (*(*this + 96))(this);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    if (*(this + 832) == 1)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v10, v11, v12, v13, v34);
      webrtc::P2PTransportChannel::AddConnection(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    v21 = this + 832;
    *(this + 832) = 1;
    v22 = *(this + 101);
    v23 = *(this + 102);
    if (v22 == v23)
    {
      *v21 = 0;
    }

    else
    {
      v24 = 0;
      do
      {
        (*(v22 + 40))(v22 + 8, this);
        v25 = *v22;
        v22 += 56;
        v24 |= v25 == v21;
      }

      while (v22 != v23);
      *v21 = 0;
      if (v24)
      {

        webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 101, this + 832);
      }
    }
  }
}

void webrtc::P2PTransportChannel::AddConnection(webrtc::P2PTransportChannel *this, webrtc::Connection *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = *(this + 1300);
  *(a2 + 641) = v8;
  *(a2 + 2568) = BYTE4(v8);
  LODWORD(v8) = *(this + 345);
  *(a2 + 2540) = *(this + 1384);
  *(a2 + 634) = v8;
  LOBYTE(v8) = *(this + 1392);
  *(a2 + 636) = *(this + 347);
  *(a2 + 2548) = v8;
  LOBYTE(v8) = *(this + 1400);
  *(a2 + 638) = *(this + 349);
  *(a2 + 2556) = v8;
  v9.n128_u64[0] = this;
  v11 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_0 &,webrtc::Connection *,webrtc::ReceivedIpPacket const&>;
  v12 = a2;
  v10 = absl::internal_any_invocable::LocalManagerTrivial;
  webrtc::Connection::RegisterReceivedPacketCallback(a2, &v9, a3, a4, a5, a6, a7, a8);
  v10(1, &v9, &v9);
  operator new();
}

uint64_t webrtc::P2PTransportChannel::OnReadyToSend(uint64_t this, webrtc::Connection *a2)
{
  if (*(this + 1088) == a2)
  {
    v2 = this;
    this = (*(*this + 24))(this);
    if (this)
    {
      this = *(v2 + 136);
      for (*(v2 + 152) = this; this != v2 + 128; this = *(v2 + 152))
      {
        v4 = *(this + 16);
        v3 = this + 16;
        *(v2 + 152) = *(v3 - 8);
        v4(v3, v2);
      }
    }
  }

  return this;
}

uint64_t webrtc::P2PTransportChannel::OnConnectionStateChange(webrtc::P2PTransportChannel *this, webrtc::Connection *a2)
{
  if (*(this + 1652) == 1)
  {
    v3 = *(a2 + 582) || *(a2 + 2332) != 1 ? 1 : *(a2 + 2333) ^ 1;
    v4 = *((*(*a2 + 16))(a2) + 248);
    v5 = (*(**(*(this + 128) - 8) + 128))(*(*(this + 128) - 8));
    if ((v3 & 1) == 0 && v4 >= v5)
    {
      if ((*(**(*(this + 128) - 8) + 40))(*(*(this + 128) - 8)))
      {
        v6 = *(this + 127);
        for (i = *(this + 128); v6 != i; ++v6)
        {
          while (1)
          {
            result = (*(**v6 + 64))();
            if ((result & 1) == 0)
            {
              break;
            }

LABEL_11:
            if (++v6 == i)
            {
              goto LABEL_19;
            }
          }

          if (*(this + 329) == 1)
          {
            v9 = *(this + 128);
            if (*(this + 127) == v9)
            {
              __break(1u);
              return result;
            }

            v10 = *v6;
            if (*v6 == *(v9 - 8))
            {
              (*(*v10 + 48))(v10);
              goto LABEL_11;
            }
          }

          else
          {
            v10 = *v6;
          }

          (*(*v10 + 32))(v10);
        }
      }
    }
  }

LABEL_19:
  v11 = *(**(this + 191) + 72);

  return v11();
}

void webrtc::P2PTransportChannel::OnConnectionDestroyed(webrtc::P2PTransportChannel *this, uint64_t (**a2)(uint64_t, char *, char *))
{
  webrtc::P2PTransportChannel::RemoveConnection(this, a2);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::P2PTransportChannel::ToString(&v19, this, v4), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc"), SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if (*(this + 136) != a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(this + 136) != a2)
  {
LABEL_4:
    webrtc::P2PTransportChannel::UpdateTransportState(this);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }

  webrtc::P2PTransportChannel::SwitchSelectedConnectionInternal(this, 0, 9);
  (*(**(this + 191) + 72))(*(this + 191), 9);
}

void webrtc::P2PTransportChannel::OnNominated(webrtc::P2PTransportChannel *this, webrtc::Connection *a2)
{
  if (*(this + 136) != a2)
  {
    if (a2 && (*(this + 1646) & 1) != 0)
    {
      webrtc::P2PTransportChannel::PingConnection(this, a2);
      (*(**(this + 191) + 48))(*(this + 191), a2);
    }

    if ((*(**(this + 191) + 88))(*(this + 191), 6, a2))
    {
      v4 = *(**(this + 191) + 72);

      v4();
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::Connection::ToString(a2, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void webrtc::P2PTransportChannel::ForgetLearnedStateForConnections(uint64_t a1, char ***a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 8 * a3;
    do
    {
      v5 = *a2++;
      webrtc::Connection::ForgetLearnedState(v5);
      v4 -= 8;
    }

    while (v4);
  }
}

void non-virtual thunk towebrtc::P2PTransportChannel::ForgetLearnedStateForConnections(uint64_t a1, char ***a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 8 * a3;
    do
    {
      v5 = *a2++;
      webrtc::Connection::ForgetLearnedState(v5);
      v4 -= 8;
    }

    while (v4);
  }
}

uint64_t webrtc::P2PTransportChannel::SetIceRole(uint64_t result, uint64_t a2)
{
  if (*(result + 1260) != a2)
  {
    v3 = result;
    *(result + 1260) = a2;
    v4 = *(result + 1040);
    for (i = *(result + 1048); v4 != i; result = (*(*v6 + 32))(v6, a2))
    {
      v6 = *v4++;
    }

    v7 = *(v3 + 1064);
    for (j = *(v3 + 1072); v7 != j; result = (*(*v9 + 32))(v9, a2))
    {
      v9 = *v7++;
    }
  }

  return result;
}

uint64_t webrtc::P2PTransportChannel::GetRttEstimate(webrtc::P2PTransportChannel *this)
{
  v1 = *(this + 136);
  if (v1)
  {
    if (*(v1 + 2420) >= 1)
    {
      return *(v1 + 2416) | 0x100000000;
    }

    return 0;
  }

  return v1;
}

void webrtc::P2PTransportChannel::GetSelectedCandidatePair(webrtc::P2PTransportChannel *this@<X0>, uint64_t a2@<X8>)
{
  if (!*(this + 136))
  {
    *a2 = 0;
    *(a2 + 872) = 0;
    return;
  }

  v23 = &unk_2882976C0;
  memset(&v24, 0, sizeof(v24));
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v20);
    webrtc::P2PTransportChannel::SanitizeRemoteCandidate(v17, v18, v19);
    return;
  }

  v60 = 1;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  v66 = &unk_28828CE50;
  v71 = 0;
  memset(v22, 0, 20);
  v67 = 0;
  v68 = *(v22 + 4);
  v69 = 0;
  v70 = 0;
  v72 = 0;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  v76 = 0;
  v79 = 0;
  v78 = 0u;
  v77 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v83 = &unk_28828CE50;
  v88 = 0;
  v22[0] = 0u;
  v84 = 0;
  v85 = *(v22 + 4);
  v86 = 0;
  v87 = 0;
  v94 = 0;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v92 = 0;
  v8 = (*(**(this + 136) + 16))(*(this + 136));
  v9 = *(this + 122);
  if ((*(v8 + 208) | 2) == 2)
  {
    v10 = (*(*v9 + 72))(*(this + 122));
    if ((~*(v9 + 29) & 0xC00) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    if ((~*(v9 + 29) & 0xC00) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v9[140])
  {
    v11 = (*(*v9 + 72))(v9);
    goto LABEL_12;
  }

LABEL_10:
  v11 = 1;
LABEL_12:
  v12 = *(v9 + 35);
  v13 = (*(*v9 + 72))(v9);
  v14 = *(v8 + 208);
  if (v14 == 1 && (v11 & 1) != 0 || v14 == 3 && (v12 & 2) == 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = (v14 == 2) & v13;
  }

  webrtc::Candidate::ToSanitizedCopy(v8, v10, v15, 0, &v21);
  webrtc::Candidate::operator=(&v24, &v21);
  webrtc::Candidate::~Candidate(&v21);
  v16 = (*(**(this + 136) + 24))(*(this + 136));
  webrtc::P2PTransportChannel::SanitizeRemoteCandidate(&v21, this, v16);
  webrtc::Candidate::operator=(&v59[1], &v21);
  webrtc::Candidate::~Candidate(&v21);
  *a2 = &unk_2882976C0;
  webrtc::Candidate::Candidate((a2 + 8), &v24);
  webrtc::Candidate::Candidate((a2 + 440), &v59[1]);
  *(a2 + 872) = 1;
  webrtc::Candidate::~Candidate(&v59[1]);
  webrtc::Candidate::~Candidate(&v24.__r_.__value_.__l.__data_);
}

void webrtc::P2PTransportChannel::SanitizeRemoteCandidate(webrtc::P2PTransportChannel *this, const webrtc::Candidate *a2, uint64_t a3)
{
  v5 = *(a3 + 103);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 88);
  }

  if (v5 >= 6)
  {
    if (v6 >= 0)
    {
      v10 = a3 + 80;
    }

    else
    {
      v10 = *(a3 + 80);
    }

    v11 = v10 + v5;
    v12 = *(v11 - 6);
    v13 = *(v11 - 2);
    v14 = v12 == *".local" && v13 == *"al";
    v7 = v14;
    v8 = *(a3 + 208);
    if (v8 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a3 + 208);
    if (v8 != 2)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_35;
    }
  }

  v15 = *(a3 + 183);
  if (v15 >= 0)
  {
    v16 = (a3 + 160);
  }

  else
  {
    v16 = *(a3 + 160);
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 183);
  }

  else
  {
    v17 = *(a3 + 168);
  }

  v18 = *(a2 + 155);
  v19 = *(a2 + 154);
  if (v18 == v19)
  {
LABEL_33:
    v9 = v18 == v19;
  }

  else
  {
    v20 = v18 - 56;
    do
    {
      v21 = *(v20 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v20 + 8);
      }

      if (v21 == v17)
      {
        v23 = v22 >= 0 ? v20 : *v20;
        if (!memcmp(v16, v23, v17))
        {
          v18 = v20 + 56;
          goto LABEL_33;
        }
      }

      v14 = v20 == v19;
      v20 -= 56;
    }

    while (!v14);
    v9 = 1;
  }

LABEL_35:
  if (v8 == 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = v7;
  }

  webrtc::Candidate::ToSanitizedCopy(a3, v24, 0, v9, this);
}

void webrtc::CandidatePair::~CandidatePair(void **this)
{
  webrtc::Candidate::~Candidate(this + 55);
  webrtc::Candidate::~Candidate(this + 1);
}

{
  webrtc::Candidate::~Candidate(this + 55);
  webrtc::Candidate::~Candidate(this + 1);

  JUMPOUT(0x2743DA540);
}

void webrtc::P2PTransportChannel::ToString(std::string *this, uint64_t a2, char *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v66 = 1;
  if (v65 <= "_" && v65 + 1 > "_")
  {
    goto LABEL_159;
  }

  LOWORD(v65[0]) = 95;
  v68 = 1;
  if (v67 <= "R" && v67 + 1 > "R")
  {
    goto LABEL_159;
  }

  LOWORD(v67[0]) = 82;
  v62 = 1;
  if (v61 <= "_" && v61 + 1 > "_")
  {
    goto LABEL_159;
  }

  LOWORD(v61[0]) = 95;
  v64 = 1;
  if (v63 <= "W" && v63 + 1 > "W")
  {
    goto LABEL_159;
  }

  LOWORD(v63[0]) = 87;
  *&v57.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v57 <= "Channel[" && &v57.__r_.__value_.__r.__words[1] > "Channel[")
  {
    goto LABEL_159;
  }

  v57.__r_.__value_.__r.__words[0] = 0x5B6C656E6E616843;
  *(&v57.__r_.__value_.__s + 23) = 8;
  v5 = *(a2 + 967);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = *(a2 + 944);
    v5 = *(a2 + 952);
    v7 = v5 == 0;
    if (!v6 && v5)
    {
      goto LABEL_159;
    }
  }

  else
  {
    v6 = (a2 + 944);
    v7 = v5 == 0;
  }

  if (v5 > 0xE)
  {
    if (v5 - 0x7FFFFFFFFFFFFFEFLL > 0x800000000000001ELL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v7)
  {
    size = 0;
    LODWORD(v9) = 8;
  }

  else
  {
    if (&v57.__r_.__value_.__r.__words[1] <= v6 && &v57.__r_.__value_.__r.__words[1] + v5 > v6)
    {
      goto LABEL_159;
    }

    memmove(&v57.__r_.__value_.__r.__words[1], v6, v5);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v5 + 8;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v5 + 8;
    }

    v57.__r_.__value_.__s.__data_[v5 + 8] = 0;
    LODWORD(v9) = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    size = v57.__r_.__value_.__l.__size_;
  }

  v10 = v9;
  v9 = v9;
  if ((v9 & 0x80u) == 0)
  {
    v11 = 22;
  }

  else
  {
    v11 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = size;
  }

  if (v11 == v9)
  {
    std::string::__grow_by_and_replace(&v57, v11, 1uLL, v11, v11, 0, 1uLL, "|");
  }

  else
  {
    v12 = v57.__r_.__value_.__r.__words[0];
    if (v10 >= 0)
    {
      v12 = &v57;
    }

    v13 = v12 + v9;
    if (v12 + v9 <= "|" && v13 + 1 > "|")
    {
      goto LABEL_159;
    }

    *v13 = 124;
    v14 = v9 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v14;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v14 & 0x7F;
    }

    v12->__r_.__value_.__s.__data_[v14] = 0;
  }

  v15 = *(a2 + 968);
  v59 = 0;
  v60 = 0x1600000000000000;
  __p = 0;
  v16 = absl::numbers_internal::FastIntToBuffer(v15, &__p, a3);
  v17 = v16 - &__p;
  if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
  {
    if (v59 < v17)
    {
      goto LABEL_160;
    }

    p_p = __p;
    v59 = v16 - &__p;
  }

  else
  {
    if (v17 > SHIBYTE(v60))
    {
      goto LABEL_160;
    }

    HIBYTE(v60) = v16 - &__p;
    p_p = &__p;
  }

  p_p[v17] = 0;
  if (v60 >= 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p;
  }

  if (v60 >= 0)
  {
    v20 = HIBYTE(v60);
  }

  else
  {
    v20 = v59;
  }

  if (!v19 && v20)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = 22;
  }

  else
  {
    v21 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v57.__r_.__value_.__l.__size_;
  }

  if (v21 - v22 < v20)
  {
    std::string::__grow_by_and_replace(&v57, v21, v22 + v20 - v21, v22, v22, 0, v20, v19);
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_62;
  }

  if (!v20)
  {
LABEL_72:
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_62:
    operator delete(__p);
    goto LABEL_73;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v57;
  }

  else
  {
    v23 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_159;
  }

  v24 = v23 + v22;
  if (v23 + v22 <= v19 && &v24[v20] > v19)
  {
    goto LABEL_159;
  }

  v25 = v20;
  memmove(v24, v19, v20);
  v26 = v22 + v25;
  if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v57.__r_.__value_.__s + 23) = v26 & 0x7F;
    v23->__r_.__value_.__s.__data_[v26] = 0;
    goto LABEL_72;
  }

  v57.__r_.__value_.__l.__size_ = v22 + v25;
  v23->__r_.__value_.__s.__data_[v26] = 0;
  if (SHIBYTE(v60) < 0)
  {
    goto LABEL_62;
  }

LABEL_73:
  v27 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = 22;
  }

  else
  {
    v28 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v57.__r_.__value_.__l.__size_;
  }

  if (v28 == v27)
  {
    std::string::__grow_by_and_replace(&v57, v28, 1uLL, v28, v28, 0, 1uLL, "|");
    v29 = &v65[3 * *(a2 + 1436)];
    v30 = *(v29 + 23);
    if ((v30 & 0x8000000000000000) == 0)
    {
LABEL_80:
      v31 = v30 == 0;
      v32 = v29;
      goto LABEL_91;
    }
  }

  else
  {
    v33 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v33 = v57.__r_.__value_.__r.__words[0];
    }

    v34 = v33 + v27;
    if (v33 + v27 <= "|" && v34 + 1 > "|")
    {
      goto LABEL_159;
    }

    *v34 = 124;
    v35 = v27 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v35;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v35 & 0x7F;
    }

    v33->__r_.__value_.__s.__data_[v35] = 0;
    v29 = &v65[3 * *(a2 + 1436)];
    v30 = *(v29 + 23);
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_80;
    }
  }

  v32 = *v29;
  v30 = v29[1];
  v31 = v30 == 0;
  if (!*v29 && v30)
  {
    goto LABEL_159;
  }

LABEL_91:
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = 22;
  }

  else
  {
    v36 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v57.__r_.__value_.__l.__size_;
  }

  if (v36 - v37 >= v30)
  {
    if (!v31)
    {
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v57;
      }

      else
      {
        v42 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_159;
      }

      v43 = v42 + v37;
      if (v42 + v37 <= v32 && &v43[v30] > v32)
      {
        goto LABEL_159;
      }

      v44 = v30;
      memmove(v43, v32, v30);
      v45 = v37 + v44;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        v57.__r_.__value_.__l.__size_ = v37 + v44;
        v42->__r_.__value_.__s.__data_[v45] = 0;
        v38 = &v61[3 * *(a2 + 1437)];
        v39 = *(v38 + 23);
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        goto LABEL_112;
      }

      *(&v57.__r_.__value_.__s + 23) = v45 & 0x7F;
      v42->__r_.__value_.__s.__data_[v45] = 0;
    }

    v38 = &v61[3 * *(a2 + 1437)];
    v39 = *(v38 + 23);
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_112:
    v41 = v39 == 0;
    v40 = v38;
    goto LABEL_113;
  }

  std::string::__grow_by_and_replace(&v57, v36, v37 + v30 - v36, v37, v37, 0, v30, v32);
  v38 = &v61[3 * *(a2 + 1437)];
  v39 = *(v38 + 23);
  if ((v39 & 0x8000000000000000) == 0)
  {
    goto LABEL_112;
  }

LABEL_99:
  v40 = *v38;
  v39 = v38[1];
  v41 = v39 == 0;
  if (!*v38 && v39)
  {
    goto LABEL_159;
  }

LABEL_113:
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = 22;
  }

  else
  {
    v46 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v57.__r_.__value_.__l.__size_;
  }

  if (v46 - v47 >= v39)
  {
    if (!v41)
    {
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = &v57;
      }

      else
      {
        v48 = v57.__r_.__value_.__r.__words[0];
      }

      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_159;
      }

      v49 = v48 + v47;
      if (v48 + v47 <= v40 && &v49[v39] > v40)
      {
        goto LABEL_159;
      }

      v50 = v39;
      memmove(v49, v40, v39);
      v51 = v47 + v50;
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        v57.__r_.__value_.__l.__size_ = v47 + v50;
      }

      else
      {
        *(&v57.__r_.__value_.__s + 23) = v51 & 0x7F;
      }

      v48->__r_.__value_.__s.__data_[v51] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v57, v46, v47 + v39 - v46, v47, v47, 0, v39, v40);
  }

  v52 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v57.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v52 = v57.__r_.__value_.__l.__size_;
  }

  if (v53 == v52)
  {
    std::string::__grow_by_and_replace(&v57, v53, 1uLL, v53, v53, 0, 1uLL, "]");
    *this = v57;
    if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v54 = &v57;
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v54 = v57.__r_.__value_.__r.__words[0];
    }

    v55 = v54 + v52;
    if (v54 + v52 <= "]" && v55 + 1 > "]")
    {
      goto LABEL_159;
    }

    *v55 = 93;
    v56 = v52 + 1;
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      v57.__r_.__value_.__l.__size_ = v56;
    }

    else
    {
      *(&v57.__r_.__value_.__s + 23) = v56 & 0x7F;
    }

    v54->__r_.__value_.__s.__data_[v56] = 0;
    *this = v57;
    if ((v64 & 0x80000000) == 0)
    {
LABEL_143:
      if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_156;
    }
  }

  operator delete(v63[0]);
  if ((v62 & 0x80000000) == 0)
  {
LABEL_144:
    if ((v68 & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_157;
  }

LABEL_156:
  operator delete(v61[0]);
  if ((v68 & 0x80000000) == 0)
  {
LABEL_145:
    if ((v66 & 0x80000000) == 0)
    {
      return;
    }

LABEL_158:
    operator delete(v65[0]);
    return;
  }

LABEL_157:
  operator delete(v67[0]);
  if (v66 < 0)
  {
    goto LABEL_158;
  }
}

std::string *webrtc::P2PTransportChannel::SetIceParameters(uint64_t a1, _BYTE **a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v22[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc";
    v22[1] = 3841;
    v22[2] = &v21;
    v22[3] = "Set ICE ufrag: ";
    v23 = v22;
    (*(*a1 + 16))(a1);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v4, v5, v6, v7, v8, v9, v10, *v23);
  }

  result = (a1 + 1176);
  if ((a1 + 1176) != a2)
  {
    v12 = *(a2 + 23);
    if (*(a1 + 1199) < 0)
    {
      if (v12 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (v12 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = a2[1];
      }

      std::string::__assign_no_alias<false>(result, v16, v17);
      result = (a1 + 1200);
      v14 = (a2 + 3);
      v15 = *(a2 + 47);
      if (*(a1 + 1223) < 0)
      {
        goto LABEL_18;
      }
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(result, *a2, a2[1]);
      result = (a1 + 1200);
      v14 = (a2 + 3);
      v15 = *(a2 + 47);
      if (*(a1 + 1223) < 0)
      {
LABEL_18:
        if ((v15 & 0x80u) == 0)
        {
          v19 = v14;
        }

        else
        {
          v19 = a2[3];
        }

        if ((v15 & 0x80u) == 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = a2[4];
        }

        result = std::string::__assign_no_alias<false>(result, v19, v20);
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a2;
      *(a1 + 1192) = a2[2];
      *&result->__r_.__value_.__l.__data_ = v13;
      result = (a1 + 1200);
      v14 = (a2 + 3);
      v15 = *(a2 + 47);
      if (*(a1 + 1223) < 0)
      {
        goto LABEL_18;
      }
    }

    if ((v15 & 0x80) != 0)
    {
      result = std::string::__assign_no_alias<true>(result, a2[3], a2[4]);
    }

    else
    {
      v18 = *v14;
      result->__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&result->__r_.__value_.__l.__data_ = v18;
    }
  }

LABEL_26:
  *(a1 + 1224) = *(a2 + 48);
  return result;
}

uint64_t webrtc::P2PTransportChannel::SetRemoteIceParameters(uint64_t a1, __int128 *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }

  v11 = (*(*a1 + 152))(a1);
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = *(v11 + 23);
  }

  else
  {
    v13 = *(v11 + 8);
  }

  v14 = *(a2 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 1);
  }

  if (v13 != v14)
  {
    goto LABEL_31;
  }

  v16 = v12 >= 0 ? v11 : *v11;
  v17 = v15 >= 0 ? a2 : *a2;
  v18 = v11;
  if (memcmp(v16, v17, v13))
  {
    goto LABEL_31;
  }

  v19 = *(v18 + 47);
  if (v19 >= 0)
  {
    v20 = *(v18 + 47);
  }

  else
  {
    v20 = *(v18 + 32);
  }

  v21 = *(a2 + 47);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a2 + 4);
  }

  if (v20 != v21 || (v19 >= 0 ? (v23 = (v18 + 24)) : (v23 = *(v18 + 24)), v22 >= 0 ? (v24 = a2 + 24) : (v24 = *(a2 + 3)), memcmp(v23, v24, v20) || *(v18 + 48) != *(a2 + 48)))
  {
LABEL_31:
    v25 = *(a1 + 1240);
    v26 = *(a1 + 1248);
    if (v25 >= v26)
    {
      v29 = *(a1 + 1232);
      v30 = 0x6DB6DB6DB6DB6DB7 * ((v25 - v29) >> 3) + 1;
      if (v30 > 0x492492492492492)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v31 = 0x6DB6DB6DB6DB6DB7 * ((v26 - v29) >> 3);
      v32 = 2 * v31;
      if (2 * v31 <= v30)
      {
        v32 = v30;
      }

      if (v31 >= 0x249249249249249)
      {
        v33 = 0x492492492492492;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        if (v33 <= 0x492492492492492)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v25)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(*(a1 + 1240), *a2, *(a2 + 1));
        if ((*(a2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v27 = *a2;
        *(v25 + 16) = *(a2 + 2);
        *v25 = v27;
        if ((*(a2 + 47) & 0x80000000) == 0)
        {
LABEL_35:
          v28 = *(a2 + 24);
          *(v25 + 40) = *(a2 + 5);
          *(v25 + 24) = v28;
LABEL_47:
          *(v25 + 48) = *(a2 + 48);
          *(a1 + 1240) = v25 + 56;
          goto LABEL_48;
        }
      }

      std::string::__init_copy_ctor_external((v25 + 24), *(a2 + 3), *(a2 + 4));
      goto LABEL_47;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_48:
  v34 = *(a1 + 1120);
  for (i = *(a1 + 1128); v34 != i; v34 += 440)
  {
    v36 = *(v34 + 183);
    if (v36 >= 0)
    {
      v37 = *(v34 + 183);
    }

    else
    {
      v37 = *(v34 + 168);
    }

    v38 = *(a2 + 23);
    v39 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v38 = *(a2 + 1);
    }

    if (v37 != v38)
    {
      continue;
    }

    v40 = v36 >= 0 ? (v34 + 160) : *(v34 + 160);
    v41 = v39 >= 0 ? a2 : *a2;
    if (memcmp(v40, v41, v37))
    {
      continue;
    }

    if ((*(v34 + 207) & 0x8000000000000000) != 0)
    {
      if (*(v34 + 192))
      {
        continue;
      }
    }

    else if (*(v34 + 207))
    {
      continue;
    }

    v42 = *(a2 + 47);
    if (v42 >= 0)
    {
      v43 = a2 + 24;
    }

    else
    {
      v43 = *(a2 + 3);
    }

    if (v42 >= 0)
    {
      v44 = *(a2 + 47);
    }

    else
    {
      v44 = *(a2 + 4);
    }

    if (!v43 && v44)
    {
      goto LABEL_77;
    }

    std::string::__assign_external((v34 + 184), v43, v44);
  }

LABEL_78:
  v45 = *(a1 + 1096);
  v46 = *(a1 + 1104);
  while (v45 != v46)
  {
    v47 = *v45++;
    webrtc::Connection::MaybeSetRemoteIceParametersAndGeneration(v47, a2, -1 - 1227133513 * ((*(a1 + 1240) - *(a1 + 1232)) >> 3));
  }

  v48 = *(**(a1 + 1528) + 72);

  return v48();
}

void webrtc::P2PTransportChannel::SetIceConfig(webrtc::P2PTransportChannel *this, const webrtc::IceConfig *a2)
{
  v4 = *(a2 + 4);
  if (*(this + 329) != v4)
  {
    if (*(this + 127) == *(this + 128))
    {
      *(this + 329) = v4;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v19 = (this + 1300);
  v20 = (this + 1308);
  v21 = *(this + 1312);
  v22 = *(a2 + 12);
  if (v21 == 1 && v22 != 0)
  {
    v21 = *v20;
    v22 = *(a2 + 2);
  }

  if (v21 != v22)
  {
    v24 = *(a2 + 2);
    *(this + 1312) = *(a2 + 12);
    *v20 = v24;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v32 = *(this + 1304);
  v33 = *(a2 + 4);
  if (v32 == 1 && v33 != 0)
  {
    v32 = *v19;
    v33 = *a2;
  }

  if (v32 != v33)
  {
    v35 = *a2;
    *(this + 1304) = *(a2 + 4);
    *v19 = v35;
    v36 = *(this + 137);
    for (i = *(this + 138); v36 != i; *(v38 + 2568) = BYTE4(v39))
    {
      v38 = *v36++;
      v39 = *v19;
      *(v38 + 2564) = *v19;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  *(this + 1320) = *(a2 + 20);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }

  v54 = (this + 1324);
  v55 = *(this + 1328);
  v56 = *(a2 + 28);
  if (v55 == 1 && *(a2 + 28))
  {
    v55 = *v54;
    v56 = *(a2 + 6);
  }

  if (v55 != v56)
  {
    v57 = *(a2 + 6);
    *(this + 1328) = *(a2 + 28);
    *v54 = v57;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v58, v59, v60, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v65 = *(a2 + 32);
  if (*(this + 1332) != v65)
  {
    if (*(this + 137) == *(this + 138))
    {
      *(this + 1332) = v65;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v73, v74, v75, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v80 = *(a2 + 33);
  *(this + 1333) = v80;
  if (v80 == 1 && *(this + 329) != 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v81, v82, v83, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }

  v88 = (this + 1336);
  v89 = *(this + 1340);
  v90 = *(a2 + 40);
  if (v89 == 1 && *(a2 + 40))
  {
    v89 = *v88;
    v90 = *(a2 + 9);
  }

  if (v89 != v90)
  {
    v91 = *(a2 + 9);
    *(this + 1340) = *(a2 + 40);
    *v88 = v91;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v92, v93, v94, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v99 = (this + 1344);
  v100 = *(this + 1348);
  v101 = *(a2 + 48);
  if (v100 == 1 && *(a2 + 48))
  {
    v100 = *v99;
    v101 = *(a2 + 11);
  }

  if (v100 != v101)
  {
    v102 = *(a2 + 11);
    *(this + 1348) = *(a2 + 48);
    *v99 = v102;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v103, v104, v105, v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v110 = *(a2 + 13);
  if (*(this + 338) != v110)
  {
    *(this + 338) = v110;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v111, v112, v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v118 = (this + 1356);
  v119 = *(this + 1360);
  v120 = *(a2 + 60);
  if (v119 == 1 && *(a2 + 60))
  {
    v119 = *v118;
    v120 = *(a2 + 14);
  }

  if (v119 != v120)
  {
    v121 = *(a2 + 14);
    *(this + 1360) = *(a2 + 60);
    *v118 = v121;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v122, v123, v124, v125, v126, v127, v128, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v129 = (this + 1364);
  v130 = *(this + 1368);
  v131 = *(a2 + 68);
  if (v130 == 1 && *(a2 + 68))
  {
    v130 = *v129;
    v131 = *(a2 + 16);
  }

  if (v130 != v131)
  {
    v132 = *(a2 + 16);
    *(this + 1368) = *(a2 + 68);
    *v129 = v132;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v133, v134, v135, v136, v137, v138, v139, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v140 = (this + 1372);
  v141 = *(this + 1376);
  v142 = *(a2 + 76);
  if (v141 == 1 && *(a2 + 76))
  {
    v141 = *v140;
    v142 = *(a2 + 18);
  }

  if (v141 != v142)
  {
    v143 = *(a2 + 18);
    *(this + 1376) = *(a2 + 76);
    *v140 = v143;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v144, v145, v146, v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v151 = (this + 1380);
  v152 = *(this + 1384);
  v153 = *(a2 + 84);
  if (v152 == 1 && *(a2 + 84))
  {
    v152 = *v151;
    v153 = *(a2 + 20);
  }

  if (v152 != v153)
  {
    v154 = *(a2 + 20);
    *(this + 1384) = *(a2 + 84);
    *v151 = v154;
    v155 = *(this + 137);
    for (j = *(this + 138); v155 != j; *(v157 + 2536) = v158)
    {
      v157 = *v155++;
      v158 = *v151;
      *(v157 + 2540) = *(this + 1384);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v159, v160, v161, v162, v163, v164, v165, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v166 = (this + 1388);
  v167 = *(this + 1392);
  v168 = *(a2 + 92);
  if (v167 == 1 && v168 != 0)
  {
    v167 = *v166;
    v168 = *(a2 + 22);
  }

  if (v167 != v168)
  {
    v170 = *(a2 + 22);
    *(this + 1392) = *(a2 + 92);
    *v166 = v170;
    v171 = *(this + 137);
    for (k = *(this + 138); v171 != k; *(v173 + 2544) = v174)
    {
      v173 = *v171++;
      v174 = *v166;
      *(v173 + 2548) = *(this + 1392);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v175, v176, v177, v178, v179, v180, v181, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v182 = (this + 1396);
  v183 = *(this + 1400);
  v184 = *(a2 + 100);
  if (v183 == 1 && v184 != 0)
  {
    v183 = *v182;
    v184 = *(a2 + 24);
  }

  if (v183 != v184)
  {
    v186 = *(a2 + 24);
    *(this + 1400) = *(a2 + 100);
    *v182 = v186;
    v187 = *(this + 137);
    for (m = *(this + 138); v187 != m; *(v189 + 2552) = v190)
    {
      v189 = *v187++;
      v190 = *v182;
      *(v189 + 2556) = *(this + 1400);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v191, v192, v193, v194, v195, v196, v197, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v198 = (this + 1412);
  v199 = *(this + 1416);
  v200 = *(a2 + 116);
  if (v199 == 1 && v200 != 0)
  {
    v199 = *v198;
    v200 = *(a2 + 28);
  }

  if (v199 != v200)
  {
    v202 = *(a2 + 28);
    *(this + 1416) = *(a2 + 116);
    *v198 = v202;
    (*(**(this + 191) + 72))(*(this + 191), 2);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v203, v204, v205, v206, v207, v208, v209, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  v210 = (this + 1404);
  v211 = *(this + 1408);
  v212 = *(a2 + 108);
  if (v211 == 1 && *(a2 + 108))
  {
    v211 = *v210;
    v212 = *(a2 + 26);
  }

  if (v211 != v212)
  {
    v213 = *(a2 + 26);
    *(this + 1408) = *(a2 + 108);
    *v210 = v213;
    (*(**(*(this + 128) - 8) + 88))(*(*(this + 128) - 8));
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v214, v215, v216, v217, v218, v219, v220, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }

  if (*(this + 1340))
  {
    v221 = (this + 1336);
  }

  else
  {
    v221 = &webrtc::REGATHER_ON_FAILED_NETWORKS_INTERVAL;
  }

  v222 = *v221;
  v223 = *(this + 159);
  if (*(v223 + 56))
  {
    v224 = *(v223 + 64);
    *(v223 + 64) = v222;
    if (v224 != v222)
    {
      webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(v223);
    }
  }

  else
  {
    *(v223 + 64) = v222;
  }

  *(this + 355) = *(a2 + 30);
  (*(**(this + 122) + 40))(*(this + 122));
  (*(**(this + 191) + 16))(*(this + 191), this + 1300);
  v225 = *(a2 + 124);
  if (*(this + 1424) != v225)
  {
    *(this + 1424) = v225;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v226, v227, v228, v229, v230, v231, v232, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }
}

void webrtc::P2PTransportChannel::MaybeStartGathering(webrtc::P2PTransportChannel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (this + 1176);
  v10 = *(this + 1199);
  if (v10 < 0)
  {
    if (!*(this + 148))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 1199))
  {
LABEL_15:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    return;
  }

  v11 = *(this + 1223);
  if (v11 < 0)
  {
    if (!*(this + 151))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 1223))
  {
    goto LABEL_15;
  }

  v12 = this + 1200;
  v13 = *(this + 127);
  v14 = *(this + 128);
  if (v13 == v14)
  {
LABEL_27:
    if (*(this + 316) != 1)
    {
      *(this + 316) = 1;
      if (*(this + 832) == 1)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v60);
        webrtc::P2PTransportChannel::OnUnknownAddress(v53, v54, v55, v56, v57, v58, v59);
        return;
      }

      v30 = this + 832;
      *(this + 832) = 1;
      v31 = *(this + 101);
      v32 = *(this + 102);
      if (v31 == v32)
      {
        *v30 = 0;
      }

      else
      {
        v33 = 0;
        do
        {
          (*(v31 + 40))(v31 + 8, this);
          v34 = *v31;
          v31 += 56;
          v33 |= v34 == v30;
        }

        while (v31 != v32);
        *v30 = 0;
        if (v33)
        {
          webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 101, this + 832);
        }
      }

      v13 = *(this + 127);
      v14 = *(this + 128);
    }

    while (v13 != v14)
    {
      if (((*(**v13 + 64))() & 1) == 0)
      {
        (*(**v13 + 32))();
      }

      v13 += 8;
    }

    v35 = *(this + 122);
    v36 = (*(*this + 16))(this);
    v37 = *(v36 + 23);
    if (v37 >= 0)
    {
      v38 = v36;
    }

    else
    {
      v38 = *v36;
    }

    if (v37 >= 0)
    {
      v39 = *(v36 + 23);
    }

    else
    {
      v39 = *(v36 + 8);
    }

    v40 = (*(*this + 96))(this);
    v41 = *(this + 1199);
    if ((v41 & 0x8000000000000000) != 0)
    {
      v42 = *(this + 147);
      v41 = *(this + 148);
      v43 = *(this + 1223);
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v42 = v9;
      v43 = *(this + 1223);
      if ((v43 & 0x8000000000000000) == 0)
      {
LABEL_48:
        v44 = (this + 1200);
        goto LABEL_51;
      }
    }

    v44 = *(this + 150);
    v43 = *(this + 151);
LABEL_51:
    webrtc::PortAllocator::TakePooledSession(v44, v43, v35, v38, v39, v40, v42, v41, &v63);
    if (v63)
    {
      v62 = v63;
      v63 = 0;
      webrtc::P2PTransportChannel::AddAllocatorSession(this, &v62);
    }

    v45 = *(this + 122);
    v46 = (*(*this + 16))(this);
    v47 = *(v46 + 23);
    if (v47 >= 0)
    {
      v48 = v46;
    }

    else
    {
      v48 = *v46;
    }

    if (v47 >= 0)
    {
      v49 = *(v46 + 23);
    }

    else
    {
      v49 = *(v46 + 8);
    }

    v50 = (*(*this + 96))(this);
    v51 = *(this + 1199);
    if (v51 < 0)
    {
      v9 = *(this + 147);
      v51 = *(this + 148);
    }

    v52 = *(this + 1223);
    if (v52 < 0)
    {
      v12 = *(this + 150);
      v52 = *(this + 151);
    }

    v61 = (*(*v45 + 64))(v45, v48, v49, v50, v9, v51, v12, v52);
    (*(*v61 + 16))(v61, v45[35]);
    webrtc::P2PTransportChannel::AddAllocatorSession(this, &v61);
  }

  v15 = *(v14 - 8);
  v16 = *(v15 + 511);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v17 = *(v15 + 488);
    v16 = *(v15 + 496);
    v18 = *(v15 + 535);
    if ((v18 & 0x8000000000000000) == 0)
    {
LABEL_10:
      v19 = (v15 + 512);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v17 = (v15 + 488);
    v18 = *(v15 + 535);
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }
  }

  v19 = *(v15 + 512);
  v18 = *(v15 + 520);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_11:
    v20 = v9;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v21 = *(this + 150);
    v11 = *(this + 151);
    if (v16 != v10)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_19:
  v20 = *(this + 147);
  v10 = *(this + 148);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v21 = this + 1200;
  if (v16 != v10)
  {
    goto LABEL_27;
  }

LABEL_21:
  v29 = !memcmp(v17, v20, v16) && v18 == v11;
  if (!v29 || memcmp(v19, v21, v18))
  {
    goto LABEL_27;
  }
}

void webrtc::P2PTransportChannel::OnUnknownAddress(webrtc::P2PTransportChannel *a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *(a1 + 140);
  v13 = *(a1 + 141);
  while (v12 != v13)
  {
    v14 = *(v12 + 183);
    if (v14 >= 0)
    {
      v15 = *(v12 + 183);
    }

    else
    {
      v15 = *(v12 + 168);
    }

    v16 = *(a6 + 23);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a6 + 8);
    }

    if (v15 == v16)
    {
      v18 = v14 >= 0 ? (v12 + 160) : *(v12 + 160);
      v19 = v17 >= 0 ? a6 : *a6;
      if (!memcmp(v18, v19, v15) && webrtc::SocketAddress::operator==(v12 + 80, a3))
      {
        v20 = (v12 + 32);
        v21 = strlen(*(&webrtc::PROTO_NAMES + a4));
        v22 = *(v12 + 55);
        if (v22 < 0)
        {
          if (v21 == *(v12 + 40))
          {
            if (v21 == -1)
            {
              goto LABEL_95;
            }

            v20 = *v20;
LABEL_3:
            if (!memcmp(v20, *(&webrtc::PROTO_NAMES + a4), v21))
            {
              goto LABEL_26;
            }
          }
        }

        else if (v21 == v22)
        {
          goto LABEL_3;
        }
      }
    }

    v12 += 440;
  }

  v12 = 0;
LABEL_26:
  __dst = 0uLL;
  v126 = 0;
  v23 = *(a6 + 23);
  if (v23 >= 0)
  {
    v24 = a6;
  }

  else
  {
    v24 = *a6;
  }

  if (v23 >= 0)
  {
    v25 = *(a6 + 23);
  }

  else
  {
    v25 = *(a6 + 8);
  }

  v26 = *(a1 + 155);
  v27 = *(a1 + 154);
  if (v26 != v27)
  {
    v28 = v26 - 56;
    while (1)
    {
      v30 = *(v28 + 23);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v28 + 8);
      }

      if (v30 == v25)
      {
        v32 = v31 >= 0 ? v28 : *v28;
        if (!memcmp(v24, v32, v25))
        {
          break;
        }
      }

      v29 = v28 == v27;
      v28 -= 56;
      if (v29)
      {
        goto LABEL_47;
      }
    }

    v26 = v28 + 56;
  }

  if (v26 == v27)
  {
LABEL_47:
    v33 = 0;
  }

  else
  {
    v33 = -1227133513 * ((v26 - v27) >> 3) - 1;
    if (&__dst != (v26 - 32))
    {
      if (*(v26 - 9) < 0)
      {
        std::string::__assign_no_alias<true>(&__dst, *(v26 - 32), *(v26 - 24));
      }

      else
      {
        v34 = *(v26 - 32);
        v126 = *(v26 - 16);
        __dst = v34;
      }
    }
  }

  memset(v88, 0, sizeof(v88));
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v35, v36, v37, v38, __src);
LABEL_95:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v89 = 1;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0;
  v95 = &unk_28828CE50;
  v100 = 0;
  v96 = 0;
  v97 = 0u;
  v98 = 0;
  v99 = 0;
  v101 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v105 = 0;
  v108 = 0;
  v107 = 0u;
  v106 = 0u;
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v112 = &unk_28828CE50;
  v117 = 0;
  memset(&__p[1], 0, 20);
  v113 = 0;
  v114 = *(&__p[1] + 4);
  v115 = 0;
  v116 = 0;
  v123 = 0;
  v122 = 0;
  v124 = 0;
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  v118 = 0u;
  if (v12)
  {
    webrtc::Candidate::operator=(v88, v12);
  }

  else
  {
    v46 = *(a5 + 8);
    v47 = *(a5 + 16);
    if (v46 == v47)
    {
LABEL_61:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      }

      (*(*a2 + 152))(a2, a5, a3, 400, "Bad Request", 11);
      webrtc::Candidate::~Candidate(v88);
      if (SHIBYTE(v126) < 0)
      {
        goto LABEL_73;
      }

      return;
    }

    v48 = *(a5 + 8);
    while (*(*v48 + 8) != 36)
    {
      v48 += 8;
      if (v48 == v47)
      {
        goto LABEL_61;
      }
    }

    v84 = *(*v48 + 12);
    while (*(*v46 + 8) != 49239)
    {
      v46 += 8;
      if (v46 == v47)
      {
        LOWORD(v71) = 0;
        LOWORD(v83) = 0;
        goto LABEL_80;
      }
    }

    v71 = *(*v46 + 12);
    v83 = HIWORD(v71);
LABEL_80:
    v72 = (*(*a1 + 96))(a1);
    v73 = strlen(*(&webrtc::PROTO_NAMES + a4));
    v74 = *(a6 + 23);
    if (v74 >= 0)
    {
      v75 = a6;
    }

    else
    {
      v75 = *a6;
    }

    if (v74 >= 0)
    {
      v76 = *(a6 + 23);
    }

    else
    {
      v76 = *(a6 + 8);
    }

    v77 = HIBYTE(v126);
    p_dst = &__dst;
    if (v126 < 0)
    {
      v77 = *(&__dst + 1);
      p_dst = __dst;
    }

    webrtc::Candidate::Candidate(__p, v72, *(&webrtc::PROTO_NAMES + a4), v73, a3, v84, v75, v76, p_dst, v77, 2, v33, "", 0, v83, v71);
    webrtc::Candidate::operator=(v88, __p);
    webrtc::Candidate::~Candidate(__p);
    if (a4 == 1)
    {
      if (SBYTE7(v119) < 0)
      {
        *(&v118 + 1) = 6;
        v81 = v118;
      }

      else
      {
        BYTE7(v119) = 6;
        v81 = &v118;
      }

      strcpy(v81, "active");
    }

    webrtc::Candidate::ComputePrflxFoundation(v88, v79, v80);
  }

  if (!(*(*a2 + 88))(a2, &v93))
  {
    v56 = (*(*a2 + 96))(a2, v88, 0);
    if (v56)
    {
      v57 = v56;
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::Candidate::ToStringInternal(v88, 1, __p);
        webrtc::webrtc_logging_impl::Log("\r\t\t\t\n", v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      webrtc::P2PTransportChannel::AddConnection(a1, v57, v58, v59, v60, v61, v62, v63);
    }

LABEL_72:
    (*(*a2 + 152))(a2, a5, a3, 500, "Server Error", 12);
    webrtc::Candidate::~Candidate(v88);
    if ((SHIBYTE(v126) & 0x80000000) == 0)
    {
      return;
    }

LABEL_73:
    operator delete(__dst);
    return;
  }

  if (!a7)
  {
    goto LABEL_72;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) != 0 || (webrtc::Candidate::ToStringInternal(v88, 1, __p), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc"), (SHIBYTE(__p[2]) & 0x80000000) == 0))
  {
    webrtc::Candidate::~Candidate(v88);
    if ((SHIBYTE(v126) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_73;
  }

  operator delete(__p[0]);
  webrtc::Candidate::~Candidate(v88);
  if (SHIBYTE(v126) < 0)
  {
    goto LABEL_73;
  }
}

uint64_t webrtc::P2PTransportChannel::OnRoleConflict(uint64_t a1)
{
  v2 = a1 + 536;
  result = *(a1 + 544);
  for (*(a1 + 560) = result; result != v2; result = *(a1 + 560))
  {
    v5 = *(result + 16);
    v4 = result + 16;
    *(a1 + 560) = *(v4 - 8);
    v5(v4, a1);
  }

  return result;
}

uint64_t webrtc::P2PTransportChannel::OnSentPacket(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 240;
  result = *(a1 + 248);
  for (*(a1 + 264) = result; result != v3; result = *(a1 + 264))
  {
    v7 = *(result + 16);
    v6 = result + 16;
    *(a1 + 264) = *(v6 - 8);
    v7(v6, a1, a2);
  }

  return result;
}

void webrtc::P2PTransportChannel::CreateConnection(webrtc::P2PTransportChannel *this, webrtc::PortInterface *a2, const webrtc::Candidate *a3, webrtc::PortInterface *a4)
{
  v8 = *(a3 + 55);
  if (v8 >= 0)
  {
    v9 = a3 + 32;
  }

  else
  {
    v9 = *(a3 + 4);
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 55);
  }

  else
  {
    v10 = *(a3 + 5);
  }

  if (!(*(*a2 + 72))(a2, v9, v10))
  {
    return;
  }

  if (*(this + 1608) == 1 && (v11 = (*(*a2 + 16))(a2), v12 = *(a3 + 52), v11 != v12) && (v11 != 3 ? (v13 = v12 == 3) : (v13 = 1), v13))
  {
    v14 = v11;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      return;
    }

    webrtc::P2PTransportChannel::ToString(&v50, this, v15);
    if ((v14 - 1) > 2)
    {
      v23 = "host";
      v24 = 4;
    }

    else
    {
      v23 = off_279E94518[v14 - 1];
      v24 = 5;
    }

    __p.__r_.__value_.__r.__words[0] = v23;
    __p.__r_.__value_.__l.__size_ = v24;
    v44 = *(a3 + 52) - 1;
    if (v44 > 2)
    {
      v45 = "host";
      v46 = 4;
    }

    else
    {
      v45 = off_279E94518[v44];
      v46 = 5;
    }

    v48 = v45;
    v49 = v46;
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t\v", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }

  else
  {
    v25 = (*(*a2 + 88))(a2, a3 + 80);
    if (!v25 || (v26 = v25, *((*(*v25 + 24))(v25) + 248) < *(a3 + 62)))
    {
      if (a4)
      {
        v27 = a2 != a4;
      }

      else
      {
        v27 = 2;
      }

      if (a4 || (*(this + 1008) & 1) == 0)
      {
        v28 = (*(*a2 + 96))(a2, a3, v27);
        if (v28)
        {
          webrtc::P2PTransportChannel::AddConnection(this, v28, v29, v30, v31, v32, v33, v34);
        }
      }

      return;
    }

    v35 = (*(*v26 + 24))(v26);
    if (webrtc::Candidate::IsEquivalent(a3, v35) || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) != 0)
    {
      return;
    }

    v36 = (*(*v26 + 24))(v26);
    webrtc::Candidate::ToStringInternal(v36, 1, &v50);
    webrtc::Candidate::ToStringInternal(a3, 1, &__p);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void webrtc::P2PTransportChannel::AddRemoteCandidate(webrtc::P2PTransportChannel *this, std::string *a2)
{
  v4 = a2[7].__r_.__value_.__s.__data_[15];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = a2[7].__r_.__value_.__r.__words[0];
    if (v4)
    {
      v5 = a2[6].__r_.__value_.__r.__words[2];
      v6 = *(this + 155);
      v7 = *(this + 154);
      v8 = v6;
      v9 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

LABEL_19:
    v15 = a2[10].__r_.__value_.__r.__words[1];
    v7 = *(this + 154);
    v6 = *(this + 155);
    if (v15)
    {
      goto LABEL_23;
    }

    if (v7 == v6)
    {
      v15 = 0;
      goto LABEL_28;
    }

    v14 = v6 - v7;
    goto LABEL_22;
  }

  if (!a2[7].__r_.__value_.__s.__data_[15])
  {
    goto LABEL_19;
  }

  v5 = &a2[6].__r_.__value_.__s.__data_[16];
  v6 = *(this + 155);
  v7 = *(this + 154);
  v8 = v6;
  v9 = v6 - v7;
  if (v6 != v7)
  {
LABEL_4:
    v10 = v6 - 56;
    while (1)
    {
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v11 == v4)
      {
        v13 = v12 >= 0 ? v10 : *v10;
        if (!memcmp(v5, v13, v4))
        {
          break;
        }
      }

      v27 = v10 == v7;
      v10 -= 56;
      if (v27)
      {
        goto LABEL_18;
      }
    }

    v14 = v10 + 56 - v7;
    if (v10 + 56 == v7)
    {
      goto LABEL_18;
    }

LABEL_22:
    v15 = -1227133513 * (v14 >> 3) - 1;
    goto LABEL_23;
  }

LABEL_17:
  v14 = v8 - v7;
  if (v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  v15 = -1227133513 * (v9 >> 3);
LABEL_23:
  if (v7 == v6 || v15 >= -1227133513 * ((v6 - v7) >> 3) - 1)
  {
LABEL_28:
    webrtc::Candidate::Candidate(&v73, a2);
    v80 = v15;
    if ((*(*this + 152))(this))
    {
      data = a2[7].__r_.__value_.__s.__data_[15];
      if (data < 0)
      {
        data = a2[7].__r_.__value_.__l.__data_;
      }

      if (!data)
      {
        v24 = (*(*this + 152))(this);
        v25 = v24;
        v26 = *(v24 + 23);
        if ((v26 & 0x8000000000000000) != 0)
        {
          v26 = *(v24 + 8);
          if (*v24)
          {
            v27 = 1;
          }

          else
          {
            v27 = v26 == 0;
          }

          if (!v27)
          {
            goto LABEL_92;
          }

          v25 = *v24;
        }

        std::string::__assign_external(&v78, v25, v26);
      }

      v28 = (*(*this + 152))(this);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v78.__r_.__value_.__l.__size_;
      }

      v30 = *(v28 + 23);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v28 + 8);
      }

      if (size == v30 && ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v32 = &v78) : (v32 = v78.__r_.__value_.__r.__words[0]), v31 >= 0 ? (v33 = v28) : (v33 = *v28), !memcmp(v32, v33, size)))
      {
        v41 = a2[8].__r_.__value_.__s.__data_[15];
        if (v41 < 0)
        {
          v41 = a2[8].__r_.__value_.__l.__data_;
        }

        if (!v41)
        {
          v42 = (*(*this + 152))(this);
          v43 = *(v42 + 47);
          if ((v43 & 0x8000000000000000) != 0)
          {
            v44 = *(v42 + 24);
            v43 = *(v42 + 32);
            if (!v44 && v43)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v44 = (v42 + 24);
          }

          std::string::__assign_external(v79, v44, v43);
        }
      }

      else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      }
    }

    if (v76 || (v77 & 1) != 0)
    {
      goto LABEL_73;
    }

    v45 = v75;
    if ((v75 & 0x80u) != 0)
    {
      v45 = v74[1];
    }

    if (!v45)
    {
LABEL_73:
      webrtc::P2PTransportChannel::FinishAddingRemoteCandidate(this, &v73);
    }

    else if ((*(*(this + 122) + 140) & 3) != 0)
    {
      v46 = *(this + 123);
      if (!v46)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
        }

        goto LABEL_74;
      }

      (*(*v46 + 32))(v85);
      v47 = v85[0];
      v48 = *(this + 193);
      v49 = *(this + 194);
      if (v48 >= v49)
      {
        v59 = *(this + 192);
        v60 = 0x6FB586FB586FB587 * ((v48 - v59) >> 3) + 1;
        if (v60 > 0x94F2094F2094F2)
        {
          goto LABEL_93;
        }

        v61 = 0x6FB586FB586FB587 * ((v49 - v59) >> 3);
        v62 = 2 * v61;
        if (2 * v61 <= v60)
        {
          v62 = v60;
        }

        if (v61 >= 0x4A7904A7904A79)
        {
          v63 = 0x94F2094F2094F2;
        }

        else
        {
          v63 = v62;
        }

        if (v63)
        {
          if (v63 <= 0x94F2094F2094F2)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      else if (v48)
      {
        v50 = webrtc::Candidate::Candidate(v48, &v73);
        v51 = v85[0];
        v85[0] = 0;
        v50[18].__r_.__value_.__r.__words[0] = v51;
        *(this + 193) = v50 + 440;
        v82[0] = this;
        v82[1] = v47;
        v84 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::P2PTransportChannel::ResolveHostnameCandidate(webrtc::Candidate const&)::$_0 &>;
        v83 = absl::internal_any_invocable::LocalManagerTrivial;
        (*(*v47 + 16))(v47, v74, v82);
        v83(1, v82, v82);
        v64 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
        if ((v64 & 1) == 0)
        {
          webrtc::SocketAddress::HostAsSensitiveURIString(v74, &v81);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v65, v66, v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }
        }

        v72 = v85[0];
        v85[0] = 0;
        if (v72)
        {
          (*(*v72 + 8))(v72);
        }

        goto LABEL_74;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_74:
    webrtc::Candidate::~Candidate(&v73.__r_.__value_.__l.__data_);
    return;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }
}

uint64_t webrtc::P2PTransportChannel::FinishAddingRemoteCandidate(webrtc::P2PTransportChannel *this, const webrtc::Candidate *a2)
{
  v5 = *(this + 137);
  v6 = *(this + 138);
  while (v5 != v6)
  {
    v7 = *v5++;
    webrtc::Connection::MaybeUpdatePeerReflexiveCandidate(v7, a2);
  }

  v8 = *(this + 141);
  v9 = *(this + 140);
  if (v8 == v9)
  {
LABEL_7:
    v12 = *(this + 131);
    if (v12 != *(this + 130))
    {
      do
      {
        v13 = *(v12 - 8);
        v12 -= 8;
        webrtc::P2PTransportChannel::CreateConnection(this, v13, a2, 0);
      }

      while (v12 != *(this + 130));
      v8 = *(this + 141);
      v9 = *(this + 140);
    }

    if (v8 != v9)
    {
      v14 = 0;
      do
      {
        while (*(v9 + 440 * v14 + 248) >= *(a2 + 62))
        {
          if (++v14 >= 0x6FB586FB586FB587 * ((v8 - v9) >> 3))
          {
            goto LABEL_25;
          }
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          v15 = *(this + 140);
          if (0x6FB586FB586FB587 * ((*(this + 141) - v15) >> 3) <= v14)
          {
            goto LABEL_47;
          }

          v2 = v2 & 0xFFFFFFFF00000000 | 0x2E99;
          webrtc::SocketAddress::ToSensitiveString((v15 + 440 * v14 + 80), __p);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        v23 = *(this + 140);
        v24 = 440 * v14;
        v25 = *(this + 141);
        if (v25 == (440 * v14 + v23))
        {
          goto LABEL_47;
        }

        v8 = v23 + v24;
        if ((v23 + v24 + 440) != v25)
        {
          do
          {
            v26 = v8 + 440;
            webrtc::Candidate::operator=(v8, (v8 + 440));
            *(v8 + 432) = *(v8 + 872);
            v27 = (v8 + 880);
            v8 += 440;
          }

          while (v27 != v25);
          v25 = *(this + 141);
          v8 = v26;
        }

        while (v25 != v8)
        {
          v25 -= 55;
          webrtc::Candidate::~Candidate(v25);
        }

        *(this + 141) = v8;
        v9 = *(this + 140);
      }

      while (v14 < 0x6FB586FB586FB587 * ((v8 - v9) >> 3));
LABEL_25:
      if (v8 != v9)
      {
        v28 = 0;
        v29 = 0;
        while (!webrtc::Candidate::IsEquivalent((v9 + v28), a2))
        {
          ++v29;
          v9 = *(this + 140);
          v28 += 440;
          if (v29 >= 0x6FB586FB586FB587 * ((*(this + 141) - v9) >> 3))
          {
            goto LABEL_29;
          }
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::Candidate::ToStringInternal(a2, 1, __p);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_41;
      }
    }

LABEL_29:
    webrtc::Candidate::Candidate(__p, a2);
    v47 = 0;
    v30 = *(this + 141);
    v31 = *(this + 142);
    if (v30 >= v31)
    {
      v33 = *(this + 140);
      v34 = 0x6FB586FB586FB587 * ((v30 - v33) >> 3) + 1;
      if (v34 > 0x94F2094F2094F2)
      {
        goto LABEL_48;
      }

      v35 = 0x6FB586FB586FB587 * ((v31 - v33) >> 3);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0x4A7904A7904A79)
      {
        v36 = 0x94F2094F2094F2;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (v36 <= 0x94F2094F2094F2)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v30)
    {
      v32 = webrtc::Candidate::Candidate(v30, __p);
      v32[18].__r_.__value_.__r.__words[0] = v47;
      *(this + 141) = v32 + 440;
      webrtc::Candidate::~Candidate(&__p[0].__r_.__value_.__l.__data_);
      goto LABEL_41;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = 0;
  v11 = 0;
  while (!webrtc::Candidate::IsEquivalent((v9 + v10), a2))
  {
    ++v11;
    v8 = *(this + 141);
    v9 = *(this + 140);
    v10 += 440;
    if (v11 >= 0x6FB586FB586FB587 * ((v8 - v9) >> 3))
    {
      goto LABEL_7;
    }
  }

LABEL_41:
  v37 = *(**(this + 191) + 80);

  return v37();
}

void webrtc::P2PTransportChannel::RemoveRemoteCandidate(webrtc::P2PTransportChannel *this, std::string *a2)
{
  v4 = *(this + 140);
  v5 = *(this + 141);
  webrtc::Candidate::Candidate(&v26, a2);
  if (v4 != v5)
  {
    while (1)
    {
      if (v27 == *(v4 + 24))
      {
        if ((v30 & 0x80u) == 0)
        {
          v6 = v30;
        }

        else
        {
          v6 = v29;
        }

        v7 = *(v4 + 55);
        v8 = v7;
        if ((v7 & 0x80u) != 0)
        {
          v7 = *(v4 + 40);
        }

        if (v6 == v7)
        {
          v9 = (v30 & 0x80u) == 0 ? &v28 : v28;
          v10 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
          if (!memcmp(v9, v10, v6) && webrtc::SocketAddress::operator==(v31, v4 + 80))
          {
            break;
          }
        }
      }

      v4 += 440;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_41;
      }
    }

    if (v4 != v5)
    {
      for (i = v4 + 440; i != v5; i += 440)
      {
        if (v27 != *(i + 24))
        {
          goto LABEL_21;
        }

        if ((v30 & 0x80u) == 0)
        {
          v12 = v30;
        }

        else
        {
          v12 = v29;
        }

        v13 = *(i + 55);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(i + 40);
        }

        if (v12 == v13)
        {
          v15 = (v30 & 0x80u) == 0 ? &v28 : v28;
          v16 = v14 >= 0 ? (i + 32) : *(i + 32);
          if (!memcmp(v15, v16, v12) && webrtc::SocketAddress::operator==(v31, i + 80))
          {
            continue;
          }
        }

LABEL_21:
        webrtc::Candidate::operator=(v4, i);
        *(v4 + 432) = *(i + 432);
        v4 += 440;
      }
    }
  }

LABEL_41:
  webrtc::Candidate::~Candidate(&v26.__r_.__value_.__l.__data_);
  if (v4 != *(this + 141))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Candidate::ToStringInternal(a2, 1, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v24 = *(this + 141);
    if (v4 > v24)
    {
      __break(1u);
    }

    else if (v4 != v24)
    {
      while (v24 != v4)
      {
        v24 -= 55;
        webrtc::Candidate::~Candidate(v24);
      }

      *(this + 141) = v4;
    }
  }
}

void webrtc::P2PTransportChannel::RemoveAllRemoteCandidates(webrtc::P2PTransportChannel *this)
{
  v2 = *(this + 141);
  v3 = *(this + 140);
  while (v2 != v3)
  {
    webrtc::Candidate::~Candidate((v2 - 440));
  }

  *(this + 141) = v3;
}

uint64_t webrtc::P2PTransportChannel::SetOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 5 && (*(a1 + 1660) & 1) != 0)
  {
    a3 = *(a1 + 1656);
  }

  v7 = *(a1 + 1160);
  if (!v7)
  {
LABEL_17:
    operator new();
  }

  v8 = a1 + 1160;
  v9 = *(a1 + 1160);
  do
  {
    if (*(v9 + 28) >= a2)
    {
      v8 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < a2));
  }

  while (v9);
  if (v8 == a1 + 1160 || *(v8 + 28) > a2)
  {
    while (1)
    {
      while (1)
      {
        v10 = v7;
        v11 = *(v7 + 28);
        if (v11 <= a2)
        {
          break;
        }

        v7 = *v10;
        if (!*v10)
        {
          goto LABEL_17;
        }
      }

      if (v11 >= a2)
      {
        break;
      }

      v7 = v10[1];
      if (!v7)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (*(v8 + 32) == a3)
    {
      return 0;
    }

    *(v8 + 32) = a3;
  }

  v12 = *(a1 + 1040);
  for (i = *(a1 + 1048); v12 != i; ++v12)
  {
    v14 = *v12;
    if (((*(**v12 + 104))(*v12, a2, a3) & 0x80000000) != 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | 0x2FE2;
      v24[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc";
      v24[1] = v3;
      v24[2] = &v23;
      v24[3] = "SetOption(";
      v25 = v24;
      v4 = v4 & 0xFFFFFFFF00000000 | a2;
      (*(*v14 + 120))(v14);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v15, v16, v17, v18, v19, v20, v21, *v25);
    }
  }

  return 0;
}

uint64_t webrtc::P2PTransportChannel::GetOption(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 1160);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 1160;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v4 == a1 + 1160 || *(v4 + 28) > a2)
  {
    return 0;
  }

  *a3 = *(v4 + 32);
  return 1;
}

uint64_t webrtc::P2PTransportChannel::SendPacket(webrtc::P2PTransportChannel *this, const char *a2, uint64_t a3, const webrtc::AsyncSocketPacketOptions *a4, int a5)
{
  if (a5)
  {
    v5 = 22;
LABEL_17:
    *(this + 253) = v5;
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 136);
  if (!v6 || (v7 = v6[582], v7 >= 2) && (v7 != 2 || *(this + 1332) != 1 || (v14 = this, v15 = a3, v16 = a2, v17 = a4, v18 = (*(*v6 + 16))(*(this + 136)), this = v14, *(v18 + 208) != 3) || (v19 = (*(*v6 + 24))(v6), a4 = v17, a2 = v16, a3 = v15, v20 = v19, this = v14, *(v20 + 208) != 3) && (v21 = (*(*v6 + 24))(v6, v16, v15, v17), a4 = v17, a2 = v16, a3 = v15, v22 = v21, this = v14, *(v22 + 208) != 2)))
  {
    v5 = 57;
    goto LABEL_17;
  }

  ++*(this + 197);
  *(this + 357) = *(a4 + 1);
  v28 = *a4;
  v29 = *(a4 + 4);
  v31 = 0;
  v32 = 0;
  __p = 0;
  v9 = *(a4 + 3);
  v8 = *(a4 + 4);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = *(a4 + 4);
  v33 = *(a4 + 3);
  v34 = v10;
  v36 = *(a4 + 12);
  v35 = *(a4 + 5);
  v37 = *(a4 + 52);
  DWORD1(v34) = 1;
  v11 = this;
  result = (*(**(this + 136) + 56))(*(this + 136), a2, a3, &v28);
  if (result > 0)
  {
    *(v11 + 195) += result;
    v13 = __p;
    if (!__p)
    {
      return result;
    }

LABEL_20:
    v31 = v13;
    v27 = result;
    operator delete(v13);
    return v27;
  }

  v23 = v11;
  v24 = *(v11 + 136);
  v25 = result;
  v26 = (*(*v24 + 64))(v24);
  result = v25;
  *(v23 + 253) = v26;
  v13 = __p;
  if (__p)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t webrtc::P2PTransportChannel::GetStats(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    do
    {
      webrtc::Candidate::~Candidate((v3 - 464));
    }

    while (v3 != v4);
  }

  v2[1] = v4;
  v5 = v2[3];
  for (i = v2[4]; i != v5; i -= 1064)
  {
    webrtc::Candidate::~Candidate((i - 512));
    webrtc::Candidate::~Candidate((i - 944));
  }

  v2[4] = v5;
  v7 = *(a1 + 1024);
  if (*(a1 + 1016) != v7)
  {
    (*(**(v7 - 8) + 80))(*(v7 - 8), v2);
  }

  v8 = *(a1 + 1096);
  v9 = *(a1 + 1104);
  if (v8 != v9)
  {
    v46 = v2;
    do
    {
      v10 = *v8;
      v11 = webrtc::Connection::stats(*v8, v48);
      v12 = *(a1 + 976);
      if ((v51 | 2) == 2)
      {
        v13 = (*(*v12 + 72))(*(a1 + 976), v11);
        if ((~v12[29] & 0xC00) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v13 = 0;
        if ((~v12[29] & 0xC00) == 0)
        {
          goto LABEL_15;
        }
      }

      if ((v12[35] & 1) == 0)
      {
LABEL_15:
        v14 = 1;
        goto LABEL_17;
      }

      v14 = (*(*v12 + 72))(v12);
LABEL_17:
      v15 = v12[35];
      v16 = (*(*v12 + 72))(v12);
      if (v51 == 1 && (v14 & 1) != 0 || v51 == 3 && (v15 & 2) == 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v51 == 2) & v16;
      }

      webrtc::Candidate::ToSanitizedCopy(v50, v13, v17, 0, v47);
      webrtc::Candidate::operator=(v50, v47);
      webrtc::Candidate::~Candidate(v47);
      webrtc::P2PTransportChannel::SanitizeRemoteCandidate(v47, a1, v52);
      webrtc::Candidate::operator=(v52, v47);
      webrtc::Candidate::~Candidate(v47);
      LOBYTE(v48[0]) = *(a1 + 1088) == v10;
      v2 = v46;
      v19 = v46[4];
      v18 = v46[5];
      if (v19 >= v18)
      {
        v29 = v46[3];
        v30 = 0x133F84CFE133F84DLL * ((v19 - v29) >> 3) + 1;
        if (v30 > 0x3D980F6603D980)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v31 = 0x133F84CFE133F84DLL * ((v18 - v29) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x1ECC07B301ECC0)
        {
          v32 = 0x3D980F6603D980;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (v32 <= 0x3D980F6603D980)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v40 = 1;
        goto LABEL_64;
      }

      if (!v19)
      {
        goto LABEL_65;
      }

      v20 = v48[0];
      v21 = v48[1];
      v22 = v48[3];
      *(v19 + 32) = v48[2];
      *(v19 + 48) = v22;
      *v19 = v20;
      *(v19 + 16) = v21;
      v23 = v48[4];
      v24 = v48[5];
      v25 = v48[6];
      *(v19 + 112) = v49;
      *(v19 + 80) = v24;
      *(v19 + 96) = v25;
      *(v19 + 64) = v23;
      webrtc::Candidate::Candidate((v19 + 120), v50);
      webrtc::Candidate::Candidate((v19 + 552), v52);
      *(v19 + 984) = v53;
      v26 = v54;
      v27 = v55;
      v28 = v56[0];
      *(v19 + 1041) = *(v56 + 9);
      *(v19 + 1016) = v27;
      *(v19 + 1032) = v28;
      *(v19 + 1000) = v26;
      v46[4] = v19 + 1064;
      webrtc::Candidate::~Candidate(&v52[0].__r_.__value_.__l.__data_);
      webrtc::Candidate::~Candidate(&v50[0].__r_.__value_.__l.__data_);
      ++v8;
    }

    while (v8 != v9);
  }

  *(v2 + 12) = *(a1 + 1592);
  *(v2 + 7) = *(a1 + 1560);
  *(v2 + 9) = *(a1 + 1576);
  *(v2 + 22) = (*(*a1 + 104))(a1);
  v33 = (v2 + 12);
  if (v2 + 12 == (a1 + 1176))
  {
    goto LABEL_49;
  }

  v34 = *(a1 + 1199);
  if ((*(v2 + 119) & 0x80000000) == 0)
  {
    if ((*(a1 + 1199) & 0x80) == 0)
    {
      v35 = *(a1 + 1176);
      v2[14] = *(a1 + 1192);
      *&v33->__r_.__value_.__l.__data_ = v35;
      v36 = *(a1 + 1096);
      v37 = *(a1 + 1104);
      if (v36 != v37)
      {
        goto LABEL_50;
      }

      goto LABEL_52;
    }

    std::string::__assign_no_alias<true>(v33, *(a1 + 1176), *(a1 + 1184));
LABEL_49:
    v36 = *(a1 + 1096);
    v37 = *(a1 + 1104);
    if (v36 != v37)
    {
      goto LABEL_50;
    }

LABEL_52:
    if (*(a1 + 1144))
    {
      v40 = 4;
      goto LABEL_64;
    }

    v41 = 0;
    v42 = a1;
    v43 = (a1 + 1144);
    if ((*(*v42 + 24))(v42))
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (v34 >= 0)
  {
    v38 = (a1 + 1176);
  }

  else
  {
    v38 = *(a1 + 1176);
  }

  if (v34 >= 0)
  {
    v39 = *(a1 + 1199);
  }

  else
  {
    v39 = *(a1 + 1184);
  }

  std::string::__assign_no_alias<false>(v33, v38, v39);
  v36 = *(a1 + 1096);
  v37 = *(a1 + 1104);
  if (v36 == v37)
  {
    goto LABEL_52;
  }

LABEL_50:
  while (*(*v36 + 2328) == 3)
  {
    v36 += 8;
    if (v36 == v37)
    {
      goto LABEL_52;
    }
  }

  v42 = a1;
  v43 = (a1 + 1144);
  v41 = 1;
  if (((*(*v42 + 24))(v42) & 1) == 0)
  {
LABEL_57:
    if (v42[1438])
    {
      v40 = 5;
      goto LABEL_64;
    }
  }

LABEL_59:
  if ((v41 | *v43))
  {
    if (v41 && !(*(*a1 + 24))(a1))
    {
      goto LABEL_66;
    }

    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

LABEL_64:
  *(v2 + 30) = v40;
  return 1;
}

__n128 webrtc::P2PTransportChannel::network_route@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[90];
  v3 = this[91];
  *a2 = result;
  a2[1] = v3;
  a2[2].n128_u64[0] = this[92].n128_u64[0];
  return result;
}

uint64_t webrtc::P2PTransportChannel::UpdateConnectionStates(webrtc::P2PTransportChannel *this)
{
  if (webrtc::g_clock)
  {
    result = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    v3 = *(this + 137);
    v4 = *(this + 138);
    v5 = v4 - v3;
    if (v4 != v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    v6 = *(this + 137);
    v7 = *(this + 138);
    v5 = v7 - v6;
    if (v7 != v6)
    {
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::P2PTransportChannel::UpdateConnectionStates(webrtc::P2PTransportChannel *this)
{
  if (webrtc::g_clock)
  {
    result = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    v4 = *(this + 20);
    v3 = *(this + 21);
    v5 = v3 - v4;
    if (v3 != v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    result = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    v7 = *(this + 20);
    v6 = *(this + 21);
    v5 = v6 - v7;
    if (v6 != v7)
    {
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

void webrtc::P2PTransportChannel::OnStartedPinging(webrtc::BasicRegatheringController **this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::P2PTransportChannel::ToString(&__p, this, v2);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(this[159]);
    }
  }

  webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(this[159]);
}

void non-virtual thunk towebrtc::P2PTransportChannel::OnStartedPinging(webrtc::BasicRegatheringController **this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::P2PTransportChannel::ToString(&__p, (this - 117), v2);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(this[42]);
    }
  }

  webrtc::BasicRegatheringController::ScheduleRecurringRegatheringOnFailedNetworks(this[42]);
}

void webrtc::P2PTransportChannel::UpdateState(webrtc::P2PTransportChannel *this)
{
  v1 = *(this + 137);
  v2 = *(this + 138);
  if (v1 == v2)
  {
LABEL_4:
    v3 = this;
    webrtc::P2PTransportChannel::HandleAllTimedOut(this);
    this = v3;
  }

  else
  {
    while (*(*v1 + 2328) == 3)
    {
      v1 += 8;
      if (v1 == v2)
      {
        goto LABEL_4;
      }
    }
  }

  webrtc::P2PTransportChannel::UpdateTransportState(this);
}

uint64_t webrtc::P2PTransportChannel::HandleAllTimedOut(uint64_t this)
{
  v1 = *(this + 1096);
  v2 = *(this + 1104);
  if (v2 != v1)
  {
    if (((v2 - v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::P2PTransportChannel::UpdateTransportState(webrtc::P2PTransportChannel *this)
{
  v2 = *(this + 136);
  if (!v2)
  {
LABEL_12:
    if (*(this + 1437) == v2)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

  v3 = v2[582];
  if (!v3)
  {
    LODWORD(v2) = 1;
    goto LABEL_12;
  }

  if (v3 == 2 && *(this + 1332) == 1 && *((*(*v2 + 16))(*(this + 136)) + 208) == 3)
  {
    if (*((*(*v2 + 24))(v2) + 208) == 3)
    {
      LODWORD(v2) = 1;
      if (*(this + 1437) == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v2) = *((*(*v2 + 24))(v2) + 208) == 2;
      if (*(this + 1437) == v2)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    LODWORD(v2) = 0;
    if (!*(this + 1437))
    {
      goto LABEL_13;
    }
  }

LABEL_66:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::P2PTransportChannel::ToString(&v47, this, v33);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  *(this + 1437) = v2;
  if (v2)
  {
    *(this + 1438) = 1;
    v41 = *(this + 17);
    for (*(this + 19) = v41; v41 != (this + 128); v41 = *(this + 19))
    {
      v43 = v41[2];
      v42 = v41 + 2;
      *(this + 19) = *(v42 - 1);
      v43(v42, this);
    }
  }

  v44 = *(this + 10);
  for (*(this + 12) = v44; v44 != (this + 72); v44 = *(this + 12))
  {
    v46 = v44[2];
    v45 = v44 + 2;
    *(this + 12) = *(v45 - 1);
    v46(v45, this);
  }

LABEL_13:
  v4 = *(this + 137);
  v5 = *(this + 138);
  if (v4 == v5)
  {
    LOBYTE(v7) = 0;
    if (!*(this + 1436))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v6 = v4 + 8;
    do
    {
      v7 = *(*(v6 - 8) + 2332);
      if (v7)
      {
        break;
      }

      v8 = v6 == v5;
      v6 += 8;
    }

    while (!v8);
    if (*(this + 1436) == v7)
    {
      goto LABEL_21;
    }
  }

  *(this + 1436) = v7;
  v11 = *(this + 24);
  for (*(this + 26) = v11; v11 != (this + 184); v11 = *(this + 26))
  {
    v13 = v11[2];
    v12 = v11 + 2;
    *(this + 26) = *(v12 - 1);
    v13(v12, this);
  }

LABEL_21:
  if (*(this + 1144) == 1)
  {
    v9 = *(this + 137);
    v10 = *(this + 138);
    if (v9 == v10)
    {
      v14 = 3;
      v15 = *(this + 137);
      v16 = *(this + 138);
      if (v15 != v16)
      {
        goto LABEL_36;
      }
    }

    else
    {
      do
      {
        if (*(*v9 + 2328) != 3)
        {
          operator new();
        }

        v9 += 8;
      }

      while (v9 != v10);
      v14 = 3;
      v15 = *(this + 137);
      v16 = *(this + 138);
      if (v15 != v16)
      {
LABEL_36:
        while (*(*v15 + 2328) == 3)
        {
          v15 += 8;
          if (v15 == v16)
          {
            goto LABEL_38;
          }
        }

        v18 = 1;
        if ((*(*this + 24))(this))
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = *(this + 137);
    v16 = *(this + 138);
    if (v15 != v16)
    {
      goto LABEL_36;
    }
  }

LABEL_38:
  if (*(this + 1144))
  {
    v17 = 4;
    if (*(this + 323) == v14)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

  v18 = 0;
  if ((*(*this + 24))(this))
  {
    goto LABEL_47;
  }

LABEL_44:
  if (*(this + 1438))
  {
    v17 = 5;
    if (*(this + 323) == v14)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

LABEL_47:
  if ((v18 | *(this + 1144)))
  {
    if (v18 && !(*(*this + 24))(this))
    {
      v17 = 1;
      if (*(this + 323) == v14)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = 2;
      if (*(this + 323) == v14)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v17 = 0;
    if (*(this + 323) == v14)
    {
      goto LABEL_53;
    }
  }

LABEL_59:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::P2PTransportChannel::ToString(&v47, this, v22);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  *(this + 323) = v14;
  v30 = *(this + 75);
  for (*(this + 77) = v30; v30 != (this + 592); v30 = *(this + 77))
  {
    v32 = v30[2];
    v31 = v30 + 2;
    *(this + 77) = *(v31 - 1);
    v32(v31, this);
  }

LABEL_53:
  if (*(this + 324) != v17)
  {
    *(this + 324) = v17;
    v19 = *(this + 82);
    for (*(this + 84) = v19; v19 != (this + 648); v19 = *(this + 84))
    {
      v21 = v19[2];
      v20 = v19 + 2;
      *(this + 84) = *(v20 - 1);
      v21(v20, this);
    }
  }
}

void non-virtual thunk towebrtc::P2PTransportChannel::UpdateState(webrtc::P2PTransportChannel *this)
{
  v1 = (this - 936);
  v2 = *(this + 20);
  v3 = *(this + 21);
  if (v2 == v3)
  {
LABEL_4:
    webrtc::P2PTransportChannel::HandleAllTimedOut(this - 936);
  }

  else
  {
    while (*(*v2 + 2328) == 3)
    {
      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_4;
      }
    }
  }

  webrtc::P2PTransportChannel::UpdateTransportState(v1);
}

uint64_t webrtc::P2PTransportChannel::PruneConnections(uint64_t a1, char ***a2, uint64_t a3)
{
  if (!*(a1 + 1260) || (v4 = *(a1 + 1088)) != 0 && (*(v4 + 2344) || *(v4 + 2348)))
  {
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        webrtc::Connection::Prune(v6);
        v5 -= 8;
      }

      while (v5);
    }

    return 1;
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    return 0;
  }
}

uint64_t non-virtual thunk towebrtc::P2PTransportChannel::PruneConnections(uint64_t a1, char ***a2, uint64_t a3)
{
  if (!*(a1 + 324) || (v4 = *(a1 + 152)) != 0 && (*(v4 + 2344) || *(v4 + 2348)))
  {
    if (a3)
    {
      v5 = 8 * a3;
      do
      {
        v6 = *a2++;
        webrtc::Connection::Prune(v6);
        v5 -= 8;
      }

      while (v5);
    }

    return 1;
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    return 0;
  }
}

uint64_t webrtc::P2PTransportChannel::SwitchSelectedConnectionInternal(uint64_t a1, webrtc::Connection *this, uint64_t a3)
{
  v6 = *(a1 + 1088);
  *(a1 + 1088) = this;
  if (this)
  {
    v7 = *(this + 60);
    webrtc::Connection::ToLogDescription(this);
    webrtc::IceEventLog::LogCandidatePairConfig((a1 + 1480), 3, v7);
  }

  if (*(a1 + 1476) == 1)
  {
    *(a1 + 1476) = 0;
  }

  if (v6)
  {
    *(v6 + 2335) = 0;
    v8 = *(a1 + 1088);
    if (v8)
    {
      ++*(a1 + 1432);
      *(v8 + 2335) = 1;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
      {
        goto LABEL_18;
      }

      webrtc::P2PTransportChannel::ToString(__p, a1, v9);
      webrtc::Connection::ToString(v6, v81);
      webrtc::webrtc_logging_impl::Log("\r\n\t\n", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      if ((v81[23] & 0x80000000) != 0)
      {
        operator delete(*v81);
        if ((SBYTE7(v86) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((SBYTE7(v86) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(__p[0]);
LABEL_18:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::P2PTransportChannel::ToString(__p, a1, v26);
        webrtc::Connection::ToString(*(a1 + 1088), v81);
        webrtc::webrtc_logging_impl::Log("\r\n\t\n", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
        if ((v81[23] & 0x80000000) != 0)
        {
          operator delete(*v81);
          if ((SBYTE7(v86) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }
        }

        else if ((SBYTE7(v86) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        operator delete(__p[0]);
      }

LABEL_21:
      v34 = (*(**(a1 + 1088) + 24))(*(a1 + 1088));
      v35 = *(a1 + 488);
      for (*(a1 + 504) = v35; v35 != a1 + 480; v35 = *(a1 + 504))
      {
        v37 = *(v35 + 16);
        v36 = v35 + 16;
        *(a1 + 504) = *(v36 - 8);
        v37(v36, a1, v34);
      }

      v38 = *(a1 + 1088);
      v39 = *(v38 + 582);
      v80 = v6;
      v79 = a3;
      if (!v39)
      {
        goto LABEL_29;
      }

      if (v39 != 2)
      {
LABEL_32:
        v43 = *(v38 + 582);
        if (v43 < 2)
        {
          goto LABEL_33;
        }

        if (v43 == 2 && *(a1 + 1332) == 1 && *(((*v38)[2])(v38) + 208) == 3)
        {
          if (*(((*v38)[3])(v38) + 208) != 3)
          {
            v44 = *(((*v38)[3])(v38) + 208) == 2;
            goto LABEL_40;
          }

LABEL_33:
          v44 = 1;
LABEL_40:
          v45 = ((*v38)[2])(v38);
          v46 = (*(*v38[32] + 16))(v38[32]) == 3;
          v47 = *(v45 + 240);
          v48 = (*(v45 + 240) << 32) | (*(v45 + 400) << 48);
          v49 = ((*v38)[3])(v38);
          v50 = *(((*v38)[3])(v38) + 208);
          v51 = *(v49 + 240);
          if (!v51)
          {
            v51 = webrtc::Network::GuessAdapterFromNetworkCost(*(v49 + 402));
          }

          v52 = v48 | v47;
          v53 = v50 == 3;
          v54 = (v51 << 32) | (*(v49 + 400) << 48) | v51;
          v55 = *(a1 + 1428);
          v56 = *(((*v38)[2])(v38) + 112);
          v57 = ((*v38)[2])(v38);
          v60 = *(v57 + 32);
          v58 = (v57 + 32);
          v59 = v60;
          v61 = *(v58 + 23);
          if ((v61 & 0x80u) == 0)
          {
            v62 = v58;
          }

          else
          {
            v62 = v59;
          }

          if ((v61 & 0x80u) != 0)
          {
            v61 = *(v58 + 1);
          }

          v63 = 8;
          if (v61 == 6)
          {
            if (*v62 ^ *"ssltcp" | v62[2] ^ *"cp")
            {
              v63 = 8;
            }

            else
            {
              v63 = 20;
            }
          }

          else if (v61 == 3)
          {
            if (*v62 ^ webrtc::TCP_PROTOCOL_NAME | *(v62 + 2) ^ 0x70)
            {
              v63 = 8;
            }

            else
            {
              v63 = 20;
            }
          }

          *(a1 + 1440) = v44;
          if (v56 == 30)
          {
            v64 = 40;
          }

          else
          {
            v64 = 0;
          }

          *(a1 + 1443) = BYTE2(__p[0]);
          if (v56 == 2)
          {
            v64 = 20;
          }

          *(a1 + 1441) = __p[0];
          *(a1 + 1444) = v52;
          *(a1 + 1452) = v46;
          *(a1 + 1455) = v81[2];
          *(a1 + 1453) = *v81;
          *(a1 + 1456) = v54;
          *(a1 + 1464) = v53;
          *(a1 + 1467) = v162;
          *(a1 + 1465) = v161;
          *(a1 + 1468) = v55;
          *(a1 + 1472) = v63 + v64;
          *(a1 + 1476) = 1;
          v6 = v80;
          a3 = v79;
          goto LABEL_61;
        }

LABEL_39:
        v44 = 0;
        goto LABEL_40;
      }

      if (*(a1 + 1332) == 1 && *(((*v38)[2])(v38) + 208) == 3 && (*(((*v38)[3])(v38) + 208) == 3 || *(((*v38)[3])(v38) + 208) == 2))
      {
LABEL_29:
        v40 = *(a1 + 136);
        for (*(a1 + 152) = v40; v40 != a1 + 128; v40 = *(a1 + 152))
        {
          v42 = *(v40 + 16);
          v41 = v40 + 16;
          *(a1 + 152) = *(v41 - 8);
          v42(v41, a1);
        }
      }

      v38 = *(a1 + 1088);
      if (!v38)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v17 = *(a1 + 1088);
    if (v17)
    {
      ++*(a1 + 1432);
      *(v17 + 2335) = 1;
      goto LABEL_18;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::P2PTransportChannel::ToString(__p, a1, v18);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    if (SBYTE7(v86) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_61:
  if (this && !*(a1 + 1260) && (v6 && (*(a1 + 1644) & 1) != 0 || *(a1 + 1645) == 1))
  {
    webrtc::P2PTransportChannel::PingConnection(a1, this);
    (*(**(a1 + 1528) + 48))(*(a1 + 1528), this);
  }

  v65 = *(a1 + 1456);
  *v81 = *(a1 + 1440);
  *&v81[16] = v65;
  v82 = *(a1 + 1472);
  v66 = *(a1 + 304);
  for (*(a1 + 320) = v66; v66 != a1 + 296; v66 = *(a1 + 320))
  {
    v68 = *(v66 + 16);
    v67 = v66 + 16;
    *(a1 + 320) = *(v67 - 8);
    *__p = *v81;
    v86 = *&v81[16];
    v87 = v82;
    v68(v67, __p);
  }

  if (!*(a1 + 1088))
  {
    v74 = 0;
LABEL_97:
    ++*(a1 + 1592);
    return (*(**(a1 + 1528) + 32))(*(a1 + 1528), v74);
  }

  __p[0] = &unk_2882976C0;
  __p[1] = 0;
  v86 = 0uLL;
  {
    LODWORD(v87) = 1;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    v93 = &unk_28828CE50;
    v98 = 0;
    v94 = 0;
    v95 = 0u;
    v96 = 0;
    v97 = 0;
    v99 = 0;
    v103 = 0;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v106 = 0;
    v105 = 0u;
    v104 = 0u;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    v110 = &unk_28828CE50;
    v115 = 0;
    memset(&v81[8], 0, 20);
    v111 = 0;
    v112 = 0u;
    v113 = 0;
    v114 = 0;
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    v119 = 0;
    memset(v121, 0, sizeof(v121));
    v120 = 0u;
    {
      v122 = 1;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0;
      v128 = &unk_28828CE50;
      v133 = 0;
      memset(&v81[8], 0, 20);
      v129 = 0;
      v130 = *&v81[12];
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      v138 = 0;
      v141 = 0;
      v140 = 0u;
      v139 = 0u;
      v143 = 0u;
      v144 = 0u;
      v142 = 0u;
      v145 = &unk_28828CE50;
      v150 = 0;
      *&v81[8] = 0u;
      v146 = 0;
      v147 = *&v81[12];
      v148 = 0;
      v149 = 0;
      v156 = 0;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v151 = 0u;
      v154 = 0;
      v159 = 0;
      *v158 = 0u;
      webrtc::IceSwitchReasonToString(a3, v81);
      if (SHIBYTE(v159) < 0)
      {
        operator delete(v158[0]);
      }

      *v158 = *v81;
      v159 = *&v81[16];
      (*(*a1 + 264))(v81, a1);
      if (v84)
      {
        webrtc::Candidate::operator=(&__p[1], &v81[8]);
        webrtc::Candidate::operator=(v121 + 8, v83);
        if (v84 == 1)
        {
          webrtc::Candidate::~Candidate(v83);
          webrtc::Candidate::~Candidate(&v81[8]);
        }

        v157 = *(*(a1 + 1088) + 2456);
        if (v6)
        {
          if (webrtc::g_clock)
          {
            v73 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
          }

          else
          {
            if (!dword_28100D8E4)
            {
              mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
            }

            v73 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
          }

          v76 = *(v6 + 2448);
          if (v76 <= *(v6 + 2464))
          {
            v76 = *(v6 + 2464);
          }

          if (*(v6 + 2456) > v76)
          {
            v76 = *(v6 + 2456);
          }

          if (v76 <= *(a1 + 1600))
          {
            v76 = *(a1 + 1600);
          }

          v160 = v73 / 1000000 - v76;
          v75 = *(a1 + 928);
          if (!v75)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v160 = 0;
          v75 = *(a1 + 928);
          if (!v75)
          {
            goto LABEL_94;
          }
        }

        v75(a1 + 904, __p);
LABEL_94:
        if (SHIBYTE(v159) < 0)
        {
          operator delete(v158[0]);
        }

        webrtc::Candidate::~Candidate(v121 + 1);
        webrtc::Candidate::~Candidate(&__p[1]);
        v74 = *(a1 + 1088);
        goto LABEL_97;
      }

      __break(1u);
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v69, v70, v71, v72, v78);
}

uint64_t webrtc::P2PTransportChannel::SendPingRequest(webrtc::P2PTransportChannel *this, const webrtc::Connection *a2)
{
  webrtc::P2PTransportChannel::PingConnection(this, a2);
  v3 = *(**(this + 191) + 48);

  return v3();
}

uint64_t non-virtual thunk towebrtc::P2PTransportChannel::SendPingRequest(webrtc::P2PTransportChannel *this, const webrtc::Connection *a2)
{
  webrtc::P2PTransportChannel::PingConnection((this - 936), a2);
  v3 = *(**(this + 74) + 48);

  return v3();
}

uint64_t webrtc::P2PTransportChannel::PingConnection(webrtc::P2PTransportChannel *this, webrtc::Connection *a2)
{
  if (*(this + 315))
  {
    goto LABEL_2;
  }

  if (*(this + 1224) == 1 && (v6 = *(this + 155), *(this + 154) != v6) && *(v6 - 8) == 1)
  {
    if (*(this + 136) != a2)
    {
LABEL_2:
      v4 = 0;
      v5 = 0;
      goto LABEL_9;
    }

    v5 = 0;
    v4 = *(this + 358);
  }

  else
  {
    v5 = (*(**(this + 191) + 64))(*(this + 191), a2, *(this + 338), *(this + 314));
    v4 = 0;
  }

LABEL_9:
  *(a2 + 585) = v4;
  *(a2 + 2336) = v5;
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

  v8 = v7 / 1000000;
  *(this + 160) = v7 / 1000000;
  webrtc::StunDictionaryWriter::CreateDelta(this + 1680, &v10);
  webrtc::Connection::Ping(a2, v8, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

__n128 webrtc::P2PTransportChannel::SetDtlsStunPiggybackCallbacks(uint64_t a1, uint64_t a2)
{
  (*(a1 + 1824))(1, a1 + 1808, a1 + 1808);
  *(a1 + 1824) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 1832) = 0;
  (*(a2 + 16))(0, a2, a1 + 1808);
  *(a1 + 1824) = *(a2 + 16);
  *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  (*(a1 + 1856))(1, a1 + 1840, a1 + 1840);
  *(a1 + 1856) = absl::internal_any_invocable::EmptyManager;
  *(a1 + 1864) = 0;
  (*(a2 + 48))(0, a2 + 32, a1 + 1840);
  result = *(a2 + 48);
  *(a1 + 1856) = result;
  *(a2 + 48) = absl::internal_any_invocable::EmptyManager;
  *(a2 + 56) = 0;
  return result;
}

uint64_t webrtc::P2PTransportChannel::ResetDtlsStunPiggybackCallbacks(void (**this)(uint64_t, char *, char *))
{
  this[228](1, this + 1808, this + 1808);
  this[228] = absl::internal_any_invocable::EmptyManager;
  this[229] = 0;
  result = (this[232])(1, this + 1840, this + 1840);
  this[232] = absl::internal_any_invocable::EmptyManager;
  this[233] = 0;
  v3 = this[137];
  for (i = this[138]; v3 != i; *(v5 + 2880) = 0)
  {
    v5 = *v3;
    v3 = (v3 + 8);
    (*(v5 + 2840))(1, v5 + 2824, v5 + 2824);
    *(v5 + 2840) = absl::internal_any_invocable::EmptyManager;
    *(v5 + 2848) = 0;
    result = (*(v5 + 2872))(1, v5 + 2856, v5 + 2856);
    *(v5 + 2872) = absl::internal_any_invocable::EmptyManager;
  }

  return result;
}

uint64_t webrtc::P2PTransportChannel::remote_ice_parameters(webrtc::P2PTransportChannel *this)
{
  v1 = *(this + 155);
  if (*(this + 154) == v1)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

void std::__tree<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,std::unique_ptr<webrtc::StunAttribute>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,unsigned int,unsigned int>(void *a1)
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

uint64_t std::__function::__func<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_0,std::allocator<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_0>,webrtc::IceTransportStateInternal ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882976F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_1,std::allocator<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_1>,webrtc::IceRole ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288297738;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_2,std::allocator<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_2>,BOOL ()(webrtc::Connection const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288297780;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_2,std::allocator<webrtc::P2PTransportChannel::P2PTransportChannel(std::string_view,int,webrtc::PortAllocator *,webrtc::AsyncDnsResolverFactoryInterface *,std::unique_ptr<webrtc::AsyncDnsResolverFactoryInterface>,webrtc::RtcEventLog *,webrtc::IceControllerFactoryInterface *,webrtc::ActiveIceControllerFactoryInterface *,webrtc::FieldTrialsView const*)::$_2>,BOOL ()(webrtc::Connection const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(*a2 + 248);
  if (!v4)
  {
LABEL_4:
    v5 = v2[130];
    v6 = v2[131];
    if (v5 != v6)
    {
      goto LABEL_7;
    }

    return 1;
  }

  if (*v4 == 1)
  {
    v4 = v3[32];
    goto LABEL_4;
  }

  v4 = 0;
  v5 = v2[130];
  v6 = v2[131];
  if (v5 == v6)
  {
    return 1;
  }

LABEL_7:
  while (*v5 != v4)
  {
    if (++v5 == v6)
    {
      return 1;
    }
  }

  if (v5 == v6)
  {
    return 1;
  }

  v7 = (*(*v3 + 24))(v3);
  v8 = v2[140];
  v9 = v2[141];
  if (v8 == v9)
  {
LABEL_15:
    v8 = v9;
  }

  else
  {
    v10 = v7;
    v11 = v2[140];
    while (!webrtc::Candidate::operator==(v11, v10))
    {
      v11 += 55;
      v8 += 55;
      if (v11 == v9)
      {
        goto LABEL_15;
      }
    }
  }

  return v8 == v9;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortAllocatorSession *,webrtc::PortInterface *>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortAllocatorSession *,std::vector<webrtc::PortInterface *> const&>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortAllocatorSession *,std::vector<webrtc::Candidate> const&>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortAllocatorSession *,webrtc::IceCandidateErrorEvent const&>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortAllocatorSession *>(void *a1)
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

uint64_t *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_0 &,webrtc::Connection *,webrtc::ReceivedIpPacket const&>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *result;
  if (*(*result + 1088) == a2)
  {
    goto LABEL_7;
  }

  v10 = *(v9 + 1096);
  v11 = *(v9 + 1104);
  if (v10 != v11)
  {
    while (*v10 != a2)
    {
      if (++v10 == v11)
      {
        return result;
      }
    }

    if (v10 != v11)
    {
LABEL_7:
      ++*(v9 + 1584);
      *(v9 + 1568) += *(a3 + 8);
      v12 = *(a2 + 2456);
      if (*(v9 + 1600) > v12)
      {
        v12 = *(v9 + 1600);
      }

      *(v9 + 1600) = v12;
      result = webrtc::PacketTransportInternal::NotifyPacketReceived(v9, a3, a3, a4, a5, a6, a7, a8);
      if (*(v9 + 1260) == 1 && *(v9 + 1088) != a2)
      {
        v13 = *(**(v9 + 1528) + 88);

        return v13();
      }
    }
  }

  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::Connection *>(void *a1)
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

uint64_t std::__function::__func<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_1,std::allocator<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_1>,std::unique_ptr<webrtc::StunAttribute> ()(webrtc::StunByteStringAttribute const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882977C8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_1,std::allocator<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_1>,std::unique_ptr<webrtc::StunAttribute> ()(webrtc::StunByteStringAttribute const*)>::operator()(uint64_t a1@<X0>, const webrtc::StunByteStringAttribute **a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  webrtc::StunDictionaryView::ApplyDelta(*a2, &v28);
  if (v28)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    *a3 = 0;
    if (v34 != 1)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }

    v26 = v31;
    v31 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    goto LABEL_24;
  }

  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  }

  if (*(v4 + 768) == 1)
  {
LABEL_27:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v5, v6, v7, v8, v27);
    JUMPOUT(0x2732E9C90);
  }

  v19 = (v4 + 768);
  *(v4 + 768) = 1;
  v20 = *(v4 + 744);
  v21 = *(v4 + 752);
  if (v20 == v21)
  {
    *v19 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      if (v33 == __p)
      {
        v23 = 0;
      }

      else
      {
        v23 = __p;
      }

      (*(v20 + 40))(v20 + 8, v4, v4 + 1752, v23, (v33 - __p) >> 1);
      v24 = *v20;
      v20 += 56;
      v22 |= v24 == v19;
    }

    while (v20 != v21);
    *v19 = 0;
    if (v22)
    {
      webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v4 + 744), (v4 + 768));
    }
  }

  v25 = v31;
  v31 = 0;
  *a3 = v25;
  if (v34 == 1)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (v30 < 0)
  {
    operator delete(v29);
  }
}

uint64_t std::__function::__func<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_2,std::allocator<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_2>,void ()(webrtc::RTCErrorOr<webrtc::StunUInt64Attribute const*>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288297810;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_2,std::allocator<webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_2>,void ()(webrtc::RTCErrorOr<webrtc::StunUInt64Attribute const*>)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  __p = *(a2 + 1);
  v3 = *(a2 + 31);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v34 = *(a2 + 10);
  v4 = *(a1 + 8);
  v33 = v3;
  if (!v2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    if (BYTE8(v34))
    {
      v19 = *(v4 + 1704);
      v20 = *(v4 + 1712);
      if (v19 == v20)
      {
        goto LABEL_25;
      }

      v21 = *(v34 + 16);
      while (*v19 > v21)
      {
        v19 += 2;
        if (v19 == v20)
        {
          goto LABEL_25;
        }
      }

      if (v19 != v20)
      {
        for (i = v19 + 2; i != v20; i += 2)
        {
          if (*i > v21)
          {
            v23 = i[1];
            *v19 = *i;
            v19[1] = v23;
            v19 += 2;
          }
        }
      }

      if (v19 != v20)
      {
        v24 = v19;
        do
        {
          v35 = *(v24[1] + 8);
          std::map<unsigned short,std::unique_ptr<webrtc::StunAttribute>>::erase[abi:sn200100]((v4 + 1728), &v35);
          v24 += 2;
          v20 = *(v4 + 1712);
        }

        while (v24 != v20);
      }

      if (v19 <= v20)
      {
        if (v19 != v20)
        {
          *(v4 + 1712) = v19;
        }

LABEL_25:
        if (*(v4 + 800) != 1)
        {
          v25 = (v4 + 800);
          *(v4 + 800) = 1;
          v26 = *(v4 + 776);
          v27 = *(v4 + 784);
          if (v26 == v27)
          {
            *v25 = 0;
            if ((v33 & 0x80000000) == 0)
            {
              return;
            }

LABEL_34:
            operator delete(__p);
            return;
          }

          v28 = 0;
          do
          {
            (*(v26 + 40))(v26 + 8, v4, v4 + 1680);
            v29 = *v26;
            v26 += 56;
            v28 |= v29 == v25;
          }

          while (v26 != v27);
          *v25 = 0;
          if (v28)
          {
            webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v4 + 776), (v4 + 800));
          }

LABEL_31:
          if ((v33 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_34;
        }

LABEL_36:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v15, v16, v17, v18, v31);
        absl::internal_any_invocable::LocalInvoker<false,std::pair<std::optional<std::string_view>,std::optional<std::string_view>>,webrtc::P2PTransportChannel::AddConnection(webrtc::Connection *)::$_3 &,webrtc::StunMessageType>(v30);
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  *(v4 + 1680) = 1;
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    goto LABEL_31;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
  if (v3 < 0)
  {
    goto LABEL_34;
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortInterface *,webrtc::SocketAddress const&,webrtc::ProtocolType,webrtc::IceMessage *,std::string const&,BOOL>(void *a1)
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

uint64_t std::__function::__func<webrtc::P2PTransportChannel::OnPortReady(webrtc::PortAllocatorSession *,webrtc::PortInterface *)::$_0,std::allocator<webrtc::P2PTransportChannel::OnPortReady(webrtc::PortAllocatorSession *,webrtc::PortInterface *)::$_0>,void ()(webrtc::PortInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288297858;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::P2PTransportChannel::OnPortReady(webrtc::PortAllocatorSession *,webrtc::PortInterface *)::$_0,std::allocator<webrtc::P2PTransportChannel::OnPortReady(webrtc::PortAllocatorSession *,webrtc::PortInterface *)::$_0>,void ()(webrtc::PortInterface *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v2[130];
  v5 = v2[131];
  if (v4 != v5)
  {
    while (*v4 != v3)
    {
      if (++v4 == v5)
      {
        goto LABEL_14;
      }
    }

    if (v4 != v5)
    {
      for (i = v4 + 1; i != v5; ++i)
      {
        if (*i != v3)
        {
          *v4++ = *i;
        }
      }
    }
  }

  if (v4 > v5)
  {
    goto LABEL_30;
  }

  if (v4 != v5)
  {
    v2[131] = v4;
  }

LABEL_14:
  v7 = v2[133];
  v8 = v2[134];
  if (v7 != v8)
  {
    while (*v7 != v3)
    {
      if (++v7 == v8)
      {
        goto LABEL_27;
      }
    }

    if (v7 != v8)
    {
      for (j = v7 + 1; j != v8; ++j)
      {
        if (*j != v3)
        {
          *v7++ = *j;
        }
      }
    }
  }

  if (v7 > v8)
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    if (v7 != v8)
    {
      v2[134] = v7;
    }

LABEL_27:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::PortInterface *>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::P2PTransportChannel,webrtc::SentPacketInfo const&>(void *a1)
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

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::P2PTransportChannel::ResolveHostnameCandidate(webrtc::Candidate const&)::$_0 &>(webrtc::P2PTransportChannel **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*a1 + 192);
  v4 = *(*a1 + 193);
  if (v3 != v4)
  {
    while (v3[18].__r_.__value_.__l.__data_ != v2)
    {
      v3 = (v3 + 440);
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v3 == v4)
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
    }

    return;
  }

  webrtc::Candidate::Candidate(&v50, v3);
  webrtc::Candidate::Candidate(&v43, &v50);
  v5 = (*(*v2 + 32))(v2);
  if (!(*(*v5 + 24))(v5))
  {
    memset(&v52, 0, sizeof(v52));
    v53 = &unk_28828CE50;
    v58 = 0;
    *&v59.__r_.__value_.__r.__words[1] = 0uLL;
    v60 = 0;
    v54 = 0;
    v55 = 0u;
    v56 = 0;
    v57 = 0;
    if ((*(*v5 + 16))(v5, 30, &v52) & 1) != 0 || ((*(*v5 + 16))(v5, 2, &v52))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::SocketAddress::HostAsSensitiveURIString(&v44, &v59);
        webrtc::IPAddress::ToSensitiveString(&v53, &v51);
        webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v52;
        }

        else
        {
          v27 = v52.__r_.__value_.__r.__words[0];
        }

        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v52.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>(&v44, v27, size);
      }

      else if ((*(&v52.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(&v44, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        v44 = v52;
      }

      v45 = v54;
      v46 = v55;
      v47 = v56;
      v49 = v58;
      v48 = v57;
      webrtc::P2PTransportChannel::FinishAddingRemoteCandidate(v1, &v43);
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::SocketAddress::HostAsSensitiveURIString(&v44, &v59);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_33;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::SocketAddress::HostAsSensitiveURIString(&v44, &v52);
    (*(*v5 + 24))(v5);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/p2p_transport_channel.cc");
LABEL_33:
    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }
  }

  webrtc::Candidate::~Candidate(&v43.__r_.__value_.__l.__data_);
  v36 = v3[18].__r_.__value_.__r.__words[0];
  v3[18].__r_.__value_.__r.__words[0] = 0;
  v37 = *(v1 + 125);
  v52.__r_.__value_.__r.__words[0] = v36;
  v52.__r_.__value_.__r.__words[2] = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::P2PTransportChannel::OnCandidateResolved(webrtc::AsyncDnsResolverInterface *)::$_1>;
  v53 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::P2PTransportChannel::OnCandidateResolved(webrtc::AsyncDnsResolverInterface *)::$_1 &&>;
  (*(*v37 + 8))(v37, &v52, &v59, &v51);
  (v52.__r_.__value_.__r.__words[2])(1, &v52, &v52);
  v38 = *(v1 + 193);
  if (v38 == v3)
  {
    __break(1u);
  }

  else
  {
    if (&v3[18].__r_.__value_.__r.__words[1] != v38)
    {
      do
      {
        v39 = (v3 + 440);
        webrtc::Candidate::operator=(v3, &v3[18].__r_.__value_.__s.__data_[8]);
        v40 = v3[36].__r_.__value_.__l.__size_;
        v3[36].__r_.__value_.__l.__size_ = 0;
        data = v3[18].__r_.__value_.__l.__data_;
        v3[18].__r_.__value_.__r.__words[0] = v40;
        if (data)
        {
          (*(*data + 8))(data);
        }

        v3 = (v3 + 440);
      }

      while (&v39[18].__r_.__value_.__r.__words[1] != v38);
      v38 = *(v1 + 193);
      v3 = v39;
    }

    while (v38 != v3)
    {
      v42 = *(v38 - 1);
      *(v38 - 1) = 0;
      if (v42)
      {
        (*(*v42 + 8))(v42);
      }

      v38 -= 55;
      webrtc::Candidate::~Candidate(v38);
    }

    *(v1 + 193) = v3;
    webrtc::Candidate::~Candidate(&v50.__r_.__value_.__l.__data_);
  }
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::P2PTransportChannel::OnCandidateResolved(webrtc::AsyncDnsResolverInterface *)::$_1>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t webrtc::PacingController::PacingController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (*a5 != 1)
  {
    v9 = 0;
    goto LABEL_13;
  }

  (*(*a4 + 16))(&__p, a4, "WebRTC-Pacer-DrainQueue", 23);
  v8 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v8 = v61;
  }

  if (v8 >= 8)
  {
    p_p = __p;
    if ((v62 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v9 = *p_p != 0x64656C6261736944;
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = 1;
  if (v62 < 0)
  {
LABEL_11:
    operator delete(__p);
  }

LABEL_12:
  a4 = *(a1 + 16);
LABEL_13:
  *(a1 + 24) = v9;
  (*(*a4 + 16))(&__p, a4, "WebRTC-Pacer-PadInSilence", 25);
  v11 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v11 = v61;
  }

  if (v11 < 7)
  {
    v12 = 0;
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = __p;
  if ((v62 & 0x80u) == 0)
  {
    v13 = &__p;
  }

  v14 = *v13;
  v15 = *(v13 + 3);
  v12 = v14 == 1650552389 && v15 == 1684368482;
  if (v62 < 0)
  {
LABEL_27:
    operator delete(__p);
  }

LABEL_28:
  *(a1 + 25) = v12;
  (*(**(a1 + 16) + 16))(&__p);
  v17 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v17 = v61;
  }

  if (v17 < 7)
  {
    v18 = 0;
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v19 = __p;
  if ((v62 & 0x80u) == 0)
  {
    v19 = &__p;
  }

  v20 = *v19;
  v21 = *(v19 + 3);
  v18 = v20 == 1650552389 && v21 == 1684368482;
  if (v62 < 0)
  {
LABEL_42:
    operator delete(__p);
  }

LABEL_43:
  *(a1 + 26) = v18;
  (*(**(a1 + 16) + 16))(&__p);
  v23 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v23 = v61;
  }

  if (v23 < 7)
  {
    v24 = 0;
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v25 = __p;
  if ((v62 & 0x80u) == 0)
  {
    v25 = &__p;
  }

  v26 = *v25;
  v27 = *(v25 + 3);
  v24 = v26 == 1650552389 && v27 == 1684368482;
  if (v62 < 0)
  {
LABEL_57:
    operator delete(__p);
  }

LABEL_58:
  *(a1 + 27) = v24;
  (*(**(a1 + 16) + 16))(&__p);
  v29 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v29 = v61;
  }

  if (v29 < 7)
  {
    v30 = 0;
    if (v62 < 0)
    {
      goto LABEL_74;
    }

LABEL_72:
    *(a1 + 28) = v30;
    if ((*(a5 + 16) & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_73:
    v35 = 1;
    goto LABEL_90;
  }

  v31 = __p;
  if ((v62 & 0x80u) == 0)
  {
    v31 = &__p;
  }

  v32 = *v31;
  v33 = *(v31 + 3);
  v30 = v32 == 1650552389 && v33 == 1684368482;
  if ((v62 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

LABEL_74:
  operator delete(__p);
  *(a1 + 28) = v30;
  if (*(a5 + 16))
  {
    goto LABEL_73;
  }

LABEL_75:
  (*(**(a1 + 16) + 16))(&__p);
  v36 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v36 = v61;
  }

  if (v36 >= 7)
  {
    v37 = __p;
    if ((v62 & 0x80u) == 0)
    {
      v37 = &__p;
    }

    v38 = *v37;
    v39 = *(v37 + 3);
    v35 = v38 == 1650552389 && v39 == 1684368482;
    if (v62 < 0)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v35 = 0;
    if (v62 < 0)
    {
LABEL_89:
      operator delete(__p);
    }
  }

LABEL_90:
  *(a1 + 29) = v35;
  *(a1 + 32) = xmmword_273BA0320;
  *(a1 + 48) = *(a5 + 48);
  *(a1 + 56) = (*(**a1 + 16))();
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v41 = *(a1 + 16);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0x7FFFFFFFFFFFFFFFLL;
  webrtc::BitrateProberConfig::BitrateProberConfig(a1 + 176, v41);
  if (!*(a1 + 112))
  {
    *(a1 + 112) = 1;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/bitrate_prober.cc");
    }
  }

  *(a1 + 328) = 0;
  v49 = (*(*a2 + 16))(a2);
  *(a1 + 336) = v49;
  *(a1 + 344) = v49;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  v59 = *(a5 + 24);
  v50 = *(a5 + 40);
  *(a1 + 376) = *(a5 + 17);
  memset_pattern16((a1 + 392), &memset_pattern, 0x28uLL);
  *(a1 + 384) = 10;
  *(a1 + 400) = v59;
  *(a1 + 416) = v50;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = v49;
  *(a1 + 488) = 0;
  *(a1 + 496) = v49;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1065353216;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = -1;
  *(a1 + 792) = a1 + 792;
  *(a1 + 800) = a1 + 792;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = *(a5 + 8);
  *(a1 + 832) = 0;
  *(a1 + 836) = 0x10000;
  if ((*(a1 + 24) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
  }

  return a1;
}

void webrtc::PacingController::~PacingController(webrtc::PacingController *this)
{
  webrtc::PrioritizedPacketQueue::~PrioritizedPacketQueue((this + 376));
  *(this + 31) = &unk_288293910;
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  *(this + 22) = &unk_288293910;
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  std::deque<webrtc::BitrateProber::ProbeCluster>::~deque[abi:sn200100](this + 15);
}

uint64_t webrtc::PacingController::CurrentTime(webrtc::PacingController *this)
{
  result = (*(**this + 16))(*this);
  if (result < *(this + 7))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
    }

    result = *(this + 7);
  }

  *(this + 7) = result;
  return result;
}

uint64_t webrtc::PacingController::UpdateTimeAndGetElapsed(Timestamp *this, Timestamp a2)
{
  var0 = this[42].var0;
  if (var0 == 0x8000000000000000 || a2.var0 < var0)
  {
    return 0;
  }

  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    this[42].var0 = 0x7FFFFFFFFFFFFFFFLL;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      return 2000000;
    }

LABEL_10:
    v17[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc";
    v17[1] = 2506;
    v17[2] = &v16;
    v18[0] = "Elapsed time (";
    v18[1] = v17;
    webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v24, v5, &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      v20 = v18;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v19 = v22;
      v20 = v18;
    }

    v21[0] = ") longer than expected, limiting to ";
    v21[1] = &v19;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
      v15 = v21;
      v23 = v21;
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
        v15 = v23;
      }
    }

    else
    {
      v22 = v25;
      v15 = v21;
      v23 = v21;
    }

    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v8, v9, v10, v11, v12, v13, v14, **(*(v15[1] + 24) + 8));
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 2000000;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    return 2000000;
  }

  if (var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    this[42].var0 = a2.var0;
    return 0x8000000000000000;
  }

  v7 = a2.var0 - var0;
  v24 = v7;
  this[42].var0 = a2.var0;
  result = v7;
  if (v7 > 2000000)
  {
    goto LABEL_10;
  }

  return result;
}

void webrtc::PacingController::SetPacingRates(webrtc::PacingController *a1, uint64_t x1_0, unint64_t a3)
{
  if (x1_0 <= 0)
  {
    webrtc::webrtc_checks_impl::MakeVal<webrtc::DataRate,(void *)0>(&v43, x1_0);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v41, &v43);
    v42 = &v40;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v43.__r_.__value_.__l.__data_);
    webrtc::webrtc_checks_impl::MakeVal<webrtc::DataRate,(void *)0>(&v45, 0);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v43, &v45);
    v44 = &v41;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v45.__r_.__value_.__l.__data_);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc", 180, "pacing_rate > DataRate::Zero()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v31, v32, v33, v34, v44);
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_21:
    webrtc::webrtc_checks_impl::MakeVal<webrtc::DataRate,(void *)0>(&v43, a3);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v41, &v43);
    v42 = &v40;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v43.__r_.__value_.__l.__data_);
    webrtc::webrtc_checks_impl::MakeVal<webrtc::DataRate,(void *)0>(&v45, 0);
    webrtc::webrtc_checks_impl::ToStringVal::ToStringVal(&v43, &v45);
    v44 = &v41;
    webrtc::webrtc_checks_impl::ToStringVal::~ToStringVal(&v45.__r_.__value_.__l.__data_);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc", 181, "padding_rate >= DataRate::Zero()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal>(char const*,int,char const*,webrtc::webrtc_checks_impl::ToStringVal,webrtc::webrtc_checks_impl::ToStringVal const&)::t, v35, v36, v37, v38, v44);
    webrtc::PacingController::MaybeUpdateMediaRateDueToLongQueue(v39, v46);
    return;
  }

  if (a3 <= x1_0)
  {
    v12 = a3;
  }

  else
  {
    v12 = x1_0;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
      v12 = x1_0;
    }
  }

  v13 = *(a1 + 4);
  if (v13 < x1_0 || v12 > v13)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
    }

    if (x1_0 <= v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = x1_0;
    }

    *(a1 + 4) = llround(v22 * 1.1);
  }

  *(a1 + 11) = x1_0;
  *(a1 + 13) = v12;
  v23.var0 = webrtc::PacingController::CurrentTime(a1);
  webrtc::PacingController::MaybeUpdateMediaRateDueToLongQueue(a1, v23);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
  }
}

void webrtc::PacingController::MaybeUpdateMediaRateDueToLongQueue(webrtc::PacingController *this, Timestamp a2)
{
  *(this + 12) = *(this + 11);
  if (*(this + 24) != 1)
  {
    return;
  }

  v3 = *(this + 59);
  v4 = v3;
  if (*(this + 833) == 1)
  {
    v5 = *(this + 5) * *(this + 112);
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    if (v3 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }

    if (v3 == 0x8000000000000000 || v5 == 0x8000000000000000)
    {
      return;
    }

    v4 = v5 + v3;
  }

  if (v4 < 1)
  {
    return;
  }

LABEL_11:
  webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(this + 376, a2);
  v7 = *(this + 112);
  if (!v7)
  {
    v8 = 0;
    v9 = *(this + 103);
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

LABEL_15:
    if (v8 != 0x8000000000000000)
    {
      v10 = v9 - v8;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x8000000000000000)
      {
        v10 = 0x8000000000000000;
      }

      if (v10 < 1001)
      {
        v10 = 1000;
      }
    }

    goto LABEL_23;
  }

  v8 = *(this + 54) / v7;
  v9 = *(this + 103);
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

LABEL_23:
  v12 = 8000000 * v4 / v10;
  if (v12 > *(this + 11))
  {
    *(this + 12) = v12;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
    }
  }
}

uint64_t webrtc::PacingController::EnqueuePacket(webrtc::PacingController *this, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*(*a2 + 128))
  {
    v11 = *(this + 29) == 1 && *(v8 + 120) == 1;
    if (!v11 || *(v8 + 185) != 1 || *(v8 + 184) != 1)
    {
      goto LABEL_33;
    }

    v12 = *(v8 + 12);
    v13 = *(this + 512);
    if (v13)
    {
      v14 = vcnt_s8(v13);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        v15 = v12;
        if (*&v13 <= v12)
        {
          v15 = v12 % v13.i32[0];
        }
      }

      else
      {
        v15 = (v13.i32[0] - 1) & v12;
      }

      v16 = *(*(this + 63) + 8 * v15);
      if (v16)
      {
        v17 = *v16;
        if (v17)
        {
          if (v14.u32[0] < 2uLL)
          {
            v18 = *&v13 - 1;
            while (1)
            {
              v20 = v17[1];
              if (v20 == v12)
              {
                if (*(v17 + 4) == v12)
                {
                  goto LABEL_30;
                }
              }

              else if ((v20 & v18) != v15)
              {
                goto LABEL_31;
              }

              v17 = *v17;
              if (!v17)
              {
                goto LABEL_31;
              }
            }
          }

          do
          {
            v19 = v17[1];
            if (v19 == v12)
            {
              if (*(v17 + 4) == v12)
              {
LABEL_30:
                if (*(v17[3] + 248) <= 0)
                {
                  break;
                }

LABEL_33:
                if (*(this + 20) && *(this + 28) == 1)
                {
                  if (*(this + 320))
                  {
                    goto LABEL_39;
                  }

                  v28 = (*(*(this + 16) + 8 * (*(this + 19) / 0x49uLL)) + 56 * (*(this + 19) % 0x49uLL));
                  v29 = ((*v28 * v28[4] + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
                  v30 = (v29 >> 21) + (v29 >> 63);
                  if (*(this + 39) < v30)
                  {
                    v30 = *(this + 39);
                  }

                  if (v30 <= *(*a2 + 24) + *(*a2 + 16) + *(*a2 + 2))
                  {
LABEL_39:
                    *(this + 21) = 0x8000000000000000;
                    *(this + 28) = 2;
                  }
                }

                v31 = webrtc::PacingController::CurrentTime(this);
                if (!*(this + 112))
                {
                  SendTime = webrtc::PacingController::NextSendTime(this);
                  if (SendTime >= v31)
                  {
                    v33 = v31;
                  }

                  else
                  {
                    v33 = SendTime;
                  }

                  if ((SendTime + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
                  {
                    v34.var0 = v31;
                  }

                  else
                  {
                    v34.var0 = v33;
                  }

                  Elapsed = webrtc::PacingController::UpdateTimeAndGetElapsed(this, v34);
                  v36.i64[0] = *(this + 12) * Elapsed;
                  v36.i64[1] = *(this + 13) * Elapsed;
                  v37 = vaddq_s64(v36, vdupq_n_s64(0x3D0900uLL));
                  v37.i64[0] /= 8000000;
                  v37.i64[1] /= 8000000;
                  v38 = *(this + 72);
                  v39 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v38, vdupq_n_s64(0x8000000000000001)));
                  v40 = vnegq_f64(0);
                  v41 = vbslq_s8(vceqq_s64(v38, v40), v40, vsubq_s64(v38, vbslq_s8(vcgtq_s64(v38, v37), v37, v38)));
                  v38.f64[0] = NAN;
                  v38.f64[1] = NAN;
                  *(this + 72) = vbslq_s8(v39, vnegq_f64(v38), v41);
                }

                v42 = *a2;
                *a2 = 0;
                v46 = v42;
                webrtc::PrioritizedPacketQueue::Push(this + 47, v31, &v46);
              }
            }

            else
            {
              if (v19 >= *&v13)
              {
                v19 %= *&v13;
              }

              if (v19 != v15)
              {
                break;
              }
            }

            v17 = *v17;
          }

          while (v17);
        }
      }
    }

LABEL_31:
    webrtc::PrioritizedPacketQueue::RemovePacketsForSsrc((this + 376), v12, a3, a4, a5, a6, a7, a8);
    v21 = (*(**(this + 1) + 56))(*(this + 1), *(*a2 + 12));
    if ((v21 & 0x100000000) != 0)
    {
      webrtc::PrioritizedPacketQueue::RemovePacketsForSsrc((this + 376), v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_33;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc", 207, "packet->packet_type()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v45);
  return webrtc::PacingController::NextSendTime(v43);
}

uint64_t webrtc::PacingController::NextSendTime(webrtc::PacingController *this)
{
  result = webrtc::PacingController::CurrentTime(this);
  if (*(this + 64) == 1)
  {
LABEL_36:
    v15 = *(this + 43);
    v16 = v15 + 500000;
    if (v15 == 0x8000000000000000)
    {
      v16 = 0x8000000000000000;
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return v16;
    }
  }

  if (*(this + 28) != 2 || (*(this + 328) & 1) != 0 || !*(this + 20) || (v3 = *(this + 21), v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 26) & 1) == 0)
    {
      if (*(this + 73))
      {
        v4 = *(*(*(this + 69) + ((*(this + 72) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 72) & 0x1FFLL));
        result = *(*(*(v4 + 8) + 8 * (*(v4 + 32) / 0xAAuLL)) + 24 * (*(v4 + 32) % 0xAAuLL) + 8);
        if ((result + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
        {
          return result;
        }
      }
    }

    if (*(this + 28) != 1)
    {
      goto LABEL_26;
    }

    v5 = *(this + 79);
    if ((*(this + 376) & 1) == 0)
    {
      if (v5)
      {
        v10 = *(*(*(this + 75) + ((*(this + 78) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 78) & 0x1FFLL));
        result = *(*(*(v10 + 56) + 8 * (*(v10 + 80) / 0xAAuLL)) + 24 * (*(v10 + 80) % 0xAAuLL) + 8);
        if ((result + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
        {
          return result;
        }
      }

      goto LABEL_26;
    }

    if (v5)
    {
      v6 = *(*(*(this + 75) + ((*(this + 78) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 78) & 0x1FFLL));
      v7 = *(*(*(v6 + 56) + 8 * (*(v6 + 80) / 0xAAuLL)) + 24 * (*(v6 + 80) % 0xAAuLL) + 8);
      if (*(this + 85))
      {
LABEL_13:
        v8 = *(*(*(this + 81) + ((*(this + 84) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 84) & 0x1FFLL));
        v9 = *(*(*(v8 + 104) + 8 * (*(v8 + 128) / 0xAAuLL)) + 24 * (*(v8 + 128) % 0xAAuLL) + 8);
        goto LABEL_22;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      if (*(this + 85))
      {
        goto LABEL_13;
      }
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:
    if (v9 >= v7)
    {
      result = v7;
    }

    else
    {
      result = v9;
    }

    if ((result + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL)
    {
      return result;
    }

LABEL_26:
    if (*(this + 816) & 1) == 0 && (*(this + 368))
    {
      v11 = *(this + 12);
      if (v11 >= 1 && *(this + 112))
      {
        v12 = 0x7558BDB000uLL / v11;
        if ((0x7558BDB000uLL / v11) >= *(this + 6))
        {
          v12 = *(this + 6);
        }

        v13 = 8000000 * *(this + 9) / v11;
        if (v12 > v13)
        {
          v13 = 0;
        }

        v14 = *(this + 42);
        result = 0x7FFFFFFFFFFFFFFFLL;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v17 = *(this + 13);
        if (v17 < 1 || *(this + 112))
        {
          v18 = *(this + 42);
          v19 = v18 + 500000;
          if (v18 == 0x8000000000000000)
          {
            v19 = 0x8000000000000000;
          }

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            result = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            result = v19;
          }

          goto LABEL_60;
        }

        v20 = *(this + 9);
        v21 = *(this + 10);
        v13 = 8000000 * v20 / v11;
        v22 = 8000000 * v21 / v17;
        if (v13 <= v22)
        {
          v13 = v22;
        }

        if (!v13)
        {
          v13 = (v21 | v20) != 0;
        }

        v14 = *(this + 42);
        result = 0x7FFFFFFFFFFFFFFFLL;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_60;
        }
      }

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = v13 == 0x8000000000000000 || v14 == 0x8000000000000000;
        v24 = v13 + v14;
        if (v23)
        {
          result = 0x8000000000000000;
        }

        else
        {
          result = v24;
        }
      }

LABEL_60:
      if (*(this + 25) == 1)
      {
        v25 = *(this + 43);
        v26 = v25 + 500000;
        if (v25 == 0x8000000000000000)
        {
          v26 = 0x8000000000000000;
        }

        if (v25 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = v26;
        }

        if (v25 < result)
        {
          return v25;
        }
      }

      return result;
    }

    goto LABEL_36;
  }

  if (v3 != 0x8000000000000000)
  {
    return *(this + 21);
  }

  return result;
}

uint64_t webrtc::PacingController::ProcessPackets(webrtc::PacingController *this)
{
  v2 = *(this + 1);
  v3 = webrtc::PacingController::CurrentTime(this);
  v4 = v3;
  v245 = v3;
  if (*(this + 25) & 1) == 0 && (*(this + 64) & 1) == 0 && (*(this + 816) & 1) == 0 && (*(this + 368))
  {
    goto LABEL_108;
  }

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(this + 43);
    if (v5 != 0x8000000000000000 && (v3 == 0x8000000000000000 || v5 == 0x7FFFFFFFFFFFFFFFLL || v3 - v5 <= 499999))
    {
      goto LABEL_108;
    }
  }

  if (*(this + 368) != 1)
  {
    goto LABEL_107;
  }

  (*(**(this + 1) + 32))(&v290);
  size = v290.__r_.__value_.__l.__size_;
  v6 = v290.__r_.__value_.__r.__words[0];
  if (v290.__r_.__value_.__r.__words[0] == v290.__r_.__value_.__l.__size_)
  {
    v7 = 0;
    if (v290.__r_.__value_.__r.__words[0])
    {
      goto LABEL_74;
    }

    goto LABEL_91;
  }

  v7 = 0;
  do
  {
    v9 = *v6;
    v10 = *(*v6 + 24) + *(*v6 + 2);
    v11 = v10 == 0x8000000000000000 || v7 == 0x8000000000000000;
    v12 = v10 + v7;
    if (v11)
    {
      v12 = 0x8000000000000000;
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v13;
    }

    v14 = *(this + 1);
    *v6 = 0;
    v294 = v9;
    __dst.__r_.__value_.__r.__words[0] = 0;
    *&__dst.__r_.__value_.__r.__words[1] = xmmword_273B921F0;
    (*(*v14 + 16))(v14, &v294, &__dst);
    v15 = v294;
    v294 = 0;
    if (v15)
    {
      v16 = v15[22];
      if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v16 + 8))(v16);
      }

      v17 = v15[11];
      if (v17 && atomic_fetch_add((v17 + 24), 0xFFFFFFFF) == 1)
      {
        v18 = *(v17 + 16);
        *(v17 + 16) = 0;
        if (v18)
        {
          MEMORY[0x2743DA520](v18, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v17, 0x1010C40EE34DA14);
      }

      v19 = v15[7];
      if (v19)
      {
        v15[8] = v19;
        operator delete(v19);
      }

      MEMORY[0x2743DA540](v15, 0x1020C4060F6C936);
    }

    (*(**(this + 1) + 24))(&__dst);
    v27 = __dst.__r_.__value_.__l.__size_;
    v26 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__r.__words[0] == __dst.__r_.__value_.__l.__size_)
    {
      if (!__dst.__r_.__value_.__r.__words[0])
      {
        goto LABEL_15;
      }

LABEL_56:
      v34 = __dst.__r_.__value_.__l.__size_;
      v8 = v26;
      if (__dst.__r_.__value_.__l.__size_ != v26)
      {
        do
        {
          v36 = *--v34;
          v35 = v36;
          *v34 = 0;
          if (v36)
          {
            v37 = v35[22];
            if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v37 + 8))(v37);
            }

            v38 = v35[11];
            if (v38 && atomic_fetch_add((v38 + 24), 0xFFFFFFFF) == 1)
            {
              v39 = *(v38 + 16);
              *(v38 + 16) = 0;
              if (v39)
              {
                MEMORY[0x2743DA520](v39, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v38, 0x1010C40EE34DA14);
            }

            v40 = v35[7];
            if (v40)
            {
              v35[8] = v40;
              operator delete(v40);
            }

            MEMORY[0x2743DA540](v35, 0x1020C4060F6C936);
          }
        }

        while (v34 != v26);
        v8 = __dst.__r_.__value_.__r.__words[0];
      }

      __dst.__r_.__value_.__l.__size_ = v26;
      operator delete(v8);
      goto LABEL_15;
    }

    do
    {
      v28 = *v26;
      *v26 = 0;
      v293 = v28;
      webrtc::PacingController::EnqueuePacket(this, &v293, v20, v21, v22, v23, v24, v25);
      v29 = v293;
      v293 = 0;
      if (v29)
      {
        v30 = v29[22];
        if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v30 + 8))(v30);
        }

        v31 = v29[11];
        if (v31 && atomic_fetch_add((v31 + 24), 0xFFFFFFFF) == 1)
        {
          v32 = *(v31 + 16);
          *(v31 + 16) = 0;
          if (v32)
          {
            MEMORY[0x2743DA520](v32, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v31, 0x1010C40EE34DA14);
        }

        v33 = v29[7];
        if (v33)
        {
          v29[8] = v33;
          operator delete(v33);
        }

        MEMORY[0x2743DA540](v29, 0x1020C4060F6C936);
      }

      ++v26;
    }

    while (v26 != v27);
    v26 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__r.__words[0])
    {
      goto LABEL_56;
    }

LABEL_15:
    v6 += 8;
  }

  while (v6 != size);
  v6 = v290.__r_.__value_.__r.__words[0];
  if (!v290.__r_.__value_.__r.__words[0])
  {
    goto LABEL_91;
  }

LABEL_74:
  v41 = v290.__r_.__value_.__l.__size_;
  v42 = v6;
  if (v290.__r_.__value_.__l.__size_ != v6)
  {
    do
    {
      v44 = *--v41;
      v43 = v44;
      *v41 = 0;
      if (v44)
      {
        v45 = v43[22];
        if (v45 && atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v45 + 8))(v45);
        }

        v46 = v43[11];
        if (v46 && atomic_fetch_add((v46 + 24), 0xFFFFFFFF) == 1)
        {
          v47 = *(v46 + 16);
          *(v46 + 16) = 0;
          if (v47)
          {
            MEMORY[0x2743DA520](v47, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v46, 0x1010C40EE34DA14);
        }

        v48 = v43[7];
        if (v48)
        {
          v43[8] = v48;
          operator delete(v48);
        }

        MEMORY[0x2743DA540](v43, 0x1020C4060F6C936);
      }
    }

    while (v41 != v6);
    v42 = v290.__r_.__value_.__r.__words[0];
  }

  v290.__r_.__value_.__l.__size_ = v6;
  operator delete(v42);
LABEL_91:
  v4 = v245;
  if (v7 >= 1)
  {
    v49 = 0x7FFFFFFFFFFFFFFFLL;
    v50 = *(this + 9);
    v51 = *(this + 10);
    v52 = v50 == 0x7FFFFFFFFFFFFFFFLL;
    if (v50 != 0x8000000000000000)
    {
      v50 += v7;
    }

    v53 = v51 == 0x7FFFFFFFFFFFFFFFLL;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v52 = 1;
      v53 = 1;
    }

    if (v52)
    {
      v50 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((500000 * *(this + 12) + 4000000) / 8000000 < v50)
    {
      v50 = (500000 * *(this + 12) + 4000000) / 8000000;
    }

    if (v51 != 0x8000000000000000)
    {
      v51 += v7;
    }

    if (!v53)
    {
      v49 = v51;
    }

    v54 = *(this + 13);
    if ((500000 * v54 + 4000000) / 8000000 < v49)
    {
      v49 = (500000 * v54 + 4000000) / 8000000;
    }

    *(this + 9) = v50;
    *(this + 10) = v49;
  }

LABEL_107:
  *(this + 43) = v4;
LABEL_108:
  if (*(this + 64))
  {
    return (*(*v2 + 40))(v2);
  }

  v56 = (this + 112);
  v55 = *(this + 28);
  SendTime = webrtc::PacingController::NextSendTime(this);
  v58 = SendTime;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = 1000;
    if (v55 != 2)
    {
      v59 = 0;
    }

    v60 = v59 + v4;
    if (v4 == 0x8000000000000000)
    {
      v60 = 0x8000000000000000;
    }

    if (v60 < SendTime)
    {
      v61.var0 = v4;
      Elapsed = webrtc::PacingController::UpdateTimeAndGetElapsed(this, v61);
      v63.i64[0] = *(this + 12) * Elapsed;
      v63.i64[1] = *(this + 13) * Elapsed;
      v64 = vaddq_s64(v63, vdupq_n_s64(0x3D0900uLL));
      v64.i64[0] /= 8000000;
      v64.i64[1] /= 8000000;
      v65 = *(this + 72);
      v66 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v65, vdupq_n_s64(0x8000000000000001)));
      v67 = vnegq_f64(0);
      v68 = vbslq_s8(vceqq_s64(v65, v67), v67, vsubq_s64(v65, vbslq_s8(vcgtq_s64(v65, v64), v64, v65)));
      v65.f64[0] = NAN;
      v65.f64[1] = NAN;
      *(this + 72) = vbslq_s8(v66, vnegq_f64(v65), v68);
      return (*(*v2 + 40))(v2);
    }
  }

  v69.var0 = SendTime;
  v70 = webrtc::PacingController::UpdateTimeAndGetElapsed(this, v69);
  if (v70 >= 1)
  {
    v75.i64[0] = *(this + 12) * v70;
    v75.i64[1] = *(this + 13) * v70;
    v76 = vaddq_s64(v75, vdupq_n_s64(0x3D0900uLL));
    v76.i64[0] /= 8000000;
    v76.i64[1] /= 8000000;
    v77 = *(this + 72);
    v78 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v77, vdupq_n_s64(0x8000000000000001)));
    v79 = vnegq_f64(0);
    v80 = vbslq_s8(vceqq_s64(v77, v79), v79, vsubq_s64(v77, vbslq_s8(vcgtq_s64(v77, v76), v76, v77)));
    v77.f64[0] = NAN;
    v77.f64[1] = NAN;
    *(this + 72) = vbslq_s8(v78, vnegq_f64(v77), v80);
  }

  *&v292[0] = 0;
  v81 = xmmword_273B921F0;
  *(v292 + 8) = xmmword_273B921F0;
  if (*v56 != 2)
  {
    v93 = 0;
    v243 = 0;
    goto LABEL_139;
  }

  v82 = *(this + 20);
  if (!v82)
  {
    v92 = 0;
    v290.__r_.__value_.__s.__data_[0] = 0;
    v90 = 1;
    goto LABEL_134;
  }

  v83 = *(this + 21);
  if ((v83 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_131;
  }

  v84 = v4 - v83;
  if (v4 == 0x8000000000000000)
  {
    v84 = 0x8000000000000000;
  }

  v85 = v4 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v84;
  if (v85 <= *(this + 30))
  {
LABEL_131:
    v90 = 0;
    v91 = *(*(this + 16) + 8 * (*(this + 19) / 0x49uLL)) + 56 * (*(this + 19) % 0x49uLL);
    *&v290.__r_.__value_.__l.__data_ = *v91;
    LODWORD(v290.__r_.__value_.__r.__words[2]) = *(v91 + 16);
    HIDWORD(v290.__r_.__value_.__r.__words[2]) = *(v91 + 28);
    v92 = 1;
    goto LABEL_134;
  }

  v86 = *(this + 16);
  v87 = *(this + 19);
  if (!*(v86 + ((((v87 * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8)))
  {
    goto LABEL_459;
  }

  v88 = v82 - 1;
  v89 = v87 + 1;
  *(this + 19) = v89;
  *(this + 20) = v88;
  if (v89 >= 0x92)
  {
    operator delete(*v86);
    v81 = xmmword_273B921F0;
    *(this + 16) += 8;
    v88 = *(this + 20);
    *(this + 19) -= 73;
  }

  if (v88)
  {
    goto LABEL_131;
  }

  v92 = 0;
  v90 = 1;
  *v56 = 1;
  v290.__r_.__value_.__s.__data_[0] = 0;
LABEL_134:
  v93 = 0;
  LOBYTE(v291) = v92;
  v11 = v92 == 0;
  p_dst = &__dst;
  if (!v11)
  {
    p_dst = &v290;
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  *&__dst.__r_.__value_.__r.__words[1] = v81;
  v292[0] = *&p_dst->__r_.__value_.__l.__data_;
  *&v292[1] = *(&p_dst->__r_.__value_.__l + 2);
  v243 = DWORD2(v292[0]) != -1;
  if (DWORD2(v292[0]) != -1 && (v90 & 1) == 0)
  {
    v95 = (*(*(this + 16) + 8 * (*(this + 19) / 0x49uLL)) + 56 * (*(this + 19) % 0x49uLL));
    v96 = ((v95[4] * *v95 + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
    v93 = (v96 >> 21) + (v96 >> 63);
    v243 = 1;
  }

LABEL_139:
  if (*(this + 209) < 1)
  {
    v205 = 0;
    v204 = 0;
    v248 = 0;
    goto LABEL_406;
  }

  v250 = 0;
  v248 = 0;
  v247 = 0;
  v236 = 0;
  v97 = v4 - 50000;
  if (v4 == 0x8000000000000000)
  {
    v97 = 0x8000000000000000;
  }

  v241 = v97;
  v242 = v93;
  v239 = vdupq_n_s64(2uLL);
  v240 = vdupq_n_s64(0x8000000000000001);
  v98.f64[0] = NAN;
  v98.f64[1] = NAN;
  v237 = vnegq_f64(v98);
  v238 = vnegq_f64(0);
  while (2)
  {
    v99 = DWORD2(v292[0]);
    if (DWORD2(v292[0]) != -1 && DWORD1(v292[1]) == 0)
    {
      v101 = v58;
      (*(**(this + 1) + 32))(&v290);
      v102 = v290.__r_.__value_.__l.__size_;
      v103 = v290.__r_.__value_.__r.__words[0];
      if (v290.__r_.__value_.__r.__words[0] == v290.__r_.__value_.__l.__size_)
      {
        if (v290.__r_.__value_.__r.__words[0])
        {
          v290.__r_.__value_.__l.__size_ = v290.__r_.__value_.__r.__words[0];
          operator delete(v290.__r_.__value_.__l.__data_);
        }

        v58 = v101;
        goto LABEL_168;
      }

      v104 = *v290.__r_.__value_.__l.__data_;
      *v290.__r_.__value_.__l.__data_ = 0;
      __dst.__r_.__value_.__r.__words[0] = v104;
      do
      {
        v106 = *--v102;
        v105 = v106;
        *v102 = 0;
        if (v106)
        {
          v107 = v105[22];
          if (v107 && atomic_fetch_add(v107 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v107 + 8))(v107);
          }

          v108 = v105[11];
          if (v108 && atomic_fetch_add((v108 + 24), 0xFFFFFFFF) == 1)
          {
            v109 = *(v108 + 16);
            *(v108 + 16) = 0;
            if (v109)
            {
              MEMORY[0x2743DA520](v109, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v108, 0x1010C40EE34DA14);
          }

          v110 = v105[7];
          if (v110)
          {
            v105[8] = v110;
            operator delete(v110);
          }

          MEMORY[0x2743DA540](v105, 0x1020C4060F6C936);
        }
      }

      while (v102 != v103);
      v290.__r_.__value_.__l.__size_ = v103;
      operator delete(v290.__r_.__value_.__l.__data_);
      v58 = v101;
      v111 = __dst.__r_.__value_.__r.__words[0];
      if (!__dst.__r_.__value_.__r.__words[0])
      {
        goto LABEL_270;
      }

LABEL_202:
      if ((*(v111 + 128) & 1) == 0)
      {
        goto LABEL_459;
      }

      v124 = *(v111 + 24) + *(v111 + 2);
      if (*(this + 833) == 1)
      {
        v125 = *(v111 + 16);
        v126 = *(this + 5);
        v127 = v126 == 0x8000000000000000 || v125 == 0x8000000000000000;
        v128 = v126 + v125;
        if (v127)
        {
          v128 = 0x8000000000000000;
        }

        v129 = v128 == 0x8000000000000000 || v124 == 0x8000000000000000;
        v130 = v128 + v124;
        if (v129)
        {
          v130 = 0x8000000000000000;
        }

        if (v124 == 0x7FFFFFFFFFFFFFFFLL || v128 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v132 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v132 = v130;
        }

        if (v125 == 0x7FFFFFFFFFFFFFFFLL || v126 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v124 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v124 = v132;
        }
      }

      v244 = *(v111 + 120);
      v134 = *(this + 1);
      __dst.__r_.__value_.__r.__words[0] = 0;
      v288 = v111;
      (*(*v134 + 16))(v134, &v288, v292);
      v135 = v288;
      v288 = 0;
      if (v135)
      {
        v136 = v135[22];
        if (v136 && atomic_fetch_add(v136 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v136 + 8))(v136);
        }

        v137 = v135[11];
        if (v137 && atomic_fetch_add((v137 + 24), 0xFFFFFFFF) == 1)
        {
          v138 = *(v137 + 16);
          *(v137 + 16) = 0;
          if (v138)
          {
            MEMORY[0x2743DA520](v138, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v137, 0x1010C40EE34DA14);
        }

        v139 = v135[7];
        if (v139)
        {
          v135[8] = v139;
          operator delete(v139);
        }

        MEMORY[0x2743DA540](v135, 0x1020C4060F6C936);
      }

      v246 = v58;
      (*(**(this + 1) + 24))(&v290);
      v143 = v290.__r_.__value_.__l.__size_;
      v142 = v290.__r_.__value_.__r.__words[0];
      if (v290.__r_.__value_.__r.__words[0] == v290.__r_.__value_.__l.__size_)
      {
        if (v290.__r_.__value_.__r.__words[0])
        {
LABEL_240:
          v144 = v290.__r_.__value_.__l.__size_;
          if (v290.__r_.__value_.__l.__size_ == v142)
          {
            v290.__r_.__value_.__l.__size_ = v142;
            operator delete(v142);
            v145 = 0x7FFFFFFFFFFFFFFFLL;
            if (v248 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_242;
            }

LABEL_289:
            v4 = v245;
            v58 = v246;
            v146 = v244;
            if (v124 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v124 == 0x8000000000000000 || v248 == 0x8000000000000000)
              {
                v145 = 0x8000000000000000;
              }

              else
              {
                v145 = v124 + v248;
              }
            }

            if (v244 == 4)
            {
LABEL_299:
              if (v146)
              {
                if (v124 < 1)
                {
                  goto LABEL_321;
                }
              }

              else if (*(this + 832) != 1 || v124 <= 0)
              {
                goto LABEL_321;
              }

              v162 = *(this + 9);
              v163 = *(this + 10);
              v164 = v162 == 0x7FFFFFFFFFFFFFFFLL;
              if (v162 != 0x8000000000000000)
              {
                v162 += v124;
              }

              v165 = v163 == 0x7FFFFFFFFFFFFFFFLL;
              if (v124 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v164 = 1;
                v165 = 1;
              }

              if (v164)
              {
                v162 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if ((500000 * *(this + 12) + 4000000) / 8000000 < v162)
              {
                v162 = (500000 * *(this + 12) + 4000000) / 8000000;
              }

              if (v163 != 0x8000000000000000)
              {
                v163 += v124;
              }

              if (v165)
              {
                v163 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v166 = *(this + 13);
              if ((500000 * v166 + 4000000) / 8000000 < v163)
              {
                v163 = (500000 * v166 + 4000000) / 8000000;
              }

              *(this + 9) = v162;
              *(this + 10) = v163;
LABEL_321:
              ++v247;
              *(this + 43) = v4;
              if (v243)
              {
                DWORD1(v292[1]) += v124;
                if (v145 < v242)
                {
                  v167 = webrtc::PacingController::NextSendTime(this);
                  if (v167 >= v4)
                  {
                    v58 = v4;
                  }

                  else
                  {
                    v58 = v167;
                  }

                  goto LABEL_328;
                }
              }

              else
              {
                v58 = webrtc::PacingController::NextSendTime(this);
                if (v58 <= v4)
                {
LABEL_328:
                  v169.var0 = v58;
                  v170 = webrtc::PacingController::UpdateTimeAndGetElapsed(this, v169);
                  v168 = 0;
                  v171.i64[0] = *(this + 12) * v170;
                  v171.i64[1] = *(this + 13) * v170;
                  v172 = vaddq_s64(v171, vdupq_n_s64(0x3D0900uLL));
                  v172.i64[0] /= 8000000;
                  v172.i64[1] /= 8000000;
                  *(this + 72) = vbslq_s8(vcgtq_u64(v239, vaddq_s64(*(this + 72), v240)), v237, vbslq_s8(vceqq_s64(*(this + 72), v238), v238, vsubq_s64(*(this + 72), vbslq_s8(vcgtq_s64(*(this + 72), v172), v172, *(this + 72)))));
                  goto LABEL_329;
                }
              }

              v168 = 1;
LABEL_329:
              v248 = v145;
              goto LABEL_386;
            }

LABEL_297:
            if ((*(this + 360) & 1) == 0)
            {
              *(this + 360) = 1;
              *(this + 44) = v4;
            }

            goto LABEL_299;
          }

          do
          {
            v154 = *--v144;
            v153 = v154;
            *v144 = 0;
            if (v154)
            {
              v155 = v153[22];
              if (v155 && atomic_fetch_add(v155 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v155 + 8))(v155);
              }

              v156 = v153[11];
              if (v156 && atomic_fetch_add((v156 + 24), 0xFFFFFFFF) == 1)
              {
                v157 = *(v156 + 16);
                *(v156 + 16) = 0;
                if (v157)
                {
                  MEMORY[0x2743DA520](v157, 0x1000C8077774924);
                }

                MEMORY[0x2743DA540](v156, 0x1010C40EE34DA14);
              }

              v158 = v153[7];
              if (v158)
              {
                v153[8] = v158;
                operator delete(v158);
              }

              MEMORY[0x2743DA540](v153, 0x1020C4060F6C936);
            }
          }

          while (v144 != v142);
          v290.__r_.__value_.__l.__size_ = v142;
          operator delete(v290.__r_.__value_.__l.__data_);
          v145 = 0x7FFFFFFFFFFFFFFFLL;
          if (v248 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_289;
          }

LABEL_242:
          v4 = v245;
          v58 = v246;
          v146 = v244;
          if (v244 == 4)
          {
            goto LABEL_299;
          }

          goto LABEL_297;
        }
      }

      else
      {
        do
        {
          v147 = *v142;
          *v142 = 0;
          v287 = v147;
          webrtc::PacingController::EnqueuePacket(this, &v287, v140, v141, v71, v72, v73, v74);
          v148 = v287;
          v287 = 0;
          if (v148)
          {
            v149 = v148[22];
            if (v149 && atomic_fetch_add(v149 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v149 + 8))(v149);
            }

            v150 = v148[11];
            if (v150 && atomic_fetch_add((v150 + 24), 0xFFFFFFFF) == 1)
            {
              v151 = *(v150 + 16);
              *(v150 + 16) = 0;
              if (v151)
              {
                MEMORY[0x2743DA520](v151, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v150, 0x1010C40EE34DA14);
            }

            v152 = v148[7];
            if (v152)
            {
              v148[8] = v152;
              operator delete(v152);
            }

            MEMORY[0x2743DA540](v148, 0x1020C4060F6C936);
          }

          ++v142;
        }

        while (v142 != v143);
        v142 = v290.__r_.__value_.__r.__words[0];
        if (v290.__r_.__value_.__r.__words[0])
        {
          goto LABEL_240;
        }
      }

      v145 = 0x7FFFFFFFFFFFFFFFLL;
      if (v248 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_289;
      }

      goto LABEL_242;
    }

LABEL_168:
    if (!*(this + 112))
    {
      goto LABEL_186;
    }

    if ((*(this + 26) & 1) != 0 || !*(this + 73) || (v112 = *(*(*(this + 69) + ((*(this + 72) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 72) & 0x1FFLL)), v113 = *(*(*(v112 + 8) + 8 * (*(v112 + 32) / 0xAAuLL)) + 24 * (*(v112 + 32) % 0xAAuLL) + 8), (v113 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL))
    {
      if (*(this + 28) != 1)
      {
        goto LABEL_182;
      }

      v114 = *(this + 79);
      if (*(this + 376))
      {
        if (v114)
        {
          v115 = *(*(*(this + 75) + ((*(this + 78) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 78) & 0x1FFLL));
          v113 = *(*(*(v115 + 56) + 8 * (*(v115 + 80) / 0xAAuLL)) + 24 * (*(v115 + 80) % 0xAAuLL) + 8);
          if (*(this + 85))
          {
            goto LABEL_176;
          }

LABEL_350:
          if ((v113 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v113 = 0x7FFFFFFFFFFFFFFFLL;
          if (!*(this + 85))
          {
            goto LABEL_350;
          }

LABEL_176:
          v116 = *(*(*(this + 81) + ((*(this + 84) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 84) & 0x1FFLL));
          v117 = *(*(*(v116 + 104) + 8 * (*(v116 + 128) / 0xAAuLL)) + 24 * (*(v116 + 128) % 0xAAuLL) + 8);
          if (v117 < v113)
          {
            v113 = v117;
          }

          if ((v113 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
          {
LABEL_182:
            v113 = 0x8000000000000000;
          }
        }
      }

      else
      {
        if (!v114)
        {
          goto LABEL_182;
        }

        v118 = *(*(*(this + 75) + ((*(this + 78) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 78) & 0x1FFLL));
        v113 = *(*(*(v118 + 56) + 8 * (*(v118 + 80) / 0xAAuLL)) + 24 * (*(v118 + 80) % 0xAAuLL) + 8);
        if ((v113 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_182;
        }
      }
    }

    if (v99 != -1 || (v113 - 0x7FFFFFFFFFFFFFFFLL) > 1)
    {
      goto LABEL_201;
    }

    if (*(this + 816) == 1)
    {
      goto LABEL_186;
    }

    if (v4 > v58 || *(this + 6))
    {
      goto LABEL_201;
    }

    v119 = 8000000 * *(this + 9) / *(this + 12);
    v120 = v119 == 0x8000000000000000 || v4 == 0x8000000000000000;
    v121 = v119 + v4;
    if (v120)
    {
      v121 = 0x8000000000000000;
    }

    v122 = v119 == 0x7FFFFFFFFFFFFFFFLL || v4 == 0x7FFFFFFFFFFFFFFFLL;
    v123 = v122 ? 0x7FFFFFFFFFFFFFFFLL : v121;
    if (v123 > v58)
    {
LABEL_186:
      __dst.__r_.__value_.__r.__words[0] = 0;
    }

    else
    {
LABEL_201:
      webrtc::PrioritizedPacketQueue::Pop((this + 376), v71, v72, v73, v74, &__dst);
      v111 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__r.__words[0])
      {
        goto LABEL_202;
      }
    }

LABEL_270:
    if (v4 == 0x7FFFFFFFFFFFFFFFLL || v58 == 0x8000000000000000)
    {
      v58 = 0x7FFFFFFFFFFFFFFFLL;
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_279;
      }

      goto LABEL_278;
    }

    if (v4 != 0x8000000000000000 && v58 != 0x7FFFFFFFFFFFFFFFLL && v4 - v58 > 50000)
    {
LABEL_278:
      v58 = v241;
LABEL_279:
      v159 = *(this + 42);
      if (v159 <= v58)
      {
        v159 = v58;
      }

      *(this + 42) = v159;
      if (*(this + 112))
      {
        goto LABEL_385;
      }

LABEL_282:
      if (*(this + 816))
      {
        goto LABEL_385;
      }

      if (v242)
      {
        v160 = v242 - v248;
        if (v242 <= v248)
        {
          goto LABEL_385;
        }

        if (v248 == 0x8000000000000000)
        {
          v160 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_334;
        }
      }

      else
      {
        v173 = *(this + 13);
        if (v173 < 1 || *(this + 10))
        {
          goto LABEL_385;
        }

        v160 = (5000 * v173 + 4000000) / 0x7A1200uLL;
      }

      if (v160 < 1)
      {
        goto LABEL_385;
      }

LABEL_334:
      (*(**(this + 1) + 32))(&v290);
      v176 = *&v290.__r_.__value_.__l.__data_;
      if (v290.__r_.__value_.__r.__words[0] == v290.__r_.__value_.__l.__size_)
      {
        v186 = *(this + 10);
        v187 = v186 + v160;
        if (v186 == 0x8000000000000000)
        {
          v187 = 0x8000000000000000;
        }

        if (v186 == 0x7FFFFFFFFFFFFFFFLL || v160 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v189 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v189 = v187;
        }

        if ((500000 * *(this + 13) + 4000000) / 8000000 < v189)
        {
          v189 = (500000 * *(this + 13) + 4000000) / 8000000;
        }

        *(this + 10) = v189;
        v185 = v176;
        if (!v176)
        {
          goto LABEL_382;
        }
      }

      else
      {
        v177 = v290.__r_.__value_.__l.__size_ - v290.__r_.__value_.__r.__words[0];
        v178 = v290.__r_.__value_.__r.__words[0];
        do
        {
          v179 = *v178;
          *v178 = 0;
          v289 = v179;
          webrtc::PacingController::EnqueuePacket(this, &v289, v174, v175, v71, v72, v73, v74);
          v180 = v289;
          v289 = 0;
          if (v180)
          {
            v181 = v180[22];
            if (v181 && atomic_fetch_add(v181 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v181 + 8))(v181);
            }

            v182 = v180[11];
            if (v182 && atomic_fetch_add((v182 + 24), 0xFFFFFFFF) == 1)
            {
              v183 = *(v182 + 16);
              *(v182 + 16) = 0;
              if (v183)
              {
                MEMORY[0x2743DA520](v183, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v182, 0x1010C40EE34DA14);
            }

            v184 = v180[7];
            if (v184)
            {
              v180[8] = v184;
              operator delete(v184);
            }

            MEMORY[0x2743DA540](v180, 0x1020C4060F6C936);
          }

          ++v178;
        }

        while (v178 != *(&v176 + 1));
        v236 += v177 >> 3;
        v185 = v290.__r_.__value_.__r.__words[0];
        if (!v290.__r_.__value_.__r.__words[0])
        {
          goto LABEL_382;
        }
      }

      v190 = v290.__r_.__value_.__l.__size_;
      v191 = v185;
      if (v290.__r_.__value_.__l.__size_ != v185)
      {
        do
        {
          v193 = *--v190;
          v192 = v193;
          *v190 = 0;
          if (v193)
          {
            v194 = v192[22];
            if (v194 && atomic_fetch_add(v194 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v194 + 8))(v194);
            }

            v195 = v192[11];
            if (v195 && atomic_fetch_add((v195 + 24), 0xFFFFFFFF) == 1)
            {
              v196 = *(v195 + 16);
              *(v195 + 16) = 0;
              if (v196)
              {
                MEMORY[0x2743DA520](v196, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v195, 0x1010C40EE34DA14);
            }

            v197 = v192[7];
            if (v197)
            {
              v192[8] = v197;
              operator delete(v197);
            }

            MEMORY[0x2743DA540](v192, 0x1020C4060F6C936);
          }
        }

        while (v190 != v185);
        v191 = v290.__r_.__value_.__r.__words[0];
      }

      v290.__r_.__value_.__l.__size_ = v185;
      operator delete(v191);
LABEL_382:
      if (v176 == *(&v176 + 1))
      {
        v4 = v245;
        goto LABEL_385;
      }

      v168 = 0;
      v4 = v245;
      goto LABEL_386;
    }

    if (!*(this + 112))
    {
      goto LABEL_282;
    }

LABEL_385:
    v168 = 1;
LABEL_386:
    v198 = __dst.__r_.__value_.__r.__words[0];
    __dst.__r_.__value_.__r.__words[0] = 0;
    if (v198)
    {
      v199 = v198[22];
      if (v199 && atomic_fetch_add(v199 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v199 + 8))(v199);
      }

      v200 = v198[11];
      if (v200 && atomic_fetch_add((v200 + 24), 0xFFFFFFFF) == 1)
      {
        v201 = *(v200 + 16);
        *(v200 + 16) = 0;
        if (v201)
        {
          MEMORY[0x2743DA520](v201, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v200, 0x1010C40EE34DA14);
      }

      v202 = v198[7];
      if (v202)
      {
        v198[8] = v202;
        operator delete(v202);
      }

      MEMORY[0x2743DA540](v198, 0x1020C4060F6C936);
    }

    v203 = *(this + 209);
    if ((v168 & 1) == 0 && ++v250 < v203)
    {
      continue;
    }

    break;
  }

  v204 = v247;
  v205 = v236;
  v93 = v242;
  if (v250 >= v203)
  {
LABEL_406:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
LABEL_457:
      *(this + 42) = v4;
      *(this + 43) = v4;
      return (*(*v2 + 40))(v2);
    }

    v252[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc";
    v252[1] = 4395;
    v252[2] = &v251;
    v253[0] = "PacingController exceeded max iterations in send-loop. Debug info: ";
    v253[1] = v252;
    v254[0] = " packets sent = ";
    v254[1] = v253;
    v255[0] = v204;
    v255[1] = v254;
    v256[0] = ", padding packets generated = ";
    v256[1] = v255;
    v257[0] = v205;
    v257[1] = v256;
    v258[0] = ", bytes sent = ";
    v258[1] = v257;
    v259[0] = v248;
    v259[1] = v258;
    v260[0] = ", probing = ";
    v213 = "false";
    if (v243)
    {
      v214 = "true";
    }

    else
    {
      v214 = "false";
    }

    v260[1] = v259;
    v261[0] = v214;
    v261[1] = v260;
    v262[0] = ", recommended_probe_size = ";
    v262[1] = v261;
    v263[0] = v93;
    v263[1] = v262;
    v264[0] = ", now = ";
    v264[1] = v263;
    v265[0] = v4;
    v265[1] = v264;
    v266[0] = ", target_send_time = ";
    v266[1] = v265;
    v267[0] = v58;
    v267[1] = v266;
    v268[0] = ", last_process_time = ";
    v215 = *(this + 42);
    v216 = *(this + 43);
    v268[1] = v267;
    v269[0] = v215;
    v269[1] = v268;
    v270[0] = ", last_send_time = ";
    v270[1] = v269;
    v271[0] = v216;
    v271[1] = v270;
    v272[0] = ", paused = ";
    if (*(this + 64))
    {
      v213 = "true";
    }

    v272[1] = v271;
    v273[0] = v213;
    v273[1] = v272;
    v274[0] = ", media_debt = ";
    v217 = *(this + 9);
    v218 = *(this + 10);
    v274[1] = v273;
    v275[0] = v217;
    v275[1] = v274;
    v276[0] = ", padding_debt = ";
    v276[1] = v275;
    v277[0] = v218;
    v277[1] = v276;
    v278[0] = ", pacing_rate = ";
    v219 = *(this + 11);
    v220 = *(this + 12);
    v278[1] = v277;
    v279[0] = v219;
    v279[1] = v278;
    v280[0] = ", adjusted_media_rate = ";
    v280[1] = v279;
    v281[0] = v220;
    v281[1] = v280;
    v282[0] = ", padding_rate = ";
    v221 = *(this + 13);
    v282[1] = v281;
    v283[0] = v221;
    v283[1] = v282;
    v284[0] = ", queue size (packets) = ";
    v222 = *(this + 112);
    v284[1] = v283;
    v285[0] = v222;
    v285[1] = v284;
    v286[0] = ", queue size (payload bytes) = ";
    v286[1] = v285;
    v223 = *(this + 59);
    memset(&__dst, 0, sizeof(__dst));
    webrtc::ToString(v223, &v290);
    v224 = HIBYTE(v290.__r_.__value_.__r.__words[2]);
    if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v225 = &v290;
    }

    else
    {
      v225 = v290.__r_.__value_.__r.__words[0];
    }

    if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v226 = HIBYTE(v290.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v226 = v290.__r_.__value_.__l.__size_;
    }

    if (!v225 && v226)
    {
      goto LABEL_459;
    }

    if (v226 <= 0x16)
    {
      if (v226)
      {
        v227 = (&__dst + v226);
        if (&__dst <= v225 && v227 > v225)
        {
          goto LABEL_459;
        }

        memmove(&__dst, v225, v226);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          __dst.__r_.__value_.__l.__size_ = v226;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v226;
        }

        v227->__r_.__value_.__s.__data_[0] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&__dst, 0x16uLL, v226 - 22, 0, 0, 0, v226, v225);
      v224 = HIBYTE(v290.__r_.__value_.__r.__words[2]);
    }

    if (v224 < 0)
    {
      operator delete(v290.__r_.__value_.__l.__data_);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v228 = &__dst;
    }

    else
    {
      v228 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v229 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v229 = __dst.__r_.__value_.__l.__size_;
    }

    if (v228 || !v229)
    {
      if (v229 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_460;
      }

      if (v229 > 0x16)
      {
        operator new();
      }

      *(&v295.__r_.__value_.__s + 23) = v229;
      v230 = (&v295 + v229);
      if (&v295 > v228 || v230 <= v228)
      {
        if (v229)
        {
          memmove(&v295, v228, v229);
        }

        v230->__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v290, v295.__r_.__value_.__l.__data_, v295.__r_.__value_.__l.__size_);
          v231 = v286;
          v291 = v286;
          if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v295.__r_.__value_.__l.__data_);
            v231 = v291;
          }
        }

        else
        {
          v290 = v295;
          v231 = v286;
          v291 = v286;
        }

        v232 = *(*(*(v231[1] + 8) + 8) + 8);
        v233 = *(v232 + 8);
        v234 = *(*(*(*(*(*(v233[1] + 8) + 8) + 8) + 8) + 8) + 8);
        webrtc::webrtc_logging_impl::Log( webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal const&)::t,  **(v234 + 8),  *v232,  **(*(v234 + 8) + 8),  *v233,  **(*(*(v234 + 8) + 8) + 8),  **(*(*(*(v234 + 8) + 8) + 8) + 8),  **(*(*(*(*(v234 + 8) + 8) + 8) + 8) + 8),  **(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(*(v234 + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8) + 8));
        if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v290.__r_.__value_.__l.__data_);
        }

        v4 = v245;
        goto LABEL_457;
      }
    }

LABEL_459:
    __break(1u);
LABEL_460:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v243)
  {
    *(this + 328) = v248 == 0;
    if (v248)
    {
      v206 = webrtc::PacingController::CurrentTime(this);
      webrtc::BitrateProber::ProbeSent(this + 112, v206, v248, v207, v208, v209, v210, v211);
    }
  }

  v212.var0 = webrtc::PacingController::CurrentTime(this);
  webrtc::PacingController::MaybeUpdateMediaRateDueToLongQueue(this, v212);
  return (*(*v2 + 40))(v2);
}

void webrtc::PrioritizedPacketQueue::~PrioritizedPacketQueue(webrtc::PrioritizedPacketQueue *this)
{
  if (*(this + 54))
  {
    v2 = this + 416;
    v3 = *(this + 53);
    v4 = *(*(this + 52) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 54) = 0;
    if (v3 != this + 416)
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

  std::deque<long long>::~deque[abi:sn200100](this + 45);
  std::deque<long long>::~deque[abi:sn200100](this + 39);
  std::deque<long long>::~deque[abi:sn200100](this + 33);
  std::deque<long long>::~deque[abi:sn200100](this + 27);
  std::deque<long long>::~deque[abi:sn200100](this + 21);
  v7 = *(this + 18);
  if (v7)
  {
    do
    {
      v8 = *v7;
      v9 = v7[3];
      v7[3] = 0;
      if (v9)
      {
        webrtc::PrioritizedPacketQueue::StreamQueue::~StreamQueue(v9);
        MEMORY[0x2743DA540]();
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = *(this + 16);
  *(this + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  if (*(this + 8))
  {
    operator delete(*(this + 2));
  }
}