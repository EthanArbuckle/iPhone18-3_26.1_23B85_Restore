void webrtc::TurnCreatePermissionRequest::OnTimeout(webrtc::TurnCreatePermissionRequest *this)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_16;
  }

  (*(**(this + 7) + 176))(&__p);
  v9 = *(this + 2);
  v10 = *(v9 + 63);
  if (v10 < 0)
  {
    v11 = *(v9 + 40);
    v10 = *(v9 + 48);
    v12 = 2 * v10;
    if ((2 * v10) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_4;
    }

LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = (v9 + 40);
  v12 = 2 * v10;
  if ((2 * v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (v12 >= 0x17)
  {
    operator new();
  }

  v30 = v12;
  if (v12)
  {
    bzero(&v29, v12);
  }

  *(&v29 + v12) = 0;
  v13 = v29;
  if (v30 >= 0)
  {
    v13 = &v29;
  }

  if (v10)
  {
    v14 = v13 + 1;
    do
    {
      v15 = *v11++;
      v14 += 2;
      --v10;
    }

    while (v10);
  }

  webrtc::webrtc_logging_impl::Log("\r\n\t\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
  if ((v30 & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    operator delete(__p.__r_.__value_.__l.__data_);
    v16 = *(this + 8);
    if (!v16)
    {
      return;
    }

    goto LABEL_17;
  }

  operator delete(v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v16 = *(this + 8);
  if (!v16)
  {
    return;
  }

LABEL_17:
  v17 = (*(**(v16 + 88) + 88))(*(v16 + 88), v16 + 104);
  if (v17)
  {
    v18 = *(v17 + 248);
    if (v18)
    {
      if (*v18 == 1 && *(v17 + 256))
      {
        v19 = *(v17 + 2560);
        *(v17 + 2560) = 3;
        if (v19 != 3)
        {
          v20 = v17;
          v21 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>();
          v17 = v20;
          if ((v21 & 1) == 0)
          {
            webrtc::Connection::ToString(v20, &__p);
            webrtc::webrtc_logging_impl::Log("\r\n\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v17 = v20;
          }
        }

        webrtc::Connection::Prune(v17);
      }
    }
  }
}

void webrtc::TurnChannelBindRequest::~TurnChannelBindRequest(webrtc::TurnChannelBindRequest *this)
{
  *this = &unk_2882A1660;
  v2 = *(this + 8);
  if (v2)
  {
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v2 + 56), this);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  *this = &unk_2882A08C8;
  v3 = *(this + 5);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_2882A1660;
  v2 = *(this + 8);
  if (v2)
  {
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((v2 + 56), this);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  *this = &unk_2882A08C8;
  v3 = *(this + 5);
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::TurnChannelBindRequest::OnSent(webrtc::TurnChannelBindRequest *this)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_16;
  }

  (*(**(this + 7) + 176))(&v20);
  v9 = *(this + 2);
  v10 = *(v9 + 63);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = (v9 + 40);
    v12 = 2 * v10;
    if ((2 * v10) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_4;
    }

LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = *(v9 + 40);
  v10 = *(v9 + 48);
  v12 = 2 * v10;
  if ((2 * v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (v12 >= 0x17)
  {
    operator new();
  }

  v19 = v12;
  if (v12)
  {
    bzero(&__p, v12);
  }

  *(&__p + v12) = 0;
  p_p = __p;
  if (v19 >= 0)
  {
    p_p = &__p;
  }

  if (v10)
  {
    v14 = p_p + 1;
    do
    {
      v15 = *v11++;
      v14 += 2;
      --v10;
    }

    while (v10);
  }

  webrtc::webrtc_logging_impl::Log("\r\n\t\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
  if (v19 < 0)
  {
    operator delete(__p);
    if (v21 < 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    v16 = *(this + 8);
    *(this + 8) = v16 + 1;
    if (v16 < 8)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_22:
  operator delete(v20);
  v17 = *(this + 8);
  *(this + 8) = v17 + 1;
  if (v17 < 8)
  {
    return;
  }

LABEL_17:
  *(this + 36) = 1;
}

void webrtc::TurnChannelBindRequest::OnResponse(webrtc::TurnChannelBindRequest *this, webrtc::StunMessage *a2)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_23;
  }

  (*(**(this + 7) + 176))(v27);
  v3 = *(this + 2);
  v4 = *(v3 + 63);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (v3 + 40);
    v6 = 2 * v4;
    if ((2 * v4) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_4;
    }

LABEL_17:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = 2 * v4;
  if ((2 * v4) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v6 >= 0x17)
  {
    operator new();
  }

  v26 = v6;
  if (v6)
  {
    bzero(&__p, v6);
  }

  *(&__p + v6) = 0;
  p_p = &__p;
  if (v26 < 0)
  {
    p_p = __p;
  }

  if (v4)
  {
    v8 = p_p + 1;
    do
    {
      v9 = *v5++;
      v8 += 2;
      --v4;
    }

    while (v4);
  }

  if (webrtc::g_clock)
  {
    (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    mach_absolute_time();
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
  if (v26 < 0)
  {
    operator delete(__p);
    if (v28 < 0)
    {
      goto LABEL_30;
    }

LABEL_23:
    v17 = *(this + 8);
    if (v17)
    {
      goto LABEL_24;
    }

    return;
  }

  if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_30:
  operator delete(v27[0]);
  v17 = *(this + 8);
  if (v17)
  {
LABEL_24:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_27;
    }

    (*(**(v17 + 88) + 176))(v27);
    webrtc::SocketAddress::ToSensitiveString((v17 + 104), &__p);
    webrtc::webrtc_logging_impl::Log("\r\n\t\n", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
    if (v26 < 0)
    {
      operator delete(__p);
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v27[0]);
LABEL_27:
    *(v17 + 176) = 2;
    operator new();
  }
}

void webrtc::TurnChannelBindRequest::OnErrorResponse(webrtc::TurnChannelBindRequest *this, webrtc::StunMessage *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v4 == v5)
  {
LABEL_4:
    v6 = 600;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }
  }

  else
  {
    while (*(*v4 + 8) != 9)
    {
      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    v6 = *(*v4 + 13) + 100 * *(*v4 + 12);
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      goto LABEL_28;
    }
  }

  v42.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc";
  v42.__r_.__value_.__l.__size_ = 13786;
  v42.__r_.__value_.__r.__words[2] = &v39;
  (*(**(this + 7) + 176))(v37);
  v40 = v37;
  v41 = &v42;
  v7 = *(this + 2);
  v8 = *(v7 + 63);
  if (v8 < 0)
  {
    v9 = *(v7 + 40);
    v8 = *(v7 + 48);
    v10 = 2 * v8;
    if ((2 * v8) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_9;
    }

LABEL_22:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v9 = (v7 + 40);
  v10 = 2 * v8;
  if ((2 * v8) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (v10 >= 0x17)
  {
    operator new();
  }

  v36 = v10;
  if (v10)
  {
    bzero(&__p, v10);
  }

  *(&__p + v10) = 0;
  p_p = &__p;
  if (v36 < 0)
  {
    p_p = __p;
  }

  if (v8)
  {
    v12 = p_p + 1;
    do
    {
      v13 = *v9++;
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  if (webrtc::g_clock)
  {
    (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    mach_absolute_time();
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v14, v15, v16, v17, v18, v19, v20, v41->__r_.__value_.__r.__words[0]);
  if ((v36 & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_43:
    operator delete(v37[0]);
    v21 = *(this + 8);
    if (!v21)
    {
      return;
    }

    goto LABEL_29;
  }

  operator delete(__p);
  if (v38 < 0)
  {
    goto LABEL_43;
  }

LABEL_28:
  v21 = *(this + 8);
  if (!v21)
  {
    return;
  }

LABEL_29:
  if (v6 == 438)
  {
    webrtc::TurnPort::UpdateNonce(*(v21 + 88), a2);
    if (v22)
    {
      operator new();
    }
  }

  else
  {
    *(v21 + 176) = 0;
    v23 = (*(**(v21 + 88) + 88))(*(v21 + 88), v21 + 104);
    if (v23)
    {
      v24 = *(v23 + 248);
      if (v24)
      {
        if (*v24 == 1 && *(v23 + 256))
        {
          v25 = *(v23 + 2560);
          *(v23 + 2560) = 3;
          if (v25 != 3)
          {
            v26 = v23;
            v27 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>();
            v23 = v26;
            if ((v27 & 1) == 0)
            {
              webrtc::Connection::ToString(v26, &v42);
              webrtc::webrtc_logging_impl::Log("\r\n\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
              if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v42.__r_.__value_.__l.__data_);
              }

              v23 = v26;
            }
          }

          webrtc::Connection::Prune(v23);
        }
      }
    }
  }
}

void webrtc::TurnChannelBindRequest::OnTimeout(webrtc::TurnChannelBindRequest *this)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_16;
  }

  (*(**(this + 7) + 176))(&__p);
  v9 = *(this + 2);
  v10 = *(v9 + 63);
  if (v10 < 0)
  {
    v11 = *(v9 + 40);
    v10 = *(v9 + 48);
    v12 = 2 * v10;
    if ((2 * v10) < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_4;
    }

LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v11 = (v9 + 40);
  v12 = 2 * v10;
  if ((2 * v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (v12 >= 0x17)
  {
    operator new();
  }

  v30 = v12;
  if (v12)
  {
    bzero(&v29, v12);
  }

  *(&v29 + v12) = 0;
  v13 = v29;
  if (v30 >= 0)
  {
    v13 = &v29;
  }

  if (v10)
  {
    v14 = v13 + 1;
    do
    {
      v15 = *v11++;
      v14 += 2;
      --v10;
    }

    while (v10);
  }

  webrtc::webrtc_logging_impl::Log("\r\n\t\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
  if ((v30 & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    operator delete(__p.__r_.__value_.__l.__data_);
    v16 = *(this + 8);
    if (!v16)
    {
      return;
    }

    goto LABEL_17;
  }

  operator delete(v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v16 = *(this + 8);
  if (!v16)
  {
    return;
  }

LABEL_17:
  *(v16 + 176) = 0;
  v17 = (*(**(v16 + 88) + 88))(*(v16 + 88), v16 + 104);
  if (v17)
  {
    v18 = *(v17 + 248);
    if (v18)
    {
      if (*v18 == 1 && *(v17 + 256))
      {
        v19 = *(v17 + 2560);
        *(v17 + 2560) = 3;
        if (v19 != 3)
        {
          v20 = v17;
          v21 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>();
          v17 = v20;
          if ((v21 & 1) == 0)
          {
            webrtc::Connection::ToString(v20, &__p);
            webrtc::webrtc_logging_impl::Log("\r\n\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v17 = v20;
          }
        }

        webrtc::Connection::Prune(v17);
      }
    }
  }
}

void webrtc::TurnEntry::~TurnEntry(webrtc::TurnEntry *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_2882A16A8;
  v8 = this + 80;
  if (*(this + 80) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 71, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v23);
LABEL_27:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v23);
    webrtc::TurnEntry::~TurnEntry(v22);
    return;
  }

  *(this + 80) = 1;
  v10 = *(this + 7);
  v11 = *(this + 8);
  if (v10 == v11)
  {
    *v8 = 0;
    v20 = *(this + 26);
    *(v20 + 4) = 0;
    if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      goto LABEL_24;
    }

LABEL_7:
    v15 = *(this + 23);
    if (!v15)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 0;
  do
  {
    (*(v10 + 40))(v10 + 8, this);
    v13 = *v10;
    v10 += 56;
    v12 |= v13 == v8;
  }

  while (v10 != v11);
  *v8 = 0;
  if (v12)
  {
    webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers(this + 7, v8);
    v21 = *(this + 26);
    *(v21 + 4) = 0;
    if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  v14 = *(this + 26);
  *(v14 + 4) = 0;
  if (atomic_fetch_add(v14, 0xFFFFFFFF) != 1)
  {
    goto LABEL_7;
  }

LABEL_24:
  MEMORY[0x2743DA540]();
  v15 = *(this + 23);
  if (v15)
  {
LABEL_8:
    *(this + 24) = v15;
    operator delete(v15);
  }

LABEL_9:
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*v8 == 1)
  {
    goto LABEL_27;
  }

  v16 = *(this + 7);
  if (v16)
  {
    v17 = *(this + 8);
    v18 = *(this + 7);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19)
        {
          v19(v17 - 48);
        }

        v17 -= 56;
      }

      while (v17 != v16);
      v18 = *(this + 7);
    }

    *(this + 8) = v16;
    operator delete(v18);
  }

  *this = &unk_28828CEE0;
  (*(this + 3))(this);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 32, *(this + 5));
}

{
  webrtc::TurnEntry::~TurnEntry(this, a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

void webrtc::TurnAllocateRequest::~TurnAllocateRequest(webrtc::TurnAllocateRequest *this)
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

void webrtc::TurnRefreshRequest::~TurnRefreshRequest(webrtc::TurnRefreshRequest *this)
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

uint64_t std::__function::__func<webrtc::TurnPort::TurnPort(webrtc::Port::PortParametersRef const&,webrtc::AsyncPacketSocket *,webrtc::ProtocolAddress const&,webrtc::RelayCredentials const&,int,std::vector<std::string> const&,std::vector<std::string> const&,webrtc::TurnCustomizer *,webrtc::SSLCertificateVerifier *)::$_0,std::allocator<webrtc::TurnPort::TurnPort(webrtc::Port::PortParametersRef const&,webrtc::AsyncPacketSocket *,webrtc::ProtocolAddress const&,webrtc::RelayCredentials const&,int,std::vector<std::string> const&,std::vector<std::string> const&,webrtc::TurnCustomizer *,webrtc::SSLCertificateVerifier *)::$_0>,void ()(void const*,unsigned long,webrtc::StunRequest *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A16C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::TurnPort::TurnPort(webrtc::Port::PortParametersRef const&,unsigned short,unsigned short,webrtc::ProtocolAddress const&,webrtc::RelayCredentials const&,int,std::vector<std::string> const&,std::vector<std::string> const&,webrtc::TurnCustomizer *,webrtc::SSLCertificateVerifier *)::$_0,std::allocator<webrtc::TurnPort::TurnPort(webrtc::Port::PortParametersRef const&,unsigned short,unsigned short,webrtc::ProtocolAddress const&,webrtc::RelayCredentials const&,int,std::vector<std::string> const&,std::vector<std::string> const&,webrtc::TurnCustomizer *,webrtc::SSLCertificateVerifier *)::$_0>,void ()(void const*,unsigned long,webrtc::StunRequest *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A1710;
  a2[1] = v2;
  return result;
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TurnPort,webrtc::AsyncPacketSocket *>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::TurnPort,webrtc::AsyncPacketSocket *,webrtc::SentPacketInfo const&>(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  if (v3)
  {
    v4 = v3 - 232;
  }

  else
  {
    v4 = 0;
  }

  v5 = (v4 + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v1))();
  }

  else
  {
    return v1(v5);
  }
}

uint64_t std::__function::__func<webrtc::TurnPort::CreateTurnClientSocket(void)::$_1,std::allocator<webrtc::TurnPort::CreateTurnClientSocket(void)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A1758;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::TurnPort::CreateTurnClientSocket(void)::$_1,std::allocator<webrtc::TurnPort::CreateTurnClientSocket(void)::$_1>,void ()(webrtc::AsyncPacketSocket *,int)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0 && ((*(*v1 + 176))(&__p, v1), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc"), v17 < 0))
  {
    operator delete(__p);
    if (*(v1 + 1272) != 2)
    {
LABEL_4:
      (*(*v1 + 128))(v1);
      webrtc::TurnPort::OnAllocateError(v1);
    }
  }

  else if (*(v1 + 1272) != 2)
  {
    goto LABEL_4;
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(v1 + 1112, *(v1 + 1120));
  *(v1 + 1112) = v1 + 1120;
  *(v1 + 1120) = 0u;
  *(v1 + 1272) = 4;
  v9 = *(v1 + 696);
  v10 = (v1 + 704);
  if (v9 != (v1 + 704))
  {
    do
    {
      webrtc::Connection::Shutdown(v9[13]);
      v12 = v9[13];
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
    }

    while (v14 != v10);
  }

  std::__tree<webrtc::SocketAddress>::destroy(v1 + 696, *(v1 + 704));
  *(v1 + 696) = v10;
  *(v1 + 704) = 0u;
  result = *(v1 + 1328);
  if (result)
  {
    return (*(*result + 32))(result);
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnPort::ResolveTurnAddress(webrtc::SocketAddress const&)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(*a1 + 1088) + 32))(*(*a1 + 1088));
  if ((*(*v2 + 24))(v2) && (*(v1 + 888) | 2) == 3)
  {
    if ((webrtc::TurnPort::CreateTurnClientSocket(v1) & 1) == 0)
    {

      webrtc::TurnPort::OnAllocateError(v1);
    }
  }

  else
  {
    v3 = (v1 + 816);
    __dst[0] = 0;
    __dst[1] = 0;
    memset(v20, 0, sizeof(v20));
    v18 = 0;
    v19 = &unk_28828CE50;
    if (__dst != (v1 + 816))
    {
      if (*(v1 + 839) < 0)
      {
        std::string::__assign_no_alias<true>(__dst, *(v1 + 816), *(v1 + 824));
      }

      else
      {
        *__dst = *v3;
        v18 = *(v1 + 832);
      }
    }

    *v20 = *(v1 + 848);
    *&v20[4] = *(v1 + 852);
    v21 = *(v1 + 872);
    v23 = *(v1 + 880);
    v22 = *(v1 + 876);
    if ((*(*v2 + 24))(v2) || (v4 = (*(*v1 + 24))(v1), webrtc::Network::GetBestIP(v4, &__p), ((*(*v2 + 16))(v2, v15, __dst) & 1) == 0))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        (*(*v1 + 176))(&__p, v1);
        (*(*v2 + 24))(v2);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      *(v1 + 1096) = (*(*v2 + 24))(v2);
      webrtc::TurnPort::OnAllocateError(v1);
    }

    if (__dst != v3)
    {
      if (*(v1 + 839) < 0)
      {
        if (v18 >= 0)
        {
          v12 = __dst;
        }

        else
        {
          v12 = __dst[0];
        }

        if (v18 >= 0)
        {
          v13 = HIBYTE(v18);
        }

        else
        {
          v13 = __dst[1];
        }

        std::string::__assign_no_alias<false>((v1 + 816), v12, v13);
      }

      else if (v18 < 0)
      {
        std::string::__assign_no_alias<true>((v1 + 816), __dst[0], __dst[1]);
      }

      else
      {
        *v3 = *__dst;
        *(v1 + 832) = v18;
      }
    }

    *(v1 + 848) = *v20;
    *(v1 + 852) = *&v20[4];
    *(v1 + 872) = v21;
    *(v1 + 880) = v23;
    *(v1 + 876) = v22;
    (*(*v1 + 80))(v1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnPort::OnAllocateError(int,std::string_view)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 472;
  result = *(*a1 + 480);
  for (*(v1 + 496) = result; result != v2; result = *(v1 + 496))
  {
    v5 = *(result + 16);
    v4 = result + 16;
    *(v1 + 496) = *(v4 - 8);
    v5(v4, v1);
  }

  return result;
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnPort::OnRefreshError(void)::$_0 &&>(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 1120);
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(*a1 + 1112, *v2);
  *(v1 + 1112) = v2;
  *(v1 + 1120) = 0u;
  *(v1 + 1272) = 3;
  v3 = *(v1 + 696);
  if (v3 != (v1 + 704))
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      v19 = &unk_28828CE50;
      memset(v20, 0, 20);
      if (__p != v3 + 4)
      {
        if (*(v3 + 55) < 0)
        {
          std::string::__assign_no_alias<true>(__p, v3[4], v3[5]);
        }

        else
        {
          *__p = *(v3 + 2);
          v18 = v3[6];
        }
      }

      v20[0] = *(v3 + 16);
      *&v20[1] = *(v3 + 68);
      v21 = *(v3 + 44);
      v23 = *(v3 + 96);
      v22 = *(v3 + 23);
      v4 = v3[13];
      v24 = v4;
      v5 = *(v4 + 248);
      if (v5 && *v5 == 1 && *(v4 + 256))
      {
        v6 = *(v4 + 2560);
        *(v4 + 2560) = 3;
        if (v6 != 3 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
        {
          webrtc::Connection::ToString(v4, &v25);
          webrtc::webrtc_logging_impl::Log("\r\n\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/connection.cc");
          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }
        }

        webrtc::Connection::Prune(v4);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
        v14 = v3[1];
        if (v14)
        {
          do
          {
LABEL_20:
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
          goto LABEL_3;
        }
      }

      else
      {
        v14 = v3[1];
        if (v14)
        {
          goto LABEL_20;
        }
      }

      do
      {
        v15 = v3[2];
        v16 = *v15 == v3;
        v3 = v15;
      }

      while (!v16);
LABEL_3:
      v3 = v15;
    }

    while (v15 != (v1 + 704));
  }
}

void *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnPort::HandleConnectionDestroyed(webrtc::Connection *)::$_0 &&>(void *result)
{
  v1 = *result;
  v2 = *(*result + 1248);
  v3 = *(*result + 1256);
  if (v2 == v3)
  {
    goto LABEL_5;
  }

  do
  {
    if (*v2 == result[1])
    {
      goto LABEL_5;
    }

    ++v2;
  }

  while (v2 != v3);
  do
  {
    __break(1u);
LABEL_5:
    ;
  }

  while (v3 == v2);
  v4 = v2 + 1;
  if (v2 + 1 != v3)
  {
    do
    {
      result = *(v4 - 1);
      *(v4 - 1) = *v4;
      *v4 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++v4;
    }

    while (v4 != v3);
    v3 = *(v1 + 1256);
    v2 = v4 - 1;
  }

  while (v3 != v2)
  {
    v5 = *--v3;
    result = v5;
    *v3 = 0;
    if (v5)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(v1 + 1256) = v2;
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnAllocateRequest::OnErrorResponse(webrtc::StunMessage *)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 1280) >= 2uLL)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      (*(*v1 + 176))(v18, v1);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }

    webrtc::TurnPort::OnAllocateError(v1);
  }

  if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    (*(*v1 + 176))(v18, v1);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/turn_port.cc");
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  webrtc::callback_list_impl::CallbackListReceivers::RemoveReceivers((*(v1 + 1056) + 280), v1);
  if ((*(*v1 + 64))(v1))
  {
    *(v1 + 744) = 0;
  }

  else
  {
    v16 = *(v1 + 1056);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  *(v1 + 1056) = 0;
  if ((*(v1 + 1239) & 0x80000000) == 0)
  {
    *(v1 + 1216) = 0;
    *(v1 + 1239) = 0;
    if ((*(v1 + 1215) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    **(v1 + 1192) = 0;
    *(v1 + 1200) = 0;
    if ((*(v1 + 1191) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    **(v1 + 1168) = 0;
    *(v1 + 1176) = 0;
    goto LABEL_20;
  }

  **(v1 + 1216) = 0;
  *(v1 + 1224) = 0;
  if (*(v1 + 1215) < 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  *(v1 + 1192) = 0;
  *(v1 + 1215) = 0;
  if (*(v1 + 1191) < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  *(v1 + 1168) = 0;
  *(v1 + 1191) = 0;
LABEL_20:
  result = (*(*v1 + 80))(v1);
  ++*(v1 + 1280);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnAllocateRequest::OnTryAlternate(webrtc::StunMessage *,int)::$_0 &&>(uint64_t a1)
{
  v1 = *a1;
  if (!*(*a1 + 888))
  {
    operator new();
  }

  v2 = v1[132];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v1[132] = 0;
  v3 = *(*v1 + 80);

  return v3(v1);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::TurnRefreshRequest::OnResponse(webrtc::StunMessage *)::$_0 &&>(void *a1)
{
  v1 = *a1;
  if (*(*a1 + 1272) != 2)
  {
    (*(*v1 + 128))(*a1);
    webrtc::TurnPort::OnAllocateError(v1);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::StunRequest>>>>::destroy(v1 + 1112, *(v1 + 1120));
  *(v1 + 1112) = v1 + 1120;
  *(v1 + 1120) = 0u;
  *(v1 + 1272) = 4;
  v2 = *(v1 + 696);
  v3 = (v1 + 704);
  if (v2 != (v1 + 704))
  {
    do
    {
      webrtc::Connection::Shutdown(v2[13]);
      v6 = v2[13];
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  std::__tree<webrtc::SocketAddress>::destroy(v1 + 696, *(v1 + 704));
  *(v1 + 696) = v3;
  *(v1 + 704) = 0u;
  result = *(v1 + 1328);
  if (result)
  {
    v5 = *(*result + 32);

    return v5();
  }

  return result;
}

uint64_t webrtc::TurnPortFactory::Create@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = webrtc::TurnPort::Validate(a1);
  if (result)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

{
  result = webrtc::TurnPort::Validate(a1);
  if (result)
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t webrtc::TurnPort::Validate(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(v1 + 47) < 0 && *(v1 + 32) >= 0x1FEuLL)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v2, v3, v4, v5, v6, v7, v8, "Source/webrtc/p2p/base/turn_port.h");
    }

    return 0;
  }

  v9 = *(*(a1 + 64) + 56);
  v10 = 1;
  if (v9 <= 0x3FF && v9 != 53 && v9 != 80 && v9 != 443)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "Source/webrtc/p2p/base/turn_port.h");
    }

    return 0;
  }

  return v10;
}

void **webrtc::TypedCodecVendor::TypedCodecVendor(void **a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  (*(*a6 + 16))(__p, a6, "WebRTC-PayloadTypesInTransport", 30);
  v10 = HIBYTE(v131);
  if (SHIBYTE(v131) < 0)
  {
    v10 = __p[1];
  }

  if (v10 < 7)
  {
    v11 = 0;
    if (SHIBYTE(v131) < 0)
    {
      goto LABEL_31;
    }

LABEL_15:
    if (!v11)
    {
      goto LABEL_32;
    }

LABEL_16:
    if (a3)
    {
      if (a4)
      {
        v16 = (*(*a2 + 32))(a2);
        (*(*v16 + 56))(&v128);
        __p[0] = 0;
        __p[1] = 0;
        v131 = 0;
        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, v128, v129, 0x84BDA12F684BDA13 * ((v129 - v128) >> 3));
        v17 = *a1;
        if (*a1)
        {
          v18 = a1[1];
          v19 = *a1;
          if (v18 != v17)
          {
            v20 = v18 - 216;
            v21 = v18 - 216;
            v22 = v18 - 216;
            do
            {
              v23 = *v22;
              v22 -= 216;
              (*v23)(v21);
              v20 -= 216;
              v15 = v21 == v17;
              v21 = v22;
            }

            while (!v15);
            v19 = *a1;
          }

          a1[1] = v17;
          operator delete(v19);
        }

        *a1 = *__p;
        a1[2] = v131;
        __p[1] = 0;
        v131 = 0;
        __p[0] = 0;
        v24 = v128;
        if (v128)
        {
          v25 = v128;
          if (v129 != v128)
          {
            v26 = v129 - 216;
            v27 = (v129 - 216);
            v28 = (v129 - 216);
            do
            {
              v29 = *v28;
              v28 -= 27;
              (*v29)(v27);
              v26 -= 216;
              v15 = v27 == v24;
              v27 = v28;
            }

            while (!v15);
            goto LABEL_103;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v70 = (*(*a2 + 32))(a2);
        (*(*v70 + 64))(&v128);
        __p[0] = 0;
        __p[1] = 0;
        v131 = 0;
        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, v128, v129, 0x84BDA12F684BDA13 * ((v129 - v128) >> 3));
        v71 = *a1;
        if (*a1)
        {
          v72 = a1[1];
          v73 = *a1;
          if (v72 != v71)
          {
            v74 = v72 - 27;
            v75 = v72 - 27;
            v76 = v72 - 27;
            do
            {
              v77 = *v76;
              v76 -= 27;
              (*v77)(v75);
              v74 -= 27;
              v15 = v75 == v71;
              v75 = v76;
            }

            while (!v15);
            v73 = *a1;
          }

          a1[1] = v71;
          operator delete(v73);
        }

        *a1 = *__p;
        a1[2] = v131;
        __p[1] = 0;
        v131 = 0;
        __p[0] = 0;
        v24 = v128;
        if (v128)
        {
          v25 = v128;
          if (v129 != v128)
          {
            v78 = v129 - 216;
            v79 = (v129 - 216);
            v80 = (v129 - 216);
            do
            {
              v81 = *v80;
              v80 -= 27;
              (*v81)(v79);
              v78 -= 216;
              v15 = v79 == v24;
              v79 = v80;
            }

            while (!v15);
            goto LABEL_103;
          }

          goto LABEL_104;
        }
      }

      return a1;
    }

    v42 = *(*(*a2 + 24))(a2);
    if (a4)
    {
      if ((*(v42 + 72))())
      {
        v43 = (*(*a2 + 24))(a2);
        v44 = (*(*v43 + 72))(v43);
        (*(*v44 + 32))(&v126);
        __p[0] = 0;
        __p[1] = 0;
        v131 = 0;
        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, v128, v129, 0x84BDA12F684BDA13 * ((v129 - v128) >> 3));
        v45 = *a1;
        if (*a1)
        {
          v46 = a1[1];
          v47 = *a1;
          if (v46 != v45)
          {
            v48 = v46 - 27;
            v49 = v46 - 27;
            v50 = v46 - 27;
            do
            {
              v51 = *v50;
              v50 -= 27;
              (*v51)(v49);
              v48 -= 27;
              v15 = v49 == v45;
              v49 = v50;
            }

            while (!v15);
            v47 = *a1;
          }

          a1[1] = v45;
          operator delete(v47);
        }

        *a1 = *__p;
        a1[2] = v131;
        __p[1] = 0;
        v131 = 0;
        __p[0] = 0;
        v52 = v128;
        if (v128)
        {
          v53 = v128;
          if (v129 != v128)
          {
            v54 = v129 - 216;
            v55 = (v129 - 216);
            v56 = (v129 - 216);
            do
            {
              v57 = *v56;
              v56 -= 27;
              (*v57)(v55);
              v54 -= 216;
              v15 = v55 == v52;
              v55 = v56;
            }

            while (!v15);
            v53 = v128;
          }

          v129 = v52;
          operator delete(v53);
        }

        v58 = v126;
        if (!v126)
        {
          return a1;
        }

        v59 = v127;
        v25 = v126;
        if (v127 == v126)
        {
          goto LABEL_139;
        }

        do
        {
          v60 = v59;
          v59 -= 12;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v60 - 7), *(v60 - 6));
          if (*(v60 - 73) < 0)
          {
            operator delete(*v59);
          }
        }

        while (v59 != v58);
        goto LABEL_138;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return a1;
      }
    }

    else
    {
      if ((*(v42 + 80))())
      {
        v94 = (*(*a2 + 24))(a2);
        v95 = (*(*v94 + 80))(v94);
        (*(*v95 + 32))(&v126);
        __p[0] = 0;
        __p[1] = 0;
        v131 = 0;
        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, v128, v129, 0x84BDA12F684BDA13 * ((v129 - v128) >> 3));
        v96 = *a1;
        if (*a1)
        {
          v97 = a1[1];
          v98 = *a1;
          if (v97 != v96)
          {
            v99 = v97 - 27;
            v100 = v97 - 27;
            v101 = v97 - 27;
            do
            {
              v102 = *v101;
              v101 -= 27;
              (*v102)(v100);
              v99 -= 27;
              v15 = v100 == v96;
              v100 = v101;
            }

            while (!v15);
            v98 = *a1;
          }

          a1[1] = v96;
          operator delete(v98);
        }

        *a1 = *__p;
        a1[2] = v131;
        __p[1] = 0;
        v131 = 0;
        __p[0] = 0;
        v103 = v128;
        if (v128)
        {
          v104 = v128;
          if (v129 != v128)
          {
            v105 = v129 - 216;
            v106 = (v129 - 216);
            v107 = (v129 - 216);
            do
            {
              v108 = *v107;
              v107 -= 27;
              (*v108)(v106);
              v105 -= 216;
              v15 = v106 == v103;
              v106 = v107;
            }

            while (!v15);
            v104 = v128;
          }

          v129 = v103;
          operator delete(v104);
        }

        v58 = v126;
        if (!v126)
        {
          return a1;
        }

        v109 = v127;
        v25 = v126;
        if (v127 == v126)
        {
LABEL_139:
          v127 = v58;
          goto LABEL_105;
        }

        do
        {
          v110 = v109;
          v109 -= 12;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v110 - 7), *(v110 - 6));
          if (*(v110 - 73) < 0)
          {
            operator delete(*v109);
          }
        }

        while (v109 != v58);
LABEL_138:
        v25 = v126;
        goto LABEL_139;
      }

      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        return a1;
      }
    }

    webrtc::webrtc_logging_impl::Log("\r\t", v119, v120, v121, v122, v123, v124, v125, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/typed_codec_vendor.cc");
    return a1;
  }

  v12 = __p[0];
  if (SHIBYTE(v131) >= 0)
  {
    v12 = __p;
  }

  v13 = *v12;
  v14 = *(v12 + 3);
  v15 = v13 == 1650552389 && v14 == 1684368482;
  v11 = v15;
  if ((SHIBYTE(v131) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_31:
  operator delete(__p[0]);
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_32:
  if (!a3)
  {
    if (a4)
    {
      v61 = (*(*a2 + 24))(a2);
      v62 = (*(*v61 + 56))(v61);
      __p[1] = 0;
      v131 = 0;
      __p[0] = 0;
      if (__p != v62)
      {
        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, *v62, v62[1], 0x84BDA12F684BDA13 * ((v62[1] - *v62) >> 3));
      }

      v63 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      v64 = a1[1];
      v65 = *a1;
      if (v64 == v63)
      {
LABEL_135:
        a1[1] = v63;
        operator delete(v65);
LABEL_136:
        *a1 = *__p;
        a1[2] = v131;
        return a1;
      }

      v66 = v64 - 27;
      v67 = v64 - 27;
      v68 = v64 - 27;
      do
      {
        v69 = *v68;
        v68 -= 27;
        (*v69)(v67);
        v66 -= 27;
        v15 = v67 == v63;
        v67 = v68;
      }

      while (!v15);
    }

    else
    {
      v111 = (*(*a2 + 24))(a2);
      v112 = (*(*v111 + 64))(v111);
      __p[1] = 0;
      v131 = 0;
      __p[0] = 0;
      if (__p != v112)
      {
        std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, *v112, v112[1], 0x84BDA12F684BDA13 * ((v112[1] - *v112) >> 3));
      }

      v63 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      v113 = a1[1];
      v65 = *a1;
      if (v113 == v63)
      {
        goto LABEL_135;
      }

      v114 = v113 - 27;
      v115 = v113 - 27;
      v116 = v113 - 27;
      do
      {
        v117 = *v116;
        v116 -= 27;
        (*v117)(v115);
        v114 -= 27;
        v15 = v115 == v63;
        v115 = v116;
      }

      while (!v15);
    }

    v65 = *a1;
    goto LABEL_135;
  }

  if (a4)
  {
    v30 = (*(*a2 + 32))(a2);
    (*(*v30 + 56))(&v128);
    __p[0] = 0;
    __p[1] = 0;
    v131 = 0;
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, v128, v129, 0x84BDA12F684BDA13 * ((v129 - v128) >> 3));
    v31 = *a1;
    if (*a1)
    {
      v32 = a1[1];
      v33 = *a1;
      if (v32 != v31)
      {
        v34 = v32 - 27;
        v35 = v32 - 27;
        v36 = v32 - 27;
        do
        {
          v37 = *v36;
          v36 -= 27;
          (*v37)(v35);
          v34 -= 27;
          v15 = v35 == v31;
          v35 = v36;
        }

        while (!v15);
        v33 = *a1;
      }

      a1[1] = v31;
      operator delete(v33);
    }

    *a1 = *__p;
    a1[2] = v131;
    __p[1] = 0;
    v131 = 0;
    __p[0] = 0;
    v24 = v128;
    if (v128)
    {
      v25 = v128;
      if (v129 != v128)
      {
        v38 = v129 - 216;
        v39 = (v129 - 216);
        v40 = (v129 - 216);
        do
        {
          v41 = *v40;
          v40 -= 27;
          (*v41)(v39);
          v38 -= 216;
          v15 = v39 == v24;
          v39 = v40;
        }

        while (!v15);
LABEL_103:
        v25 = v128;
        goto LABEL_104;
      }

      goto LABEL_104;
    }
  }

  else
  {
    v82 = (*(*a2 + 32))(a2);
    (*(*v82 + 64))(&v128);
    __p[0] = 0;
    __p[1] = 0;
    v131 = 0;
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(__p, v128, v129, 0x84BDA12F684BDA13 * ((v129 - v128) >> 3));
    v83 = *a1;
    if (*a1)
    {
      v84 = a1[1];
      v85 = *a1;
      if (v84 != v83)
      {
        v86 = v84 - 27;
        v87 = v84 - 27;
        v88 = v84 - 27;
        do
        {
          v89 = *v88;
          v88 -= 27;
          (*v89)(v87);
          v86 -= 27;
          v15 = v87 == v83;
          v87 = v88;
        }

        while (!v15);
        v85 = *a1;
      }

      a1[1] = v83;
      operator delete(v85);
    }

    *a1 = *__p;
    a1[2] = v131;
    __p[1] = 0;
    v131 = 0;
    __p[0] = 0;
    v24 = v128;
    if (v128)
    {
      v25 = v128;
      if (v129 != v128)
      {
        v90 = v129 - 216;
        v91 = (v129 - 216);
        v92 = (v129 - 216);
        do
        {
          v93 = *v92;
          v92 -= 27;
          (*v93)(v91);
          v90 -= 216;
          v15 = v91 == v24;
          v91 = v92;
        }

        while (!v15);
        goto LABEL_103;
      }

LABEL_104:
      v129 = v24;
LABEL_105:
      operator delete(v25);
    }
  }

  return a1;
}

void webrtc::anonymous namespace::CollectAudioCodecs(uint64_t *a1, __int128 **a2)
{
  v90 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  LODWORD(v55[0]) = 8000;
  BYTE4(v55[0]) = 0;
  v4 = v54;
  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  if (!*std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(&v53, v54, &v73, v61, v55))
  {
    operator new();
  }

  LODWORD(v73) = 8000;
  BYTE4(v73) = 0;
  LODWORD(v74) = 48000;
  BYTE4(v74) = 0;
  v52[0] = 0;
  v52[1] = 0;
  v51 = v52;
  if (!*std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(&v51, v52, v61, v55, &v73))
  {
    operator new();
  }

  if (!*std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(&v51, v52, v61, v55, &v74))
  {
    operator new();
  }

  v11 = *a2;
  v50 = a2[1];
  if (*a2 != v50)
  {
    v12 = v61 <= "transport-cc" && &v61[1] + 4 > "transport-cc";
    v13 = v12;
    v49 = v13;
    v15 = v55 <= &webrtc::kRedCodecName && v55 + 3 > &webrtc::kRedCodecName;
    v48 = v15;
    do
    {
      v16 = *(v11 + 6);
      v17 = *(v11 + 4);
      v73 = &unk_288291428;
      v74 = 0xFFFFFFFF00000000;
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v75, *v11, *(v11 + 1));
      }

      else
      {
        v18 = *v11;
        v75.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&v75.__r_.__value_.__l.__data_ = v18;
      }

      v76 = v16;
      v77 = 0;
      v78 = v17;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v85 = 0;
      v86 = 0;
      v84 = &v85;
      v88 = 0;
      v89 = 0;
      v87 = 0;
      if (&v84 != (v11 + 40))
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v84, *(v11 + 5), v11 + 6);
      }

      if (*(v11 + 93) == 1)
      {
        BYTE7(v62) = 12;
        if (v49)
        {
          goto LABEL_124;
        }

        v4 &= 0xFFFFFFFFFFFFFF00;
        strcpy(v61, "transport-cc");
        *(&v62 + 1) = v4;
        HIBYTE(v64) = 0;
        webrtc::FeedbackParams::Add(&v87, v61, v5, v6, v7, v8, v9, v10);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(*(&v62 + 1));
          if (SBYTE7(v62) < 0)
          {
LABEL_44:
            operator delete(v61[0]);
            if (*(v11 + 92) != 1)
            {
              goto LABEL_45;
            }

            goto LABEL_34;
          }
        }

        else if (SBYTE7(v62) < 0)
        {
          goto LABEL_44;
        }
      }

      if (*(v11 + 92) != 1)
      {
        goto LABEL_45;
      }

LABEL_34:
      v19 = v54[0];
      if (v54[0])
      {
        v20 = *(v11 + 6);
        v21 = v54;
        do
        {
          v22 = *(v19 + 7);
          v12 = v22 <= v20;
          v23 = v22 > v20;
          if (v12)
          {
            v21 = v19;
          }

          v19 = v19[v23];
        }

        while (v19);
        if (v21 != v54 && v20 <= *(v21 + 7))
        {
          *(v21 + 32) = 1;
        }
      }

LABEL_45:
      v24 = v52[0];
      if (v52[0])
      {
        v25 = *(v11 + 6);
        v26 = v52;
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
        if (v26 != v52 && v25 <= *(v26 + 7))
        {
          *(v26 + 32) = 1;
        }
      }

      v29 = a1[1];
      if (v29 >= a1[2])
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
      }

      if (!v29)
      {
        goto LABEL_124;
      }

      a1[1] = webrtc::Codec::Codec(v29, &v73) + 216;
      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v75.__r_.__value_.__l.__size_ != 4)
        {
          goto LABEL_23;
        }

        v30 = v75.__r_.__value_.__r.__words[0];
      }

      else
      {
        v30 = &v75;
        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) != 4)
        {
          goto LABEL_23;
        }
      }

      if (LODWORD(v30->__r_.__value_.__l.__data_) == *"opus")
      {
        HIBYTE(v56) = 3;
        if (v48)
        {
          goto LABEL_124;
        }

        strcpy(v55, "red");
        v57 = 48000;
        v60[0] = 0;
        v60[1] = 0;
        v58 = 2;
        v59 = v60;
        v61[0] = &unk_288291428;
        v63 = v56;
        v62 = *v55;
        v61[1] = 0xFFFFFFFF00000000;
        v64 = 48000;
        v65 = 2;
        LOBYTE(v66) = 0;
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        memset(v72, 0, sizeof(v72));
        v71 = v72;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v71, v60, v60);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v59, v60[0]);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55[0]);
          v31 = a1[1];
          if (v31 >= a1[2])
          {
LABEL_22:
            std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
          }
        }

        else
        {
          v31 = a1[1];
          if (v31 >= a1[2])
          {
            goto LABEL_22;
          }
        }

        if (!v31)
        {
          goto LABEL_124;
        }

        a1[1] = webrtc::Codec::Codec(v31, v61) + 216;
        webrtc::Codec::~Codec(v61);
      }

