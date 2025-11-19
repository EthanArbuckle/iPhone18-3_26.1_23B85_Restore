void webrtc::RTCPSender::BuildTMMBN(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &unk_2882A1010;
  v7 = &unk_2882A1010;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v8 = *(a1 + 44);
  v9 = 0;
  v5 = *(a1 + 352);
  v6 = *(a1 + 360);
  if (v5 != v6)
  {
    do
    {
      if (*(v5 + 8))
      {
        std::vector<webrtc::rtcp::TmmbItem>::push_back[abi:sn200100](&__p, v5);
      }

      v5 += 24;
    }

    while (v5 != v6);
    v4 = v7;
  }

  (*(v4 + 3))(&v7, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
  v7 = &unk_2882A1010;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void webrtc::RTCPSender::BuildNACK(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = &unk_2882968B0;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v6 = *(a1 + 224);
  v18 = *(a1 + 44);
  v19 = v6;
  webrtc::rtcp::Nack::SetPacketIds(&v17, *(a2 + 16), *(a2 + 8));
  v7 = *(a2 + 8);
  if (v7 > 0)
  {
    v8 = *(a2 + 16);
    v9 = *(a1 + 432);
    v10 = *(a2 + 8);
    v11 = v9;
    while (1)
    {
      v13 = *v8++;
      v12 = v13;
      if (v11)
      {
        v14 = *(a1 + 428);
        if (v12 - v14 == 0x8000)
        {
          if (v14 >= v12)
          {
            goto LABEL_4;
          }
        }

        else if (v14 == v12 || ((v12 - v14) & 0x8000) != 0)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 428) = v12;
      ++*(a1 + 436);
LABEL_4:
      ++v11;
      if (!--v10)
      {
        v16 = v7 + v9;
        *(a1 + 432) = v16;
        goto LABEL_16;
      }
    }
  }

  v16 = *(a1 + 432);
LABEL_16:
  *(a1 + 420) = v16;
  *(a1 + 424) = *(a1 + 436);
  ++*(a1 + 408);
  (*(v17 + 3))(&v17, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
  v17 = &unk_2882968B0;
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }
}

void webrtc::RTCPSender::BuildExtendedReports(uint64_t a1, void *a2, void *a3)
{
  v43 = &unk_288293668;
  LOBYTE(v45) = 0;
  v46 = 0;
  v52 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  LOBYTE(__p) = 0;
  v44 = *(a1 + 44);
  if ((*(a1 + 176) & 1) == 0 && *(a1 + 392) == 1)
  {
    v4 = a1;
    v5 = a2;
    v6 = (*(**(a1 + 16) + 24))(*(a1 + 16), a2[3]);
    if (v46 == 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
    }

    v45 = v6;
    v46 = 1;
    a2 = v5;
    a1 = v4;
  }

  v39 = a1;
  v15 = *(*a2 + 40);
  for (i = *(*a2 + 48); v15 != i; v15 = (v15 + 12))
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 2) < 0x32)
    {
      std::vector<webrtc::rtcp::ReceiveTimeInfo>::push_back[abi:sn200100](&v47, v15);
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
    }
  }

  if (*(v39 + 608))
  {
    v23 = (v39 + 472);
    v40 = 0;
    v41 = 0;
    v24 = 768;
    v42 = 0;
    do
    {
      if (*(v23 - 24))
      {
        v25 = (-v40 >> 3) + 1;
        if (!(v25 >> 61))
        {
          v26 = v42 - v40;
          if ((v42 - v40) >> 2 > v25)
          {
            v25 = v26 >> 2;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
          v28 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v28 = v25;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            goto LABEL_63;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (*(v23 - 16) == 1)
      {
        v29 = (-v40 >> 3) + 1;
        if (!(v29 >> 61))
        {
          v30 = v42 - v40;
          if ((v42 - v40) >> 2 > v29)
          {
            v29 = v30 >> 2;
          }

          v27 = v30 >= 0x7FFFFFFFFFFFFFF8;
          v31 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v31 = v29;
          }

          if (v31)
          {
            if (!(v31 >> 61))
            {
              operator new();
            }

            goto LABEL_63;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (*(v23 - 8) == 1)
      {
        v32 = (-v40 >> 3) + 1;
        if (!(v32 >> 61))
        {
          v33 = v42 - v40;
          if ((v42 - v40) >> 2 > v32)
          {
            v32 = v33 >> 2;
          }

          v27 = v33 >= 0x7FFFFFFFFFFFFFF8;
          v34 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v34 = v32;
          }

          if (v34)
          {
            if (!(v34 >> 61))
            {
              operator new();
            }

            goto LABEL_63;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      if (*v23 == 1)
      {
        v35 = (-v40 >> 3) + 1;
        if (!(v35 >> 61))
        {
          v36 = v42 - v40;
          if ((v42 - v40) >> 2 > v35)
          {
            v35 = v36 >> 2;
          }

          v27 = v36 >= 0x7FFFFFFFFFFFFFF8;
          v37 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v37 = v35;
          }

          if (v37)
          {
            if (!(v37 >> 61))
            {
              operator new();
            }

LABEL_63:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

LABEL_61:
          __break(1u);
        }

LABEL_62:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      ++v24;
      v23 += 32;
    }

    while (v24 != 773);
    webrtc::rtcp::ExtendedReports::SetTargetBitrate(&v43, &v40);
    v38 = v40;
    *(v39 + 608) = 0;
    if (v38)
    {
      v41 = v38;
      operator delete(v38);
    }
  }

  (*(v43 + 3))(&v43, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
  v43 = &unk_288293668;
  if (v52 == 1 && __p)
  {
    v51 = __p;
    operator delete(__p);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }
}

void webrtc::RTCPSender::~RTCPSender(webrtc::RTCPSender *this)
{
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 85));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 82));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 78));
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 45) = v2;
    operator delete(v2);
  }

  v3 = *(this + 41);
  if (v3)
  {
    *(this + 42) = v3;
    operator delete(v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    *(this + 34) = v4;
    operator delete(v4);
  }

  if ((*(this + 255) & 0x80000000) == 0)
  {
    pthread_mutex_destroy((this + 112));
    v5 = *(this + 13);
    if (v5 != (this + 80))
    {
      goto LABEL_9;
    }

LABEL_14:
    (*(*v5 + 32))(v5);
    v6 = *this;
    if (!*this)
    {
      return;
    }

    goto LABEL_15;
  }

  operator delete(*(this + 29));
  pthread_mutex_destroy((this + 112));
  v5 = *(this + 13);
  if (v5 == (this + 80))
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *this;
  if (*this)
  {
LABEL_15:
    if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }
  }
}

uint64_t webrtc::RTCPSender::SetRTCPStatus(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 112));
  if (a2)
  {
    if (!*(a1 + 56))
    {
      v4 = *(a1 + 72) / 2;
      v5 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v6 = v5 + v4;
      if (v5 == 0x8000000000000000)
      {
        v6 = 0x8000000000000000;
      }

      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((*(a1 + 192) & 1) == 0)
      {
        *(a1 + 192) = 1;
      }

      *(a1 + 184) = v6;
      v7 = *(a1 + 104);
      if (v7)
      {
        v9 = v4;
        (*(*v7 + 48))(v7, &v9);
      }
    }
  }

  else if (*(a1 + 192) == 1)
  {
    *(a1 + 192) = 0;
  }

  *(a1 + 56) = a2;
  return pthread_mutex_unlock((a1 + 112));
}

uint64_t webrtc::RTCPSender::SendLossNotification(uint64_t a1, void *a2, int a3, int a4, char a5, char a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = 0xFFFFFFFFLL;
  v26 = -1;
  v25[0] = a1;
  v25[1] = &v26;
  LOBYTE(v27) = 0;
  pthread_mutex_lock((a1 + 112));
  if (((a4 - a3) & 0x8000) != 0)
  {
    goto LABEL_18;
  }

  *(a1 + 314) = a4;
  *(a1 + 312) = a3;
  *(a1 + 316) = a5;
  v17 = *(a1 + 656);
  if (!v17)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v18 = v17;
      v19 = *(v17 + 28);
      if (v19 <= 0x2000)
      {
        break;
      }

      v17 = *v18;
      if (!*v18)
      {
        goto LABEL_8;
      }
    }

    if (v19 == 0x2000)
    {
      break;
    }

    v17 = v18[1];
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if (a6)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v20 = *(a1 + 384);
  v27 = v25;
  v28 = webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendLossNotification(webrtc::RTCPSender::FeedbackState const&,unsigned short,unsigned short,BOOL,BOOL)::$_0>;
  v29 = v20;
  v30 = 0;
  if (v20 < 0x5DD)
  {
    v32 = 1;
    v21 = webrtc::RTCPSender::ComputeCompoundRTCPPacket(a1, a2, 0x2000u, 0, 0, &v27);
    if (!HIDWORD(v21))
    {
      pthread_mutex_unlock((a1 + 112));
      if ((v32 & 1) == 0)
      {
        __break(1u);
      }

      if (v30)
      {
        (v28)(v27, &v31);
      }

      return v26;
    }

    v12 = v21;
LABEL_18:
    pthread_mutex_unlock((a1 + 112));
    return v12;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc", 81, "max_packet_size <= 1500", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v13, v14, v15, v16, v20);
  return webrtc::RTCPSender::SetFlag(v23, v24);
}

uint64_t webrtc::RTCPSender::SetFlag(uint64_t this, unsigned int a2)
{
  v2 = *(this + 656);
  if ((a2 & 0x2C0000) != 0)
  {
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
        if (v4 <= 0x2C0000)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 == 2883584)
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

  else
  {
    if (!v2)
    {
LABEL_15:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v2;
        v6 = *(v2 + 28);
        if (v6 <= a2)
        {
          break;
        }

        v2 = *v5;
        if (!*v5)
        {
          goto LABEL_15;
        }
      }

      if (v6 >= a2)
      {
        break;
      }

      v2 = v5[1];
      if (!v2)
      {
        goto LABEL_15;
      }
    }
  }

  return this;
}

uint64_t webrtc::RTCPSender::ComputeCompoundRTCPPacket(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!*(a1 + 56))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc");
    }

    goto LABEL_207;
  }

  webrtc::RTCPSender::SetFlag(a1, a3);
  if ((*(a1 + 216) & 1) == 0)
  {
    v34 = (a1 + 656);
    v35 = *(a1 + 656);
    if (!v35)
    {
      goto LABEL_42;
    }

    v36 = a1 + 656;
    v37 = *(a1 + 656);
    do
    {
      v38 = *(v37 + 28);
      v15 = v38 >= 2;
      v39 = v38 < 2;
      if (v15)
      {
        v36 = v37;
      }

      v37 = *(v37 + 8 * v39);
    }

    while (v37);
    if (v36 != v34 && *(v36 + 28) <= 2u)
    {
      if (*(v36 + 32) == 1)
      {
        v56 = *(v36 + 8);
        if (v56)
        {
          do
          {
            v57 = v56;
            v56 = *v56;
          }

          while (v56);
        }

        else
        {
          v103 = v36;
          do
          {
            v57 = v103[2];
            v85 = *v57 == v103;
            v103 = v57;
          }

          while (!v85);
        }

        if (*(a1 + 648) == v36)
        {
          *(a1 + 648) = v57;
        }

        --*(a1 + 664);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v35, v36);
        operator delete(v36);
      }

      v40 = 1;
      v41 = *(a1 + 176);
      if (v41 == 1)
      {
LABEL_43:
        v42 = *v34;
        if (!*v34)
        {
          goto LABEL_50;
        }

        v43 = a1 + 656;
        v44 = *v34;
        do
        {
          if (*(v44 + 7))
          {
            v43 = v44;
          }

          v44 = v44[*(v44 + 7) == 0];
        }

        while (v44);
        if (v43 != v34 && *(v43 + 28) <= 1u)
        {
          if (*(v43 + 32) == 1)
          {
            v101 = *(v43 + 8);
            if (v101)
            {
              do
              {
                v102 = v101;
                v101 = *v101;
              }

              while (v101);
            }

            else
            {
              v106 = v43;
              do
              {
                v102 = v106[2];
                v85 = *v102 == v106;
                v106 = v102;
              }

              while (!v85);
            }

            if (*(a1 + 648) == v43)
            {
              *(a1 + 648) = v102;
            }

            --*(a1 + 664);
            std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v42, v43);
            operator delete(v43);
            v104 = *(a1 + 648);
            if (v104 != v34)
            {
LABEL_198:
              while ((v104[4] & 1) == 0)
              {
                v107 = v104[1];
                if (v107)
                {
                  do
                  {
                    v108 = v107;
                    v107 = *v107;
                  }

                  while (v107);
                }

                else
                {
                  do
                  {
                    v108 = v104[2];
                    v85 = *v108 == v104;
                    v104 = v108;
                  }

                  while (!v85);
                }

                v104 = v108;
                if (v108 == v34)
                {
                  goto LABEL_179;
                }
              }

              if ((*(a1 + 176) & 1) == 0)
              {
                goto LABEL_3;
              }

LABEL_206:
              if (*(a1 + 56) != 1)
              {
                goto LABEL_3;
              }

LABEL_207:
              v96 = 0x100000000;
              v98 = 4294967040;
              v97 = 255;
              return v97 | v98 | v96;
            }

LABEL_179:
            v97 = 0;
            v98 = 0;
            v96 = 0x100000000;
            return v97 | v98 | v96;
          }
        }

        else
        {
LABEL_50:
          if ((v40 & 1) == 0)
          {
LABEL_180:
            if (!v41)
            {
              goto LABEL_3;
            }

            goto LABEL_206;
          }
        }

LABEL_178:
        v104 = *(a1 + 648);
        if (v104 != v34)
        {
          goto LABEL_198;
        }

        goto LABEL_179;
      }
    }

    else
    {
LABEL_42:
      v40 = 0;
      v41 = *(a1 + 176);
      if (v41 == 1)
      {
        goto LABEL_43;
      }
    }

    if (!v40)
    {
      goto LABEL_180;
    }

    goto LABEL_178;
  }

