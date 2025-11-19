void webrtc::Connection::~Connection(webrtc::Connection *this)
{
  *this = &unk_288291560;
  (*(this + 359))(1, this + 2856, this + 2856);
  (*(this + 355))(1, this + 2824, this + 2824);
  (*(this + 351))(1, this + 2792, this + 2792);
  if (*(this + 2784) == 1)
  {
    v2 = *(this + 347);
    if (v2 == (this + 2752))
    {
      (*(*v2 + 32))(v2);
      if (*(this + 2744) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(this + 2744) != 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v3 = *(this + 342);
  if (v3 == (this + 2712))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_12:
  v4 = *(this + 331);
  *(this + 331) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 2528) == 1 && *(this + 2527) < 0)
  {
    operator delete(*(this + 313));
  }

  v5 = *(this + 310);
  if (v5)
  {
    v6 = *(this + 311);
    v7 = *(this + 310);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 310);
    }

    *(this + 311) = v5;
    operator delete(v7);
  }

  v9 = *(this + 301);
  if (v9 == (this + 2384))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(this + 2360, *(this + 296));
  *(this + 282) = &unk_28829A088;
  v10 = *(this + 285);
  if (v10)
  {
    MEMORY[0x2743DA520](v10, 0x1000C8000313F17);
  }

  *(this + 274) = &unk_28829A088;
  v11 = *(this + 277);
  if (v11)
  {
    MEMORY[0x2743DA520](v11, 0x1000C8000313F17);
  }

  webrtc::Candidate::~Candidate(this + 210);
  webrtc::Candidate::~Candidate(this + 156);
  webrtc::Candidate::~Candidate(this + 87);
  webrtc::Candidate::~Candidate(this + 33);
  v12 = *(this + 31);
  if (v12 && atomic_fetch_add((v12 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  while (1)
  {
    v17 = *(this + 26);
    if (!v17)
    {
      break;
    }

    v13 = *(this + 25);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v16 + 8) = v15;
    *v15 = v16;
    *(this + 26) = v17 - 1;
    operator delete(v13);
    (*(v14 + 16))(v14, this + 176);
  }

  *(this + 27) = this + 192;
  for (i = *(this + 19); i; i = *(this + 19))
  {
    v19 = *(this + 18);
    v20 = v19[3];
    v22 = *v19;
    v21 = v19[1];
    *(v22 + 8) = v21;
    *v21 = v22;
    *(this + 19) = i - 1;
    operator delete(v19);
    (*(v20 + 16))(v20, this + 120);
  }

  *(this + 20) = this + 136;
  for (j = *(this + 12); j; j = *(this + 12))
  {
    v24 = *(this + 11);
    v25 = v24[3];
    v27 = *v24;
    v26 = v24[1];
    *(v27 + 8) = v26;
    *v26 = v27;
    *(this + 12) = j - 1;
    operator delete(v24);
    (*(v25 + 16))(v25, this + 64);
  }

  *(this + 13) = this + 80;
  for (k = *(this + 5); k; k = *(this + 5))
  {
    v29 = *(this + 4);
    v30 = v29[3];
    v32 = *v29;
    v31 = v29[1];
    *(v32 + 8) = v31;
    *v31 = v32;
    *(this + 5) = k - 1;
    operator delete(v29);
    (*(v30 + 16))(v30, this + 8);
  }

  *(this + 6) = this + 24;
}

unint64_t webrtc::Connection::priority(webrtc::Connection *this)
{
  v1 = *(this + 31);
  if (!v1)
  {
    return 0;
  }

  if (*v1 != 1)
  {
    return 0;
  }

  v2 = *(this + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = (*(*v2 + 40))(*(this + 32));
  if (v4 == 2)
  {
    return 0;
  }

  if (v4)
  {
    v5 = *(this + 212);
    v6 = ((*(*this + 16))(this) + 152);
  }

  else
  {
    v5 = *((*(*this + 16))(this) + 152);
    v6 = (this + 848);
  }

  v8 = *v6;
  v9 = v8 < v5;
  if (v8 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v5 > v8)
  {
    v8 = v5;
  }

  return v9 | (2 * v8) | (v10 << 32);
}

uint64_t webrtc::Connection::set_write_state(uint64_t result, int a2)
{
  v2 = *(result + 2328);
  *(result + 2328) = a2;
  if (v2 != a2)
  {
    v3 = result;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(v3, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    result = *(v3 + 4);
    for (*(v3 + 6) = result; result != (v3 + 24); result = *(v3 + 6))
    {
      v12 = *(result + 16);
      v11 = result + 16;
      *(v3 + 6) = *(v11 - 8);
      v12(v11, v3);
    }
  }

  return result;
}

uint64_t webrtc::Connection::UpdateReceiving(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2464);
  if (*(this + 2440) < v4)
  {
    LOBYTE(v5) = 1;
    if (*(this + 2332) == 1)
    {
      return this;
    }

    goto LABEL_15;
  }

  if (*(this + 2448) > v4)
  {
    v4 = *(this + 2448);
  }

  if (*(this + 2456) > v4)
  {
    v4 = *(this + 2456);
  }

  if (v4 < 1)
  {
    LOBYTE(v5) = 0;
    if (!*(this + 2332))
    {
      return this;
    }

    goto LABEL_15;
  }

  v6 = (this + 2564);
  if (!*(this + 2568))
  {
    v6 = &webrtc::WEAK_CONNECTION_RECEIVE_TIMEOUT;
  }

  v5 = v4 + *v6 >= a2;
  if (*(this + 2332) != v5)
  {
LABEL_15:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(v3, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(v3 + 2332) = v5;
    *(v3 + 2472) = a2;
    this = *(v3 + 32);
    for (*(v3 + 48) = this; this != v3 + 24; this = *(v3 + 48))
    {
      v15 = *(this + 16);
      v14 = this + 16;
      *(v3 + 48) = *(v14 - 8);
      v15(v14, v3);
    }
  }

  return this;
}

uint64_t webrtc::Connection::RegisterReceivedPacketCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 2816))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc", 470, "!received_packet_callback_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v13);
    return webrtc::Connection::DeregisterReceivedPacketCallback(v12);
  }

  else
  {
    v10 = (a1 + 2808);
    (*(a1 + 2808))(1, a1 + 2792, a1 + 2792);
    *(a1 + 2808) = absl::internal_any_invocable::EmptyManager;
    *(a1 + 2816) = 0;
    result = (*(a2 + 16))(0, a2, a1 + 2792);
    *v10 = *(a2 + 16);
    *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t webrtc::Connection::DeregisterReceivedPacketCallback(uint64_t (**this)(uint64_t, char *, char *))
{
  result = this[351](1, this + 2792, this + 2792);
  this[351] = absl::internal_any_invocable::EmptyManager;
  this[352] = 0;
  return result;
}

uint64_t webrtc::Connection::OnReadPacket(uint64_t a1, uint64_t a2)
{
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  if (((*(**(a1 + 256) + 280))() & 1) == 0)
  {
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

    *(a1 + 2456) = v4 / 1000000;
    webrtc::Connection::UpdateReceiving(a1, v4 / 1000000);
    v5 = *(a2 + 8);
    v6 = (*(*(a1 + 2192) + 16))(a1 + 2192);
    if (*(a1 + 2240) == -1)
    {
      v7 = (*(*(a1 + 2192) + 16))(a1 + 2192);
      *(a1 + 2248) = v7;
      *(a1 + 2240) = v7;
      *(a1 + 2232) = 0;
      **(a1 + 2216) = 0;
    }

    v8 = 0;
    v9 = *(a1 + 2208);
    while (1)
    {
      v10 = *(a1 + 2240);
      v11 = *(a1 + 2200);
      if (v11 + v10 > v6)
      {
        break;
      }

      *(a1 + 2240) = v11 + v10;
      v12 = (*(a1 + 2232) + 1) % (v9 + 1);
      *(a1 + 2232) = v12;
      v13 = *(a1 + 2216);
      *(v13 + 8 * v12) = 0;
      if (++v8 > v9)
      {
        v11 = *(a1 + 2200);
        v10 = *(a1 + 2240);
        goto LABEL_14;
      }
    }

    v13 = *(a1 + 2216);
    v12 = *(a1 + 2232);
LABEL_14:
    *(a1 + 2240) = v10 + (v6 - v10) / v11 * v11;
    *(v13 + 8 * v12) += v5;
    *(a1 + 2224) += v5;
    ++*(a1 + 1224);
    v14 = *(a1 + 2816);
    if (v14)
    {
      v14(a1 + 2792, a1, a2);
    }

    if ((*(a1 + 2334) & 1) == 0 && *(a1 + 2328) == 3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      }

      v22 = *(a1 + 2328);
      *(a1 + 2328) = 2;
      if (v22 != 2)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
        {
          webrtc::Connection::ToString(a1, &__p);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v30 = *(a1 + 32);
        for (*(a1 + 48) = v30; v30 != a1 + 24; v30 = *(a1 + 48))
        {
          v32 = *(v30 + 16);
          v31 = v30 + 16;
          *(a1 + 48) = *(v31 - 8);
          v32(v31, a1);
        }
      }
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  result = v38;
  v38 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void webrtc::Connection::HandleStunBindingOrGoogPingRequest(webrtc::Connection *this, webrtc::IceMessage *a2)
{
  v4 = a2 + 40;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, *(a2 + 5), *(a2 + 6));
    LOBYTE(v105) = 1;
    v5 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *&v104.__r_.__value_.__l.__data_ = *v4;
    v104.__r_.__value_.__r.__words[2] = *(a2 + 7);
    LOBYTE(v105) = 1;
    v5 = webrtc::g_clock;
    if (webrtc::g_clock)
    {
LABEL_3:
      v6 = (*(*v5 + 16))(v5);
      goto LABEL_8;
    }
  }

  if (!dword_28100D8E4)
  {
    mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
  }

  v6 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
LABEL_8:
  *(this + 306) = v6 / 1000000;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(this + 2504, &v104);
  webrtc::Connection::UpdateReceiving(this, *(this + 306));
  if (v105 == 1 && SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (*(*(this + 332) + 57) == 1 && !*(this + 308) && (*((*(*this + 16))(this) + 208) == 3 || *((*(*this + 16))(this) + 208) == 2 || *((*(*this + 24))(this) + 208) == 3 || *((*(*this + 24))(this) + 208) == 2))
  {
    if (webrtc::g_clock)
    {
      v25 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v25 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v31 = v25 / 1000000;
    v32 = *(this + 305) + 100;
    v33 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
    if (v32 <= v31)
    {
      if ((v33 & 1) == 0)
      {
        webrtc::Connection::ToString(this, &v104);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
        if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v104.__r_.__value_.__l.__data_);
        }
      }

      v103 = 0;
      webrtc::Connection::Ping(this, v31, &v103);
      v48 = v103;
      v103 = 0;
      if (v48)
      {
        (*(*v48 + 8))(v48);
      }
    }

    else if ((v33 & 1) == 0)
    {
      webrtc::Connection::ToString(this, &v104);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(a2 + 16) != 1)
  {
    goto LABEL_21;
  }

  v7 = *(this + 31);
  if (v7 && *v7 == 1)
  {
    v8 = *(this + 32);
    v9 = *(this + 879);
    if (v9 < 0)
    {
LABEL_17:
      v10 = *(this + 107);
      v9 = *(this + 108);
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(this + 879);
    if (v9 < 0)
    {
      goto LABEL_17;
    }
  }

  v10 = this + 856;
LABEL_20:
  if (((*(*v8 + 304))(v8, this + 776, a2, v10, v9) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
    }

    return;
  }

LABEL_21:
  ++*(this + 154);
  v11 = *(this + 329);
  if (v11)
  {
    webrtc::IceEventLog::LogCandidatePairEvent(v11);
  }

  if (*(a2 + 16) != 1)
  {
    v17 = *(a2 + 63);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v4 = *(a2 + 5);
      v17 = *(a2 + 6);
    }

    webrtc::StunMessage::StunMessage(&v104, 768, v4, v17);
    (*(*this + 16))(this);
    webrtc::StunMessage::AddMessageIntegrityOfType(&v104, 49248, 4uLL);
  }

  if (*(this + 356))
  {
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    if (v12 == v13)
    {
      v15 = 0;
LABEL_45:
      v16 = 0;
    }

    else
    {
      v14 = *(a2 + 1);
      do
      {
        v15 = *v14;
        if (*(*v14 + 8) == 49264)
        {
          goto LABEL_30;
        }

        ++v14;
      }

      while (v14 != v13);
      v15 = 0;
LABEL_30:
      while (1)
      {
        v16 = *v12;
        if (*(*v12 + 8) == 49265)
        {
          break;
        }

        if (++v12 == v13)
        {
          goto LABEL_45;
        }
      }
    }

    (*(this + 360))(this + 2856, v15, v16);
  }

  v26 = *(a2 + 1);
  for (i = *(a2 + 2); v26 != i; v26 += 8)
  {
    if (*(*v26 + 8) == 6)
    {
      v28 = *(a2 + 63);
      if ((v28 & 0x8000000000000000) != 0)
      {
        v4 = *(a2 + 5);
        v28 = *(a2 + 6);
      }

      webrtc::StunMessage::StunMessage(&v104, 257, v4, v28);
      v29 = *(a2 + 1);
      for (j = *(a2 + 2); v29 != j; v29 += 8)
      {
        if (*(*v29 + 8) == -256)
        {
          operator new();
        }
      }

      operator new();
    }
  }

  if ((*(this + 2334) & 1) == 0 && *(this + 582) == 3)
  {
    *(this + 582) = 2;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(this, &v104);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }
    }

    v56 = *(this + 4);
    for (*(this + 6) = v56; v56 != (this + 24); v56 = *(this + 6))
    {
      v58 = v56[2];
      v57 = v56 + 2;
      *(this + 6) = *(v57 - 1);
      v58(v57, this);
    }
  }

  if ((*(**(this + 32) + 40))(*(this + 32)) == 1)
  {
    v59 = *(a2 + 1);
    v60 = *(a2 + 2);
    if (v59 != v60)
    {
      v61 = *(a2 + 1);
      while (*(*v61 + 8) != 49153)
      {
        v61 += 8;
        if (v61 == v60)
        {
          while (*(*v59 + 8) != 37)
          {
            v59 += 8;
            if (v59 == v60)
            {
              goto LABEL_94;
            }
          }

          v62 = 1;
          goto LABEL_88;
        }
      }

      v62 = *(*v61 + 12);
      if (v62)
      {
LABEL_88:
        if (v62 > *(this + 587))
        {
          *(this + 587) = v62;
          v63 = *(this + 25);
          for (*(this + 27) = v63; v63 != (this + 192); v63 = *(this + 27))
          {
            v65 = v63[2];
            v64 = v63 + 2;
            *(this + 27) = *(v64 - 1);
            v65(v64, this);
          }
        }

        goto LABEL_94;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      }
    }
  }

LABEL_94:
  v73 = *(a2 + 1);
  v74 = *(a2 + 2);
  if (v73 != v74)
  {
    while (*(*v73 + 8) != 49239)
    {
      v73 += 8;
      if (v73 == v74)
      {
        goto LABEL_101;
      }
    }

    v75 = *(*v73 + 12);
    if (*(this + 549) != v75)
    {
      *(this + 549) = v75;
      v76 = *(this + 4);
      for (*(this + 6) = v76; v76 != (this + 24); v76 = *(this + 6))
      {
        v78 = v76[2];
        v77 = v76 + 2;
        *(this + 6) = *(v77 - 1);
        v78(v77, this);
      }
    }
  }

LABEL_101:
  if (*(*(this + 332) + 56) == 1)
  {
    v79 = *(a2 + 1);
    v80 = *(a2 + 2);
    if (v79 != v80)
    {
      while (1)
      {
        v81 = *v79;
        if (*(*v79 + 8) == 49240)
        {
          break;
        }

        if (++v79 == v80)
        {
          return;
        }
      }

      v82 = *(v81 + 16);
      v83 = *(v81 + 10);
      if (v82)
      {
        v84 = 1;
      }

      else
      {
        v84 = v83 == 0;
      }

      if (!v84)
      {
        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v85 = *(this + 310);
      v86 = *(this + 311);
      if (v85 != v86)
      {
        while (1)
        {
          v87 = *(v85 + 23);
          v88 = v87;
          if ((v87 & 0x80u) != 0)
          {
            v87 = *(v85 + 8);
          }

          if (v87 == v83)
          {
            v89 = v88 >= 0 ? v85 : *v85;
            if (!memcmp(v82, v89, v83))
            {
              break;
            }
          }

          v85 += 40;
          if (v85 == v86)
          {
            return;
          }
        }
      }

      if (v85 != v86)
      {
        v90 = *(this + 582) != 0;
        if (v91 || (webrtc::LogMessage::streams_empty_ & 1) == 0)
        {
          webrtc::Connection::ToString(this, &v104);
          if (v83 >= 0xC)
          {
            operator new();
          }

          HIBYTE(v107) = 2 * v83;
          if (v83)
          {
            bzero(&v106, 2 * v83);
            *(&v106 + 2 * v83) = 0;
            v99 = &v106;
            if (v107 < 0)
            {
              v99 = v106;
            }

            v100 = v99 + 1;
            do
            {
              v101 = *v82++;
              v100 += 2;
              --v83;
            }

            while (v83);
          }

          else
          {
            *(&v106 + 2 * v83) = 0;
          }

          webrtc::webrtc_logging_impl::Log("\r\n\t\n", v92, v93, v94, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          if (SHIBYTE(v107) < 0)
          {
            operator delete(v106);
          }

          if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v104.__r_.__value_.__l.__data_);
          }
        }

        if (webrtc::g_clock)
        {
          LODWORD(v102) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
        }

        else
        {
          if (!dword_28100D8E4)
          {
            mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
          }

          v102 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
        }

        webrtc::Connection::ReceivedPingResponse(this, v102 / 1000000 - *(v85 + 24), *(v85 + 32), 1);
      }
    }
  }
}

void *webrtc::Connection::MaybeAddDtlsPiggybackingAttributes(void *this, webrtc::StunMessage *a2)
{
  v2 = this[356];
  if (v2)
  {
    this = v2(v5, this + 353, *(a2 + 16));
    if (v8 == 1)
    {
      v4 = *(a2 + 17);
      if ((v7 + v4 + 4) <= 0x490)
      {
        operator new();
      }

      if (v4 <= 0x48C)
      {
        operator new();
      }
    }

    else if (v6 == 1 && v5[1] + *(a2 + 17) + 4 <= 0x490)
    {
      operator new();
    }
  }

  return this;
}

void *webrtc::Connection::Ping(void *result, uint64_t a2, void *a3)
{
  v3 = result[31];
  if (v3 && *v3 == 1)
  {
    if (result[32])
    {
      result[305] = a2;
      *a3 = 0;
      operator new();
    }
  }

  return result;
}