LABEL_23:
      webrtc::Codec::~Codec(&v73);
      v11 += 6;
    }

    while (v11 != v50);
  }

  v32 = v53;
  if (v53 != v54)
  {
    if (v61 > "CN" || v61 + 2 <= "CN")
    {
      while (1)
      {
        if (*(v32 + 32) == 1)
        {
          v33 = *(v32 + 7);
          BYTE7(v62) = 2;
          strcpy(v61, "CN");
          DWORD2(v62) = v33;
          v65 = 0;
          v66 = 0;
          v63 = 1;
          v64 = &v65;
          v73 = &unk_288291428;
          v74 = 0xFFFFFFFF00000000;
          *&v75.__r_.__value_.__l.__data_ = *v61;
          v75.__r_.__value_.__r.__words[2] = v62;
          v76 = v33;
          v77 = 0;
          v78 = 1;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v85 = 0;
          v86 = 0;
          v84 = &v85;
          v88 = 0;
          v89 = 0;
          v87 = 0;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v84, &v65, &v65);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v64, v65);
          if (SBYTE7(v62) < 0)
          {
            operator delete(v61[0]);
            v34 = a1[1];
            if (v34 >= a1[2])
            {
LABEL_80:
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
            }
          }

          else
          {
            v34 = a1[1];
            if (v34 >= a1[2])
            {
              goto LABEL_80;
            }
          }

          if (!v34)
          {
            goto LABEL_124;
          }

          a1[1] = webrtc::Codec::Codec(v34, &v73) + 216;
          webrtc::Codec::~Codec(&v73);
        }

        v35 = v32[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v32[2];
            v37 = *v36 == v32;
            v32 = v36;
          }

          while (!v37);
        }

        v32 = v36;
        if (v36 == v54)
        {
          goto LABEL_95;
        }
      }
    }

    while (*(v32 + 32) != 1)
    {
      v38 = v32[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v32[2];
          v37 = *v39 == v32;
          v32 = v39;
        }

        while (!v37);
      }

      v32 = v39;
      if (v39 == v54)
      {
        goto LABEL_95;
      }
    }

LABEL_124:
    __break(1u);
  }

LABEL_95:
  v40 = v51;
  if (v51 != v52)
  {
    if (v61 > "telephone-event" || &v61[1] + 7 <= "telephone-event")
    {
      while (1)
      {
        if (*(v40 + 32) == 1)
        {
          v42 = *(v40 + 7);
          BYTE7(v62) = 15;
          strcpy(v61, "telephone-event");
          DWORD2(v62) = v42;
          v65 = 0;
          v66 = 0;
          v63 = 1;
          v64 = &v65;
          v73 = &unk_288291428;
          v74 = 0xFFFFFFFF00000000;
          *&v75.__r_.__value_.__l.__data_ = *v61;
          v75.__r_.__value_.__r.__words[2] = v62;
          v76 = v42;
          v77 = 0;
          v78 = 1;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v85 = 0;
          v86 = 0;
          v84 = &v85;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v84, &v65, &v65);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v64, v65);
          if (SBYTE7(v62) < 0)
          {
            operator delete(v61[0]);
            v43 = a1[1];
            if (v43 >= a1[2])
            {
LABEL_108:
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
            }
          }

          else
          {
            v43 = a1[1];
            if (v43 >= a1[2])
            {
              goto LABEL_108;
            }
          }

          if (!v43)
          {
            goto LABEL_124;
          }

          a1[1] = webrtc::Codec::Codec(v43, &v73) + 216;
          webrtc::Codec::~Codec(&v73);
        }

        v44 = v40[1];
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = v40[2];
            v37 = *v45 == v40;
            v40 = v45;
          }

          while (!v37);
        }

        v40 = v45;
        if (v45 == v52)
        {
          goto LABEL_123;
        }
      }
    }

    while (*(v40 + 32) != 1)
    {
      v46 = v40[1];
      if (v46)
      {
        do
        {
          v47 = v46;
          v46 = *v46;
        }

        while (v46);
      }

      else
      {
        do
        {
          v47 = v40[2];
          v37 = *v47 == v40;
          v40 = v47;
        }

        while (!v37);
      }

      v40 = v47;
      if (v47 == v52)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_124;
  }

LABEL_123:
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v51, v52[0]);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v53, v54[0]);
}

uint64_t *std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::greater<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 > v7))
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
    if (*(v10 + 7) > *a5)
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
          v20 = *(v18 + 28);
          if (v16 <= v20)
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

        if (v20 <= v16)
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

  else if (v7 <= v6)
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

    if (v13 == v5 || v6 > *(v13 + 7))
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
            v24 = *(v22 + 28);
            if (v6 <= v24)
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

          if (v24 <= v6)
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

void webrtc::UlpfecGenerator::UlpfecGenerator(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *a1 = &unk_2882A17D0;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  *(a1 + 48) = a3;
  *(a1 + 52) = a4;
  *(a1 + 56) = 0;
  webrtc::ForwardErrorCorrection::CreateUlpfec(0);
}

uint64_t webrtc::UlpfecGenerator::UlpfecGenerator(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *a1 = &unk_2882A17D0;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6 = *a3;
  *a3 = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = a1 + 80;
  *(a1 + 88) = a1 + 80;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 320;
  *(a1 + 328) = a1 + 320;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0x100000000;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  pthread_mutexattr_init(&v8);
  pthread_mutexattr_setpolicy_np(&v8, 3);
  pthread_mutex_init((a1 + 384), &v8);
  pthread_mutexattr_destroy(&v8);
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = -1;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0x45FA000000000000;
  *(a1 + 560) = vdupq_n_s64(0x3E8uLL);
  return a1;
}

void webrtc::UlpfecGenerator::~UlpfecGenerator(webrtc::UlpfecGenerator *this)
{
  *this = &unk_2882A17D0;
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 60);
  pthread_mutex_destroy(this + 6);
  if (*(this + 42))
  {
    v2 = *(this + 41);
    v3 = *(*(this + 40) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 42) = 0;
    if (v2 != (this + 320))
    {
      do
      {
        v5 = *(v2 + 1);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (this + 320));
    }
  }

  if (*(this + 312) == 1)
  {
    v6 = *(this + 35);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 24);
    if (v7 && atomic_fetch_add((v7 + 24), 0xFFFFFFFF) == 1)
    {
      v8 = *(v7 + 16);
      *(v7 + 16) = 0;
      if (v8)
      {
        MEMORY[0x2743DA520](v8, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v7, 0x1010C40EE34DA14);
    }

    v9 = *(this + 20);
    if (v9)
    {
      *(this + 21) = v9;
      operator delete(v9);
    }
  }

  if (*(this + 12))
  {
    v10 = *(this + 11);
    v11 = *(*(this + 10) + 8);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    *(this + 12) = 0;
    if (v10 != (this + 80))
    {
      do
      {
        v16 = *(v10 + 1);
        v15 = *(v10 + 2);
        *(v10 + 2) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        operator delete(v10);
        v10 = v16;
      }

      while (v16 != (this + 80));
    }
  }

  v13 = *(this + 9);
  *(this + 9) = 0;
  if (v13)
  {
    webrtc::ForwardErrorCorrection::~ForwardErrorCorrection(v13);
    MEMORY[0x2743DA540]();
  }

  v14 = *(this + 1);
  if (v14)
  {
    if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 8))(v14);
    }
  }
}

{
  webrtc::UlpfecGenerator::~UlpfecGenerator(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::UlpfecGenerator::SetProtectionParameters(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  pthread_mutex_lock((a1 + 384));
  if (*(a1 + 472) == 1)
  {
    *(a1 + 472) = 0;
  }

  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 2);
  *(a1 + 448) = *a2;
  *(a1 + 456) = v6;
  *(a1 + 460) = v7;
  *(a1 + 468) = v8;
  *(a1 + 472) = 1;

  return pthread_mutex_unlock((a1 + 384));
}

void webrtc::UlpfecGenerator::AddPacketAndGenerateFec(pthread_mutex_t *this, const webrtc::RtpPacketToSend *a2)
{
  pthread_mutex_lock(this + 6);
  if (this[7].__opaque[16] != 1)
  {
    pthread_mutex_unlock(this + 6);
    v5 = *(a2 + 185);
    if (v5 != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    this[5].__opaque[48] = v5;
    v6 = *a2;
    v7 = &this[1].__opaque[8];
    if (*&this[1].__opaque[24] > 0x2FuLL)
    {
      goto LABEL_13;
    }

LABEL_12:
    operator new();
  }

  *&this[5].__opaque[24] = *&this[7].__sig;
  *&this[5].__opaque[40] = *&this[7].__opaque[8];
  this[7].__opaque[16] = 0;
  v8 = 352;
  if (this[5].__opaque[48])
  {
    v8 = 364;
  }

  if (*(&this->__sig + v8) <= 80)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  *&this[5].__opaque[20] = v9;
  pthread_mutex_unlock(this + 6);
  v5 = *(a2 + 185);
  if (v5 == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = *a2;
  v7 = &this[1].__opaque[8];
  if (*&this[1].__opaque[24] <= 0x2FuLL)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v6)
  {
    v10 = *&this[5].__opaque[16] + 1;
    *&this[5].__opaque[16] = v10;
    v11 = 352;
    if (this[5].__opaque[48])
    {
      v11 = 364;
    }

    v12 = this + v11;
    v13 = *(&this->__sig + v11);
    v14 = *(v12 + 2);
    if (v10 >= *(v12 + 1))
    {
      goto LABEL_29;
    }

    v15 = *&this[1].__opaque[24];
    v16 = (v13 * v15) != v13 * v15 || v13 <= 0;
    v17 = ((v13 * v15 + 128) & 0xFFFFFF00);
    if (!v16)
    {
      v17 = 256;
    }

    if ((v17 / v15 - v13) <= 49)
    {
      v18 = v15 / v10;
      v19 = *&this[5].__opaque[20];
      v16 = v19 < v15;
      v20 = v19 <= v15;
      v21 = v16;
      if (v18 >= 2.0)
      {
        v20 = v21;
      }

      if (v20)
      {
LABEL_29:
        webrtc::ForwardErrorCorrection::EncodeFec(*this[1].__opaque, v7, v13, 0, 0, v14, &this[5].__sig, v4);
        if (!*&this[5].__opaque[8])
        {

          webrtc::UlpfecGenerator::ResetState(this);
        }
      }
    }
  }
}

void webrtc::UlpfecGenerator::ResetState(webrtc::UlpfecGenerator *this)
{
  if (*(this + 12))
  {
    v2 = this + 80;
    v3 = *(this + 11);
    v4 = *(*(this + 10) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 12) = 0;
    if (v3 != this + 80)
    {
      do
      {
        v15 = *(v3 + 1);
        v14 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        operator delete(v3);
        v3 = v15;
      }

      while (v15 != v2);
    }
  }

  if (*(this + 312) == 1)
  {
    v6 = *(this + 35);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 24);
    if (v7 && atomic_fetch_add((v7 + 24), 0xFFFFFFFF) == 1)
    {
      v8 = *(v7 + 16);
      *(v7 + 16) = 0;
      if (v8)
      {
        MEMORY[0x2743DA520](v8, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v7, 0x1010C40EE34DA14);
    }

    v9 = *(this + 20);
    if (v9)
    {
      *(this + 21) = v9;
      operator delete(v9);
    }

    *(this + 312) = 0;
  }

  if (*(this + 42))
  {
    v10 = *(this + 41);
    v11 = *(*(this + 40) + 8);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    *(this + 42) = 0;
    if (v10 != (this + 320))
    {
      do
      {
        v13 = *(v10 + 1);
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != (this + 320));
    }
  }

  *(this + 86) = 0;
  *(this + 376) = 0;
}

uint64_t webrtc::UlpfecGenerator::GetFecPackets@<X0>(uint64_t this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  if (*(this + 336))
  {
    v7 = this;
    if ((*(this + 312) & 1) == 0)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/ulpfec_generator.cc", 213, "last_media_packet_.has_value()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a2, a3, a4, a5, v14);
      goto LABEL_24;
    }

    *(this + 128) = 0;
    webrtc::CopyOnWriteBuffer::SetSize((this + 192), *(this + 120));
    v8 = *(v7 + 192);
    if (v8)
    {
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity((v7 + 192), *(v8 + 8) - *(v7 + 200));
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v9 = *(v7 + 336);
    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

LABEL_24:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (*(v7 + 328) != v7 + 320)
    {
      if (*(v7 + 312))
      {
        operator new();
      }

      __break(1u);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    webrtc::UlpfecGenerator::ResetState(v7);
    pthread_mutex_lock((v7 + 384));
    v10 = (*(**(v7 + 24) + 16))(*(v7 + 24));
    v11 = v10 / 0x3E8uLL;
    if (v10 % 0x3E8uLL > 0x1F3)
    {
      ++v11;
    }

    if (-v10 % 0x3E8uLL <= 0x1F4)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (v10 < 0)
    {
      v13 = v12 - -v10 / 0x3E8uLL;
    }

    else
    {
      v13 = v11;
    }

    webrtc::RateStatistics::Update((v7 + 480), 0, v13);
    return pthread_mutex_unlock((v7 + 384));
  }

  else
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

  return this;
}

unint64_t webrtc::UlpfecGenerator::CurrentFecRate(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 6);
  v2 = (*(**&this->__opaque[16] + 16))(*&this->__opaque[16]);
  v3 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v3;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 < 0)
  {
    v5 = v4 - -v2 / 0x3E8uLL;
  }

  else
  {
    v5 = v3;
  }

  v6 = webrtc::RateStatistics::Rate(&this[7].__opaque[24], v5);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock(this + 6);
  return v8;
}