LABEL_3:
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  v10 = (a1 + 656);
  v11 = *(a1 + 656);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = a1 + 656;
  v13 = *(a1 + 656);
  do
  {
    v14 = *(v13 + 28);
    v15 = v14 >= 2;
    v16 = v14 < 2;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 != v10 && *(v12 + 28) < 3u)
  {
    goto LABEL_30;
  }

  v17 = a1 + 656;
  v18 = *(a1 + 656);
  do
  {
    v19 = *(v18 + 28);
    v15 = v19 >= 4;
    v20 = v19 < 4;
    if (v15)
    {
      v17 = v18;
    }

    v18 = *(v18 + 8 * v20);
  }

  while (v18);
  if (v17 != v10 && *(v17 + 28) < 5u)
  {
LABEL_30:
    v25 = 1;
    v26 = *v10;
    if (!*v10)
    {
      goto LABEL_81;
    }

LABEL_53:
    v45 = a1 + 656;
    v46 = v26;
    do
    {
      v47 = *(v46 + 28);
      v15 = v47 >= 2;
      v48 = v47 < 2;
      if (v15)
      {
        v45 = v46;
      }

      v46 = *(v46 + 8 * v48);
    }

    while (v46);
    if (v45 != v10 && *(v45 + 28) < 3u)
    {
      goto LABEL_73;
    }

    v49 = a1 + 656;
    v50 = v26;
    do
    {
      v51 = *(v50 + 28);
      v15 = v51 >= 4;
      v52 = v51 < 4;
      if (v15)
      {
        v49 = v50;
      }

      v50 = *(v50 + 8 * v52);
    }

    while (v50);
    if (v49 != v10 && *(v49 + 28) <= 4u)
    {
      v53 = *(a1 + 255);
      if (v53 < 0)
      {
        v53 = *(a1 + 240);
      }

      if (v53)
      {
LABEL_73:
        while (1)
        {
          while (1)
          {
            v54 = v26;
            v55 = *(v26 + 28);
            if (v55 < 9)
            {
              break;
            }

            v26 = *v54;
            if (!*v54)
            {
              goto LABEL_80;
            }
          }

          if (v55 == 8)
          {
            break;
          }

          v26 = v54[1];
          if (!v26)
          {
LABEL_80:
            operator new();
          }
        }
      }
    }

    goto LABEL_81;
  }

  v21 = a1 + 656;
  v22 = *(a1 + 656);
  do
  {
    if (*(v22 + 28))
    {
      v21 = v22;
    }

    v22 = *(v22 + 8 * (*(v22 + 28) == 0));
  }

  while (v22);
  if (v21 != v10 && *(v21 + 28) <= 1u)
  {
    if (*(v21 + 32) == 1)
    {
      v99 = *(v21 + 8);
      if (v99)
      {
        do
        {
          v100 = v99;
          v99 = *v99;
        }

        while (v99);
      }

      else
      {
        v105 = v21;
        do
        {
          v100 = v105[2];
          v85 = *v100 == v105;
          v105 = v100;
        }

        while (!v85);
      }

      if (*(a1 + 648) == v21)
      {
        *(a1 + 648) = v100;
      }

      --*(a1 + 664);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v11, v21);
      operator delete(v21);
    }

    v23 = *(a1 + 56);
    if (v23 == 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_24:
    v23 = *(a1 + 56);
  }

  if (v23 == 1)
  {
LABEL_26:
    if (*(a1 + 176))
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    webrtc::RTCPSender::SetFlag(a1, v24);
    goto LABEL_30;
  }

  v25 = 0;
  v26 = *v10;
  if (*v10)
  {
    goto LABEL_53;
  }

LABEL_81:
  if (v25)
  {
    if ((*(a1 + 176) & 1) == 0 && (*(a1 + 392) & 1) != 0 || a2[5] != a2[6] || *(a1 + 608) == 1)
    {
      v58 = *(a1 + 656);
      if (!v58)
      {
LABEL_92:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v59 = v58;
          v60 = *(v58 + 28);
          if (v60 <= 0x2C0000)
          {
            break;
          }

          v58 = *v59;
          if (!*v59)
          {
            goto LABEL_92;
          }
        }

        if (v60 == 2883584)
        {
          break;
        }

        v58 = v59[1];
        if (!v58)
        {
          goto LABEL_92;
        }
      }
    }

    v61 = *(a1 + 72);
    if (((*(a1 + 40) & 1) != 0 || ((v62 = a2[2], *(a1 + 176) == 1) ? (v63 = v62 < 72001) : (v63 = 1), v63 || (v62 % 0x3E8 <= 0x1F3 ? (v64 = v62 / 0x3E8) : (v64 = v62 / 0x3E8 + 1), v65 = 0x15752A00 / v64, v61 < v65))) && (v65 = *(a1 + 72), v61 < 0))
    {
      v67 = -v61;
      v68 = v67 / 0x3E8;
      if (v67 % 0x3E8 <= 0x1F4)
      {
        v69 = 0;
      }

      else
      {
        v69 = -1;
      }

      LODWORD(v66) = v69 - v68;
    }

    else
    {
      v66 = v65 / 0x3E8;
      if (v65 % 0x3E8 > 0x1F3)
      {
        LODWORD(v66) = v66 + 1;
      }
    }

    v70 = *(a1 + 48) ^ (*(a1 + 48) >> 12);
    v71 = v70 ^ (v70 << 25) ^ ((v70 ^ (v70 << 25)) >> 27);
    *(a1 + 48) = v71;
    v72 = 1000 * (v66 / 2 + (((1332534557 * v71) + (1332534557 * v71) * (3 * v66 / 2 - v66 / 2)) >> 32));
    if (v72 <= 1000)
    {
      v73 = 1000;
    }

    else
    {
      v73 = v72;
    }

    v74 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v75 = v73 + v74;
    if (v74 == 0x8000000000000000)
    {
      v75 = 0x8000000000000000;
    }

    if (v74 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v75 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((*(a1 + 192) & 1) == 0)
    {
      *(a1 + 192) = 1;
    }

    *(a1 + 184) = v75;
    v76 = *(a1 + 104);
    if (v76)
    {
      v110 = v73;
      (*(*v76 + 48))(v76, &v110);
    }
  }

  v77 = *(a1 + 648);
  if (v77 != v10)
  {
    v78 = 0;
    v79 = (a1 + 680);
    do
    {
      while (1)
      {
        v80 = *(v77 + 7);
        v81 = v77[1];
        if (*(v77 + 32) == 1)
        {
          v82 = v77[1];
          v83 = v77;
          if (v81)
          {
            do
            {
              v84 = v82;
              v82 = *v82;
            }

            while (v82);
          }

          else
          {
            do
            {
              v84 = v83[2];
              v85 = *v84 == v83;
              v83 = v84;
            }

            while (!v85);
          }

          v86 = v77;
          if (v81)
          {
            do
            {
              v87 = v81;
              v81 = *v81;
            }

            while (v81);
          }

          else
          {
            do
            {
              v87 = v86[2];
              v85 = *v87 == v86;
              v86 = v87;
            }

            while (!v85);
          }

          if (*(a1 + 648) == v77)
          {
            *(a1 + 648) = v87;
          }

          --*(a1 + 664);
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 656), v77);
          operator delete(v77);
          v77 = v84;
        }

        else
        {
          v88 = v77;
          if (v81)
          {
            do
            {
              v77 = v81;
              v81 = *v81;
            }

            while (v81);
          }

          else
          {
            do
            {
              v77 = v88[2];
              v85 = *v77 == v88;
              v88 = v77;
            }

            while (!v85);
          }
        }

        if (v80 != 16)
        {
          break;
        }

        v78 = 1;
        if (v77 == v10)
        {
          goto LABEL_158;
        }
      }

      v89 = *v79;
      if (*v79)
      {
        v90 = a1 + 680;
        do
        {
          v91 = *(v89 + 32);
          v15 = v91 >= v80;
          v92 = v91 < v80;
          if (v15)
          {
            v90 = v89;
          }

          v89 = *(v89 + 8 * v92);
        }

        while (v89);
        if (v90 != v79 && v80 >= *(v90 + 32))
        {
          v93 = *(v90 + 40);
          v94 = *(v90 + 48);
          if (v94)
          {
            v93 = *(*(a1 + (v94 >> 1)) + v93);
          }

          v93();
        }
      }
    }

    while (v77 != v10);
    if ((v78 & 1) == 0)
    {
      goto LABEL_159;
    }

LABEL_158:
    webrtc::RTCPSender::BuildBYE(a1, v9, a6);
  }

LABEL_159:
  v95 = *(a1 + 400);
  if (v95)
  {
    (*(*v95 + 16))(v95, *(a1 + 224), a1 + 408);
  }

  v96 = 0;
  v97 = 0;
  v98 = 0;
  return v97 | v98 | v96;
}

uint64_t webrtc::RTCPSender::SetRemb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc", 277, "bitrate_bps >= 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, a2);
    return webrtc::RTCPSender::UnsetRemb(v26);
  }

  else
  {
    pthread_mutex_lock((a1 + 112));
    if (*(a1 + 56))
    {
      *(a1 + 320) = a2;
      v11 = (a1 + 328);
      v12 = *(a1 + 328);
      if (v12)
      {
        *(a1 + 336) = v12;
        operator delete(v12);
        *v11 = 0;
        *(a1 + 336) = 0;
        *(a1 + 344) = 0;
      }

      *v11 = *a3;
      *(a1 + 344) = *(a3 + 16);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v13 = *(a1 + 656);
      if (!v13)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= 0x10000)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_11;
          }
        }

        if (v15 == 0x10000)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      v16 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if ((*(a1 + 192) & 1) == 0)
      {
        *(a1 + 192) = 1;
      }

      *(a1 + 184) = v16;
      v17 = *(a1 + 104);
      if (v17)
      {
        v27 = 0;
        (*(*v17 + 48))(v17, &v27);
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc");
    }

    return pthread_mutex_unlock((a1 + 112));
  }
}

uint64_t webrtc::RTCPSender::UnsetRemb(webrtc::RTCPSender *this)
{
  pthread_mutex_lock((this + 112));
  v2 = *(this + 82);
  if (v2)
  {
    v3 = this + 656;
    v4 = *(this + 82);
    do
    {
      v5 = *(v4 + 7);
      v6 = v5 >= 0x10000;
      v7 = v5 < 0x10000;
      if (v6)
      {
        v3 = v4;
      }

      v4 = *&v4[8 * v7];
    }

    while (v4);
    if (v3 != this + 656 && *(v3 + 7) <= 0x10000u)
    {
      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        v10 = v3;
        do
        {
          v9 = *(v10 + 2);
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      if (*(this + 81) == v3)
      {
        *(this + 81) = v9;
      }

      --*(this + 83);
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v2, v3);
      operator delete(v3);
    }
  }

  return pthread_mutex_unlock((this + 112));
}

uint64_t webrtc::RTCPSender::SetRtpClockRate(webrtc::RTCPSender *this, int a2, int a3)
{
  pthread_mutex_lock((this + 112));
  v6 = *(this + 78);
  if (!v6)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = *(v6 + 28);
      if (v8 <= a2)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (v8 >= a2)
    {
      break;
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  *(v7 + 8) = a3 / 1000;

  return pthread_mutex_unlock((this + 112));
}

uint64_t webrtc::RTCPSender::SetCNAME(uint64_t a1, __int128 *a2, size_t a3)
{
  pthread_mutex_lock((a1 + 112));
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v9) = a3;
  v6 = (&v8 + a3);
  if (&v8 <= a2 && v6 > a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    memmove(&v8, a2, a3);
  }

  *v6 = 0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 232) = v8;
  *(a1 + 248) = v9;
  pthread_mutex_unlock((a1 + 112));
  return 0;
}

unint64_t webrtc::RTCPSender::SendRTCP(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = -1;
  v18[0] = a1;
  v18[1] = &v19;
  pthread_mutex_lock((a1 + 112));
  v14 = *(a1 + 384);
  v20 = v18;
  v21 = webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendRTCP(webrtc::RTCPSender::FeedbackState const&,webrtc::RTCPPacketType,int,unsigned short const*)::$_0>;
  v22 = v14;
  v23 = 0;
  if (v14 >= 0x5DD)
  {
LABEL_10:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc", 81, "max_packet_size <= 1500", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v10, v11, v12, v13, v14);
  }

  v25 = 1;
  v15 = webrtc::RTCPSender::ComputeCompoundRTCPPacket(a1, a2, a3, a4, a5, &v20);
  if (HIDWORD(v15))
  {
    v16 = v15;
    pthread_mutex_unlock((a1 + 112));
    return v16;
  }

  pthread_mutex_unlock((a1 + 112));
  v14 = v25;
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v23)
  {
    (v21)(v20, &v24);
  }

  return v19;
}

uint64_t webrtc::RTCPSender::SetTmmbn(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 112));
  v4 = *(a1 + 352);
  if (v4)
  {
    *(a1 + 360) = v4;
    operator delete(v4);
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = *a2;
  *(a1 + 368) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 656);
  if (!v5)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = *(v5 + 28);
      if (v7 < 0x201)
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 == 512)
    {
      break;
    }

    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  return pthread_mutex_unlock((a1 + 112));
}