void webrtc::Connection::Prune(char **this)
{
  if (*(this + 2334) != 1 || *(this + 582) != 3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::Connection::ToString(this, &__p);
      webrtc::webrtc_logging_impl::Log("\r\n\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *(this + 2334) = 1;
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy((this + 295), this[296]);
    this[295] = (this + 296);
    *(this + 148) = 0u;
    v9 = *(this + 582);
    *(this + 582) = 3;
    if (v9 != 3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::Connection::ToString(this, &__p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v17 = this[4];
      for (this[6] = v17; v17 != (this + 3); v17 = this[6])
      {
        v19 = *(v17 + 2);
        v18 = v17 + 16;
        this[6] = *(v18 - 1);
        v19(v18, this);
      }
    }
  }
}

uint64_t webrtc::Connection::Shutdown(webrtc::Connection *this)
{
  v1 = *(this + 31);
  if (!v1)
  {
    return 0;
  }

  if (*v1 != 1 || !*(this + 32))
  {
    return 0;
  }

  v22[0] = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  v22[1] = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  v23 = &v23;
  __p = &v23;
  v25 = 0;
  v26 = &v23;
  v27 = 0;
  v3 = this + 80;
  v4 = *(this + 11);
  if (v4 != (this + 80))
  {
    (*(v4[3] + 8))();
    operator new();
  }

  while (1)
  {
    v9 = *(this + 12);
    if (!v9)
    {
      break;
    }

    v5 = *(this + 11);
    v6 = v5[3];
    v8 = *v5;
    v7 = v5[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    *(this + 12) = v9 - 1;
    operator delete(v5);
    (*(v6 + 16))(v6, this + 64);
  }

  *(this + 13) = v3;
  v10 = __p;
  v26 = __p;
  if (__p != &v23)
  {
    do
    {
      v12 = v10[2];
      v11 = (v10 + 2);
      v26 = *(v11 - 1);
      v12(v11, this);
      v10 = v26;
    }

    while (v26 != &v23);
  }

  v13 = *(this + 329);
  if (v13)
  {
    v14 = *(this + 60);
    webrtc::Connection::ToLogDescription(this);
    webrtc::IceEventLog::LogCandidatePairConfig(v13, 2, v14);
  }

  v15 = *(this + 31);
  *(this + 31) = 0;
  if (v15 && atomic_fetch_add((v15 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *(this + 32) = 0;
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(this + 2360, *(this + 296));
  *(this + 295) = this + 2368;
  *(this + 148) = 0u;
  for (i = v25; v25; i = v25)
  {
    v17 = __p;
    v18 = *(__p + 3);
    v20 = *__p;
    v19 = *(__p + 1);
    *(v20 + 8) = v19;
    *v19 = v20;
    v25 = i - 1;
    operator delete(v17);
    (*(v18 + 16))(v18, v22);
  }

  return 1;
}

void webrtc::Connection::PrintPingsSinceLastResponse(uint64_t a1, uint64_t a2, char *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  memset(&v80, 0, sizeof(v80));
  v3 = *(a1 + 2488);
  v4 = *(a1 + 2480);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3) < 6)
  {
    if (v4 == v3)
    {
      goto LABEL_199;
    }

    while (1)
    {
      v30 = v4[23];
      if (v30 < 0)
      {
        v31 = *v4;
        v30 = *(v4 + 1);
        v32 = 2 * v30;
        if ((2 * v30) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_207;
        }
      }

      else
      {
        v31 = v4;
        v32 = 2 * v30;
        if ((2 * v30) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_207;
        }
      }

      if (v32 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v82) = v32;
      if (v32)
      {
        bzero(__p, v32);
      }

      *(__p + v32) = 0;
      v33 = HIBYTE(v82);
      v34 = __p[0];
      if (v82 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      if (v30)
      {
        v36 = v35 + 1;
        do
        {
          v37 = *v31++;
          v36 += 2;
          --v30;
        }

        while (v30);
        v33 = HIBYTE(v82);
        v34 = __p[0];
      }

      if ((v33 & 0x80u) == 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = v34;
      }

      if ((v33 & 0x80u) == 0)
      {
        v39 = v33;
      }

      else
      {
        v39 = __p[1];
      }

      if (v38)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39 == 0;
      }

      if (!v40)
      {
        goto LABEL_206;
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = 22;
      }

      else
      {
        v41 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v80.__r_.__value_.__l.__size_;
      }

      if (v41 - size >= v39)
      {
        if (v39)
        {
          if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = &v80;
          }

          else
          {
            v43 = v80.__r_.__value_.__r.__words[0];
          }

          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_206;
          }

          v44 = v43 + size;
          if (v43 + size <= v38 && &v44[v39] > v38)
          {
            goto LABEL_206;
          }

          v45 = v39;
          memmove(v44, v38, v39);
          v46 = size + v45;
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            v80.__r_.__value_.__l.__size_ = size + v45;
          }

          else
          {
            *(&v80.__r_.__value_.__s + 23) = v46 & 0x7F;
          }

          v43->__r_.__value_.__s.__data_[v46] = 0;
        }
      }

      else
      {
        std::string::__grow_by_and_replace(&v80, v41, size + v39 - v41, size, size, 0, v39, v38);
      }

      v47 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = 22;
      }

      else
      {
        v48 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v80.__r_.__value_.__l.__size_;
      }

      if (v48 == v47)
      {
        std::string::__grow_by_and_replace(&v80, v48, 1uLL, v48, v48, 0, 1uLL, " ");
        if ((SHIBYTE(v82) & 0x80000000) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v49 = &v80;
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = v80.__r_.__value_.__r.__words[0];
        }

        v50 = v49 + v47;
        if (v49 + v47 <= " " && v50 + 1 > " ")
        {
          goto LABEL_206;
        }

        *v50 = 32;
        v51 = v47 + 1;
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          v80.__r_.__value_.__l.__size_ = v51;
          v49->__r_.__value_.__s.__data_[v51] = 0;
          if ((SHIBYTE(v82) & 0x80000000) == 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          *(&v80.__r_.__value_.__s + 23) = v51 & 0x7F;
          v49->__r_.__value_.__s.__data_[v51] = 0;
          if ((SHIBYTE(v82) & 0x80000000) == 0)
          {
            goto LABEL_71;
          }
        }
      }

      operator delete(__p[0]);
LABEL_71:
      v4 += 40;
      if (v4 == v3)
      {
        goto LABEL_199;
      }
    }
  }

  for (i = 0; i != 5; ++i)
  {
    v7 = *(a1 + 2480);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 2488) - v7) >> 3) <= i)
    {
      goto LABEL_206;
    }

    v8 = (v7 + 40 * i);
    v9 = v8[23];
    if (v9 < 0)
    {
      v8 = *v8;
      v9 = *(v7 + 40 * i + 8);
    }

    v10 = 2 * v9;
    if ((2 * v9) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_207;
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v82) = 2 * v9;
    if (v10)
    {
      bzero(__p, 2 * v9);
    }

    *(__p + 2 * v9) = 0;
    v11 = HIBYTE(v82);
    v12 = __p[0];
    if (v82 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v9)
    {
      v14 = v13 + 1;
      do
      {
        v15 = *v8++;
        v14 += 2;
        --v9;
      }

      while (v9);
      v11 = HIBYTE(v82);
      v12 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = v12;
    }

    if ((v11 & 0x80u) == 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = __p[1];
    }

    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 == 0;
    }

    if (!v18)
    {
      goto LABEL_206;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = 22;
    }

    else
    {
      v19 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v80.__r_.__value_.__l.__size_;
    }

    if (v19 - v20 >= v17)
    {
      if (v17)
      {
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v80;
        }

        else
        {
          v21 = v80.__r_.__value_.__r.__words[0];
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_206;
        }

        v22 = v21 + v20;
        if (v21 + v20 <= v16 && &v22[v17] > v16)
        {
          goto LABEL_206;
        }

        v23 = v17;
        memmove(v22, v16, v17);
        v24 = v20 + v23;
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          v80.__r_.__value_.__l.__size_ = v20 + v23;
        }

        else
        {
          *(&v80.__r_.__value_.__s + 23) = v24 & 0x7F;
        }

        v21->__r_.__value_.__s.__data_[v24] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v80, v19, v20 + v17 - v19, v20, v20, 0, v17, v16);
    }

    v25 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = 22;
    }

    else
    {
      v26 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v80.__r_.__value_.__l.__size_;
    }

    if (v26 == v25)
    {
      std::string::__grow_by_and_replace(&v80, v26, 1uLL, v26, v26, 0, 1uLL, " ");
      if (SHIBYTE(v82) < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v27 = &v80;
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v80.__r_.__value_.__r.__words[0];
      }

      v28 = v27 + v25;
      if (v27 + v25 <= " " && v28 + 1 > " ")
      {
        goto LABEL_206;
      }

      *v28 = 32;
      v29 = v25 + 1;
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        v80.__r_.__value_.__l.__size_ = v29;
        v27->__r_.__value_.__s.__data_[v29] = 0;
        if (SHIBYTE(v82) < 0)
        {
LABEL_3:
          operator delete(__p[0]);
          continue;
        }
      }

      else
      {
        *(&v80.__r_.__value_.__s + 23) = v29 & 0x7F;
        v27->__r_.__value_.__s.__data_[v29] = 0;
        if (SHIBYTE(v82) < 0)
        {
          goto LABEL_3;
        }
      }
    }
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = 22;
  }

  else
  {
    v52 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v80.__r_.__value_.__l.__size_;
  }

  if (v52 - v53 < 4)
  {
    std::string::__grow_by_and_replace(&v80, v52, v53 - v52 + 4, v53, v53, 0, 4uLL, "... ");
    goto LABEL_151;
  }

  v54 = &v80;
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v54 = v80.__r_.__value_.__r.__words[0];
  }

  v55 = (v54 + v53);
  if (v54 + v53 <= "... " && v55 + 1 > "... ")
  {
    goto LABEL_206;
  }

  *v55 = 539897390;
  v56 = v53 + 4;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    v80.__r_.__value_.__l.__size_ = v53 + 4;
  }

  else
  {
    *(&v80.__r_.__value_.__s + 23) = v56 & 0x7F;
  }

  v54->__r_.__value_.__s.__data_[v56] = 0;
LABEL_151:
  v57 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 2488) - *(a1 + 2480)) >> 3) - 5;
  v82 = 0x1600000000000000;
  *__p = 0uLL;
  v58 = absl::numbers_internal::FastIntToBuffer(v57, __p, a3);
  v59 = (v58 - __p);
  if ((SHIBYTE(v82) & 0x8000000000000000) == 0)
  {
    if (v59 <= SHIBYTE(v82))
    {
      HIBYTE(v82) = v58 - __p;
      v60 = __p;
      goto LABEL_156;
    }

LABEL_208:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__p[1] < v59)
  {
    goto LABEL_208;
  }

  v60 = __p[0];
  __p[1] = (v58 - __p);
LABEL_156:
  v59[v60] = 0;
  v61 = v82 >= 0 ? __p : __p[0];
  v62 = v82 >= 0 ? HIBYTE(v82) : __p[1];
  if (!v61 && v62)
  {
    goto LABEL_206;
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = 22;
  }

  else
  {
    v63 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v80.__r_.__value_.__l.__size_;
  }

  if (v63 - v64 >= v62)
  {
    if (!v62)
    {
      goto LABEL_182;
    }

    if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v80;
    }

    else
    {
      v65 = v80.__r_.__value_.__r.__words[0];
    }

    if ((v62 & 0x8000000000000000) == 0)
    {
      v66 = v65 + v64;
      if (v65 + v64 > v61 || &v66[v62] <= v61)
      {
        v67 = v62;
        memmove(v66, v61, v62);
        v68 = v64 + v67;
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          v80.__r_.__value_.__l.__size_ = v64 + v67;
          v65->__r_.__value_.__s.__data_[v68] = 0;
          if ((SHIBYTE(v82) & 0x80000000) == 0)
          {
            goto LABEL_183;
          }

LABEL_172:
          operator delete(__p[0]);
          goto LABEL_183;
        }

        *(&v80.__r_.__value_.__s + 23) = v68 & 0x7F;
        v65->__r_.__value_.__s.__data_[v68] = 0;
LABEL_182:
        if ((SHIBYTE(v82) & 0x80000000) == 0)
        {
          goto LABEL_183;
        }

        goto LABEL_172;
      }
    }

LABEL_206:
    __break(1u);
LABEL_207:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::string::__grow_by_and_replace(&v80, v63, v64 + v62 - v63, v64, v64, 0, v62, v61);
  if (SHIBYTE(v82) < 0)
  {
    goto LABEL_172;
  }

LABEL_183:
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = 22;
  }

  else
  {
    v69 = (v80.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v70 = v80.__r_.__value_.__l.__size_;
  }

  if (v69 - v70 < 5)
  {
    std::string::__grow_by_and_replace(&v80, v69, v70 - v69 + 5, v70, v70, 0, 5uLL, " more");
    goto LABEL_199;
  }

  v71 = &v80;
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v71 = v80.__r_.__value_.__r.__words[0];
  }

  v72 = v71 + v70;
  if (v71 + v70 <= " more" && v72 + 5 > " more")
  {
    goto LABEL_206;
  }

  v72[4] = 101;
  *v72 = 1919905056;
  v73 = v70 + 5;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    v80.__r_.__value_.__l.__size_ = v70 + 5;
  }

  else
  {
    *(&v80.__r_.__value_.__s + 23) = v73 & 0x7F;
  }

  v71->__r_.__value_.__s.__data_[v73] = 0;
LABEL_199:
  __p[0] = v80.__r_.__value_.__l.__size_;
  v74 = v80.__r_.__value_.__r.__words[0];
  *(__p + 7) = *(&v80.__r_.__value_.__r.__words[1] + 7);
  v75 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
  memset(&v80, 0, sizeof(v80));
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v77 = SHIBYTE(v80.__r_.__value_.__r.__words[2]);
    v78 = __p[0];
    *a2 = v74;
    *(a2 + 8) = v78;
    *(a2 + 15) = *(__p + 7);
    *(a2 + 23) = v75;
    if (v77 < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v76 = __p[0];
    *a2 = v74;
    *(a2 + 8) = v76;
    *(a2 + 15) = *(__p + 7);
    *(a2 + 23) = v75;
  }
}

void webrtc::Connection::UpdateState(webrtc::Connection *this, uint64_t a2, char *a3)
{
  v3 = *(this + 31);
  if (!v3 || *v3 != 1 || !*(this + 32))
  {
    return;
  }

  v6 = 2 * *(this + 604);
  if (v6 >= 60000)
  {
    v6 = 60000;
  }

  if (v6 <= 100)
  {
    v7 = 100;
  }

  else
  {
    v7 = v6;
  }

  {
    memset(&v62, 0, sizeof(v62));
    webrtc::Connection::PrintPingsSinceLastResponse(this, &v62, a3);
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      v61[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc";
      v61[1] = 7840;
      v61[2] = &v60;
      webrtc::Connection::ToString(this, &__p);
      v61[3] = &__p;
      v61[4] = v61;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, v61[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  if (!*(this + 582))
  {
    v15 = *(this + 2548) ? (this + 2544) : &webrtc::CONNECTION_WRITE_CONNECT_FAILURES;
    v16 = *v15;
    v17 = *(this + 310);
    v18 = *(this + 311);
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v17) >> 3);
    if (v19 >= v16)
    {
      v20 = (v16 - 1);
      if (v19 <= v20)
      {
        goto LABEL_72;
      }

      if (*(v17 + 5 * v20 + 3) + v7 < a2)
      {
        v21 = (this + 2536);
        if (!*(this + 2540))
        {
          v21 = &webrtc::CONNECTION_WRITE_CONNECT_TIMEOUT;
        }

        if (v18 != v17)
        {
          v22 = *v21;
          if (*(v17 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v62, *v17, *(v17 + 1));
          }

          else
          {
            v23 = *v17;
            v62.__r_.__value_.__r.__words[2] = *(v17 + 2);
            *&v62.__r_.__value_.__l.__data_ = v23;
          }

          v24 = *(v17 + 3);
          v64 = *(v17 + 8);
          v63 = v24;
          v25 = v24 + v22;
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          if (v25 < a2)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::Connection::ToString(this, &v62);
              if (*(this + 311) == *(this + 310))
              {
                goto LABEL_72;
              }

              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
              if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v62.__r_.__value_.__l.__data_);
              }
            }

            webrtc::Connection::set_write_state(this, 1);
          }
        }
      }
    }
  }

  if ((*(this + 582) - 1) <= 1)
  {
    v33 = (this + 2552);
    if (!*(this + 2556))
    {
      v33 = &webrtc::CONNECTION_WRITE_TIMEOUT;
    }

    v34 = *(this + 310);
    if (*(this + 311) != v34)
    {
      v35 = *v33;
      if (*(v34 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *v34, *(v34 + 1));
      }

      else
      {
        v36 = *v34;
        v62.__r_.__value_.__r.__words[2] = *(v34 + 2);
        *&v62.__r_.__value_.__l.__data_ = v36;
      }

      v37 = *(v34 + 3);
      v64 = *(v34 + 8);
      v63 = v37;
      v38 = v37 + v35;
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v38 < a2)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
LABEL_50:
          v46 = *(this + 582);
          *(this + 582) = 3;
          if (v46 != 3)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
            {
              webrtc::Connection::ToString(this, &v62);
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
              if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v62.__r_.__value_.__l.__data_);
              }
            }

            v56 = *(this + 4);
            for (*(this + 6) = v56; v56 != (this + 24); v56 = *(this + 6))
            {
              v58 = v56[2];
              v57 = v56 + 2;
              *(this + 6) = *(v57 - 1);
              v58(v57, this);
            }
          }

          goto LABEL_51;
        }

        webrtc::Connection::ToString(this, &v62);
        if (*(this + 311) != *(this + 310))
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          goto LABEL_50;
        }

LABEL_72:
        __break(1u);
        return;
      }
    }
  }

LABEL_51:
  webrtc::Connection::UpdateReceiving(this, a2);
  v47 = *(this + 306);
  if (v47 <= *(this + 308))
  {
    v47 = *(this + 308);
  }

  if (*(this + 307) > v47)
  {
    v47 = *(this + 307);
  }

  if (v47 < 1)
  {
    if (*(this + 582) != 3 || *(this + 322) + 10000 >= a2)
    {
      return;
    }

LABEL_62:
    (*(**(this + 32) + 200))(*(this + 32), this);
    return;
  }

  if (v47 + 30000 >= a2)
  {
    return;
  }

  v48 = *(this + 310);
  if (v48 != *(this + 311))
  {
    if (*(v48 + 24) + 30000 >= a2)
    {
      return;
    }

    goto LABEL_62;
  }

  if (v47 + *(*(this + 332) + 40) < a2)
  {
    goto LABEL_62;
  }
}