BOOL webrtc::UlpfecHeaderReader::ReadFecHeader(webrtc::UlpfecHeaderReader *this, webrtc::ForwardErrorCorrection::ReceivedFecPacket *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 20);
  v4 = v3[1];
  if (v4)
  {
    webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(v3 + 1, *(v4 + 8) - v3[2]);
    v5 = *(v3[1] + 16) + v3[2];
    v6 = *(*(a2 + 20) + 24);
    if (v6 < 0xC)
    {
      return v6 > 0xB;
    }
  }

  else
  {
    v5 = 0;
    v6 = v3[3];
    if (v6 < 0xC)
    {
      return v6 > 0xB;
    }
  }

  v7 = 6;
  if ((*v5 & 0x40) == 0)
  {
    v7 = 2;
  }

  v8 = 18;
  if ((*v5 & 0x40) == 0)
  {
    v8 = 14;
  }

  *(a2 + 5) = v8;
  v9 = bswap32(*(v5 + 2));
  LODWORD(v11) = *(a2 + 8);
  WORD2(v11) = HIWORD(v9);
  *(&v11 + 1) = 12;
  v12 = v7;
  absl::inlined_vector_internal::Storage<webrtc::ForwardErrorCorrection::ProtectedStream,4ul,std::allocator<webrtc::ForwardErrorCorrection::ProtectedStream>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::ForwardErrorCorrection::ProtectedStream>,webrtc::ForwardErrorCorrection::ProtectedStream const*>>(a2 + 6, &v11, 1uLL);
  *(a2 + 19) = __rev16(*(v5 + 10));
  *(v5 + 2) = *(v5 + 8);
  return v6 > 0xB;
}

uint64_t webrtc::UlpfecHeaderWriter::FecHeaderSize(webrtc::UlpfecHeaderWriter *this, unint64_t a2)
{
  if (a2 >= 3)
  {
    return 18;
  }

  else
  {
    return 14;
  }
}

void webrtc::UlpfecHeaderWriter::FinalizeFecHeader(uint64_t a1, uint64_t a2, uint64_t a3, webrtc::CopyOnWriteBuffer *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 1)
  {
    v9 = *(a2 + 4);
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(this + 1);
    if (v12)
    {
      v13 = a1;
      webrtc::CopyOnWriteBuffer::UnshareAndEnsureCapacity(this + 1, *(v12 + 8) - *(this + 2));
      a1 = v13;
      v14 = *(*(this + 1) + 16) + *(this + 2);
    }

    else
    {
      v14 = 0;
    }

    if (v11 == 6)
    {
      v15 = *v14 & 0x3F | 0x40;
    }

    else
    {
      v15 = *v14 & 0x3F;
    }

    *v14 = v15;
    *(v14 + 8) = *(v14 + 2);
    *(v14 + 2) = HIBYTE(v9);
    *(v14 + 3) = v9;
    *(v14 + 10) = bswap32(*(this + 6) - (*(*a1 + 24))(a1, v11)) >> 16;

    memcpy((v14 + 12), v10, v11);
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/ulpfec_header_reader_writer.cc", 117, "protected_streams.size() == 1", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a3);
    webrtc::UlpfecReceiver::~UlpfecReceiver(v16);
  }
}

void webrtc::UlpfecReceiver::~UlpfecReceiver(webrtc::UlpfecReceiver *this)
{
  if (*(this + 14) != 0x8000000000000000)
  {
    v2 = (*(**(this + 1) + 16))(*(this + 1));
    v3 = *(this + 14);
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = v2 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0x8000000000000000;
    if (v5 || (v2 != 0x8000000000000000 ? (v6 = v3 == 0x7FFFFFFFFFFFFFFFLL) : (v6 = 1), !v6 && (v4 = v2 - v3, ((v2 - v3) & 0x8000000000000000) == 0)))
    {
      v7 = v4 % 0xF4240 <= 0x7A11F ? v4 / 0xF4240 : v4 / 0xF4240 + 1;
      if (v7 >= 0xA && *(this + 1) != -1)
      {
        explicit = atomic_load_explicit(&webrtc::UlpfecReceiver::~UlpfecReceiver()::atomic_histogram_pointer, memory_order_acquire);
        if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v9 = 0, atomic_compare_exchange_strong(&webrtc::UlpfecReceiver::~UlpfecReceiver()::atomic_histogram_pointer, &v9, explicit), explicit))
        {
          webrtc::metrics::HistogramAdd(explicit, 8 * *(this + 11) / v7 / 0x3E8);
        }
      }
    }
  }

  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v11 != v10)
  {
    v13 = *--v11;
    v12 = v13;
    *v11 = 0;
    if (v13)
    {
      v14 = *(v12 + 40);
      if (v14)
      {
        (*(*v14 + 24))(v14);
      }

      MEMORY[0x2743DA540](v12, 0x1020C402EEA4C90);
    }
  }

  *(this + 5) = v10;
  v15 = this + 56;
  webrtc::ForwardErrorCorrection::ResetState(*(this + 3), this + 7);
  if (*(this + 9))
  {
    v16 = *(this + 8);
    v17 = *(*(this + 7) + 8);
    v18 = *v16;
    *(v18 + 8) = v17;
    *v17 = v18;
    *(this + 9) = 0;
    if (v16 != v15)
    {
      do
      {
        v20 = *(v16 + 1);
        v19 = *(v16 + 2);
        *(v16 + 2) = 0;
        if (v19)
        {
          v21 = *(v19 + 16);
          if (v21)
          {
            (*(*v21 + 24))(v21);
          }

          MEMORY[0x2743DA540](v19, 0x1020C407D5D75B9);
        }

        operator delete(v16);
        v16 = v20;
      }

      while (v20 != v15);
    }
  }

  v22 = *(this + 4);
  if (v22)
  {
    v23 = *(this + 5);
    v24 = *(this + 4);
    if (v23 != v22)
    {
      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          v27 = *(v25 + 40);
          if (v27)
          {
            (*(*v27 + 24))(v27);
          }

          MEMORY[0x2743DA540](v25, 0x1020C402EEA4C90);
        }
      }

      while (v23 != v22);
      v24 = *(this + 4);
    }

    *(this + 5) = v22;
    operator delete(v24);
  }

  v28 = *(this + 3);
  *(this + 3) = 0;
  if (v28)
  {
    webrtc::ForwardErrorCorrection::~ForwardErrorCorrection(v28);
    MEMORY[0x2743DA540]();
  }
}

uint64_t webrtc::UlpfecReceiver::AddReceivedRedPacket(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 12) == *a1)
  {
    v2 = *(a2 + 24);
    if (v2 + *(a2 + 16) + *(a2 + 2) < 0x5DD)
    {
      if (v2)
      {
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_6:
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/ulpfec_receiver.cc");
  }

  return 0;
}

void webrtc::UlpfecReceiver::ProcessReceivedFec(webrtc::UlpfecReceiver *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  v2 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v1 == v2)
  {
    if (!v1)
    {
      return;
    }

    goto LABEL_22;
  }

  v14 = 0;
  v4 = 0;
  v5 = (this + 56);
  v13 = v1;
  do
  {
    v6 = *v1;
    if ((*(*v1 + 8) & 1) == 0)
    {
      webrtc::RtpPacket::RtpPacket(v15, (v6 + 10));
    }

    if ((*(v6 + 9) & 1) == 0)
    {
      v7 = webrtc::ForwardErrorCorrection::DecodeFec(*(this + 3), v6, v5);
      v14 = (*v1 + 10);
      v4 += v7;
    }

    ++v1;
  }

  while (v1 != v2);
  if (v4)
  {
    for (i = *(this + 8); i != v5; i = i[1])
    {
      v9 = i[2];
      if ((*(v9 + 9) & 1) == 0)
      {
        ++*(this + 13);
        *(v9 + 9) = 1;
        webrtc::RtpPacket::RtpPacket(v15, v14);
      }
    }
  }

  v1 = v13;
  if (v13)
  {
    do
    {
      v11 = *--v2;
      v10 = v11;
      *v2 = 0;
      if (v11)
      {
        v12 = *(v10 + 40);
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        MEMORY[0x2743DA540](v10, 0x1020C402EEA4C90);
      }
    }

    while (v2 != v13);
LABEL_22:
    operator delete(v1);
  }
}

uint64_t webrtc::UnderrunOptimizer::Update(uint64_t this, int a2)
{
  v3 = this;
  if (*(this + 80) == 1)
  {
    if (!*(this + 88))
    {
      operator new();
    }

    if (*(this + 80))
    {
      v4 = *(this + 88);
      v5 = *v4;
      v6 = **v4 - v4[1];
      v7 = *(v5 + 2);
      v8 = 0xFFFFFFFFFFFFFFFFLL / v7;
      v9 = v7 * v6;
      if (v6 >= v8)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      if (*(this + 76) < v10)
      {
        operator new();
      }

      if (*(this + 96) <= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *(this + 96);
      }

      *(this + 96) = v25;
      return this;
    }

LABEL_30:
    __break(1u);
    return this;
  }

  v11 = a2 / 20;
  v12 = *(this + 16);
  v13 = *(this + 24);
  v14 = v13 - v12;
  if (a2 / 20 < ((v13 - v12) >> 2))
  {
    this = webrtc::Histogram::Add(this + 8, v11);
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v14 = v13 - v12;
  }

  if (v13 == v12)
  {
    goto LABEL_30;
  }

  v15 = *(v3 + 72);
  v16 = v14 >> 2;
  v17 = *v12;
  v18 = v16 - 1;
  if (v16 != 1 && v17 < v15)
  {
    v21 = 0x40000000 - v15;
    v22 = 0x40000000 - v17;
    if (v16 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v16;
    }

    v20 = 20;
    v24 = 1;
    while (v23 != v24)
    {
      v20 += 20;
      if (v24 < v18)
      {
        v22 -= *&v12[4 * v24++];
        if (v22 > v21)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    goto LABEL_30;
  }

  v20 = 20;
LABEL_25:
  *(v3 + 100) = v20;
  *(v3 + 104) = 1;
  return this;
}

uint64_t webrtc::UniqueRandomIdGenerator::GenerateId(webrtc::UniqueRandomIdGenerator *this)
{
  RandomId = pthread_mutex_lock(this);
  if (*(this + 10) <= 0xFFFFFFFDuLL)
  {
    v7 = (this + 72);
    while (1)
    {
      do
      {
        RandomId = webrtc::CreateRandomId(RandomId);
      }

      while (!RandomId);
      v8 = *v7;
      if (!*v7)
      {
        break;
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = *(v8 + 28);
          if (RandomId >= v10)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= RandomId)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_10:
    operator new();
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/unique_id_generator.cc", 32, "known_ids_.size() < std::numeric_limits<uint32_t>::max() - 1", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, *(this + 10));
  return webrtc::UniqueStringGenerator::AddKnownId();
}

uint64_t webrtc::UniqueStringGenerator::AddKnownId(uint64_t a1, void **a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_31:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v15 = a3;
  v4 = (__p + a3);
  if (__p <= a2 && v4 > a2)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a3)
  {
    memmove(__p, a2, a3);
  }

  *v4 = 0;
  if ((v15 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = webrtc::string_to_number_internal::ParseUnsigned(v5, v6, 0xAuLL);
  if ((v8 & (HIDWORD(v7) == 0)) != 0)
  {
    v9 = v7 | 0x100000000;
  }

  else
  {
    v9 = 0;
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (!HIDWORD(v9))
    {
      return 0;
    }
  }

  else if (!HIDWORD(v9))
  {
    return 0;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 28);
      if (v13 <= v9)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_29;
      }
    }

    if (v13 >= v9)
    {
      return 0;
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_29;
    }
  }
}

void webrtc::UniqueNumberGenerator<unsigned int>::GenerateNumber(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  if (*a1 != -1)
  {
    v8 = a1;
    v10 = *(a1 + 2);
    if (!v10)
    {
LABEL_11:
      *v8 = v9 + 1;
LABEL_12:
      operator new();
    }

    do
    {
      v11 = v9++;
      *a1 = v9;
      v12 = v10;
      while (1)
      {
        while (1)
        {
          v13 = v12;
          v14 = *(v12 + 28);
          if (v11 >= v14)
          {
            break;
          }

          v12 = *v13;
          if (!*v13)
          {
            goto LABEL_12;
          }
        }

        if (v14 >= v11)
        {
          break;
        }

        v12 = v13[1];
        if (!v12)
        {
          goto LABEL_12;
        }
      }
    }

    while (v9 != -1);
  }

  webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/unique_id_generator.h", 135, "counter_ < std::numeric_limits<TIntegral>::max()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, a5, a6, a7, a8, 0xFFFFFFFFLL);
  goto LABEL_11;
}

uint64_t webrtc::UniqueTimestampCounter::Add(uint64_t this, unsigned int a2)
{
  if (*(this + 40) != a2)
  {
    v2 = *(this + 16);
    if (!v2)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = *(v2 + 28);
        if (v4 <= a2)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 >= a2)
      {
        break;
      }

      v2 = v3[1];
      if (!v2)
      {
        goto LABEL_8;
      }
    }
  }

  return this;
}

void dcsctp::UnrecognizedChunkTypeCause::~UnrecognizedChunkTypeCause(dcsctp::UnrecognizedChunkTypeCause *this)
{
  *this = &unk_2882A1890;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A1890;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::UnrecognizedChunkTypeCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  *v15 = 1536;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::UnrecognizedChunkTypeCause::ToString(v21);
  }

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

void dcsctp::UnrecognizedParametersCause::~UnrecognizedParametersCause(dcsctp::UnrecognizedParametersCause *this)
{
  *this = &unk_2882A18C0;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A18C0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::UnrecognizedParametersCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  *v15 = 2048;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::UnrecognizedParametersCause::ToString(v21);
  }

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

void dcsctp::UnresolvableAddressCause::~UnresolvableAddressCause(dcsctp::UnresolvableAddressCause *this)
{
  *this = &unk_2882A18F0;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882A18F0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::UnresolvableAddressCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  *v15 = 1280;
  *(v15 + 2) = HIBYTE(v13);
  *(v15 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v22);
    dcsctp::UnresolvableAddressCause::ToString(v21);
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

void dcsctp::UnresolvableAddressCause::ToString(char *a1@<X8>)
{
  a1[23] = 20;
  if (a1 <= "Unresolvable Address" && a1 + 20 > "Unresolvable Address")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "Unresolvable Address");
  }
}

void dcsctp::UserInitiatedAbortCause::Parse(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 4 || __rev16(*a1) != 12 || ((v3 = __rev16(a1[1]), v3 >= 4) ? (v4 = a2 >= v3) : (v4 = 0), v4 ? (v5 = a2 - v3 >= 4) : (v5 = 1), v5))
  {
    *a3 = 0;
    *(a3 + 32) = 0;
    return;
  }

  if (v3 <= 4)
  {
    *a3 = &unk_2882A1920;
    *(a3 + 8) = 0;
    *(a3 + 31) = 256;
    return;
  }

  v6 = (a1 + 2);
  v7 = v3 - 4;
  if (v3 - 4 > 0x16)
  {
    operator new();
  }

  v15 = v3 - 4;
  if (__dst <= v6 && (__dst + v7) > v6)
  {
    goto LABEL_38;
  }

  memmove(__dst, v6, v7);
  *(__dst + v7) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = __dst[1];
  }

  v16 = &unk_2882A1920;
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_39:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v11 > 0x16)
  {
    operator new();
  }

  HIBYTE(v18) = v11;
  v12 = a3;
  v13 = (&v17 + v11);
  if (&v17 <= v10 && v13 > v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v11)
  {
    memmove(&v17, v10, v11);
    v12 = a3;
  }

  *v13 = 0;
  *v12 = &unk_2882A1920;
  *(v12 + 8) = v17;
  *(v12 + 24) = v18;
  v17 = 0uLL;
  v18 = 0;
  *(v12 + 32) = 1;
  v16 = &unk_2882A1920;
  if (v15 < 0)
  {
    operator delete(__dst[0]);
  }
}

void dcsctp::UserInitiatedAbortCause::~UserInitiatedAbortCause(void **this)
{
  *this = &unk_2882A1920;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2882A1920;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::UserInitiatedAbortCause::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 31);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(a1 + 16);
    v11 = *a2;
    v12 = a2[1] - *a2;
    v13 = v10 + 4;
    v14 = v12 + v10 + 4;
    v15 = v12 > v14;
    if (v12 < v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *a2;
    v12 = a2[1] - *a2;
    v13 = v10 + 4;
    v14 = v12 + v10 + 4;
    v15 = v12 > v14;
    if (v12 < v14)
    {
LABEL_3:
      std::vector<unsigned char>::__append(a2, v13);
      v11 = *a2;
      goto LABEL_8;
    }
  }

  if (v15)
  {
    a2[1] = v11 + v14;
  }

LABEL_8:
  v16 = v11 + v12;
  *v16 = 3072;
  *(v16 + 2) = BYTE1(v13);
  *(v16 + 3) = v13;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v23);
    dcsctp::UserInitiatedAbortCause::ToString(v22);
    return;
  }

  v17 = *(a1 + 31);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v20 = *(a1 + 16);
    if (v20)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= v20)
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = v10;
    }

    if (!v19)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 31))
    {
      v18 = (a1 + 8);
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= v17)
    {
      v19 = *(a1 + 31);
    }

    else
    {
      v19 = v10;
    }

    if (!v19)
    {
      return;
    }
  }

  if (v18)
  {
    v21 = (*a2 + v12 + 4);

    memcpy(v21, v18, v19);
  }
}

void webrtc::anonymous namespace::VadImpl::Reset(webrtc::_anonymous_namespace_::VadImpl *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    free(v2);
  }

  v3 = malloc_type_malloc(0x2E0uLL, 0x1000040384D0BBCuLL);
  *(this + 1) = v3;
  *v3 = 1;
  *(v3 + 276) = 0;
  *(v3 + 164) = 0u;
  *(v3 + 148) = 0u;
  *(v3 + 132) = 0u;
  *(v3 + 116) = 0u;
  *(v3 + 100) = 0u;
  *(v3 + 84) = 0u;
  *(v3 + 68) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 196) = 0x110A139C1C621E8CLL;
  *(v3 + 180) = kNoiseDataMeans;
  *(v3 + 220) = 0x1D3B1FF41D9D2A7FLL;
  *(v3 + 204) = kSpeechDataMeans;
  *(v3 + 244) = 0x1C701A502B001DBLL;
  *(v3 + 228) = kNoiseDataStds;
  *(v3 + 268) = 0x3520437060401ECLL;
  *(v3 + 252) = kSpeechDataStds;
  *(v3 + 284) = 0u;
  *(v3 + 300) = 0u;
  *(v3 + 316) = 0u;
  *(v3 + 332) = 0u;
  *(v3 + 348) = 0u;
  *(v3 + 364) = 0u;
  *(v3 + 380) = 0u;
  *(v3 + 396) = 0u;
  *(v3 + 412) = 0u;
  *(v3 + 428) = 0u;
  *(v3 + 444) = 0u;
  *(v3 + 460) = 0u;
  memset_pattern16(v3 + 476, &memset_pattern_1, 0xC0uLL);
  *(v3 + 176) = 0;
  *(v3 + 87) = 0;
  *(v3 + 680) = 0u;
  memset_pattern16(v3 + 668, &memset_pattern_1_0, 0xCuLL);
  *(v3 + 356) = 3;
  *(v3 + 177) = 262152;
  *(v3 + 714) = 458766;
  *(v3 + 359) = 5;
  *(v3 + 180) = 1376280;
  *(v3 + 362) = 24;
  *(v3 + 365) = 57;
  *(v3 + 726) = 3145785;
  *(v3 + 183) = 42;
  v4 = *(this + 1);
  v5 = *(this + 4);
  if (v4 && *(v4 + 732) == 42 && v5 < 4)
  {
    v6 = (&off_279E95770)[v5];
    v7 = (&off_279E95790)[v5];
    v8 = (&off_279E957B0)[v5];
    v9 = (&off_279E957D0)[v5];
    v10 = *v6;
    *(v4 + 712) = *(v6 + 2);
    *(v4 + 708) = v10;
    v11 = *v7;
    *(v4 + 718) = *(v7 + 2);
    *(v4 + 714) = v11;
    LODWORD(v6) = *v8;
    *(v4 + 724) = *(v8 + 2);
    *(v4 + 720) = v6;
    LODWORD(v7) = *v9;
    *(v4 + 730) = *(v9 + 2);
    *(v4 + 726) = v7;
  }

  else
  {
    v12 = WebRtcVad_set_mode(v4, v5);
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_audio/vad/vad.cc", 52, "WebRtcVad_set_mode(handle_, aggressiveness_) == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v13, v14, v15, v16, v12);
  }
}

void webrtc::anonymous namespace::VadImpl::~VadImpl(void **this)
{
  free(this[1]);
}