uint64_t webrtc::RTCPSender::SetVideoBitrateAllocation(webrtc::RTCPSender *this, const webrtc::VideoBitrateAllocation *a2)
{
  pthread_mutex_lock((this + 112));
  if (*(this + 14))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v90) = 0;
    v100 = 0;
    v8 = this + 444;
    v9 = a2 + 4;
    while (1)
    {
      v10 = &v8[32 * v7];
      if (v6)
      {
        if ((v10[4] & 1) == 0)
        {
          goto LABEL_22;
        }

        v11 = 1;
      }

      else
      {
        v12 = v8[32 * v7 + 4];
        if (v9[32 * v7 + 4] != v12)
        {
          goto LABEL_12;
        }

        if (!v9[32 * v7 + 4])
        {
          v21 = v5;
          goto LABEL_25;
        }

        if ((*&v9[32 * v7] == 0) != (*&v8[32 * v7] != 0))
        {
          v11 = 0;
        }

        else
        {
LABEL_12:
          v13 = *(a2 + 8);
          v14 = *(a2 + 9);
          v15 = *(a2 + 6);
          v97 = *(a2 + 7);
          v98 = v13;
          *v99 = v14;
          *&v99[16] = *(a2 + 20);
          v16 = *(a2 + 5);
          v94 = *(a2 + 4);
          v95 = v16;
          v96 = v15;
          v17 = *(a2 + 1);
          v90 = *a2;
          v91 = v17;
          v18 = *(a2 + 3);
          v92 = *(a2 + 2);
          v93 = v18;
          v4 = 1;
          v11 = 1;
          v5 = 1;
          v100 = 1;
          if (!v12)
          {
            goto LABEL_22;
          }
        }
      }

      if (!*&v8[32 * v7] || (v19 = &v9[32 * v7], result = v19[4], result == 1) && *v19)
      {
        v21 = v5;
        if (v11)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_91;
        }

        v22 = v90;
        v23 = &v90 + 32 * v7 + 4;
        if (v23[4] == 1)
        {
          v22 = v90 - *v23;
        }

        v21 = 0;
        *v23 = 0;
        v5 = 1;
        v23[4] = 1;
        LODWORD(v90) = v22;
        v4 = v100;
        if (v100)
        {
LABEL_22:
          if ((v10[12] & 1) == 0)
          {
            goto LABEL_34;
          }

          v24 = 1;
          goto LABEL_30;
        }
      }

LABEL_25:
      v25 = v8[32 * v7 + 12];
      if (v9[32 * v7 + 12] != v25)
      {
        goto LABEL_29;
      }

      if (!v9[32 * v7 + 12])
      {
        v5 = v21;
        goto LABEL_51;
      }

      if ((*&v9[32 * v7 + 8] == 0) != (*&v8[32 * v7 + 8] != 0))
      {
        v24 = 0;
        v5 = v21;
      }

      else
      {
LABEL_29:
        v26 = *(a2 + 8);
        v27 = *(a2 + 9);
        v28 = *(a2 + 6);
        v97 = *(a2 + 7);
        v98 = v26;
        *v99 = v27;
        *&v99[16] = *(a2 + 20);
        v29 = *(a2 + 5);
        v94 = *(a2 + 4);
        v95 = v29;
        v96 = v28;
        v30 = *(a2 + 1);
        v90 = *a2;
        v91 = v30;
        v31 = *(a2 + 3);
        v92 = *(a2 + 2);
        v93 = v31;
        v4 = 1;
        v24 = 1;
        v5 = 1;
        v100 = 1;
        if (!v25)
        {
          goto LABEL_34;
        }
      }

LABEL_30:
      if (*(v10 + 2))
      {
        v32 = &v9[32 * v7];
        result = v32[12];
        if (result != 1 || !*(v32 + 2))
        {
          if (!v24)
          {
            goto LABEL_91;
          }

          v33 = v90;
          v34 = &v90 + 32 * v7 + 4;
          if (v34[12] == 1)
          {
            v33 = v90 - *(v34 + 2);
          }

          *(v34 + 2) = 0;
          v34[12] = 1;
          LODWORD(v90) = v33;
          if ((v10[20] & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_40;
        }
      }

      if (v24)
      {
LABEL_34:
        if ((v10[20] & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_40:
        result = 1;
        goto LABEL_41;
      }

LABEL_51:
      v38 = v8[32 * v7 + 20];
      if (v9[32 * v7 + 20] != v38)
      {
        goto LABEL_59;
      }

      if (v9[32 * v7 + 20])
      {
        if ((*&v9[32 * v7 + 16] == 0) != (*&v8[32 * v7 + 16] != 0))
        {
          result = 0;
        }

        else
        {
LABEL_59:
          v40 = *(a2 + 8);
          v41 = *(a2 + 9);
          v42 = *(a2 + 6);
          v97 = *(a2 + 7);
          v98 = v40;
          *v99 = v41;
          *&v99[16] = *(a2 + 20);
          v43 = *(a2 + 5);
          v94 = *(a2 + 4);
          v95 = v43;
          v96 = v42;
          v44 = *(a2 + 1);
          v90 = *a2;
          v91 = v44;
          v45 = *(a2 + 3);
          v92 = *(a2 + 2);
          v93 = v45;
          v4 = 1;
          result = 1;
          v5 = 1;
          v100 = 1;
          if (!v38)
          {
            goto LABEL_60;
          }
        }

LABEL_41:
        if (*(v10 + 4))
        {
          v35 = &v9[32 * v7];
          if (v35[20] != 1 || !*(v35 + 4))
          {
            if (!result)
            {
              goto LABEL_91;
            }

            v36 = v90;
            v37 = &v90 + 32 * v7 + 4;
            if (v37[20] == 1)
            {
              v36 = v90 - *(v37 + 4);
            }

            *(v37 + 4) = 0;
            v37[20] = 1;
            LODWORD(v90) = v36;
LABEL_60:
            v6 = 1;
            if ((v10[28] & 1) == 0)
            {
              goto LABEL_4;
            }

            goto LABEL_61;
          }
        }

        if (result)
        {
          goto LABEL_60;
        }
      }

      v39 = v8[32 * v7 + 28];
      if (v9[32 * v7 + 28] != v39)
      {
        goto LABEL_67;
      }

      if (!v9[32 * v7 + 28])
      {
        v6 = 0;
        goto LABEL_4;
      }

      if ((*&v9[32 * v7 + 24] == 0) != (*&v8[32 * v7 + 24] != 0))
      {
        v6 = 0;
LABEL_61:
        if (*(v10 + 6))
        {
          v46 = &v9[32 * v7];
          result = v46[28];
          if (result != 1 || !*(v46 + 6))
          {
            if ((v5 & 1) == 0)
            {
LABEL_91:
              __break(1u);
              return result;
            }

            v47 = v90;
            v48 = &v90 + 32 * v7 + 4;
            if (v48[28] == 1)
            {
              v47 = v90 - *(v48 + 6);
            }

            *(v48 + 6) = 0;
            v5 = 1;
            v48[28] = 1;
            LODWORD(v90) = v47;
            v6 = 1;
          }
        }

LABEL_4:
        if (++v7 == 5)
        {
          v87 = this + 440;
          if (v4)
          {
            goto LABEL_72;
          }

          v77 = *a2;
          v78 = *(a2 + 2);
          *(this + 456) = *(a2 + 1);
          *(this + 472) = v78;
          *v87 = v77;
          v79 = *(a2 + 3);
          v80 = *(a2 + 4);
          v81 = *(a2 + 6);
          *(this + 520) = *(a2 + 5);
          *(this + 536) = v81;
          *(this + 488) = v79;
          *(this + 504) = v80;
          v82 = *(a2 + 7);
          v83 = *(a2 + 8);
          v84 = *(a2 + 9);
          *(this + 597) = *(a2 + 157);
          *(this + 568) = v83;
          *(this + 584) = v84;
          *(this + 552) = v82;
          *(this + 608) = 1;
          v69 = *(this + 82);
          if (v69)
          {
            goto LABEL_86;
          }

          goto LABEL_89;
        }
      }

      else
      {
LABEL_67:
        v49 = *(a2 + 8);
        v50 = *(a2 + 9);
        v51 = *(a2 + 6);
        v97 = *(a2 + 7);
        v98 = v49;
        *v99 = v50;
        *&v99[16] = *(a2 + 20);
        v52 = *(a2 + 5);
        v94 = *(a2 + 4);
        v95 = v52;
        v96 = v51;
        v53 = *(a2 + 1);
        v90 = *a2;
        v91 = v53;
        v54 = *(a2 + 3);
        v92 = *(a2 + 2);
        v93 = v54;
        v4 = 1;
        v6 = 1;
        v5 = 1;
        v100 = 1;
        if (v39)
        {
          goto LABEL_61;
        }

        if (++v7 == 5)
        {
          v87 = this + 440;
LABEL_72:
          v55 = v97;
          v56 = *v99;
          *(v87 + 8) = v98;
          *(v87 + 9) = v56;
          *(v87 + 157) = *&v99[13];
          v57 = v95;
          *(v87 + 4) = v94;
          *(v87 + 5) = v57;
          *(v87 + 6) = v96;
          *(v87 + 7) = v55;
          v58 = v91;
          *v87 = v90;
          *(v87 + 1) = v58;
          v59 = v93;
          *(v87 + 2) = v92;
          *(v87 + 3) = v59;
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::VideoBitrateAllocation::ToString(v87, __p);
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc");
            if (v89 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v67 = (*(**(this + 2) + 16))(*(this + 2));
          if ((*(this + 192) & 1) == 0)
          {
            *(this + 192) = 1;
          }

          *(this + 23) = v67;
          v68 = *(this + 13);
          if (v68)
          {
            __p[0] = 0;
            (*(*v68 + 48))(v68, __p);
          }

          *(this + 608) = 1;
          v69 = *(this + 82);
          if (!v69)
          {
LABEL_89:
            operator new();
          }

          while (1)
          {
LABEL_86:
            while (1)
            {
              v85 = v69;
              v86 = *(v69 + 28);
              if (v86 <= 0x2C0000)
              {
                break;
              }

              v69 = *v85;
              if (!*v85)
              {
                goto LABEL_89;
              }
            }

            if (v86 == 2883584)
            {
              return pthread_mutex_unlock((this + 112));
            }

            v69 = v85[1];
            if (!v69)
            {
              goto LABEL_89;
            }
          }
        }
      }
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v70, v71, v72, v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc");
  }

  return pthread_mutex_unlock((this + 112));
}

uint64_t webrtc::RTCPSender::SendCombinedRtcpPacket(uint64_t a1, uint64_t a2)
{
  v26[188] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 112));
  if (*(a1 + 56))
  {
    v4 = *(a1 + 384);
    v5 = *(a1 + 44);
    result = pthread_mutex_unlock((a1 + 112));
    v21 = a1;
    v22 = &v21;
    v23 = webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendCombinedRtcpPacket(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>)::$_0>;
    v24 = v4;
    v25 = 0;
    if (v4 >= 0x5DD)
    {
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc", 81, "max_packet_size <= 1500", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, v7, v8, v9, v10, v4);
      return webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendLossNotification(webrtc::RTCPSender::FeedbackState const&,unsigned short,unsigned short,BOOL,BOOL)::$_0>();
    }

    else
    {
      v12 = *a2;
      v11 = *(a2 + 8);
      if (v12 != v11)
      {
        do
        {
          v13 = *v12++;
          v13[2] = v5;
          result = (*(*v13 + 24))(v13, v26, &v25, v24, v22, v23);
        }

        while (v12 != v11);
        if (v25)
        {
          return (v23)(v22, v26);
        }
      }
    }
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc");
    }

    return pthread_mutex_unlock((a1 + 112));
  }

  return result;
}

void webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendLossNotification(webrtc::RTCPSender::FeedbackState const&,unsigned short,unsigned short,BOOL,BOOL)::$_0>(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  if (!a3)
  {
    a2 = 0;
  }

  (*(*v4 + 8))(v4, a2);
  *a1[1] = 0;
  operator new();
}