void webrtc::Connection::ReceivedPingResponse(uint64_t a1, int a2, unsigned int a3, char a4)
{
  if ((a4 & 1) != 0 && *(a1 + 2344) < a3)
  {
    *(a1 + 2344) = a3;
  }

  if (webrtc::g_clock)
  {
    v6 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v6 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v7 = v6 / 1000000;
  *(a1 + 2424) += a2;
  *(a1 + 2432) = a2;
  *(a1 + 2436) = 1;
  if (*(a1 + 2704))
  {
    v8 = exp((*(a1 + 2696) - v7) / *(a1 + 2664));
    v9 = v8 / (v8 + 1.0);
    v10 = *(a1 + 2672);
    v11 = a2 - v10;
    *(a1 + 2672) = v9 * a2 + (1.0 - v9) * v10;
    *(a1 + 2688) = v9 * v9 + (1.0 - v9) * (1.0 - v9) * *(a1 + 2688);
    v12 = *(a1 + 2680);
    v13 = v11 * (v11 * v9) + (1.0 - v9) * v12;
    if (v12 == INFINITY)
    {
      v13 = v11 * v11;
    }

    *(a1 + 2680) = v13;
  }

  else
  {
    *(a1 + 2672) = a2;
  }

  *(a1 + 2696) = v7;
  *(a1 + 2704) = 1;
  v14 = *(a1 + 2488);
  v15 = *(a1 + 2480);
  while (v14 != v15)
  {
    v16 = *(v14 - 17);
    v14 -= 5;
    if (v16 < 0)
    {
      operator delete(*v14);
    }
  }

  *(a1 + 2488) = v15;
  *(a1 + 2464) = v7;
  webrtc::Connection::UpdateReceiving(a1, v7);
  v17 = *(a1 + 2328);
  *(a1 + 2328) = 0;
  if (v17)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::Connection::ToString(a1, &__p);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v25 = *(a1 + 32);
    for (*(a1 + 48) = v25; v25 != a1 + 24; v25 = *(a1 + 48))
    {
      v27 = *(v25 + 16);
      v26 = v25 + 16;
      *(a1 + 48) = *(v26 - 8);
      v27(v26, a1);
    }
  }

  v28 = *(a1 + 2560);
  *(a1 + 2560) = 2;
  if (v28 != 2 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::Connection::ToString(a1, &__p);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v36 = *(a1 + 2420);
  if (v36 >= 1)
  {
    v37 = 3 * *(a1 + 2416);
    v38 = __OFADD__(v37, a2);
    v39 = v37 + a2;
    if (v39 < 0 != v38)
    {
      v39 += 3;
    }

    a2 = v39 >> 2;
  }

  *(a1 + 2416) = a2;
  *(a1 + 2420) = v36 + 1;
}

uint64_t webrtc::Connection::ToLogDescription(webrtc::Connection *this)
{
  if (*(this + 2624))
  {
    return this + 2596;
  }

  v2 = (*(*this + 16))(this);
  v3 = (*(*this + 24))(this);
  v4 = (*(**(this + 32) + 24))(*(this + 32));
  v5 = *(v2 + 208);
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  if (v5 < 2)
  {
    v6 = *(v2 + 208);
  }

  v7 = *(v3 + 208);
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (v7 >= 2)
  {
    v7 = v8;
  }

  if ((*(this + 2624) & 1) == 0)
  {
    *(this + 2624) = 1;
  }

  *(this + 649) = v6;
  *(this + 325) = 0;
  *(this + 652) = 0;
  *(this + 653) = v7;
  *(this + 327) = 0;
  v9 = *(v2 + 56);
  v10 = *(v2 + 79);
  if (v10 >= 0)
  {
    v9 = (v2 + 56);
  }

  if (v10 < 0)
  {
    v10 = *(v2 + 64);
  }

  if (v10 != 6)
  {
    v11 = 0;
    if (v10 == 3)
    {
      if (*v9 != webrtc::UDP_PROTOCOL_NAME || *(v9 + 2) != 112)
      {
        if (*v9 == webrtc::TCP_PROTOCOL_NAME && *(v9 + 2) == 112)
        {
          *(this + 650) = 2;
          v19 = *(v4 + 272);
          if (v19 <= 15)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v14 = bswap32(*v9 | (*(v9 + 2) << 16));
          v15 = bswap32(*"tls" | (webrtc::TLS_PROTOCOL_NAME[2] << 16));
          v16 = v14 >= v15;
          v17 = v14 > v15;
          v18 = !v16;
          *(this + 650) = 4 * (v17 == v18);
          v19 = *(v4 + 272);
          if (v19 <= 15)
          {
            goto LABEL_50;
          }
        }

LABEL_40:
        if (v19 <= 127)
        {
          if (v19 == 16)
          {
            v19 = 2;
            goto LABEL_58;
          }

          if (v19 != 64)
          {
            goto LABEL_86;
          }
        }

        else if (v19 != 128 && v19 != 256 && v19 != 512)
        {
          goto LABEL_86;
        }

LABEL_57:
        v19 = 5;
        goto LABEL_58;
      }

      v11 = 1;
    }

    *(this + 650) = v11;
    v19 = *(v4 + 272);
    if (v19 <= 15)
    {
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  if (*v9 ^ *"ssltcp" | v9[2] ^ *"cp")
  {
    v20 = 0;
  }

  else
  {
    v20 = 3;
  }

  *(this + 650) = v20;
  v19 = *(v4 + 272);
  if (v19 > 15)
  {
    goto LABEL_40;
  }

LABEL_50:
  if (v19 > 3)
  {
    if (v19 != 4)
    {
      if (v19 == 8)
      {
        v19 = 4;
        goto LABEL_58;
      }

      goto LABEL_86;
    }

    goto LABEL_57;
  }

  if (v19 != 1)
  {
    if (v19 == 2)
    {
      v19 = 3;
      goto LABEL_58;
    }

LABEL_86:
    v19 = 0;
  }

LABEL_58:
  *(this + 651) = v19;
  v21 = *(v2 + 112);
  if (v21 == 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * (v21 == 30);
  }

  *(this + 652) = v22;
  v23 = *(v3 + 112);
  if (v23 == 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2 * (v23 == 30);
  }

  *(this + 654) = v24;
  v27 = *(v2 + 32);
  v26 = (v2 + 32);
  v25 = v27;
  v28 = *(v26 + 23);
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(v26 + 1);
  }

  else
  {
    v25 = v26;
  }

  if (v28 == 6)
  {
    if (*v25 ^ *"ssltcp" | v25[2] ^ *"cp")
    {
      v35 = 0;
    }

    else
    {
      v35 = 3;
    }
  }

  else if (v28 == 3)
  {
    if (*v25 == webrtc::UDP_PROTOCOL_NAME && *(v25 + 2) == 112)
    {
      v35 = 1;
    }

    else if (*v25 == webrtc::TCP_PROTOCOL_NAME && *(v25 + 2) == 112)
    {
      v35 = 2;
    }

    else
    {
      v31 = bswap32(*v25 | (*(v25 + 2) << 16));
      v32 = bswap32(*"tls" | (webrtc::TLS_PROTOCOL_NAME[2] << 16));
      v16 = v31 >= v32;
      v33 = v31 > v32;
      v34 = !v16;
      v35 = 4 * (v33 == v34);
    }
  }

  else
  {
    v35 = 0;
  }

  *(this + 655) = v35;
  return this + 2596;
}

void webrtc::Connection::OnConnectionRequestResponse(webrtc::Connection *this, webrtc::StunRequest *a2, webrtc::StunMessage *a3)
{
  v6 = *(this + 582) != 0;
  if (webrtc::g_clock)
  {
    LODWORD(v7) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v7 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v9 = v7 / 1000000 - *(a2 + 6);
  {
    goto LABEL_28;
  }

  memset(&v191, 0, sizeof(v191));
  webrtc::Connection::PrintPingsSinceLastResponse(this, &v191, v8);
  if (!v10 && (webrtc::LogMessage::streams_empty_ & 1) != 0)
  {
    goto LABEL_27;
  }

  __s2.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc";
  __s2.__r_.__value_.__l.__size_ = v6 | 0x2E18u;
  __s2.__r_.__value_.__r.__words[2] = &v187;
  webrtc::Connection::ToString(this, &v186);
  v189[0] = &v186;
  v189[1] = &__s2;
  v189[2] = ": Received ";
  v190 = v189;
  webrtc::StunMethodToString(*(a3 + 16), &v184);
  v18 = *(a2 + 2);
  v19 = *(v18 + 63);
  if (v19 < 0)
  {
    v20 = *(v18 + 40);
    v19 = *(v18 + 48);
    v21 = 2 * v19;
    if ((2 * v19) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }

LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v20 = (v18 + 40);
  v21 = 2 * v19;
  if ((2 * v19) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_32;
  }

LABEL_14:
  if (v21 >= 0x17)
  {
    operator new();
  }

  v183 = v21;
  if (v21)
  {
    bzero(&v182, v21);
  }

  *(&v182 + v21) = 0;
  v22 = v182;
  if (v183 >= 0)
  {
    v22 = &v182;
  }

  if (v19)
  {
    v23 = v22 + 1;
    do
    {
      v24 = *v20++;
      v23 += 2;
      --v19;
    }

    while (v19);
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, *v190[1]);
  if (v183 < 0)
  {
    operator delete(v182);
    if ((v185 & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  else if ((v185 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v184);
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_35:
    operator delete(v186.__r_.__value_.__l.__data_);
    if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_36;
    }

LABEL_28:
    v25 = *(a2 + 2);
    if ((*(v25 + 63) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    std::string::__init_copy_ctor_external(&__s2, *(v25 + 40), *(v25 + 48));
    v26 = *(this + 310);
    v27 = *(this + 311);
    if (v26 == v27)
    {
      goto LABEL_60;
    }

LABEL_38:
    if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __s2.__r_.__value_.__l.__size_;
    }

    if ((*(&__s2.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      v29 = __s2.__r_.__value_.__r.__words[0];
      while (1)
      {
        v33 = *(v26 + 23);
        v34 = v33;
        if ((v33 & 0x80u) != 0)
        {
          v33 = *(v26 + 8);
        }

        if (v33 == size)
        {
          v35 = v34 >= 0 ? v26 : *v26;
          if (!memcmp(v35, v29, size))
          {
            break;
          }
        }

        v26 += 40;
        if (v26 == v27)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      while (1)
      {
        v30 = *(v26 + 23);
        v31 = v30;
        if ((v30 & 0x80u) != 0)
        {
          v30 = *(v26 + 8);
        }

        if (v30 == size)
        {
          v32 = v31 >= 0 ? v26 : *v26;
          if (!memcmp(v32, &__s2, size))
          {
            break;
          }
        }

        v26 += 40;
        if (v26 == v27)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_27:
  if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_36:
  operator delete(v191.__r_.__value_.__l.__data_);
  v25 = *(a2 + 2);
  if (*(v25 + 63) < 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  __s2 = *(v25 + 40);
  v26 = *(this + 310);
  v27 = *(this + 311);
  if (v26 != v27)
  {
    goto LABEL_38;
  }

LABEL_60:
  if (v26 == v27)
  {
LABEL_62:
    v37 = 0;
    v36 = 0;
  }

  else
  {
    v36 = *(v26 + 32);
    v37 = 1;
  }

  webrtc::Connection::ReceivedPingResponse(this, v9, v36, v37);
  ++*(this + 155);
  v38 = *(this + 329);
  if (v38)
  {
    webrtc::IceEventLog::LogCandidatePairEvent(v38);
  }

  if (*(*(a2 + 2) + 32) == 1)
  {
    if ((*(this + 2641) & 1) == 0)
    {
      v39 = *(a3 + 1);
      v40 = *(a3 + 2);
      if (v39 == v40)
      {
LABEL_70:
        v42 = 256;
      }

      else
      {
        while (1)
        {
          v41 = *v39;
          if (*(*v39 + 8) == 49241)
          {
            break;
          }

          if (++v39 == v40)
          {
            goto LABEL_70;
          }
        }

        v43 = **(v41 + 16);
        if (*(*(v41 + 16) + 8) == v43)
        {
          goto LABEL_200;
        }

        if (*v43)
        {
          v42 = 257;
        }

        else
        {
          v42 = 256;
        }
      }

      *(this + 1320) = v42;
    }

    v44 = *(this + 31);
    if (!v44)
    {
      goto LABEL_84;
    }

    if (*v44 != 1)
    {
      goto LABEL_84;
    }

    v45 = *(this + 32);
    if (!v45)
    {
      goto LABEL_84;
    }

    v46 = *(a3 + 1);
    v47 = *(a3 + 2);
    if (v46 == v47)
    {
LABEL_82:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
LABEL_83:
        webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
      }
    }

    else
    {
      while (1)
      {
        v48 = *v46;
        if (*(*v46 + 8) == 32)
        {
          break;
        }

        if (++v46 == v47)
        {
          goto LABEL_82;
        }
      }

      v111 = (*(*v45 + 136))(v45);
      v112 = *v111;
      v113 = *(v111 + 8);
      if (*v111 != v113)
      {
        v114 = this + 24;
        while (!webrtc::SocketAddress::operator==((v112 + 80), v48 + 16))
        {
          v112 += 432;
          if (v112 == v113)
          {
            goto LABEL_156;
          }
        }

        if (!webrtc::Candidate::operator==(this + 33, v112))
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::Connection::ToString(this, &v191);
            webrtc::webrtc_logging_impl::Log("\r\n\t", v118, v119, v120, v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
            if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v191.__r_.__value_.__l.__data_);
            }
          }

          webrtc::Candidate::operator=(this + 264, v112);
          v125 = *(this + 4);
          for (*(this + 6) = v125; v125 != v114; v125 = *(this + 6))
          {
            v127 = *(v125 + 16);
            v126 = v125 + 16;
            *(this + 6) = *(v126 - 8);
            v127(v126, this);
          }
        }

        goto LABEL_84;
      }

LABEL_156:
      v115 = *(a2 + 2);
      v116 = *(v115 + 8);
      v117 = *(v115 + 16);
      if (v116 != v117)
      {
        while (*(*v116 + 8) != 36)
        {
          v116 += 8;
          if (v116 == v117)
          {
            goto LABEL_159;
          }
        }

        v128 = *(*v116 + 12);
        memset(&v191, 0, sizeof(v191));
        {
          goto LABEL_202;
        }

        v133 = (this + 264);
        if (*(this + 287) < 0)
        {
          operator delete(*v133);
        }

        *v133 = *&v191.__r_.__value_.__l.__data_;
        *(this + 35) = *(&v191.__r_.__value_.__l + 2);
        *(this + 118) = 2;
        v134 = (this + 344);
        v135 = (this + 544);
        v136 = *(this + 367);
        if (*(this + 567) < 0)
        {
          if (v136 >= 0)
          {
            v137 = this + 344;
          }

          else
          {
            v137 = *(this + 43);
          }

          if (v136 >= 0)
          {
            v138 = *(this + 367);
          }

          else
          {
            v138 = *(this + 44);
          }

          std::string::__assign_no_alias<false>(v135, v137, v138);
        }

        else if ((*(this + 367) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v135, *(this + 43), *(this + 44));
        }

        else
        {
          *&v135->__r_.__value_.__l.__data_ = *v134;
          *(this + 70) = *(this + 45);
        }

        *(this + 144) = *(this + 94);
        *(this + 580) = *(this + 380);
        *(this + 300) = *(this + 200);
        *(this + 608) = *(this + 408);
        *(this + 151) = *(this + 101);
        v139 = (*(**(this + 32) + 56))(*(this + 32));
        webrtc::Candidate::ComputeFoundation((this + 264), (this + 344), v139);
        *(this + 104) = v128;
        if (v134 != (v48 + 16))
        {
          v140 = *(v48 + 39);
          if (*(this + 367) < 0)
          {
            if (v140 >= 0)
            {
              v142 = (v48 + 16);
            }

            else
            {
              v142 = *(v48 + 16);
            }

            if (v140 >= 0)
            {
              v143 = *(v48 + 39);
            }

            else
            {
              v143 = *(v48 + 24);
            }

            std::string::__assign_no_alias<false>((this + 344), v142, v143);
          }

          else if ((*(v48 + 39) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(this + 344, *(v48 + 16), *(v48 + 24));
          }

          else
          {
            v141 = *(v48 + 16);
            *(this + 45) = *(v48 + 32);
            *v134 = v141;
          }
        }

        *(this + 94) = *(v48 + 48);
        *(this + 380) = *(v48 + 52);
        *(this + 200) = *(v48 + 72);
        *(this + 408) = *(v48 + 80);
        *(this + 101) = *(v48 + 76);
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::Connection::ToString(this, &v191);
          webrtc::webrtc_logging_impl::Log("\r\n\t", v144, v145, v146, v147, v148, v149, v150, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v191.__r_.__value_.__l.__data_);
          }
        }

        (*(**(this + 32) + 256))(*(this + 32), this + 264);
        v151 = *(this + 4);
        for (*(this + 6) = v151; v151 != (this + 24); v151 = *(this + 6))
        {
          v153 = v151[2];
          v152 = v151 + 2;
          *(this + 6) = *(v152 - 1);
          v153(v152, this);
        }

        goto LABEL_84;
      }

LABEL_159:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_83;
      }
    }

LABEL_84:
    if (*(*(this + 332) + 29) == 1 && *(this + 2641) == 1)
    {
      webrtc::StunMessage::Clone(*(a2 + 2), &v191);
      v56 = *(this + 331);
      *(this + 331) = v191.__r_.__value_.__r.__words[0];
      if (v56)
      {
        (*(*v56 + 8))(v56);
      }
    }
  }

  v57 = *(a2 + 2);
  v58 = *(v57 + 8);
  v59 = *(v57 + 16);
  if (v58 == v59)
  {
    v61 = 0;
    v62 = *(a3 + 1);
    v63 = *(a3 + 2);
    if (v62 != v63)
    {
LABEL_93:
      while (1)
      {
        v64 = *v62;
        if (*(*v62 + 8) == 49245)
        {
          break;
        }

        if (++v62 == v63)
        {
          v64 = 0;
          break;
        }
      }

      if (*(this + 2784) != 1)
      {
        goto LABEL_108;
      }

LABEL_97:
      v65 = !v61;
      if (!v64)
      {
        v65 = 1;
      }

      if (v65)
      {
        if (v61)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v82, v83, v84, v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          }

          if (*(this + 2784))
          {
            v172 = 0;
            v171 = 0;
            v167 = 1;
            v169 = 0;
            v170 = 0;
            v168 = 0;
            v173 = 0;
            v174 = 0;
            v175 = 0;
            v89 = *(this + 347);
            if (v89)
            {
              (*(*v89 + 48))(v89, &v167);
              if ((SHIBYTE(v170) & 0x80000000) == 0)
              {
                goto LABEL_126;
              }

              v74 = v168;
              goto LABEL_125;
            }

            goto LABEL_201;
          }
        }

        else
        {
          if (!v64)
          {
            goto LABEL_126;
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v90, v91, v92, v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          }

          if (*(this + 2784))
          {
            v163 = 0;
            v162 = 0;
            v158 = 10;
            v160 = 0;
            v161 = 0;
            __p = 0;
            v164 = 0;
            v165 = 0;
            v166 = 0;
            v97 = *(this + 347);
            if (v97)
            {
              (*(*v97 + 48))(v97, &v158);
              if ((SHIBYTE(v161) & 0x80000000) == 0)
              {
                goto LABEL_126;
              }

              v74 = __p;
              goto LABEL_125;
            }

            goto LABEL_201;
          }
        }
      }

      else
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
        }

        if (*(this + 2784))
        {
          v176 = 0;
          v179[14] = 0;
          v178 = 0;
          memset(v179, 0, 13);
          v177 = 0;
          v180 = v64;
          v181 = 1;
          v73 = *(this + 347);
          if (v73)
          {
            (*(*v73 + 48))(v73, &v176);
            if ((v179[7] & 0x80000000) == 0)
            {
              goto LABEL_126;
            }

            v74 = v177;
LABEL_125:
            operator delete(v74);
            goto LABEL_126;
          }

          goto LABEL_201;
        }
      }

LABEL_200:
      __break(1u);
LABEL_201:
      std::__throw_bad_function_call[abi:sn200100]();
LABEL_202:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v129, v130, v131, v132, v157);
      webrtc::Connection::MaybeSetRemoteIceParametersAndGeneration(v154, v155, v156);
      return;
    }
  }

  else
  {
    while (1)
    {
      v60 = *v58;
      if (*(*v58 + 8) == 49244)
      {
        break;
      }

      if (++v58 == v59)
      {
        v60 = 0;
        break;
      }
    }

    v61 = v60 != 0;
    v62 = *(a3 + 1);
    v63 = *(a3 + 2);
    if (v62 != v63)
    {
      goto LABEL_93;
    }
  }

  v64 = 0;
  if (*(this + 2784) == 1)
  {
    goto LABEL_97;
  }

LABEL_108:
  if (v64 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v75, v76, v77, v78, v79, v80, v81, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
  }

LABEL_126:
  if (*(this + 356))
  {
    v98 = *(a2 + 2);
    v99 = *(v98 + 8);
    v100 = *(v98 + 16);
    if (v99 == v100)
    {
      v103 = 1;
      v105 = 1;
      v106 = *(a3 + 1);
      v107 = *(a3 + 2);
      if (v106 != v107)
      {
LABEL_137:
        v108 = v106;
        do
        {
          v109 = *v108;
          if (*(*v108 + 8) == 49264)
          {
            goto LABEL_141;
          }

          ++v108;
        }

        while (v108 != v107);
        v109 = 0;
LABEL_141:
        while (1)
        {
          v110 = *v106;
          if (*(*v106 + 8) == 49265)
          {
            break;
          }

          if (++v106 == v107)
          {
            goto LABEL_146;
          }
        }

LABEL_147:
        if (!v103 || !v105)
        {
          (*(this + 360))(this + 2856, v109, v110);
        }

        goto LABEL_149;
      }
    }

    else
    {
      v101 = *(v98 + 8);
      while (1)
      {
        v102 = *v101;
        if (*(*v101 + 8) == 49264)
        {
          break;
        }

        if (++v101 == v100)
        {
          v102 = 0;
          break;
        }
      }

      v103 = v102 == 0;
      while (1)
      {
        v104 = *v99;
        if (*(*v99 + 8) == 49265)
        {
          break;
        }

        if (++v99 == v100)
        {
          v104 = 0;
          break;
        }
      }

      v105 = v104 == 0;
      v106 = *(a3 + 1);
      v107 = *(a3 + 2);
      if (v106 != v107)
      {
        goto LABEL_137;
      }
    }

    v109 = 0;
LABEL_146:
    v110 = 0;
    goto LABEL_147;
  }

LABEL_149:
  if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s2.__r_.__value_.__l.__data_);
  }
}

std::string *webrtc::Connection::MaybeSetRemoteIceParametersAndGeneration(std::string *result, void *a2, int a3)
{
  v4 = a2;
  v5 = result;
  v6 = &result[35].__r_.__value_.__r.__words[2];
  v7 = result[36].__r_.__value_.__s.__data_[15];
  v8 = v7;
  data = result[36].__r_.__value_.__l.__data_;
  if ((v7 & 0x80u) == 0)
  {
    v10 = result[36].__r_.__value_.__s.__data_[15];
  }

  else
  {
    v10 = result[36].__r_.__value_.__r.__words[0];
  }

  v11 = *(a2 + 23);
  v12 = v11;
  v13 = a2[1];
  if ((v11 & 0x80u) == 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = a2[1];
  }

  if (v10 != v14)
  {
    goto LABEL_30;
  }

  if ((v7 & 0x80u) == 0)
  {
    v15 = &result[35].__r_.__value_.__r.__words[2];
  }

  else
  {
    v15 = *v6;
  }

  if ((v11 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  result = memcmp(v15, a2, v10);
  if (result)
  {
    goto LABEL_30;
  }

  if ((v5[37].__r_.__value_.__s.__data_[15] & 0x8000000000000000) != 0)
  {
    if (v5[37].__r_.__value_.__r.__words[0])
    {
      goto LABEL_30;
    }
  }

  else if (v5[37].__r_.__value_.__s.__data_[15])
  {
    goto LABEL_30;
  }

  v16 = *(v4 + 47);
  if (v16 >= 0)
  {
    v17 = (v4 + 3);
  }

  else
  {
    v17 = v4[3];
  }

  if (v16 >= 0)
  {
    v18 = *(v4 + 47);
  }

  else
  {
    v18 = v4[4];
  }

  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 == 0;
  }

  if (!v19)
  {
    __break(1u);
    return result;
  }

  result = std::string::__assign_external((v5 + 880), v17, v18);
  v7 = v5[36].__r_.__value_.__s.__data_[15];
  data = v5[36].__r_.__value_.__l.__data_;
  v11 = *(v4 + 23);
  v13 = v4[1];
  v12 = *(v4 + 23);
  v8 = v5[36].__r_.__value_.__s.__data_[15];
LABEL_30:
  if (v8 >= 0)
  {
    v20 = v7;
  }

  else
  {
    v20 = data;
  }

  if (v12 >= 0)
  {
    v21 = v11;
  }

  else
  {
    v21 = v13;
  }

  if (v20 == v21)
  {
    v22 = v8 >= 0 ? v6 : *v6;
    v23 = v12 >= 0 ? v4 : *v4;
    result = memcmp(v22, v23, v20);
    if (!result)
    {
      v24 = v5[37].__r_.__value_.__s.__data_[15];
      if (v24 >= 0)
      {
        v25 = v5[37].__r_.__value_.__s.__data_[15];
      }

      else
      {
        v25 = v5[37].__r_.__value_.__r.__words[0];
      }

      v26 = *(v4 + 47);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = v4[4];
      }

      if (v25 == v26)
      {
        if (v24 >= 0)
        {
          v28 = &v5[36].__r_.__value_.__r.__words[2];
        }

        else
        {
          v28 = v5[36].__r_.__value_.__r.__words[2];
        }

        v31 = v4[3];
        v30 = v4 + 3;
        v29 = v31;
        if (v27 >= 0)
        {
          v32 = v30;
        }

        else
        {
          v32 = v29;
        }

        result = memcmp(v28, v32, v25);
        if (!result && !LODWORD(v5[39].__r_.__value_.__r.__words[1]))
        {
          LODWORD(v5[39].__r_.__value_.__r.__words[1]) = a3;
        }
      }
    }
  }

  return result;
}

uint64_t webrtc::Connection::MaybeUpdatePeerReflexiveCandidate(uint64_t this, const webrtc::Candidate *a2)
{
  if (*(this + 904) == 2 && *(a2 + 52) != 2)
  {
    v3 = *(this + 751);
    if (v3 >= 0)
    {
      v4 = *(this + 751);
    }

    else
    {
      v4 = *(this + 736);
    }

    v5 = *(a2 + 55);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 5);
    }

    if (v4 == v5)
    {
      v7 = v3 >= 0 ? (this + 728) : *(this + 728);
      v8 = v6 >= 0 ? (a2 + 32) : *(a2 + 4);
      v9 = this;
      this = memcmp(v7, v8, v4);
      if (!this)
      {
        this = webrtc::SocketAddress::operator==(v9 + 776, a2 + 80);
        if (this)
        {
          v11 = *(v9 + 879);
          if (v11 >= 0)
          {
            v12 = *(v9 + 879);
          }

          else
          {
            v12 = *(v9 + 864);
          }

          v13 = *(a2 + 183);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 21);
          }

          if (v12 == v13)
          {
            v15 = v11 >= 0 ? (v9 + 856) : *(v9 + 856);
            v16 = v14 >= 0 ? (a2 + 160) : *(a2 + 20);
            this = memcmp(v15, v16, v12);
            if (!this)
            {
              v17 = *(v9 + 903);
              if (v17 >= 0)
              {
                v18 = *(v9 + 903);
              }

              else
              {
                v18 = *(v9 + 888);
              }

              v19 = *(a2 + 207);
              v20 = v19;
              if ((v19 & 0x80u) != 0)
              {
                v19 = *(a2 + 24);
              }

              if (v18 == v19)
              {
                v21 = v17 >= 0 ? (v9 + 880) : *(v9 + 880);
                v22 = v20 >= 0 ? (a2 + 184) : *(a2 + 23);
                this = memcmp(v21, v22, v18);
                if (!this && *(v9 + 944) == *(a2 + 62))
                {

                  return webrtc::Candidate::operator=(v9 + 696, a2);
                }
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::Candidate::operator=(uint64_t __dst, const std::string::value_type *a2)
{
  v2 = a2;
  v3 = __dst;
  if (__dst == a2)
  {
    *(__dst + 24) = *(a2 + 6);
    *(__dst + 112) = *(a2 + 28);
    *(__dst + 116) = *(a2 + 116);
    *(__dst + 136) = *(a2 + 68);
    *(__dst + 144) = a2[144];
    *(__dst + 140) = *(a2 + 35);
    *(__dst + 152) = *(a2 + 38);
    *(__dst + 208) = *(a2 + 52);
    v7 = *(a2 + 30);
    *(__dst + 248) = *(a2 + 62);
    *(__dst + 240) = v7;
    *(__dst + 312) = *(a2 + 78);
    *(__dst + 316) = *(a2 + 316);
    *(__dst + 336) = *(a2 + 168);
    *(__dst + 344) = a2[344];
    *(__dst + 340) = *(a2 + 85);
    *(__dst + 400) = *(a2 + 100);
    return __dst;
  }

  if ((*(__dst + 23) & 0x80000000) == 0)
  {
    if (a2[23] < 0)
    {
      std::string::__assign_no_alias<true>(__dst, *a2, *(a2 + 1));
      *(v3 + 24) = *(v2 + 6);
      v5 = v2 + 32;
      v6 = *(v2 + 55);
      if (*(v3 + 55) < 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = *a2;
      *(__dst + 16) = *(a2 + 2);
      *__dst = v4;
      *(__dst + 24) = *(a2 + 6);
      v5 = a2 + 32;
      v6 = *(a2 + 55);
      if (*(__dst + 55) < 0)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    if ((v6 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 32), *(v2 + 4), *(v2 + 5));
      v10 = v2 + 56;
      v11 = *(v2 + 79);
      if ((*(v3 + 79) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v9 = *v5;
      *(v3 + 48) = *(v5 + 2);
      *(v3 + 32) = v9;
      v10 = v2 + 56;
      v11 = *(v2 + 79);
      if ((*(v3 + 79) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    if ((v11 & 0x80u) == 0)
    {
      v17 = v10;
    }

    else
    {
      v17 = *(v2 + 7);
    }

    if ((v11 & 0x80u) == 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = *(v2 + 8);
    }

    std::string::__assign_no_alias<false>((v3 + 56), v17, v18);
    v15 = v2 + 80;
    v16 = *(v2 + 103);
    if (*(v3 + 103) < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  if (a2[23] >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = *(v2 + 1);
  }

  std::string::__assign_no_alias<false>(__dst, a2, v8);
  *(v3 + 24) = *(v2 + 6);
  v5 = v2 + 32;
  v6 = *(v2 + 55);
  if ((*(v3 + 55) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  if ((v6 & 0x80u) == 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = *(v2 + 4);
  }

  if ((v6 & 0x80u) == 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = *(v2 + 5);
  }

  std::string::__assign_no_alias<false>((v3 + 32), v12, v13);
  v10 = v2 + 56;
  v11 = *(v2 + 79);
  if (*(v3 + 79) < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v11 & 0x80) == 0)
  {
    v14 = *v10;
    *(v3 + 72) = *(v10 + 2);
    *(v3 + 56) = v14;
    v15 = v2 + 80;
    v16 = *(v2 + 103);
    if (*(v3 + 103) < 0)
    {
      goto LABEL_36;
    }

LABEL_33:
    if ((v16 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 80), *(v2 + 10), *(v2 + 11));
    }

    else
    {
      v19 = *v15;
      *(v3 + 96) = *(v15 + 2);
      *(v3 + 80) = v19;
    }

    goto LABEL_44;
  }

  std::string::__assign_no_alias<true>((v3 + 56), *(v2 + 7), *(v2 + 8));
  v15 = v2 + 80;
  v16 = *(v2 + 103);
  if ((*(v3 + 103) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  if ((v16 & 0x80u) == 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v2 + 10);
  }

  if ((v16 & 0x80u) == 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = *(v2 + 11);
  }

  std::string::__assign_no_alias<false>((v3 + 80), v20, v21);
LABEL_44:
  *(v3 + 112) = *(v2 + 28);
  *(v3 + 116) = *(v2 + 116);
  *(v3 + 136) = *(v2 + 68);
  *(v3 + 144) = v2[144];
  *(v3 + 140) = *(v2 + 35);
  *(v3 + 152) = *(v2 + 38);
  v22 = v2[183];
  if ((*(v3 + 183) & 0x80000000) == 0)
  {
    if (v2[183] < 0)
    {
      std::string::__assign_no_alias<true>((v3 + 160), *(v2 + 20), *(v2 + 21));
      v24 = v2 + 184;
      v25 = *(v2 + 207);
      if (*(v3 + 207) < 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v23 = *(v2 + 10);
      *(v3 + 176) = *(v2 + 22);
      *(v3 + 160) = v23;
      v24 = v2 + 184;
      v25 = *(v2 + 207);
      if (*(v3 + 207) < 0)
      {
        goto LABEL_59;
      }
    }

LABEL_55:
    if ((v25 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 184), *(v2 + 23), *(v2 + 24));
      *(v3 + 208) = *(v2 + 52);
      v29 = v2 + 216;
      v30 = *(v2 + 239);
      if (*(v3 + 239) < 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v28 = *v24;
      *(v3 + 200) = *(v24 + 2);
      *(v3 + 184) = v28;
      *(v3 + 208) = *(v2 + 52);
      v29 = v2 + 216;
      v30 = *(v2 + 239);
      if (*(v3 + 239) < 0)
      {
        goto LABEL_69;
      }
    }

LABEL_66:
    if ((v30 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 216), *(v2 + 27), *(v2 + 28));
    }

    else
    {
      v33 = *v29;
      *(v3 + 232) = *(v29 + 2);
      *(v3 + 216) = v33;
    }

    goto LABEL_77;
  }

  if (v22 >= 0)
  {
    v26 = v2 + 160;
  }

  else
  {
    v26 = *(v2 + 20);
  }

  if (v22 >= 0)
  {
    v27 = *(v2 + 183);
  }

  else
  {
    v27 = *(v2 + 21);
  }

  std::string::__assign_no_alias<false>((v3 + 160), v26, v27);
  v24 = v2 + 184;
  v25 = *(v2 + 207);
  if ((*(v3 + 207) & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_59:
  if ((v25 & 0x80u) == 0)
  {
    v31 = v24;
  }

  else
  {
    v31 = *(v2 + 23);
  }

  if ((v25 & 0x80u) == 0)
  {
    v32 = v25;
  }

  else
  {
    v32 = *(v2 + 24);
  }

  std::string::__assign_no_alias<false>((v3 + 184), v31, v32);
  *(v3 + 208) = *(v2 + 52);
  v29 = v2 + 216;
  v30 = *(v2 + 239);
  if ((*(v3 + 239) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_69:
  if ((v30 & 0x80u) == 0)
  {
    v34 = v29;
  }

  else
  {
    v34 = *(v2 + 27);
  }

  if ((v30 & 0x80u) == 0)
  {
    v35 = v30;
  }

  else
  {
    v35 = *(v2 + 28);
  }

  std::string::__assign_no_alias<false>((v3 + 216), v34, v35);
LABEL_77:
  v36 = *(v2 + 30);
  *(v3 + 248) = *(v2 + 62);
  *(v3 + 240) = v36;
  v37 = v2[279];
  if (*(v3 + 279) < 0)
  {
    if (v37 >= 0)
    {
      v42 = v2 + 256;
    }

    else
    {
      v42 = *(v2 + 32);
    }

    if (v37 >= 0)
    {
      v43 = *(v2 + 279);
    }

    else
    {
      v43 = *(v2 + 33);
    }

    std::string::__assign_no_alias<false>((v3 + 256), v42, v43);
    v39 = (v3 + 280);
    v40 = v2 + 280;
    v41 = *(v2 + 303);
    if (*(v3 + 303) < 0)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  if ((v2[279] & 0x80) == 0)
  {
    v38 = *(v2 + 16);
    *(v3 + 272) = *(v2 + 34);
    *(v3 + 256) = v38;
    v39 = (v3 + 280);
    v40 = v2 + 280;
    v41 = *(v2 + 303);
    if (*(v3 + 303) < 0)
    {
      goto LABEL_91;
    }

LABEL_88:
    if ((v41 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v39, *(v2 + 35), *(v2 + 36));
    }

    else
    {
      v44 = *v40;
      v39->__r_.__value_.__r.__words[2] = *(v40 + 2);
      *&v39->__r_.__value_.__l.__data_ = v44;
    }

    goto LABEL_99;
  }

  std::string::__assign_no_alias<true>((v3 + 256), *(v2 + 32), *(v2 + 33));
  v39 = (v3 + 280);
  v40 = v2 + 280;
  v41 = *(v2 + 303);
  if ((*(v3 + 303) & 0x80000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_91:
  if ((v41 & 0x80u) == 0)
  {
    v45 = v40;
  }

  else
  {
    v45 = *(v2 + 35);
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = *(v2 + 36);
  }

  std::string::__assign_no_alias<false>(v39, v45, v46);
LABEL_99:
  *(v3 + 312) = *(v2 + 78);
  *(v3 + 316) = *(v2 + 316);
  *(v3 + 336) = *(v2 + 168);
  *(v3 + 344) = v2[344];
  *(v3 + 340) = *(v2 + 85);
  v47 = v2[375];
  if (*(v3 + 375) < 0)
  {
    if (v47 >= 0)
    {
      v52 = v2 + 352;
    }

    else
    {
      v52 = *(v2 + 44);
    }

    if (v47 >= 0)
    {
      v53 = *(v2 + 375);
    }

    else
    {
      v53 = *(v2 + 45);
    }

    std::string::__assign_no_alias<false>((v3 + 352), v52, v53);
    v49 = (v3 + 376);
    v50 = v2 + 376;
    v51 = *(v2 + 399);
    if (*(v3 + 399) < 0)
    {
      goto LABEL_113;
    }
  }

  else if (v2[375] < 0)
  {
    std::string::__assign_no_alias<true>((v3 + 352), *(v2 + 44), *(v2 + 45));
    v49 = (v3 + 376);
    v50 = v2 + 376;
    v51 = *(v2 + 399);
    if (*(v3 + 399) < 0)
    {
LABEL_113:
      if ((v51 & 0x80u) == 0)
      {
        v55 = v50;
      }

      else
      {
        v55 = *(v2 + 47);
      }

      if ((v51 & 0x80u) == 0)
      {
        v56 = v51;
      }

      else
      {
        v56 = *(v2 + 48);
      }

      std::string::__assign_no_alias<false>(v49, v55, v56);
      goto LABEL_121;
    }
  }

  else
  {
    v48 = *(v2 + 22);
    *(v3 + 368) = *(v2 + 46);
    *(v3 + 352) = v48;
    v49 = (v3 + 376);
    v50 = v2 + 376;
    v51 = *(v2 + 399);
    if (*(v3 + 399) < 0)
    {
      goto LABEL_113;
    }
  }

  if ((v51 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v49, *(v2 + 47), *(v2 + 48));
  }

  else
  {
    v54 = *v50;
    v49->__r_.__value_.__r.__words[2] = *(v50 + 2);
    *&v49->__r_.__value_.__l.__data_ = v54;
  }

LABEL_121:
  *(v3 + 400) = *(v2 + 100);
  v57 = (v3 + 408);
  v58 = v2[431];
  if (*(v3 + 431) < 0)
  {
    if (v58 >= 0)
    {
      v60 = v2 + 408;
    }

    else
    {
      v60 = *(v2 + 51);
    }

    if (v58 >= 0)
    {
      v61 = *(v2 + 431);
    }

    else
    {
      v61 = *(v2 + 52);
    }

    std::string::__assign_no_alias<false>(v57, v60, v61);
    return v3;
  }

  else
  {
    if (v2[431] < 0)
    {
      std::string::__assign_no_alias<true>(v57, *(v2 + 51), *(v2 + 52));
    }

    else
    {
      v59 = *(v2 + 408);
      *(v3 + 424) = *(v2 + 53);
      *&v57->__r_.__value_.__l.__data_ = v59;
    }

    return v3;
  }
}

__n128 webrtc::Connection::stats@<Q0>(webrtc::Connection *this@<X0>, uint64_t a2@<X8>)
{
  *(this + 152) = vcvtad_u64_f64(webrtc::RateTracker::ComputeRateForInterval((this + 2192), *(this + 276) * *(this + 275)));
  *(this + 151) = *(this + 278);
  *(this + 145) = vcvtad_u64_f64(webrtc::RateTracker::ComputeRateForInterval((this + 2256), *(this + 284) * *(this + 283)));
  *(this + 144) = *(this + 286);
  *(this + 1130) = *(this + 2332);
  v4 = *(this + 582);
  *(this + 1129) = v4 == 0;
  *(this + 1131) = v4 == 3;
  *(this + 142) = *(this + 604);
  *(this + 264) = this;
  *(this + 530) = *(this + 640);
  v5 = *(this + 31);
  if (v5 && *v5 == 1 && *(this + 32))
  {
    *(this + 266) = (*(*this + 48))(this);
    v6 = (*(*this + 16))(this);
    webrtc::Candidate::operator=(this + 1248, v6);
  }

  if (*(this + 586))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(this + 587) != 0;
  }

  *(this + 2136) = v7;
  *(this + 268) = *(this + 303);
  *(this + 538) = *(this + 608);
  *(this + 2156) = *(this + 2436);
  v8 = (*(*this + 24))(this);
  webrtc::Candidate::operator=(this + 1680, v8);
  v9 = *(this + 307);
  if (v9 >= 1)
  {
    v10 = 1000 * (*(this + 323) + v9);
    if ((*(this + 2168) & 1) == 0)
    {
      *(this + 2168) = 1;
    }

    *(this + 270) = v10;
  }

  v11 = *(this + 290);
  if (v11 >= 1)
  {
    v12 = 1000 * (*(this + 323) + v11);
    if ((*(this + 2184) & 1) == 0)
    {
      *(this + 2184) = 1;
    }

    *(this + 272) = v12;
  }

  *(a2 + 112) = *(this + 155);
  v13 = *(this + 1208);
  *(a2 + 64) = *(this + 1192);
  *(a2 + 80) = v13;
  *(a2 + 96) = *(this + 1224);
  v14 = *(this + 1144);
  *a2 = *(this + 1128);
  *(a2 + 16) = v14;
  v15 = *(this + 1176);
  *(a2 + 32) = *(this + 1160);
  *(a2 + 48) = v15;
  webrtc::Candidate::Candidate((a2 + 120), this + 52);
  webrtc::Candidate::Candidate((a2 + 552), this + 70);
  v16 = *(this + 135);
  *(a2 + 1016) = *(this + 134);
  *(a2 + 1032) = v16;
  *(a2 + 1041) = *(this + 2169);
  result = *(this + 133);
  *(a2 + 984) = *(this + 132);
  *(a2 + 1000) = result;
  return result;
}

void webrtc::Connection::ForgetLearnedState(char **this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::Connection::ToString(this, &__p);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy((this + 295), this[296]);
  this[295] = (this + 296);
  *(this + 148) = 0u;
  *(this + 2332) = 0;
  *(this + 582) = 2;
  *(this + 334) = nan("uninit");
  this[335] = 0x7FF0000000000000;
  this[336] = 0x3FF0000000000000;
  if (*(this + 2704) == 1)
  {
    *(this + 2704) = 0;
  }

  v9 = this[311];
  v10 = this[310];
  while (v9 != v10)
  {
    v11 = *(v9 - 17);
    v9 -= 5;
    if (v11 < 0)
    {
      operator delete(*v9);
    }
  }

  this[311] = v10;
}

uint64_t webrtc::ProxyConnection::Send(webrtc::ProxyConnection *this, const void *a2, uint64_t a3, const webrtc::AsyncSocketPacketOptions *a4)
{
  v4 = *(this + 31);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v4 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 32);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  ++*(this + 147);
  v7 = a3;
  v8 = (*(*v5 + 144))(v5, a2, a3, this + 776, a4, 1);
  if (webrtc::g_clock)
  {
    v9 = v8;
    v10 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    v9 = v8;
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v10 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  v12 = v10 / 1000000;
  result = v9;
  v13 = this;
  if (v9 <= 0)
  {
    v22 = (*(**(this + 32) + 120))(*(this + 32));
    result = v9;
    v13 = this;
    *(this + 722) = v22;
    v23 = (this + 1168);
    v24 = 1144;
    v9 = 1;
  }

  else
  {
    v9 = v9;
    if (*(this + 288) == -1)
    {
      v14 = result;
      v15 = (*(*(this + 282) + 16))(this + 2256);
      result = v14;
      v13 = this;
      *(this + 289) = v15;
      *(this + 288) = v15;
      *(this + 287) = 0;
      **(this + 285) = 0;
    }

    v16 = 0;
    v17 = *(v13 + 284);
    while (1)
    {
      v18 = *(v13 + 288);
      v19 = *(v13 + 283);
      if (v19 + v18 > v12)
      {
        break;
      }

      *(v13 + 288) = v19 + v18;
      v20 = (*(v13 + 287) + 1) % (v17 + 1);
      *(v13 + 287) = v20;
      v21 = *(v13 + 285);
      *(v21 + 8 * v20) = 0;
      if (++v16 > v17)
      {
        v19 = *(v13 + 283);
        v18 = *(v13 + 288);
        goto LABEL_19;
      }
    }

    v21 = *(v13 + 285);
    v20 = *(v13 + 287);
LABEL_19:
    *(v13 + 288) = v18 + (v12 - v18) / v19 * v19;
    v23 = (v21 + 8 * v20);
    v24 = 2288;
    v7 = v9;
  }

  *v23 += v9;
  *(v13 + v24) += v7;
  *(v13 + 290) = v12;
  return result;
}

void webrtc::Connection::ConnectionRequest::~ConnectionRequest(webrtc::Connection::ConnectionRequest *this)
{
  *this = &unk_2882A08C8;
  v2 = *(this + 5);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_2882A08C8;
  v2 = *(this + 5);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::ProxyConnection::~ProxyConnection(webrtc::ProxyConnection *this)
{
  webrtc::Connection::~Connection(this);

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::Connection::Connection(webrtc::WeakPtr<webrtc::PortInterface>,unsigned long,webrtc::Candidate const&)::$_0,std::allocator<webrtc::Connection::Connection(webrtc::WeakPtr<webrtc::PortInterface>,unsigned long,webrtc::Candidate const&)::$_0>,void ()(void const*,unsigned long,webrtc::StunRequest *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288291620;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::Connection::Connection(webrtc::WeakPtr<webrtc::PortInterface>,unsigned long,webrtc::Candidate const&)::$_0,std::allocator<webrtc::Connection::Connection(webrtc::WeakPtr<webrtc::PortInterface>,unsigned long,webrtc::Candidate const&)::$_0>,void ()(void const*,unsigned long,webrtc::StunRequest *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v26 = (*(**(v4 + 32) + 272))(*(v4 + 32));
  v27 = 0;
  v28 = -1;
  v29 = -1;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v33 = -1;
  v34 = -1;
  v35 = 0;
  v36 = 0;
  v40 = 0;
  v39 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = 0;
  v37 = 2;
  v38 = 0;
  if ((*(**(v4 + 32) + 144))(*(v4 + 32), v5, v6, v4 + 97, &v26, 0) & 0x80000000) == 0 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_17;
  }

  webrtc::Connection::ToString(v4, &v25);
  v15 = *(v7 + 16);
  v16 = *(v15 + 63);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = (v15 + 40);
    v18 = 2 * v16;
    if ((2 * v16) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_5;
    }

LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v17 = *(v15 + 40);
  v16 = *(v15 + 48);
  v18 = 2 * v16;
  if ((2 * v16) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_21;
  }

LABEL_5:
  if (v18 >= 0x17)
  {
    operator new();
  }

  v24 = v18;
  if (v18)
  {
    bzero(&v23, v18);
  }

  *(&v23 + v18) = 0;
  v19 = v23;
  if (v24 >= 0)
  {
    v19 = &v23;
  }

  if (v16)
  {
    v20 = v19 + 1;
    do
    {
      v21 = *v17++;
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
  if (v24 < 0)
  {
    operator delete(v23);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_23;
    }

LABEL_17:
    v22 = __p;
    if (!__p)
    {
      return;
    }

    goto LABEL_18;
  }

  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_23:
  operator delete(v25.__r_.__value_.__l.__data_);
  v22 = __p;
  if (!__p)
  {
    return;
  }

LABEL_18:
  v31 = v22;
  operator delete(v22);
}

uint64_t std::__function::__func<webrtc::Connection::ShouldSendGoogPing(webrtc::StunMessage const*)::$_0,std::allocator<webrtc::Connection::ShouldSendGoogPing(webrtc::StunMessage const*)::$_0>,BOOL ()(int)>::operator()(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 49240)
  {
    if (v3 != 49241 && v3 != 65280)
    {
      return 1;
    }
  }

  else if (v3 != 8 && v3 != 32808)
  {
    return 1;
  }

  return result;
}

uint64_t webrtc::ConnectionContext::ConnectionContext(uint64_t a1, uint64_t *a2, int8x16_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  if (!a3->i64[0])
  {
    operator new();
  }

  *(a1 + 24) = a3->i64[0];
  v7 = a3->i64[1];
  if (!v7)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  v8 = a3[1].i64[0];
  *(a1 + 4) = 0;
  if (!v8)
  {
    {
      operator new();
    }

    v8 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
    if (!v8)
    {
      {
        operator new();
      }

      v8 = webrtc::ThreadManager::WrapCurrentThread(webrtc::ThreadManager::Instance(void)::thread_manager);
      *(a1 + 4) = 1;
    }
  }

  v9 = *a2;
  *(a1 + 56) = *a2;
  *(a1 + 48) = v8;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  *(a1 + 64) = *(a2 + 1);
  *(a1 + 80) = v10;
  v11 = a3[16].i64[0];
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  pthread_mutexattr_init(&v23);
  pthread_mutexattr_setpolicy_np(&v23, 3);
  pthread_mutex_init((a1 + 104), &v23);
  pthread_mutexattr_destroy(&v23);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 176;
  v12 = a3[8];
  a3[8].i64[0] = 0;
  a3[8].i64[1] = 0;
  *(a1 + 192) = vextq_s8(v12, v12, 8uLL);
  v13 = a3[16].i64[0];
  a3[16].i64[0] = 0;
  *(a1 + 208) = v13;
  v14 = a3[5].i64[0];
  a3[5].i64[0] = 0;
  *(a1 + 216) = v14;
  v15 = a3[9].i64[1];
  a3[9].i64[1] = 0;
  v16 = *(a1 + 24);
  if (!v15)
  {
    operator new();
  }

  *(a1 + 224) = v15;
  *(a1 + 232) = 1;
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v16)
  {
    v17 = *(a1 + 40);
    v23.__sig = *(a1 + 24);
    *v23.__opaque = v17;
    v24 = absl::internal_any_invocable::LocalManagerTrivial;
    v25 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConnectionContext::ConnectionContext(webrtc::Environment const&,webrtc::PeerConnectionFactoryDependencies *)::$_1 &&>;
    (*(*v23.__sig + 8))(v23.__sig, &v23, &v22, &v21);
    v24(1, &v23, &v23);
  }

  if (webrtc::g_clock)
  {
    LODWORD(v18) = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v18 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  LODWORD(v23.__sig) = v18 / 1000000;
  webrtc::InitRandom(&v23, 4);
  if (a3[1].i64[1] || *v6)
  {
    if (!*(a1 + 200))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 200))
  {
LABEL_29:
    operator new();
  }

  if (!*(a1 + 216))
  {
    operator new();
  }

  webrtc::Thread::SetDispatchWarningMs(*(a1 + 48), 100);
  webrtc::Thread::SetDispatchWarningMs(*(a1 + 40), 30);
  webrtc::Thread::SetDispatchWarningMs(*(a1 + 24), 10);
  if (*(a1 + 96))
  {
    v19 = *(a1 + 40);
    v23.__sig = a1;
    (*(*v19 + 96))(v19, &v23, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::ConnectionContext::ConnectionContext(webrtc::Environment const&,webrtc::PeerConnectionFactoryDependencies *)::$_2>, &v22);
  }

  return a1;
}

void webrtc::ConnectionContext::~ConnectionContext(webrtc::ConnectionContext *this)
{
  v2 = *(this + 5);
  v3 = *(this + 12);
  *(this + 12) = 0;
  v20[0] = v3;
  v21 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ConnectionContext::~ConnectionContext()::$_0>;
  v22 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ConnectionContext::~ConnectionContext()::$_0 &&>;
  (*(*v2 + 8))(v2, v20, &v19, &v18);
  v21(1, v20, v20);
  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 25);
  *(this + 25) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(this + 4) == 1)
  {
    {
      operator new();
    }

    v6 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
    if (v6 && (*(v6 + 216) & 1) == 0)
    {
      v7 = v6;
      webrtc::Thread::UnwrapCurrent(v6);
      (*(*v7 + 32))(v7);
    }
  }

  v8 = *(this + 28);
  *(this + 28) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 27);
  *(this + 27) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 26);
  *(this + 26) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 25);
  *(this + 25) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 24);
  *(this + 24) = 0;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 168, *(this + 22));
  pthread_mutex_destroy((this + 104));
  v13 = *(this + 12);
  *(this + 12) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 7);
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 4);
  *(this + 4) = 0;
  if (v15)
  {
    (*(*v15 + 32))(v15);
  }

  v16 = *(this + 2);
  *(this + 2) = 0;
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  v17 = *(this + 1);
  *(this + 1) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::ConnectionContext::~ConnectionContext()::$_0>(char a1, uint64_t *a2, uint64_t *a3)
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

__int128 *webrtc::ConnectionInfo::ConnectionInfo(webrtc::ConnectionInfo *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 17) = 0;
  *(this + 120) = 0u;
  {
    *(this + 144) = 1;
    *(this + 81) = 0;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 82) = &unk_28828CE50;
    *(this + 696) = 0;
    *(this + 166) = 0;
    *(this + 668) = 0u;
    *(this + 344) = 0;
    *(this + 173) = 0;
    *(this + 176) = 0;
    *(this + 712) = 0u;
    *(this + 728) = 0u;
    *(this + 744) = 0u;
    *(this + 190) = 0;
    *(this + 48) = 0u;
    *(this + 49) = 0u;
    *(this + 200) = 0;
    *(this + 808) = 0u;
    *(this + 824) = 0u;
    *(this + 840) = 0u;
    *(this + 107) = &unk_28828CE50;
    *(this + 896) = 0;
    memset(v10, 0, sizeof(v10));
    *(this + 216) = 0;
    *(this + 868) = *&v10[4];
    *(this + 444) = 0;
    *(this + 223) = 0;
    *(this + 904) = 0u;
    *(this + 920) = 0u;
    *(this + 936) = 0u;
    *(this + 238) = 0;
    *(this + 125) = 0;
    *(this + 1008) = 0;
    *(this + 127) = 0;
    *(this + 1024) = 0;
    *(this + 1028) = 0;
    *(this + 1032) = 0;
    *(this + 1040) = 0;
    *(this + 1048) = 0;
    *(this + 1056) = 0;
    *(this + 60) = 0u;
    *(this + 61) = 0u;
    *(this + 248) = 0;
    return this;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v2, v3, v4, v5, v9);
    return webrtc::CongestionControlHandler::GetUpdate(v7, v8);
  }
}

__int128 *webrtc::CongestionControlHandler::GetUpdate@<X0>(__int128 *this@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(this + 72) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 72) = 0;
    return this;
  }

  v2 = *this;
  v3 = *(this + 3);
  v27 = *(this + 2);
  v4 = *(this + 4);
  v5 = *(this + 10);
  v6 = *(this + 11);
  v7 = *(this + 6);
  v25 = *(this + 56);
  v26 = v2;
  if (*(this + 160) == 1 && *(this + 21) < 2001)
  {
    v9 = 0;
    v8 = v7;
    v10 = *(this + 152);
    if (v10 != 1)
    {
LABEL_13:
      if (*(this + 161) != v9)
      {
        v12 = this;
        v13 = a2;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::ToString(v7, &__p);
          webrtc::webrtc_logging_impl::Log("\r\t\n\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/control_handler.cc");
          if (v24 < 0)
          {
            operator delete(__p);
          }
        }

        this = v12;
        LOBYTE(v10) = *(v12 + 152);
        a2 = v13;
      }

      *(this + 161) = v9;
      v21 = v25;
      this[5] = v26;
      *(this + 12) = v27;
      *(this + 13) = v3;
      *(this + 14) = v4;
      *(this + 30) = v5;
      *(this + 31) = v6;
      *(this + 16) = v8;
      *(this + 136) = v21;
      if ((v10 & 1) == 0)
      {
        *(this + 152) = 1;
      }

      v22 = v25;
      *a2 = v26;
      *(a2 + 16) = v27;
      *(a2 + 24) = v3;
      *(a2 + 32) = v4;
      *(a2 + 40) = v5;
      *(a2 + 44) = v6;
      *(a2 + 48) = v8;
      v11 = 1;
      *(a2 + 56) = v22;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
    v10 = *(this + 152);
    if (v10 != 1)
    {
      goto LABEL_13;
    }
  }

  if (*(this + 16) != v8 || v8 && (*(this + 30) != v5 || *(this + 13) != v3))
  {
    goto LABEL_13;
  }

  v11 = 0;
  *a2 = 0;
LABEL_21:
  *(a2 + 72) = v11;
  return this;
}

void dcsctp::CookieAckChunk::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v2 + v3 + 4;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    v2 = *a2;
  }

  v5 = v2 + v3;
  *v5 = 11;
  *(v5 + 2) = 1024;
}

void dcsctp::CookieAckChunk::ToString(char *a1@<X8>)
{
  a1[23] = 10;
  if (a1 <= "COOKIE-ACK" && a1 + 10 > "COOKIE-ACK")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "COOKIE-ACK");
  }
}

void dcsctp::CookieEchoChunk::~CookieEchoChunk(dcsctp::CookieEchoChunk *this)
{
  *this = &unk_2882916E0;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882916E0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::CookieEchoChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  v15 = (v11 + v12);
  *v15 = 10;
  v15[2] = HIBYTE(v13);
  v15[3] = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::CookieEchoChunk::ToString(v21);
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

void dcsctp::CookieEchoChunk::ToString(char *a1@<X8>)
{
  a1[23] = 11;
  if (a1 <= "COOKIE-ECHO" && a1 + 11 > "COOKIE-ECHO")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "COOKIE-ECHO");
  }
}

double dcsctp::CookieReceivedWhileShuttingDownCause::SerializeTo(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3 > 0xFFFFFFFFFFFFFFFBLL)
  {
    a2[1] = v2 + v3 + 4;
    *&result = 67111424;
    *(v2 + v3) = 67111424;
  }

  else
  {
    std::vector<unsigned char>::__append(a2, 4uLL);
    *&result = 67111424;
    *(*a2 + v3) = 67111424;
  }

  return result;
}

__n128 webrtc::CopyOnWriteBuffer::CopyOnWriteBuffer(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  result = *(a2 + 1);
  *(a1 + 8) = result;
  return result;
}

void *webrtc::CopyOnWriteBuffer::CopyOnWriteBuffer(void *this, uint64_t a2, uint64_t a3)
{
  if (a3 | a2)
  {
    operator new();
  }

  *this = 0;
  this[1] = 0;
  this[2] = a2;
  return this;
}

void webrtc::CopyOnWriteBuffer::~CopyOnWriteBuffer(webrtc::CopyOnWriteBuffer *this)
{
  v1 = *this;
  if (*this && atomic_fetch_add((v1 + 24), 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40EE34DA14);
  }
}

unint64_t *webrtc::CopyOnWriteBuffer::SetSize(unint64_t *this, unint64_t a2)
{
  v2 = a2;
  v3 = this;
  if (*this)
  {
    v4 = this + 2;
    if (this[2] < a2)
    {
      if (*(*this + 8) - this[1] > a2)
      {
        a2 = *(*this + 8) - this[1];
      }

      this = webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this, a2);
      v5 = v3[1] + v2;
      if (*(*v3 + 8) < v5)
      {
        operator new[]();
      }

      **v3 = v5;
    }

    *v4 = v2;
  }

  else if (a2)
  {
    operator new();
  }

  return this;
}

unint64_t *webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(unint64_t *this, unint64_t a2)
{
  if (atomic_load_explicit((*this + 24), memory_order_acquire) != 1)
  {
    goto LABEL_5;
  }

  v2 = *this;
  if (*this)
  {
    v2 = *(v2 + 8) - this[1];
  }

  if (v2 < a2)
  {
LABEL_5:
    operator new();
  }

  return this;
}

unint64_t *webrtc::CopyOnWriteBuffer::EnsureCapacity(unint64_t *this, unint64_t a2)
{
  if (*this)
  {
    if (*(*this + 8) - this[1] < a2)
    {

      return webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this, a2);
    }
  }

  else if (a2)
  {
    operator new();
  }

  return this;
}