{
  free(this[1]);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::anonymous namespace::VadImpl::VoiceActivity(webrtc::_anonymous_namespace_::VadImpl *this, __int16 *a2, unint64_t a3, int a4)
{
  v4 = WebRtcVad_Process(*(this + 1), a4, a2, a3);
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void webrtc::VadAudioProc::VadAudioProc(webrtc::VadAudioProc *this)
{
  v2 = *MEMORY[0x277D85DE8];
  bzero(this + 3072, 0x8C0uLL);
  *(this + 664) = 80;
  *(this + 665) = 0xC000000000000000;
  *(this + 666) = 0x4049000000000000;
  operator new();
}

uint64_t webrtc::VadAudioProc::ExtractFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v643 = *MEMORY[0x277D85DE8];
  *(v5 + 128) = 0;
  if (v7 != 160)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v5;
  v9 = v3;
  if (webrtc::PoleZeroFilter::Filter(*(v3 + 5352), v4, 0xA0uLL, (v9 + 3072 + 4 * *(v9 + 5312)), v6))
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(v9 + 5312) + 160;
  *(v9 + 5312) = v11;
  if (v11 < 0x230)
  {
    return 0;
  }

  v12 = 0;
  *(v8 + 128) = 3;
  *(v8 + 136) = 0;
  v13 = 0.0;
  do
  {
    v14 = vmulq_f32(*(v9 + v12 + 3392), *(v9 + v12 + 3392));
    v15 = vmulq_f32(*(v9 + v12 + 3408), *(v9 + v12 + 3408));
    v16 = vcvt_hight_f64_f32(v14);
    v17 = vcvtq_f64_f32(*v14.f32);
    v18 = vcvt_hight_f64_f32(v15);
    v19 = vcvtq_f64_f32(*v15.f32);
    v13 = v13 + v17.f64[0] + v17.f64[1] + v16.f64[0] + v16.f64[1] + v19.f64[0] + v19.f64[1] + v18.f64[0] + v18.f64[1];
    v12 += 32;
  }

  while (v12 != 640);
  v20 = 0;
  v21 = sqrt(v13 / 160.0);
  *(v8 + 96) = v21;
  v22 = 0.0;
  do
  {
    v23 = vmulq_f32(*(v9 + v20 + 4032), *(v9 + v20 + 4032));
    v24 = vmulq_f32(*(v9 + v20 + 4048), *(v9 + v20 + 4048));
    v25 = vcvt_hight_f64_f32(v23);
    v26 = vcvtq_f64_f32(*v23.f32);
    v27 = vcvt_hight_f64_f32(v24);
    v28 = vcvtq_f64_f32(*v24.f32);
    v22 = v22 + v26.f64[0] + v26.f64[1] + v25.f64[0] + v25.f64[1] + v28.f64[0] + v28.f64[1] + v27.f64[0] + v27.f64[1];
    v20 += 32;
  }

  while (v20 != 640);
  v29 = sqrt(v22 / 160.0);
  *(v8 + 104) = v29;
  v30 = 0.0;
  v31 = -640;
  do
  {
    v32 = vmulq_f32(*(v9 + v31 + 5312), *(v9 + v31 + 5312));
    v33 = vmulq_f32(*(v9 + v31 + 5328), *(v9 + v31 + 5328));
    v34 = vcvt_hight_f64_f32(v32);
    v35 = vcvtq_f64_f32(*v32.f32);
    v36 = vcvt_hight_f64_f32(v33);
    v37 = vcvtq_f64_f32(*v33.f32);
    v30 = v30 + v35.f64[0] + v35.f64[1] + v34.f64[0] + v34.f64[1] + v37.f64[0] + v37.f64[1] + v36.f64[0] + v36.f64[1];
    v31 += 32;
  }

  while (v31);
  v38 = sqrt(v30 / 160.0);
  *(v8 + 112) = v38;
  if (v21 < 5.0 || v29 < 5.0 || v38 < 5.0)
  {
    *(v8 + 136) = 1;
  }

  else
  {
    WebRtcIsac_SplitAndFilterFloat();
    WebRtcIsac_PitchAnalysis(v634, v596, *(v9 + 5336));
    v39 = log(v639 + 1.0e-12);
    v40 = log(v640 + 1.0e-12);
    v41 = log(v641 + 1.0e-12);
    v42 = log(v642 + 1.0e-12);
    v43 = 0;
    *v8 = v39 * 0.833333333 + *(v9 + 5320) * 0.166666667;
    *(v8 + 8) = v41 * 0.166666667 + v40 * 0.833333333;
    *(v8 + 16) = v42 * 0.5 + v41 * 0.5;
    *(v9 + 5320) = v42;
    v44 = *&v638[16];
    *(v8 + 32) = v637 * 0.833333333 + *(v9 + 5328) * 0.166666667;
    *(v8 + 40) = vmlaq_f64(vmulq_f64(*&v638[8], xmmword_273BA5650), xmmword_273BA5660, *v638);
    *(v9 + 5328) = v44;
    *(v8 + 32) = vdivq_f64(vdupq_n_s64(0x40BF400000000000uLL), *(v8 + 32));
    *(v8 + 48) = 8000.0 / *(v8 + 48);
    v45 = (v9 + 3088);
    v46 = &xmmword_273BA5728;
    do
    {
      v47 = *v45[-2].f32;
      v49 = *(v46 - 2);
      v48 = *(v46 - 1);
      v51 = *v46;
      v50 = v46[1];
      v46 += 4;
      v52 = vmulq_f64(v51, vcvtq_f64_f32(*v45));
      v53 = vmulq_f64(v50, vcvt_hight_f64_f32(*v45->f32));
      v54 = &v596[v43];
      *v54 = vmulq_f64(v49, vcvtq_f64_f32(*v47.f32));
      *(v54 + 1) = vmulq_f64(v48, vcvt_hight_f64_f32(v47));
      *(v54 + 2) = v52;
      *(v54 + 3) = v53;
      v45 += 4;
      v43 += 8;
    }

    while (v43 != 240);
    v55 = 0;
    v56 = vdupq_lane_s64(COERCE__INT64(*v596 * *v596), 0);
    v57 = 0.0;
    do
    {
      v58 = vmulq_f64(*&v596[v55 + 1], *&v596[v55 + 1]);
      v59 = vextq_s8(v56, v58, 8uLL);
      v56 = vmulq_f64(*(&v597 + v55 * 8 + 8), *(&v597 + v55 * 8 + 8));
      v60 = vextq_s8(v58, v56, 8uLL);
      v57 = v57 + *v59.i64 + *&v59.i64[1] + *v60.i64 + *&v60.i64[1];
      v55 += 4;
    }

    while (v55 != 236);
    v61 = 0;
    v62 = v622 * v622 + v621 * v621 + *&v56.i64[1] + v57;
    v63 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v596[1]), 0);
    v64 = 0.0;
    do
    {
      v65 = vmulq_f64(*&v596[v61 + 1], *&v596[v61 + 2]);
      v66 = vextq_s8(v63, v65, 8uLL);
      v63 = vmulq_f64(*(&v597 + v61 * 8 + 8), *(&v598 + v61 * 8));
      v67 = vextq_s8(v65, v63, 8uLL);
      v64 = v64 + *v66.i64 + *&v66.i64[1] + *v67.i64 + *&v67.i64[1];
      v61 += 4;
    }

    while (v61 != 236);
    v68 = 0;
    v69 = v621 * v622 + *&v63.i64[1] + v64;
    v70 = vdupq_lane_s64(COERCE__INT64(*v596 * *v597.i64), 0);
    v71 = 0.0;
    do
    {
      v72 = *(&v597 + v68 * 8 + 8);
      v73 = vmulq_f64(*&v596[v68 + 1], v72);
      v74 = vextq_s8(v70, v73, 8uLL);
      v70 = vmulq_f64(v72, *(&v598 + v68 * 8 + 8));
      v75 = vextq_s8(v73, v70, 8uLL);
      v71 = v71 + *v74.i64 + *&v74.i64[1] + *v75.i64 + *&v75.i64[1];
      v68 += 4;
    }

    while (v68 != 236);
    v76 = 0;
    v77 = *&v70.i64[1] + v71;
    v78 = v62 + v623 * v623;
    v79 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v597.i64[1]), 0);
    v80 = 0.0;
    do
    {
      v81 = vmulq_f64(*&v596[v76 + 1], *(&v598 + v76 * 8));
      v82 = vextq_s8(v79, v81, 8uLL);
      v79 = vmulq_f64(*(&v597 + v76 * 8 + 8), *(&v599 + v76 * 8));
      v83 = vextq_s8(v81, v79, 8uLL);
      v80 = v80 + *v82.i64 + *&v82.i64[1] + *v83.i64 + *&v83.i64[1];
      v76 += 4;
    }

    while (v76 != 236);
    v84 = 0;
    v85.f64[0] = v69 + v622 * v623;
    v86 = &v598;
    v87 = vdupq_lane_s64(COERCE__INT64(*v596 * *v598.i64), 0);
    v88 = 0.0;
    do
    {
      v89 = vmulq_f64(*&v596[v84 + 1], *(&v598 + v84 * 8 + 8));
      v90 = vextq_s8(v87, v89, 8uLL);
      v87 = vmulq_f64(*(&v597 + v84 * 8 + 8), *(&v599 + v84 * 8 + 8));
      v91 = vextq_s8(v89, v87, 8uLL);
      v88 = v88 + *v90.i64 + *&v90.i64[1] + *v91.i64 + *&v91.i64[1];
      v84 += 4;
    }

    while (v84 != 232);
    v92 = 0;
    v93 = v619 * v622 + v618 * v621 + *&v87.i64[1] + v88;
    v94 = v77 + v621 * v623;
    v95 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v598.i64[1]), 0);
    v96 = 0.0;
    do
    {
      v97 = vmulq_f64(*&v596[v92 + 1], *(&v599 + v92 * 8));
      v98 = vextq_s8(v95, v97, 8uLL);
      v95 = vmulq_f64(*(&v597 + v92 * 8 + 8), *(&v600 + v92 * 8));
      v99 = vextq_s8(v97, v95, 8uLL);
      v96 = v96 + *v98.i64 + *&v98.i64[1] + *v99.i64 + *&v99.i64[1];
      v92 += 4;
    }

    while (v92 != 232);
    v100 = 0;
    v101 = v618 * v622 + *&v95.i64[1] + v96;
    v102.f64[0] = v80 + *&v79.i64[1];
    v103 = vdupq_lane_s64(COERCE__INT64(*v596 * *v599.i64), 0);
    v104 = 0.0;
    do
    {
      v105 = vmulq_f64(*&v596[v100 + 1], *(&v599 + v100 * 8 + 8));
      v106 = vextq_s8(v103, v105, 8uLL);
      v103 = vmulq_f64(*(&v597 + v100 * 8 + 8), *(&v601 + v100 * 8));
      v107 = vextq_s8(v105, v103, 8uLL);
      v104 = v104 + *v106.i64 + *&v106.i64[1] + *v107.i64 + *&v107.i64[1];
      v100 += 4;
    }

    while (v100 != 232);
    v108 = 0;
    v109 = *&v103.i64[1] + v104;
    v110 = v93 + v620 * v623;
    v111 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v599.i64[1]), 0);
    v112 = 0.0;
    do
    {
      v113 = vmulq_f64(*&v596[v108 + 1], *(&v600 + v108 * 8));
      v114 = vextq_s8(v111, v113, 8uLL);
      v111 = vmulq_f64(*(&v597 + v108 * 8 + 8), *(&v602 + v108 * 8));
      v115 = vextq_s8(v113, v111, 8uLL);
      v112 = v112 + *v114.i64 + *&v114.i64[1] + *v115.i64 + *&v115.i64[1];
      v108 += 4;
    }

    while (v108 != 232);
    v116 = 0;
    v117.f64[0] = v101 + v619 * v623;
    v118 = vdupq_lane_s64(COERCE__INT64(*v596 * v600), 0);
    v119 = 0.0;
    do
    {
      v120 = vmulq_f64(*&v596[v116 + 1], *(&v601 + v116 * 8));
      v121 = vextq_s8(v118, v120, 8uLL);
      v118 = vmulq_f64(*(&v597 + v116 * 8 + 8), *(&v603 + v116 * 8));
      v122 = vextq_s8(v120, v118, 8uLL);
      v119 = v119 + *v121.i64 + *&v121.i64[1] + *v122.i64 + *&v122.i64[1];
      v116 += 4;
    }

    while (v116 != 228);
    v123 = 0;
    v124 = v616 * v622 + v615 * v621 + *&v118.i64[1] + v119;
    v125 = v109 + v618 * v623;
    v126 = vdupq_lane_s64(COERCE__INT64(*v596 * v601), 0);
    v127 = 0.0;
    do
    {
      v128 = vmulq_f64(*&v596[v123 + 1], *(&v602 + v123 * 8));
      v129 = vextq_s8(v126, v128, 8uLL);
      v126 = vmulq_f64(*(&v597 + v123 * 8 + 8), *(&v604 + v123 * 8));
      v130 = vextq_s8(v128, v126, 8uLL);
      v127 = v127 + *v129.i64 + *&v129.i64[1] + *v130.i64 + *&v130.i64[1];
      v123 += 4;
    }

    while (v123 != 228);
    v131 = 0;
    v132 = v615 * v622 + *&v126.i64[1] + v127;
    v133.f64[0] = v112 + *&v111.i64[1];
    v134 = vdupq_lane_s64(COERCE__INT64(*v596 * v602), 0);
    v135 = 0.0;
    do
    {
      v136 = vmulq_f64(*&v596[v131 + 1], *(&v603 + v131 * 8));
      v137 = vextq_s8(v134, v136, 8uLL);
      v134 = vmulq_f64(*(&v597 + v131 * 8 + 8), *(&v605 + v131 * 8));
      v138 = vextq_s8(v136, v134, 8uLL);
      v135 = v135 + *v137.i64 + *&v137.i64[1] + *v138.i64 + *&v138.i64[1];
      v131 += 4;
    }

    while (v131 != 228);
    v139 = 0;
    v140 = *&v134.i64[1] + v135;
    v141 = v124 + v617 * v623;
    v142 = vdupq_lane_s64(COERCE__INT64(*v596 * v603), 0);
    v143 = 0.0;
    do
    {
      v144 = vmulq_f64(*&v596[v139 + 1], *(&v604 + v139 * 8));
      v145 = vextq_s8(v142, v144, 8uLL);
      v142 = vmulq_f64(*(&v597 + v139 * 8 + 8), *(&v606 + v139 * 8));
      v146 = vextq_s8(v144, v142, 8uLL);
      v143 = v143 + *v145.i64 + *&v145.i64[1] + *v146.i64 + *&v146.i64[1];
      v139 += 4;
    }

    while (v139 != 228);
    v147 = 0;
    v148.f64[0] = v132 + v616 * v623;
    v149 = vdupq_lane_s64(COERCE__INT64(*v596 * v604), 0);
    v150 = 0.0;
    do
    {
      v151 = vmulq_f64(*&v596[v147 + 1], *(&v605 + v147 * 8));
      v152 = vextq_s8(v149, v151, 8uLL);
      v149 = vmulq_f64(*(&v597 + v147 * 8 + 8), *&v608[v147 - 1]);
      v153 = vextq_s8(v151, v149, 8uLL);
      v150 = v150 + *v152.i64 + *&v152.i64[1] + *v153.i64 + *&v153.i64[1];
      v147 += 4;
    }

    while (v147 != 224);
    v154 = 0;
    v155 = v613 * v622 + v612 * v621 + *&v149.i64[1] + v150;
    v156 = v140 + v615 * v623;
    v157 = vdupq_lane_s64(COERCE__INT64(*v596 * v605), 0);
    v158 = 0.0;
    do
    {
      v159 = vmulq_f64(*&v596[v154 + 1], *(&v606 + v154 * 8));
      v160 = vextq_s8(v157, v159, 8uLL);
      v157 = vmulq_f64(*(&v597 + v154 * 8 + 8), *&v608[v154]);
      v161 = vextq_s8(v159, v157, 8uLL);
      v158 = v158 + *v160.i64 + *&v160.i64[1] + *v161.i64 + *&v161.i64[1];
      v154 += 4;
    }

    while (v154 != 224);
    v162 = 0;
    v163 = v612 * v622 + *&v157.i64[1] + v158;
    v164.f64[0] = v143 + *&v142.i64[1];
    v165 = vdupq_lane_s64(COERCE__INT64(*v596 * v606), 0);
    v166 = 0.0;
    do
    {
      v167 = vmulq_f64(*&v596[v162 + 1], *&v608[v162 - 1]);
      v168 = vextq_s8(v165, v167, 8uLL);
      v165 = vmulq_f64(*(&v597 + v162 * 8 + 8), *&v608[v162 + 1]);
      v169 = vextq_s8(v167, v165, 8uLL);
      v166 = v166 + *v168.i64 + *&v168.i64[1] + *v169.i64 + *&v169.i64[1];
      v162 += 4;
    }

    while (v162 != 224);
    v170 = 0;
    v171 = *&v165.i64[1] + v166;
    v172 = v155 + v614 * v623;
    v173 = vdupq_lane_s64(COERCE__INT64(*v596 * v607), 0);
    v174.f64[0] = 0.0;
    do
    {
      v175 = vmulq_f64(*&v596[v170 + 1], *&v608[v170]);
      v176 = vextq_s8(v173, v175, 8uLL);
      v173 = vmulq_f64(*(&v597 + v170 * 8 + 8), *&v608[v170 + 2]);
      v177 = vextq_s8(v175, v173, 8uLL);
      v174.f64[0] = v174.f64[0] + *v176.i64 + *&v176.i64[1] + *v177.i64 + *&v177.i64[1];
      v170 += 4;
    }

    while (v170 != 224);
    v178 = 0;
    v179.f64[0] = v163 + v613 * v623;
    v180 = vdupq_lane_s64(COERCE__INT64(*v596 * v608[0]), 0);
    v181 = 0.0;
    do
    {
      v182 = vmulq_f64(*&v596[v178 + 1], *&v608[v178 + 1]);
      v183 = vextq_s8(v180, v182, 8uLL);
      v180 = vmulq_f64(*(&v597 + v178 * 8 + 8), *&v608[v178 + 3]);
      v184 = vextq_s8(v182, v180, 8uLL);
      v181 = v181 + *v183.i64 + *&v183.i64[1] + *v184.i64 + *&v184.i64[1];
      v178 += 4;
    }

    while (v178 != 220);
    v174.f64[1] = v610 * v622 + v609 * v621 + *&v180.i64[1] + v181;
    *&v185.f64[0] = vdupq_laneq_s64(v173, 1).u64[0];
    v185.f64[1] = v611 * v623;
    v186 = vaddq_f64(v174, v185);
    v187 = v171 + v612 * v623;
    v188 = v78 * 1.0001;
    v624 = v78 * 1.0001;
    v85.f64[1] = v94;
    v189 = vmulq_f64(v85, xmmword_273BA5670);
    v625 = v189;
    v102.f64[1] = v110;
    v626 = vmulq_f64(v102, xmmword_273BA5680);
    v117.f64[1] = v125;
    v627 = vmulq_f64(v117, xmmword_273BA5690);
    v133.f64[1] = v141;
    v628 = vmulq_f64(v133, xmmword_273BA56A0);
    v148.f64[1] = v156;
    v629 = vmulq_f64(v148, xmmword_273BA56B0);
    v164.f64[1] = v172;
    v630 = vmulq_f64(v164, xmmword_273BA56C0);
    v179.f64[1] = v187;
    v631 = vmulq_f64(v179, xmmword_273BA56D0);
    v632 = vmulq_f64(v186, xmmword_273BA56E0);
    *v634 = 0x3FF0000000000000;
    if (v78 * 1.0001 >= 1.0e-10)
    {
      *&v634[8] = -v189.f64[0] / v188;
      v487 = v188 + v189.f64[0] * *&v634[8];
      v488 = 1;
      v489 = 2;
      v490 = 8;
      do
      {
        v492 = v488++;
        v493 = *(&v624 + v488);
        v494 = &v634[8];
        v495 = v490;
        do
        {
          v496 = *v494++;
          v493 = v493 + v496 * *(&v624 + v495);
          v495 -= 8;
        }

        while (v495);
        v497 = v489 >> 1;
        v498 = -v493 / v487;
        v499 = *&v634[8 * v492];
        v500 = *&v634[8] + v498 * v499;
        *&v634[8 * v492] = v499 + v498 * *&v634[8];
        *&v634[8] = v500;
        if (v489 >> 1 != 1)
        {
          v501 = *&v633[8 * v492 + 48];
          v502 = *&v634[16] + v498 * v501;
          *&v633[8 * v492 + 48] = v501 + v498 * *&v634[16];
          *&v634[16] = v502;
          if (v497 != 2)
          {
            v503 = *&v633[8 * v492 + 40];
            v504 = *&v634[24] + v498 * v503;
            *&v633[8 * v492 + 40] = v503 + v498 * *&v634[24];
            *&v634[24] = v504;
            if (v497 != 3)
            {
              v505 = *&v633[8 * v492 + 32];
              v506 = *&v634[32] + v498 * v505;
              *&v633[8 * v492 + 32] = v505 + v498 * *&v634[32];
              *&v634[32] = v506;
              if (v497 != 4)
              {
                v507 = *&v633[8 * v492 + 24];
                v508 = *&v634[40] + v498 * v507;
                *&v633[8 * v492 + 24] = v507 + v498 * *&v634[40];
                *&v634[40] = v508;
                if (v497 != 5)
                {
                  v509 = *&v633[8 * v492 + 16];
                  v510 = *&v634[48] + v498 * v509;
                  *&v633[8 * v492 + 16] = v509 + v498 * *&v634[48];
                  *&v634[48] = v510;
                  if (v497 != 6)
                  {
                    v511 = *&v633[8 * v492 + 8];
                    v512 = *&v634[56] + v498 * v511;
                    *&v633[8 * v492 + 8] = v511 + v498 * *&v634[56];
                    *&v634[56] = v512;
                    if (v497 != 7)
                    {
                      v513 = *&v633[8 * v492];
                      v514 = *&v634[64] + v498 * v513;
                      *&v633[8 * v492] = v513 + v498 * *&v634[64];
                      *&v634[64] = v514;
                    }
                  }
                }
              }
            }
          }
        }

        v487 = v487 + v498 * v493;
        *&v634[8 * v488] = v498;
        v490 += 8;
        v491 = v489++ == 16;
      }

      while (!v491);
    }

    else
    {
      memset(&v634[8], 0, 128);
    }

    v190 = 0;
    v191 = (v9 + 3728);
    v192 = &xmmword_273BA5728;
    do
    {
      v193 = *v191[-2].f32;
      v195 = *(v192 - 2);
      v194 = *(v192 - 1);
      v197 = *v192;
      v196 = v192[1];
      v192 += 4;
      v198 = vmulq_f64(v197, vcvtq_f64_f32(*v191));
      v199 = vmulq_f64(v196, vcvt_hight_f64_f32(*v191->f32));
      v200 = &v596[v190];
      *v200 = vmulq_f64(v195, vcvtq_f64_f32(*v193.f32));
      *(v200 + 1) = vmulq_f64(v194, vcvt_hight_f64_f32(v193));
      *(v200 + 2) = v198;
      *(v200 + 3) = v199;
      v190 += 8;
      v191 += 4;
    }

    while (v190 != 240);
    v201 = 0;
    v202 = vdupq_lane_s64(COERCE__INT64(*v596 * *v596), 0);
    v203 = 0.0;
    do
    {
      v204 = vmulq_f64(*&v596[v201 + 1], *&v596[v201 + 1]);
      v205 = vextq_s8(v202, v204, 8uLL);
      v202 = vmulq_f64(*(&v597 + v201 * 8 + 8), *(&v597 + v201 * 8 + 8));
      v206 = vextq_s8(v204, v202, 8uLL);
      v203 = v203 + *v205.i64 + *&v205.i64[1] + *v206.i64 + *&v206.i64[1];
      v201 += 4;
    }

    while (v201 != 236);
    v207 = 0;
    v208 = v622 * v622 + v621 * v621 + *&v202.i64[1] + v203;
    v209 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v596[1]), 0);
    v210 = 0.0;
    do
    {
      v211 = vmulq_f64(*&v596[v207 + 1], *&v596[v207 + 2]);
      v212 = vextq_s8(v209, v211, 8uLL);
      v209 = vmulq_f64(*(&v597 + v207 * 8 + 8), *(&v598 + v207 * 8));
      v213 = vextq_s8(v211, v209, 8uLL);
      v210 = v210 + *v212.i64 + *&v212.i64[1] + *v213.i64 + *&v213.i64[1];
      v207 += 4;
    }

    while (v207 != 236);
    v214 = 0;
    v215 = v621 * v622 + *&v209.i64[1] + v210;
    v216 = vdupq_lane_s64(COERCE__INT64(*v596 * *v597.i64), 0);
    v217 = 0.0;
    do
    {
      v218 = *(&v597 + v214 * 8 + 8);
      v219 = vmulq_f64(*&v596[v214 + 1], v218);
      v220 = vextq_s8(v216, v219, 8uLL);
      v216 = vmulq_f64(v218, *(&v598 + v214 * 8 + 8));
      v221 = vextq_s8(v219, v216, 8uLL);
      v217 = v217 + *v220.i64 + *&v220.i64[1] + *v221.i64 + *&v221.i64[1];
      v214 += 4;
    }

    while (v214 != 236);
    v222 = 0;
    v223 = *&v216.i64[1] + v217;
    v224 = v208 + v623 * v623;
    v225 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v597.i64[1]), 0);
    v226 = 0.0;
    do
    {
      v227 = vmulq_f64(*&v596[v222 + 1], *(&v598 + v222 * 8));
      v228 = vextq_s8(v225, v227, 8uLL);
      v225 = vmulq_f64(*(&v597 + v222 * 8 + 8), *(&v599 + v222 * 8));
      v229 = vextq_s8(v227, v225, 8uLL);
      v226 = v226 + *v228.i64 + *&v228.i64[1] + *v229.i64 + *&v229.i64[1];
      v222 += 4;
    }

    while (v222 != 236);
    v230 = 0;
    v231.f64[0] = v215 + v622 * v623;
    v232 = vdupq_lane_s64(COERCE__INT64(*v596 * *v598.i64), 0);
    v233 = 0.0;
    do
    {
      v234 = vmulq_f64(*&v596[v230 + 1], *(&v598 + v230 * 8 + 8));
      v235 = vextq_s8(v232, v234, 8uLL);
      v232 = vmulq_f64(*(&v597 + v230 * 8 + 8), *(&v599 + v230 * 8 + 8));
      v236 = vextq_s8(v234, v232, 8uLL);
      v233 = v233 + *v235.i64 + *&v235.i64[1] + *v236.i64 + *&v236.i64[1];
      v230 += 4;
    }

    while (v230 != 232);
    v237 = 0;
    v238 = v619 * v622 + v618 * v621 + *&v232.i64[1] + v233;
    v239 = v223 + v621 * v623;
    v240 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v598.i64[1]), 0);
    v241 = 0.0;
    do
    {
      v242 = vmulq_f64(*&v596[v237 + 1], *(&v599 + v237 * 8));
      v243 = vextq_s8(v240, v242, 8uLL);
      v240 = vmulq_f64(*(&v597 + v237 * 8 + 8), *(&v600 + v237 * 8));
      v244 = vextq_s8(v242, v240, 8uLL);
      v241 = v241 + *v243.i64 + *&v243.i64[1] + *v244.i64 + *&v244.i64[1];
      v237 += 4;
    }

    while (v237 != 232);
    v245 = 0;
    v246 = v618 * v622 + *&v240.i64[1] + v241;
    v247.f64[0] = v226 + *&v225.i64[1];
    v248 = vdupq_lane_s64(COERCE__INT64(*v596 * *v599.i64), 0);
    v249 = 0.0;
    do
    {
      v250 = vmulq_f64(*&v596[v245 + 1], *(&v599 + v245 * 8 + 8));
      v251 = vextq_s8(v248, v250, 8uLL);
      v248 = vmulq_f64(*(&v597 + v245 * 8 + 8), *(&v601 + v245 * 8));
      v252 = vextq_s8(v250, v248, 8uLL);
      v249 = v249 + *v251.i64 + *&v251.i64[1] + *v252.i64 + *&v252.i64[1];
      v245 += 4;
    }

    while (v245 != 232);
    v253 = 0;
    v254 = *&v248.i64[1] + v249;
    v255 = v238 + v620 * v623;
    v256 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v599.i64[1]), 0);
    v257 = 0.0;
    do
    {
      v258 = vmulq_f64(*&v596[v253 + 1], *(&v600 + v253 * 8));
      v259 = vextq_s8(v256, v258, 8uLL);
      v256 = vmulq_f64(*(&v597 + v253 * 8 + 8), *(&v602 + v253 * 8));
      v260 = vextq_s8(v258, v256, 8uLL);
      v257 = v257 + *v259.i64 + *&v259.i64[1] + *v260.i64 + *&v260.i64[1];
      v253 += 4;
    }

    while (v253 != 232);
    v261 = 0;
    v262.f64[0] = v246 + v619 * v623;
    v263 = vdupq_lane_s64(COERCE__INT64(*v596 * v600), 0);
    v264 = 0.0;
    do
    {
      v265 = vmulq_f64(*&v596[v261 + 1], *(&v601 + v261 * 8));
      v266 = vextq_s8(v263, v265, 8uLL);
      v263 = vmulq_f64(*(&v597 + v261 * 8 + 8), *(&v603 + v261 * 8));
      v267 = vextq_s8(v265, v263, 8uLL);
      v264 = v264 + *v266.i64 + *&v266.i64[1] + *v267.i64 + *&v267.i64[1];
      v261 += 4;
    }

    while (v261 != 228);
    v268 = 0;
    v269 = v616 * v622 + v615 * v621 + *&v263.i64[1] + v264;
    v270 = v254 + v618 * v623;
    v271 = vdupq_lane_s64(COERCE__INT64(*v596 * v601), 0);
    v272 = 0.0;
    do
    {
      v273 = vmulq_f64(*&v596[v268 + 1], *(&v602 + v268 * 8));
      v274 = vextq_s8(v271, v273, 8uLL);
      v271 = vmulq_f64(*(&v597 + v268 * 8 + 8), *(&v604 + v268 * 8));
      v275 = vextq_s8(v273, v271, 8uLL);
      v272 = v272 + *v274.i64 + *&v274.i64[1] + *v275.i64 + *&v275.i64[1];
      v268 += 4;
    }

    while (v268 != 228);
    v276 = 0;
    v277 = v615 * v622 + *&v271.i64[1] + v272;
    v278.f64[0] = v257 + *&v256.i64[1];
    v279 = vdupq_lane_s64(COERCE__INT64(*v596 * v602), 0);
    v280 = 0.0;
    do
    {
      v281 = vmulq_f64(*&v596[v276 + 1], *(&v603 + v276 * 8));
      v282 = vextq_s8(v279, v281, 8uLL);
      v279 = vmulq_f64(*(&v597 + v276 * 8 + 8), *(&v605 + v276 * 8));
      v283 = vextq_s8(v281, v279, 8uLL);
      v280 = v280 + *v282.i64 + *&v282.i64[1] + *v283.i64 + *&v283.i64[1];
      v276 += 4;
    }

    while (v276 != 228);
    v284 = 0;
    v285 = *&v279.i64[1] + v280;
    v286 = v269 + v617 * v623;
    v287 = vdupq_lane_s64(COERCE__INT64(*v596 * v603), 0);
    v288 = 0.0;
    do
    {
      v289 = vmulq_f64(*&v596[v284 + 1], *(&v604 + v284 * 8));
      v290 = vextq_s8(v287, v289, 8uLL);
      v287 = vmulq_f64(*(&v597 + v284 * 8 + 8), *(&v606 + v284 * 8));
      v291 = vextq_s8(v289, v287, 8uLL);
      v288 = v288 + *v290.i64 + *&v290.i64[1] + *v291.i64 + *&v291.i64[1];
      v284 += 4;
    }

    while (v284 != 228);
    v292 = 0;
    v293.f64[0] = v277 + v616 * v623;
    v294 = vdupq_lane_s64(COERCE__INT64(*v596 * v604), 0);
    v295 = 0.0;
    do
    {
      v296 = vmulq_f64(*&v596[v292 + 1], *(&v605 + v292 * 8));
      v297 = vextq_s8(v294, v296, 8uLL);
      v294 = vmulq_f64(*(&v597 + v292 * 8 + 8), *&v608[v292 - 1]);
      v298 = vextq_s8(v296, v294, 8uLL);
      v295 = v295 + *v297.i64 + *&v297.i64[1] + *v298.i64 + *&v298.i64[1];
      v292 += 4;
    }

    while (v292 != 224);
    v299 = 0;
    v300 = v613 * v622 + v612 * v621 + *&v294.i64[1] + v295;
    v301 = v285 + v615 * v623;
    v302 = vdupq_lane_s64(COERCE__INT64(*v596 * v605), 0);
    v303 = 0.0;
    do
    {
      v304 = vmulq_f64(*&v596[v299 + 1], *(&v606 + v299 * 8));
      v305 = vextq_s8(v302, v304, 8uLL);
      v302 = vmulq_f64(*(&v597 + v299 * 8 + 8), *&v608[v299]);
      v306 = vextq_s8(v304, v302, 8uLL);
      v303 = v303 + *v305.i64 + *&v305.i64[1] + *v306.i64 + *&v306.i64[1];
      v299 += 4;
    }

    while (v299 != 224);
    v307 = 0;
    v308 = v612 * v622 + *&v302.i64[1] + v303;
    v309.f64[0] = v288 + *&v287.i64[1];
    v310 = vdupq_lane_s64(COERCE__INT64(*v596 * v606), 0);
    v311 = 0.0;
    do
    {
      v312 = vmulq_f64(*&v596[v307 + 1], *&v608[v307 - 1]);
      v313 = vextq_s8(v310, v312, 8uLL);
      v310 = vmulq_f64(*(&v597 + v307 * 8 + 8), *&v608[v307 + 1]);
      v314 = vextq_s8(v312, v310, 8uLL);
      v311 = v311 + *v313.i64 + *&v313.i64[1] + *v314.i64 + *&v314.i64[1];
      v307 += 4;
    }

    while (v307 != 224);
    v315 = 0;
    v316 = *&v310.i64[1] + v311;
    v317 = v300 + v614 * v623;
    v318 = vdupq_lane_s64(COERCE__INT64(*v596 * v607), 0);
    v319.f64[0] = 0.0;
    do
    {
      v320 = vmulq_f64(*&v596[v315 + 1], *&v608[v315]);
      v321 = vextq_s8(v318, v320, 8uLL);
      v318 = vmulq_f64(*(&v597 + v315 * 8 + 8), *&v608[v315 + 2]);
      v322 = vextq_s8(v320, v318, 8uLL);
      v319.f64[0] = v319.f64[0] + *v321.i64 + *&v321.i64[1] + *v322.i64 + *&v322.i64[1];
      v315 += 4;
    }

    while (v315 != 224);
    v323 = 0;
    v324.f64[0] = v308 + v613 * v623;
    v325 = vdupq_lane_s64(COERCE__INT64(*v596 * v608[0]), 0);
    v326 = 0.0;
    do
    {
      v327 = vmulq_f64(*&v596[v323 + 1], *&v608[v323 + 1]);
      v328 = vextq_s8(v325, v327, 8uLL);
      v325 = vmulq_f64(*(&v597 + v323 * 8 + 8), *&v608[v323 + 3]);
      v329 = vextq_s8(v327, v325, 8uLL);
      v326 = v326 + *v328.i64 + *&v328.i64[1] + *v329.i64 + *&v329.i64[1];
      v323 += 4;
    }

    while (v323 != 220);
    v319.f64[1] = v610 * v622 + v609 * v621 + *&v325.i64[1] + v326;
    *&v330.f64[0] = vdupq_laneq_s64(v318, 1).u64[0];
    v330.f64[1] = v611 * v623;
    v331 = v224 * 1.0001;
    v624 = v224 * 1.0001;
    v231.f64[1] = v239;
    v332 = vmulq_f64(v231, xmmword_273BA5670);
    v625 = v332;
    v247.f64[1] = v255;
    v262.f64[1] = v270;
    v626 = vmulq_f64(v247, xmmword_273BA5680);
    v627 = vmulq_f64(v262, xmmword_273BA5690);
    v278.f64[1] = v286;
    v628 = vmulq_f64(v278, xmmword_273BA56A0);
    v293.f64[1] = v301;
    v309.f64[1] = v317;
    v629 = vmulq_f64(v293, xmmword_273BA56B0);
    v630 = vmulq_f64(v309, xmmword_273BA56C0);
    v324.f64[1] = v316 + v612 * v623;
    v631 = vmulq_f64(v324, xmmword_273BA56D0);
    v632 = vmulq_f64(vaddq_f64(v319, v330), xmmword_273BA56E0);
    *v635 = 0x3FF0000000000000;
    if (v331 >= 1.0e-10)
    {
      *&v635[8] = -v332.f64[0] / v331;
      v515 = v331 + v332.f64[0] * *&v635[8];
      v516 = 1;
      v517 = 2;
      v518 = 8;
      do
      {
        v519 = v516++;
        v520 = *(&v624 + v516);
        v521 = &v635[8];
        v522 = v518;
        do
        {
          v523 = *v521++;
          v520 = v520 + v523 * *(&v624 + v522);
          v522 -= 8;
        }

        while (v522);
        v524 = v517 >> 1;
        v525 = -v520 / v515;
        v526 = *&v635[8 * v519];
        v527 = *&v635[8] + v525 * v526;
        *&v635[8 * v519] = v526 + v525 * *&v635[8];
        *&v635[8] = v527;
        if (v517 >> 1 != 1)
        {
          v528 = *&v634[8 * v519 + 128];
          v529 = *&v635[16] + v525 * v528;
          *&v634[8 * v519 + 128] = v528 + v525 * *&v635[16];
          *&v635[16] = v529;
          if (v524 != 2)
          {
            v530 = *&v634[8 * v519 + 120];
            v531 = *&v635[24] + v525 * v530;
            *&v634[8 * v519 + 120] = v530 + v525 * *&v635[24];
            *&v635[24] = v531;
            if (v524 != 3)
            {
              v532 = *&v634[8 * v519 + 112];
              v533 = *&v635[32] + v525 * v532;
              *&v634[8 * v519 + 112] = v532 + v525 * *&v635[32];
              *&v635[32] = v533;
              if (v524 != 4)
              {
                v534 = *&v634[8 * v519 + 104];
                v535 = *&v635[40] + v525 * v534;
                *&v634[8 * v519 + 104] = v534 + v525 * *&v635[40];
                *&v635[40] = v535;
                if (v524 != 5)
                {
                  v536 = *&v634[8 * v519 + 96];
                  v537 = *&v635[48] + v525 * v536;
                  *&v634[8 * v519 + 96] = v536 + v525 * *&v635[48];
                  *&v635[48] = v537;
                  if (v524 != 6)
                  {
                    v538 = *&v634[8 * v519 + 88];
                    v539 = *&v635[56] + v525 * v538;
                    *&v634[8 * v519 + 88] = v538 + v525 * *&v635[56];
                    *&v635[56] = v539;
                    if (v524 != 7)
                    {
                      v540 = *&v634[8 * v519 + 80];
                      v541 = *&v635[64] + v525 * v540;
                      *&v634[8 * v519 + 80] = v540 + v525 * *&v635[64];
                      *&v635[64] = v541;
                    }
                  }
                }
              }
            }
          }
        }

        v515 = v515 + v525 * v520;
        *&v635[8 * v516] = v525;
        v518 += 8;
        v491 = v517++ == 16;
      }

      while (!v491);
    }

    else
    {
      memset(&v635[8], 0, 128);
    }

    v333 = &xmmword_273BA5728;
    v334 = -960;
    do
    {
      v335 = *(v9 + v334 + 5312);
      v336 = *(v9 + v334 + 5328);
      v338 = *(v333 - 2);
      v337 = *(v333 - 1);
      v340 = *v333;
      v339 = v333[1];
      v333 += 4;
      v86[-2] = vmulq_f64(v338, vcvtq_f64_f32(*v335.f32));
      v86[-1] = vmulq_f64(v337, vcvt_hight_f64_f32(v335));
      *v86 = vmulq_f64(v340, vcvtq_f64_f32(*v336.f32));
      v86[1] = vmulq_f64(v339, vcvt_hight_f64_f32(v336));
      v86 += 4;
      v334 += 32;
    }

    while (v334);
    v341 = 0;
    v342 = vdupq_lane_s64(COERCE__INT64(*v596 * *v596), 0);
    v343 = 0.0;
    do
    {
      v344 = vmulq_f64(*&v596[v341 + 1], *&v596[v341 + 1]);
      v345 = vextq_s8(v342, v344, 8uLL);
      v342 = vmulq_f64(*(&v597 + v341 * 8 + 8), *(&v597 + v341 * 8 + 8));
      v346 = vextq_s8(v344, v342, 8uLL);
      v343 = v343 + *v345.i64 + *&v345.i64[1] + *v346.i64 + *&v346.i64[1];
      v341 += 4;
    }

    while (v341 != 236);
    v347 = 0;
    v348 = v622 * v622 + v621 * v621 + *&v342.i64[1] + v343;
    v349 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v596[1]), 0);
    v350 = 0.0;
    do
    {
      v351 = vmulq_f64(*&v596[v347 + 1], *&v596[v347 + 2]);
      v352 = vextq_s8(v349, v351, 8uLL);
      v349 = vmulq_f64(*(&v597 + v347 * 8 + 8), *(&v598 + v347 * 8));
      v353 = vextq_s8(v351, v349, 8uLL);
      v350 = v350 + *v352.i64 + *&v352.i64[1] + *v353.i64 + *&v353.i64[1];
      v347 += 4;
    }

    while (v347 != 236);
    v354 = 0;
    v355 = v621 * v622 + *&v349.i64[1] + v350;
    v356 = vdupq_lane_s64(COERCE__INT64(*v596 * *v597.i64), 0);
    v357 = 0.0;
    do
    {
      v358 = *(&v597 + v354 * 8 + 8);
      v359 = vmulq_f64(*&v596[v354 + 1], v358);
      v360 = vextq_s8(v356, v359, 8uLL);
      v356 = vmulq_f64(v358, *(&v598 + v354 * 8 + 8));
      v361 = vextq_s8(v359, v356, 8uLL);
      v357 = v357 + *v360.i64 + *&v360.i64[1] + *v361.i64 + *&v361.i64[1];
      v354 += 4;
    }

    while (v354 != 236);
    v362 = 0;
    v363 = *&v356.i64[1] + v357;
    v364 = v348 + v623 * v623;
    v365 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v597.i64[1]), 0);
    v366 = 0.0;
    do
    {
      v367 = vmulq_f64(*&v596[v362 + 1], *(&v598 + v362 * 8));
      v368 = vextq_s8(v365, v367, 8uLL);
      v365 = vmulq_f64(*(&v597 + v362 * 8 + 8), *(&v599 + v362 * 8));
      v369 = vextq_s8(v367, v365, 8uLL);
      v366 = v366 + *v368.i64 + *&v368.i64[1] + *v369.i64 + *&v369.i64[1];
      v362 += 4;
    }

    while (v362 != 236);
    v370 = 0;
    v371.f64[0] = v355 + v622 * v623;
    v372 = vdupq_lane_s64(COERCE__INT64(*v596 * *v598.i64), 0);
    v373 = 0.0;
    do
    {
      v374 = vmulq_f64(*&v596[v370 + 1], *(&v598 + v370 * 8 + 8));
      v375 = vextq_s8(v372, v374, 8uLL);
      v372 = vmulq_f64(*(&v597 + v370 * 8 + 8), *(&v599 + v370 * 8 + 8));
      v376 = vextq_s8(v374, v372, 8uLL);
      v373 = v373 + *v375.i64 + *&v375.i64[1] + *v376.i64 + *&v376.i64[1];
      v370 += 4;
    }

    while (v370 != 232);
    v377 = 0;
    v378 = v619 * v622 + v618 * v621 + *&v372.i64[1] + v373;
    v379 = v363 + v621 * v623;
    v380 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v598.i64[1]), 0);
    v381 = 0.0;
    do
    {
      v382 = vmulq_f64(*&v596[v377 + 1], *(&v599 + v377 * 8));
      v383 = vextq_s8(v380, v382, 8uLL);
      v380 = vmulq_f64(*(&v597 + v377 * 8 + 8), *(&v600 + v377 * 8));
      v384 = vextq_s8(v382, v380, 8uLL);
      v381 = v381 + *v383.i64 + *&v383.i64[1] + *v384.i64 + *&v384.i64[1];
      v377 += 4;
    }

    while (v377 != 232);
    v385 = 0;
    v386 = v618 * v622 + *&v380.i64[1] + v381;
    v387.f64[0] = v366 + *&v365.i64[1];
    v388 = vdupq_lane_s64(COERCE__INT64(*v596 * *v599.i64), 0);
    v389 = 0.0;
    do
    {
      v390 = vmulq_f64(*&v596[v385 + 1], *(&v599 + v385 * 8 + 8));
      v391 = vextq_s8(v388, v390, 8uLL);
      v388 = vmulq_f64(*(&v597 + v385 * 8 + 8), *(&v601 + v385 * 8));
      v392 = vextq_s8(v390, v388, 8uLL);
      v389 = v389 + *v391.i64 + *&v391.i64[1] + *v392.i64 + *&v392.i64[1];
      v385 += 4;
    }

    while (v385 != 232);
    v393 = 0;
    v394 = *&v388.i64[1] + v389;
    v395 = v378 + v620 * v623;
    v396 = vdupq_lane_s64(COERCE__INT64(*v596 * *&v599.i64[1]), 0);
    v397 = 0.0;
    do
    {
      v398 = vmulq_f64(*&v596[v393 + 1], *(&v600 + v393 * 8));
      v399 = vextq_s8(v396, v398, 8uLL);
      v396 = vmulq_f64(*(&v597 + v393 * 8 + 8), *(&v602 + v393 * 8));
      v400 = vextq_s8(v398, v396, 8uLL);
      v397 = v397 + *v399.i64 + *&v399.i64[1] + *v400.i64 + *&v400.i64[1];
      v393 += 4;
    }

    while (v393 != 232);
    v401 = 0;
    v402.f64[0] = v386 + v619 * v623;
    v403 = vdupq_lane_s64(COERCE__INT64(*v596 * v600), 0);
    v404 = 0.0;
    do
    {
      v405 = vmulq_f64(*&v596[v401 + 1], *(&v601 + v401 * 8));
      v406 = vextq_s8(v403, v405, 8uLL);
      v403 = vmulq_f64(*(&v597 + v401 * 8 + 8), *(&v603 + v401 * 8));
      v407 = vextq_s8(v405, v403, 8uLL);
      v404 = v404 + *v406.i64 + *&v406.i64[1] + *v407.i64 + *&v407.i64[1];
      v401 += 4;
    }

    while (v401 != 228);
    v408 = 0;
    v409 = v616 * v622 + v615 * v621 + *&v403.i64[1] + v404;
    v410 = v394 + v618 * v623;
    v411 = vdupq_lane_s64(COERCE__INT64(*v596 * v601), 0);
    v412 = 0.0;
    do
    {
      v413 = vmulq_f64(*&v596[v408 + 1], *(&v602 + v408 * 8));
      v414 = vextq_s8(v411, v413, 8uLL);
      v411 = vmulq_f64(*(&v597 + v408 * 8 + 8), *(&v604 + v408 * 8));
      v415 = vextq_s8(v413, v411, 8uLL);
      v412 = v412 + *v414.i64 + *&v414.i64[1] + *v415.i64 + *&v415.i64[1];
      v408 += 4;
    }

    while (v408 != 228);
    v416 = 0;
    v417 = v615 * v622 + *&v411.i64[1] + v412;
    v418.f64[0] = v397 + *&v396.i64[1];
    v419 = vdupq_lane_s64(COERCE__INT64(*v596 * v602), 0);
    v420 = 0.0;
    do
    {
      v421 = vmulq_f64(*&v596[v416 + 1], *(&v603 + v416 * 8));
      v422 = vextq_s8(v419, v421, 8uLL);
      v419 = vmulq_f64(*(&v597 + v416 * 8 + 8), *(&v605 + v416 * 8));
      v423 = vextq_s8(v421, v419, 8uLL);
      v420 = v420 + *v422.i64 + *&v422.i64[1] + *v423.i64 + *&v423.i64[1];
      v416 += 4;
    }

    while (v416 != 228);
    v424 = 0;
    v425 = *&v419.i64[1] + v420;
    v426 = v409 + v617 * v623;
    v427 = vdupq_lane_s64(COERCE__INT64(*v596 * v603), 0);
    v428 = 0.0;
    do
    {
      v429 = vmulq_f64(*&v596[v424 + 1], *(&v604 + v424 * 8));
      v430 = vextq_s8(v427, v429, 8uLL);
      v427 = vmulq_f64(*(&v597 + v424 * 8 + 8), *(&v606 + v424 * 8));
      v431 = vextq_s8(v429, v427, 8uLL);
      v428 = v428 + *v430.i64 + *&v430.i64[1] + *v431.i64 + *&v431.i64[1];
      v424 += 4;
    }

    while (v424 != 228);
    v432 = 0;
    v433.f64[0] = v417 + v616 * v623;
    v434 = vdupq_lane_s64(COERCE__INT64(*v596 * v604), 0);
    v435 = 0.0;
    do
    {
      v436 = vmulq_f64(*&v596[v432 + 1], *(&v605 + v432 * 8));
      v437 = vextq_s8(v434, v436, 8uLL);
      v434 = vmulq_f64(*(&v597 + v432 * 8 + 8), *&v608[v432 - 1]);
      v438 = vextq_s8(v436, v434, 8uLL);
      v435 = v435 + *v437.i64 + *&v437.i64[1] + *v438.i64 + *&v438.i64[1];
      v432 += 4;
    }

    while (v432 != 224);
    v439 = 0;
    v440 = v613 * v622 + v612 * v621 + *&v434.i64[1] + v435;
    v441 = v425 + v615 * v623;
    v442 = vdupq_lane_s64(COERCE__INT64(*v596 * v605), 0);
    v443 = 0.0;
    do
    {
      v444 = vmulq_f64(*&v596[v439 + 1], *(&v606 + v439 * 8));
      v445 = vextq_s8(v442, v444, 8uLL);
      v442 = vmulq_f64(*(&v597 + v439 * 8 + 8), *&v608[v439]);
      v446 = vextq_s8(v444, v442, 8uLL);
      v443 = v443 + *v445.i64 + *&v445.i64[1] + *v446.i64 + *&v446.i64[1];
      v439 += 4;
    }

    while (v439 != 224);
    v447 = 0;
    v448 = v612 * v622 + *&v442.i64[1] + v443;
    v449.f64[0] = v428 + *&v427.i64[1];
    v450 = vdupq_lane_s64(COERCE__INT64(*v596 * v606), 0);
    v451 = 0.0;
    do
    {
      v452 = vmulq_f64(*&v596[v447 + 1], *&v608[v447 - 1]);
      v453 = vextq_s8(v450, v452, 8uLL);
      v450 = vmulq_f64(*(&v597 + v447 * 8 + 8), *&v608[v447 + 1]);
      v454 = vextq_s8(v452, v450, 8uLL);
      v451 = v451 + *v453.i64 + *&v453.i64[1] + *v454.i64 + *&v454.i64[1];
      v447 += 4;
    }

    while (v447 != 224);
    v455 = 0;
    v456 = *&v450.i64[1] + v451;
    v457 = v440 + v614 * v623;
    v458 = vdupq_lane_s64(COERCE__INT64(*v596 * v607), 0);
    v459.f64[0] = 0.0;
    do
    {
      v460 = vmulq_f64(*&v596[v455 + 1], *&v608[v455]);
      v461 = vextq_s8(v458, v460, 8uLL);
      v458 = vmulq_f64(*(&v597 + v455 * 8 + 8), *&v608[v455 + 2]);
      v462 = vextq_s8(v460, v458, 8uLL);
      v459.f64[0] = v459.f64[0] + *v461.i64 + *&v461.i64[1] + *v462.i64 + *&v462.i64[1];
      v455 += 4;
    }

    while (v455 != 224);
    v463 = 0;
    v464.f64[0] = v448 + v613 * v623;
    v465 = vdupq_lane_s64(COERCE__INT64(*v596 * v608[0]), 0);
    v466 = 0.0;
    do
    {
      v467 = vmulq_f64(*&v596[v463 + 1], *&v608[v463 + 1]);
      v468 = vextq_s8(v465, v467, 8uLL);
      v465 = vmulq_f64(*(&v597 + v463 * 8 + 8), *&v608[v463 + 3]);
      v469 = vextq_s8(v467, v465, 8uLL);
      v466 = v466 + *v468.i64 + *&v468.i64[1] + *v469.i64 + *&v469.i64[1];
      v463 += 4;
    }

    while (v463 != 220);
    v459.f64[1] = v610 * v622 + v609 * v621 + *&v465.i64[1] + v466;
    *&v470.f64[0] = vdupq_laneq_s64(v458, 1).u64[0];
    v470.f64[1] = v611 * v623;
    v471 = vaddq_f64(v459, v470);
    v472 = v364 * 1.0001;
    v624 = v364 * 1.0001;
    v371.f64[1] = v379;
    v473 = vmulq_f64(v371, xmmword_273BA5670);
    v625 = v473;
    v387.f64[1] = v395;
    v626 = vmulq_f64(v387, xmmword_273BA5680);
    v402.f64[1] = v410;
    v627 = vmulq_f64(v402, xmmword_273BA5690);
    v418.f64[1] = v426;
    v628 = vmulq_f64(v418, xmmword_273BA56A0);
    v433.f64[1] = v441;
    v629 = vmulq_f64(v433, xmmword_273BA56B0);
    v449.f64[1] = v457;
    v630 = vmulq_f64(v449, xmmword_273BA56C0);
    v464.f64[1] = v456 + v612 * v623;
    v631 = vmulq_f64(v464, xmmword_273BA56D0);
    v632 = vmulq_f64(v471, xmmword_273BA56E0);
    v636[0].f64[0] = 1.0;
    if (v364 * 1.0001 >= 1.0e-10)
    {
      v636[0].f64[1] = -v473.f64[0] / v472;
      v542 = v472 + v473.f64[0] * v636[0].f64[1];
      v543 = 1;
      v544 = 2;
      v545 = 8;
      do
      {
        v546 = v543++;
        v547 = *(&v624 + v543);
        v548 = &v636[0].f64[1];
        v549 = v545;
        do
        {
          v550 = *v548++;
          v547 = v547 + v550 * *(&v624 + v549);
          v549 -= 8;
        }

        while (v549);
        v551 = v544 >> 1;
        v552 = -v547 / v542;
        v553 = v636[0].f64[v546];
        v554 = v636[0].f64[1] + v552 * v553;
        v636[0].f64[v546] = v553 + v552 * v636[0].f64[1];
        v636[0].f64[1] = v554;
        if (v544 >> 1 != 1)
        {
          v555 = *&v635[8 * v546 + 128];
          v556 = v636[1].f64[0] + v552 * v555;
          *&v635[8 * v546 + 128] = v555 + v552 * v636[1].f64[0];
          v636[1].f64[0] = v556;
          if (v551 != 2)
          {
            v557 = *&v635[8 * v546 + 120];
            v558 = v636[1].f64[1] + v552 * v557;
            *&v635[8 * v546 + 120] = v557 + v552 * v636[1].f64[1];
            v636[1].f64[1] = v558;
            if (v551 != 3)
            {
              v559 = *&v635[8 * v546 + 112];
              v560 = v636[2].f64[0] + v552 * v559;
              *&v635[8 * v546 + 112] = v559 + v552 * v636[2].f64[0];
              v636[2].f64[0] = v560;
              if (v551 != 4)
              {
                v561 = *&v635[8 * v546 + 104];
                v562 = v636[2].f64[1] + v552 * v561;
                *&v635[8 * v546 + 104] = v561 + v552 * v636[2].f64[1];
                v636[2].f64[1] = v562;
                if (v551 != 5)
                {
                  v563 = *&v635[8 * v546 + 96];
                  v564 = v636[3].f64[0] + v552 * v563;
                  *&v635[8 * v546 + 96] = v563 + v552 * v636[3].f64[0];
                  v636[3].f64[0] = v564;
                  if (v551 != 6)
                  {
                    v565 = *&v635[8 * v546 + 88];
                    v566 = v636[3].f64[1] + v552 * v565;
                    *&v635[8 * v546 + 88] = v565 + v552 * v636[3].f64[1];
                    v636[3].f64[1] = v566;
                    if (v551 != 7)
                    {
                      v567 = *&v635[8 * v546 + 80];
                      v568 = v636[4].f64[0] + v552 * v567;
                      *&v635[8 * v546 + 80] = v567 + v552 * v636[4].f64[0];
                      v636[4].f64[0] = v568;
                    }
                  }
                }
              }
            }
          }
        }

        v542 = v542 + v552 * v547;
        v636[0].f64[v543] = v552;
        v545 += 8;
        v491 = v544++ == 16;
      }

      while (!v491);
    }

    else
    {
      memset(&v636[0].f64[1], 0, 128);
    }

    bzero(&v600 + 4, 0x7BCuLL);
    *v596 = vcvt_hight_f32_f64(vcvt_f32_f64(*v634), *&v634[16]);
    v597 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v634[32]), *&v634[48]);
    v598 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v634[64]), *&v634[80]);
    v599 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v634[96]), *&v634[112]);
    v474 = *&v634[128];
    *&v600 = v474;
    v475 = 1;
    webrtc::WebRtc_rdft(0x200, 1, v596, v9, (v9 + 2048), v476);
    v477 = *v596 * *v596;
    v478 = (*(&v596[1] + 1) * *(&v596[1] + 1)) + (*&v596[1] * *&v596[1]);
    v479 = &v597.f32[1];
    do
    {
      v480 = v478;
      v478 = (*v479 * *v479) + (*(v479 - 1) * *(v479 - 1));
      if (v480 < v477 && v480 < v478)
      {
        v481 = 1.0 / v478;
        v482 = 1.0 / v477;
        v483 = (v481 - v482) * -0.5;
        v484 = (v482 + v481) + ((1.0 / v480) * -2.0);
        v485 = v475;
        v486 = v483 / v484;
        goto LABEL_176;
      }

      ++v475;
      v479 += 2;
      v477 = v480;
    }

    while (v475 != 255);
    v485 = 0.0;
    v569 = v478 < v480;
    v486 = 0.0;
    if (v569)
    {
      if (v478 < (*(v596 + 1) * *(v596 + 1)))
      {
        v485 = 256.0;
      }

      else
      {
        v485 = 0.0;
      }
    }