uint64_t webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendRTCP(webrtc::RTCPSender::FeedbackState const&,webrtc::RTCPPacketType,int,unsigned short const*)::$_0>(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  if (!a3)
  {
    a2 = 0;
  }

  result = (*(*v4 + 8))(v4, a2);
  if (result)
  {
    *a1[1] = 0;
    operator new();
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(webrtc::ArrayView<unsigned char const,-4711l>)>::CallVoidPtr<webrtc::RTCPSender::SendCombinedRtcpPacket(std::vector<std::unique_ptr<webrtc::rtcp::RtcpPacket>>)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 64);
  if (!a3)
  {
    a2 = 0;
  }

  result = (*(*v3 + 8))(v3, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

void *webrtc::RTCCertificateStats::AttributesImpl@<X0>(webrtc::RTCCertificateStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v12[0] = "fingerprint";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "fingerprintAlgorithm";
  v15 = this + 72;
  v16 = 6;
  v17 = "base64Certificate";
  v18 = this + 104;
  v19 = 6;
  v20 = "issuerCertificateId";
  v21 = this + 136;
  v22 = 6;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 != -4)
  {
    if ((a2 + 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B5E8[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 4);
  return result;
}

void *std::vector<webrtc::Attribute>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) + 1;
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v5 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v5)
    {
      if (v5 <= 0xAAAAAAAAAAAAAAALL)
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

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 24;
  return result;
}

void webrtc::RTCCertificateStats::~RTCCertificateStats(void **this)
{
  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    operator delete(this[17]);
    if (*(this + 128) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 128) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

LABEL_7:
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_13;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_13:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  webrtc::RTCCertificateStats::~RTCCertificateStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCCodecStats::AttributesImpl@<X0>(webrtc::RTCCodecStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v12[0] = "transportId";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "payloadType";
  v15 = this + 72;
  v16 = 2;
  v17 = "mimeType";
  v18 = this + 80;
  v19 = 6;
  v20 = "clockRate";
  v21 = this + 112;
  v22 = 2;
  v23 = "channels";
  v24 = this + 120;
  v25 = 2;
  v26 = "sdpFmtpLine";
  v27 = this + 128;
  v28 = 6;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 != -6)
  {
    if ((a2 + 6) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B668[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 6);
  return result;
}

void webrtc::RTCCodecStats::~RTCCodecStats(void **this)
{
  if (*(this + 152) == 1 && *(this + 151) < 0)
  {
    operator delete(this[16]);
    if (*(this + 104) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 104) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

LABEL_7:
  if (*(this + 64) != 1 || (*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    goto LABEL_12;
  }
}

{
  if (*(this + 152) == 1 && *(this + 151) < 0)
  {
    operator delete(this[16]);
    if (*(this + 104) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 104) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

LABEL_7:
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(this[5]);
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_11:

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(this[1]);
  goto LABEL_11;
}

void *webrtc::RTCDataChannelStats::AttributesImpl@<X0>(webrtc::RTCDataChannelStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v12[0] = "label";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "protocol";
  v15 = this + 72;
  v16 = 6;
  v17 = "dataChannelIdentifier";
  v18 = this + 104;
  v19 = 1;
  v20 = "state";
  v21 = this + 112;
  v22 = 6;
  v23 = "messagesSent";
  v24 = this + 144;
  v25 = 2;
  v26 = "bytesSent";
  v27 = this + 152;
  v28 = 4;
  v29 = "messagesReceived";
  v30 = this + 168;
  v31 = 2;
  v32 = "bytesReceived";
  v33 = this + 176;
  v34 = 4;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 != -8)
  {
    if ((a2 + 8) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B6E8[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 8);
  return result;
}

void webrtc::RTCDataChannelStats::~RTCDataChannelStats(void **this)
{
  if (*(this + 136) == 1 && *(this + 135) < 0)
  {
    operator delete(this[14]);
    if (*(this + 96) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 96) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

LABEL_7:
  if (*(this + 64) != 1 || (*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    goto LABEL_12;
  }
}

{
  if (*(this + 136) == 1 && *(this + 135) < 0)
  {
    operator delete(this[14]);
    if (*(this + 96) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 96) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

LABEL_7:
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(this[5]);
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_11:

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(this[1]);
  goto LABEL_11;
}

void *webrtc::RTCIceCandidatePairStats::AttributesImpl@<X0>(webrtc::RTCIceCandidatePairStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v83 = *MEMORY[0x277D85DE8];
  v12[0] = "transportId";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "localCandidateId";
  v15 = this + 72;
  v16 = 6;
  v17 = "remoteCandidateId";
  v18 = this + 104;
  v19 = 6;
  v20 = "state";
  v21 = this + 136;
  v22 = 6;
  v23 = "priority";
  v24 = this + 168;
  v25 = 4;
  v26 = "nominated";
  v27 = this + 184;
  v28 = 0;
  v29 = "writable";
  v30 = this + 186;
  v31 = 0;
  v32 = "packetsSent";
  v33 = this + 192;
  v34 = 4;
  v35 = "packetsReceived";
  v36 = this + 208;
  v37 = 4;
  v38 = "bytesSent";
  v39 = this + 224;
  v40 = 4;
  v41 = "bytesReceived";
  v42 = this + 240;
  v43 = 4;
  v44 = "totalRoundTripTime";
  v45 = this + 256;
  v46 = 5;
  v47 = "currentRoundTripTime";
  v48 = this + 272;
  v49 = 5;
  v50 = "availableOutgoingBitrate";
  v51 = this + 288;
  v52 = 5;
  v53 = "availableIncomingBitrate";
  v54 = this + 304;
  v55 = 5;
  v56 = "requestsReceived";
  v57 = this + 320;
  v58 = 4;
  v59 = "requestsSent";
  v60 = this + 336;
  v61 = 4;
  v62 = "responsesReceived";
  v63 = this + 352;
  v64 = 4;
  v65 = "responsesSent";
  v66 = this + 368;
  v67 = 4;
  v68 = "consentRequestsSent";
  v69 = this + 384;
  v70 = 4;
  v71 = "packetsDiscardedOnSend";
  v72 = this + 400;
  v73 = 4;
  v74 = "bytesDiscardedOnSend";
  v75 = this + 416;
  v76 = 4;
  v77 = "lastPacketReceivedTimestamp";
  v78 = this + 432;
  v79 = 5;
  v80 = "lastPacketSentTimestamp";
  v81 = this + 448;
  v82 = 5;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 != -24)
  {
    if ((a2 + 24) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B768[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 0x18);
  return result;
}

uint64_t webrtc::RTCIceCandidatePairStats::RTCIceCandidatePairStats(uint64_t result, __int128 *a2, uint64_t a3)
{
  *result = &unk_28829B0F8;
  if (*(a2 + 23) < 0)
  {
    v5 = result;
    std::string::__init_copy_ctor_external((result + 8), *a2, *(a2 + 1));
    result = v5;
  }

  else
  {
    v4 = *a2;
    *(result + 24) = *(a2 + 2);
    *(result + 8) = v4;
  }

  *(result + 32) = a3;
  *result = &unk_28829B2B0;
  *(result + 40) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 192) = 0;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 304) = 0;
  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 352) = 0;
  *(result + 360) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = 0;
  *(result + 392) = 0;
  *(result + 400) = 0;
  *(result + 408) = 0;
  *(result + 416) = 0;
  *(result + 424) = 0;
  *(result + 432) = 0;
  *(result + 440) = 0;
  *(result + 448) = 0;
  *(result + 456) = 0;
  *(result + 184) = 0;
  return result;
}

void webrtc::RTCIceCandidatePairStats::~RTCIceCandidatePairStats(void **this)
{
  webrtc::RTCCertificateStats::~RTCCertificateStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCIceCandidateStats::AttributesImpl@<X0>(webrtc::RTCIceCandidateStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v12[0] = "transportId";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "isRemote";
  v15 = this + 72;
  v16 = 0;
  v17 = "networkType";
  v18 = this + 80;
  v19 = 6;
  v20 = "ip";
  v21 = this + 112;
  v22 = 6;
  v23 = "address";
  v24 = this + 144;
  v25 = 6;
  v26 = "port";
  v27 = this + 176;
  v28 = 1;
  v29 = "protocol";
  v30 = this + 184;
  v31 = 6;
  v32 = "relayProtocol";
  v33 = this + 216;
  v34 = 6;
  v35 = "candidateType";
  v36 = this + 248;
  v37 = 6;
  v38 = "priority";
  v39 = this + 280;
  v40 = 1;
  v41 = "url";
  v42 = this + 288;
  v43 = 6;
  v44 = "foundation";
  v45 = this + 320;
  v46 = 6;
  v47 = "relatedAddress";
  v48 = this + 352;
  v49 = 6;
  v50 = "relatedPort";
  v51 = this + 384;
  v52 = 1;
  v53 = "usernameFragment";
  v54 = this + 392;
  v55 = 6;
  v56 = "tcpType";
  v57 = this + 424;
  v58 = 6;
  v59 = "vpn";
  v60 = this + 456;
  v61 = 0;
  v62 = "networkAdapterType";
  v63 = this + 464;
  v64 = 6;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 != -18)
  {
    if ((a2 + 18) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B7E8[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 0x12);
  return result;
}

void webrtc::RTCIceCandidateStats::~RTCIceCandidateStats(void **this)
{
  *this = &unk_28829B2E8;
  if (*(this + 488) == 1 && *(this + 487) < 0)
  {
    operator delete(this[58]);
    if (*(this + 448) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 448) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

LABEL_7:
  if (*(this + 416) == 1 && *(this + 415) < 0)
  {
    operator delete(this[49]);
    if (*(this + 376) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 376) != 1)
  {
    goto LABEL_13;
  }

  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

LABEL_13:
  if (*(this + 344) == 1 && *(this + 343) < 0)
  {
    operator delete(this[40]);
    if (*(this + 312) != 1)
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 312) != 1)
  {
    goto LABEL_19;
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

LABEL_19:
  if (*(this + 272) == 1 && *(this + 271) < 0)
  {
    operator delete(this[31]);
    if (*(this + 240) != 1)
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 240) != 1)
  {
    goto LABEL_25;
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

LABEL_25:
  if (*(this + 208) == 1 && *(this + 207) < 0)
  {
    operator delete(this[23]);
    if (*(this + 168) != 1)
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 168) != 1)
  {
    goto LABEL_31;
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

LABEL_31:
  if (*(this + 136) == 1 && *(this + 135) < 0)
  {
    operator delete(this[14]);
    if (*(this + 104) != 1)
    {
      goto LABEL_37;
    }
  }

  else if (*(this + 104) != 1)
  {
    goto LABEL_37;
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

LABEL_37:
  if (*(this + 64) != 1 || (*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    goto LABEL_42;
  }
}

{
  webrtc::RTCIceCandidateStats::~RTCIceCandidateStats(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RTCLocalIceCandidateStats::RTCLocalIceCandidateStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v7 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *a1 = &unk_28829B0F8;
  v8 = (a1 + 8);
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(v8, v6, v5);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 24) = *v10;
    *(a1 + 27) = *&v10[3];
    *(a1 + 31) = v7;
  }

  *(a1 + 32) = a3;
  *a1 = &unk_28829B2E8;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 256;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 488) = 0;
  if (v7 < 0)
  {
    operator delete(v6);
  }

  *a1 = &unk_28829B320;
  return a1;
}

uint64_t webrtc::RTCRemoteIceCandidateStats::RTCRemoteIceCandidateStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v7 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *a1 = &unk_28829B0F8;
  v8 = (a1 + 8);
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(v8, v6, v5);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 24) = *v10;
    *(a1 + 27) = *&v10[3];
    *(a1 + 31) = v7;
  }

  *(a1 + 32) = a3;
  *a1 = &unk_28829B2E8;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 257;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 488) = 0;
  if (v7 < 0)
  {
    operator delete(v6);
  }

  *a1 = &unk_28829B358;
  return a1;
}

void *webrtc::RTCPeerConnectionStats::AttributesImpl@<X0>(webrtc::RTCPeerConnectionStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v12[0] = "dataChannelsOpened";
  v12[1] = this + 40;
  v13 = 2;
  v14 = "dataChannelsClosed";
  v15 = this + 48;
  v16 = 2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 != -2)
  {
    if ((a2 + 2) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B868[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 2);
  return result;
}

void webrtc::RTCPeerConnectionStats::~RTCPeerConnectionStats(void **this)
{
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCRtpStreamStats::AttributesImpl@<X0>(webrtc::RTCRtpStreamStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v12[0] = "ssrc";
  v12[1] = this + 40;
  v13 = 2;
  v14 = "kind";
  v15 = this + 48;
  v16 = 6;
  v17 = "transportId";
  v18 = this + 80;
  v19 = 6;
  v20 = "codecId";
  v21 = this + 112;
  v22 = 6;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 != -4)
  {
    if ((a2 + 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829B8E8[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 4);
  return result;
}

void webrtc::RTCRtpStreamStats::~RTCRtpStreamStats(void **this)
{
  *this = &unk_28829B3C8;
  if (*(this + 136) == 1 && *(this + 135) < 0)
  {
    operator delete(this[14]);
    if (*(this + 104) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 104) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

LABEL_7:
  if (*(this + 72) != 1 || (*(this + 71) & 0x80000000) == 0)
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(this[1]);
    return;
  }

  operator delete(this[6]);
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    goto LABEL_12;
  }
}

{
  *this = &unk_28829B3C8;
  if (*(this + 136) == 1 && *(this + 135) < 0)
  {
    operator delete(this[14]);
    if (*(this + 104) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 104) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

LABEL_7:
  if (*(this + 72) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_11:

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(this[1]);
  goto LABEL_11;
}

void *webrtc::RTCInboundRtpStreamStats::AttributesImpl@<X0>(webrtc::RTCInboundRtpStreamStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v211 = *MEMORY[0x277D85DE8];
  v15[0] = "playoutId";
  v15[1] = this + 168;
  v16 = 6;
  v17 = "trackIdentifier";
  v18 = this + 200;
  v19 = 6;
  v20 = "mid";
  v21 = this + 232;
  v22 = 6;
  v23 = "remoteId";
  v24 = this + 264;
  v25 = 6;
  v26 = "packetsReceived";
  v27 = this + 296;
  v28 = 2;
  v29 = "packetsDiscarded";
  v30 = this + 304;
  v31 = 4;
  v32 = "fecPacketsReceived";
  v33 = this + 320;
  v34 = 4;
  v35 = "fecBytesReceived";
  v36 = this + 336;
  v37 = 4;
  v38 = "fecPacketsDiscarded";
  v39 = this + 352;
  v40 = 4;
  v41 = "fecSsrc";
  v42 = this + 368;
  v43 = 2;
  v44 = "bytesReceived";
  v45 = this + 376;
  v46 = 4;
  v47 = "headerBytesReceived";
  v48 = this + 392;
  v49 = 4;
  v50 = "retransmittedPacketsReceived";
  v51 = this + 408;
  v52 = 4;
  v53 = "retransmittedBytesReceived";
  v54 = this + 424;
  v55 = 4;
  v56 = "rtxSsrc";
  v57 = this + 440;
  v58 = 2;
  v59 = "lastPacketReceivedTimestamp";
  v60 = this + 448;
  v61 = 5;
  v62 = "jitterBufferDelay";
  v63 = this + 464;
  v64 = 5;
  v65 = "jitterBufferTargetDelay";
  v66 = this + 480;
  v67 = 5;
  v68 = "jitterBufferMinimumDelay";
  v69 = this + 496;
  v70 = 5;
  v71 = "jitterBufferEmittedCount";
  v72 = this + 512;
  v73 = 4;
  v74 = "totalSamplesReceived";
  v75 = this + 528;
  v76 = 4;
  v77 = "concealedSamples";
  v78 = this + 544;
  v79 = 4;
  v80 = "silentConcealedSamples";
  v81 = this + 560;
  v82 = 4;
  v83 = "concealmentEvents";
  v84 = this + 576;
  v85 = 4;
  v86 = "insertedSamplesForDeceleration";
  v87 = this + 592;
  v88 = 4;
  v89 = "removedSamplesForAcceleration";
  v90 = this + 608;
  v91 = 4;
  v92 = "audioLevel";
  v93 = this + 624;
  v94 = 5;
  v95 = "totalAudioEnergy";
  v96 = this + 640;
  v97 = 5;
  v98 = "totalSamplesDuration";
  v99 = this + 656;
  v100 = 5;
  v101 = "framesReceived";
  v102 = this + 672;
  v103 = 2;
  v104 = "frameWidth";
  v105 = this + 680;
  v106 = 2;
  v107 = "frameHeight";
  v108 = this + 688;
  v109 = 2;
  v110 = "framesPerSecond";
  v111 = this + 696;
  v112 = 5;
  v113 = "framesDecoded";
  v114 = this + 712;
  v115 = 2;
  v116 = "keyFramesDecoded";
  v117 = this + 720;
  v118 = 2;
  v119 = "framesDropped";
  v120 = this + 728;
  v121 = 2;
  v122 = "totalDecodeTime";
  v123 = this + 736;
  v124 = 5;
  v125 = "totalProcessingDelay";
  v126 = this + 752;
  v127 = 5;
  v128 = "totalAssemblyTime";
  v129 = this + 768;
  v130 = 5;
  v131 = "framesAssembledFromMultiplePackets";
  v132 = this + 784;
  v133 = 2;
  v134 = "totalInterFrameDelay";
  v135 = this + 792;
  v136 = 5;
  v137 = "totalSquaredInterFrameDelay";
  v138 = this + 808;
  v139 = 5;
  v140 = "pauseCount";
  v141 = this + 824;
  v142 = 2;
  v143 = "totalPausesDuration";
  v144 = this + 832;
  v145 = 5;
  v146 = "freezeCount";
  v147 = this + 848;
  v148 = 2;
  v149 = "totalFreezesDuration";
  v150 = this + 856;
  v151 = 5;
  v152 = "contentType";
  v153 = this + 872;
  v154 = 6;
  v155 = "estimatedPlayoutTimestamp";
  v156 = this + 904;
  v157 = 5;
  v158 = "decoderImplementation";
  v159 = this + 920;
  v160 = 6;
  v161 = "firCount";
  v162 = this + 952;
  v163 = 2;
  v164 = "pliCount";
  v165 = this + 960;
  v166 = 2;
  v167 = "nackCount";
  v168 = this + 968;
  v169 = 2;
  v170 = "qpSum";
  v171 = this + 976;
  v172 = 4;
  v173 = "totalCorruptionProbability";
  v174 = this + 992;
  v175 = 5;
  v176 = "totalSquaredCorruptionProbability";
  v177 = this + 1008;
  v178 = 5;
  v179 = "corruptionMeasurements";
  v180 = this + 1024;
  v181 = 4;
  v182 = "googTimingFrameInfo";
  v183 = this + 1040;
  v184 = 6;
  v185 = "powerEfficientDecoder";
  v186 = this + 1072;
  v187 = 0;
  v188 = "jitterBufferFlushes";
  v189 = this + 1080;
  v190 = 4;
  v191 = "delayedPacketOutageSamples";
  v192 = this + 1096;
  v193 = 4;
  v194 = "relativePacketArrivalDelay";
  v195 = this + 1112;
  v196 = 5;
  v197 = "interruptionCount";
  v198 = this + 1128;
  v199 = 2;
  v200 = "totalInterruptionDuration";
  v201 = this + 1136;
  v202 = 5;
  v203 = "minPlayoutDelay";
  v204 = this + 1152;
  v205 = 5;
  *&v206 = "jitter";
  *(&v206 + 1) = this + 144;
  v207 = 5;
  v208 = "packetsLost";
  v209 = this + 160;
  v210 = 1;
  webrtc::RTCRtpStreamStats::AttributesImpl(this, a2 + 66, a3);
  v4 = 0;
  v13 = 0;
  do
  {
    v11[0] = &v206;
    v11[1] = &v13;
    v5 = &v206 + 24 * v4;
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
LABEL_8:
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v14 = v11;
    (off_28829B968[v6])(&v12, &v14, v5 + 8);
    std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v12);
    v4 = v13 + 1;
    v13 = v4;
  }

  while (v4 < 2);
  v7 = 0;
  v14 = 0;
  do
  {
    *&v12 = v15;
    *(&v12 + 1) = &v14;
    v8 = &v15[3 * v7];
    v9 = *(v8 + 4);
    if (v9 == -1)
    {
      goto LABEL_8;
    }

    v11[0] = &v12;
    (off_28829BA68[v9])(&v206, v11, v8 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v206);
    v7 = v14 + 1;
    v14 = v7;
  }

  while (v7 < 0x40);
  return result;
}

uint64_t webrtc::RTCInboundRtpStreamStats::RTCInboundRtpStreamStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *&v10[3] = *(a2 + 19);
  *v10 = *(a2 + 16);
  v7 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = *v10;
  HIBYTE(v11) = v10[3];
  *a1 = &unk_28829B0F8;
  v8 = (a1 + 8);
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(v8, v6, v5);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 24) = v11;
    *(a1 + 27) = *&v10[3];
    *(a1 + 31) = v7;
  }

  *(a1 + 32) = a3;
  *a1 = &unk_28829B3C8;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (v7 < 0)
  {
    operator delete(v6);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *a1 = &unk_28829B400;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 300) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 444) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 676) = 0;
  *(a1 + 680) = 0;
  *(a1 + 684) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 840) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0;
  *(a1 + 896) = 0;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 956) = 0;
  *(a1 + 960) = 0;
  *(a1 + 964) = 0;
  *(a1 + 968) = 0;
  *(a1 + 972) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1132) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  return a1;
}

void webrtc::RTCInboundRtpStreamStats::~RTCInboundRtpStreamStats(void **this)
{
  if (*(this + 1064) == 1 && *(this + 1063) < 0)
  {
    operator delete(this[130]);
    if (*(this + 944) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 944) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 943) < 0)
  {
    operator delete(this[115]);
  }

LABEL_7:
  if (*(this + 896) == 1 && *(this + 895) < 0)
  {
    operator delete(this[109]);
    if (*(this + 288) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 288) != 1)
  {
    goto LABEL_13;
  }

  if (*(this + 287) < 0)
  {
    operator delete(this[33]);
  }

LABEL_13:
  if (*(this + 256) == 1 && *(this + 255) < 0)
  {
    operator delete(this[29]);
    if (*(this + 224) != 1)
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 224) != 1)
  {
    goto LABEL_19;
  }

  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

LABEL_19:
  if (*(this + 192) == 1 && *(this + 191) < 0)
  {
    operator delete(this[21]);
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_25;
    }
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

LABEL_25:
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
    if (*(this + 72) != 1)
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 72) != 1)
  {
    goto LABEL_31;
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

LABEL_31:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  webrtc::RTCInboundRtpStreamStats::~RTCInboundRtpStreamStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCOutboundRtpStreamStats::AttributesImpl@<X0>(webrtc::RTCOutboundRtpStreamStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v115 = *MEMORY[0x277D85DE8];
  v15[0] = "mediaSourceId";
  v15[1] = this + 176;
  v16 = 6;
  v17 = "remoteId";
  v18 = this + 208;
  v19 = 6;
  v20 = "mid";
  v21 = this + 240;
  v22 = 6;
  v23 = "rid";
  v24 = this + 272;
  v25 = 6;
  v26 = "encodingIndex";
  v27 = this + 304;
  v28 = 2;
  v29 = "retransmittedPacketsSent";
  v30 = this + 312;
  v31 = 4;
  v32 = "headerBytesSent";
  v33 = this + 328;
  v34 = 4;
  v35 = "retransmittedBytesSent";
  v36 = this + 344;
  v37 = 4;
  v38 = "targetBitrate";
  v39 = this + 360;
  v40 = 5;
  v41 = "framesEncoded";
  v42 = this + 376;
  v43 = 2;
  v44 = "keyFramesEncoded";
  v45 = this + 384;
  v46 = 2;
  v47 = "totalEncodeTime";
  v48 = this + 392;
  v49 = 5;
  v50 = "totalEncodedBytesTarget";
  v51 = this + 408;
  v52 = 4;
  v53 = "frameWidth";
  v54 = this + 424;
  v55 = 2;
  v56 = "frameHeight";
  v57 = this + 432;
  v58 = 2;
  v59 = "framesPerSecond";
  v60 = this + 440;
  v61 = 5;
  v62 = "framesSent";
  v63 = this + 456;
  v64 = 2;
  v65 = "hugeFramesSent";
  v66 = this + 464;
  v67 = 2;
  v68 = "totalPacketSendDelay";
  v69 = this + 472;
  v70 = 5;
  v71 = "qualityLimitationReason";
  v72 = this + 488;
  v73 = 6;
  v74 = "qualityLimitationDurations";
  v75 = this + 520;
  v76 = 15;
  v77 = "qualityLimitationResolutionChanges";
  v78 = this + 552;
  v79 = 2;
  v80 = "contentType";
  v81 = this + 560;
  v82 = 6;
  v83 = "encoderImplementation";
  v84 = this + 592;
  v85 = 6;
  v86 = "firCount";
  v87 = this + 624;
  v88 = 2;
  v89 = "pliCount";
  v90 = this + 632;
  v91 = 2;
  v92 = "nackCount";
  v93 = this + 640;
  v94 = 2;
  v95 = "qpSum";
  v96 = this + 648;
  v97 = 4;
  v98 = "active";
  v99 = this + 664;
  v100 = 0;
  v101 = "powerEfficientEncoder";
  v102 = this + 666;
  v103 = 0;
  v104 = "scalabilityMode";
  v105 = this + 672;
  v106 = 6;
  v107 = "rtxSsrc";
  v108 = this + 704;
  v109 = 2;
  *&v110 = "packetsSent";
  *(&v110 + 1) = this + 144;
  v111 = 4;
  v112 = "bytesSent";
  v113 = this + 160;
  v114 = 4;
  webrtc::RTCRtpStreamStats::AttributesImpl(this, a2 + 34, a3);
  v4 = 0;
  v13 = 0;
  do
  {
    v11[0] = &v110;
    v11[1] = &v13;
    v5 = &v110 + 24 * v4;
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
LABEL_8:
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v14 = v11;
    (off_28829B9E8[v6])(&v12, &v14, v5 + 8);
    std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v12);
    v4 = v13 + 1;
    v13 = v4;
  }

  while (v4 < 2);
  v7 = 0;
  v14 = 0;
  do
  {
    *&v12 = v15;
    *(&v12 + 1) = &v14;
    v8 = &v15[3 * v7];
    v9 = *(v8 + 4);
    if (v9 == -1)
    {
      goto LABEL_8;
    }

    v11[0] = &v12;
    (off_28829BAE8[v9])(&v110, v11, v8 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v110);
    v7 = v14 + 1;
    v14 = v7;
  }

  while (v7 < 0x20);
  return result;
}

uint64_t webrtc::RTCOutboundRtpStreamStats::RTCOutboundRtpStreamStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v7 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a1 = &unk_28829B0F8;
  v8 = (a1 + 8);
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(v8, v6, v5);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 24) = *v10;
    *(a1 + 27) = *&v10[3];
    *(a1 + 31) = v7;
  }

  *(a1 + 32) = a3;
  *a1 = &unk_28829B3C8;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (v7 < 0)
  {
    operator delete(v6);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *a1 = &unk_28829B438;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 428) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 628) = 0;
  *(a1 + 632) = 0;
  *(a1 + 636) = 0;
  *(a1 + 640) = 0;
  *(a1 + 644) = 0;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 664) = 0;
  return a1;
}