void *webrtc::CopyOnWriteBuffer::Clear(void *this)
{
  if (*this)
  {
    if (atomic_load_explicit((*this + 24), memory_order_acquire) != 1)
    {
      operator new();
    }

    **this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  return this;
}

void webrtc::CorruptionClassifier::GetScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != a5)
  {
LABEL_18:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/corruption_classifier.cc", 77, "filtered_original_samples.size() == filtered_compressed_samples.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, a3);
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_19:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/corruption_classifier.cc", 80, "filtered_original_samples.size() > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, 0);
    webrtc::ConvertCorruptionDetectionMessageToFrameInstrumentationData(v19, v18, v20, v21, v22, v23, v24, v25);
    return;
  }

  if (a3 >= 1)
  {
    v8 = a7;
    v9 = a6;
    v10 = a3 & 0x7FFFFFFF;
    v11 = (a4 + 8);
    v12 = (a2 + 8);
    v13 = 0.0;
    do
    {
      v14 = *v12;
      if (*v12 != *v11)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/corruption_detection/corruption_classifier.cc", 85, "filtered_original_samples[i].plane == filtered_compressed_samples[i].plane", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, *v12);
        goto LABEL_18;
      }

      v15 = vabdd_f64(*(v12 - 1), *(v11 - 1));
      if (v14 == 1)
      {
        if (v15 <= v8)
        {
          goto LABEL_6;
        }

        v17 = v15 - v8;
      }

      else
      {
        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15 <= v9;
        }

        if (v16)
        {
          goto LABEL_6;
        }

        v17 = v15 - v9;
      }

      v13 = v13 + v17 * v17;