LABEL_176:
    *(v8 + 64) = ((v485 + v486) * 31.25);
    bzero(&v600 + 4, 0x7BCuLL);
    *v596 = vcvt_hight_f32_f64(vcvt_f32_f64(*v635), *&v635[16]);
    v597 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v635[32]), *&v635[48]);
    v598 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v635[64]), *&v635[80]);
    v599 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v635[96]), *&v635[112]);
    v570 = *&v635[128];
    *&v600 = v570;
    v571 = 1;
    webrtc::WebRtc_rdft(0x200, 1, v596, v9, (v9 + 2048), v572);
    v573 = *v596 * *v596;
    v574 = (*(&v596[1] + 1) * *(&v596[1] + 1)) + (*&v596[1] * *&v596[1]);
    v575 = &v597.f32[1];
    do
    {
      v576 = v574;
      v574 = (*v575 * *v575) + (*(v575 - 1) * *(v575 - 1));
      if (v576 < v573 && v576 < v574)
      {
        v577 = 1.0 / v574;
        v578 = 1.0 / v573;
        v579 = (v577 - v578) * -0.5;
        v580 = (v578 + v577) + ((1.0 / v576) * -2.0);
        v581 = v571;
        v582 = v579 / v580;
        goto LABEL_186;
      }

      ++v571;
      v575 += 2;
      v573 = v576;
    }

    while (v571 != 255);
    v581 = 0.0;
    v569 = v574 < v576;
    v582 = 0.0;
    if (v569)
    {
      if (v574 < (*(v596 + 1) * *(v596 + 1)))
      {
        v581 = 256.0;
      }

      else
      {
        v581 = 0.0;
      }
    }