void webrtc::RTCOutboundRtpStreamStats::~RTCOutboundRtpStreamStats(webrtc::RTCOutboundRtpStreamStats *this)
{
  if (*(this + 696) == 1 && *(this + 695) < 0)
  {
    operator delete(*(this + 84));
    if (*(this + 616) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 616) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

LABEL_7:
  if (*(this + 584) == 1 && *(this + 583) < 0)
  {
    operator delete(*(this + 70));
    if (*(this + 544) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(this + 544) == 1)
  {
LABEL_10:
    std::__tree<webrtc::SocketAddress>::destroy(this + 520, *(this + 66));
  }

LABEL_11:
  if (*(this + 512) == 1 && *(this + 511) < 0)
  {
    operator delete(*(this + 61));
    if (*(this + 296) != 1)
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 296) != 1)
  {
    goto LABEL_19;
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

LABEL_19:
  if (*(this + 264) == 1 && *(this + 263) < 0)
  {
    operator delete(*(this + 30));
    if (*(this + 232) != 1)
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 232) != 1)
  {
    goto LABEL_25;
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

LABEL_25:
  if (*(this + 200) == 1 && *(this + 199) < 0)
  {
    operator delete(*(this + 22));
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_31;
    }
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

LABEL_31:
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
    if (*(this + 72) != 1)
    {
      goto LABEL_37;
    }
  }

  else if (*(this + 72) != 1)
  {
    goto LABEL_37;
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

LABEL_37:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  webrtc::RTCOutboundRtpStreamStats::~RTCOutboundRtpStreamStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl@<X0>(webrtc::RTCRemoteInboundRtpStreamStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v15[0] = "localId";
  v15[1] = this + 168;
  v16 = 6;
  v17 = "roundTripTime";
  v18 = this + 200;
  v19 = 5;
  v20 = "fractionLost";
  v21 = this + 216;
  v22 = 5;
  v23 = "totalRoundTripTime";
  v24 = this + 232;
  v25 = 5;
  v26 = "roundTripTimeMeasurements";
  v27 = this + 248;
  v28 = 1;
  *&v29 = "jitter";
  *(&v29 + 1) = this + 144;
  v30 = 5;
  v31 = "packetsLost";
  v32 = this + 160;
  v33 = 1;
  webrtc::RTCRtpStreamStats::AttributesImpl(this, a2 + 7, a3);
  v4 = 0;
  v13 = 0;
  do
  {
    v11[0] = &v29;
    v11[1] = &v13;
    v5 = &v29 + 24 * v4;
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
LABEL_8:
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v14 = v11;
    (off_28829B968[v6])(&v12, &v14, v5 + 8);
    std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v12);
    v4 = v13 + 1;
    v13 = v4;
  }

  while (v4 < 2);
  v7 = 0;
  v14 = 0;
  do
  {
    *&v12 = v15;
    *(&v12 + 1) = &v14;
    v8 = &v15[3 * v7];
    v9 = *(v8 + 4);
    if (v9 == -1)
    {
      goto LABEL_8;
    }

    v11[0] = &v12;
    (off_28829BB68[v9])(&v29, v11, v8 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v29);
    v7 = v14 + 1;
    v14 = v7;
  }

  while (v7 < 5);
  return result;
}

uint64_t webrtc::RTCRemoteInboundRtpStreamStats::RTCRemoteInboundRtpStreamStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v7 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a1 = &unk_28829B0F8;
  v8 = (a1 + 8);
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(v8, v6, v5);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 24) = *v10;
    *(a1 + 27) = *&v10[3];
    *(a1 + 31) = v7;
  }

  *(a1 + 32) = a3;
  *a1 = &unk_28829B3C8;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (v7 < 0)
  {
    operator delete(v6);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *a1 = &unk_28829B470;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  return a1;
}