LABEL_6:
      v11 += 2;
      v12 += 2;
      --v10;
    }

    while (v10);
  }
}

void webrtc::ConvertCorruptionDetectionMessageToFrameInstrumentationData(webrtc::_anonymous_namespace_ *this@<X1>, unsigned int *a2@<X0>, BOOL a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if ((this & 0x80000000) != 0 || *(a2 + 3) <= 1uLL)
  {
    *a8 = 0;
    *(a8 + 48) = 0;
  }

  else
  {
    v11 = *(a2 + 3);
    if (((4 * v11) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      if (((4 * v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v12 = *(a2 + 4);
    v13 = *(a2 + 1);
    v14 = *(a2 + 2);
    *a8 = v10;
    *(a8 + 4) = v12;
    *(a8 + 5) = v15;
    *(a8 + 7) = v16;
    *(a8 + 8) = v13;
    *(a8 + 16) = v14;
    *(a8 + 24) = 0;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = 1;
  }
}

void webrtc::anonymous namespace::GetFullSequenceIndex(webrtc::_anonymous_namespace_ *this, uint64_t a2, int a3, BOOL a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((this & 0x80000000) != 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/corruption_detection_converters.cc", 27, "previous_sequence_index >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, this);
    goto LABEL_7;
  }

  if (this >= 0x8000)
  {
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/corruption_detection_converters.cc", 29, "previous_sequence_index <= 0x7FFF", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, this);
    goto LABEL_8;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_8:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/corruption_detection_converters.cc", 31, "sequence_index_update >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, a2);
    goto LABEL_9;
  }

  if (a2 >= 0x80)
  {
LABEL_9:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/corruption_detection_converters.cc", 33, "sequence_index_update <= 0b0111'1111", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*> const&)::t, a5, a6, a7, a8, a2);
    webrtc::ConvertFrameInstrumentationDataToCorruptionDetectionMessage(v8, v9);
  }
}

void webrtc::ConvertFrameInstrumentationDataToCorruptionDetectionMessage(webrtc *this@<X0>, _BYTE *a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (*this >= 0x4000u || (v4 = *(this + 3), v5 = *(this + 4), v4 == v5))
  {
    *a2 = 0;
    a2[136] = 0;
    return;
  }

  v14 = 0u;
  v15 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v7 = *(this + 4);
  v8 = v3 >> 7;
  v9 = v3 & 0x7F;
  if (v7)
  {
    v9 = v8;
  }

  LODWORD(v14) = v9;
  BYTE4(v14) = v7;
  v10 = *(this + 2);
  *(&v14 + 1) = *(this + 1);
  *&v15 = v10;
  absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<double>,double const*>>(&v15 + 1, v4, (v5 - v4) >> 3);
  if (v14 < 0x80)
  {
    if (*(&v14 + 1) >= 0.0 && *(&v14 + 1) <= 40.0 && v15 < 0x10 && DWORD1(v15) < 0x10 && *(&v15 + 1) < 0x1CuLL)
    {
      v11 = __p;
      if (BYTE8(v15))
      {
        v11 = __p[0];
      }

      if (*(&v15 + 1) < 2uLL)
      {
LABEL_27:
        std::optional<webrtc::CorruptionDetectionMessage>::optional[abi:sn200100]<webrtc::CorruptionDetectionMessage&,0>(a2, &v14);
        if (BYTE8(v15))
        {
          goto LABEL_16;
        }

        return;
      }

      v12 = 8 * (*(&v15 + 1) >> 1);
      while (*v11 >= 0.0 && *v11 <= 255.0)
      {
        ++v11;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_27;
        }
      }
    }

    *a2 = 0;
    a2[136] = 0;
    if (BYTE8(v15))
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = 0;
    a2[136] = 0;
    if (BYTE8(v15))
    {
      goto LABEL_16;
    }
  }
}

void absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<double>,double const*>>(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = *a1;
  if ((*a1 & 1) == 0)
  {
    v5 = 13;
    v6 = a1 + 1;
    if (a3 <= 0xD)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = 2 * v5;
    if (v19 <= a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = v19;
    }

    if (!(v20 >> 61))
    {
      operator new();
    }

    goto LABEL_38;
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v5 < a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v4 >> 1;
  v8 = a3 - (v4 >> 1);
  if (a3 < v4 >> 1)
  {
    v8 = 0;
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v4 >> 1;
  }

  if (!v9)
  {
    v11 = a2;
    if (v7 >= a3)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v10 = 0;
  if (v9 < 4)
  {
    goto LABEL_14;
  }

  if (v6 - a2 < 0x20)
  {
    goto LABEL_14;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = (a2 + 8 * (v9 & 0x7FFFFFFFFFFFFFFCLL));
  v12 = (a2 + 16);
  v13 = v6 + 2;
  v14 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  v3 = (a2 + 8 * (v9 & 0x7FFFFFFFFFFFFFFCLL));
  if (v9 != v10)
  {
LABEL_14:
    v16 = v9 - v10;
    v17 = &v6[v10];
    v11 = v3;
    do
    {
      v18 = *v11++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  if (v7 < a3)
  {
LABEL_25:
    if (v6)
    {
      v21 = &v6[v7];
      v22 = 0;
      if (v8 < 4 || (v21 - v11) < 0x20)
      {
        v23 = v11;
      }

      else
      {
        v22 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        v23 = &v11[v8 & 0xFFFFFFFFFFFFFFFCLL];
        v24 = (v11 + 2);
        v25 = v21 + 2;
        v26 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v8 == v22)
        {
          goto LABEL_35;
        }
      }

      v28 = v8 - v22;
      v29 = &v21[v22];
      do
      {
        v30 = *v23++;
        *v29++ = v30;
        --v28;
      }

      while (v28);
LABEL_35:
      v4 = *a1;
      goto LABEL_36;
    }

    __break(1u);
LABEL_38:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_36:
  *a1 = v4 & 1 | (2 * a3);
}

uint64_t std::optional<webrtc::CorruptionDetectionMessage>::optional[abi:sn200100]<webrtc::CorruptionDetectionMessage&,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(result + 24) = 0;
  v3 = *(a2 + 3);
  if (v3 < 2)
  {
    goto LABEL_4;
  }

  if ((v3 & 1) == 0)
  {
    *(result + 24) = v3;
    v4 = a2[2];
    v5 = a2[4];
    *(result + 48) = a2[3];
    *(result + 64) = v5;
    *(result + 32) = v4;
    v6 = a2[5];
    v7 = a2[6];
    v8 = a2[7];
    *(result + 128) = *(a2 + 16);
    *(result + 96) = v7;
    *(result + 112) = v8;
    *(result + 80) = v6;
LABEL_4:
    *(result + 136) = 1;
    return result;
  }

  v9 = result;
  absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::InitFrom((result + 24), a2 + 3);
  result = v9;
  *(v9 + 136) = 1;
  return result;
}

void *absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2)
  {
    if (!(v2 >> 62))
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 8 * (v2 >> 1));
  *a1 = *a2;
  return result;
}

void absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<double>,unsigned char const*>>(unint64_t *a1, unint64_t a2, unint64_t a3, double a4, float64x2_t a5)
{
  v5 = a2;
  v6 = *a1;
  if ((*a1 & 1) == 0)
  {
    v7 = 13;
    v8 = (a1 + 1);
    if (a3 <= 0xD)
    {
      goto LABEL_3;
    }

LABEL_19:
    v40 = 2 * v7;
    if (v40 <= a3)
    {
      v41 = a3;
    }

    else
    {
      v41 = v40;
    }

    if (!(v41 >> 61))
    {
      operator new();
    }

    goto LABEL_49;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (v7 < a3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v9 = v6 >> 1;
  v10 = a3 - (v6 >> 1);
  if (a3 < v6 >> 1)
  {
    v10 = 0;
  }

  if (v9 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v6 >> 1;
  }

  if (v11)
  {
    if (v11 < 0x10 || (v8 < a2 + v11 ? (v12 = &v8->f64[v11] > a2) : (v12 = 0), v12))
    {
      v14 = 0;
    }

    else
    {
      v13 = a2;
      v14 = v11 & 0x7FFFFFFFFFFFFFF0;
      v5 = (a2 + (v11 & 0x7FFFFFFFFFFFFFF0));
      v15 = v11 & 0x7FFFFFFFFFFFFFF0;
      v16 = v8;
      do
      {
        v17 = *v13++;
        v18 = vextq_s8(v17, v17, 8uLL).u64[0];
        v19.i32[0] = v18;
        v19.i32[1] = BYTE1(v18);
        v20 = vand_s8(v19, 0xFF000000FFLL);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        a5 = vcvtq_f64_u64(v21);
        v22.i32[0] = BYTE2(v18);
        v22.i32[1] = BYTE3(v18);
        v23 = vand_s8(v22, 0xFF000000FFLL);
        v21.i64[0] = v23.u32[0];
        v21.i64[1] = v23.u32[1];
        v24.i32[0] = BYTE4(v18);
        v25 = vcvtq_f64_u64(v21);
        v24.i32[1] = BYTE5(v18);
        v26 = vand_s8(v24, 0xFF000000FFLL);
        v21.i64[0] = v26.u32[0];
        v21.i64[1] = v26.u32[1];
        v27.i32[0] = BYTE6(v18);
        v27.i32[1] = HIBYTE(v18);
        v28 = vcvtq_f64_u64(v21);
        v29 = vand_s8(v27, 0xFF000000FFLL);
        v21.i64[0] = v29.u32[0];
        v21.i64[1] = v29.u32[1];
        v30 = v21;
        v27.i32[0] = v17.u8[0];
        v27.i32[1] = v17.u8[1];
        v31 = vand_s8(v27, 0xFF000000FFLL);
        v21.i64[0] = v31.u32[0];
        v21.i64[1] = v31.u32[1];
        v32 = vcvtq_f64_u64(v21);
        v33.i32[0] = v17.u8[2];
        v33.i32[1] = v17.u8[3];
        v34 = vand_s8(v33, 0xFF000000FFLL);
        v35.i32[0] = v17.u8[4];
        v35.i32[1] = v17.u8[5];
        v36 = vand_s8(v35, 0xFF000000FFLL);
        v21.i64[0] = v36.u32[0];
        v21.i64[1] = v36.u32[1];
        v37 = vcvtq_f64_u64(v21);
        v38.i32[0] = v17.u8[6];
        v38.i32[1] = v17.u8[7];
        v39 = vand_s8(v38, 0xFF000000FFLL);
        v21.i64[0] = v39.u32[0];
        v21.i64[1] = v39.u32[1];
        v16[2] = v37;
        v16[3] = vcvtq_f64_u64(v21);
        v21.i64[0] = v34.u32[0];
        v21.i64[1] = v34.u32[1];
        *v16 = v32;
        v16[1] = vcvtq_f64_u64(v21);
        v16[6] = v28;
        v16[7] = vcvtq_f64_u64(v30);
        v16[4] = a5;
        v16[5] = v25;
        v16 += 8;
        v15 -= 16;
      }

      while (v15);
      if (v11 == v14)
      {
        goto LABEL_27;
      }
    }

    v42 = v11 - v14;
    v43 = &v8->f64[v14];
    do
    {
      v44 = v5->u8[0];
      v5 = (v5 + 1);
      *v43++ = v44;
      --v42;
    }

    while (v42);
  }

LABEL_27:
  if (v9 < a3)
  {
    if (v8)
    {
      v45 = (v8 + 8 * v9);
      if (v10 < 4 || v45 < &v5->i8[v10] && v5 < &v45->f64[v10])
      {
        v46 = 0;
        v47 = v5;
        goto LABEL_33;
      }

      if (v10 >= 0x10)
      {
        v46 = v10 & 0xFFFFFFFFFFFFFFF0;
        v51 = v10 & 0xFFFFFFFFFFFFFFF0;
        v52 = v45;
        v53 = v5;
        do
        {
          v54 = *v53++;
          v55 = vextq_s8(v54, v54, 8uLL).u64[0];
          v56.i32[0] = v55;
          v56.i32[1] = BYTE1(v55);
          v57 = vand_s8(v56, 0xFF000000FFLL);
          v58.i64[0] = v57.u32[0];
          v58.i64[1] = v57.u32[1];
          a5 = vcvtq_f64_u64(v58);
          v59.i32[0] = BYTE2(v55);
          v59.i32[1] = BYTE3(v55);
          v60 = vand_s8(v59, 0xFF000000FFLL);
          v58.i64[0] = v60.u32[0];
          v58.i64[1] = v60.u32[1];
          v61.i32[0] = BYTE4(v55);
          v62 = vcvtq_f64_u64(v58);
          v61.i32[1] = BYTE5(v55);
          v63 = vand_s8(v61, 0xFF000000FFLL);
          v58.i64[0] = v63.u32[0];
          v58.i64[1] = v63.u32[1];
          v64.i32[0] = BYTE6(v55);
          v64.i32[1] = HIBYTE(v55);
          v65 = vcvtq_f64_u64(v58);
          v66 = vand_s8(v64, 0xFF000000FFLL);
          v58.i64[0] = v66.u32[0];
          v58.i64[1] = v66.u32[1];
          v67 = v58;
          v64.i32[0] = v54.u8[0];
          v64.i32[1] = v54.u8[1];
          v68 = vand_s8(v64, 0xFF000000FFLL);
          v58.i64[0] = v68.u32[0];
          v58.i64[1] = v68.u32[1];
          v69 = vcvtq_f64_u64(v58);
          v70.i32[0] = v54.u8[2];
          v70.i32[1] = v54.u8[3];
          v71 = vand_s8(v70, 0xFF000000FFLL);
          v72.i32[0] = v54.u8[4];
          v72.i32[1] = v54.u8[5];
          v73 = vand_s8(v72, 0xFF000000FFLL);
          v58.i64[0] = v73.u32[0];
          v58.i64[1] = v73.u32[1];
          v74 = vcvtq_f64_u64(v58);
          v75.i32[0] = v54.u8[6];
          v75.i32[1] = v54.u8[7];
          v76 = vand_s8(v75, 0xFF000000FFLL);
          v58.i64[0] = v76.u32[0];
          v58.i64[1] = v76.u32[1];
          v52[2] = v74;
          v52[3] = vcvtq_f64_u64(v58);
          v58.i64[0] = v71.u32[0];
          v58.i64[1] = v71.u32[1];
          *v52 = v69;
          v52[1] = vcvtq_f64_u64(v58);
          v52[6] = v65;
          v52[7] = vcvtq_f64_u64(v67);
          v52[4] = a5;
          v52[5] = v62;
          v52 += 8;
          v51 -= 16;
        }

        while (v51);
        if (v10 == v46)
        {
          goto LABEL_35;
        }

        if ((v10 & 0xC) == 0)
        {
          v47 = &v5->u8[v46];
LABEL_33:
          v48 = v10 - v46;
          v49 = &v45->f64[v46];
          do
          {
            v50 = *v47++;
            *v49++ = v50;
            --v48;
          }

          while (v48);
LABEL_35:
          v6 = *a1;
          goto LABEL_36;
        }
      }

      else
      {
        v46 = 0;
      }

      v77 = v46;
      v46 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v47 = &v5->u8[v10 & 0xFFFFFFFFFFFFFFFCLL];
      v78 = (v5->u32 + v77);
      v79 = (v45 + 8 * v77);
      v80 = v77 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v81 = *v78++;
        LODWORD(a5.f64[0]) = v81;
        v82 = vmovl_u16(*&vmovl_u8(*&a5.f64[0]));
        v83 = vand_s8(*&vextq_s8(v82, v82, 8uLL), 0xFF000000FFLL);
        v84.i64[0] = v83.u32[0];
        v84.i64[1] = v83.u32[1];
        v85 = vcvtq_f64_u64(v84);
        *v82.i8 = vand_s8(*v82.i8, 0xFF000000FFLL);
        v84.i64[0] = v82.u32[0];
        v84.i64[1] = v82.u32[1];
        a5 = vcvtq_f64_u64(v84);
        *v79 = a5;
        v79[1] = v85;
        v79 += 2;
        v80 += 4;
      }

      while (v80);
      if (v10 == v46)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_49:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_36:
  *a1 = v6 & 1 | (2 * a3);
}

uint64_t webrtc::CorruptionDetectionSettingsGenerator::OnFrame(webrtc::CorruptionDetectionSettingsGenerator *this, char a2, int a3)
{
  v6 = *(this + 6);
  if (v6 != 1)
  {
    if (v6)
    {
      v23 = std::__throw_bad_variant_access[abi:sn200100]();
      return webrtc::cpu_info::DetectNumberOfCores(v23);
    }

    v7 = *(this + 2) + *this * a3 / (*(this + 1) + a3);
    if (a2)
    {
      goto LABEL_12;
    }

LABEL_6:
    v9 = *(this + 15);
    if (v9 < 1)
    {
      goto LABEL_13;
    }

    v10 = a3;
    if (*(this + 80) == 1)
    {
      v10 = *(this + 19);
    }

    v11 = v10 - a3;
    if (v11 < 0)
    {
      v11 = -v11;
    }

    if (v11 < v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = *this;
  v7 = v8 * exp(-(*(this + 2) - *(this + 1) * a3));
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_12:
  *(this + 18) = 0;
LABEL_13:
  *(this + 19) = a3;
  *(this + 80) = 1;
  v12 = *(this + 18);
  v13 = *(this + 14);
  if (v12 <= v13)
  {
    v14 = v12 / v13;
    if (!v13)
    {
      v14 = 1.0;
    }

    v15 = v7 + *(this + 6);
    if (v15 > 40.0)
    {
      v15 = 40.0;
    }

    v16 = (this + 44);
    v7 = v7 * v14 + (1.0 - v14) * v15;
    vld1_dup_f32(v16);
    __asm { FMOV            V1.2D, #0.5 }
  }

  *(this + 18) = v12 + 1;
  if (v7 < *(this + 8))
  {
    v7 = *(this + 8);
  }

  if (v7 > 40.0)
  {
    v7 = 40.0;
  }

  return *&v7;
}

uint64_t webrtc::cpu_info::DetectNumberOfCores(webrtc::cpu_info *this)
{
  {
    return webrtc::cpu_info::DetectNumberOfCores(void)::logical_cpus;
  }

  v3 = &unk_280905000;
  if (v2)
  {
    v3 = &unk_280905000;
  }

  return v3[520];
}

uint64_t anonymous namespace::DetectNumberOfCores(_anonymous_namespace_ *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  *v18 = 0x1900000006;
  v16 = 4;
  if (sysctl(v18, 2u, &v17, &v16, 0, 0))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v1, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/cpu_info.cc");
    }

    v17 = 1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/cpu_info.cc");
  }

  result = v17;
  if (v17 <= 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/cpu_info.cc", 59, "number_of_cores > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v11, v12, v13, v14, v17);
  }

  return result;
}

int32x4_t webrtc::LoadCrc32Table(webrtc *this)
{
  v1 = 0;
  result = xmmword_273B90830;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  v4 = vdupq_n_s32(0xEDB88320);
  v5.i64[0] = 0x400000004;
  v5.i64[1] = 0x400000004;
  do
  {
    v6 = vshrq_n_u32(result, 1uLL);
    v7 = vbslq_s8(vceqzq_s32(vandq_s8(result, v3)), v6, veorq_s8(v6, v4));
    v8 = vceqzq_s32(vandq_s8(v7, v3));
    v9 = vshrq_n_u32(v7, 1uLL);
    v10 = vbslq_s8(v8, v9, veorq_s8(v9, v4));
    v11 = vceqzq_s32(vandq_s8(v10, v3));
    v12 = vshrq_n_u32(v10, 1uLL);
    v13 = vbslq_s8(v11, v12, veorq_s8(v12, v4));
    v14 = vceqzq_s32(vandq_s8(v13, v3));
    v15 = vshrq_n_u32(v13, 1uLL);
    v16 = vbslq_s8(v14, v15, veorq_s8(v15, v4));
    v17 = vceqzq_s32(vandq_s8(v16, v3));
    v18 = vshrq_n_u32(v16, 1uLL);
    v19 = vbslq_s8(v17, v18, veorq_s8(v18, v4));
    v20 = vceqzq_s32(vandq_s8(v19, v3));
    v21 = vshrq_n_u32(v19, 1uLL);
    v22 = vbslq_s8(v20, v21, veorq_s8(v21, v4));
    v23 = vandq_s8(v22, v3);
    v24 = vshrq_n_u32(v22, 1uLL);
    v25 = vbslq_s8(vceqzq_s32(v23), v24, veorq_s8(v24, v4));
    v26 = vceqzq_s32(vandq_s8(v25, v3));
    v27 = vshrq_n_u32(v25, 1uLL);
    webrtc::LoadCrc32Table(void)::kCrc32Table[v1] = vbslq_s8(v26, v27, veorq_s8(v27, v4));
    result = vaddq_s32(result, v5);
    ++v1;
  }

  while (v1 != 64);
  return result;
}

uint64_t crc32c::ExtendPortable(crc32c *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = &a3[a2];
  v4 = ~this;
  v5 = ((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (&a3[a2] < v5 || v5 == a2)
  {
    v5 = a2;
  }

  else
  {
    v7 = a2;
    do
    {
      v8 = *v7++;
    }

    while (v7 != v5);
  }

  if (v3 - v5 < 16)
  {
    goto LABEL_22;
  }

  v9 = *(v5 + 1);
  v10 = *v5 ^ v4;
  v11 = *(v5 + 2);
  v12 = *(v5 + 3);
  v5 += 16;
  v13 = v3 - v5;
  if (v3 - v5 >= 257)
  {
    do
    {
      v5 += 64;
      v13 -= 64;
    }

    while (v13 > 256);
  }

  if (v13 >= 16)
  {
    v13 = &a2[a3] - v5;
    do
    {
      v5 += 16;
      v13 -= 16;
    }

    while (v13 > 15);
  }

  if (v13 < 4)
  {
    v27 = v10;
  }

  else
  {
    v26 = &a2[a3] - v5;
    do
    {
      v27 = v9;
      v9 = v11;
      v11 = v12;
      v28 = *v5;
      v5 += 4;
      v26 -= 4;
      v10 = v27;
    }

    while (v26 > 3);
  }

  for (i = v4; ; i = v4 ^ v41)
  {
LABEL_22:
    if (v5 == v3)
    {
      break;
    }

    v41 = *v5++;
  }

  return ~v4;
}

void webrtc::CreatePeerConnectionFactory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  if (!*a12)
  {
    operator new();
  }

  if (*a13)
  {
    *a13 = 0;
    operator new();
  }

  operator new();
}

uint64_t webrtc::CreateScalabilityStructure@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0x22)
  {
    return (*(*(&off_279E93B48 + result) + 1))();
  }

  *a2 = 0;
  return result;
}

void webrtc::CreateVideoRtpDepacketizer(webrtc::webrtc_checks_impl *a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        operator new();
      case 5:
        operator new();
      case 4:
        operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        operator new();
      case 1:
        operator new();
      case 2:
        operator new();
    }
  }

  webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
}

void WebRtcSpl_CrossCorrelationC(unsigned int *a1, int16x8_t *a2, int16x8_t *a3, unint64_t a4, uint64_t a5, char a6, int a7)
{
  if (a5)
  {
    if (a4)
    {
      v7 = 0;
      v8 = a3 + 1;
      v9 = 2 * a7;
      v10 = vnegq_s32(vdupq_n_s32(a6));
      while (1)
      {
        if (a4 >= 4)
        {
          if (a4 < 0x10)
          {
            v11 = 0;
            v13 = 0;
LABEL_13:
            v23 = v11;
            v24 = 2 * v13;
            v25 = v13 - (a4 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              v23 = vaddq_s32(vshlq_s32(vmull_s16(*&a3->i8[v24], *&a2->i8[v24]), v10), v23);
              v24 += 8;
              v25 += 4;
            }

            while (v25);
            v11 = vaddvq_s32(v23);
            v12 = a4 & 0xFFFFFFFFFFFFFFFCLL;
            if ((a4 & 0xFFFFFFFFFFFFFFFCLL) == a4)
            {
              goto LABEL_4;
            }

            goto LABEL_16;
          }

          v14 = 0uLL;
          v15 = a4 & 0xFFFFFFFFFFFFFFF0;
          v16 = v8;
          v17 = a2 + 1;
          v18 = 0uLL;
          v19 = 0uLL;
          v20 = 0uLL;
          do
          {
            v21 = v17[-1];
            v22 = v16[-1];
            v18 = vaddq_s32(vshlq_s32(vmull_high_s16(v22, v21), v10), v18);
            v14 = vaddq_s32(vshlq_s32(vmull_s16(*v22.i8, *v21.i8), v10), v14);
            v20 = vaddq_s32(vshlq_s32(vmull_high_s16(*v16, *v17), v10), v20);
            v19 = vaddq_s32(vshlq_s32(vmull_s16(*v16->i8, *v17->i8), v10), v19);
            v17 += 2;
            v16 += 2;
            v15 -= 16;
          }

          while (v15);
          v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v19, v14), vaddq_s32(v20, v18)));
          if ((a4 & 0xFFFFFFFFFFFFFFF0) == a4)
          {
            goto LABEL_4;
          }

          v13 = a4 & 0xFFFFFFFFFFFFFFF0;
          v12 = a4 & 0xFFFFFFFFFFFFFFF0;
          if ((a4 & 0xC) != 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        do
        {
LABEL_16:
          v11 += (a3->i16[v12] * a2->i16[v12]) >> a6;
          ++v12;
        }

        while (a4 != v12);
LABEL_4:
        *a1++ = v11;
        ++v7;
        v8 = (v8 + v9);
        a3 = (a3 + v9);
        if (v7 == a5)
        {
          return;
        }
      }
    }

    bzero(a1, 4 * a5);
  }
}

void webrtc::CryptoOptions::CryptoOptions(webrtc::CryptoOptions *this)
{
  *this = 16842753;
  *(this + 4) = 0;
  operator new();
}

BOOL webrtc::CryptoOptions::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (v3 = a1 + 8, v2 = *(a1 + 1), v4 = *(v3 + 1) - v2, v6 = a2 + 8, v5 = *(a2 + 1), v4 == *(v6 + 1) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void *std::vector<unsigned short>::push_back[abi:sn200100](void *result, _WORD *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = (v3 - *result) >> 1;
    if (v4 <= -2)
    {
      goto LABEL_14;
    }

    v5 = v2 - *result;
    if (v5 <= v4 + 1)
    {
      v6 = v4 + 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = v5 >= 0x7FFFFFFFFFFFFFFELL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v7)
    {
      v8 = v6;
    }

    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_13:
    __break(1u);
LABEL_14:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

uint64_t webrtc::InitRandom(webrtc *this, const char *a2)
{
  v3 = this;
  {
    v15 = a2;
    v3 = this;
    a2 = v15;
    if (v13)
    {
      operator new();
    }
  }

  if ((v4 & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc");
  }

  return v4;
}

uint64_t webrtc::CreateRandomString@<X0>(webrtc *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((result & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v3, v4, v5, v6, vars0);
    return webrtc::CreateRandomString(v7, v8, v9, v10);
  }

  return result;
}

uint64_t webrtc::CreateRandomString(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    *a4 = 0;
    *(a4 + 23) = 0;
    if (256 % a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new[]();
  }

  **a4 = 0;
  *(a4 + 8) = 0;
  if (!(256 % a3))
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc");
  }

  return 0;
}

void webrtc::CreateRandomUuid(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new[]();
}

pthread_mutex_t *webrtc::CreateRandomId(webrtc *this)
{
  v8 = 0;
  {
    operator new();
  }

  {
    return v8;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 207, "Rng().Generate(&id, sizeof(id))", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v1, v2, v3, v4, v7);
  return webrtc::Mutex::Mutex(v6);
}

pthread_mutex_t *webrtc::Mutex::Mutex(pthread_mutex_t *this)
{
  v4 = *MEMORY[0x277D85DE8];
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_setpolicy_np(&v3, 3);
  pthread_mutex_init(this, &v3);
  pthread_mutexattr_destroy(&v3);
  return this;
}

void webrtc::DataChannelController::~DataChannelController(webrtc::DataChannelController *this)
{
  *this = &unk_288291FF0;
  *(this + 1) = &unk_288292078;
  v2 = *(this + 14);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *(this + 13) = 0;
  v3 = *(this + 12);
  if (v3)
  {
    *v3 = 0;
    if (atomic_fetch_add((v3 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 12) = 0;
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    v6 = *(this + 7);
    v7 = *(this + 6);
    if (v6 != v5)
    {
      do
      {
        v9 = *(v6 - 8);
        v6 -= 8;
        v8 = v9;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v6 != v5);
      v7 = *(this + 6);
    }

    *(this + 7) = v5;
    operator delete(v7);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }
}

{
  webrtc::DataChannelController::~DataChannelController(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::DataChannelController::~DataChannelController(webrtc::DataChannelController *this)
{
  webrtc::DataChannelController::~DataChannelController((this - 8));
}

{
  webrtc::DataChannelController::~DataChannelController((this - 8));

  JUMPOUT(0x2743DA540);
}

void webrtc::DataChannelController::SendData(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    (*(*v7 + 24))(a5);
    if (*(a1 + 80))
    {
      v11 = *a5 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      webrtc::DataChannelController::BuildObserverMessage(a1, a2, *a3, *(a4 + 16), 0, v19);
      if (v24 == 1)
      {
        (*(**(a1 + 80) + 16))(*(a1 + 80), v19);
        if (v24)
        {
          if (__p)
          {
            v23 = __p;
            operator delete(__p);
          }

          if (v21 < 0)
          {
            operator delete(v20);
          }
        }
      }
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/data_channel_controller.cc");
    }

    *a5 = 6;
    *(a5 + 38) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 8) = 0;
    *(a5 + 29) = 0;
  }
}

void webrtc::DataChannelController::BuildObserverMessage(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X4>, unsigned int a5@<W5>, uint64_t a6@<X8>)
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 48);
  if (v11 != v10)
  {
    while ((*(*v11 + 24) & 0x10000) == 0 || *(*v11 + 24) != a2)
    {
      v11 += 8;
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }
  }

  if (v11 == v10)
  {
LABEL_10:
    *a6 = 0;
    *(a6 + 72) = 0;
  }

  else
  {
    memset(v26, 0, 15);
    v12 = a3 == 1;
    if (webrtc::g_clock)
    {
      v13 = (*(*webrtc::g_clock + 16))(webrtc::g_clock) / 1000;
    }

    else
    {
      gettimeofday(__len_1, 0);
      v13 = *&__len_1[8] + 1000000 * *__len_1;
    }

    (*(**v11 + 48))(&__src);
    v14 = __len;
    if ((__len & 0x8000000000000000) != 0)
    {
      v14 = v22;
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      p_src = __src;
    }

    else
    {
      p_src = &__src;
    }

    v20 = v13;
    if (v14 > 0x16)
    {
      operator new();
    }

    v25 = v14;
    v16 = &__len_1[v14];
    if (__len_1 <= p_src && v16 > p_src)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v14)
    {
      memmove(__len_1, p_src, v14);
    }

    *v16 = 0;
    v17 = *__len_1;
    v26[0] = *&__len_1[8];
    *(v26 + 7) = *&__len_1[15];
    v18 = v25;
    if (__len < 0)
    {
      operator delete(__src);
      if (a4)
      {
LABEL_25:
        if ((a4 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_30:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (a4)
    {
      goto LABEL_25;
    }

    *a6 = v20 / 1000;
    *(a6 + 8) = a2;
    v19 = v26[0];
    *(a6 + 16) = v17;
    *(a6 + 24) = v19;
    *(a6 + 31) = *(v26 + 7);
    *(a6 + 39) = v18;
    *(a6 + 40) = (v12 << 32) | a5;
    *(a6 + 48) = 0;
    *(a6 + 56) = a4;
    *(a6 + 64) = 0;
    *(a6 + 72) = 1;
  }
}

void webrtc::DataChannelController::AddSctpDataStream(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    (*(*v1 + 16))(v2);
    if (v3 < 0)
    {
      operator delete(v2[1]);
    }
  }
}

void webrtc::DataChannelController::RemoveSctpDataStream(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    (*(*v1 + 32))(v2);
    if (v3 < 0)
    {
      operator delete(v2[1]);
    }
  }
}

void *webrtc::DataChannelController::OnChannelStateChanged(void *result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *(a2 + 28);
  if (a3 != 3)
  {
    v18 = result[7];
    goto LABEL_34;
  }

  if ((*(a2 + 24) & 0x10000) == 0)
  {
LABEL_17:
    v18 = v4[6];
    v17 = v4[7];
    if (v18 != v17)
    {
      while (*v18 != a2)
      {
        if (++v18 == v17)
        {
          goto LABEL_28;
        }
      }
    }

    if (v18 == v17)
    {
LABEL_28:
      v18 = v4[7];
    }

    else
    {
      v19 = v18 + 1;
      if (v18 + 1 != v17)
      {
        do
        {
          v20 = *(v19 - 1);
          *(v19 - 1) = *v19;
          *v19 = 0;
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

          ++v19;
        }

        while (v19 != v17);
        v17 = v4[7];
        v18 = v19 - 1;
      }

      while (v17 != v18)
      {
        v22 = *--v17;
        v21 = v22;
        if (v22)
        {
          (*(*v21 + 8))(v21);
        }
      }

      v4[7] = v18;
    }

LABEL_34:
    v23 = v4[6];
    (*(*v4[11] + 520))(v4[11]);
    v24 = v4[14];
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 1u, memory_order_relaxed);
    }

    if (v23 == v18)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = operator new(0x18uLL);
    *v26 = v4;
    v26[2] = v5;
    v26[3] = a3;
    *(v26 + 16) = v25;
    operator new();
  }

  v6 = *(a2 + 24);
  v8 = result[3];
  v7 = result[4];
  if (v7 == v8)
  {
    v8 = result[4];
    v14 = v8;
  }

  else
  {
    v9 = v7 - v8;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if (v13 < v6)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    v14 = v8;
    if (v7 != v8)
    {
      v14 = v8 + 1;
      if (*v8 > v6)
      {
        v14 = v8;
      }
    }
  }

  if (v14 >= v8)
  {
    if (v14 != v8)
    {
      v15 = v7 - v14;
      if (v7 != v14)
      {
        v16 = a2;
        memmove(v8, v14, v7 - v14);
        a2 = v16;
      }

      v4[4] = v8 + v15;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::DataChannelController::buffered_amount(uint64_t a1, unsigned __int16 a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 56))(result, a2);
  }

  return result;
}

uint64_t webrtc::DataChannelController::buffered_amount_low_threshold(uint64_t a1, unsigned __int16 a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 64))(result, a2);
  }

  return result;
}

uint64_t webrtc::DataChannelController::SetBufferedAmountLowThreshold(uint64_t a1, unsigned __int16 a2)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 72))(result, a2);
  }

  return result;
}