LABEL_186:
    *(v8 + 72) = ((v581 + v582) * 31.25);
    bzero(&v600 + 4, 0x7BCuLL);
    *v596 = vcvt_hight_f32_f64(vcvt_f32_f64(v636[0]), v636[1]);
    v597 = vcvt_hight_f32_f64(vcvt_f32_f64(v636[2]), v636[3]);
    v598 = vcvt_hight_f32_f64(vcvt_f32_f64(v636[4]), v636[5]);
    v599 = vcvt_hight_f32_f64(vcvt_f32_f64(v636[6]), v636[7]);
    v583 = v636[8].f64[0];
    *&v600 = v583;
    v584 = 1;
    webrtc::WebRtc_rdft(0x200, 1, v596, v9, (v9 + 2048), v585);
    v586 = *v596 * *v596;
    v587 = (*(&v596[1] + 1) * *(&v596[1] + 1)) + (*&v596[1] * *&v596[1]);
    v588 = &v597.f32[1];
    do
    {
      v589 = v587;
      v587 = (*v588 * *v588) + (*(v588 - 1) * *(v588 - 1));
      if (v589 < v586 && v589 < v587)
      {
        v590 = 1.0 / v587;
        v591 = 1.0 / v586;
        v592 = (v590 - v591) * -0.5;
        v593 = (v591 + v590) + ((1.0 / v589) * -2.0);
        v594 = v584;
        v595 = v592 / v593;
        goto LABEL_196;
      }

      ++v584;
      v588 += 2;
      v586 = v589;
    }

    while (v584 != 255);
    v594 = 0.0;
    v569 = v587 < v589;
    v595 = 0.0;
    if (v569)
    {
      if (v587 < (*(v596 + 1) * *(v596 + 1)))
      {
        v594 = 256.0;
      }

      else
      {
        v594 = 0.0;
      }
    }

LABEL_196:
    *(v8 + 80) = ((v594 + v595) * 31.25);
  }

  memcpy((v9 + 3072), (v9 + 4992), 0x140uLL);
  result = 0;
  *(v9 + 5312) = 80;
  return result;
}