void webrtc::RTCRemoteInboundRtpStreamStats::~RTCRemoteInboundRtpStreamStats(void **this)
{
  if (*(this + 192) == 1 && *(this + 191) < 0)
  {
    operator delete(this[21]);
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_7;
    }
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

LABEL_7:
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
    if (*(this + 72) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 72) != 1)
  {
    goto LABEL_13;
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

LABEL_13:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  webrtc::RTCRemoteInboundRtpStreamStats::~RTCRemoteInboundRtpStreamStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl@<X0>(webrtc::RTCRemoteOutboundRtpStreamStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v15[0] = "localId";
  v15[1] = this + 176;
  v16 = 6;
  v17 = "remoteTimestamp";
  v18 = this + 208;
  v19 = 5;
  v20 = "reportsSent";
  v21 = this + 224;
  v22 = 4;
  v23 = "roundTripTime";
  v24 = this + 240;
  v25 = 5;
  v26 = "roundTripTimeMeasurements";
  v27 = this + 256;
  v28 = 4;
  v29 = "totalRoundTripTime";
  v30 = this + 272;
  v31 = 5;
  *&v32 = "packetsSent";
  *(&v32 + 1) = this + 144;
  v33 = 4;
  v34 = "bytesSent";
  v35 = this + 160;
  v36 = 4;
  webrtc::RTCRtpStreamStats::AttributesImpl(this, a2 + 8, a3);
  v4 = 0;
  v13 = 0;
  do
  {
    v11[0] = &v32;
    v11[1] = &v13;
    v5 = &v32 + 24 * v4;
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
LABEL_8:
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v14 = v11;
    (off_28829B9E8[v6])(&v12, &v14, v5 + 8);
    std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v12);
    v4 = v13 + 1;
    v13 = v4;
  }

  while (v4 < 2);
  v7 = 0;
  v14 = 0;
  do
  {
    *&v12 = v15;
    *(&v12 + 1) = &v14;
    v8 = &v15[3 * v7];
    v9 = *(v8 + 4);
    if (v9 == -1)
    {
      goto LABEL_8;
    }

    v11[0] = &v12;
    (off_28829BBE8[v9])(&v32, v11, v8 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v32);
    v7 = v14 + 1;
    v14 = v7;
  }

  while (v7 < 6);
  return result;
}

uint64_t webrtc::RTCRemoteOutboundRtpStreamStats::RTCRemoteOutboundRtpStreamStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *v10 = *(a2 + 16);
  *&v10[3] = *(a2 + 19);
  v7 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a1 = &unk_28829B0F8;
  v8 = (a1 + 8);
  if (v7 < 0)
  {
    std::string::__init_copy_ctor_external(v8, v6, v5);
  }

  else
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
    *(a1 + 24) = *v10;
    *(a1 + 27) = *&v10[3];
    *(a1 + 31) = v7;
  }

  *(a1 + 32) = a3;
  *a1 = &unk_28829B3C8;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (v7 < 0)
  {
    operator delete(v6);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *a1 = &unk_28829B4A8;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  return a1;
}