void webrtc::DataChannelController::OnDataReceived(uint64_t a1, int a2, unsigned int a3, uint64_t *a4)
{
  if ((webrtc::DataChannelController::HandleOpenMessage_n(a1, a2, a3, a4) & 1) == 0)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v9 != v8)
    {
      while ((*(*v9 + 24) & 0x10000) == 0 || *(*v9 + 24) != a2)
      {
        if (++v9 == v8)
        {
          return;
        }
      }
    }

    if (v9 != v8)
    {
      webrtc::SctpDataChannel::OnDataReceived(*v9, a3, a4);
      if (*(a1 + 80))
      {
        webrtc::DataChannelController::BuildObserverMessage(a1, a2, a3, a4[2], 1u, v10);
        if (v15 == 1)
        {
          (*(**(a1 + 80) + 16))(*(a1 + 80), v10);
          if (v15)
          {
            if (__p)
            {
              v14 = __p;
              operator delete(__p);
            }

            if (v12 < 0)
            {
              operator delete(v11);
            }
          }
        }
      }
    }
  }
}

uint64_t webrtc::DataChannelController::HandleOpenMessage_n(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v4 = 0;
  if (a3 != 2 || !a4[2])
  {
    return v4;
  }

  if (*(*(*a4 + 16) + a4[1]) != 3)
  {
    return 0;
  }

  memset(&v43, 0, sizeof(v43));
  v28[0] = 256;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v36 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = a2;
  if ((webrtc::ParseDataChannelOpenMessage(a4, &v43, v28) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/data_channel_controller.cc");
    }

LABEL_20:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v33);
      if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 1;
      }
    }

    else if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

    operator delete(v43.__r_.__value_.__l.__data_);
    return 1;
  }

  v40 = 1;
  webrtc::DataChannelController::CreateDataChannel(&v23, a1, &v43, v28);
  v6 = v23;
  if (v23)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)11,std::string_view const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/data_channel_controller.cc");
    }

    if ((v27 & 1) != 0 && v26)
    {
      (*(*v26 + 8))(v26);
    }

    if (v25 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_20;
  }

  result = (*(**(a1 + 88) + 520))(*(a1 + 88));
  v22 = *(a1 + 112);
  if (v22)
  {
    atomic_fetch_add_explicit(v22, 1u, memory_order_relaxed);
  }

  if (v27)
  {
    (*(**(a1 + 16) + 48))(*(a1 + 16));
    operator new();
  }

  __break(1u);
  return result;
}