uint64_t webrtc::VadCircularBuffer::RemoveTransient(webrtc::VadCircularBuffer *this, int a2, double a3)
{
  v3 = *(this + 8);
  if ((v3 & 1) == 0 && *(this + 3) < a2 + 2)
  {
    return 0;
  }

  v4 = *(this + 4);
  if (v4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 3);
  if ((v3 & 1) == 0 && v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (v4 & ((v5 - 1) >> 31)) + v5 - 1;
  v8 = *this;
  v9 = *(*this + 8 * v7);
  if (v9 >= a3)
  {
    return 0;
  }

  *(this + 3) = *(this + 3) - v9;
  *(v8 + 8 * v7) = 0;
  v10 = *(this + 3) + 0.0;
  *(this + 3) = v10;
  if (a2 < 0)
  {
    return 0;
  }

  v11 = a2 + 1;
  if (a2 + 1 >= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 + 1;
  }

  v13 = v12 - 1;
  v14 = v5 - a2;
  if (v3)
  {
    v15 = v14 - 2;
    while (v4 > v11)
    {
      if (*(v8 + 8 * ((v4 & (v15 >> 31)) + v15)) < a3)
      {
        v18 = v11;
        if (v11 >= 1)
        {
          goto LABEL_27;
        }

        return 0;
      }

      ++v15;
      v16 = __OFSUB__(v11--, 1);
      if ((v11 < 0) ^ v16 | (v11 == 0))
      {
        goto LABEL_25;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v17 = v14 - 2;
  v18 = a2 + 1;
  while (1)
  {
    v19 = 0xFFFFFFFFLL;
    if (v4 <= v18 || v11 >= v5)
    {
      return v19;
    }

    if (*(v8 + 8 * ((v4 & (v17 >> 31)) + v17)) < a3)
    {
      goto LABEL_26;
    }

    ++v17;
    v16 = __OFSUB__(v18--, 1);
    if ((v18 < 0) ^ v16 | (v18 == 0))
    {
LABEL_25:
      v18 = v13;
LABEL_26:
      if (v18 < 1)
      {
        return 0;
      }

LABEL_27:
      v20 = ~v18;
      if (!v3)
      {
        v23 = v20 + v5;
        v24 = v18;
        do
        {
          v19 = 0xFFFFFFFFLL;
          if (v4 <= v24)
          {
            break;
          }

          if (v18 >= v5)
          {
            break;
          }

          v19 = 0;
          v25 = (v4 & (v23 >> 31)) + v23;
          *(this + 3) = v10 - *(v8 + 8 * v25);
          *(v8 + 8 * v25) = 0;
          v10 = *(this + 3) + 0.0;
          *(this + 3) = v10;
          ++v23;
          v16 = __OFSUB__(v24--, 1);
        }

        while (!((v24 < 0) ^ v16 | (v24 == 0)));
        return v19;
      }

      v21 = v20 + v5;
      while (v4 > v18)
      {
        v19 = 0;
        v22 = (v4 & (v21 >> 31)) + v21;
        *(this + 3) = v10 - *(v8 + 8 * v22);
        *(v8 + 8 * v22) = 0;
        v10 = *(this + 3) + 0.0;
        *(this + 3) = v10;
        ++v21;
        v16 = __OFSUB__(v18--, 1);
        if ((v18 < 0) ^ v16 | (v18 == 0))
        {
          return v19;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t WebRtcVad_InitCore(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = 1;
  v1 = a1 + 276;
  *(a1 + 276) = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 196) = 0x110A139C1C621E8CLL;
  *(a1 + 180) = kNoiseDataMeans;
  *(a1 + 204) = kSpeechDataMeans;
  *(a1 + 220) = 0x1D3B1FF41D9D2A7FLL;
  *(a1 + 228) = kNoiseDataStds;
  *(a1 + 244) = 0x1C701A502B001DBLL;
  *(a1 + 252) = kSpeechDataStds;
  *(a1 + 268) = 0x3520437060401ECLL;
  *(a1 + 284) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 460) = 0u;
  memset_pattern16((a1 + 476), &memset_pattern_1, 0xC0uLL);
  *(a1 + 688) = 0;
  *(a1 + 680) = 0;
  *(a1 + 690) = 0;
  *(a1 + 698) = 0;
  *(v1 + 424) = 0;
  memset_pattern16((a1 + 668), &memset_pattern_1_0, 0xCuLL);
  result = 0;
  *(a1 + 714) = 458766;
  *(a1 + 726) = 3145785;
  *(a1 + 712) = 3;
  *(a1 + 708) = 262152;
  *(a1 + 718) = 5;
  *(a1 + 720) = 1376280;
  *(a1 + 724) = 24;
  *(a1 + 730) = 57;
  *(a1 + 732) = 42;
  return result;
}

uint64_t WebRtcVad_CalcVad48khz(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v9, 0xB80uLL);
  if (a3 >= 0x1E0)
  {
    v6 = a3 / 0x1E0;
    v7 = v10;
    do
    {
      WebRtcSpl_Resample48khzTo8khz(a2, v7, a1 + 20, v9);
      v7 += 80;
      --v6;
    }

    while (v6);
  }

  return WebRtcVad_CalcVad8khz(a1, v10, a3 / 6);
}

uint64_t WebRtcVad_CalcVad8khz(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v141[8] = *MEMORY[0x277D85DE8];
  v5 = WebRtcVad_CalculateFeatures(a1, a2, a3, v137);
  v140 = 0;
  v141[0] = 0;
  v6 = 708;
  v141[1] = 0;
  v7 = 724;
  v8 = 718;
  v9 = 712;
  v138 = 0;
  v139[0] = 0;
  v10 = 728;
  v139[1] = 0;
  if (a3 == 160)
  {
    v9 = 710;
    v8 = 716;
    v7 = 722;
  }

  else
  {
    v10 = 730;
  }

  if (a3 == 80)
  {
    v11 = 714;
  }

  else
  {
    v6 = v9;
    v11 = v8;
  }

  if (a3 == 80)
  {
    v7 = 720;
    v12 = 726;
  }

  else
  {
    v12 = v10;
  }

  if (v5 < 11)
  {
    goto LABEL_106;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v135 = *(a1 + v12);
  v133 = *(a1 + v6);
  v134 = *(a1 + v11);
  v16 = *(a1 + v7);
  v17 = a1 + 264;
  do
  {
    if (*(v17 + v13 - 36))
    {
      v18 = (((*(v17 + v13 - 36) >> 1) + 0x20000) / *(v17 + v13 - 36)) << 16;
    }

    else
    {
      v18 = -65536;
    }

    v19 = 8 * v137[v13 / 2];
    v20 = v19 - *(v17 + v13 - 84);
    v21 = (((v18 >> 18) * (v18 >> 18)) >> 2) * v20;
    *(&v141[5] + v13) = v21 >> 10;
    v22 = ((v21 >> 10) * v20) >> 9;
    if (v22 > 22004)
    {
      v23 = 0;
      v24 = v17 + v13;
      v25 = *(v17 + v13 - 12);
      if (*(v17 + v13 - 12))
      {
LABEL_18:
        v26 = (((v25 >> 1) + 0x20000) / v25) << 16;
        goto LABEL_21;
      }
    }

    else
    {
      v23 = ((-((94544 * v22) & 0xFFFF0000) >> 16) & 0x3FF | 0x400) >> -(-((94544 * v22) & 0xFFFF0000) >> 26);
      v24 = v17 + v13;
      v25 = *(v17 + v13 - 12);
      if (*(v17 + v13 - 12))
      {
        goto LABEL_18;
      }
    }

    v26 = -65536;
LABEL_21:
    v27 = kNoiseDataWeights[v13 / 2];
    v28 = (v19 - *(v24 - 60));
    v29 = (((v26 >> 18) * (v26 >> 18)) >> 2) * v28;
    *(&v141[2] + v13) = v29 >> 10;
    v30 = ((v29 >> 10) * v28) >> 9;
    if (v30 > 22004)
    {
      v31 = 0;
      v32 = v17 + v13;
      v33 = *(v17 + v13 - 24);
      if (*(v17 + v13 - 24))
      {
LABEL_23:
        v34 = (((v33 >> 1) + 0x20000) / v33) << 16;
        goto LABEL_26;
      }
    }

    else
    {
      v31 = ((-((94544 * v30) & 0xFFFF0000) >> 16) & 0x3FF | 0x400) >> -(-((94544 * v30) & 0xFFFF0000) >> 26);
      v32 = v17 + v13;
      v33 = *(v17 + v13 - 24);
      if (*(v17 + v13 - 24))
      {
        goto LABEL_23;
      }
    }

    v34 = -65536;
LABEL_26:
    v35 = kSpeechDataWeights[v13 / 2];
    v36 = (v19 - *(v32 - 72));
    v37 = (((v34 >> 18) * (v34 >> 18)) >> 2) * v36;
    *(&v141[6] + v13 + 4) = v37 >> 10;
    v38 = ((v37 >> 10) * v36) >> 9;
    if (v38 > 22004)
    {
      v39 = 0;
      v40 = v17 + v13;
      v41 = *(v17 + v13);
      if (*(v17 + v13))
      {
LABEL_28:
        v42 = (((v41 >> 1) + 0x20000) / v41) << 16;
        goto LABEL_31;
      }
    }

    else
    {
      v39 = ((-((94544 * v38) & 0xFFFF0000) >> 16) & 0x3FF | 0x400) >> -(-((94544 * v38) & 0xFFFF0000) >> 26);
      v40 = v17 + v13;
      v41 = *(v17 + v13);
      if (*(v17 + v13))
      {
        goto LABEL_28;
      }
    }

    v42 = -65536;
LABEL_31:
    v43 = kNoiseDataWeights[v13 / 2 + 6];
    v44 = (v19 - *(v40 - 48));
    v45 = (((v42 >> 18) * (v42 >> 18)) >> 2) * v44;
    *(&v141[3] + v13 + 4) = v45 >> 10;
    v46 = ((v45 >> 10) * v44) >> 9;
    if (v46 > 22004)
    {
      v47 = 0;
    }

    else
    {
      v47 = ((-((94544 * v46) & 0xFFFF0000) >> 16) & 0x3FF | 0x400) >> -(-((94544 * v46) & 0xFFFF0000) >> 26);
    }

    v48 = v23 * (v18 >> 16) * v27;
    v49 = v31 * (v26 >> 16) * v35;
    v50 = v48 + v39 * (v34 >> 16) * v43;
    v51 = v49 + v47 * (v42 >> 16) * kSpeechDataWeights[v13 / 2 + 6];
    v52 = __clz(v50 ^ (v50 >> 31)) - 1;
    v53 = __clz(v51 ^ (v51 >> 31)) - 1;
    if (!v50)
    {
      v52 = 31;
    }

    if (!v51)
    {
      v53 = 31;
    }

    v54 = v52 - v53;
    if (v16 < (4 * v54))
    {
      v15 = 1;
    }

    if ((v50 >> 12) < 1)
    {
      v56 = kSpectrumWeight[v13 / 2];
      *(&v141[-1] + v13) = 0x4000;
      if ((v51 >> 12) < 1)
      {
        goto LABEL_12;
      }

LABEL_44:
      v57 = ((4 * v49) & 0xFFFFC000) / ((v51 >> 12) & 0x7FFF);
      *(&v139[-1] + v13) = v57;
      *(v139 + v13 + 4) = 0x4000 - v57;
      goto LABEL_12;
    }

    v55 = ((4 * v48) & 0xFFFFC000) / ((v50 >> 12) & 0x7FFF);
    *(v141 + v13 + 4) = 0x4000 - v55;
    v56 = kSpectrumWeight[v13 / 2];
    *(&v141[-1] + v13) = v55;
    if ((v51 >> 12) >= 1)
    {
      goto LABEL_44;
    }

LABEL_12:
    v14 += v54 * v56;
    v13 += 2;
  }

  while (v13 != 12);
  v58 = 0;
  v59 = 0;
  v136 = v15 | (v14 >= v135);
  v60 = 12800;
  v61 = 72;
  do
  {
    Minimum = WebRtcVad_FindMinimum(a1, v137[v58 / 2], v59);
    v63 = (a1 + v58);
    v64 = *(a1 + v58 + 180);
    v65 = kNoiseDataWeights[v58 / 2];
    v66 = *(a1 + v58 + 192);
    v67 = kNoiseDataWeights[v58 / 2 + 6];
    v68 = 19712 * (((Minimum << 20) - ((v65 * *(a1 + v58 + 180) + v67 * *(a1 + v58 + 192)) >> 6 << 16)) >> 16);
    v69 = v64 + HIWORD(v68);
    v70 = v66 + HIWORD(v68);
    if (v136)
    {
      v71 = v60 + 640;
      v72 = v63[126];
      v73 = v63[102];
      v69 = v69;
      if (v69 <= 640)
      {
        v69 = 640;
      }

      if (v69 >= (v61 << 7))
      {
        LOWORD(v69) = v61 << 7;
      }

      v63[90] = v69;
      v74 = *(&v139[-1] + v58);
      v75 = *(&v141[2] + v58);
      if ((v73 + ((((6554 * ((v74 * v75) >> 11)) >> 21) + 1) >> 1)) <= 640)
      {
        v76 = 640;
      }

      else
      {
        v76 = (v73 + ((((6554 * ((v74 * v75) >> 11)) >> 21) + 1) >> 1));
      }

      v77 = v71;
      if (v76 < v71)
      {
        v71 = v76;
      }

      v63[102] = v71;
      v78 = v137[v58 / 2];
      v79 = (((((v78 - (((v73 << 13) + 0x8000) >> 16)) * v75) >> 3) - 4096) * (v74 >> 2)) >> 4;
      if (v79 > 0)
      {
        v80 = 0x7FFFFFFF;
      }

      else
      {
        v80 = -2147483647;
      }

      if (10 * v72)
      {
        v80 = v79 / (10 * v72);
      }

      v81 = (v72 + (((v80 << 16) + 0x800000) >> 24));
      if (v81 <= 384)
      {
        LOWORD(v81) = 384;
      }

      v63[126] = v81;
      v82 = v59 + 6;
      v83 = 2 * (v59 + 6);
      v84 = (a1 + 180 + v83);
      v85 = a1 + v58;
      v86 = (a1 + 252 + v83);
      v87 = *(a1 + v58 + 264);
      v88 = *(a1 + v58 + 216);
      v70 = v70;
      if (v70 <= 768)
      {
        v70 = 768;
      }

      if (v70 >= ((9344 - (v59 << 7)) & 0xFF80))
      {
        LOWORD(v70) = (9344 - (v59 << 7)) & 0xFF80;
      }

      *(v85 + 192) = v70;
      v89 = *(v139 + v58 + 4);
      v90 = *(&v141[3] + v58 + 4);
      v91 = (v88 + ((((6554 * ((v89 * v90) >> 11)) >> 21) + 1) >> 1));
      if (v91 <= 768)
      {
        v91 = 768;
      }

      if (v91 < v77)
      {
        LOWORD(v77) = v91;
      }

      *(v85 + 216) = v77;
      v92 = (((((v78 - (((v88 << 13) + 0x8000) >> 16)) * v90) >> 3) - 4096) * (v89 >> 2)) >> 4;
      v93 = 10 * v87;
      if (v92 > 0)
      {
        v94 = 0x7FFFFFFF;
      }

      else
      {
        v94 = -2147483647;
      }

      v95 = 24;
      v96 = 0x800000;
      if (10 * v87)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v97 = v63[114];
      v98 = *(&v141[-1] + v58);
      v99 = *(&v141[5] + v58);
      v100 = (v69 + (((655 * ((v98 * v99) >> 11)) >> 16) >> 6));
      if (v100 <= 640)
      {
        v100 = 640;
      }

      if (v100 >= (v61 << 7))
      {
        LOWORD(v100) = v61 << 7;
      }

      v63[90] = v100;
      v101 = v137[v58 / 2];
      v102 = (v97 + ((((((((((v101 - (v64 >> 3)) * v99) >> 3) - 4096) * (((v98 << 14) + 0x8000) >> 16)) >> 14) / v97) << 16) + 0x200000) >> 22));
      if (v102 <= 384)
      {
        LOWORD(v102) = 384;
      }

      v63[114] = v102;
      v82 = v59 + 6;
      v103 = a1 + v58;
      v104 = *(v141 + v58 + 4);
      v105 = *(&v141[6] + v58 + 4);
      v106 = (v70 + (((655 * ((v104 * v105) >> 11)) >> 16) >> 6));
      if (v106 <= 768)
      {
        v106 = 768;
      }

      if (v106 >= ((9344 - (v59 << 7)) & 0xFF80))
      {
        LOWORD(v106) = (9344 - (v59 << 7)) & 0xFF80;
      }

      *(v103 + 192) = v106;
      v84 = (v103 + 192);
      v86 = v84 + 24;
      v93 = v84[24];
      v92 = ((((v105 * (v101 - (v66 >> 3))) >> 3) - 4096) * (((v104 << 14) + 0x8000) >> 16)) >> 14;
      if (v92 > 0)
      {
        v94 = 0x7FFFFFFF;
      }

      else
      {
        v94 = -2147483647;
      }

      v95 = 22;
      v96 = 0x200000;
      if (v84[24])
      {
        v87 = v84[24];
LABEL_92:
        v94 = v92 / v93;
        goto LABEL_93;
      }

      v87 = 0;
    }

LABEL_93:
    v107 = (v87 + ((v96 + (v94 << 16)) >> v95));
    if (v107 <= 384)
    {
      LOWORD(v107) = 384;
    }

    *v86 = v107;
    v108 = v63[90] * v65 + v63[96] * v67;
    v109 = a1 + v58;
    v110 = *(a1 + v58 + 204);
    v111 = kSpeechDataWeights[v58 / 2];
    v112 = kSpeechDataWeights[v58 / 2 + 6];
    v113 = v111 * v110 + v112 * *(a1 + v58 + 216);
    v114 = (v113 >> 9) - (v108 >> 9);
    v115 = kMinimumDifference[v58 / 2];
    if (v115 > ((v113 >> 9) - (v108 >> 9)))
    {
      v116 = v63[90];
      v117 = v63[96];
      v118 = *(a1 + v58 + 216);
      v119 = v115 - v114;
      v120 = (v115 - v114);
      v121 = (13 * v120) >> 2;
      v110 += v121;
      *(v109 + 204) = v110;
      v122 = v118 + v121;
      *(v109 + 216) = v122;
      v113 = v110 * v111 + v122 * v112;
      v123 = (v120 + 2 * v119) >> 2;
      v124 = v116 - v123;
      v63[90] = v124;
      v63[96] = v117 - v123;
      v108 = v124 * v65 + (v117 - v123) * v67;
    }

    v60 = kMaximumSpeech[v58 / 2];
    v125 = v113 << 9;
    if (v60 < (v113 >> 7))
    {
      *(v109 + 204) = v60 - HIWORD(v125) + v110;
      *(a1 + 204 + 2 * v82) += v60 - HIWORD(v125);
      v126 = v108 << 9;
      v127 = kMaximumNoise[v58 / 2];
      if (v127 >= (v108 >> 7))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v126 = v108 << 9;
      v127 = kMaximumNoise[v58 / 2];
      if (v127 >= (v108 >> 7))
      {
        goto LABEL_46;
      }
    }

    v128 = v127 - HIWORD(v126);
    v63[90] += v128;
    *v84 += v128;
LABEL_46:
    ++v59;
    v58 += 2;
    --v61;
  }

  while (v58 != 12);
  ++*(a1 + 276);
  if (v136)
  {
    v129 = ++*(a1 + 282);
    if (v129 < 7)
    {
      v130 = v133;
    }

    else
    {
      *(a1 + 282) = 6;
      v130 = v134;
    }

    *(a1 + 280) = v130;
    result = 1;
    goto LABEL_112;
  }

LABEL_106:
  v131 = *(a1 + 280);
  if (v131 < 1)
  {
    result = 0;
  }

  else
  {
    *(a1 + 280) = v131 - 1;
    result = (v131 + 2);
  }

  *(a1 + 282) = 0;
LABEL_112:
  *a1 = result;
  return result;
}

uint64_t WebRtcVad_CalcVad32khz(uint64_t a1, __int16 *a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 >= 2)
  {
    v5 = a3 >> 1;
    v6 = *(a1 + 12);
    v7 = v18;
    do
    {
      v8.i32[0] = *a2;
      v8.i32[1] = a2[1];
      v9 = vsra_n_u32(vshr_n_u32(vmul_s32(v8, 0x5700000147BLL), 0xEuLL), v6, 1uLL);
      *v7++ = vadd_s32(vdup_lane_s32(v9, 1), v9).u16[0];
      a2 += 2;
      v6 = vsub_s32(v8, vshr_n_s32(vmul_s32(vshr_n_s32(vshl_n_s32(v9, 0x10uLL), 0x10uLL), 0x5700000147BLL), 0xCuLL));
      --v5;
    }

    while (v5);
    *(a1 + 12) = v6;
    v4 = *(a1 + 4);
    v3 = a3 >> 2;
    if (a3 >= 4)
    {
      v11 = v17;
      v12 = v18;
      v13 = v3;
      do
      {
        v14.i32[0] = *v12;
        v14.i32[1] = v12[1];
        v15 = vsra_n_u32(vshr_n_u32(vmul_s32(v14, 0x5700000147BLL), 0xEuLL), v4, 1uLL);
        *v11++ = vadd_s32(vdup_lane_s32(v15, 1), v15).u16[0];
        v12 += 2;
        v4 = vsub_s32(v14, vshr_n_s32(vmul_s32(vshr_n_s32(vshl_n_s32(v15, 0x10uLL), 0x10uLL), 0x5700000147BLL), 0xCuLL));
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v3 = 0;
    v4 = *(a1 + 4);
  }

  *(a1 + 4) = v4;
  return WebRtcVad_CalcVad8khz(a1, v17, v3);
}

uint64_t WebRtcVad_CalculateFeatures(unsigned __int16 *a1, uint64_t a2, unint64_t a3, __int16 *a4)
{
  v457[28] = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    goto LABEL_22;
  }

  v4 = 0;
  v5 = a3 >> 1;
  v6 = a1[340] << 16;
  v7 = a3 >> 1;
  do
  {
    v8 = *(a2 + 1 * v4);
    v9 = v6 + 20972 * v8;
    v456[v4] = HIWORD(v9);
    v6 = -41944 * (v9 >> 16) + (v8 << 15);
    ++v4;
    --v7;
  }

  while (v7);
  v10 = 0;
  v11 = a1[345] << 16;
  a1[340] = HIWORD(v6);
  v12 = a3 >> 1;
  do
  {
    v13 = *(a2 + 2 + 1 * v10);
    v14 = v11 + 5571 * v13;
    v453[v10] = HIWORD(v14);
    v11 = -11142 * (v14 >> 16) + (v13 << 15);
    ++v10;
    --v12;
  }

  while (v12);
  a1[345] = HIWORD(v11);
  if (a3 < 8)
  {
    v15 = 0;
    v16 = v453;
    v17 = v456;
    goto LABEL_19;
  }

  if (a3 >= 0x20)
  {
    v15 = v5 & 0x7FFFFFFFFFFFFFF0;
    v18 = v455;
    v19 = v457;
    v20 = v5 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v21 = v19[-1];
      v22 = *v19;
      v23 = v18[-1];
      v24 = *v18;
      v25 = vsubq_s16(*v19, *v18);
      v19[-1] = vsubq_s16(v21, v23);
      *v19 = v25;
      v18[-1] = vaddq_s16(v23, v21);
      *v18 = vaddq_s16(v24, v22);
      v18 += 2;
      v19 += 2;
      v20 -= 16;
    }

    while (v20);
    if (v5 == v15)
    {
      goto LABEL_21;
    }

    if ((a3 & 0x18) == 0)
    {
      v16 = &v453[v15];
      v17 = &v456[v15];
LABEL_19:
      v32 = v5 - v15;
      do
      {
        v33 = *v17;
        v34 = *v16;
        *v17++ -= *v16;
        *v16++ = v34 + v33;
        --v32;
      }

      while (v32);
      goto LABEL_21;
    }
  }

  else
  {
    v15 = 0;
  }

  v26 = v15;
  v15 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  v17 = &v456[v5 & 0x7FFFFFFFFFFFFFFCLL];
  v16 = &v453[v5 & 0x7FFFFFFFFFFFFFFCLL];
  v27 = &v453[v26];
  v28 = &v456[v26];
  v29 = v26 - (v5 & 0x7FFFFFFFFFFFFFFCLL);
  do
  {
    v30 = *v28;
    v31 = *v27;
    *v28 = vsub_s16(*v28, *v27);
    ++v28;
    *v27++ = vadd_s16(v31, v30);
    v29 += 4;
  }

  while (v29);
  if (v5 != v15)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (a3 < 4)
  {
LABEL_22:
    v35 = 0;
    LOWORD(v36) = -1;
    LOBYTE(v37) = 1;
    goto LABEL_23;
  }

  v47 = 0;
  v35 = a3 >> 2;
  v48 = a1[341] << 16;
  v49 = 2 * (a3 >> 2);
  do
  {
    v50 = v456[v47];
    v51 = v48 + 20972 * v50;
    v451[v47 / 2] = HIWORD(v51);
    v48 = -41944 * (v51 >> 16) + (v50 << 15);
    v47 += 2;
  }

  while (v49 != v47);
  v52 = 0;
  a1[341] = HIWORD(v48);
  v53 = a1[346] << 16;
  do
  {
    v54 = v456[v52 + 1];
    v55 = v53 + 5571 * v54;
    v449[v52 / 2] = HIWORD(v55);
    v53 = -11142 * (v55 >> 16) + (v54 << 15);
    v52 += 2;
  }

  while (v49 != v52);
  a1[346] = HIWORD(v53);
  if (a3 < 0x10)
  {
    v56 = 0;
    v57 = v449;
    v58 = v451;
    goto LABEL_402;
  }

  if (a3 >= 0x40)
  {
    v56 = v35 & 0x3FFFFFFFFFFFFFF0;
    v75 = v450;
    v76 = v452;
    v77 = v35 & 0x3FFFFFFFFFFFFFF0;
    do
    {
      v78 = v76[-1];
      v79 = *v76;
      v80 = v75[-1];
      v81 = *v75;
      v82 = vsubq_s16(*v76, *v75);
      v76[-1] = vsubq_s16(v78, v80);
      *v76 = v82;
      v75[-1] = vaddq_s16(v80, v78);
      *v75 = vaddq_s16(v81, v79);
      v75 += 2;
      v76 += 2;
      v77 -= 16;
    }

    while (v77);
    if (v35 == v56)
    {
      goto LABEL_404;
    }

    if ((a3 & 0x30) == 0)
    {
      v57 = &v449[v56];
      v58 = &v451[v56];
LABEL_402:
      v431 = v35 - v56;
      do
      {
        v432 = *v58;
        v433 = *v57;
        *v58 -= *v57;
        v58 += 2;
        *v57++ = v433 + v432;
        --v431;
      }

      while (v431);
      goto LABEL_404;
    }
  }

  else
  {
    v56 = 0;
  }

  v83 = v56;
  v56 = v35 & 0x3FFFFFFFFFFFFFFCLL;
  v58 = &v451[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v57 = &v449[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v84 = &v449[v83];
  v85 = &v451[v83];
  v86 = v83 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
  do
  {
    v87 = *v85;
    v88 = *v84;
    *v85 = vsub_s16(*v85, *v84);
    ++v85;
    *v84++ = vadd_s16(v88, v87);
    v86 += 4;
  }

  while (v86);
  if (v35 != v56)
  {
    goto LABEL_402;
  }

LABEL_404:
  if (a3 < 0x10)
  {
    LOWORD(v36) = -1;
    v434 = v451;
    v37 = a3 >> 2;
    goto LABEL_424;
  }

  if (a3 >= 0x40)
  {
    v435 = v35 & 0x3FFFFFFFFFFFFFF0;
    v436 = v452;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = v35 & 0x3FFFFFFFFFFFFFF0;
    v439.i64[0] = -1;
    v439.i64[1] = -1;
    do
    {
      v437 = vmaxq_s16(vabsq_s16(v436[-1]), v437);
      v439 = vmaxq_s16(vabsq_s16(*v436), v439);
      v436 += 2;
      v438 -= 16;
    }

    while (v438);
    v440 = vmaxq_s16(v437, v439);
    v440.i16[0] = vmaxvq_s16(v440);
    v36 = v440.i32[0];
    if (v35 == v435)
    {
      goto LABEL_415;
    }

    if ((a3 & 0x30) == 0)
    {
      v37 = (a3 >> 2) & 0xF;
      v434 = &v451[v435];
      goto LABEL_424;
    }
  }

  else
  {
    v435 = 0;
    v36 = 0xFFFF;
  }

  v434 = &v451[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v37 = (a3 >> 2) & 3;
  v441 = vdup_n_s16(v36);
  v442 = v435 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
  v443 = &v451[v435];
  do
  {
    v444 = *v443++;
    v441 = vmax_s16(vabs_s16(v444), v441);
    v442 += 4;
  }

  while (v442);
  LOWORD(v36) = vmaxv_s16(v441);
  if (v35 == (v35 & 0x3FFFFFFFFFFFFFFCLL))
  {
LABEL_415:
    LOBYTE(v37) = 0;
    goto LABEL_23;
  }

  do
  {
LABEL_424:
    v448 = *v434;
    v434 += 2;
    v447 = v448;
    if (v448 < 0)
    {
      v447 = -v447;
    }

    if (v447 > v36)
    {
      LOWORD(v36) = v447;
    }

    --v37;
  }

  while (v37);
LABEL_23:
  v38 = 32 - __clz(v35);
  v39 = v38;
  v40 = __clz(v36 * v36) - 1;
  if (!v36)
  {
    LOWORD(v40) = 0;
  }

  v41 = v38 - v40;
  v42 = v39 < v40 || v36 == 0;
  v43 = v41;
  if (v42)
  {
    v43 = 0;
  }

  if (v37)
  {
LABEL_72:
    v98 = 0;
    a4[5] = 176;
    if (v37)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  if (v35 < 4)
  {
    v44 = 0;
    v45 = 0;
    v46 = v451;
    goto LABEL_60;
  }

  v59 = vdupq_n_s32(v43);
  if (v35 >= 0x10)
  {
    v45 = v35 & 0x3FFFFFFFFFFFFFF0;
    v60 = v452;
    v61 = 0uLL;
    v62 = vnegq_s32(v59);
    v63 = v35 & 0x3FFFFFFFFFFFFFF0;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    do
    {
      v67 = v60[-1];
      v68 = *v60;
      v64 = vaddq_s32(vshlq_u32(vmull_high_s16(v67, v67), v62), v64);
      v61 = vaddq_s32(vshlq_u32(vmull_s16(*v67.i8, *v67.i8), v62), v61);
      v66 = vaddq_s32(vshlq_u32(vmull_high_s16(v68, v68), v62), v66);
      v65 = vaddq_s32(vshlq_u32(vmull_s16(*v68.i8, *v68.i8), v62), v65);
      v60 += 2;
      v63 -= 16;
    }

    while (v63);
    v44 = vaddvq_s32(vaddq_s32(vaddq_s32(v65, v61), vaddq_s32(v66, v64)));
    if (v35 == v45)
    {
      goto LABEL_62;
    }

    if ((v35 & 0xC) == 0)
    {
      v46 = &v451[v45];
LABEL_60:
      v89 = v35 - v45;
      do
      {
        v90 = *v46;
        v46 += 2;
        v44 += (v90 * v90) >> v43;
        --v89;
      }

      while (v89);
      goto LABEL_62;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v69 = v45;
  v45 = v35 & 0x3FFFFFFFFFFFFFFCLL;
  v46 = &v451[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v70 = v44;
  v71 = &v451[v69];
  v72 = v69 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
  v73 = vnegq_s32(v59);
  do
  {
    v74 = *v71++;
    v70 = vaddq_s32(vshlq_u32(vmull_s16(v74, v74), v73), v70);
    v72 += 4;
  }

  while (v72);
  v44 = vaddvq_s32(v70);
  if (v35 != v45)
  {
    goto LABEL_60;
  }

LABEL_62:
  if (!v44)
  {
    goto LABEL_72;
  }

  v91 = __clz(v44);
  v92 = 17 - v91;
  v93 = 17 - v91 + v43;
  v94 = v44 << (v91 - 17);
  v95 = v44 >> v92;
  if (v44 >= 0x4000)
  {
    v94 = v95;
  }

  v96 = ((24660 * ((v94 >> 4) & 0x3FF) + 353525760) >> 19) + ((24660 * v93) >> 9);
  if ((v96 & 0x8000) != 0)
  {
    v97 = 176;
  }

  else
  {
    v97 = v96 + 176;
  }

  a4[5] = v97;
  if ((v93 & 0x80000000) == 0)
  {
    v98 = 11;
    if ((v37 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    LOWORD(v99) = -1;
    goto LABEL_92;
  }

  v98 = v94 >> -v93;
  if (v37)
  {
    goto LABEL_73;
  }

LABEL_70:
  if (v35 < 4)
  {
    LOWORD(v99) = -1;
    v100 = v449;
    v101 = v35;
    goto LABEL_87;
  }

  if (v35 < 0x10)
  {
    v102 = 0;
    v99 = 0xFFFF;
LABEL_80:
    v100 = &v449[v35 & 0x3FFFFFFFFFFFFFFCLL];
    v101 = v35 & 3;
    v108 = vdup_n_s16(v99);
    v109 = &v449[v102];
    v110 = v102 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
    do
    {
      v111 = *v109++;
      v108 = vmax_s16(vabs_s16(v111), v108);
      v110 += 4;
    }

    while (v110);
    LOWORD(v99) = vmaxv_s16(v108);
    if (v35 == (v35 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

  v102 = v35 & 0x3FFFFFFFFFFFFFF0;
  v103 = v450;
  v104.i64[0] = -1;
  v104.i64[1] = -1;
  v105 = v35 & 0x3FFFFFFFFFFFFFF0;
  v106.i64[0] = -1;
  v106.i64[1] = -1;
  do
  {
    v104 = vmaxq_s16(vabsq_s16(v103[-1]), v104);
    v106 = vmaxq_s16(vabsq_s16(*v103), v106);
    v103 += 2;
    v105 -= 16;
  }

  while (v105);
  v107 = vmaxq_s16(v104, v106);
  v107.i16[0] = vmaxvq_s16(v107);
  v99 = v107.i32[0];
  if (v35 == v102)
  {
    goto LABEL_92;
  }

  if ((v35 & 0xC) != 0)
  {
    goto LABEL_80;
  }

  v101 = v35 & 0xF;
  v100 = &v449[v102];
  do
  {
LABEL_87:
    v113 = *v100++;
    v112 = v113;
    if (v113 < 0)
    {
      v112 = -v112;
    }

    if (v112 > v99)
    {
      LOWORD(v99) = v112;
    }

    --v101;
  }

  while (v101);
LABEL_92:
  v114 = __clz(v99 * v99) - 1;
  v115 = v99;
  if (!v99)
  {
    LOWORD(v114) = 0;
  }

  v116 = v39;
  v117 = v39 < v114 || v115 == 0;
  v118 = (v39 - v114);
  if (v117)
  {
    v118 = 0;
  }

  if (v37)
  {
    goto LABEL_125;
  }

  if (v35 < 4)
  {
    v119 = 0;
    v120 = 0;
    v121 = v449;
    goto LABEL_113;
  }

  v122 = vdupq_n_s32(v118);
  if (v35 >= 0x10)
  {
    v120 = v35 & 0x3FFFFFFFFFFFFFF0;
    v123 = v450;
    v124 = 0uLL;
    v125 = vnegq_s32(v122);
    v126 = v35 & 0x3FFFFFFFFFFFFFF0;
    v127 = 0uLL;
    v128 = 0uLL;
    v129 = 0uLL;
    do
    {
      v130 = v123[-1];
      v131 = *v123;
      v127 = vaddq_s32(vshlq_u32(vmull_high_s16(v130, v130), v125), v127);
      v124 = vaddq_s32(vshlq_u32(vmull_s16(*v130.i8, *v130.i8), v125), v124);
      v129 = vaddq_s32(vshlq_u32(vmull_high_s16(v131, v131), v125), v129);
      v128 = vaddq_s32(vshlq_u32(vmull_s16(*v131.i8, *v131.i8), v125), v128);
      v123 += 2;
      v126 -= 16;
    }

    while (v126);
    v119 = vaddvq_s32(vaddq_s32(vaddq_s32(v128, v124), vaddq_s32(v129, v127)));
    if (v35 == v120)
    {
      goto LABEL_115;
    }

    if ((v35 & 0xC) == 0)
    {
      v121 = &v449[v120];
LABEL_113:
      v138 = v35 - v120;
      do
      {
        v139 = *v121++;
        v119 += (v139 * v139) >> v118;
        --v138;
      }

      while (v138);
      goto LABEL_115;
    }
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v132 = v120;
  v120 = v35 & 0x3FFFFFFFFFFFFFFCLL;
  v121 = &v449[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v133 = v119;
  v134 = &v449[v132];
  v135 = v132 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
  v136 = vnegq_s32(v122);
  do
  {
    v137 = *v134++;
    v133 = vaddq_s32(vshlq_u32(vmull_s16(v137, v137), v136), v133);
    v135 += 4;
  }

  while (v135);
  v119 = vaddvq_s32(v133);
  if (v35 != v120)
  {
    goto LABEL_113;
  }

LABEL_115:
  if (!v119)
  {
LABEL_125:
    a4[4] = 176;
    goto LABEL_126;
  }

  v140 = __clz(v119);
  v141 = 17 - v140;
  v142 = 17 - v140 + v118;
  v143 = v119 << (v140 - 17);
  v144 = v119 >> v141;
  if (v119 >= 0x4000)
  {
    v143 = v144;
  }

  v145 = ((24660 * ((v143 >> 4) & 0x3FF) + 353525760) >> 19) + ((24660 * v142) >> 9);
  if ((v145 & 0x8000) != 0)
  {
    v146 = 176;
  }

  else
  {
    v146 = v145 + 176;
  }

  a4[4] = v146;
  if (v98 < 11)
  {
    if ((v142 & 0x80000000) != 0)
    {
      v98 += v143 >> -v142;
      if ((v37 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v98 += 11;
      if ((v37 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

LABEL_149:
    LOWORD(v177) = -1;
    goto LABEL_150;
  }

LABEL_126:
  if (v37)
  {
    goto LABEL_149;
  }

LABEL_127:
  v147 = 0;
  v148 = a1[342] << 16;
  v149 = v453;
  do
  {
    v150 = *v149;
    v149 += 2;
    v151 = v148 + 20972 * v150;
    v451[v147] = HIWORD(v151);
    v148 = -41944 * (v151 >> 16) + (v150 << 15);
    ++v147;
  }

  while (v35 != v147);
  v152 = 0;
  a1[342] = HIWORD(v148);
  v153 = v454;
  v154 = a1[347] << 16;
  do
  {
    v155 = *v153;
    v153 += 2;
    v156 = v154 + 5571 * v155;
    v449[v152] = HIWORD(v156);
    v154 = -11142 * (v156 >> 16) + (v155 << 15);
    ++v152;
  }

  while (v35 != v152);
  a1[347] = HIWORD(v154);
  if (v35 < 4)
  {
    v157 = 0;
    v158 = v449;
    v159 = v451;
    goto LABEL_146;
  }

  if (v35 >= 0x10)
  {
    v157 = v35 & 0x3FFFFFFFFFFFFFF0;
    v160 = v450;
    v161 = v452;
    v162 = v35 & 0x3FFFFFFFFFFFFFF0;
    do
    {
      v163 = v161[-1];
      v164 = *v161;
      v165 = v160[-1];
      v166 = *v160;
      v167 = vsubq_s16(*v161, *v160);
      v161[-1] = vsubq_s16(v163, v165);
      *v161 = v167;
      v160[-1] = vaddq_s16(v165, v163);
      *v160 = vaddq_s16(v166, v164);
      v160 += 2;
      v161 += 2;
      v162 -= 16;
    }

    while (v162);
    if (v35 == v157)
    {
      goto LABEL_148;
    }

    if ((v35 & 0xC) == 0)
    {
      v158 = &v449[v157];
      v159 = &v451[v157];
LABEL_146:
      v174 = v35 - v157;
      do
      {
        v175 = *v159;
        v176 = *v158;
        *v159 -= *v158;
        v159 += 2;
        *v158++ = v176 + v175;
        --v174;
      }

      while (v174);
      goto LABEL_148;
    }
  }

  else
  {
    v157 = 0;
  }

  v168 = v157;
  v157 = v35 & 0x3FFFFFFFFFFFFFFCLL;
  v159 = &v451[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v158 = &v449[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v169 = &v449[v168];
  v170 = &v451[v168];
  v171 = v168 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
  do
  {
    v172 = *v170;
    v173 = *v169;
    *v170 = vsub_s16(*v170, *v169);
    ++v170;
    *v169++ = vadd_s16(v173, v172);
    v171 += 4;
  }

  while (v171);
  if (v35 != v157)
  {
    goto LABEL_146;
  }

LABEL_148:
  if (v37)
  {
    goto LABEL_149;
  }

  if (v35 < 4)
  {
    LOWORD(v177) = -1;
    v183 = v451;
    v184 = v35;
    goto LABEL_417;
  }

  if (v35 < 0x10)
  {
    v186 = 0;
    v177 = 0xFFFF;
LABEL_178:
    v183 = &v451[v35 & 0x3FFFFFFFFFFFFFFCLL];
    v184 = v35 & 3;
    v207 = vdup_n_s16(v177);
    v208 = &v451[v186];
    v209 = v186 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
    do
    {
      v210 = *v208++;
      v207 = vmax_s16(vabs_s16(v210), v207);
      v209 += 4;
    }

    while (v209);
    LOWORD(v177) = vmaxv_s16(v207);
    if (v35 == (v35 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_150;
    }

    goto LABEL_417;
  }

  v186 = v35 & 0x3FFFFFFFFFFFFFF0;
  v202 = v452;
  v203.i64[0] = -1;
  v203.i64[1] = -1;
  v204 = v35 & 0x3FFFFFFFFFFFFFF0;
  v205.i64[0] = -1;
  v205.i64[1] = -1;
  do
  {
    v203 = vmaxq_s16(vabsq_s16(v202[-1]), v203);
    v205 = vmaxq_s16(vabsq_s16(*v202), v205);
    v202 += 2;
    v204 -= 16;
  }

  while (v204);
  v206 = vmaxq_s16(v203, v205);
  v206.i16[0] = vmaxvq_s16(v206);
  v177 = v206.i32[0];
  if (v35 == v186)
  {
    goto LABEL_150;
  }

  if ((v35 & 0xC) != 0)
  {
    goto LABEL_178;
  }

  v184 = v35 & 0xF;
  v183 = &v451[v186];
  do
  {
LABEL_417:
    v446 = *v183;
    v183 += 2;
    v445 = v446;
    if (v446 < 0)
    {
      v445 = -v445;
    }

    if (v445 > v177)
    {
      LOWORD(v177) = v445;
    }

    --v184;
  }

  while (v184);
LABEL_150:
  v178 = __clz(v177 * v177) - 1;
  if (!v177)
  {
    LOWORD(v178) = 0;
  }

  LOWORD(v39) = v39 - v178;
  v179 = v116 < v178 || v177 == 0;
  v39 = v39;
  if (v179)
  {
    v39 = 0;
  }

  if (v37)
  {
    goto LABEL_200;
  }

  if (v35 < 4)
  {
    v180 = 0;
    v181 = 0;
    v182 = v451;
    goto LABEL_183;
  }

  v185 = vdupq_n_s32(v39);
  if (v35 >= 0x10)
  {
    v181 = v35 & 0x3FFFFFFFFFFFFFF0;
    v187 = v452;
    v188 = 0uLL;
    v189 = vnegq_s32(v185);
    v190 = v35 & 0x3FFFFFFFFFFFFFF0;
    v191 = 0uLL;
    v192 = 0uLL;
    v193 = 0uLL;
    do
    {
      v194 = v187[-1];
      v195 = *v187;
      v191 = vaddq_s32(vshlq_u32(vmull_high_s16(v194, v194), v189), v191);
      v188 = vaddq_s32(vshlq_u32(vmull_s16(*v194.i8, *v194.i8), v189), v188);
      v193 = vaddq_s32(vshlq_u32(vmull_high_s16(v195, v195), v189), v193);
      v192 = vaddq_s32(vshlq_u32(vmull_s16(*v195.i8, *v195.i8), v189), v192);
      v187 += 2;
      v190 -= 16;
    }

    while (v190);
    v180 = vaddvq_s32(vaddq_s32(vaddq_s32(v192, v188), vaddq_s32(v193, v191)));
    if (v35 == v181)
    {
      goto LABEL_185;
    }

    if ((v35 & 0xC) == 0)
    {
      v182 = &v451[v181];
LABEL_183:
      v211 = v35 - v181;
      do
      {
        v212 = *v182;
        v182 += 2;
        v180 += (v212 * v212) >> v39;
        --v211;
      }

      while (v211);
      goto LABEL_185;
    }
  }

  else
  {
    v180 = 0;
    v181 = 0;
  }

  v196 = v181;
  v181 = v35 & 0x3FFFFFFFFFFFFFFCLL;
  v182 = &v451[v35 & 0x3FFFFFFFFFFFFFFCLL];
  v197 = v180;
  v198 = &v451[v196];
  v199 = v196 - (v35 & 0x3FFFFFFFFFFFFFFCLL);
  v200 = vnegq_s32(v185);
  do
  {
    v201 = *v198++;
    v197 = vaddq_s32(vshlq_u32(vmull_s16(v201, v201), v200), v197);
    v199 += 4;
  }

  while (v199);
  v180 = vaddvq_s32(v197);
  if (v35 != v181)
  {
    goto LABEL_183;
  }

LABEL_185:
  if (!v180)
  {
LABEL_200:
    a4[3] = 176;
    goto LABEL_201;
  }

  v213 = __clz(v180);
  v214 = 17 - v213;
  v215 = 17 - v213 + v39;
  v216 = v180 << (v213 - 17);
  if (v180 >= 0x4000)
  {
    v216 = v180 >> v214;
  }

  v217 = ((24660 * ((v216 >> 4) & 0x3FF) + 353525760) >> 19) + ((24660 * v215) >> 9);
  if ((v217 & 0x8000) != 0)
  {
    v218 = 176;
  }

  else
  {
    v218 = v217 + 176;
  }

  a4[3] = v218;
  if (v98 >= 11)
  {
LABEL_201:
    v219 = a3 >> 3;
    if (a3 >= 8)
    {
      goto LABEL_194;
    }

LABEL_202:
    LOWORD(v232) = -1;
    goto LABEL_236;
  }

  if ((v215 & 0x80000000) != 0)
  {
    v98 += v216 >> -v215;
    v219 = a3 >> 3;
    if (a3 >= 8)
    {
      goto LABEL_194;
    }

    goto LABEL_202;
  }

  v98 += 11;
  v219 = a3 >> 3;
  if (a3 < 8)
  {
    goto LABEL_202;
  }

LABEL_194:
  v220 = 0;
  v221 = a1[343] << 16;
  v222 = 2 * v219;
  do
  {
    v223 = v449[v220];
    v224 = v221 + 20972 * v223;
    v456[v220 / 2] = HIWORD(v224);
    v221 = -41944 * (v224 >> 16) + (v223 << 15);
    v220 += 2;
  }

  while (v222 != v220);
  v225 = 0;
  a1[343] = HIWORD(v221);
  v226 = a1[348] << 16;
  do
  {
    v227 = v449[v225 + 1];
    v228 = v226 + 5571 * v227;
    v453[v225 / 2] = HIWORD(v228);
    v226 = -11142 * (v228 >> 16) + (v227 << 15);
    v225 += 2;
  }

  while (v222 != v225);
  a1[348] = HIWORD(v226);
  if (a3 < 0x20)
  {
    v229 = 0;
    v230 = v453;
    v231 = v456;
    goto LABEL_216;
  }

  if (a3 >= 0x80)
  {
    v229 = v219 & 0x1FFFFFFFFFFFFFF0;
    v233 = v455;
    v234 = v457;
    v235 = v219 & 0x1FFFFFFFFFFFFFF0;
    do
    {
      v236 = v234[-1];
      v237 = *v234;
      v238 = v233[-1];
      v239 = *v233;
      v240 = vsubq_s16(*v234, *v233);
      v234[-1] = vsubq_s16(v236, v238);
      *v234 = v240;
      v233[-1] = vaddq_s16(v238, v236);
      *v233 = vaddq_s16(v239, v237);
      v233 += 2;
      v234 += 2;
      v235 -= 16;
    }

    while (v235);
    if (v219 == v229)
    {
      goto LABEL_218;
    }

    if ((a3 & 0x60) == 0)
    {
      v230 = &v453[v229];
      v231 = &v456[v229];
LABEL_216:
      v247 = v219 - v229;
      do
      {
        v248 = *v231;
        v249 = *v230;
        *v231++ -= *v230;
        *v230++ = v249 + v248;
        --v247;
      }

      while (v247);
      goto LABEL_218;
    }
  }

  else
  {
    v229 = 0;
  }

  v241 = v229;
  v229 = v219 & 0x1FFFFFFFFFFFFFFCLL;
  v231 = &v456[v219 & 0x1FFFFFFFFFFFFFFCLL];
  v230 = &v453[v219 & 0x1FFFFFFFFFFFFFFCLL];
  v242 = &v453[v241];
  v243 = &v456[v241];
  v244 = v241 - (v219 & 0x1FFFFFFFFFFFFFFCLL);
  do
  {
    v245 = *v243;
    v246 = *v242;
    *v243 = vsub_s16(*v243, *v242);
    ++v243;
    *v242++ = vadd_s16(v246, v245);
    v244 += 4;
  }

  while (v244);
  if (v219 != v229)
  {
    goto LABEL_216;
  }

LABEL_218:
  if (a3 < 0x20)
  {
    LOWORD(v232) = -1;
    v250 = v456;
    v251 = v219;
    goto LABEL_231;
  }

  if (a3 < 0x80)
  {
    v252 = 0;
    v232 = 0xFFFF;
LABEL_226:
    v250 = &v456[v219 & 0x1FFFFFFFFFFFFFFCLL];
    v251 = (a3 >> 3) & 3;
    v258 = vdup_n_s16(v232);
    v259 = v252 - (v219 & 0x1FFFFFFFFFFFFFFCLL);
    v260 = &v456[v252];
    do
    {
      v261 = *v260++;
      v258 = vmax_s16(vabs_s16(v261), v258);
      v259 += 4;
    }

    while (v259);
    LOWORD(v232) = vmaxv_s16(v258);
    if (v219 == (v219 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_236;
    }

    goto LABEL_231;
  }

  v252 = v219 & 0x1FFFFFFFFFFFFFF0;
  v253 = v457;
  v254.i64[0] = -1;
  v254.i64[1] = -1;
  v255 = v219 & 0x1FFFFFFFFFFFFFF0;
  v256.i64[0] = -1;
  v256.i64[1] = -1;
  do
  {
    v254 = vmaxq_s16(vabsq_s16(v253[-1]), v254);
    v256 = vmaxq_s16(vabsq_s16(*v253), v256);
    v253 += 2;
    v255 -= 16;
  }

  while (v255);
  v257 = vmaxq_s16(v254, v256);
  v257.i16[0] = vmaxvq_s16(v257);
  v232 = v257.i32[0];
  if (v219 == v252)
  {
    goto LABEL_236;
  }

  if ((a3 & 0x60) != 0)
  {
    goto LABEL_226;
  }

  v251 = (a3 >> 3) & 0xF;
  v250 = &v456[v252];
  do
  {
LABEL_231:
    v263 = *v250++;
    v262 = v263;
    if (v263 < 0)
    {
      v262 = -v262;
    }

    if (v262 > v232)
    {
      LOWORD(v232) = v262;
    }

    --v251;
  }

  while (v251);
LABEL_236:
  v264 = 32 - __clz(v219);
  v265 = v264;
  v266 = __clz(v232 * v232) - 1;
  if (!v232)
  {
    LOWORD(v266) = 0;
  }

  v267 = v264 - v266;
  v268 = v265 < v266 || v232 == 0;
  v269 = v267;
  if (v268)
  {
    v269 = 0;
  }

  if (a3 < 8)
  {
    goto LABEL_274;
  }

  if (a3 < 0x20)
  {
    v270 = 0;
    v271 = 0;
    v272 = v456;
    goto LABEL_257;
  }

  v273 = vdupq_n_s32(v269);
  if (a3 >= 0x80)
  {
    v271 = v219 & 0x1FFFFFFFFFFFFFF0;
    v274 = v457;
    v275 = 0uLL;
    v276 = vnegq_s32(v273);
    v277 = v219 & 0x1FFFFFFFFFFFFFF0;
    v278 = 0uLL;
    v279 = 0uLL;
    v280 = 0uLL;
    do
    {
      v281 = v274[-1];
      v282 = *v274;
      v278 = vaddq_s32(vshlq_u32(vmull_high_s16(v281, v281), v276), v278);
      v275 = vaddq_s32(vshlq_u32(vmull_s16(*v281.i8, *v281.i8), v276), v275);
      v280 = vaddq_s32(vshlq_u32(vmull_high_s16(v282, v282), v276), v280);
      v279 = vaddq_s32(vshlq_u32(vmull_s16(*v282.i8, *v282.i8), v276), v279);
      v274 += 2;
      v277 -= 16;
    }

    while (v277);
    v270 = vaddvq_s32(vaddq_s32(vaddq_s32(v279, v275), vaddq_s32(v280, v278)));
    if (v219 == v271)
    {
      goto LABEL_259;
    }

    if ((a3 & 0x60) == 0)
    {
      v272 = &v456[v271];
LABEL_257:
      v289 = v219 - v271;
      do
      {
        v290 = *v272++;
        v270 += (v290 * v290) >> v269;
        --v289;
      }

      while (v289);
      goto LABEL_259;
    }
  }

  else
  {
    v270 = 0;
    v271 = 0;
  }

  v283 = v271;
  v271 = v219 & 0x1FFFFFFFFFFFFFFCLL;
  v272 = &v456[v219 & 0x1FFFFFFFFFFFFFFCLL];
  v284 = v270;
  v285 = &v456[v283];
  v286 = v283 - (v219 & 0x1FFFFFFFFFFFFFFCLL);
  v287 = vnegq_s32(v273);
  do
  {
    v288 = *v285++;
    v284 = vaddq_s32(vshlq_u32(vmull_s16(v288, v288), v287), v284);
    v286 += 4;
  }

  while (v286);
  v270 = vaddvq_s32(v284);
  if (v219 != v271)
  {
    goto LABEL_257;
  }

LABEL_259:
  if (!v270)
  {
LABEL_274:
    a4[2] = 272;
    goto LABEL_275;
  }

  v291 = __clz(v270);
  v292 = 17 - v291 + v269;
  v293 = v270 << (v291 - 17);
  v294 = v270 >> (17 - v291);
  if (v270 >= 0x4000)
  {
    v293 = v294;
  }

  v295 = ((24660 * ((v293 >> 4) & 0x3FF) + 353525760) >> 19) + ((24660 * v292) >> 9);
  if ((v295 & 0x8000) != 0)
  {
    v296 = 272;
  }

  else
  {
    v296 = v295 + 272;
  }

  a4[2] = v296;
  if (v98 >= 11)
  {
LABEL_275:
    v297 = a3 >> 4;
    v298 = 2 * (a3 >> 4);
    if (a3 >= 0x10)
    {
      goto LABEL_268;
    }

LABEL_276:
    LOWORD(v310) = -1;
    goto LABEL_310;
  }

  if ((v292 & 0x80000000) != 0)
  {
    v98 += v293 >> -v292;
    v297 = a3 >> 4;
    v298 = 2 * (a3 >> 4);
    if (a3 >= 0x10)
    {
      goto LABEL_268;
    }

    goto LABEL_276;
  }

  v98 += 11;
  v297 = a3 >> 4;
  v298 = 2 * (a3 >> 4);
  if (a3 < 0x10)
  {
    goto LABEL_276;
  }

LABEL_268:
  v299 = 0;
  v300 = a1[344] << 16;
  do
  {
    v301 = v453[v299];
    v302 = v300 + 20972 * v301;
    v451[v299 / 2] = HIWORD(v302);
    v300 = -41944 * (v302 >> 16) + (v301 << 15);
    v299 += 2;
  }

  while (v298 != v299);
  v303 = 0;
  a1[344] = HIWORD(v300);
  v304 = a1[349] << 16;
  do
  {
    v305 = v454[v303];
    v306 = v304 + 5571 * v305;
    v449[v303 / 2] = HIWORD(v306);
    v304 = -11142 * (v306 >> 16) + (v305 << 15);
    v303 += 2;
  }

  while (v298 != v303);
  a1[349] = HIWORD(v304);
  if (a3 < 0x40)
  {
    v307 = 0;
    v308 = v449;
    v309 = v451;
    goto LABEL_290;
  }

  if (a3 >= 0x100)
  {
    v307 = v297 & 0xFFFFFFFFFFFFFF0;
    v311 = v450;
    v312 = v452;
    v313 = v297 & 0xFFFFFFFFFFFFFF0;
    do
    {
      v314 = v312[-1];
      v315 = *v312;
      v316 = v311[-1];
      v317 = *v311;
      v318 = vsubq_s16(*v312, *v311);
      v312[-1] = vsubq_s16(v314, v316);
      *v312 = v318;
      v311[-1] = vaddq_s16(v316, v314);
      *v311 = vaddq_s16(v317, v315);
      v311 += 2;
      v312 += 2;
      v313 -= 16;
    }

    while (v313);
    if (v297 == v307)
    {
      goto LABEL_292;
    }

    if ((a3 & 0xC0) == 0)
    {
      v308 = &v449[v307];
      v309 = &v451[v307];
LABEL_290:
      v325 = v297 - v307;
      do
      {
        v326 = *v309;
        v327 = *v308;
        *v309 -= *v308;
        v309 += 2;
        *v308++ = v327 + v326;
        --v325;
      }

      while (v325);
      goto LABEL_292;
    }
  }

  else
  {
    v307 = 0;
  }

  v319 = v307;
  v307 = v297 & 0xFFFFFFFFFFFFFFCLL;
  v309 = &v451[v297 & 0xFFFFFFFFFFFFFFCLL];
  v308 = &v449[v297 & 0xFFFFFFFFFFFFFFCLL];
  v320 = &v449[v319];
  v321 = &v451[v319];
  v322 = v319 - (v297 & 0xFFFFFFFFFFFFFFCLL);
  do
  {
    v323 = *v321;
    v324 = *v320;
    *v321 = vsub_s16(*v321, *v320);
    ++v321;
    *v320++ = vadd_s16(v324, v323);
    v322 += 4;
  }

  while (v322);
  if (v297 != v307)
  {
    goto LABEL_290;
  }

LABEL_292:
  if (a3 < 0x40)
  {
    LOWORD(v310) = -1;
    v328 = v451;
    v329 = v297;
    goto LABEL_305;
  }

  if (a3 < 0x100)
  {
    v330 = 0;
    v310 = 0xFFFF;
LABEL_300:
    v328 = &v451[v297 & 0xFFFFFFFFFFFFFFCLL];
    v329 = (a3 >> 4) & 3;
    v336 = vdup_n_s16(v310);
    v337 = v330 - (v297 & 0xFFFFFFFFFFFFFFCLL);
    v338 = &v451[v330];
    do
    {
      v339 = *v338++;
      v336 = vmax_s16(vabs_s16(v339), v336);
      v337 += 4;
    }

    while (v337);
    LOWORD(v310) = vmaxv_s16(v336);
    if (v297 == (v297 & 0xFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_310;
    }

    goto LABEL_305;
  }

  v330 = v297 & 0xFFFFFFFFFFFFFF0;
  v331 = v452;
  v332.i64[0] = -1;
  v332.i64[1] = -1;
  v333 = v297 & 0xFFFFFFFFFFFFFF0;
  v334.i64[0] = -1;
  v334.i64[1] = -1;
  do
  {
    v332 = vmaxq_s16(vabsq_s16(v331[-1]), v332);
    v334 = vmaxq_s16(vabsq_s16(*v331), v334);
    v331 += 2;
    v333 -= 16;
  }

  while (v333);
  v335 = vmaxq_s16(v332, v334);
  v335.i16[0] = vmaxvq_s16(v335);
  v310 = v335.i32[0];
  if (v297 == v330)
  {
    goto LABEL_310;
  }

  if ((a3 & 0xC0) != 0)
  {
    goto LABEL_300;
  }

  v329 = a3 >> 4;
  v328 = &v451[v330];
  do
  {
LABEL_305:
    v341 = *v328;
    v328 += 2;
    v340 = v341;
    if (v341 < 0)
    {
      v340 = -v340;
    }

    if (v340 > v310)
    {
      LOWORD(v310) = v340;
    }

    --v329;
  }

  while (v329);
LABEL_310:
  v342 = 32 - __clz(v297);
  v343 = v342;
  v344 = __clz(v310 * v310) - 1;
  if (!v310)
  {
    LOWORD(v344) = 0;
  }

  v345 = v342 - v344;
  v346 = v343 < v344 || v310 == 0;
  v347 = v345;
  if (v346)
  {
    v347 = 0;
  }

  if (a3 < 0x10)
  {
    goto LABEL_346;
  }

  if (a3 < 0x40)
  {
    v348 = 0;
    v349 = 0;
    v350 = v451;
    goto LABEL_331;
  }

  v351 = vdupq_n_s32(v347);
  if (a3 >= 0x100)
  {
    v349 = v297 & 0xFFFFFFFFFFFFFF0;
    v352 = v452;
    v353 = 0uLL;
    v354 = vnegq_s32(v351);
    v355 = v297 & 0xFFFFFFFFFFFFFF0;
    v356 = 0uLL;
    v357 = 0uLL;
    v358 = 0uLL;
    do
    {
      v359 = v352[-1];
      v360 = *v352;
      v356 = vaddq_s32(vshlq_u32(vmull_high_s16(v359, v359), v354), v356);
      v353 = vaddq_s32(vshlq_u32(vmull_s16(*v359.i8, *v359.i8), v354), v353);
      v358 = vaddq_s32(vshlq_u32(vmull_high_s16(v360, v360), v354), v358);
      v357 = vaddq_s32(vshlq_u32(vmull_s16(*v360.i8, *v360.i8), v354), v357);
      v352 += 2;
      v355 -= 16;
    }

    while (v355);
    v348 = vaddvq_s32(vaddq_s32(vaddq_s32(v357, v353), vaddq_s32(v358, v356)));
    if (v297 == v349)
    {
      goto LABEL_333;
    }

    if ((a3 & 0xC0) == 0)
    {
      v350 = &v451[v349];
LABEL_331:
      v367 = v297 - v349;
      do
      {
        v368 = *v350;
        v350 += 2;
        v348 += (v368 * v368) >> v347;
        --v367;
      }

      while (v367);
      goto LABEL_333;
    }
  }

  else
  {
    v348 = 0;
    v349 = 0;
  }

  v361 = v349;
  v349 = v297 & 0xFFFFFFFFFFFFFFCLL;
  v350 = &v451[v297 & 0xFFFFFFFFFFFFFFCLL];
  v362 = v348;
  v363 = &v451[v361];
  v364 = v361 - (v297 & 0xFFFFFFFFFFFFFFCLL);
  v365 = vnegq_s32(v351);
  do
  {
    v366 = *v363++;
    v362 = vaddq_s32(vshlq_u32(vmull_s16(v366, v366), v365), v362);
    v364 += 4;
  }

  while (v364);
  v348 = vaddvq_s32(v362);
  if (v297 != v349)
  {
    goto LABEL_331;
  }

LABEL_333:
  if (!v348)
  {
LABEL_346:
    a4[1] = 368;
    goto LABEL_347;
  }

  v369 = __clz(v348);
  v370 = 17 - v369;
  v371 = 17 - v369 + v347;
  v372 = v348 << (v369 - 17);
  v373 = v348 >> v370;
  if (v348 >= 0x4000)
  {
    v372 = v373;
  }

  v374 = ((24660 * ((v372 >> 4) & 0x3FF) + 353525760) >> 19) + ((24660 * v371) >> 9);
  if ((v374 & 0x8000) != 0)
  {
    v375 = 368;
  }

  else
  {
    v375 = v374 + 368;
  }

  a4[1] = v375;
  if (v98 < 11)
  {
    if ((v371 & 0x80000000) != 0)
    {
      v98 += v372 >> -v371;
    }

    else
    {
      v98 += 11;
    }

    goto LABEL_342;
  }

LABEL_347:
  if (a3 < 0x10)
  {
    LOWORD(v383) = -1;
    goto LABEL_366;
  }

LABEL_342:
  v376 = 0;
  v377 = a1[350];
  v378 = a1[351];
  LOWORD(v379) = a1[352];
  v380 = a1[353];
  do
  {
    v381 = v377;
    v382 = v379;
    v377 = v449[v376 / 2];
    v379 = (1073736204 * v380 + 7756 * v379 + 1073728562 * v381 + 6631 * (v377 + v378)) >> 14;
    v456[v376 / 2] = v379;
    v376 += 2;
    v380 = v382;
    v378 = v381;
  }

  while (v298 != v376);
  a1[350] = v377;
  a1[351] = v381;
  a1[352] = v379;
  a1[353] = v382;
  if (a3 < 0x40)
  {
    LOWORD(v383) = -1;
    v384 = v456;
    v385 = v297;
    goto LABEL_361;
  }

  if (a3 < 0x100)
  {
    v386 = 0;
    v383 = 0xFFFF;
LABEL_355:
    v384 = &v456[v297 & 0xFFFFFFFFFFFFFFCLL];
    v385 = (a3 >> 4) & 3;
    v392 = vdup_n_s16(v383);
    v393 = v386 - (v297 & 0xFFFFFFFFFFFFFFCLL);
    v394 = &v456[v386];
    do
    {
      v395 = *v394++;
      v392 = vmax_s16(vabs_s16(v395), v392);
      v393 += 4;
    }

    while (v393);
    LOWORD(v383) = vmaxv_s16(v392);
    if (v297 == (v297 & 0xFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_366;
    }

    goto LABEL_361;
  }

  v386 = v297 & 0xFFFFFFFFFFFFFF0;
  v387 = v457;
  v388.i64[0] = -1;
  v388.i64[1] = -1;
  v389 = v297 & 0xFFFFFFFFFFFFFF0;
  v390.i64[0] = -1;
  v390.i64[1] = -1;
  do
  {
    v388 = vmaxq_s16(vabsq_s16(v387[-1]), v388);
    v390 = vmaxq_s16(vabsq_s16(*v387), v390);
    v387 += 2;
    v389 -= 16;
  }

  while (v389);
  v391 = vmaxq_s16(v388, v390);
  v391.i16[0] = vmaxvq_s16(v391);
  v383 = v391.i32[0];
  if (v297 == v386)
  {
    goto LABEL_366;
  }

  if ((a3 & 0xC0) != 0)
  {
    goto LABEL_355;
  }

  v385 = a3 >> 4;
  v384 = &v456[v386];
  do
  {
LABEL_361:
    v397 = *v384++;
    v396 = v397;
    if (v397 < 0)
    {
      v396 = -v396;
    }

    if (v396 > v383)
    {
      LOWORD(v383) = v396;
    }

    --v385;
  }

  while (v385);
LABEL_366:
  v398 = __clz(v383 * v383) - 1;
  if (!v383)
  {
    LOWORD(v398) = 0;
  }

  v399 = v343;
  v400 = v343 - v398;
  v401 = v399 < v398 || v383 == 0;
  v402 = v400;
  if (v401)
  {
    v402 = 0;
  }

  if (a3 < 0x10)
  {
    goto LABEL_398;
  }

  if (a3 < 0x40)
  {
    v403 = 0;
    v404 = 0;
    v405 = v456;
    goto LABEL_387;
  }

  v406 = vdupq_n_s32(v402);
  if (a3 >= 0x100)
  {
    v404 = v297 & 0xFFFFFFFFFFFFFF0;
    v407 = v457;
    v408 = 0uLL;
    v409 = vnegq_s32(v406);
    v410 = v297 & 0xFFFFFFFFFFFFFF0;
    v411 = 0uLL;
    v412 = 0uLL;
    v413 = 0uLL;
    do
    {
      v414 = v407[-1];
      v415 = *v407;
      v411 = vaddq_s32(vshlq_u32(vmull_high_s16(v414, v414), v409), v411);
      v408 = vaddq_s32(vshlq_u32(vmull_s16(*v414.i8, *v414.i8), v409), v408);
      v413 = vaddq_s32(vshlq_u32(vmull_high_s16(v415, v415), v409), v413);
      v412 = vaddq_s32(vshlq_u32(vmull_s16(*v415.i8, *v415.i8), v409), v412);
      v407 += 2;
      v410 -= 16;
    }

    while (v410);
    v403 = vaddvq_s32(vaddq_s32(vaddq_s32(v412, v408), vaddq_s32(v413, v411)));
    if (v297 == v404)
    {
      goto LABEL_389;
    }

    if ((a3 & 0xC0) == 0)
    {
      v405 = &v456[v404];
LABEL_387:
      v422 = v297 - v404;
      do
      {
        v423 = *v405++;
        v403 += (v423 * v423) >> v402;
        --v422;
      }

      while (v422);
      goto LABEL_389;
    }
  }

  else
  {
    v403 = 0;
    v404 = 0;
  }

  v416 = v404;
  v404 = v297 & 0xFFFFFFFFFFFFFFCLL;
  v405 = &v456[v297 & 0xFFFFFFFFFFFFFFCLL];
  v417 = v403;
  v418 = &v456[v416];
  v419 = v416 - (v297 & 0xFFFFFFFFFFFFFFCLL);
  v420 = vnegq_s32(v406);
  do
  {
    v421 = *v418++;
    v417 = vaddq_s32(vshlq_u32(vmull_s16(v421, v421), v420), v417);
    v419 += 4;
  }

  while (v419);
  v403 = vaddvq_s32(v417);
  if (v297 != v404)
  {
    goto LABEL_387;
  }

LABEL_389:
  if (!v403)
  {
LABEL_398:
    *a4 = 368;
    return v98;
  }

  v424 = __clz(v403);
  v425 = 17 - v424 + v402;
  v426 = v403 << (v424 - 17);
  v427 = v403 >> (17 - v424);
  if (v403 >= 0x4000)
  {
    v426 = v427;
  }

  v428 = ((24660 * ((v426 >> 4) & 0x3FF) + 353525760) >> 19) + ((24660 * v425) >> 9);
  if ((v428 & 0x8000) != 0)
  {
    v429 = 368;
  }

  else
  {
    v429 = v428 + 368;
  }

  *a4 = v429;
  if (v98 < 11)
  {
    if ((v425 & 0x80000000) != 0)
    {
      v98 += v426 >> -v425;
    }

    else
    {
      LOWORD(v98) = v98 + 11;
    }
  }

  return v98;
}

__int16 *WebRtcVad_Downsampling(__int16 *result, _WORD *a2, unsigned int *a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (a4 >= 2)
  {
    v6 = a4 >> 1;
    do
    {
      v7 = ((5243 * *result) >> 14) + (v4 >> 1);
      *a2 = v7;
      v4 = *result - ((5243 * v7) >> 12);
      v8 = ((1392 * result[1]) >> 14) + (v5 >> 1);
      *a2++ = v8 + v7;
      v5 = result[1] - ((1392 * v8) >> 12);
      result += 2;
      --v6;
    }

    while (v6);
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t WebRtcVad_FindMinimum(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  v4 = 16 * a3;
  v5 = a1 + 2 * v4;
  v6 = v5 + 284;
  v7 = (v5 + 476);
  v8 = (v5 + 478);
  v9 = v8;
  do
  {
    while (1)
    {
      v10 = v3 <= 0xE ? 14 : v3;
      v11 = v3 >= 0xE ? 14 : v3;
      v12 = v3 <= 0xE ? 14 - v3 : 0;
      v13 = *(v6 + 2 * v3);
      if (v13 == 100)
      {
        break;
      }

      *(v6 + 2 * v3++) = v13 + 1;
      v9 = (v9 + 2);
      if (v3 == 16)
      {
        goto LABEL_21;
      }
    }

    if (v3 != 15)
    {
      v14 = v3;
      if (v12 <= 2)
      {
        goto LABEL_18;
      }

      v15 = ~v11 & 0xC;
      v16 = v12 + 1;
      v14 = v3 + (v16 & 0x1C);
      v17 = v9;
      do
      {
        *(v17 - 2) = *v17;
        *(v17 - 194) = *(v17 - 24);
        ++v17;
        v15 -= 4;
      }

      while (v15);
      if (v16 != (v16 & 0x1C))
      {
LABEL_18:
        v18 = v8 + v14;
        v19 = v10 - v14 + 1;
        do
        {
          *(v18 - 1) = *v18;
          *(v18 - 97) = *(v18 - 96);
          ++v18;
          --v19;
        }

        while (v19);
      }
    }

    *(v6 + 30) = 101;
    v7[15] = 10000;
    ++v3;
    v9 = (v9 + 2);
  }

  while (v3 != 16);
LABEL_21:
  if (v7[7] > a2)
  {
    if (v7[3] <= a2)
    {
      if (v7[5] <= a2)
      {
        v20 = 6;
        if (v7[6] <= a2)
        {
          v20 = 7;
        }
      }

      else
      {
        v20 = 4;
        if (v7[4] <= a2)
        {
          v20 = 5;
        }
      }
    }

    else if (v7[1] <= a2)
    {
      v20 = 2;
      if (v7[2] <= a2)
      {
        v20 = 3;
      }
    }

    else
    {
      v20 = *v7 <= a2;
    }

    goto LABEL_50;
  }

  if (v7[15] <= a2)
  {
    goto LABEL_53;
  }

  if (v7[11] > a2)
  {
    if (v7[9] <= a2)
    {
      v20 = 10;
      if (v7[10] <= a2)
      {
        v20 = 11;
      }
    }

    else
    {
      v20 = 8;
      if (v7[8] <= a2)
      {
        v20 = 9;
      }
    }

    goto LABEL_50;
  }

  if (v7[13] > a2)
  {
    v20 = 12;
    if (v7[12] <= a2)
    {
      v20 = 13;
    }

    goto LABEL_50;
  }

  if (v7[14] > a2)
  {
    v20 = 14;
LABEL_50:
    v21 = (a1 + 2 * v4 + 506);
    v22 = 15;
    v23 = v21;
    do
    {
      v24 = *--v23;
      --v22;
      *v21 = v24;
      *(v21 - 96) = *(v21 - 97);
      v21 = v23;
    }

    while (v22 > v20);
    goto LABEL_52;
  }

  v20 = 15;
LABEL_52:
  v7[v20] = a2;
  *(v6 + 2 * v20) = 1;
LABEL_53:
  v25 = *(a1 + 276);
  if (v25 < 3)
  {
    if (v25 <= 0)
    {
      v29 = 0;
      v27 = a3;
      LOWORD(v28) = *(a1 + 2 * a3 + 668);
      v26 = 1600;
      goto LABEL_59;
    }
  }

  else
  {
    v7 += 2;
  }

  v26 = *v7;
  v27 = a3;
  v28 = *(a1 + 2 * a3 + 668);
  if (v26 >= v28)
  {
    v29 = 32439;
  }

  else
  {
    v29 = 6553;
  }

LABEL_59:
  v30 = v28 + v28 * v29 + (v29 ^ 0x7FFF) * v26 + 0x4000;
  *(a1 + 2 * v27 + 668) = v30 >> 15;
  return (v30 >> 15);
}

uint64_t webrtc::VoiceActivityDetectorWrapper::VoiceActivityDetectorWrapper(uint64_t a1, int a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 / 10;
  v9 = (a2 % 10);
  if (v9 || (*a1 = v8, v9 = (a4 % 100), v9) || (*(a1 + 4) = a4 / 100, *(a1 + 8) = v8, v11 = *a3, *a3 = 0, *(a1 + 16) = v11, v12 = (*(*v11 + 16))(v11), v9 = (v12 % 100), v9))
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/checks.h", 487, "a % b == 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v9);
    goto LABEL_9;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if ((v12 + 99) >= 0xC7)
  {
    if (v12 > -100)
    {
      operator new();
    }

LABEL_9:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v13 = *(a1 + 4);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 48) = 0u;
  webrtc::PushResampler<float>::EnsureInitialized((a1 + 48), v13, 0, 1);
  (*(**(a1 + 16) + 24))(*(a1 + 16));
  return a1;
}

void webrtc::VoiceActivityDetectorWrapper::~VoiceActivityDetectorWrapper(webrtc::VoiceActivityDetectorWrapper *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(this + 17);
    v4 = *(this + 16);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 16);
    }

    *(this + 17) = v2;
    operator delete(v4);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    MEMORY[0x2743DA520](v7, 0x1000C8052888210);
  }

  v8 = *(this + 6);
  *(this + 6) = 0;
  if (v8)
  {
    MEMORY[0x2743DA520](v8, 0x1000C8052888210);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

void webrtc::VoiceActivityDetectorWrapper::Analyze(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 8) = v10;
  if ((v10 < 0) ^ v11 | (v10 == 0))
  {
    (*(**(a1 + 16) + 24))(*(a1 + 16));
    *(a1 + 8) = *a1;
  }

  v12 = *(a2 + 24);
  if (v12 == 1)
  {
    v13 = (a2 + 16);
  }

  else
  {
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = *(a2 + 16);
  }

  v14 = *v13;
  v15 = *(a2 + 8);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 32) - *(a1 + 24);
  v18 = v17 >> 2;
  if (v17)
  {
    v19 = *(a1 + 24);
  }

  else
  {
    v19 = 0;
  }

  if (v15 != v18)
  {
    v20 = *(a1 + 128);
    if (*(a1 + 136) != v20)
    {
      webrtc::PushSincResampler::Resample(*v20, v16, v15, v19, v18, a6, a7, a8);
      goto LABEL_18;
    }

    __break(1u);
LABEL_22:
    v22 = std::__throw_bad_variant_access[abi:sn200100]();
    return;
  }

  memcpy(v19, v16, 4 * v15);
LABEL_18:
  v21 = *(**(a1 + 16) + 32);

  v21();
}

void webrtc::anonymous namespace::MonoVadImpl::~MonoVadImpl(webrtc::_anonymous_namespace_::MonoVadImpl *this)
{
  *this = &unk_2882A1980;
  v1 = (this + 8);
  webrtc::rnn_vad::RnnVad::~RnnVad((this + 4392));
  webrtc::rnn_vad::FeaturesExtractor::~FeaturesExtractor(v1);
}

{
  *this = &unk_2882A1980;
  v1 = (this + 8);
  webrtc::rnn_vad::RnnVad::~RnnVad((this + 4392));
  webrtc::rnn_vad::FeaturesExtractor::~FeaturesExtractor(v1);

  JUMPOUT(0x2743DA540);
}

double webrtc::anonymous namespace::MonoVadImpl::Reset(webrtc::_anonymous_namespace_::MonoVadImpl *this)
{
  result = 0.0;
  *(this + 4716) = 0u;
  *(this + 4732) = 0u;
  *(this + 4684) = 0u;
  *(this + 4700) = 0u;
  *(this + 4652) = 0u;
  *(this + 4668) = 0u;
  return result;
}

float webrtc::anonymous namespace::MonoVadImpl::Analyze(uint64_t a1, float *a2)
{
  if (webrtc::rnn_vad::FeaturesExtractor::CheckSilenceComputeFeatures(a1 + 8, a2, v8))
  {
    *(a1 + 4716) = 0u;
    *(a1 + 4732) = 0u;
    *(a1 + 4684) = 0u;
    *(a1 + 4700) = 0u;
    *(a1 + 4652) = 0u;
    *(a1 + 4668) = 0u;
    return 0.0;
  }

  else
  {
    webrtc::rnn_vad::FullyConnectedLayer::ComputeOutput(a1 + 4392, v8, 42);
    v4 = *(a1 + 4396);
    if (v4)
    {
      v5 = (a1 + 4472);
    }

    else
    {
      v5 = 0;
    }

    webrtc::rnn_vad::GatedRecurrentLayer::ComputeOutput((a1 + 4568), v5, v4);
    v6 = *(a1 + 4572);
    if (v6)
    {
      v7 = (a1 + 4652);
    }

    else
    {
      v7 = 0;
    }

    webrtc::rnn_vad::FullyConnectedLayer::ComputeOutput(a1 + 4752, v7, v6);
    return *(a1 + 4832);
  }
}