void webrtc::RTCRemoteOutboundRtpStreamStats::~RTCRemoteOutboundRtpStreamStats(void **this)
{
  if (*(this + 200) == 1 && *(this + 199) < 0)
  {
    operator delete(this[22]);
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *this = &unk_28829B3C8;
    if (*(this + 136) != 1)
    {
      goto LABEL_7;
    }
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

LABEL_7:
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
    if (*(this + 72) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 72) != 1)
  {
    goto LABEL_13;
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

LABEL_13:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  webrtc::RTCRemoteOutboundRtpStreamStats::~RTCRemoteOutboundRtpStreamStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCMediaSourceStats::AttributesImpl@<X0>(webrtc::RTCMediaSourceStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v12[0] = "trackIdentifier";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "kind";
  v15 = this + 72;
  v16 = 6;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 != -2)
  {
    if ((a2 + 2) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829BC68[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 2);
  return result;
}

void webrtc::RTCMediaSourceStats::~RTCMediaSourceStats(void **this)
{
  *this = &unk_28829B4E0;
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_7:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28829B4E0;
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_7:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCAudioSourceStats::AttributesImpl@<X0>(webrtc::RTCAudioSourceStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v12[0] = "audioLevel";
  v12[1] = this + 104;
  v13 = 5;
  v14 = "totalAudioEnergy";
  v15 = this + 120;
  v16 = 5;
  v17 = "totalSamplesDuration";
  v18 = this + 136;
  v19 = 5;
  v20 = "echoReturnLoss";
  v21 = this + 152;
  v22 = 5;
  v23 = "echoReturnLossEnhancement";
  v24 = this + 168;
  v25 = 5;
  webrtc::RTCMediaSourceStats::AttributesImpl(this, a2 + 5, a3);
  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829BCE8[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 5);
  return result;
}

void webrtc::RTCAudioSourceStats::~RTCAudioSourceStats(void **this)
{
  *this = &unk_28829B4E0;
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_7:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28829B4E0;
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_7:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCVideoSourceStats::AttributesImpl@<X0>(webrtc::RTCVideoSourceStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v12[0] = "width";
  v12[1] = this + 104;
  v13 = 2;
  v14 = "height";
  v15 = this + 112;
  v16 = 2;
  v17 = "frames";
  v18 = this + 120;
  v19 = 2;
  v20 = "framesPerSecond";
  v21 = this + 128;
  v22 = 5;
  webrtc::RTCMediaSourceStats::AttributesImpl(this, a2 + 4, a3);
  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829BD68[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 4);
  return result;
}

void webrtc::RTCVideoSourceStats::~RTCVideoSourceStats(void **this)
{
  *this = &unk_28829B4E0;
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_7:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28829B4E0;
  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
    if (*(this + 64) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 64) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

LABEL_7:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCTransportStats::AttributesImpl@<X0>(webrtc::RTCTransportStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v12[0] = "bytesSent";
  v12[1] = this + 40;
  v13 = 4;
  v14 = "packetsSent";
  v15 = this + 56;
  v16 = 4;
  v17 = "bytesReceived";
  v18 = this + 72;
  v19 = 4;
  v20 = "packetsReceived";
  v21 = this + 88;
  v22 = 4;
  v23 = "rtcpTransportStatsId";
  v24 = this + 104;
  v25 = 6;
  v26 = "dtlsState";
  v27 = this + 136;
  v28 = 6;
  v29 = "selectedCandidatePairId";
  v30 = this + 168;
  v31 = 6;
  v32 = "localCertificateId";
  v33 = this + 200;
  v34 = 6;
  v35 = "remoteCertificateId";
  v36 = this + 232;
  v37 = 6;
  v38 = "tlsVersion";
  v39 = this + 264;
  v40 = 6;
  v41 = "dtlsCipher";
  v42 = this + 296;
  v43 = 6;
  v44 = "dtlsRole";
  v45 = this + 328;
  v46 = 6;
  v47 = "srtpCipher";
  v48 = this + 360;
  v49 = 6;
  v50 = "selectedCandidatePairChanges";
  v51 = this + 392;
  v52 = 2;
  v53 = "iceRole";
  v54 = this + 400;
  v55 = 6;
  v56 = "iceLocalUsernameFragment";
  v57 = this + 432;
  v58 = 6;
  v59 = "iceState";
  v60 = this + 464;
  v61 = 6;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 != -17)
  {
    if ((a2 + 17) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829BDE8[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 0x11);
  return result;
}

void webrtc::RTCTransportStats::~RTCTransportStats(void **this)
{
  if (*(this + 488) == 1 && *(this + 487) < 0)
  {
    operator delete(this[58]);
    if (*(this + 456) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 456) != 1)
  {
    goto LABEL_7;
  }

  if (*(this + 455) < 0)
  {
    operator delete(this[54]);
  }

LABEL_7:
  if (*(this + 424) == 1 && *(this + 423) < 0)
  {
    operator delete(this[50]);
    if (*(this + 384) != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 384) != 1)
  {
    goto LABEL_13;
  }

  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

LABEL_13:
  if (*(this + 352) == 1 && *(this + 351) < 0)
  {
    operator delete(this[41]);
    if (*(this + 320) != 1)
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 320) != 1)
  {
    goto LABEL_19;
  }

  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

LABEL_19:
  if (*(this + 288) == 1 && *(this + 287) < 0)
  {
    operator delete(this[33]);
    if (*(this + 256) != 1)
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 256) != 1)
  {
    goto LABEL_25;
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

LABEL_25:
  if (*(this + 224) == 1 && *(this + 223) < 0)
  {
    operator delete(this[25]);
    if (*(this + 192) != 1)
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 192) != 1)
  {
    goto LABEL_31;
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

LABEL_31:
  if (*(this + 160) == 1 && *(this + 159) < 0)
  {
    operator delete(this[17]);
    if (*(this + 128) != 1)
    {
      goto LABEL_37;
    }
  }

  else if (*(this + 128) != 1)
  {
    goto LABEL_37;
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

LABEL_37:
  *this = &unk_28829B0F8;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  webrtc::RTCTransportStats::~RTCTransportStats(this);

  JUMPOUT(0x2743DA540);
}

void *webrtc::RTCAudioPlayoutStats::AttributesImpl@<X0>(webrtc::RTCAudioPlayoutStats *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v12[0] = "kind";
  v12[1] = this + 40;
  v13 = 6;
  v14 = "synthesizedSamplesDuration";
  v15 = this + 72;
  v16 = 5;
  v17 = "synthesizedSamplesEvents";
  v18 = this + 88;
  v19 = 4;
  v20 = "totalSamplesDuration";
  v21 = this + 104;
  v22 = 5;
  v23 = "totalPlayoutDelay";
  v24 = this + 120;
  v25 = 5;
  v26 = "totalSamplesCount";
  v27 = this + 136;
  v28 = 4;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2 != -6)
  {
    if ((a2 + 6) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v4 = 0;
  v10 = 0;
  do
  {
    v8[0] = v12;
    v8[1] = &v10;
    v5 = &v12[3 * v4];
    v6 = *(v5 + 4);
    if (v6 == -1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
    }

    v11 = v8;
    (off_28829BE68[v6])(&v9, &v11, v5 + 1);
    result = std::vector<webrtc::Attribute>::push_back[abi:sn200100](a3, &v9);
    v4 = v10 + 1;
    v10 = v4;
  }

  while (v4 < 6);
  return result;
}

void webrtc::RTCAudioPlayoutStats::~RTCAudioPlayoutStats(void **this)
{
  if (*(this + 64) != 1 || (*(this + 63) & 0x80000000) == 0)
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    operator delete(this[1]);
    return;
  }

  v1 = this;
  operator delete(this[5]);
  this = v1;
  *v1 = &unk_28829B0F8;
  if (v1[31] < 0)
  {
    goto LABEL_6;
  }
}

{
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    v1 = this;
    operator delete(this[5]);
    this = v1;
    *v1 = &unk_28829B0F8;
    if ((v1[31] & 0x80000000) == 0)
    {
LABEL_5:

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *this = &unk_28829B0F8;
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(this[1]);
  goto LABEL_5;
}

void webrtc::RTCLocalIceCandidateStats::~RTCLocalIceCandidateStats(void **this)
{
  webrtc::RTCIceCandidateStats::~RTCIceCandidateStats(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::RTCRemoteIceCandidateStats::~RTCRemoteIceCandidateStats(void **this)
{
  webrtc::RTCIceCandidateStats::~RTCIceCandidateStats(this);

  JUMPOUT(0x2743DA540);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCertificateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCCodecStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCDataChannelStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidatePairStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

webrtc::RTCIceCandidateStats *webrtc::RTCIceCandidateStats::RTCIceCandidateStats(webrtc::RTCIceCandidateStats *this, const webrtc::RTCIceCandidateStats *a2)
{
  v4 = *(a2 + 4);
  *this = &unk_28829B0F8;
  v5 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(this + 4) = v4;
  *this = &unk_28829B2E8;
  *(this + 40) = 0;
  v7 = (this + 40);
  *(this + 64) = 0;
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(v7, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v8 = *(a2 + 40);
      *(this + 7) = *(a2 + 7);
      *&v7->__r_.__value_.__l.__data_ = v8;
    }

    *(this + 64) = 1;
  }

  v9 = *(a2 + 36);
  *(this + 80) = 0;
  v10 = (this + 80);
  *(this + 36) = v9;
  *(this + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(v10, *(a2 + 10), *(a2 + 11));
    }

    else
    {
      v13 = *(a2 + 5);
      *(this + 12) = *(a2 + 12);
      *&v10->__r_.__value_.__l.__data_ = v13;
    }

    *(this + 104) = 1;
    *(this + 112) = 0;
    v11 = (this + 112);
    *(this + 136) = 0;
    if (*(a2 + 136) != 1)
    {
LABEL_11:
      *(this + 144) = 0;
      v12 = (this + 144);
      *(this + 168) = 0;
      if (*(a2 + 168) != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }
  }

  else
  {
    *(this + 112) = 0;
    v11 = (this + 112);
    *(this + 136) = 0;
    if (*(a2 + 136) != 1)
    {
      goto LABEL_11;
    }
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(v11, *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v14 = *(a2 + 7);
    v11->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *&v11->__r_.__value_.__l.__data_ = v14;
  }

  *(this + 136) = 1;
  *(this + 144) = 0;
  v12 = (this + 144);
  *(this + 168) = 0;
  if (*(a2 + 168) == 1)
  {
LABEL_21:
    if (*(a2 + 167) < 0)
    {
      std::string::__init_copy_ctor_external(v12, *(a2 + 18), *(a2 + 19));
    }

    else
    {
      v15 = *(a2 + 9);
      v12->__r_.__value_.__r.__words[2] = *(a2 + 20);
      *&v12->__r_.__value_.__l.__data_ = v15;
    }

    *(this + 168) = 1;
  }

LABEL_25:
  v16 = *(a2 + 22);
  *(this + 184) = 0;
  v17 = (this + 184);
  *(this + 22) = v16;
  *(this + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    if (*(a2 + 207) < 0)
    {
      std::string::__init_copy_ctor_external(v17, *(a2 + 23), *(a2 + 24));
    }

    else
    {
      v20 = *(a2 + 184);
      *(this + 25) = *(a2 + 25);
      *&v17->__r_.__value_.__l.__data_ = v20;
    }

    *(this + 208) = 1;
    *(this + 216) = 0;
    v18 = (this + 216);
    *(this + 240) = 0;
    if (*(a2 + 240) != 1)
    {
LABEL_27:
      *(this + 248) = 0;
      v19 = (this + 248);
      *(this + 272) = 0;
      if (*(a2 + 272) != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }
  }

  else
  {
    *(this + 216) = 0;
    v18 = (this + 216);
    *(this + 240) = 0;
    if (*(a2 + 240) != 1)
    {
      goto LABEL_27;
    }
  }

  if (*(a2 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(v18, *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v21 = *(a2 + 216);
    v18->__r_.__value_.__r.__words[2] = *(a2 + 29);
    *&v18->__r_.__value_.__l.__data_ = v21;
  }

  *(this + 240) = 1;
  *(this + 248) = 0;
  v19 = (this + 248);
  *(this + 272) = 0;
  if (*(a2 + 272) == 1)
  {
LABEL_37:
    if (*(a2 + 271) < 0)
    {
      std::string::__init_copy_ctor_external(v19, *(a2 + 31), *(a2 + 32));
    }

    else
    {
      v22 = *(a2 + 248);
      v19->__r_.__value_.__r.__words[2] = *(a2 + 33);
      *&v19->__r_.__value_.__l.__data_ = v22;
    }

    *(this + 272) = 1;
  }

LABEL_41:
  *(this + 35) = *(a2 + 35);
  *(this + 288) = 0;
  *(this + 312) = 0;
  if (*(a2 + 312) == 1)
  {
    if (*(a2 + 311) < 0)
    {
      std::string::__init_copy_ctor_external(this + 12, *(a2 + 36), *(a2 + 37));
    }

    else
    {
      v23 = *(a2 + 18);
      *(this + 38) = *(a2 + 38);
      *(this + 18) = v23;
    }

    *(this + 312) = 1;
    *(this + 320) = 0;
    *(this + 344) = 0;
    if (*(a2 + 344) != 1)
    {
LABEL_43:
      *(this + 352) = 0;
      *(this + 376) = 0;
      if (*(a2 + 376) != 1)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    }
  }

  else
  {
    *(this + 320) = 0;
    *(this + 344) = 0;
    if (*(a2 + 344) != 1)
    {
      goto LABEL_43;
    }
  }

  if (*(a2 + 343) < 0)
  {
    std::string::__init_copy_ctor_external((this + 320), *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v24 = *(a2 + 20);
    *(this + 42) = *(a2 + 42);
    *(this + 20) = v24;
  }

  *(this + 344) = 1;
  *(this + 352) = 0;
  *(this + 376) = 0;
  if (*(a2 + 376) == 1)
  {
LABEL_53:
    if (*(a2 + 375) < 0)
    {
      std::string::__init_copy_ctor_external((this + 352), *(a2 + 44), *(a2 + 45));
    }

    else
    {
      v25 = *(a2 + 22);
      *(this + 46) = *(a2 + 46);
      *(this + 22) = v25;
    }

    *(this + 376) = 1;
  }

LABEL_57:
  *(this + 48) = *(a2 + 48);
  *(this + 392) = 0;
  *(this + 416) = 0;
  if (*(a2 + 416) == 1)
  {
    v26 = (this + 392);
    if (*(a2 + 415) < 0)
    {
      std::string::__init_copy_ctor_external(v26, *(a2 + 49), *(a2 + 50));
    }

    else
    {
      v27 = *(a2 + 392);
      *(this + 51) = *(a2 + 51);
      *&v26->__r_.__value_.__l.__data_ = v27;
    }

    *(this + 416) = 1;
  }

  *(this + 424) = 0;
  *(this + 448) = 0;
  if (*(a2 + 448) == 1)
  {
    v28 = (this + 424);
    if (*(a2 + 447) < 0)
    {
      std::string::__init_copy_ctor_external(v28, *(a2 + 53), *(a2 + 54));
    }

    else
    {
      v29 = *(a2 + 424);
      *(this + 55) = *(a2 + 55);
      *&v28->__r_.__value_.__l.__data_ = v29;
    }

    *(this + 448) = 1;
  }

  *(this + 228) = *(a2 + 228);
  *(this + 464) = 0;
  *(this + 488) = 0;
  if (*(a2 + 488) == 1)
  {
    if (*(a2 + 487) < 0)
    {
      std::string::__init_copy_ctor_external((this + 464), *(a2 + 58), *(a2 + 59));
    }

    else
    {
      v30 = *(a2 + 29);
      *(this + 60) = *(a2 + 60);
      *(this + 29) = v30;
    }

    *(this + 488) = 1;
  }

  return this;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCIceCandidateStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCPeerConnectionStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

webrtc::RTCRtpStreamStats *webrtc::RTCRtpStreamStats::RTCRtpStreamStats(webrtc::RTCRtpStreamStats *this, const webrtc::RTCRtpStreamStats *a2)
{
  v4 = *(a2 + 4);
  *this = &unk_28829B0F8;
  v5 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(this + 4) = v4;
  *this = &unk_28829B3C8;
  v7 = *(a2 + 5);
  *(this + 48) = 0;
  v8 = (this + 48);
  *(this + 5) = v7;
  *(this + 72) = 0;
  if (*(a2 + 72) != 1)
  {
    *(this + 80) = 0;
    v9 = (this + 80);
    *(this + 104) = 0;
    if (*(a2 + 104) != 1)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (*(a2 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(v9, *(a2 + 10), *(a2 + 11));
    }

    else
    {
      v13 = *(a2 + 5);
      v9->__r_.__value_.__r.__words[2] = *(a2 + 12);
      *&v9->__r_.__value_.__l.__data_ = v13;
    }

    *(this + 104) = 1;
    *(this + 112) = 0;
    v10 = (this + 112);
    *(this + 136) = 0;
    if (*(a2 + 136) != 1)
    {
      return this;
    }

    goto LABEL_16;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v12 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *&v8->__r_.__value_.__l.__data_ = v12;
  }

  *(this + 72) = 1;
  *(this + 80) = 0;
  v9 = (this + 80);
  *(this + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(this + 112) = 0;
  v10 = (this + 112);
  *(this + 136) = 0;
  if (*(a2 + 136) != 1)
  {
    return this;
  }

LABEL_16:
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v14 = *(a2 + 7);
    v10->__r_.__value_.__r.__words[2] = *(a2 + 16);
    *&v10->__r_.__value_.__l.__data_ = v14;
  }

  *(this + 136) = 1;
  return this;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCReceivedRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCSentRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteInboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCRemoteOutboundRtpStreamStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCMediaSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCVideoSourceStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCTransportStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<3ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 3;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<4ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 4;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<5ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 5;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<6ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 6;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<7ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 7;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<8ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 8;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<9ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 9;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<10ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 10;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<11ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 11;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<12ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 12;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<13ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 13;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<14ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 14;
  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<15ul>::__dispatch[abi:sn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<webrtc::RTCAudioPlayoutStats::AttributesImpl(unsigned long)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,std::optional<BOOL> const*,std::__variant_detail::_Trait<int> const*,std::__variant_detail::_Trait<unsigned int> const*,std::__variant_detail::_Trait<long long> const*,std::__variant_detail::_Trait<unsigned long long> const*,std::__variant_detail::_Trait<double> const*,std::__variant_detail::_Trait<std::string> const*,std::__variant_detail::_Trait<std::vector<BOOL,std::char_traits<char><BOOL>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<int,std::char_traits<char><int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned int,std::char_traits<char><unsigned int>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<long long,std::char_traits<char><long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<unsigned long long,std::char_traits<char><unsigned long long>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<double,std::char_traits<char><double>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*,std::__variant_detail::_Trait<std::map<std::allocator<char>,unsigned long long,std::less<std::allocator<char>>,std::char_traits<char><std::pair<std::allocator<char> const,unsigned long long>>>> const*,std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::__variant_detail::_Trait<std::string> const*<std::allocator<char>,std::char_traits<char><std::allocator<char>>>> const*<std::allocator<char>,double,std::less,std::char_traits<char><std::less<std::allocator<char>><std::pair,double>>>> const*> &>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *(**result + 24 * **(*result + 8));
  *(a3 + 8) = v3;
  *(a3 + 16) = 15;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void sub_2733B752C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t decompressionOutputCallback(void *a1, void *a2, unsigned int a3, unsigned int a4, __CVBuffer *a5, CMTime *a6, CMTime *a7)
{
  v11 = a1;
  v12 = v11;
  if (a3 || !a5)
  {
    if (a3 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a3;
    }

    [v11 setError:v16];
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH264.mm");
    }

    [v12 processFrame:0 reorderSize:a2[1]];
  }

  else
  {
    CVBufferRemoveAttachment(a5, *MEMORY[0x277CC4B78]);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4C00], *MEMORY[0x277CC4C20], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4CC0], *MEMORY[0x277CC4D08], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4D10], *MEMORY[0x277CC4D28], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, @"ColorInfoGuessedBy", @"RTCVideoDecoderH264", kCVAttachmentMode_ShouldPropagate);
    v13 = [[WK_RTCCVPixelBuffer alloc] initWithPixelBuffer:a5];
    v14 = [WK_RTCVideoFrame alloc];
    time = *a6;
    v15 = [(WK_RTCVideoFrame *)v14 initWithBuffer:v13 rotation:0 timeStampNs:(CMTimeGetSeconds(&time) * 1000000000.0)];
    [(WK_RTCVideoFrame *)v15 setTimeStamp:*a2];
    [v12 processFrame:v15 reorderSize:a2[1]];
  }

  return MEMORY[0x2743DA540](a2, 0x1000C40451B5BE8);
}

void sub_2733B7948(_Unwind_Exception *a1)
{
  if (v1)
  {
    MEMORY[0x2743DA540](v1, 0x1000C40451B5BE8);
  }

  _Unwind_Resume(a1);
}

void sub_2733B79FC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2733B7A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WK_RTCVideoDecoderH264;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2733B800C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void **std::deque<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>>::~deque[abi:sn200100](void **a1)
{
  std::deque<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v12 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
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
          if (*v9)
          {
            *v9 = 0;
          }

          MEMORY[0x2743DA540](v9, 0x1080C40468F112ELL);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v11 = v5[1];
          ++v5;
          v6 = v11;
          v7 = v11;
        }

        if (v7 == v8)
        {
          v2 = a1[1];
          v3 = a1[2];
          goto LABEL_13;
        }
      }

      __break(1u);
      return;
    }

LABEL_13:
    a1[5] = 0;
    v12 = v3 - v2;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v2);
        v13 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v12 = (v13 - v2) >> 3;
      }

      while (v12 > 2);
    }
  }

  if (v12 == 1)
  {
    v14 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      return;
    }

    v14 = 512;
  }

  a1[4] = v14;
}

uint64_t h265DecompressionOutputCallback(void *a1, void *a2, unsigned int a3, unsigned int a4, __CVBuffer *a5, CMTime *a6, CMTime *a7)
{
  v11 = a1;
  v12 = v11;
  if (a3 || !a5)
  {
    if (a3 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a3;
    }

    [v11 setError:v16];
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderH265.mm");
    }

    [v12 processFrame:0 reorderSize:a2[1]];
  }

  else
  {
    CVBufferRemoveAttachment(a5, *MEMORY[0x277CC4B78]);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4C00], *MEMORY[0x277CC4C20], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4CC0], *MEMORY[0x277CC4D08], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4D10], *MEMORY[0x277CC4D28], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, @"ColorInfoGuessedBy", @"RTCVideoDecoderH265", kCVAttachmentMode_ShouldPropagate);
    v13 = [[WK_RTCCVPixelBuffer alloc] initWithPixelBuffer:a5];
    v14 = [WK_RTCVideoFrame alloc];
    time = *a6;
    v15 = [(WK_RTCVideoFrame *)v14 initWithBuffer:v13 rotation:0 timeStampNs:(CMTimeGetSeconds(&time) * 1000000000.0)];
    [(WK_RTCVideoFrame *)v15 setTimeStamp:*a2];
    [v12 processFrame:v15 reorderSize:a2[1]];
  }

  return MEMORY[0x2743DA540](a2, 0x1000C40451B5BE8);
}

void sub_2733B8CA4(_Unwind_Exception *a1)
{
  if (v1)
  {
    MEMORY[0x2743DA540](v1, 0x1000C40451B5BE8);
  }

  _Unwind_Resume(a1);
}

void sub_2733B8D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WK_RTCVideoDecoderH265;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2733B9404(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2733B9FD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2733BA740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_2733BA90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void vp9DecompressionOutputCallback(void *a1, void *a2, unsigned int a3, unsigned int a4, __CVBuffer *a5, CMTime *a6, CMTime *a7)
{
  v11 = a1;
  v12 = v11;
  v26 = a2;
  if (a3 || !a5)
  {
    if (a3 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = a3;
    }

    [v11 setError:v17];
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoDecoderVTBVP9.mm");
    }

    (*(*a2 + 16))();
  }

  else
  {
    v13 = [v11 colorSpace];
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4B78], v13, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4C00], *MEMORY[0x277CC4C20], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4CC0], *MEMORY[0x277CC4CD8], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, *MEMORY[0x277CC4D10], *MEMORY[0x277CC4D28], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(a5, @"ColorInfoGuessedBy", @"RTCVideoDecoderVTBVP9", kCVAttachmentMode_ShouldPropagate);
    v14 = [[WK_RTCCVPixelBuffer alloc] initWithPixelBuffer:a5];
    v15 = [WK_RTCVideoFrame alloc];
    time = *a6;
    v16 = [(WK_RTCVideoFrame *)v15 initWithBuffer:v14 rotation:0 timeStampNs:(CMTimeGetSeconds(&time) * 1000000000.0)];
    [(WK_RTCVideoFrame *)v16 setTimeStamp:a2[1]];
    (*(*a2 + 16))();
  }

  MEMORY[0x2743DA540](a2, 0x1080C40FC6463CFLL);
}