void *webrtc::DataChannelController::OnChannelClosing(void *this, int a2)
{
  v2 = this[7];
  v3 = this[6];
  if (v3 != v2)
  {
    while ((*(*v3 + 24) & 0x10000) == 0 || *(*v3 + 24) != a2)
    {
      if (++v3 == v2)
      {
        return this;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *v3;
    if ((*(*v3 + 128) & 0xFFFFFFFE) != 2)
    {
      *(v4 + 228) = 1;
      *(v4 + 128) = 2;
      this = *(v4 + 112);
      if (this)
      {
        this = (**this)(this);
      }

      v5 = *(v4 + 208);
      if (v5)
      {
        if (*v5 == 1)
        {
          this = *(v4 + 216);
          if (this)
          {
            v6 = *(*this + 24);

            return v6();
          }
        }
      }
    }
  }

  return this;
}

void *non-virtual thunk towebrtc::DataChannelController::OnChannelClosing(void *this, int a2)
{
  v2 = this[6];
  v3 = this[5];
  if (v3 != v2)
  {
    while ((*(*v3 + 24) & 0x10000) == 0 || *(*v3 + 24) != a2)
    {
      if (++v3 == v2)
      {
        return this;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *v3;
    if ((*(*v3 + 128) & 0xFFFFFFFE) != 2)
    {
      *(v4 + 228) = 1;
      *(v4 + 128) = 2;
      this = *(v4 + 112);
      if (this)
      {
        this = (**this)(this);
      }

      v5 = *(v4 + 208);
      if (v5)
      {
        if (*v5 == 1)
        {
          this = *(v4 + 216);
          if (this)
          {
            v6 = *(*this + 24);

            return v6();
          }
        }
      }
    }
  }

  return this;
}

void *webrtc::DataChannelController::OnChannelClosed(void *this, unsigned __int16 a2)
{
  v2 = this;
  v3 = a2;
  v5 = this[3];
  v4 = this[4];
  if (v4 == v5)
  {
    v5 = this[4];
    v11 = v5;
  }

  else
  {
    v6 = v4 - v5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[v6 >> 1];
      v10 = *v8;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = v5;
    if (v4 != v5)
    {
      v11 = v5 + 1;
      if (*v5 > a2)
      {
        v11 = v5;
      }
    }
  }

  v12 = v11 >= v5;
  v13 = v11 - v5;
  if (v12)
  {
    if (v13)
    {
      v16 = v4 - (v5 + v13);
      if (v4 != (v5 + v13))
      {
        this = memmove(v5, v5 + v13, v4 - (v5 + v13));
      }

      v2[4] = v5 + v16;
      v15 = v2[6];
      v14 = v2[7];
      if (v15 != v14)
      {
LABEL_20:
        while ((*(*v15 + 24) & 0x10000) == 0 || v3 != *(*v15 + 24))
        {
          if (++v15 == v14)
          {
            return this;
          }
        }
      }
    }

    else
    {
      v15 = this[6];
      v14 = this[7];
      if (v15 != v14)
      {
        goto LABEL_20;
      }
    }

    if (v15 != v14)
    {
      v17 = *v15;
      *v15 = 0;
      v18 = v15 + 1;
      if (v15 + 1 != v14)
      {
        do
        {
          v19 = *(v18 - 1);
          *(v18 - 1) = *v18;
          *v18 = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          ++v18;
        }

        while (v18 != v14);
        v14 = v2[7];
        v15 = v18 - 1;
      }

      while (v14 != v15)
      {
        v21 = *--v14;
        v20 = v21;
        if (v21)
        {
          (*(*v20 + 8))(v20);
        }
      }

      v2[7] = v15;
      if (*(v17 + 128) != 3)
      {
        *(v17 + 128) = 3;
        v22 = *(v17 + 112);
        if (v22)
        {
          (**v22)(v22);
        }

        v23 = *(v17 + 208);
        if (v23)
        {
          if (*v23 == 1)
          {
            v24 = *(v17 + 216);
            if (v24)
            {
              (*(*v24 + 24))(v24, v17, *(v17 + 128));
            }
          }
        }
      }

      v25 = *(*v17 + 8);

      return v25(v17);
    }
  }

  else
  {
    __break(1u);
  }

  return this;
}

uint64_t webrtc::DataChannelController::OnReadyToSend(webrtc::DataChannelController *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  result = v2 - v1;
  if (v2 != v1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::DataChannelController::OnTransportClosed(void *a1, int *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  if (v2 == v3)
  {
    if (v2)
    {
      goto LABEL_34;
    }

    return;
  }

  v6 = v2;
  do
  {
    v7 = *v6;
    v8 = *a2;
    v22 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(a2 + 1), *(a2 + 2));
      v8 = v22;
    }

    else
    {
      v23 = *(a2 + 2);
    }

    v24[0] = a2[8];
    *(v24 + 3) = *(a2 + 35);
    v25 = v8;
    __p = v23;
    memset(&v23, 0, sizeof(v23));
    v27[0] = a2[8];
    *(v27 + 3) = *(a2 + 35);
    webrtc::SctpDataChannel::CloseAbruptlyWithError(v7, &v25);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_13:
        operator delete(v23.__r_.__value_.__l.__data_);
        v9 = *(*v6 + 24);
        if ((v9 & 0x10000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }

    else if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_13;
    }

    v9 = *(*v6 + 24);
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    v10 = v9;
    v12 = a1[3];
    v11 = a1[4];
    if (v11 == v12)
    {
      v12 = a1[4];
      v18 = v12;
    }

    else
    {
      v13 = v11 - v12;
      do
      {
        v14 = v13 >> 1;
        v15 = &v12[v13 >> 1];
        v17 = *v15;
        v16 = v15 + 1;
        v13 += ~(v13 >> 1);
        if (v17 < v10)
        {
          v12 = v16;
        }

        else
        {
          v13 = v14;
        }
      }

      while (v13);
      v18 = v12;
      if (v11 != v12)
      {
        v18 = v12 + 1;
        if (*v12 > v10)
        {
          v18 = v12;
        }
      }
    }

    if (v18 < v12)
    {
      __break(1u);
      return;
    }

    if (v18 != v12)
    {
      v19 = v11 - v18;
      if (v11 != v18)
      {
        memmove(v12, v18, v11 - v18);
      }

      a1[4] = v12 + v19;
    }

LABEL_4:
    ++v6;
  }

  while (v6 != v3);
  if (!v2)
  {
    return;
  }

  do
  {
    v21 = *--v3;
    v20 = v21;
    if (v21)
    {
      (*(*v20 + 8))(v20);
    }
  }

  while (v3 != v2);
LABEL_34:
  operator delete(v2);
}

void *webrtc::DataChannelController::OnBufferedAmountLow(void *this, int a2)
{
  v2 = this[7];
  v3 = this[6];
  if (v3 != v2)
  {
    while ((*(*v3 + 24) & 0x10000) == 0 || *(*v3 + 24) != a2)
    {
      if (++v3 == v2)
      {
        return this;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *v3;
    this = webrtc::SctpDataChannel::MaybeSendOnBufferedAmountChanged(*v3);
    if (*(v4 + 128) == 2 && (*(v4 + 228) & 1) == 0 && *(v4 + 26) == 1)
    {
      this = (*(*v4 + 168))(v4);
      if (!this)
      {
        *(v4 + 228) = 1;
        v5 = *(v4 + 208);
        if (v5 && *v5 == 1)
        {
          this = *(v4 + 216);
        }

        else
        {
          this = 0;
        }

        if (*(v4 + 26))
        {
          v6 = *(*this + 16);

          return v6();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return this;
}

void *non-virtual thunk towebrtc::DataChannelController::OnBufferedAmountLow(void *this, int a2)
{
  v2 = this[6];
  v3 = this[5];
  if (v3 != v2)
  {
    while ((*(*v3 + 24) & 0x10000) == 0 || *(*v3 + 24) != a2)
    {
      if (++v3 == v2)
      {
        return this;
      }
    }
  }

  if (v3 != v2)
  {
    v4 = *v3;
    this = webrtc::SctpDataChannel::MaybeSendOnBufferedAmountChanged(*v3);
    if (*(v4 + 128) == 2 && (*(v4 + 228) & 1) == 0 && *(v4 + 26) == 1)
    {
      this = (*(*v4 + 168))(v4);
      if (!this)
      {
        *(v4 + 228) = 1;
        v5 = *(v4 + 208);
        if (v5 && *v5 == 1)
        {
          this = *(v4 + 216);
        }

        else
        {
          this = 0;
        }

        if (*(v4 + 26))
        {
          v6 = *(*this + 16);

          return v6();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return this;
}

uint64_t webrtc::DataChannelController::set_data_channel_transport(void *a1, uint64_t a2)
{
  result = a1[2];
  if (result)
  {
    result = (*(*result + 40))(result, 0);
  }

  a1[2] = a2;
  if (a2)
  {
    v5 = a1[6];
    v6 = a1[7];
    if (v5 != v6)
    {
      do
      {
        v7 = *v5;
        v8 = *(*v5 + 24);
        if ((v8 & 0x10000) != 0)
        {
          v9 = (*(*v7 + 112))(v7);
          (*(*a1 + 8))(a1, v8, v9);
          v7 = *v5;
        }

        *(v7[36] + 4) = 1;
        v5 += 8;
      }

      while (v5 != v6);
      a2 = a1[2];
    }

    v10 = *(*a2 + 40);

    return v10(a2, a1 + 1);
  }

  return result;
}

uint64_t webrtc::DataChannelController::TeardownDataChannelTransport_n(void *a1, int *a2)
{
  v6 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __p = *(a2 + 2);
  }

  v8[0] = a2[8];
  *(v8 + 3) = *(a2 + 35);
  (*(*a1 + 104))(a1, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = a1[2];
  if (v4)
  {
    (*(*v4 + 40))(v4, 0);
  }

  a1[2] = 0;
  result = a1[12];
  if (result)
  {
    *result = 0;
    if (atomic_fetch_add((result + 4), 0xFFFFFFFF) == 1)
    {
      result = MEMORY[0x2743DA540]();
    }

    a1[12] = 0;
  }

  return result;
}

void webrtc::DataChannelController::GetDataChannelStats(webrtc::DataChannelController *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<webrtc::DataChannelStats>::reserve(a2, (*(this + 7) - *(this + 6)) >> 3);
  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      LODWORD(v11) = *(*v4 + 28);
      HIDWORD(v11) = (*(**v4 + 104))(*v4);
      (*(*v6 + 48))(&__p, v6);
      (*(*v6 + 88))(&v14, v6);
      LODWORD(v16) = (*(*v6 + 120))(v6);
      DWORD1(v16) = (*(*v6 + 136))(v6);
      DWORD2(v16) = (*(*v6 + 152))(v6);
      *&v17 = (*(*v6 + 144))(v6);
      *(&v17 + 1) = (*(*v6 + 160))(v6);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        std::vector<webrtc::DataChannelStats>::__emplace_back_slow_path<webrtc::DataChannelStats>(a2);
      }

      if (!v7)
      {
        break;
      }

      *v7 = v11;
      v8 = __p;
      *(v7 + 24) = v13;
      *(v7 + 8) = v8;
      __p = 0uLL;
      v9 = v15;
      *(v7 + 32) = v14;
      *(v7 + 48) = v9;
      v13 = 0;
      v14 = 0uLL;
      v15 = 0;
      v10 = v17;
      *(v7 + 56) = v16;
      *(v7 + 72) = v10;
      a2[1] = v7 + 88;
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p);
      }

      if (++v4 == v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *std::vector<webrtc::DataChannelStats>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::DataChannelController::CreateDataChannel(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 52);
  if (v7 != -1)
  {
    if (v7 >= 0x400)
    {
      HIBYTE(__p[2]) = 22;
      if (__p > "StreamId out of range." || &__p[2] + 6 <= "StreamId out of range.")
      {
        strcpy(__p, "StreamId out of range.");
        LODWORD(__p[3]) = 0;
        BYTE4(__p[3]) = 0;
        BYTE6(__p[3]) = 0;
        *a1 = 4;
        *(a1 + 8) = *__p;
        *(a1 + 24) = __p[2];
        *(a1 + 32) = 0;
        goto LABEL_40;
      }

LABEL_52:
      __break(1u);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v11 = *(a4 + 52);
    LOWORD(v40) = *(a4 + 52);
    v12 = a2[3];
    v13 = a2[4];
    if (v13 == v12)
    {
      v12 = a2[4];
    }

    else
    {
      v14 = (v13 - v12) >> 1;
      do
      {
        v15 = v14 >> 1;
        v16 = &v12[2 * (v14 >> 1)];
        v18 = *v16;
        v17 = v16 + 2;
        v14 += ~(v14 >> 1);
        if (v18 < v11)
        {
          v12 = v17;
        }

        else
        {
          v14 = v15;
        }
      }

      while (v14);
      if (v13 != v12 && *v12 <= v11)
      {
        HIBYTE(__p[2]) = 18;
        if (__p > "StreamId reserved." || &__p[2] + 2 <= "StreamId reserved.")
        {
          strcpy(__p, "StreamId reserved.");
          LODWORD(__p[3]) = 0;
          BYTE4(__p[3]) = 0;
          BYTE6(__p[3]) = 0;
          v36 = 4;
          goto LABEL_39;
        }

        goto LABEL_52;
      }
    }

    std::vector<webrtc::StreamId>::emplace<webrtc::StreamId const&>((a2 + 3), v12, &v40);
    goto LABEL_44;
  }

  v8 = *(a4 + 64);
  v9 = (*(*(a2[11] + 8) + 152))();
  if ((v9 & 0x100000000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if ((v10 & 0x100000000) == 0)
  {
    BYTE6(__p[3]) = 0;
    memset(__p, 0, 29);
LABEL_45:
    v37 = a2[12];
    if (!v37 || atomic_load_explicit((v37 + 4), memory_order_acquire) == 1)
    {
      operator new();
    }

    v38 = a2[12];
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 4), 1u, memory_order_relaxed);
      atomic_fetch_add_explicit((v38 + 4), 1u, memory_order_relaxed);
      if (atomic_fetch_add((v38 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v38, 0x1000C404A09149ALL);
      }
    }

    (*(*a2[11] + 520))(a2[11]);
    (*(*a2[11] + 536))();
    operator new();
  }

  v20 = a2[3];
  v19 = a2[4];
  if (v19 == v20)
  {
    LOWORD(v40) = v10 != 0;
LABEL_43:
    std::vector<webrtc::StreamId>::emplace<webrtc::StreamId const&>((a2 + 3), v19, &v40);
    v11 = v40;
LABEL_44:
    BYTE6(__p[3]) = 0;
    memset(__p, 0, 29);
    *(a4 + 52) = v11;
    goto LABEL_45;
  }

  v21 = v10 != 0;
  do
  {
    LOWORD(v40) = v21;
    v22 = v20;
    v23 = (v19 - v20) >> 1;
    do
    {
      v24 = v23 >> 1;
      v25 = &v22[2 * (v23 >> 1)];
      v27 = *v25;
      v26 = v25 + 1;
      v23 += ~(v23 >> 1);
      if (v27 < v21)
      {
        v22 = v26;
      }

      else
      {
        v23 = v24;
      }
    }

    while (v23);
    if (v19 == v22)
    {
      goto LABEL_43;
    }

    if (*v22 > v21)
    {
      v19 = v22;
      goto LABEL_43;
    }

    v28 = v21 >= 0x3FE;
    v21 += 2;
  }

  while (!v28);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
  }

  BYTE6(__p[3]) = 0;
  memset(__p, 0, 29);
  v36 = 9;
LABEL_39:
  *a1 = v36;
  *(a1 + 8) = *__p;
  *(a1 + 24) = __p[2];
  *(a1 + 32) = __p[3];
LABEL_40:
  *(a1 + 35) = *(&__p[3] + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void webrtc::DataChannelController::InternalCreateDataChannelWithProxy(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 13) < -1)
  {
    goto LABEL_2;
  }

  if (*(a3 + 16) != 1)
  {
    if (*(a3 + 8) != 1 || (*(a3 + 1) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_2:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      *&v27 = "INVALID_PARAMETER";
      *(&v27 + 1) = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/data_channel_controller.cc");
    }

    operator new();
  }

  if (*(a3 + 3) & 0x80000000) != 0 || (*(a3 + 8))
  {
    goto LABEL_2;
  }

LABEL_12:
  v32 = 0;
  v27 = *a3;
  v28 = *(a3 + 16);
  if (*(a3 + 47) < 0)
  {
    v13 = a1;
    v14 = a3;
    std::string::__init_copy_ctor_external(&v29, *(a3 + 3), *(a3 + 4));
    a3 = v14;
    a1 = v13;
  }

  else
  {
    v29 = *(a3 + 1);
  }

  *v30 = *(a3 + 6);
  *(&v30[1] + 3) = *(a3 + 55);
  *&v30[3] = *(a3 + 60);
  v31 = *(a3 + 68);
  v15 = a1;
  v16 = (*(**(a1 + 88) + 536))(*(a1 + 88));
  v21[0] = v15;
  v21[1] = a2;
  v21[2] = &v27;
  v21[3] = &v32;
  v22 = 10;
  v24[22] = 0;
  *v24 = 0;
  *&v24[8] = 0;
  __p = 0;
  *&v24[13] = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  v33[0] = &v22;
  v33[1] = v21;
  (*(*v16 + 96))(v16, v33, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::SctpDataChannel>> webrtc::Thread::BlockingCall<webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::SctpDataChannel>>,void>(webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v20);
  v17 = v22;
  if (v22)
  {
    v18 = *v24;
    *(a4 + 8) = __p;
    *(a4 + 16) = v18;
    *(a4 + 23) = *&v24[7];
    LOBYTE(v18) = v24[15];
    *v24 = 0;
    *&v24[8] = 0;
    __p = 0;
    *(a4 + 32) = *&v24[16];
    *(a4 + 35) = *&v24[19];
    *a4 = v17;
    *(a4 + 31) = v18;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    if (v26 == 1 && v25)
    {
      (*(*v25 + 8))(v25);
    }

    if ((v24[15] & 0x80000000) != 0)
    {
      operator delete(__p);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_28:
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v15 + 72) = 2;
    if (v26)
    {
      v25 = 0;
      v19 = *(v15 + 112);
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 1u, memory_order_relaxed);
      }

      operator new();
    }

    __break(1u);
  }
}

void webrtc::DataChannelController::AllocateSctpSids(void *a1, int a2)
{
  v4 = a1[2];
  if (v4)
  {
    v5 = (*(*v4 + 48))(v4);
    v6 = a1[6];
    v7 = a1[7];
    if (v6 == v7)
    {
      return;
    }
  }

  else
  {
    v5 = 0;
    v6 = a1[6];
    v7 = a1[7];
    if (v6 == v7)
    {
      return;
    }
  }

  v8 = a2 != 0;
  do
  {
    if ((*(*v6 + 26) & 1) == 0)
    {
      v10 = a1[3];
      v9 = a1[4];
      if (v9 == v10)
      {
        LOWORD(__p) = v8;
      }

      else
      {
        for (i = v8; ; i += 2)
        {
          LOWORD(__p) = i;
          v12 = v10;
          v13 = (v9 - v10) >> 1;
          do
          {
            v14 = v13 >> 1;
            v15 = &v12[2 * (v13 >> 1)];
            v17 = *v15;
            v16 = v15 + 1;
            v13 += ~(v13 >> 1);
            if (v17 < i)
            {
              v12 = v16;
            }

            else
            {
              v13 = v14;
            }
          }

          while (v13);
          if (v9 == v12)
          {
            goto LABEL_23;
          }

          if (*v12 > i)
          {
            break;
          }

          if (i >= 0x3FE)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sctp_data_channel.cc");
            }

            operator new();
          }
        }

        v9 = v12;
      }

LABEL_23:
      std::vector<webrtc::StreamId>::emplace<webrtc::StreamId const&>((a1 + 3), v9, &__p);
      v26 = __p;
      v27 = *v6;
      if ((*(*v6 + 26) & 1) == 0)
      {
        *(v27 + 26) = 1;
      }

      *(v27 + 24) = v26;
      v28 = (*(*v27 + 112))(v27);
      (*(*a1 + 8))(a1, v26, v28);
      if (v5)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/data_channel_controller.cc");
        }

        webrtc::SctpDataChannel::UpdateState(*v6);
      }

      operator new();
    }

    ++v6;
  }

  while (v6 != v7);
}

void std::vector<webrtc::DataChannelStats>::__emplace_back_slow_path<webrtc::DataChannelStats>(void *a1)
{
  v1 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x2E8BA2E8BA2E8BALL)
  {
    if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
    }

    if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
    {
      v2 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

uint64_t absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::DataChannelController::OnChannelStateChanged(webrtc::SctpDataChannel *,webrtc::DataChannelInterface::DataState)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  *(v2 + 72) = *(*a1 + 16);
  return (*(**(v2 + 88) + 656))(*(v2 + 88), *(v1 + 2), *(v1 + 3));
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::DataChannelController::HandleOpenMessage_n(int,webrtc::DataMessageType,webrtc::CopyOnWriteBuffer const&)::$_0 &&>(uint64_t **a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  if (v1)
  {
    (**v1)((*a1)[1]);
    *(v2 + 72) = 2;
    (**v1)(v1);
    v3 = *(v2 + 112);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *(v2 + 72) = 2;
    v3 = *(v2 + 112);
    if (!v3)
    {
LABEL_4:
      operator new();
    }
  }

  atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
  goto LABEL_4;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::DataChannelController::HandleOpenMessage_n(int,webrtc::DataMessageType,webrtc::CopyOnWriteBuffer const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        (*(*v4 + 8))(v4);
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

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DataChannelController::OnDataChannelOpenMessage(webrtc::scoped_refptr<webrtc::SctpDataChannel>,BOOL)::$_0 &&>(uint64_t *a1)
{
  result = (*(**a1 + 120))(*a1);
  if (result != 3)
  {
    v3 = *a1;

    return webrtc::SctpDataChannel::UpdateState(v3);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::DataChannelController::OnDataChannelOpenMessage(webrtc::scoped_refptr<webrtc::SctpDataChannel>,BOOL)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  if (*a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::SctpDataChannel>> webrtc::Thread::BlockingCall<webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0,webrtc::RTCErrorOr<webrtc::scoped_refptr<webrtc::SctpDataChannel>>,void>(webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v2;
  webrtc::DataChannelController::CreateDataChannel(&v16, *v2, v2[1], v2[2]);
  v4 = v16;
  if (!v16)
  {
    v10 = v3[2];
    if (v10)
    {
      v11 = (*(*v10 + 48))(v10);
      *v2[3] = v11;
      if (v11)
      {
        v12 = (*(*v3[11] + 536))(v3[11]);
        if ((v21 & 1) == 0)
        {
          __break(1u);
          return;
        }

        v13 = v20;
        if (v20)
        {
          v14 = v12;
          (**v20)(v20);
          v12 = v14;
        }

        v24[0] = v13;
        v25 = absl::internal_any_invocable::LocalManagerNontrivial<webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0::operator() const(void)::{lambda(void)#2}>;
        v26 = absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0::operator() const(void)::{lambda(void)#2} &&>;
        (*(*v12 + 8))(v12, v24, &v23, &v22);
        v25(1, v24, v24);
      }
    }

    else
    {
      *v2[3] = 0;
    }
  }

  v5 = *a1;
  *v5 = v4;
  if (*(v5 + 31) < 0)
  {
    operator delete(*(v5 + 8));
  }

  *(v5 + 8) = v17;
  *(v5 + 24) = v18;
  *(v5 + 32) = v19[0];
  *(v5 + 35) = *(v19 + 3);
  v6 = v21;
  if (*(v5 + 48) != v21)
  {
    if (!*(v5 + 48))
    {
      v15 = v20;
      v20 = 0;
      *(v5 + 40) = v15;
      *(v5 + 48) = 1;
      if (!v6)
      {
        return;
      }

      goto LABEL_14;
    }

    v9 = *(v5 + 40);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(v5 + 48) = 0;
    goto LABEL_13;
  }

  if (!*(v5 + 48) || (v7 = v20, v20 = 0, v8 = *(v5 + 40), *(v5 + 40) = v7, !v8))
  {
LABEL_13:
    if (!v6)
    {
      return;
    }

    goto LABEL_14;
  }

  (*(*v8 + 8))(v8);
  if (!v6)
  {
    return;
  }

LABEL_14:
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0::operator() const(void)::{lambda(void)#2} &&>(uint64_t *a1)
{
  result = (*(**a1 + 120))(*a1);
  if (result != 3)
  {
    v3 = *a1;

    return webrtc::SctpDataChannel::UpdateState(v3);
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::DataChannelController::InternalCreateDataChannelWithProxy(std::string const&,webrtc::InternalDataChannelInit const&)::$_0::operator() const(void)::{lambda(void)#2}>(char a1, uint64_t *a2, uint64_t *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *a2 = 0;
    *a3 = v3;
  }

  result = *a2;
  if (*a2)
  {
    return (*(*result + 8))();
  }

  return result;
}

void webrtc::DataChannelInterface::protocol(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void webrtc::DataChannelInterface::error(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 38) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
}

void std::deque<std::unique_ptr<webrtc::DataBuffer>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v14 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = *v5 + 8 * (v4 & 0x1FF);
    v8 = *(v2 + (((a1[5] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v4) & 0x1FF);
    if (v7 != v8)
    {
      while (v7)
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          v10 = *v9;
          if (*v9 && atomic_fetch_add((v10 + 24), 0xFFFFFFFF) == 1)
          {
            v11 = v9;
            v12 = *(v10 + 16);
            *(v10 + 16) = 0;
            if (v12)
            {
              MEMORY[0x2743DA520](v12, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v10, 0x1010C40EE34DA14);
            v9 = v11;
          }

          MEMORY[0x2743DA540](v9, 0x1020C4059E634C0);
          v6 = *v5;
        }

        v7 += 8;
        if (v7 - v6 == 4096)
        {
          v13 = v5[1];
          ++v5;
          v6 = v13;
          v7 = v13;
        }

        if (v7 == v8)
        {
          v2 = a1[1];
          v3 = a1[2];
          goto LABEL_16;
        }
      }

      __break(1u);
      return;
    }

LABEL_16:
    a1[5] = 0;
    v14 = v3 - v2;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v2);
        v15 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v14 = (v15 - v2) >> 3;
      }

      while (v14 > 2);
    }
  }

  if (v14 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v14 != 2)
    {
      return;
    }

    v16 = 512;
  }

  a1[4] = v16;
}

void *std::deque<std::unique_ptr<webrtc::DataBuffer>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v10);
}

uint64_t dcsctp::DataChunk::Parse@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 0x10 || *result || ((v3 = __rev16(*(result + 2)), v3 >= 0x10) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
    *a3 = 0;
    *(a3 + 72) = 0;
  }

  else
  {
    v6 = *(result + 1);
    v7 = bswap32(*(result + 4));
    v8 = bswap32(*(result + 8)) >> 16;
    v9 = bswap32(*(result + 10)) >> 16;
    v10 = bswap32(*(result + 12));
    if (v3 >= 0x11)
    {
      operator new();
    }

    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 18) = v9;
    *(a3 + 20) = 0;
    *(a3 + 24) = 0;
    *(a3 + 28) = v10;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = (v6 & 2) != 0;
    *(a3 + 57) = v6 & 1;
    *(a3 + 58) = (v6 & 4) != 0;
    *(a3 + 64) = (v6 & 8) != 0;
    *a3 = &unk_2882921A0;
    *(a3 + 72) = 1;
  }

  return result;
}

void dcsctp::DataChunk::~DataChunk(dcsctp::DataChunk *this)
{
  *this = &unk_288291328;
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 5) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_288291328;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::DataChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 40) - *(a1 + 32);
  v11 = *a2;
  v12 = a2[1] - *a2;
  v13 = v10 + 16;
  v14 = v12 + v10 + 16;
  if (v12 >= v14)
  {
    if (v12 > v14)
    {
      a2[1] = v11 + v14;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v10 + 16);
    v11 = *a2;
  }

  v15 = (v11 + v12);
  *v15 = 0;
  v15[2] = HIBYTE(v13);
  v15[3] = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFF0)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v25);
    dcsctp::DataChunk::ToString(v24);
  }

  else
  {
    v16 = *a2 + v12;
    if (*(a1 + 56))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 | *(a1 + 57);
    if (*(a1 + 58))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    if (*(a1 + 64))
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    *(v16 + 1) = v18 | v19 | v20;
    *(v16 + 4) = bswap32(*(a1 + 8));
    *(v16 + 8) = bswap32(*(a1 + 16)) >> 16;
    *(v16 + 10) = bswap32(*(a1 + 18)) >> 16;
    *(v16 + 12) = bswap32(*(a1 + 28));
    v21 = *(a1 + 40) - *(a1 + 32);
    if (v21)
    {
      v22 = *(a1 + 32);
    }

    else
    {
      v22 = 0;
    }

    if (v10 >= v21)
    {
      v23 = *(a1 + 40) - *(a1 + 32);
    }

    else
    {
      v23 = v10;
    }

    if (v22 && v23)
    {

      memcpy((v16 + 16), v22, v23);
    }
  }
}

double dcsctp::DataChunk::ToString@<D0>(dcsctp::DataChunk *this@<X0>, std::string *a2@<X8>)
{
  *&v82.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v82 <= "DATA, type=" && &v82.__r_.__value_.__r.__words[1] + 3 > "DATA, type=")
  {
    goto LABEL_177;
  }

  *(v82.__r_.__value_.__r.__words + 7) = 1030058105;
  v82.__r_.__value_.__r.__words[0] = *"DATA, type=";
  *(&v82.__r_.__value_.__s + 23) = 11;
  if (*(this + 58))
  {
    v5 = "unordered";
  }

  else
  {
    v5 = "ordered";
  }

  v6 = 18;
  if (*(this + 58))
  {
    v6 = 20;
  }

  if (&v82.__r_.__value_.__r.__words[1] + 3 <= v5 && &v82 + v6 > v5)
  {
    goto LABEL_177;
  }

  if (*(this + 58))
  {
    v7 = 9;
  }

  else
  {
    v7 = 7;
  }

  memcpy(&v82.__r_.__value_.__r.__words[1] + 3, v5, v7);
  v8 = SHIBYTE(v82.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    v82.__r_.__value_.__l.__size_ = v7 + 11;
    size = v7 + 11;
  }

  else
  {
    *(&v82.__r_.__value_.__s + 23) = v7 + 11;
    size = v82.__r_.__value_.__l.__size_;
    v8 = v7 + 11;
  }

  v82.__r_.__value_.__s.__data_[v7 + 11] = 0;
  if (v8 >= 0)
  {
    v10 = 22;
  }

  else
  {
    v10 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = size;
  }

  if (v10 - v11 >= 2)
  {
    v12 = v8 < 0;
    v13 = 0x7974202C41544144;
    if (!v12)
    {
      v13 = &v82;
    }

    v14 = (v13 + v11);
    if (v13 + v11 <= "::" && v14 + 1 > "::")
    {
      goto LABEL_177;
    }

    *v14 = 14906;
    v15 = v11 + 2;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      v82.__r_.__value_.__l.__size_ = v11 + 2;
    }

    else
    {
      *(&v82.__r_.__value_.__s + 23) = v15 & 0x7F;
    }

    *(v13 + v15) = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v82, v10, v11 - v10 + 2, v11, v11, 0, 2uLL, "::");
  }

  v16 = "middle";
  v17 = "first";
  if (*(this + 57))
  {
    v16 = "last";
    v17 = "complete";
  }

  if (*(this + 56))
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = strlen(v18);
  v21 = v19;
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = 22;
  }

  else
  {
    v22 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v82.__r_.__value_.__l.__size_;
  }

  if (v22 - v23 >= v19)
  {
    if (v19)
    {
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v82;
      }

      else
      {
        v24 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_177;
      }

      v25 = v24 + v23;
      if (v24 + v23 <= v18 && &v25[v21] > v18)
      {
        goto LABEL_177;
      }

      memcpy(v25, v18, v21);
      v26 = v23 + v21;
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        v82.__r_.__value_.__l.__size_ = v23 + v21;
      }

      else
      {
        *(&v82.__r_.__value_.__s + 23) = v26 & 0x7F;
      }

      v24->__r_.__value_.__s.__data_[v26] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v82, v22, v23 + v19 - v22, v23, v23, 0, v19, v18);
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = 22;
  }

  else
  {
    v27 = (v82.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v82.__r_.__value_.__l.__size_;
  }

  if (v27 - v28 >= 6)
  {
    v29 = &v82;
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v82.__r_.__value_.__r.__words[0];
    }

    v30 = v29 + v28;
    if (v29 + v28 <= ", tsn=" && v30 + 6 > ", tsn=")
    {
      goto LABEL_177;
    }

    *(v30 + 2) = 15726;
    *v30 = 1936990252;
    v31 = v28 + 6;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      v82.__r_.__value_.__l.__size_ = v28 + 6;
    }

    else
    {
      *(&v82.__r_.__value_.__s + 23) = v31 & 0x7F;
    }

    v29->__r_.__value_.__s.__data_[v31] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v82, v27, v28 - v27 + 6, v28, v28, 0, 6uLL, ", tsn=");
  }

  v32 = webrtc::StringBuilder::operator<<(&v82, *(this + 2), v20);
  v34 = SHIBYTE(v32->__r_.__value_.__r.__words[2]);
  if (v34 >= 0)
  {
    v35 = 22;
  }

  else
  {
    v35 = (v32->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v34 >= 0)
  {
    v36 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v32->__r_.__value_.__l.__size_;
  }

  if (v35 - v36 >= 6)
  {
    if (v34 >= 0)
    {
      v38 = v32;
    }

    else
    {
      v38 = v32->__r_.__value_.__r.__words[0];
    }

    v39 = v38 + v36;
    if (v38 + v36 <= ", sid=" && v39 + 6 > ", sid=")
    {
      goto LABEL_177;
    }

    *(v39 + 4) = 15716;
    *v39 = 1769152556;
    v40 = v36 + 6;
    if (SHIBYTE(v32->__r_.__value_.__r.__words[2]) < 0)
    {
      v32->__r_.__value_.__l.__size_ = v40;
    }

    else
    {
      *(&v32->__r_.__value_.__s + 23) = v40 & 0x7F;
    }

    v38->__r_.__value_.__s.__data_[v40] = 0;
  }

  else
  {
    v37 = v32;
    std::string::__grow_by_and_replace(v32, v35, v36 - v35 + 6, v36, v36, 0, 6uLL, ", sid=");
    v32 = v37;
  }

  v41 = webrtc::StringBuilder::operator<<(v32, *(this + 8), v33);
  v43 = SHIBYTE(v41->__r_.__value_.__r.__words[2]);
  if (v43 >= 0)
  {
    v44 = 22;
  }

  else
  {
    v44 = (v41->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v43 >= 0)
  {
    v45 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v41->__r_.__value_.__l.__size_;
  }

  if (v44 - v45 >= 6)
  {
    if (v43 >= 0)
    {
      v47 = v41;
    }

    else
    {
      v47 = v41->__r_.__value_.__r.__words[0];
    }

    v48 = v47 + v45;
    if (v47 + v45 <= ", ssn=" && v48 + 6 > ", ssn=")
    {
      goto LABEL_177;
    }

    *(v48 + 4) = 15726;
    *v48 = 1936924716;
    v49 = v45 + 6;
    if (SHIBYTE(v41->__r_.__value_.__r.__words[2]) < 0)
    {
      v41->__r_.__value_.__l.__size_ = v49;
    }

    else
    {
      *(&v41->__r_.__value_.__s + 23) = v49 & 0x7F;
    }

    v47->__r_.__value_.__s.__data_[v49] = 0;
  }

  else
  {
    v46 = v41;
    std::string::__grow_by_and_replace(v41, v44, v45 - v44 + 6, v45, v45, 0, 6uLL, ", ssn=");
    v41 = v46;
  }

  v50 = webrtc::StringBuilder::operator<<(v41, *(this + 9), v42);
  v52 = SHIBYTE(v50->__r_.__value_.__r.__words[2]);
  if (v52 >= 0)
  {
    v53 = 22;
  }

  else
  {
    v53 = (v50->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v52 >= 0)
  {
    v54 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v54 = v50->__r_.__value_.__l.__size_;
  }

  if (v53 - v54 >= 7)
  {
    if (v52 >= 0)
    {
      v56 = v50;
    }

    else
    {
      v56 = v50->__r_.__value_.__r.__words[0];
    }

    v57 = (v56 + v54);
    if (v56 + v54 <= ", ppid=" && v57 + 7 > ", ppid=")
    {
      goto LABEL_177;
    }

    *(v57 + 3) = 1029990768;
    *v57 = 1886396460;
    v58 = v54 + 7;
    if (SHIBYTE(v50->__r_.__value_.__r.__words[2]) < 0)
    {
      v50->__r_.__value_.__l.__size_ = v58;
    }

    else
    {
      *(&v50->__r_.__value_.__s + 23) = v58 & 0x7F;
    }

    v56->__r_.__value_.__s.__data_[v58] = 0;
  }

  else
  {
    v55 = v50;
    std::string::__grow_by_and_replace(v50, v53, v54 - v53 + 7, v54, v54, 0, 7uLL, ", ppid=");
    v50 = v55;
  }

  v59 = webrtc::StringBuilder::operator<<(v50, *(this + 7), v51);
  v61 = v59;
  v62 = SHIBYTE(v59->__r_.__value_.__r.__words[2]);
  if (v62 >= 0)
  {
    v63 = 22;
  }

  else
  {
    v63 = (v59->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v62 >= 0)
  {
    v64 = HIBYTE(v59->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v59->__r_.__value_.__l.__size_;
  }

  if (v63 - v64 >= 9)
  {
    if (v62 >= 0)
    {
      v65 = v59;
    }

    else
    {
      v65 = v59->__r_.__value_.__r.__words[0];
    }

    v66 = v65 + v64;
    if (v65 + v64 <= ", length=" && v66 + 9 > ", length=")
    {
      goto LABEL_177;
    }

    *(v66 + 8) = 61;
    *v66 = *", length=";
    v67 = v64 + 9;
    if (SHIBYTE(v59->__r_.__value_.__r.__words[2]) < 0)
    {
      v59->__r_.__value_.__l.__size_ = v67;
    }

    else
    {
      *(&v59->__r_.__value_.__s + 23) = v67 & 0x7F;
    }

    v65->__r_.__value_.__s.__data_[v67] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v59, v63, v64 - v63 + 9, v64, v64, 0, 9uLL, ", length=");
  }

  v68 = *(this + 5) - *(this + 4);
  v84 = 0;
  v85 = 0x1600000000000000;
  __p = 0;
  v69 = absl::numbers_internal::FastIntToBuffer(v68, &__p, v60);
  v70 = v69 - &__p;
  if ((SHIBYTE(v85) & 0x8000000000000000) != 0)
  {
    if (v84 < v70)
    {
      goto LABEL_178;
    }

    p_p = __p;
    v84 = v69 - &__p;
  }

  else
  {
    if (v70 > SHIBYTE(v85))
    {
      goto LABEL_178;
    }

    HIBYTE(v85) = v69 - &__p;
    p_p = &__p;
  }

  p_p[v70] = 0;
  if (v85 >= 0)
  {
    v72 = &__p;
  }

  else
  {
    v72 = __p;
  }

  if (v85 >= 0)
  {
    v73 = HIBYTE(v85);
  }

  else
  {
    v73 = v84;
  }

  if (!v72 && v73)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v74 = SHIBYTE(v61->__r_.__value_.__r.__words[2]);
  if (v74 >= 0)
  {
    v75 = 22;
  }

  else
  {
    v75 = (v61->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v74 >= 0)
  {
    v76 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v76 = v61->__r_.__value_.__l.__size_;
  }

  if (v75 - v76 >= v73)
  {
    if (!v73)
    {
      goto LABEL_173;
    }

    if (v74 >= 0)
    {
      v77 = v61;
    }

    else
    {
      v77 = v61->__r_.__value_.__r.__words[0];
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      v78 = v77 + v76;
      if (v77 + v76 > v72 || &v78[v73] <= v72)
      {
        v79 = v73;
        memmove(v78, v72, v73);
        v80 = v76 + v79;
        if (SHIBYTE(v61->__r_.__value_.__r.__words[2]) < 0)
        {
          v61->__r_.__value_.__l.__size_ = v80;
          v77->__r_.__value_.__s.__data_[v80] = 0;
          if ((SHIBYTE(v85) & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_163;
        }

        *(&v61->__r_.__value_.__s + 23) = v80 & 0x7F;
        v77->__r_.__value_.__s.__data_[v80] = 0;
LABEL_173:
        if ((SHIBYTE(v85) & 0x80000000) == 0)
        {
          goto LABEL_174;
        }

        goto LABEL_163;
      }
    }

    goto LABEL_177;
  }

  std::string::__grow_by_and_replace(v61, v75, v76 + v73 - v75, v76, v76, 0, v73, v72);
  if (SHIBYTE(v85) < 0)
  {
LABEL_163:
    operator delete(__p);
  }

LABEL_174:
  result = *&v82.__r_.__value_.__l.__data_;
  *a2 = v82;
  return result;
}