void sub_2733BAB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::unique_ptr<RTCFrameDecodeParams>::~unique_ptr[abi:sn200100](va);

  _Unwind_Resume(a1);
}

void sub_2733BAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::unique_ptr<RTCFrameDecodeParams>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733BABB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::unique_ptr<RTCFrameDecodeParams>::~unique_ptr[abi:sn200100](va);

  _Unwind_Resume(a1);
}

id **std::unique_ptr<RTCFrameDecodeParams>::~unique_ptr[abi:sn200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x2743DA540](v1, 0x1080C40FC6463CFLL);
    return v2;
  }

  return result;
}

void sub_2733BAC98(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2733BAD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WK_RTCVideoDecoderVTBVP9;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2733BB480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<RTCFrameDecodeParams>::~unique_ptr[abi:sn200100](va);
  CFRelease(v9);
  _Unwind_Resume(a1);
}

void sub_2733BBA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (a18)
  {
    (*(*a18 + 8))(a18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2733BC1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::ExtractProfile(uint64_t this, const H264ProfileLevelId *a2)
{
  if (this <= 2)
  {
    if (this >= 2)
    {
      if (this != 2)
      {
        return this;
      }

      if (a2 > 30)
      {
        if (a2 > 41)
        {
          if (a2 > 50)
          {
            if (a2 == 51)
            {
              v2 = MEMORY[0x277CE2978];
              return *v2;
            }

            if (a2 == 52)
            {
              v2 = MEMORY[0x277CE2980];
              return *v2;
            }
          }

          else
          {
            if (a2 == 42)
            {
              v2 = MEMORY[0x277CE2968];
              return *v2;
            }

            if (a2 == 50)
            {
              v2 = MEMORY[0x277CE2970];
              return *v2;
            }
          }
        }

        else
        {
          if (a2 > 39)
          {
            if (a2 == 40)
            {
              v2 = MEMORY[0x277CE2958];
            }

            else
            {
              v2 = MEMORY[0x277CE2960];
            }

            return *v2;
          }

          if (a2 == 31)
          {
            v2 = MEMORY[0x277CE2948];
            return *v2;
          }

          if (a2 == 32)
          {
            v2 = MEMORY[0x277CE2950];
            return *v2;
          }
        }

        goto LABEL_10;
      }

      if (a2 > 19)
      {
        if ((a2 - 20) >= 3)
        {
          if (a2 == 30)
          {
            v2 = MEMORY[0x277CE2940];
            return *v2;
          }

          goto LABEL_10;
        }
      }

      else if ((a2 - 10) >= 4 && a2)
      {
        goto LABEL_10;
      }

      v2 = MEMORY[0x277CE2988];
      return *v2;
    }

    if (a2 <= 30)
    {
      if (a2 > 19)
      {
        if ((a2 - 20) >= 3)
        {
          if (a2 == 30)
          {
            v2 = MEMORY[0x277CE28D0];
            return *v2;
          }

          goto LABEL_10;
        }
      }

      else if ((a2 - 10) >= 4 && a2)
      {
        goto LABEL_10;
      }

      v2 = MEMORY[0x277CE2918];
      return *v2;
    }

    if (a2 > 41)
    {
      if (a2 > 50)
      {
        if (a2 == 51)
        {
          v2 = MEMORY[0x277CE2908];
          return *v2;
        }

        if (a2 == 52)
        {
          v2 = MEMORY[0x277CE2910];
          return *v2;
        }
      }

      else
      {
        if (a2 == 42)
        {
          v2 = MEMORY[0x277CE28F8];
          return *v2;
        }

        if (a2 == 50)
        {
          v2 = MEMORY[0x277CE2900];
          return *v2;
        }
      }
    }

    else
    {
      if (a2 > 39)
      {
        if (a2 == 40)
        {
          v2 = MEMORY[0x277CE28E8];
        }

        else
        {
          v2 = MEMORY[0x277CE28F0];
        }

        return *v2;
      }

      if (a2 == 31)
      {
        v2 = MEMORY[0x277CE28D8];
        return *v2;
      }

      if (a2 == 32)
      {
        v2 = MEMORY[0x277CE28E0];
        return *v2;
      }
    }

LABEL_10:
    v2 = MEMORY[0x277CE2938];
    return *v2;
  }

  if ((this - 3) < 2 || this == 5)
  {
    goto LABEL_10;
  }

  return this;
}

void sub_2733BC49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WK_RTCVideoEncoderH264;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::computeDefaultBitRateKbps(uint64_t this, int a2, const H264ProfileLevelId *a3)
{
  if (this)
  {
    return this;
  }

  v3 = 64;
  v4 = 135000;
  if (a2 != 50)
  {
    v4 = 64;
  }

  if ((a2 - 51) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 240000;
  }

  if ((a2 - 41) >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 50000;
  }

  v7 = 14000;
  v8 = 20000;
  v9 = 20000;
  if (a2 != 40)
  {
    v9 = 64;
  }

  if (a2 != 32)
  {
    v8 = v9;
  }

  if (a2 != 31)
  {
    v7 = v8;
  }

  if (a2 <= 40)
  {
    v6 = v7;
  }

  v10 = 768;
  v11 = 10000;
  if (a2 != 30)
  {
    v11 = 64;
  }

  if (a2 != 13)
  {
    v10 = v11;
  }

  if ((a2 - 20) >= 3)
  {
    v12 = v10;
  }

  else
  {
    v12 = 4000;
  }

  if (a2 == 12)
  {
    v3 = 384;
  }

  if (a2 == 11)
  {
    v3 = 192;
  }

  if (!a2)
  {
    v3 = 128;
  }

  if (a2 > 12)
  {
    v3 = v12;
  }

  if (a2 <= 30)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

CVPixelBufferRef anonymous namespace::CreatePixelBuffer(_anonymous_namespace_ *this, OpaqueVTCompressionSession *a2)
{
  if (!this)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_13:
    webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
    return 0;
  }

  PixelBufferPool = VTCompressionSessionGetPixelBufferPool(this);
  if (!PixelBufferPool)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_13;
  }

  pixelBufferOut = 0;
  if (!CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBufferOut))
  {
    return pixelBufferOut;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH264.mm");
  }

  return 0;
}

void std::vector<unsigned char>::resize(void *a1, unint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + a2;
  }
}

id **std::unique_ptr<anonymous namespace::RTCFrameEncodeParams>::~unique_ptr[abi:sn200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x2743DA540](v1, 0x1080C40613243D1);
    return v2;
  }

  return result;
}

{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x2743DA540](v1, 0x1080C40B94625D9);
    return v2;
  }

  return result;
}

uint64_t anonymous namespace::compressionOutputCallback(_anonymous_namespace_ *this, unsigned int *a2, void *a3, uint64_t a4, uint64_t a5, opaqueCMSampleBuffer *a6)
{
  if (a2)
  {
    LOBYTE(v8) = *(a2 + 56);
    [*a2 frameWasEncoded:a3 flags:a4 sampleBuffer:a5 codecSpecificInfo:*(a2 + 1) width:a2[4] height:a2[5] renderTimeMs:*(a2 + 3) timestamp:*(a2 + 4) duration:*(a2 + 5) rotation:*(a2 + 6) isKeyFrameRequired:{v8, a2}];

    return MEMORY[0x2743DA540](a2, 0x1080C40613243D1);
  }

  return result;
}

void sub_2733BE830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100]((v18 + 48));

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose_(uint64_t result)
{
  v1 = *(result + 48);
  *(result + 48) = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      MEMORY[0x2743DA520](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void *std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      MEMORY[0x2743DA520](v3, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v1, 0x1010C40A79CA2DELL);
    return v2;
  }

  return result;
}

void sub_2733BEEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WK_RTCVideoEncoderH265;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void anonymous namespace::compressionOutputCallback(_anonymous_namespace_ *this, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, opaqueCMSampleBuffer *a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (*a2)
    {
      LODWORD(v9) = a2[6];
      [*a2 frameWasEncoded:a3 flags:a4 sampleBuffer:a5 width:a2[2] height:a2[3] renderTimeMs:*(a2 + 2) timestamp:v9 rotation:*(a2 + 4)];

LABEL_8:
      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm", 150, "params", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v9);
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/webkit_sdk/objc/components/video_codec/RTCVideoEncoderH265.mm", 153, "encodeParams->encoder", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v9);
  __break(1u);
  goto LABEL_8;
}

void sub_2733BFEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Unwind_Resume(a1);
}

void sub_2733BFEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Unwind_Resume(a1);
}

void sub_2733C0678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C06A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C06B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C06C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C06DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C06F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C0708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C07B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C07C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C07D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C07F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  std::unique_ptr<webrtc::BufferT<unsigned char,false>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void sub_2733C0EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a9 + 8))(a9);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_2733C112C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*a9 + 8))(a9);

      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void webrtc::RTCVideoFrameReorderQueue::append(uint64_t a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock((a1 + 56));
  operator new();
}

void sub_2733C1A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void **a11)
{
  operator delete(v13);
  operator delete(v12);
  std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>::~unique_ptr[abi:sn200100](&a11);
  pthread_mutex_unlock((v11 + 56));

  _Unwind_Resume(a1);
}

void ***std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>::~unique_ptr[abi:sn200100](void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *v1 = 0;
    }

    MEMORY[0x2743DA540](v1, 0x1080C40468F112ELL);
    return v2;
  }

  return result;
}

id webrtc::RTCVideoFrameReorderQueue::takeIfAvailable(webrtc::RTCVideoFrameReorderQueue *this, BOOL *a2)
{
  *a2 = 0;
  pthread_mutex_lock((this + 56));
  v4 = *(this + 5);
  if (v4 && (v5 = *(*(*(this + 1) + ((*(this + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 4) & 0x1FFLL)), v4 > *(v5 + 16)))
  {
    v6 = *v5;
    *v5 = 0;
    std::deque<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>>::pop_front(this);
    v7 = *(this + 5);
    if (v7)
    {
      LOBYTE(v7) = v7 > *(*(*(*(this + 1) + ((*(this + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 4) & 0x1FFLL)) + 16);
    }

    *a2 = v7;
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((this + 56));

  return v6;
}

void std::deque<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && (v3 = *(a1 + 32), (v4 = *(*(a1 + 8) + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8))) != 0))
  {
    v5 = *(v4 + 8 * (*(a1 + 32) & 0x1FFLL));
    *(v4 + 8 * (*(a1 + 32) & 0x1FFLL)) = 0;
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        *v5 = 0;
      }

      MEMORY[0x2743DA540](v5, 0x1080C40468F112ELL);
      v3 = *(a1 + 32);
      v1 = *(a1 + 40);
    }

    v7 = v3 + 1;
    *(a1 + 32) = v7;
    *(a1 + 40) = v1 - 1;
    if (v7 >= 0x400)
    {
      operator delete(**(a1 + 8));
      *(a1 + 8) += 8;
      *(a1 + 32) -= 512;
    }
  }

  else
  {
    __break(1u);
  }
}

id webrtc::RTCVideoFrameReorderQueue::takeIfAny(webrtc::RTCVideoFrameReorderQueue *this)
{
  pthread_mutex_lock((this + 56));
  if (*(this + 5))
  {
    v2 = *(*(*(this + 1) + ((*(this + 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 4) & 0x1FFLL));
    v3 = *v2;
    *v2 = 0;
    std::deque<std::unique_ptr<webrtc::RTCVideoFrameReorderQueue::RTCVideoFrameWithOrder>>::pop_front(this);
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 56));

  return v3;
}