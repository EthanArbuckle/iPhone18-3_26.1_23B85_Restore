__int128 *webrtc::RtpTransportControllerSend::UpdateNetworkAvailability(__int128 *this)
{
  if (*(this + 210))
  {
    v1 = this;
    (*(**(this + 5) + 16))(*(this + 5));
    *(*(v1 + 1672) + 160) = *(v1 + 2072);
    (*(**(v1 + 1680) + 16))(v10);
    webrtc::RtpTransportControllerSend::PostUpdates(v1, v10, v2, v3, v4, v5, v6, v7);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    this = webrtc::CongestionControlHandler::GetUpdate(*(v1 + 1672), v15);
    if (v18 == 1)
    {
      v8 = v16;
      pthread_mutex_lock((v1 + 2128));
      *(v1 + 2296) = v8;
      this = pthread_mutex_unlock((v1 + 2128));
      if (v18)
      {
        v9 = *(v1 + 1432);
        v14 = v17;
        v13[2] = v15[2];
        v13[3] = v16;
        v13[0] = v15[0];
        v13[1] = v15[1];
        return (*(*v9 + 16))(v9, v13);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return this;
}

uint64_t webrtc::RtpTransportControllerSend::RegisterTargetTransferRateObserver(uint64_t result, uint64_t a2)
{
  *(result + 1432) = a2;
  if (*(result + 1816))
  {
    v2 = result;
    (*(*a2 + 24))(a2, *(result + 1808));

    return webrtc::RtpTransportControllerSend::MaybeCreateControllers(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void webrtc::RtpTransportControllerSend::OnNetworkRouteChanged(uint64_t a1, std::string *a2, size_t a3, unsigned __int8 *a4)
{
  v76 = a2;
  v77 = a3;
  if (*a4 != 1)
  {
    return;
  }

  if ((a4[12] & 1) == 0 && (a4[24] & 1) == 0)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    *(a1 + 416) = 0x7FFFFFFFFFFFFFFFLL;
    if (*(a1 + 384) != 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
    v8 = *(a1 + 404);
    if (*(a1 + 380) > v8)
    {
      v8 = *(a1 + 380);
    }

    if ((*(a1 + 400) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v6 = *(a1 + 2056);
  *(a1 + 416) = v6;
  if (*(a1 + 384) == 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 404);
  if (v8 < 0)
  {
    v8 = 0;
  }

  if ((*(a1 + 400) & 1) == 0)
  {
LABEL_8:
    v9 = *(a1 + 412);
    goto LABEL_20;
  }

LABEL_13:
  v10 = *(a1 + 396);
  v9 = *(a1 + 412);
  if (v9 >= v10)
  {
    v11 = *(a1 + 396);
  }

  else
  {
    v11 = *(a1 + 412);
  }

  if (v9 < 1)
  {
    v11 = *(a1 + 396);
  }

  if (v10 > 0)
  {
    v9 = v11;
  }

LABEL_20:
  if (v7 >= 0xFFFFFFFFFFFFFFFELL)
  {
    LODWORD(v6) = -1;
  }

  if (v6 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v6 < 1)
  {
    v12 = v9;
  }

  if (v9 >= 1)
  {
    LODWORD(v6) = v12;
  }

  if (v8 >= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (v6 != -1)
  {
    v8 = v13;
  }

  if (v8 == *(a1 + 368) && v6 == *(a1 + 376))
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    *(a1 + 368) = v8;
    *(a1 + 376) = v6;
    v15 = *&v8 | 0xFFFFFFFF00000000;
    v14 = 0x100000000;
  }

  v73 = v15;
  v75 = BYTE4(v14);
  v74 = v14 | v6;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_115:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  *(&v68.__r_.__value_.__s + 23) = a3;
  v16 = (&v68 + a3);
  if (&v68 <= a2 && v16 > a2)
  {
    __break(1u);
    goto LABEL_115;
  }

  if (a3)
  {
    memmove(&v68, a2, a3);
  }

  v16->__r_.__value_.__s.__data_[0] = 0;
  v69 = v68;
  memset(&v68, 0, sizeof(v68));
  v17 = *(a4 + 1);
  v70 = *a4;
  v71 = v17;
  v72 = *(a4 + 8);
  v18 = *(a1 + 432);
  if (!v18)
  {
LABEL_72:
    operator new();
  }

  v19 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v69;
  }

  else
  {
    v20 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v69.__r_.__value_.__l.__size_;
  }

  while (1)
  {
    while (1)
    {
      v22 = v18;
      v25 = v18[4];
      v23 = v18 + 4;
      v24 = v25;
      v26 = *(v23 + 23);
      v27 = v26 >= 0 ? v23 : v24;
      v28 = v26 >= 0 ? *(v23 + 23) : v23[1];
      v29 = v28 >= size ? size : v28;
      v30 = memcmp(v20, v27, v29);
      if (v30)
      {
        break;
      }

      if (size >= v28)
      {
        goto LABEL_67;
      }

LABEL_53:
      v18 = *v22;
      if (!*v22)
      {
        goto LABEL_72;
      }
    }

    if (v30 < 0)
    {
      goto LABEL_53;
    }

LABEL_67:
    v31 = memcmp(v27, v20, v29);
    if (v31)
    {
      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_71;
    }

    if (v28 >= size)
    {
      break;
    }

LABEL_71:
    v18 = v22[1];
    if (!v18)
    {
      goto LABEL_72;
    }
  }

  if (v19 < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_77:
      operator delete(v68.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_77;
  }

  if (*(v22 + 56) != *a4 || *(v22 + 15) != *(a4 + 1) || *(v22 + 32) != *(a4 + 4) || *(v22 + 33) != *(a4 + 5) || *(v22 + 68) != a4[12] || *(v22 + 18) != *(a4 + 4) || *(v22 + 38) != *(a4 + 10) || *(v22 + 39) != *(a4 + 11) || *(v22 + 80) != a4[24] || *(v22 + 22) != *(a4 + 8) || *(v22 + 21) != *(a4 + 7))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::NetworkRoute::DebugString(&v69, a4, v32);
      webrtc::webrtc_logging_impl::Log("\r\t\v\t\n", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::NetworkRoute::DebugString(&v69, v22 + 56, v40);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }
    }
  }

  v48 = *(v22 + 56);
  v49 = *(v22 + 32);
  v50 = *(v22 + 33);
  v51 = *(v22 + 68);
  v52 = *(v22 + 38);
  v53 = *(v22 + 39);
  v54 = *(v22 + 80);
  v55 = *(a4 + 8);
  v56 = *(a4 + 1);
  *(v22 + 7) = *a4;
  *(v22 + 9) = v56;
  *(v22 + 22) = v55;
  if (*(a1 + 1986) == 1)
  {
    if (v49 == *(a4 + 4))
    {
      v57 = v52 == *(a4 + 10);
      goto LABEL_101;
    }

LABEL_107:
    v58 = 1;
    v59 = *a4;
    if ((*(a1 + 2056) + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_108;
    }

LABEL_105:
    v60 = (v51 | v54) ^ (a4[12] | a4[24]);
    if ((v48 != v59) | v58 & 1)
    {
      goto LABEL_110;
    }
  }

  else
  {
    if (v50 != *(a4 + 5))
    {
      goto LABEL_107;
    }

    v57 = v53 == *(a4 + 11);
LABEL_101:
    v58 = !v57;
    v59 = *a4;
    if ((*(a1 + 2056) + 0x7FFFFFFFFFFFFFFFLL) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_105;
    }

LABEL_108:
    v60 = 0;
    if ((v48 != v59) | v58 & 1)
    {
LABEL_110:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v61, v62, v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
      }

      operator new();
    }
  }

  if (v60)
  {
    goto LABEL_110;
  }
}

void webrtc::NetworkRoute::DebugString(std::string *this, unsigned __int8 *a2, char *a3)
{
  *&v111.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v111 <= "[ connected: " && &v111.__r_.__value_.__r.__words[1] + 5 > "[ connected: ")
  {
    goto LABEL_234;
  }

  qmemcpy(&v111, "[ connected: ", 13);
  *(&v111.__r_.__value_.__s + 23) = 13;
  v6 = webrtc::StringBuilder::operator<<(&v111, *a2, a3);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v9 = v8 >= 0 ? 22 : (v6->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v10 = v8 >= 0 ? HIBYTE(v6->__r_.__value_.__r.__words[2]) : v6->__r_.__value_.__l.__size_;
  if (v9 - v10 >= 0xA)
  {
    if (v8 >= 0)
    {
      v12 = v6;
    }

    else
    {
      v12 = v6->__r_.__value_.__r.__words[0];
    }

    v13 = v12 + v10;
    if (v12 + v10 <= " local: [ " && &v12->__r_.__value_.__r.__words[1] + v10 + 2 > " local: [ ")
    {
      goto LABEL_234;
    }

    *(v13 + 8) = 8283;
    *v13 = *" local: [ ";
    v15 = v10 + 10;
    if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
    {
      v6->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&v6->__r_.__value_.__s + 23) = v15 & 0x7F;
    }

    v12->__r_.__value_.__s.__data_[v15] = 0;
  }

  else
  {
    v11 = v6;
    std::string::__grow_by_and_replace(v6, v9, v10 - v9 + 10, v10, v10, 0, 0xAuLL, " local: [ ");
    v6 = v11;
  }

  v16 = webrtc::StringBuilder::operator<<(v6, *(a2 + 4), v7);
  size = HIBYTE(v16->__r_.__value_.__r.__words[2]);
  v19 = size;
  if ((size & 0x80u) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v16->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((size & 0x80u) != 0)
  {
    size = v16->__r_.__value_.__l.__size_;
  }

  if (v20 == size)
  {
    v21 = v16;
    std::string::__grow_by_and_replace(v16, v20, 1uLL, v20, v20, 0, 1uLL, "/");
    v16 = v21;
  }

  else
  {
    if (v19 >= 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = v16->__r_.__value_.__r.__words[0];
    }

    if (v22 + size <= "/" && &v22->__r_.__value_.__l.__data_ + size + 1 > "/")
    {
      goto LABEL_234;
    }

    v22->__r_.__value_.__s.__data_[size] = 47;
    v24 = size + 1;
    if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
    {
      v16->__r_.__value_.__l.__size_ = v24;
    }

    else
    {
      *(&v16->__r_.__value_.__s + 23) = v24 & 0x7F;
    }

    v22->__r_.__value_.__s.__data_[v24] = 0;
  }

  v25 = webrtc::StringBuilder::operator<<(v16, *(a2 + 5), v17);
  v26 = v25;
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v28 = v27;
  if ((v27 & 0x80u) == 0)
  {
    v29 = 22;
  }

  else
  {
    v29 = (v25->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v27 & 0x80u) != 0)
  {
    v27 = v25->__r_.__value_.__l.__size_;
  }

  if (v29 == v27)
  {
    std::string::__grow_by_and_replace(v25, v29, 1uLL, v29, v29, 0, 1uLL, " ");
  }

  else
  {
    if (v28 >= 0)
    {
      v30 = v25;
    }

    else
    {
      v30 = v25->__r_.__value_.__r.__words[0];
    }

    v31 = v30 + v27;
    if (v30 + v27 <= " " && v31 + 1 > " ")
    {
      goto LABEL_234;
    }

    *v31 = 32;
    v32 = v27 + 1;
    if (SHIBYTE(v25->__r_.__value_.__r.__words[2]) < 0)
    {
      v25->__r_.__value_.__l.__size_ = v32;
    }

    else
    {
      *(&v25->__r_.__value_.__s + 23) = v32 & 0x7F;
    }

    v30->__r_.__value_.__s.__data_[v32] = 0;
  }

  webrtc::AdapterTypeToString(*(a2 + 1), v109);
  v34 = (v110 & 0x80u) == 0 ? v109 : v109[0];
  v35 = (v110 & 0x80u) == 0 ? v110 : v109[1];
  if (!v34 && v35)
  {
    goto LABEL_234;
  }

  v36 = SHIBYTE(v26->__r_.__value_.__r.__words[2]);
  v37 = v36 >= 0 ? 22 : (v26->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v38 = v36 >= 0 ? HIBYTE(v26->__r_.__value_.__r.__words[2]) : v26->__r_.__value_.__l.__size_;
  if (v37 - v38 >= v35)
  {
    if (v35)
    {
      if (v36 >= 0)
      {
        v39 = v26;
      }

      else
      {
        v39 = v26->__r_.__value_.__r.__words[0];
      }

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_234;
      }

      v40 = v39 + v38;
      if (v39 + v38 <= v34 && &v40[v35] > v34)
      {
        goto LABEL_234;
      }

      v41 = v35;
      memmove(v40, v34, v35);
      v42 = v38 + v41;
      if (SHIBYTE(v26->__r_.__value_.__r.__words[2]) < 0)
      {
        v26->__r_.__value_.__l.__size_ = v42;
      }

      else
      {
        *(&v26->__r_.__value_.__s + 23) = v42 & 0x7F;
      }

      v39->__r_.__value_.__s.__data_[v42] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v26, v37, v38 + v35 - v37, v38, v38, 0, v35, v34);
  }

  v43 = SHIBYTE(v26->__r_.__value_.__r.__words[2]);
  v44 = v43 >= 0 ? 22 : (v26->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v45 = v43 >= 0 ? HIBYTE(v26->__r_.__value_.__r.__words[2]) : v26->__r_.__value_.__l.__size_;
  if (v44 - v45 >= 7)
  {
    if (v43 >= 0)
    {
      v46 = v26;
    }

    else
    {
      v46 = v26->__r_.__value_.__r.__words[0];
    }

    v47 = (v46 + v45);
    if (v46 + v45 <= " turn: " && v47 + 7 > " turn: ")
    {
      goto LABEL_234;
    }

    *(v47 + 3) = 540700274;
    *v47 = 1920300064;
    v48 = v45 + 7;
    if (SHIBYTE(v26->__r_.__value_.__r.__words[2]) < 0)
    {
      v26->__r_.__value_.__l.__size_ = v48;
    }

    else
    {
      *(&v26->__r_.__value_.__s + 23) = v48 & 0x7F;
    }

    v46->__r_.__value_.__s.__data_[v48] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v26, v44, v45 - v44 + 7, v45, v45, 0, 7uLL, " turn: ");
  }

  v49 = webrtc::StringBuilder::operator<<(v26, a2[12], v33);
  v51 = SHIBYTE(v49->__r_.__value_.__r.__words[2]);
  v52 = v51 >= 0 ? 22 : (v49->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v53 = v51 >= 0 ? HIBYTE(v49->__r_.__value_.__r.__words[2]) : v49->__r_.__value_.__l.__size_;
  if (v52 - v53 >= 0xD)
  {
    if (v51 >= 0)
    {
      v55 = v49;
    }

    else
    {
      v55 = v49->__r_.__value_.__r.__words[0];
    }

    v56 = v55 + v53;
    if (v55 + v53 <= " ] remote: [ " && v56 + 13 > " ] remote: [ ")
    {
      goto LABEL_234;
    }

    qmemcpy(v56, " ] remote: [ ", 13);
    v57 = v53 + 13;
    if (SHIBYTE(v49->__r_.__value_.__r.__words[2]) < 0)
    {
      v49->__r_.__value_.__l.__size_ = v57;
    }

    else
    {
      *(&v49->__r_.__value_.__s + 23) = v57 & 0x7F;
    }

    v55->__r_.__value_.__s.__data_[v57] = 0;
  }

  else
  {
    v54 = v49;
    std::string::__grow_by_and_replace(v49, v52, v53 - v52 + 13, v53, v53, 0, 0xDuLL, " ] remote: [ ");
    v49 = v54;
  }

  v58 = webrtc::StringBuilder::operator<<(v49, *(a2 + 10), v50);
  v60 = HIBYTE(v58->__r_.__value_.__r.__words[2]);
  v61 = v60;
  if ((v60 & 0x80u) == 0)
  {
    v62 = 22;
  }

  else
  {
    v62 = (v58->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v60 & 0x80u) != 0)
  {
    v60 = v58->__r_.__value_.__l.__size_;
  }

  if (v62 == v60)
  {
    v63 = v58;
    std::string::__grow_by_and_replace(v58, v62, 1uLL, v62, v62, 0, 1uLL, "/");
    v58 = v63;
  }

  else
  {
    if (v61 >= 0)
    {
      v64 = v58;
    }

    else
    {
      v64 = v58->__r_.__value_.__r.__words[0];
    }

    v65 = v64 + v60;
    if (v64 + v60 <= "/" && v65 + 1 > "/")
    {
      goto LABEL_234;
    }

    *v65 = 47;
    v66 = v60 + 1;
    if (SHIBYTE(v58->__r_.__value_.__r.__words[2]) < 0)
    {
      v58->__r_.__value_.__l.__size_ = v66;
    }

    else
    {
      *(&v58->__r_.__value_.__s + 23) = v66 & 0x7F;
    }

    v64->__r_.__value_.__s.__data_[v66] = 0;
  }

  v67 = webrtc::StringBuilder::operator<<(v58, *(a2 + 11), v59);
  v68 = v67;
  v69 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v70 = v69;
  if ((v69 & 0x80u) == 0)
  {
    v71 = 22;
  }

  else
  {
    v71 = (v67->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v69 & 0x80u) != 0)
  {
    v69 = v67->__r_.__value_.__l.__size_;
  }

  if (v71 == v69)
  {
    std::string::__grow_by_and_replace(v67, v71, 1uLL, v71, v71, 0, 1uLL, " ");
  }

  else
  {
    if (v70 >= 0)
    {
      v72 = v67;
    }

    else
    {
      v72 = v67->__r_.__value_.__r.__words[0];
    }

    v73 = v72 + v69;
    if (v72 + v69 <= " " && v73 + 1 > " ")
    {
      goto LABEL_234;
    }

    *v73 = 32;
    v74 = v69 + 1;
    if (SHIBYTE(v67->__r_.__value_.__r.__words[2]) < 0)
    {
      v67->__r_.__value_.__l.__size_ = v74;
    }

    else
    {
      *(&v67->__r_.__value_.__s + 23) = v74 & 0x7F;
    }

    v72->__r_.__value_.__s.__data_[v74] = 0;
  }

  webrtc::AdapterTypeToString(*(a2 + 4), __p);
  v76 = (v108 & 0x80u) == 0 ? __p : __p[0];
  v77 = (v108 & 0x80u) == 0 ? v108 : __p[1];
  if (!v76 && v77)
  {
LABEL_234:
    __break(1u);
    return;
  }

  v78 = SHIBYTE(v68->__r_.__value_.__r.__words[2]);
  if (v78 >= 0)
  {
    v79 = 22;
  }

  else
  {
    v79 = (v68->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v78 >= 0)
  {
    v80 = HIBYTE(v68->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = v68->__r_.__value_.__l.__size_;
  }

  if (v79 - v80 >= v77)
  {
    if (v77)
    {
      if (v78 >= 0)
      {
        v81 = v68;
      }

      else
      {
        v81 = v68->__r_.__value_.__r.__words[0];
      }

      if ((v77 & 0x8000000000000000) != 0)
      {
        goto LABEL_234;
      }

      v82 = v81 + v80;
      if (v81 + v80 <= v76 && &v82[v77] > v76)
      {
        goto LABEL_234;
      }

      v83 = v77;
      memmove(v82, v76, v77);
      v84 = v80 + v83;
      if (SHIBYTE(v68->__r_.__value_.__r.__words[2]) < 0)
      {
        v68->__r_.__value_.__l.__size_ = v84;
      }

      else
      {
        *(&v68->__r_.__value_.__s + 23) = v84 & 0x7F;
      }

      v81->__r_.__value_.__s.__data_[v84] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(v68, v79, v80 + v77 - v79, v80, v80, 0, v77, v76);
  }

  v85 = SHIBYTE(v68->__r_.__value_.__r.__words[2]);
  if (v85 >= 0)
  {
    v86 = 22;
  }

  else
  {
    v86 = (v68->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v85 >= 0)
  {
    v87 = HIBYTE(v68->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v87 = v68->__r_.__value_.__l.__size_;
  }

  if (v86 - v87 >= 7)
  {
    if (v85 >= 0)
    {
      v88 = v68;
    }

    else
    {
      v88 = v68->__r_.__value_.__r.__words[0];
    }

    v89 = (v88 + v87);
    if (v88 + v87 <= " turn: " && v89 + 7 > " turn: ")
    {
      goto LABEL_234;
    }

    *(v89 + 3) = 540700274;
    *v89 = 1920300064;
    v90 = v87 + 7;
    if (SHIBYTE(v68->__r_.__value_.__r.__words[2]) < 0)
    {
      v68->__r_.__value_.__l.__size_ = v90;
    }

    else
    {
      *(&v68->__r_.__value_.__s + 23) = v90 & 0x7F;
    }

    v88->__r_.__value_.__s.__data_[v90] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(v68, v86, v87 - v86 + 7, v87, v87, 0, 7uLL, " turn: ");
  }

  v91 = webrtc::StringBuilder::operator<<(v68, a2[24], v75);
  v93 = SHIBYTE(v91->__r_.__value_.__r.__words[2]);
  if (v93 >= 0)
  {
    v94 = 22;
  }

  else
  {
    v94 = (v91->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v93 >= 0)
  {
    v95 = HIBYTE(v91->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v95 = v91->__r_.__value_.__l.__size_;
  }

  if (v94 - v95 >= 0x1A)
  {
    if (v93 >= 0)
    {
      v97 = v91;
    }

    else
    {
      v97 = v91->__r_.__value_.__r.__words[0];
    }

    v98 = v97 + v95;
    if (v97 + v95 <= " ] packet_overhead_bytes: " && v98 + 26 > " ] packet_overhead_bytes: ")
    {
      goto LABEL_234;
    }

    qmemcpy(v98, " ] packet_overhead_bytes: ", 26);
    v99 = v95 + 26;
    if (SHIBYTE(v91->__r_.__value_.__r.__words[2]) < 0)
    {
      v91->__r_.__value_.__l.__size_ = v99;
    }

    else
    {
      *(&v91->__r_.__value_.__s + 23) = v99 & 0x7F;
    }

    v97->__r_.__value_.__s.__data_[v99] = 0;
  }

  else
  {
    v96 = v91;
    std::string::__grow_by_and_replace(v91, v94, v95 - v94 + 26, v95, v95, 0, 0x1AuLL, " ] packet_overhead_bytes: ");
    v91 = v96;
  }

  v100 = webrtc::StringBuilder::operator<<(v91, *(a2 + 8), v92);
  v101 = SHIBYTE(v100->__r_.__value_.__r.__words[2]);
  if (v101 >= 0)
  {
    v102 = 22;
  }

  else
  {
    v102 = (v100->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v101 >= 0)
  {
    v103 = HIBYTE(v100->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v103 = v100->__r_.__value_.__l.__size_;
  }

  if (v102 - v103 >= 2)
  {
    if (v101 >= 0)
    {
      v104 = v100;
    }

    else
    {
      v104 = v100->__r_.__value_.__r.__words[0];
    }

    v105 = (v104 + v103);
    if (v104 + v103 > " ]" || v105 + 1 <= " ]")
    {
      *v105 = 23840;
      v106 = v103 + 2;
      if (SHIBYTE(v100->__r_.__value_.__r.__words[2]) < 0)
      {
        v100->__r_.__value_.__l.__size_ = v106;
        v104->__r_.__value_.__s.__data_[v106] = 0;
        if ((v108 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }
      }

      else
      {
        *(&v100->__r_.__value_.__s + 23) = v106 & 0x7F;
        v104->__r_.__value_.__s.__data_[v106] = 0;
        if ((v108 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }
      }

      goto LABEL_220;
    }

    goto LABEL_234;
  }

  std::string::__grow_by_and_replace(v100, v102, v103 - v102 + 2, v103, v103, 0, 2uLL, " ]");
  if (v108 < 0)
  {
LABEL_220:
    operator delete(__p[0]);
  }

LABEL_221:
  if (v110 < 0)
  {
    operator delete(v109[0]);
  }

  *this = v111;
}

void webrtc::RtpTransportControllerSend::PostUpdates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    *(a1 + 2096) = *a2;
    v10 = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(a1 + 1520, (a1 + 1544));
    if (a1 + 1528 == v10)
    {
      v11 = 0;
      v12 = *(a1 + 2096);
      v13 = v12 <= 0;
      if (*(a1 + 2104) == v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = *(v10 + 72);
      v12 = *(a1 + 2096);
      v13 = v11 >= v12;
      if (*(a1 + 2104) == v13)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 2104) = v13;
    if (v11 < v12 && (*(a1 + 1312) & 1) != 0)
    {
      v14.var0 = webrtc::PacingController::CurrentTime((a1 + 496));
      Elapsed = webrtc::PacingController::UpdateTimeAndGetElapsed((a1 + 496), v14);
      v16.i64[0] = *(a1 + 592) * Elapsed;
      v16.i64[1] = *(a1 + 600) * Elapsed;
      v17 = vaddq_s64(v16, vdupq_n_s64(0x3D0900uLL));
      v17.i64[0] /= 8000000;
      v17.i64[1] /= 8000000;
      v18 = *(a1 + 568);
      v19 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v18, vdupq_n_s64(0x8000000000000001)));
      v20 = vnegq_f64(0);
      v21 = vbslq_s8(vceqq_s64(v18, v20), v20, vsubq_s64(v18, vbslq_s8(vcgtq_s64(v18, v17), v17, v18)));
      v18.f64[0] = NAN;
      v18.f64[1] = NAN;
      *(a1 + 568) = vbslq_s8(v19, vnegq_f64(v18), v21);
    }

    *(a1 + 1312) = v13;
    if ((*(a1 + 1408) & 1) == 0)
    {
      v22.var0 = 0x8000000000000000;
      webrtc::TaskQueuePacedSender::MaybeProcessPackets((a1 + 456), v22);
    }
  }

LABEL_11:
  if (*(a2 + 48) == 1)
  {
    webrtc::PacingController::SetPacingRates((a1 + 496), 8000000 * *(a2 + 24) / *(a2 + 32), 8000000 * *(a2 + 40) / *(a2 + 32));
    if ((*(a1 + 1408) & 1) == 0)
    {
      v23.var0 = 0x8000000000000000;
      webrtc::TaskQueuePacedSender::MaybeProcessPackets((a1 + 456), v23);
    }
  }

  v24 = *(a2 + 56);
  v25 = *(a2 + 64);
  if (v24 != v25)
  {
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    v26 = v24;
    *(a2 + 72) = 0;
    do
    {
      v27 = *v26;
      v28 = v26[1];
      *&v43 = *(v26 + 4);
      v41 = v27;
      v42 = v28;
      webrtc::BitrateProber::CreateProbeCluster(a1 + 608, &v41);
      v26 = (v26 + 40);
    }

    while (v26 != v25);
    if ((*(a1 + 1408) & 1) == 0)
    {
      v29.var0 = 0x8000000000000000;
      webrtc::TaskQueuePacedSender::MaybeProcessPackets((a1 + 456), v29);
    }

    if (v24)
    {
      operator delete(v24);
    }
  }

  if (*(a2 + 152) == 1)
  {
    v30 = *(a1 + 1672);
    v31 = *(a2 + 80);
    v32 = *(a2 + 104);
    v41 = *(a2 + 88);
    v42 = v32;
    v33 = *(a2 + 136);
    v43 = *(a2 + 120);
    v44 = v33;
    if ((v31 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_30;
    }

    v34 = *(v30 + 72);
    *v30 = v31;
    *(v30 + 8) = v41;
    *(v30 + 24) = v42;
    *(v30 + 40) = v43;
    *(v30 + 56) = v44;
    if ((v34 & 1) == 0)
    {
      *(v30 + 72) = 1;
    }

    webrtc::CongestionControlHandler::GetUpdate(*(a1 + 1672), &v41);
    if (v46 == 1)
    {
      v35 = v44;
      pthread_mutex_lock((a1 + 2128));
      *(a1 + 2296) = v35;
      pthread_mutex_unlock((a1 + 2128));
      if (v46)
      {
        v36 = *(a1 + 1432);
        v40 = v45;
        v39[2] = v43;
        v39[3] = v44;
        v39[0] = v41;
        v39[1] = v42;
        (*(*v36 + 16))(v36, v39);
        return;
      }

      __break(1u);
LABEL_30:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/control_handler.cc", 28, "new_target_rate.at_time.IsFinite()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, *&v39[0]);
      webrtc::RtpTransportControllerSend::OnNetworkAvailability(v37, v38);
    }
  }
}

__int128 *webrtc::RtpTransportControllerSend::OnNetworkAvailability(webrtc::RtpTransportControllerSend *this, uint64_t a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
  }

  *(this + 2072) = a2;
  if (a2)
  {
    if (*(this + 560) && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
    }

    *(this + 560) = 0;
    v18.var0 = webrtc::PacingController::CurrentTime((this + 496));
    webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(this + 872, v18);
    *(this + 984) = 0;
    v19.var0 = 0x8000000000000000;
    webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v19);
    *(this + 2104) = 0;
    if (*(this + 1312) != 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    v28.var0 = webrtc::PacingController::CurrentTime((this + 496));
    Elapsed = webrtc::PacingController::UpdateTimeAndGetElapsed(this + 62, v28);
    v30.i64[0] = *(this + 74) * Elapsed;
    v30.i64[1] = *(this + 75) * Elapsed;
    v31 = vaddq_s64(v30, vdupq_n_s64(0x3D0900uLL));
    v31.i64[0] /= 8000000;
    v31.i64[1] /= 8000000;
    v32 = *(this + 568);
    v33 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v32, vdupq_n_s64(0x8000000000000001)));
    v34 = vnegq_f64(0);
    v35 = vbslq_s8(vceqq_s64(v32, v34), v34, vsubq_s64(v32, vbslq_s8(vcgtq_s64(v32, v31), v31, v32)));
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    *(this + 568) = vbslq_s8(v33, vnegq_f64(v32), v35);
    goto LABEL_14;
  }

  if ((*(this + 560) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/pacing_controller.cc");
  }

  *(this + 560) = 1;
  v27.var0 = webrtc::PacingController::CurrentTime((this + 496));
  webrtc::PrioritizedPacketQueue::UpdateAverageQueueTime(this + 872, v27);
  *(this + 984) = 1;
  *(this + 2104) = 0;
  if (*(this + 1312) == 1)
  {
    goto LABEL_13;
  }

LABEL_14:
  *(this + 1312) = 0;
  if (*(this + 1408))
  {
    if (*(this + 210))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v40.var0 = 0x8000000000000000;
    webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v40);
    if (*(this + 210))
    {
LABEL_16:
      result = webrtc::RtpTransportControllerSend::UpdateNetworkAvailability(this);
      v38 = *(this + 43);
      v37 = *(this + 44);
      if (v38 == v37)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  webrtc::RtpTransportControllerSend::MaybeCreateControllers(this);
  result = webrtc::RtpTransportControllerSend::UpdateNetworkAvailability(this);
  v38 = *(this + 43);
  v37 = *(this + 44);
  if (v38 == v37)
  {
    return result;
  }

  do
  {
LABEL_17:
    v39 = *v38++;
    result = (*(*v39 + 48))(v39, a2);
  }

  while (v38 != v37);
  return result;
}

unint64_t webrtc::RtpTransportControllerSend::GetPacerQueuingDelayMs(webrtc::RtpTransportControllerSend *this)
{
  v1 = *(this + 171);
  if ((v1 - 0x7FFFFFFFFFFFFFFFLL) < 2 || (v2 = (*(**(this + 59) + 16))(*(this + 59)), v2 < v1))
  {
    v3 = 0;
LABEL_4:
    if (v3 % 0x3E8 <= 0x1F3)
    {
      return v3 / 0x3E8;
    }

    else
    {
      return v3 / 0x3E8 + 1;
    }
  }

  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_4;
  }

  v3 = v2 - v1;
  if (((v2 - v1) & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v1 - v2) % 0x3E8uLL <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return v5 - (v1 - v2) / 0x3E8uLL;
}

void webrtc::RtpTransportControllerSend::EnablePeriodicAlrProbing(webrtc::RtpTransportControllerSend *this, __int16 a2)
{
  *(this + 956) = a2 | 0x100;
  v3 = (*(**(this + 5) + 16))(*(this + 5));
  v4 = v3 / 0x3E8uLL;
  if (v3 % 0x3E8uLL > 0x1F3)
  {
    ++v4;
  }

  if (-v3 % 0x3E8uLL <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < 0)
  {
    v4 = v5 - -v3 / 0x3E8uLL;
  }

  *(this + 238) = 1000 * v4;
  v6 = *(this + 210);
  if (v6)
  {
    (*(*v6 + 72))(v13);
    webrtc::RtpTransportControllerSend::PostUpdates(this, v13, v7, v8, v9, v10, v11, v12);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }
}

void webrtc::RtpTransportControllerSend::OnSentPacket(webrtc::RtpTransportControllerSend *this, const webrtc::SentPacketInfo *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  {
    v10 = *(this + 288);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
    }

    operator new();
  }

  webrtc::RtpTransportControllerSend::ProcessSentPacket(this, v9);
}

void webrtc::RtpTransportControllerSend::ProcessSentPacket(webrtc::RtpTransportControllerSend *this, const webrtc::SentPacketInfo *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  webrtc::TransportFeedbackAdapter::ProcessSentPacket(this + 184, a2, &v35);
  if (v36 == 1)
  {
    v3 = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(this + 1520, this + 1544);
    v4 = (this + 1528) == v3 ? 0 : v3[9];
    v5 = v4 >= *(this + 262);
    v6 = *(this + 2104);
    v7 = *(this + 210);
    if (v7)
    {
      if ((v36 & 1) == 0)
      {
        __break(1u);
      }

      (*(*v7 + 56))(&v37);
      *v34 = *(&v37 + 1);
      *&v34[3] = HIDWORD(v37);
      v8 = v38;
      *v33 = *v39;
      *&v33[3] = *&v39[3];
      LOBYTE(v32) = v37;
      BYTE4(v32) = v40;
      v56[0] = *v41;
      *(v56 + 15) = *&v41[15];
      v9 = v42;
      v10 = v44 - __p;
      if (v44 != __p)
      {
        if (0xCCCCCCCCCCCCCCCDLL * (v10 >> 3) <= 0x666666666666666)
        {
          operator new();
        }

        goto LABEL_37;
      }

      v31 = v46;
      v54 = v49;
      v55[0] = *v50;
      *(v55 + 15) = *&v50[15];
      v52 = v47;
      v53 = v48;
      v11 = v51;
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v31 = 0;
      v10 = 0;
      v11 = 0;
      v9 = 0;
      v32 = 0;
      v8 = 0;
    }

    if (v6 != v5 || (v8 & 1) != 0 || (v9 & 1) != 0 || v10 || (v11 & 1) != 0)
    {
      if (v10)
      {
        if (0xCCCCCCCCCCCCCCCDLL * (v10 >> 3) <= 0x666666666666666)
        {
          operator new();
        }

LABEL_37:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v15 = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(this + 1520, this + 1544);
      if ((this + 1528) == v15)
      {
        v12 = 0;
        v13 = *(this + 262);
        v14 = v13 <= 0;
        if (*(this + 2104) != v14)
        {
LABEL_25:
          *(this + 2104) = v14;
          if (v12 < v13 && (*(this + 1312) & 1) != 0)
          {
            v22.var0 = webrtc::PacingController::CurrentTime((this + 496));
            Elapsed = webrtc::PacingController::UpdateTimeAndGetElapsed(this + 62, v22);
            v24.i64[0] = *(this + 74) * Elapsed;
            v24.i64[1] = *(this + 75) * Elapsed;
            v25 = vaddq_s64(v24, vdupq_n_s64(0x3D0900uLL));
            v25.i64[0] /= 8000000;
            v25.i64[1] /= 8000000;
            v26 = *(this + 568);
            v27 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v26, vdupq_n_s64(0x8000000000000001)));
            v28 = vnegq_f64(0);
            v29 = vbslq_s8(vceqq_s64(v26, v28), v28, vsubq_s64(v26, vbslq_s8(vcgtq_s64(v26, v25), v25, v26)));
            v26.f64[0] = NAN;
            v26.f64[1] = NAN;
            *(this + 568) = vbslq_s8(v27, vnegq_f64(v26), v29);
          }

          *(this + 1312) = v14;
          if ((*(this + 1408) & 1) == 0)
          {
            v30.var0 = 0x8000000000000000;
            webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v30);
          }
        }
      }

      else
      {
        v12 = v15[9];
        v13 = *(this + 262);
        v14 = v12 >= v13;
        if (*(this + 2104) != v14)
        {
          goto LABEL_25;
        }
      }

      if (*(this + 210))
      {
        LOBYTE(v37) = v32;
        *(&v37 + 1) = *v34;
        HIDWORD(v37) = *&v34[3];
        v38 = v8;
        *v39 = *v33;
        *&v39[3] = *&v33[3];
        v40 = BYTE4(v32);
        *v41 = v56[0];
        *&v41[15] = *(v56 + 15);
        v42 = v9;
        __p = 0;
        v44 = 0;
        v45 = 0;
        v46 = v31;
        v48 = v53;
        v49 = v54;
        *v50 = v55[0];
        *&v50[15] = *(v55 + 15);
        v47 = v52;
        v51 = v11;
        webrtc::RtpTransportControllerSend::PostUpdates(this, &v37, v16, v17, v18, v19, v20, v21);
        if (__p)
        {
          operator delete(__p);
        }
      }
    }
  }
}

void webrtc::RtpTransportControllerSend::OnReceivedPacket(uint64_t a1)
{
  v2 = *(a1 + 1680);
  if (v2)
  {
    (*(*v2 + 64))(v9);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v9, v3, v4, v5, v6, v7, v8);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

void webrtc::RtpTransportControllerSend::SetSdpBitrateParameters(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 1);
  if (v2 == -1)
  {
    v5 = 0;
    v2 = 0;
  }

  else
  {
    v3 = *(a1 + 408);
    v4 = v2 == v3;
    v5 = v2 != v3;
    if (v4)
    {
      v2 = 0;
    }
  }

  v6 = *a2;
  *(a1 + 412) = *(a2 + 2);
  *(a1 + 404) = v6;
  if (*(a1 + 384) == 1)
  {
    LODWORD(v7) = *(a1 + 404);
    if (*(a1 + 380) > v7)
    {
      LODWORD(v7) = *(a1 + 380);
    }

    if ((*(a1 + 400) & 1) == 0)
    {
LABEL_10:
      v8 = *(a1 + 412);
      goto LABEL_21;
    }
  }

  else
  {
    LODWORD(v7) = *(a1 + 404);
    if (v7 < 0)
    {
      LODWORD(v7) = 0;
    }

    if ((*(a1 + 400) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v9 = *(a1 + 396);
  v8 = *(a1 + 412);
  if (v8 >= v9)
  {
    v10 = *(a1 + 396);
  }

  else
  {
    v10 = *(a1 + 412);
  }

  if (v8 < 1)
  {
    v10 = *(a1 + 396);
  }

  if (v9 > 0)
  {
    v8 = v10;
  }

LABEL_21:
  v11 = *(a1 + 416);
  if ((v11 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
    LODWORD(v11) = -1;
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (v11 < 1)
  {
    v12 = v8;
  }

  if (v8 >= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (v7 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  if (v13 == -1)
  {
    v7 = v7;
  }

  else
  {
    v7 = v14;
  }

  if (v7 == *(a1 + 368) && v13 == *(a1 + 376) && !v5)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
    }
  }

  else
  {
    if (v5)
    {
      if (v2 <= v7)
      {
        v15 = v7;
      }

      else
      {
        v15 = v2;
      }

      if (v13 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v13;
      }

      if (v13 < 1)
      {
        v16 = v15;
      }

      if (v15 >= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      v18 = v17 << 32;
    }

    else
    {
      LODWORD(v17) = *(a1 + 372);
      v18 = 0xFFFFFFFF00000000;
    }

    *(a1 + 368) = v7;
    *(a1 + 372) = v17;
    *(a1 + 376) = v13;
    v26 = v18 | v7;
    v27 = v13;
    v28 = 1;
    webrtc::RtpTransportControllerSend::UpdateBitrateConstraints(a1, &v26);
  }
}

void webrtc::RtpTransportControllerSend::SetClientBitratePreferences(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 380) = *a2;
  *(a1 + 396) = v2;
  if (*(a1 + 384) == 1)
  {
    LODWORD(v3) = *(a1 + 404);
    if (*(a1 + 380) > v3)
    {
      LODWORD(v3) = *(a1 + 380);
    }

    if ((*(a1 + 400) & 1) == 0)
    {
LABEL_5:
      v4 = *(a1 + 412);
      goto LABEL_16;
    }
  }

  else
  {
    LODWORD(v3) = *(a1 + 404);
    if (v3 < 0)
    {
      LODWORD(v3) = 0;
    }

    if ((*(a1 + 400) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 + 396);
  v4 = *(a1 + 412);
  if (v4 >= v5)
  {
    v6 = *(a1 + 396);
  }

  else
  {
    v6 = *(a1 + 412);
  }

  if (v4 < 1)
  {
    v6 = *(a1 + 396);
  }

  if (v5 > 0)
  {
    v4 = v6;
  }

LABEL_16:
  v7 = *(a1 + 416);
  if ((v7 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
    LODWORD(v7) = -1;
  }

  if (v7 >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (v7 < 1)
  {
    v8 = v4;
  }

  if (v4 >= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v3 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v3;
  }

  if (v9 == -1)
  {
    v3 = v3;
  }

  else
  {
    v3 = v10;
  }

  if (v3 == *(a1 + 368) && v9 == *(a1 + 376) && *(a2 + 12) != 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
    }
  }

  else
  {
    if (*(a2 + 12) == 1)
    {
      v11 = *(a2 + 8);
      if (v11 <= v3)
      {
        v11 = v3;
      }

      if (v9 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      if (v9 < 1)
      {
        v12 = v11;
      }

      if (v11 >= 1)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9;
      }

      v14 = v13 << 32;
    }

    else
    {
      LODWORD(v13) = *(a1 + 372);
      v14 = 0xFFFFFFFF00000000;
    }

    *(a1 + 368) = v3;
    *(a1 + 372) = v13;
    *(a1 + 376) = v9;
    v22 = v14 | v3;
    v23 = v9;
    v24 = 1;
    webrtc::RtpTransportControllerSend::UpdateBitrateConstraints(a1, &v22);
  }
}

void webrtc::RtpTransportControllerSend::OnTransportOverheadChanged(webrtc::RtpTransportControllerSend *this, unint64_t a2)
{
  if (a2 < 0x1F4)
  {
    if ((*(this + 523) & 1) == 0)
    {
      *(this + 67) = a2;
    }

    v11.var0 = 0x8000000000000000;
    webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v11);
    v12 = *(this + 43);
    v13 = *(this + 44);
    while (v12 != v13)
    {
      v14 = *v12++;
      (*(*v14 + 104))(v14, a2);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
  }
}

_BYTE *webrtc::RtpTransportControllerSend::AccountForAudioPacketsInPacedSender(webrtc::RtpTransportControllerSend *this, char a2)
{
  *(this + 1328) = a2;
  v2.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v2);
}

_BYTE *webrtc::RtpTransportControllerSend::IncludeOverheadInPacedSender(webrtc::RtpTransportControllerSend *this)
{
  *(this + 1360) = 1;
  *(this + 1329) = 1;
  v1.var0 = 0x8000000000000000;
  return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v1);
}

_BYTE *webrtc::RtpTransportControllerSend::EnsureStarted(_BYTE *this)
{
  if ((this[449] & 1) == 0)
  {
    this[449] = 1;
    this[1344] = 1;
    v1.var0 = 0x8000000000000000;
    return webrtc::TaskQueuePacedSender::MaybeProcessPackets(this + 456, v1);
  }

  return this;
}

void webrtc::RtpTransportControllerSend::OnReceiverEstimatedMaxBitrate(uint64_t a1)
{
  v2 = *(a1 + 1680);
  if (v2)
  {
    (*(*v2 + 40))(v9);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v9, v3, v4, v5, v6, v7, v8);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

void non-virtual thunk towebrtc::RtpTransportControllerSend::OnReceiverEstimatedMaxBitrate(uint64_t a1)
{
  v2 = *(a1 + 1672);
  if (v2)
  {
    v3 = a1 - 8;
    (*(*v2 + 40))(v10);
    webrtc::RtpTransportControllerSend::PostUpdates(v3, v10, v4, v5, v6, v7, v8, v9);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }
}

void webrtc::RtpTransportControllerSend::OnRttUpdate(webrtc::RtpTransportControllerSend *this, Timestamp a2, TimeDelta a3)
{
  v5 = *(this + 210);
  if (1000 * ((a3.var0 + 500) / 1000))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v19 = v3;
    v20 = v4;
    v14[0] = a2.var0;
    v14[1] = 1000 * ((a3.var0 + 500) / 1000);
    v15 = 0;
    (*(*v5 + 48))(v16, v5, v14);
    webrtc::RtpTransportControllerSend::PostUpdates(this, v16, v8, v9, v10, v11, v12, v13);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

void non-virtual thunk towebrtc::RtpTransportControllerSend::OnRttUpdate(webrtc::RtpTransportControllerSend *this, Timestamp a2, TimeDelta a3)
{
  v6 = *(this + 209);
  if (1000 * ((a3.var0 + 500) / 1000))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v18 = v3;
    v19 = v4;
    v8 = this - 8;
    (*(*v6 + 48))(v15);
    webrtc::RtpTransportControllerSend::PostUpdates(v8, v15, v9, v10, v11, v12, v13, v14);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

uint64_t webrtc::RtpTransportControllerSend::EnableCongestionControlFeedbackAccordingToRfc8888(uint64_t this)
{
  *(this + 2105) = 257;
  *(this + 256) = 257;
  return this;
}

void webrtc::RtpTransportControllerSend::OnTransportFeedback(webrtc::RtpTransportControllerSend *this, Timestamp a2, const webrtc::rtcp::TransportFeedback *a3)
{
  ++*(this + 528);
  v6.var0 = a2.var0;
  webrtc::TransportFeedbackAdapter::ProcessTransportFeedback((this + 1472), a3, v6, v7);
  if (v12 == 1)
  {
    webrtc::RtpTransportControllerSend::HandleTransportPacketsFeedback(this, v7);
    if (v12)
    {
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v8)
      {
        v9 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t webrtc::RtpTransportControllerSend::HandleTransportPacketsFeedback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2106) == 1)
  {
    *(a1 + 2106) = 0;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_transport_controller_send.cc");
    }

    v11 = *(a1 + 2106);
    *(a1 + 256) = 1;
    *(a1 + 257) = v11;
  }

  webrtc::TransportFeedbackDemuxer::OnTransportFeedback(a1 + 1440, a2);
  v12 = *(a1 + 1680);
  if (v12)
  {
    v35 = *a2;
    v36 = *(a2 + 16);
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v13 = *(a2 + 24);
    v14 = *(a2 + 32);
    if (v14 != v13)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 5) < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v16 = *(a2 + 48);
    v15 = *(a2 + 56);
    if (v15 != v16)
    {
      if (((v15 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    (*(*v12 + 96))(v43, v12, &v35);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v43, v17, v18, v19, v20, v21, v22);
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }

  result = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(a1 + 1520, (a1 + 1544));
  if (a1 + 1528 == result)
  {
    v24 = 0;
    v25 = *(a1 + 2096);
    v26 = v25 <= 0;
    if (*(a1 + 2104) == v26)
    {
      return result;
    }
  }

  else
  {
    v24 = *(result + 72);
    v25 = *(a1 + 2096);
    v26 = v24 >= v25;
    if (*(a1 + 2104) == v26)
    {
      return result;
    }
  }

  *(a1 + 2104) = v26;
  if (v24 < v25 && (*(a1 + 1312) & 1) != 0)
  {
    v27.var0 = webrtc::PacingController::CurrentTime((a1 + 496));
    result = webrtc::PacingController::UpdateTimeAndGetElapsed((a1 + 496), v27);
    v28.i64[0] = *(a1 + 592) * result;
    v28.i64[1] = *(a1 + 600) * result;
    v29 = vaddq_s64(v28, vdupq_n_s64(0x3D0900uLL));
    v29.i64[0] /= 8000000;
    v29.i64[1] /= 8000000;
    v30 = *(a1 + 568);
    v31 = vcgtq_u64(vdupq_n_s64(2uLL), vaddq_s64(v30, vdupq_n_s64(0x8000000000000001)));
    v32 = vnegq_f64(0);
    v33 = vbslq_s8(vceqq_s64(v30, v32), v32, vsubq_s64(v30, vbslq_s8(vcgtq_s64(v30, v29), v29, v30)));
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    *(a1 + 568) = vbslq_s8(v31, vnegq_f64(v30), v33);
  }

  *(a1 + 1312) = v26;
  if ((*(a1 + 1408) & 1) == 0)
  {
    v34.var0 = 0x8000000000000000;
    return webrtc::TaskQueuePacedSender::MaybeProcessPackets((a1 + 456), v34);
  }

  return result;
}

void non-virtual thunk towebrtc::RtpTransportControllerSend::OnTransportFeedback(webrtc::RtpTransportControllerSend *this, Timestamp a2, const webrtc::rtcp::TransportFeedback *a3)
{
  ++*(this + 526);
  v6.var0 = a2.var0;
  webrtc::TransportFeedbackAdapter::ProcessTransportFeedback((this + 1464), a3, v6, v7);
  if (v12 == 1)
  {
    webrtc::RtpTransportControllerSend::HandleTransportPacketsFeedback(this - 8, v7);
    if (v12)
    {
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      if (v8)
      {
        v9 = v8;
        operator delete(v8);
      }
    }
  }
}

void webrtc::RtpTransportControllerSend::OnCongestionControlFeedback(webrtc::RtpTransportControllerSend *this, Timestamp a2, const webrtc::rtcp::CongestionControlFeedback *a3, __n128 a4)
{
  ++*(this + 527);
  v7.var0 = a2.var0;
  webrtc::TransportFeedbackAdapter::ProcessCongestionControlFeedback(this + 184, a3, v7, v8, a4);
  if (v13 == 1)
  {
    webrtc::RtpTransportControllerSend::HandleTransportPacketsFeedback(this, v8);
    if (v13)
    {
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }
    }
  }
}

void non-virtual thunk towebrtc::RtpTransportControllerSend::OnCongestionControlFeedback(webrtc::RtpTransportControllerSend *this, Timestamp a2, const webrtc::rtcp::CongestionControlFeedback *a3, __n128 a4)
{
  ++*(this + 525);
  v7.var0 = a2.var0;
  webrtc::TransportFeedbackAdapter::ProcessCongestionControlFeedback(this + 183, a3, v7, v8, a4);
  if (v13 == 1)
  {
    webrtc::RtpTransportControllerSend::HandleTransportPacketsFeedback(this - 8, v8);
    if (v13)
    {
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v9)
      {
        v10 = v9;
        operator delete(v9);
      }
    }
  }
}

void webrtc::RtpTransportControllerSend::OnRemoteNetworkEstimate(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v5;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 < 0)
  {
    v5 = v6 - -v4 / 0x3E8uLL;
  }

  *(a2 + 8) = 1000 * v5;
  v7 = *(a1 + 1680);
  if (v7)
  {
    (*(*v7 + 104))(v14);
    webrtc::RtpTransportControllerSend::PostUpdates(a1, v14, v8, v9, v10, v11, v12, v13);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

void non-virtual thunk towebrtc::RtpTransportControllerSend::OnRemoteNetworkEstimate(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v5 = v4 / 0x3E8uLL;
  if (v4 % 0x3E8uLL > 0x1F3)
  {
    ++v5;
  }

  if (-v4 % 0x3E8uLL <= 0x1F4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 < 0)
  {
    v5 = v6 - -v4 / 0x3E8uLL;
  }

  *(a2 + 8) = 1000 * v5;
  v7 = *(a1 + 1664);
  if (v7)
  {
    (*(*v7 + 104))(v14);
    webrtc::RtpTransportControllerSend::PostUpdates(a1 - 16, v14, v8, v9, v10, v11, v12, v13);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

void webrtc::RtpTransportControllerSend::UpdateControllerWithTimeInterval(webrtc::RtpTransportControllerSend *this)
{
  (*(**(this + 5) + 16))(*(this + 5));
  (*(**(this + 210) + 32))(v8);
  webrtc::RtpTransportControllerSend::PostUpdates(this, v8, v2, v3, v4, v5, v6, v7);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void webrtc::RtpTransportControllerSend::OnReport(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a3;
    v22 = 0;
    v6 = 0;
    v7 = (a1 + 1704);
    do
    {
      v8 = v4[1];
      v9 = *v7;
      if (!*v7)
      {
LABEL_9:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = *(v9 + 7);
          if (v8 >= v11)
          {
            break;
          }

          v9 = *v10;
          if (!*v10)
          {
            goto LABEL_9;
          }
        }

        if (v11 >= v8)
        {
          break;
        }

        v9 = v10[1];
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      v13 = v4[3];
      v12 = v4[4];
      v6 = v12 + v6 - *(v10 + 8);
      v22 = v13 + v22 - *(v10 + 9);
      *(v10 + 8) = v12;
      *(v10 + 9) = v13;
      v4 += 16;
    }

    while (v4 != &a3[16 * a4]);
    if (v6 && v6 - v22 >= 1)
    {
      v14 = *(a1 + 1680);
      if (v14)
      {
        (*(*v14 + 88))(v23);
        webrtc::RtpTransportControllerSend::PostUpdates(a1, v23, v15, v16, v17, v18, v19, v20);
        if (__p)
        {
          v25 = __p;
          operator delete(__p);
        }
      }

      *(a1 + 1720) = a2;
    }
  }
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::RtpTransportControllerSend::RtpTransportControllerSend(webrtc::RtpTransportConfig const&)::$_0 &,webrtc::RtpPacketToSend const&,webrtc::PacedPacketInfo const&>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 160) & 1) != 0 && (*(a2 + 128))
  {
    v3 = *a1;
    v6 = (*(**(*a1 + 40) + 16))(*(*a1 + 40));
    v7 = v6 / 0x3E8uLL;
    if (v6 % 0x3E8uLL > 0x1F3)
    {
      ++v7;
    }

    if (-v6 % 0x3E8uLL <= 0x1F4)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (v6 < 0)
    {
      v7 = v8 - -v6 / 0x3E8uLL;
    }

    v9 = *(v3 + 2064);

    webrtc::TransportFeedbackAdapter::AddPacket(v3 + 1472, a2, a3, v9, 1000 * v7);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RtpTransportControllerSend::OnSentPacket(webrtc::SentPacketInfo const&)::$_0>(char a1, uint64_t *a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::RtpTransportControllerSend::StartProcessPeriodicTasks(void)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1384);
  v3 = *(*a1 + 1672);
  v4 = v2 / 0x3E8uLL;
  if (v2 % 0x3E8uLL > 0x1F3)
  {
    ++v4;
  }

  if (-v2 % 0x3E8uLL <= 0x1F4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v2 < 0)
  {
    v6 = v5 - -v2 / 0x3E8uLL;
  }

  else
  {
    v6 = v4;
  }

  *(v3 + 168) = v6;
  webrtc::CongestionControlHandler::GetUpdate(v3, v12);
  if (v15 != 1)
  {
    return 25000;
  }

  v7 = v13;
  pthread_mutex_lock((v1 + 2128));
  *(v1 + 2296) = v7;
  result = pthread_mutex_unlock((v1 + 2128));
  if (v15)
  {
    v9 = *(v1 + 1432);
    v11 = v14;
    v10[2] = v12[2];
    v10[3] = v13;
    v10[0] = v12[0];
    v10[1] = v12[1];
    (*(*v9 + 16))(v9, v10);
    return 25000;
  }

  __break(1u);
  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::RtpTransportControllerSend::StartProcessPeriodicTasks(void)::$_1 &>(webrtc::RtpTransportControllerSend **a1)
{
  v1 = *a1;
  webrtc::RtpTransportControllerSend::UpdateControllerWithTimeInterval(*a1);
  return *(v1 + 211);
}

void webrtc::RTPVideoHeader::SetFromMetadata(webrtc::RTPVideoHeader *this, const webrtc::VideoFrameMetadata *a2)
{
  *(this + 19) = *a2;
  *(this + 40) = *(a2 + 2);
  *(this + 164) = *(a2 + 12);
  if ((*(a2 + 6) & 1) == 0)
  {
    if (!*(this + 144))
    {
      goto LABEL_26;
    }

    if (*(this + 112))
    {
      operator delete(*(this + 15));
      if ((*(this + 64) & 1) == 0)
      {
LABEL_23:
        if ((*(this + 16) & 1) == 0)
        {
LABEL_25:
          *(this + 144) = 0;
          goto LABEL_26;
        }

LABEL_24:
        operator delete(*(this + 3));
        goto LABEL_25;
      }
    }

    else if ((*(this + 64) & 1) == 0)
    {
      goto LABEL_23;
    }

    operator delete(*(this + 9));
    if ((*(this + 16) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!*(this + 144))
  {
    goto LABEL_7;
  }

  if ((*(this + 112) & 1) == 0)
  {
    if ((*(this + 64) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_45:
    operator delete(*(this + 9));
    if ((*(this + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  operator delete(*(this + 15));
  if (*(this + 64))
  {
    goto LABEL_45;
  }

LABEL_5:
  if (*(this + 16))
  {
LABEL_6:
    operator delete(*(this + 3));
  }

LABEL_7:
  *(this + 8) = 0;
  *(this + 14) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 17) = 0xFFFFFFFFLL;
  *(this + 144) = 1;
  if ((*(a2 + 6) & 1) == 0)
  {
LABEL_65:
    std::__throw_bad_optional_access[abi:sn200100]();
    goto LABEL_66;
  }

  *this = *(a2 + 2);
  *(this + 1) = *(a2 + 4);
  v4 = a2 + 48;
  v5 = *(a2 + 5);
  if (v5)
  {
    v4 = *(a2 + 6);
  }

  if (v5 >= 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<long long>,long long const*>>(this + 8, v6, v5 >> 1);
  if ((*(this + 144) & 1) == 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  v7 = a2 + 96;
  v8 = *(a2 + 11);
  if (v8)
  {
    v7 = *(a2 + 12);
  }

  if (v8 >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(this + 2, v9, v8 >> 1);
LABEL_26:
  *(this + 167) = *(a2 + 68);
  v10 = *(a2 + 35);
  *(this + 43) = v10;
  if (v10 != 4)
  {
    if (v10 != 2)
    {
      if (v10 != 1)
      {
        return;
      }

      if (*(a2 + 446) == 1)
      {
        v11 = (this + 296);
        v12 = *(this + 484);
        if (v12 != -1)
        {
          if (v12 == 1)
          {
            v13 = *(a2 + 9);
            *(this + 78) = *(a2 + 40);
            *v11 = v13;
            return;
          }

          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264ENS7_27RTPVideoHeaderLegacyGenericEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSE_EEEDcOSF_DpOT0____fmatrix[v12])(&v23, this + 296);
        }

        *(this + 484) = -1;
        v21 = *(a2 + 9);
        *(this + 78) = *(a2 + 40);
        *v11 = v21;
        v20 = 1;
        goto LABEL_59;
      }

      goto LABEL_64;
    }

    if (*(a2 + 446) == 2)
    {
      v14 = *(this + 484);
      if (v14 != -1)
      {
        if (v14 == 2)
        {

          memcpy(this + 296, a2 + 144, 0x668uLL);
          return;
        }

        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264ENS7_27RTPVideoHeaderLegacyGenericEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSE_EEEDcOSF_DpOT0____fmatrix[v14])(&v24, this + 296);
      }

      *(this + 484) = -1;
      memcpy(this + 296, a2 + 144, 0x668uLL);
      v20 = 2;
LABEL_59:
      *(this + 484) = v20;
      return;
    }

LABEL_64:
    std::__throw_bad_variant_access[abi:sn200100]();
    goto LABEL_65;
  }

  if (*(a2 + 446) != 3)
  {
    goto LABEL_64;
  }

  v15 = (this + 296);
  v16 = *(this + 484);
  v17 = *(a2 + 18);
  if (v16 != 3)
  {
    v19 = *(a2 + 19);
    v18 = *(a2 + 20);
    if (v18 != v19)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

LABEL_66:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v22 = *(a2 + 44);
    if (v16 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264ENS7_27RTPVideoHeaderLegacyGenericEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSE_EEEDcOSF_DpOT0____fmatrix[v16])(&v25, this + 296);
    }

    *(this + 37) = v17;
    *(this + 38) = 0;
    *(this + 39) = 0;
    *(this + 40) = 0;
    *(this + 82) = v22;
    v20 = 3;
    goto LABEL_59;
  }

  *v15 = v17;
  if (v15 != (a2 + 144))
  {
    std::vector<webrtc::NaluInfo>::__assign_with_size[abi:sn200100]<webrtc::NaluInfo*,webrtc::NaluInfo*>(this + 38, *(a2 + 19), *(a2 + 20), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 20) - *(a2 + 19)) >> 2));
  }

  *(this + 82) = *(a2 + 44);
}

webrtc::RTPVideoHeader *webrtc::RTPVideoHeader::RTPVideoHeader(webrtc::RTPVideoHeader *this, const webrtc::RTPVideoHeader *a2)
{
  *this = 0;
  *(this + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *this = *a2;
    *(this + 2) = 0;
    v4 = (this + 16);
    v5 = (a2 + 16);
    v6 = *(a2 + 2);
    if (v6 < 2)
    {
      *(this + 8) = 0;
      v7 = (this + 64);
      v8 = (a2 + 64);
      v9 = *(a2 + 8);
      if (v9 < 2)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (v9)
      {
        absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::InitFrom(v7, v8);
        *(this + 14) = 0;
        v10 = (this + 112);
        v11 = (a2 + 112);
        v12 = *(a2 + 14);
        if (v12 < 2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(this + 8) = v9;
        v15 = *(a2 + 72);
        v16 = *(a2 + 88);
        *(this + 13) = *(a2 + 13);
        *(this + 88) = v16;
        *(this + 72) = v15;
        *(this + 14) = 0;
        v10 = (this + 112);
        v11 = (a2 + 112);
        v12 = *(a2 + 14);
        if (v12 < 2)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      if (v12)
      {
        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v10, v11);
      }

      else
      {
        *(this + 14) = v12;
        *(this + 120) = *(a2 + 120);
      }

      goto LABEL_16;
    }

    if (v6)
    {
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom(v4, v5);
      *(this + 8) = 0;
      v7 = (this + 64);
      v8 = (a2 + 64);
      v9 = *(a2 + 8);
      if (v9 >= 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(this + 2) = v6;
      v13 = *(a2 + 24);
      v14 = *(a2 + 40);
      *(this + 7) = *(a2 + 7);
      *(this + 40) = v14;
      *(this + 24) = v13;
      *(this + 8) = 0;
      v7 = (this + 64);
      v8 = (a2 + 64);
      v9 = *(a2 + 8);
      if (v9 >= 2)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    *(this + 14) = 0;
    v10 = (this + 112);
    v11 = (a2 + 112);
    v12 = *(a2 + 14);
    if (v12 >= 2)
    {
      goto LABEL_5;
    }

LABEL_16:
    *(this + 17) = *(a2 + 17);
    *(this + 144) = 1;
  }

  v17 = *(a2 + 152);
  v18 = *(a2 + 168);
  v19 = *(a2 + 184);
  v20 = *(a2 + 197);
  *(this + 216) = 0;
  *(this + 197) = v20;
  *(this + 168) = v18;
  *(this + 184) = v19;
  *(this + 152) = v17;
  *(this + 284) = 0;
  if (*(a2 + 284) == 1)
  {
    *(this + 216) = *(a2 + 216);
    v21 = *(a2 + 232);
    v22 = *(a2 + 248);
    v23 = *(a2 + 264);
    *(this + 280) = *(a2 + 280);
    *(this + 248) = v22;
    *(this + 264) = v23;
    *(this + 232) = v21;
    *(this + 284) = 1;
  }

  *(this + 72) = *(a2 + 72);
  *(this + 296) = 0;
  *(this + 484) = -1;
  v24 = *(a2 + 484);
  if (v24 != -1)
  {
    v28 = this + 296;
    (off_28829DEF8[v24])(&v28, a2 + 296);
    *(this + 484) = v24;
  }

  v25 = *(a2 + 1960);
  *(this + 1944) = *(a2 + 1944);
  *(this + 1960) = v25;
  *(this + 1976) = 0;
  *(this + 2032) = 0;
  if (*(a2 + 2032) == 1)
  {
    *(this + 506) = -1;
    v26 = *(a2 + 506);
    if (v26 != -1)
    {
      v28 = this + 1976;
      (off_28829DF30[v26])(&v28, a2 + 1976);
      *(this + 506) = v26;
    }

    *(this + 2032) = 1;
  }

  return this;
}

void webrtc::RTPVideoHeader::~RTPVideoHeader(webrtc::RTPVideoHeader *this)
{
  if (*(this + 2032) == 1)
  {
    v2 = *(this + 506);
    if (v2 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJN6webrtc28FrameInstrumentationSyncDataENS6_24FrameInstrumentationDataEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix[v2])(&v4, this + 1976);
    }

    *(this + 506) = -1;
  }

  v3 = *(this + 484);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS7_17RTPVideoHeaderVP9ENS7_18RTPVideoHeaderH264ENS7_27RTPVideoHeaderLegacyGenericEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSE_EEEDcOSF_DpOT0____fmatrix[v3])(&v5, this + 296);
  }

  *(this + 484) = -1;
  if (*(this + 144) == 1)
  {
    if (*(this + 112))
    {
      operator delete(*(this + 15));
      if ((*(this + 64) & 1) == 0)
      {
LABEL_10:
        if ((*(this + 16) & 1) == 0)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if ((*(this + 64) & 1) == 0)
    {
      goto LABEL_10;
    }

    operator delete(*(this + 9));
    if ((*(this + 16) & 1) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(*(this + 3));
  }
}

void webrtc::RTPVideoHeader::GetAsMetadata(webrtc::RTPVideoHeader *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v5 = v3;
  v6 = v4;
  v30 = *MEMORY[0x277D85DE8];
  v4[1].n128_u8[0] = 0;
  v4[1].n128_u8[8] = 0;
  v4[5].n128_u64[1] = 0;
  v7 = &v4[5].n128_u64[1];
  v4[2].n128_u64[0] = 0;
  v4[2].n128_u64[1] = 0;
  v4[8].n128_u16[4] = 1;
  v4[8].n128_u32[3] = 0;
  v4[111].n128_u32[2] = 0;
  v4[112].n128_u32[0] = 0;
  v4[112].n128_u64[1] = 0;
  v4[113].n128_u64[1] = 0;
  v4[113].n128_u64[0] = 0;
  v4->n128_u64[0] = *(v3 + 152);
  v4->n128_u32[2] = *(v3 + 160);
  v4->n128_u8[12] = *(v3 + 164);
  if (*(v3 + 144) == 1)
  {
    v4[1].n128_u64[0] = *v3;
    v4[1].n128_u8[8] = 1;
    v4[2].n128_u64[0] = *(v3 + 8);
    v8 = v3 + 72;
    v9 = *(v3 + 64);
    if (v9)
    {
      v8 = *(v3 + 72);
    }

    if (v9 >= 2)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<long long>,long long const*>>(&v6[2].n128_u64[1], v10, v9 >> 1);
    if ((*(v5 + 144) & 1) == 0)
    {
      __break(1u);
    }

    v11 = v5 + 24;
    v12 = *(v5 + 16);
    if (v12)
    {
      v11 = *(v5 + 24);
    }

    if (v12 >= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v7, v13, v12 >> 1);
  }

  v6[8].n128_u16[4] = *(v5 + 167);
  v14 = *(v5 + 172);
  v6[8].n128_u32[3] = v14;
  if (v14 != 4)
  {
    if (v14 != 2)
    {
      if (v14 != 1)
      {
        return;
      }

      if (*(v5 + 1936) == 1)
      {
        v15 = *(v5 + 312);
        v27 = *(v5 + 296);
        v28 = v15;
        v29 = 1;
        v21 = v6 + 9;
        v16 = off_2882A2480(&v21, v6 + 9, &v27);
        if (v29 != -1)
        {
          (off_28829DF40[v29])(&v21, &v27, v16);
        }

        return;
      }

      goto LABEL_31;
    }

    if (*(v5 + 1936) == 2)
    {
      memcpy(__dst, (v5 + 296), sizeof(__dst));
      v26 = 2;
      v21 = v6 + 9;
      off_2882A2488(&v21, &v6[9], __dst);
      if (v26 != -1)
      {
        (off_28829DF40[v26])(&v21, __dst, v17);
      }

      return;
    }

LABEL_31:
    std::__throw_bad_variant_access[abi:sn200100]();
    goto LABEL_32;
  }

  if (*(v5 + 1936) != 3)
  {
    goto LABEL_31;
  }

  v18 = *(v5 + 304);
  v22[0] = *(v5 + 296);
  memset(&v22[1], 0, 24);
  v19 = *(v5 + 312);
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v23 = *(v5 + 328);
  v24 = 3;
  v21 = v6 + 9;
  v20 = off_2882A2490(&v21, &v6[9], v22);
  if (v24 != -1)
  {
    (off_28829DF40[v24])(&v21, v22, v20);
  }
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(void *result)
{
  if (!*result)
  {
    __break(1u);
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *a2;
    *(v2 + 16) = *(a2 + 4);
    *v2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(void **a1, const void *a2)
{
  result = *a1;
  if (result)
  {
    return memcpy(result, a2, 0x668uLL);
  }

  __break(1u);
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v2 = *a2;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v3 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(v2 + 32) = *(a2 + 32);
  return result;
}

_WORD **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8sn200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN6webrtc17RTPVideoHeaderVP8ENS9_17RTPVideoHeaderVP9ENS9_18RTPVideoHeaderH264ENS9_27RTPVideoHeaderLegacyGenericEEEEE19__generic_constructB8sn200100IRKNS0_18__copy_constructorISE_LNS0_6_TraitE1EEEEEvRSF_OT_EUlSO_E_JRKNS0_6__baseILSI_1EJS8_SA_SB_SC_SD_EEEEEEDcSN_DpT0_(_WORD **result, _WORD *a2)
{
  if (*result)
  {
    **result = *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::InitFrom(unint64_t *a1, unint64_t *a2)
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

uint64_t webrtc::RtpVideoLayersAllocationExtension::Write(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 > 1)
  {
    v43 = 0;
    LOBYTE(v44) = 1;
    v5 = *(a3 + 16);
    if ((v3 & 1) == 0)
    {
      v5 = a3 + 16;
    }

    v6 = 56 * (v3 >> 1);
    v7 = (v5 + 4);
    do
    {
      v8 = *(v7 - 1);
      *(&v43 + v8 + 4) |= 1 << *v7;
      v9 = v43;
      if (v43 <= v8)
      {
        v9 = v8;
      }

      LODWORD(v43) = v9;
      v7 += 14;
      v6 -= 56;
    }

    while (v6);
    if (v9 >= 1)
    {
      v10 = &v43 + 5;
      v11 = (v9 + 1) - 1;
      while (1)
      {
        v12 = *v10++;
        if (v12 != BYTE4(v43))
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_15;
        }
      }

      LOBYTE(v44) = 0;
    }

LABEL_15:
    v13 = v43;
    v14 = v44;
    v15 = (*a3 << 6) | (16 * v9);
    *a1 = (*a3 << 6) | (16 * v9);
    if (v14)
    {
      *a1 = v15 | BYTE4(v13);
    }

    else
    {
      a1[1] = (v13 >> 28) & 0xF0 | BYTE5(v13);
      if (v13 < 2)
      {
        ++a1;
      }

      else
      {
        a1[2] = (v13 >> 44) & 0xF0 | HIBYTE(v13);
        a1 += 2;
      }
    }

    a1[1] = 0;
    v16 = a1 + 1;
    v17 = *(a3 + 8);
    v18 = *(a3 + 16);
    v19 = v17 & 1;
    if (v17)
    {
      v20 = *(a3 + 16);
    }

    else
    {
      v20 = a3 + 16;
    }

    v21 = v17 >> 1;
    if (v17 >= 2)
    {
      v22 = 0;
      v23 = 56 * v21;
      v24 = (v20 + 8);
      v25 = 8;
      do
      {
        if (v25)
        {
          v25 -= 2;
        }

        else
        {
          v22 = 0;
          *++v16 = 0;
          v25 = 6;
        }

        v26 = *v24;
        v24 += 14;
        v22 |= ((v26 >> 1) - 1) << v25;
        *v16 = v22;
        v23 -= 56;
      }

      while (v23);
      v18 = *(a3 + 16);
      v19 = *(a3 + 8) & 1;
      v21 = *(a3 + 8) >> 1;
    }

    v27 = v16 + 1;
    if (!v19)
    {
      v18 = a3 + 16;
    }

    if (v21)
    {
      v28 = v18 + 56 * v21;
      do
      {
        v29 = *(v18 + 8);
        v30 = (v18 + 16);
        if (v29)
        {
          v30 = *v30;
        }

        if (v29 >= 2)
        {
          v31 = &v30[v29 >> 1];
          do
          {
            v33 = *v30;
            v34 = *v30 / 0x3E8uLL;
            if (*v30 % 0x3E8uLL > 0x1F3)
            {
              ++v34;
            }

            if (-v33 % 0x3E8uLL <= 0x1F4)
            {
              v35 = 0;
            }

            else
            {
              v35 = -1;
            }

            v36 = v35 - -v33 / 0x3E8uLL;
            if (v33 < 0)
            {
              v34 = v36;
            }

            if (v34 < 0x80)
            {
              LODWORD(v32) = 0;
            }

            else
            {
              v32 = 0;
              do
              {
                v27[v32++] = v34 | 0x80;
                v37 = v34 >> 14;
                v34 >>= 7;
              }

              while (v37);
            }

            v27[v32] = v34;
            v27 += v32 + 1;
            ++v30;
          }

          while (v30 != v31);
        }

        v18 += 56;
      }

      while (v18 != v28);
    }

    if (*(a3 + 4))
    {
      v39 = *(a3 + 8);
      v38 = *(a3 + 16);
      if ((v39 & 1) == 0)
      {
        v38 = a3 + 16;
      }

      if (v39 >= 2)
      {
        v40 = 56 * (v39 >> 1);
        v41 = (v38 + 52);
        do
        {
          *v27 = bswap32(*(v41 - 2) - 1) >> 16;
          *(v27 + 1) = bswap32(*(v41 - 1) - 1) >> 16;
          v42 = *v41;
          v41 += 56;
          v27[4] = v42;
          v27 += 5;
          v40 -= 56;
        }

        while (v40);
      }
    }

    return 1;
  }

  else
  {
    *a1 = 0;
    return 1;
  }
}

uint64_t webrtc::RtpVideoLayersAllocationExtension::ValueSize(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = 1;
  if (v1 >= 2)
  {
    v25 = 0;
    LOBYTE(v26) = 1;
    v3 = a1 + 16;
    if (v1)
    {
      v3 = *(a1 + 16);
    }

    v4 = v1 >> 1;
    v5 = 56 * v4;
    v6 = v3 + 56 * v4;
    v7 = (v3 + 4);
    do
    {
      v8 = *(v7 - 1);
      *(&v25 + v8 + 4) |= 1 << *v7;
      v9 = v25;
      if (v25 <= v8)
      {
        v9 = v8;
      }

      LODWORD(v25) = v9;
      v7 += 14;
      v5 -= 56;
    }

    while (v5);
    if (v9 >= 1)
    {
      v10 = &v25 + 5;
      v11 = (v9 + 1) - 1;
      while (1)
      {
        v12 = *v10++;
        if (v12 != BYTE4(v25))
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_14;
        }
      }

      LOBYTE(v26) = 0;
    }

LABEL_14:
    v13 = 2;
    if (v9 > 1)
    {
      v13 = 3;
    }

    if (v26)
    {
      v13 = 1;
    }

    v2 = v13 + ((v4 + 3) >> 2);
    do
    {
      v14 = *(v3 + 8);
      v15 = (v3 + 16);
      if (v14)
      {
        v15 = *v15;
      }

      if (v14 >= 2)
      {
        v16 = &v15[v14 >> 1];
        do
        {
          v17 = *v15;
          v18 = *v15 / 0x3E8uLL;
          if (*v15 % 0x3E8uLL > 0x1F3)
          {
            ++v18;
          }

          if (-v17 % 0x3E8uLL <= 0x1F4)
          {
            v19 = 0;
          }

          else
          {
            v19 = -1;
          }

          v20 = v19 - -v17 / 0x3E8uLL;
          if (v17 < 0)
          {
            v18 = v20;
          }

          v21 = 1;
          if (v18 >= 0x80)
          {
            do
            {
              v22 = v18 >> 14;
              v18 >>= 7;
              ++v21;
            }

            while (v22);
          }

          v2 += v21;
          ++v15;
        }

        while (v15 != v16);
      }

      v3 += 56;
    }

    while (v3 != v6);
    v23 = v2 + 5 * v4;
    if (*(a1 + 4))
    {
      return v23;
    }
  }

  return v2;
}

void absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::EmplaceBackSlow<>(void *a1)
{
  if ((*a1 & 1) != 0 && (2 * a1[2]) >= 0x492492492492493)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void webrtc::RtpVideoSender::RtpVideoSender(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v20 = a1;
  v131 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829DF70;
  *(a1 + 8) = &unk_28829E030;
  *(a1 + 16) = &unk_28829E058;
  *(a1 + 24) = &unk_28829E088;
  v21 = *a2;
  *(a1 + 32) = *a2;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1u, memory_order_relaxed);
  }

  v22 = *(a2 + 1);
  *(a1 + 56) = *(a2 + 3);
  *(a1 + 40) = v22;
  (*(*a2[1] + 16))(&__p);
  v23 = HIBYTE(v114);
  if (v114 < 0)
  {
    v23 = *__p.__opaque;
  }

  v96 = a2;
  if (v23 >= 7)
  {
    sig = __p.__sig;
    if (v114 >= 0)
    {
      sig = &__p;
    }

    v26 = sig->__sig;
    v27 = *(&sig->__sig + 3);
    v24 = v26 == 1650552389 && v27 == 1684368482;
  }

  else
  {
    v24 = 0;
  }

  if (SHIBYTE(v114) < 0)
  {
    operator delete(__p.__sig);
  }

  *(v20 + 72) = v24;
  v29 = a6[12];
  v30 = a6[13];
  if (v29 == v30)
  {
LABEL_24:
    v31 = 0;
  }

  else
  {
    while ((*(v29 + 23) & 0x80000000) == 0 || *(v29 + 8) != 73 || memcmp(*v29, "http://www.ietf.org/id/draft-holmer-rmcat-transport-wide-cc-extensions-01", 0x49uLL))
    {
      v29 += 32;
      if (v29 == v30)
      {
        goto LABEL_24;
      }
    }

    v31 = 1;
  }

  *(v20 + 73) = v31;
  *(v20 + 80) = a3;
  pthread_mutexattr_init(&__p);
  pthread_mutexattr_setpolicy_np(&__p, 3);
  pthread_mutex_init((v20 + 88), &__p);
  pthread_mutexattr_destroy(&__p);
  *(v20 + 152) = 0;
  v32 = *a12;
  *a12 = 0;
  *(v20 + 160) = v32;
  *(v20 + 168) = 1;
  v33 = *a15;
  *a15 = 0;
  v125 = 0;
  LOBYTE(v126) = 0;
  v127 = 0;
  v128 = 0;
  *__p.__opaque = 0;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  memset(v122, 0, 21);
  v123 = 0;
  memset(v124, 0, sizeof(v124));
  v130 = 0;
  memset(&v129, 0, sizeof(v129));
  LOWORD(__p.__sig) = 0;
  v114 = a8;
  v115 = *(a9 + 1);
  *&v116 = (*(*a10 + 136))(a10);
  v35 = (*(*a10 + 56))(a10);
  v36 = *a9;
  *(&v116 + 1) = v35;
  v37 = a9[7];
  v38 = a9[3];
  *&v118 = v36;
  *(&v118 + 1) = v37;
  *(&v119 + 1) = v38;
  v39 = (*(*a10 + 64))(a10);
  v40 = a9[5];
  *&v120 = v39;
  v41 = a9[8];
  *&v121 = v40;
  *(&v121 + 1) = v41;
  (*(*v96[1] + 16))(&v99);
  v42 = 0;
  v43 = v103;
  if ((v103 & 0x80u) != 0)
  {
    v43 = v100;
  }

  if (v43 >= 8)
  {
    v89 = v99;
    if ((v103 & 0x80u) == 0)
    {
      v89 = &v99;
    }

    v42 = *v89 == 0x64656C6261736944;
    v98 = a14;
    v44 = a6;
    if ((v103 & 0x80000000) == 0)
    {
LABEL_29:
      v97 = a13;
      if (!v42)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v98 = a14;
    v44 = a6;
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  operator delete(v99);
  v97 = a13;
  if (!v42)
  {
LABEL_31:
    v122[1] = a9[4];
    *v124 = v97;
    v124[8] = *(v98 + 4);
    v124[9] = *(v44 + 88);
    LODWORD(v122[2]) = a7;
    v130 = *(v44 + 288);
    *(v20 + 184) = 0;
    *(v20 + 192) = 0;
    *(v20 + 176) = 0;
    v45 = *v44;
    v46 = v44[1] - *v44;
    if (!v46)
    {
      goto LABEL_98;
    }

    v47 = v46 >> 2;
    v94 = (a4 + 8);
    v102 = 0;
    LOBYTE(v107) = 0;
    v108 = 0;
    v99 = 0;
    v100 = 0;
    LOBYTE(v101) = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v110 = 0;
    v111 = 0;
    v109 = 0;
    v125 = *v45;
    if ((v44[25] & 0x80000000) != 0)
    {
      if ((*(v44 + 47) & 0x80000000) != 0)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL;
        *(&v120 + 1) = 0;
        v66 = *v44;
        v67 = v44[1];
        v68 = (v67 - *v44) >> 2;
        if (!v68)
        {
          goto LABEL_97;
        }

        goto LABEL_66;
      }

      v20 = 0xAAAAAAAAAAAAAAABLL;
      {
        operator new();
      }
    }

    else
    {
      v48 = *(v44 + 51);
      if (!v48)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v59, v60, v61, v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc");
        }

        v20 = 0xAAAAAAAAAAAAAAABLL;
        *(&v120 + 1) = 0;
        v66 = *v44;
        v67 = v44[1];
        v68 = (v67 - *v44) >> 2;
        if (!v68)
        {
          goto LABEL_97;
        }

        goto LABEL_66;
      }

      v49 = v44[27];
      v50 = v44[26];
      if (v50 == v49)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL;
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v51 = (v49 - v50);
        v20 = 0xAAAAAAAAAAAAAAABLL;
        if ((v49 - v50) < 5)
        {
          if (!v47)
          {
            goto LABEL_97;
          }

          v69 = *v45;
          v70 = v44[26];
          while (*v70 != v69)
          {
            v70 += 4;
            if (v70 == v49)
            {
              goto LABEL_65;
            }
          }

          if (v70 != v49)
          {
            v71 = (a4 + 8);
            v72 = *v94;
            if (!*v94)
            {
              goto LABEL_95;
            }

            do
            {
              v73 = *(v72 + 32);
              v74 = v73 >= v48;
              v75 = v73 < v48;
              if (v74)
              {
                v71 = v72;
              }

              v72 = *(v72 + 8 * v75);
            }

            while (v72);
            if (v71 == v94)
            {
LABEL_95:
              if (v51 != 4)
              {
                goto LABEL_97;
              }
            }

            else if (v51 != 4)
            {
              goto LABEL_97;
            }

            operator new();
          }
        }

        else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
LABEL_47:
          webrtc::webrtc_logging_impl::Log("\r\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc");
          *(&v120 + 1) = 0;
          v66 = *v44;
          v67 = v44[1];
          v68 = (v67 - *v44) >> 2;
          if (!v68)
          {
            goto LABEL_97;
          }

LABEL_66:
          v76 = v44[29];
          v77 = v44[30];
          if (v76 == v77)
          {
            v80 = 0;
            v79 = 0;
          }

          else
          {
            if (v67 == v66)
            {
LABEL_71:
              v79 = 0;
            }

            else
            {
              v78 = 0;
              while (v66[v78] != *v66)
              {
                if (v68 == ++v78)
                {
                  goto LABEL_71;
                }
              }

              if (v78 >= (v77 - v76) >> 2)
              {
                goto LABEL_97;
              }

              v79 = *(v76 + 4 * v78);
            }

            v80 = 0x100000000;
          }

          v127 = BYTE4(v80);
          v126 = v79 | v80;
          v81 = v44[3];
          if (0xAAAAAAAAAAAAAAABLL * ((v44[4] - v81) >> 3))
          {
            if ((*(v81 + 23) & 0x80000000) == 0)
            {
              v82 = *v81;
              v112.__r_.__value_.__r.__words[2] = *(v81 + 2);
              *&v112.__r_.__value_.__l.__data_ = v82;
              v83 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
              v84 = SHIBYTE(v112.__r_.__value_.__r.__words[2]);
              if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_79;
              }

LABEL_88:
              if ((v84 & 0x80000000) == 0)
              {
                v129 = v112;
                goto LABEL_92;
              }

              std::string::__assign_no_alias<true>(&v129, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
              if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_91;
              }

              goto LABEL_92;
            }

            std::string::__init_copy_ctor_external(&v112, *v81, *(v81 + 1));
            v83 = HIBYTE(v112.__r_.__value_.__r.__words[2]);
            v84 = SHIBYTE(v112.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v83 = 0;
            *(&v112.__r_.__value_.__s + 23) = 0;
            v112.__r_.__value_.__s.__data_[0] = 0;
            v84 = 0;
            if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_88;
            }
          }

LABEL_79:
          if (v84 >= 0)
          {
            v85 = &v112;
          }

          else
          {
            v85 = v112.__r_.__value_.__r.__words[0];
          }

          if (v84 >= 0)
          {
            size = v83;
          }

          else
          {
            size = v112.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(&v129, v85, size);
          if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_91:
            operator delete(v112.__r_.__value_.__l.__data_);
          }

LABEL_92:
          LOBYTE(v128) = *(v44 + 176);
          operator new();
        }
      }
    }

LABEL_65:
    *(&v120 + 1) = 0;
    v66 = *v44;
    v67 = v44[1];
    v68 = (v67 - *v44) >> 2;
    if (v68)
    {
      goto LABEL_66;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }

    if (v123)
    {
      (*(*v123 + 8))(v123);
    }

    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    webrtc::RtpConfig::RtpConfig((v20 + 200), v44);
    *(v20 + 496) = a10;
    *(v20 + 504) = 0;
    (*(*v96[1] + 16))(&__p);
    v87 = HIBYTE(v114);
    if (v114 < 0)
    {
      v87 = *__p.__opaque;
    }

    if (v87 >= 8)
    {
      p_p = __p.__sig;
      if (v114 >= 0)
      {
        p_p = &__p;
      }

      v88 = p_p->__sig == 0x64656C6261736944;
      if ((SHIBYTE(v114) & 0x80000000) == 0)
      {
LABEL_118:
        *(v20 + 512) = v88;
        *(v20 + 520) = 0u;
        *(v20 + 536) = 0u;
        *(v20 + 580) = 0;
        *(v20 + 556) = 0;
        *(v20 + 564) = 0u;
        v92 = *v44;
        v91 = v44[1];
        *(v20 + 584) = 0u;
        *(v20 + 600) = 0;
        v93 = v91 - v92;
        if (v93)
        {
          if (!((v93 >> 2) >> 61))
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        *(v20 + 608) = a9[6];
        *(v20 + 624) = 0uLL;
        *(v20 + 616) = v20 + 624;
        operator new();
      }
    }

    else
    {
      v88 = 0;
      if ((SHIBYTE(v114) & 0x80000000) == 0)
      {
        goto LABEL_118;
      }
    }

    operator delete(__p.__sig);
    goto LABEL_118;
  }

LABEL_30:
  v122[0] = a11;
  goto LABEL_31;
}

void webrtc::RtpVideoSender::~RtpVideoSender(webrtc::RtpVideoSender *this)
{
  *this = &unk_28829DF70;
  *(this + 1) = &unk_28829E030;
  *(this + 2) = &unk_28829E058;
  *(this + 3) = &unk_28829E088;
  webrtc::RtpVideoSender::SetActiveModulesLocked(this, 0);
  v2 = *(this + 80);
  *(v2 + 4) = 0;
  if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 78));
  v3 = *(this + 73);
  if (v3)
  {
    *(this + 74) = v3;
    operator delete(v3);
  }

  v4 = *(this + 70);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 65);
  if (v5)
  {
    v6 = *(this + 66);
    v7 = *(this + 65);
    if (v6 != v5)
    {
      v8 = v6 - 968;
      do
      {
        v10 = *(v8 + 816);
        if (v10)
        {
          *(v8 + 824) = v10;
          operator delete(v10);
        }

        if (*(v8 + 232))
        {
          operator delete(*(v8 + 240));
        }

        if (*v8)
        {
          absl::inlined_vector_internal::Storage<webrtc::FrameDependenciesCalculator::BufferUsage,4ul,std::allocator<webrtc::FrameDependenciesCalculator::BufferUsage>>::DestroyContents(v8);
        }

        v9 = v8 == v5;
        v8 -= 968;
      }

      while (!v9);
      v7 = *(this + 65);
    }

    *(this + 66) = v5;
    operator delete(v7);
  }

  webrtc::RtpConfig::~RtpConfig(this + 25);
  v11 = *(this + 22);
  if (v11)
  {
    v12 = *(this + 23);
    v13 = *(this + 22);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        *(v12 - 1) = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = *(v12 - 2);
        *(v12 - 2) = 0;
        if (v15)
        {
          (*(*v15 + 32))(v15);
        }

        v17 = *(v12 - 3);
        v12 -= 3;
        v16 = v17;
        *v12 = 0;
        if (v17)
        {
          webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(v16);
          MEMORY[0x2743DA540]();
        }
      }

      while (v12 != v11);
      v13 = *(this + 22);
    }

    *(this + 23) = v11;
    operator delete(v13);
  }

  v18 = *(this + 20);
  *(this + 20) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  pthread_mutex_destroy((this + 88));
  v19 = *(this + 4);
  if (v19)
  {
    if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }
}

{
  webrtc::RtpVideoSender::~RtpVideoSender(this);

  JUMPOUT(0x2743DA540);
}

void webrtc::RtpVideoSender::SetActiveModulesLocked(webrtc::RtpVideoSender *this, int a2)
{
  if (*(this + 152) != a2)
  {
    v2 = a2;
    *(this + 152) = a2;
    v4 = *(this + 22);
    v5 = *(this + 23);
    if (v4 != v5)
    {
      if (a2)
      {
        do
        {
          v6 = *v4;
          if (((*(**v4 + 288))(*v4) & 1) == 0)
          {
            (*(*v6 + 264))(v6, 1);
            (*(*v6 + 280))(v6, 1);
            (*(**(this + 62) + 40))(*(this + 62), v6);
          }

          v4 += 3;
        }

        while (v4 != v5);
      }

      else
      {
        do
        {
          v7 = *v4;
          if ((*(**v4 + 288))(*v4))
          {
            (*(*v7 + 264))(v7, 0);
            (*(*v7 + 280))(v7, 0);
            (*(**(this + 62) + 48))(*(this + 62), v7);
          }

          v4 += 3;
        }

        while (v4 != v5);
      }
    }

    v8 = (*(**(this + 62) + 104))(*(this + 62));
    if (v2)
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      v10 = *(this + 25);
      v9 = *(this + 26);
      if (v9 != v10)
      {
        if (((v9 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      (**v8)(v8, &__p, this + 24);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v11 = *(*v8 + 8);

      v11();
    }
  }
}

void non-virtual thunk towebrtc::RtpVideoSender::~RtpVideoSender(webrtc::RtpVideoSender *this)
{
  webrtc::RtpVideoSender::~RtpVideoSender((this - 8));
}

{
  webrtc::RtpVideoSender::~RtpVideoSender((this - 16));
}

{
  webrtc::RtpVideoSender::~RtpVideoSender((this - 24));
}

{
  webrtc::RtpVideoSender::~RtpVideoSender((this - 8));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoSender::~RtpVideoSender((this - 16));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoSender::~RtpVideoSender((this - 24));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::RtpVideoSender::SetSending(webrtc::RtpVideoSender *this, int a2)
{
  pthread_mutex_lock((this + 88));
  if (*(this + 152) != a2)
  {
    webrtc::RtpVideoSender::SetActiveModulesLocked(this, a2);
  }

  return pthread_mutex_unlock((this + 88));
}

BOOL webrtc::RtpVideoSender::IsActive(webrtc::RtpVideoSender *this)
{
  pthread_mutex_lock((this + 88));
  if (*(this + 152) == 1)
  {
    v2 = *(this + 22) != *(this + 23);
    pthread_mutex_unlock((this + 88));
    return v2;
  }

  else
  {
    pthread_mutex_unlock((this + 88));
    return 0;
  }
}

uint64_t webrtc::RtpVideoSender::OnEncodedImage(webrtc::RtpVideoSender *this, const webrtc::EncodedImage *a2, const webrtc::CodecSpecificInfo *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  (*(**(this + 20) + 48))(*(this + 20), *(a2 + 18), *(a2 + 6));
  pthread_mutex_lock((this + 88));
  if (*(this + 152) != 1)
  {
    goto LABEL_12;
  }

  ++*(this + 63);
  v6 = *(a2 + 156) & ((*(a2 + 156) << 31) >> 63);
  v7 = *(this + 22);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v7) >> 3) <= v6)
  {
    goto LABEL_94;
  }

  v8 = *(a2 + 38);
  v9 = *(*(v7 + 24 * v6) + 64);
  pthread_mutex_lock((v9 + 1072));
  v10 = *(v9 + 1192);
  pthread_mutex_unlock((v9 + 1072));
  v11 = *(this + 22);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v11) >> 3) <= v6)
  {
    goto LABEL_94;
  }

  v12 = *(v11 + 24 * v6);
  v13 = *(a2 + 38);
  v14 = *(a2 + 2);
  webrtc::RtpConfig::GetStreamConfig((this + 200), v6, v77);
  v15 = webrtc::ModuleRtpRtcpImpl2::OnSendingRtpFrame(v12, v13, v14, v83, *(a2 + 6) == 3);
  if (v82 < 0)
  {
    operator delete(v81);
    if ((SHIBYTE(v80) & 0x80000000) == 0)
    {
LABEL_6:
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_12:
      v17 = 0;
      v18 = 1;
LABEL_93:
      pthread_mutex_unlock((this + 88));
      return v17 | v18;
    }
  }

  else if ((SHIBYTE(v80) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v78);
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a2 + 312) == 1)
  {
    v16 = *(this + 22);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v16) >> 3) <= v6)
    {
      goto LABEL_94;
    }

    webrtc::ModuleRtpRtcpImpl2::ExpectedRetransmissionTime(*(v16 + 24 * v6));
  }

  if (*(a2 + 6) != 3)
  {
LABEL_65:
    v69 = v10;
    if (*(this + 512))
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v46 = *(this + 63);
      v45 = 1;
    }

    v47 = *(this + 22);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v47) >> 3) <= v6)
    {
      goto LABEL_94;
    }

    v68 = v46;
    v48 = v8;
    v67 = *(v47 + 24 * v6 + 8);
    webrtc::RtpConfig::GetStreamConfig((this + 200), v6, v70);
    v49 = v75;
    webrtc::RtpConfig::GetStreamConfig((this + 200), v6, v77);
    if (v84)
    {
      v53 = 0;
      v54 = 0;
      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v53 = webrtc::PayloadStringToCodecType(&v81);
      v54 = 0x100000000;
      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    operator delete(v81);
LABEL_74:
    if (SHIBYTE(v80) < 0)
    {
      operator delete(v78);
    }

    v55 = *(this + 65);
    if (0x1B810ECF56BE69C9 * ((*(this + 66) - v55) >> 3) <= v6)
    {
      goto LABEL_94;
    }

    v56 = (v69 + v48);
    webrtc::RtpPayloadParams::GetRtpVideoHeader(v55 + 968 * v6, a2, a3, v68, v45, v50, v51, v52, v76);
    v57 = webrtc::RTPSenderVideo::SendEncodedImage(v67, v49, v54 | v53);
    webrtc::RTPVideoHeader::~RTPVideoHeader(v76);
    if (v74 < 0)
    {
      operator delete(__p);
      if ((v72 & 0x80000000) == 0)
      {
LABEL_79:
        v58 = *(this + 76);
        if (!v58)
        {
LABEL_90:
          v18 = v57 ^ 1u;
          if (v57)
          {
            v17 = v56 << 32;
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_93;
        }

LABEL_83:
        v59 = *(this + 73);
        if (v6 >= (*(this + 74) - v59) >> 3)
        {
          goto LABEL_94;
        }

        v60 = (v59 + 8 * v6);
        v61 = *(a2 + 6);
        v62 = v60;
        if (v61 != 3)
        {
          if (v61 != 4)
          {
            goto LABEL_88;
          }

          v62 = v60 + 1;
        }

        ++*v62;
LABEL_88:
        if (v6 < (*(this + 26) - *(this + 25)) >> 2)
        {
          (*(*v58 + 16))(v58);
          goto LABEL_90;
        }

LABEL_94:
        __break(1u);
      }
    }

    else if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    operator delete(v71);
    v58 = *(this + 76);
    if (!v58)
    {
      goto LABEL_90;
    }

    goto LABEL_83;
  }

  v19 = *(a2 + 23);
  if (!a3)
  {
LABEL_26:
    if ((v19 & 0x100000000) != 0 && v19 >= 1)
    {
      goto LABEL_65;
    }

    goto LABEL_28;
  }

  if (*(a3 + 1848) != 1)
  {
    if (*a3 <= 4u && ((1 << *a3) & 0x13) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v20 = *(a3 + 218);
  v21 = *(a3 + 219);
  if ((v20 & 1) == 0)
  {
    v21 = a3 + 1752;
  }

  if (v20 >= 2)
  {
    v22 = 8 * (v20 >> 1) - 8;
    v23 = v21 + 4;
    do
    {
      v25 = *v23;
      v23 += 8;
      v24 = v25;
      if (v25)
      {
        break;
      }

      v26 = v22;
      v22 -= 8;
    }

    while (v26);
    if (v24)
    {
      goto LABEL_65;
    }
  }

LABEL_28:
  v27 = *(this + 22);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v27) >> 3) <= v6)
  {
    goto LABEL_94;
  }

  v28 = *(v27 + 24 * v6 + 8);
  if (!a3 || *(a3 + 1984) != 1)
  {
    v35 = *(this + 65);
    if (0x1B810ECF56BE69C9 * ((*(this + 66) - v35) >> 3) <= v6)
    {
      goto LABEL_94;
    }

    webrtc::RtpPayloadParams::GenericStructure(v35 + 968 * v6, a3, v77);
    v36 = *(v28 + 143);
    if (v89 == 1)
    {
      if (v36)
      {
        pthread_mutex_lock((v36 + 8));
        v37 = *(v36 + 72);
        if (!v37)
        {
          goto LABEL_95;
        }

        v38 = *(*v37 + 8);
        goto LABEL_42;
      }

      v40 = v77;
      v41 = v28;
    }

    else
    {
      if (v36)
      {
        pthread_mutex_lock((v36 + 8));
        v39 = *(v36 + 72);
        if (!v39)
        {
          goto LABEL_95;
        }

        v38 = *(*v39 + 8);
LABEL_42:
        v38();
        pthread_mutex_unlock((v36 + 8));
        if (v89 != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_47;
      }

      v41 = v28;
      v40 = 0;
    }

    webrtc::RTPSenderVideo::SetVideoStructureInternal(v41, v40);
    if (v89 != 1)
    {
      goto LABEL_65;
    }

LABEL_47:
    v42 = v87;
    if (!v87)
    {
LABEL_60:
      if (v85)
      {
        operator delete(v86);
      }

      if (v79)
      {
        operator delete(v80);
      }

      goto LABEL_65;
    }

    v43 = v88;
    v44 = v87;
    if (v88 == v87)
    {
LABEL_59:
      v88 = v42;
      operator delete(v44);
      goto LABEL_60;
    }

    while (1)
    {
      if (*(v43 - 3))
      {
        operator delete(*(v43 - 2));
        if ((*(v43 - 6) & 1) == 0)
        {
LABEL_53:
          if (*(v43 - 12))
          {
            goto LABEL_57;
          }

          goto LABEL_50;
        }
      }

      else if ((*(v43 - 6) & 1) == 0)
      {
        goto LABEL_53;
      }

      operator delete(*(v43 - 5));
      if (*(v43 - 12))
      {
LABEL_57:
        operator delete(*(v43 - 11));
      }

LABEL_50:
      v43 -= 13;
      if (v43 == v42)
      {
        v44 = v87;
        goto LABEL_59;
      }
    }
  }

  v29 = *(v28 + 143);
  if (!v29)
  {
    webrtc::RTPSenderVideo::SetVideoStructureInternal(v28, (a3 + 1856));
    goto LABEL_65;
  }

  pthread_mutex_lock((v29 + 8));
  v34 = *(v29 + 72);
  if (v34)
  {
    (*(*v34 + 8))(v34, a3 + 1856);
    pthread_mutex_unlock((v29 + 8));
    goto LABEL_65;
  }

LABEL_95:
  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender_video_frame_transformer_delegate.cc", 263, "sender_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v30, v31, v32, v33, v66);
  return webrtc::RtpVideoSender::OnBitrateAllocationUpdated(v64, v65);
}

void webrtc::RtpVideoSender::OnBitrateAllocationUpdated(webrtc::RtpVideoSender *this, const webrtc::VideoBitrateAllocation *a2)
{
  pthread_mutex_lock((this + 88));
  if (*(this + 152) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(this + 22);
  v5 = *(this + 23);
  if (v4 == v5)
  {
    goto LABEL_14;
  }

  if (v5 - v4 == 24)
  {
    webrtc::RTCPSender::SetVideoBitrateAllocation((*v4 + 72), a2);
LABEL_14:
    pthread_mutex_unlock((this + 88));
    return;
  }

  webrtc::VideoBitrateAllocation::GetSimulcastAllocations(a2, &v55);
  v6 = *(this + 22);
  if (*(this + 23) == v6)
  {
LABEL_12:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (0x82FA0BE82FA0BE83 * ((v56 - v55) >> 2) > v9)
  {
    v11 = &v55[v8];
    v12 = *(v6 + v7);
    if (v55[v8 + 168] == 1)
    {
      v10 = (v12 + 72);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
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
      v10 = (v12 + 72);
      v11 = &v13;
    }

    webrtc::RTCPSender::SetVideoBitrateAllocation(v10, v11);
    ++v9;
    v6 = *(this + 22);
    v8 += 172;
    v7 += 24;
    if (v9 >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 23) - v6) >> 3))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t webrtc::RtpVideoSender::OnVideoLayersAllocationUpdated(uint64_t a1, int *a2)
{
  v30[28] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a1 + 88));
  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 176);
    v5 = *(a1 + 184);
    if (v4 != v5)
    {
      v6 = 0;
      while (1)
      {
        v27 = *a2;
        v28 = *(a2 + 4);
        v29 = 0;
        if (*(a2 + 1) >= 2uLL)
        {
          absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::InitFrom(&v29, a2 + 1);
          v4 = *(a1 + 176);
          v5 = *(a1 + 184);
        }

        v27 = v6;
        if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) <= v6)
        {
LABEL_34:
          __break(1u);
        }

        v8 = *(v4 + 24 * v6 + 8);
        v23 = v27;
        v24 = v28;
        v9 = v29;
        if ((v29 & 1) == 0)
        {
          break;
        }

        v25[1] = v30[0];
        v25[2] = v30[1];
        v25[0] = v29;
        v29 = 0;
        webrtc::RTPSenderVideo::SetVideoLayersAllocation(v8, &v23);
        if (v25[0])
        {
          goto LABEL_16;
        }

LABEL_17:
        if (v29)
        {
          absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(&v29);
        }

        ++v6;
        v4 = *(a1 + 176);
        v5 = *(a1 + 184);
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
        if (v6 >= v7)
        {
          if (v5 != v4)
          {
            if (((v5 - v4) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v17 = *(a2 + 2);
          v16 = a2 + 4;
          v15 = v17;
          v18 = *(v16 - 1);
          if ((v18 & 1) == 0)
          {
            v15 = v16;
          }

          if (v18 < 2)
          {
LABEL_25:
            v19 = *(a1 + 640);
            if (v19)
            {
              atomic_fetch_add_explicit(v19, 1u, memory_order_relaxed);
            }

            operator new();
          }

          v21 = 56 * (v18 >> 1);
          while (1)
          {
            v22 = *v15;
            if (v22 < v7)
            {
              if (v7 <= v22)
              {
                goto LABEL_34;
              }

              *((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) |= 1 << v22;
            }

            v15 += 14;
            v21 -= 56;
            if (!v21)
            {
              goto LABEL_25;
            }
          }
        }
      }

      if (v29)
      {
        v10 = v29 >> 1;
        v11 = &v26;
        v12 = v30;
        do
        {
          v13 = *(v12 + 1);
          *(v11 - 1) = *v12;
          *v11 = v13;
          *(v11 + 1) = *(v12 + 2);
          v12[1] = 0;
          *(v11 + 8) = *(v12 + 12);
          v14 = *(v12 + 52);
          v12 += 7;
          *(v11 + 36) = v14;
          v11 += 7;
          --v10;
        }

        while (v10);
        v9 = v29 & 0xFFFFFFFFFFFFFFFELL;
      }

      v25[0] = v9;
      webrtc::RTPSenderVideo::SetVideoLayersAllocation(v8, &v23);
      if (!v25[0])
      {
        goto LABEL_17;
      }

LABEL_16:
      absl::inlined_vector_internal::Storage<webrtc::VideoLayersAllocation::SpatialLayer,4ul,std::allocator<webrtc::VideoLayersAllocation::SpatialLayer>>::DestroyContents(v25);
      goto LABEL_17;
    }
  }

  return pthread_mutex_unlock((a1 + 88));
}

void webrtc::RtpVideoSender::DeliverRtcp(webrtc::RtpVideoSender *this, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(this + 22);
  v4 = *(this + 23);
  if (v3 != v4)
  {
    if (a3)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      v7 = *v3;
      v3 += 3;
      webrtc::RTCPReceiver::IncomingPacket(v7 + 768, v6, a3);
    }

    while (v3 != v4);
  }
}

uint64_t webrtc::RtpVideoSender::OnNetworkAvailability(uint64_t this, char a2)
{
  v2 = *(this + 176);
  v3 = *(this + 184);
  if (v2 != v3)
  {
    if (a2)
    {
      v4 = this;
      do
      {
        v5 = *v2;
        v6 = *(v4 + 272);
        pthread_mutex_lock((*v2 + 184));
        if (v6)
        {
          if (!*(v5 + 128))
          {
            v7 = *(v5 + 144) / 2;
            v8 = (*(**(v5 + 88) + 16))(*(v5 + 88));
            v9 = v8 + v7;
            if (v8 == 0x8000000000000000)
            {
              v9 = 0x8000000000000000;
            }

            if (v8 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v9 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if ((*(v5 + 264) & 1) == 0)
            {
              *(v5 + 264) = 1;
            }

            *(v5 + 256) = v9;
            v10 = *(v5 + 176);
            if (v10)
            {
              v12 = v7;
              (*(*v10 + 48))(v10, &v12);
            }
          }
        }

        else if (*(v5 + 264) == 1)
        {
          *(v5 + 264) = 0;
        }

        *(v5 + 128) = v6;
        this = pthread_mutex_unlock((v5 + 184));
        v2 += 3;
      }

      while (v2 != v3);
    }

    else
    {
      do
      {
        v11 = *v2;
        pthread_mutex_lock((*v2 + 184));
        if (*(v11 + 264) == 1)
        {
          *(v11 + 264) = 0;
        }

        *(v11 + 128) = 0;
        this = pthread_mutex_unlock((v11 + 184));
        v2 += 3;
      }

      while (v2 != v3);
    }
  }

  return this;
}

uint64_t webrtc::RtpVideoSender::GetRtpStates@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = this;
  a2[1] = 0;
  a2[2] = 0;
  v37 = a2 + 1;
  *a2 = a2 + 1;
  v3 = *(this + 200);
  if (*(this + 208) != v3)
  {
    v4 = 0;
    do
    {
      v6 = *(v2 + 176);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 184) - v6) >> 3) <= v4)
      {
        goto LABEL_32;
      }

      v7 = *(v3 + 4 * v4);
      v8 = *(v6 + 24 * v4);
      v9 = *(v8 + 64);
      pthread_mutex_lock((v9 + 1072));
      v10 = *(v9 + 1192);
      v35 = *(v9 + 1249);
      this = pthread_mutex_unlock((v9 + 1072));
      v11 = *(v8 + 64);
      v12 = *(v11 + 408);
      v13 = *(v11 + 416);
      v14 = *(v11 + 424);
      v15 = v37;
LABEL_7:
      v16 = *v15;
      if (!*v15)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        v15 = v16;
        v17 = *(v16 + 32);
        if (v7 < v17)
        {
          goto LABEL_7;
        }

        if (v17 >= v7)
        {
          break;
        }

        v16 = v15[1];
        if (!v16)
        {
          goto LABEL_11;
        }
      }

      *(v15 + 20) = v12;
      *(v15 + 11) = v10;
      *(v15 + 12) = v13;
      *(v15 + 7) = v14;
      *(v15 + 72) = v35;
      v18 = *(v2 + 176);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 184) - v18) >> 3) <= v4)
      {
        goto LABEL_32;
      }

      this = *(v18 + 24 * v4 + 16);
      if (this)
      {
        this = (*(*this + 72))(v38);
        if (v40 == 1)
        {
          v19 = *(v2 + 404);
          v20 = v37;
LABEL_16:
          v21 = *v20;
          if (!*v20)
          {
LABEL_20:
            operator new();
          }

          while (1)
          {
            v20 = v21;
            v22 = *(v21 + 32);
            if (v19 < v22)
            {
              goto LABEL_16;
            }

            if (v22 >= v19)
            {
              break;
            }

            v21 = v20[1];
            if (!v21)
            {
              goto LABEL_20;
            }
          }

          v5 = v38[1];
          *(v20 + 5) = v38[0];
          *(v20 + 7) = v5;
          *(v20 + 72) = v39;
        }
      }

      ++v4;
      v3 = *(v2 + 200);
    }

    while (v4 < (*(v2 + 208) - v3) >> 2);
  }

  v23 = *(v2 + 432);
  if (*(v2 + 440) != v23)
  {
    v24 = 0;
    v36 = vnegq_f64(0);
    while (1)
    {
      v25 = *(v2 + 176);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 184) - v25) >> 3) <= v24)
      {
        break;
      }

      v26 = *(v23 + 4 * v24);
      v27 = *(v25 + 24 * v24);
      v28 = *(v27 + 64);
      pthread_mutex_lock((v28 + 1072));
      v29 = *(v28 + 1192);
      v30 = *(v28 + 1250);
      this = pthread_mutex_unlock((v28 + 1072));
      v31 = *(*(v27 + 64) + 410);
      v32 = v37;
LABEL_26:
      v33 = *v32;
      if (!*v32)
      {
LABEL_30:
        operator new();
      }

      while (1)
      {
        v32 = v33;
        v34 = *(v33 + 32);
        if (v26 < v34)
        {
          goto LABEL_26;
        }

        if (v34 >= v26)
        {
          break;
        }

        v33 = v32[1];
        if (!v33)
        {
          goto LABEL_30;
        }
      }

      *(v32 + 20) = v31;
      *(v32 + 11) = v29;
      *(v32 + 12) = 0;
      *(v32 + 7) = v36;
      *(v32 + 72) = v30;
      ++v24;
      v23 = *(v2 + 432);
      if (v24 >= (*(v2 + 440) - v23) >> 2)
      {
        return this;
      }
    }

LABEL_32:
    __break(1u);
  }

  return this;
}

uint64_t webrtc::RtpVideoSender::GetRtpPayloadStates@<X0>(webrtc::RtpVideoSender *this@<X0>, void *a2@<X8>)
{
  pthread_mutex_lock((this + 88));
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v5 = *(this + 65);
  v6 = *(this + 66);
  while (v5 != v6)
  {
    v16 = *(v5 + 952);
    v7 = *(v5 + 932);
    v8 = *v4;
    if (!*v4)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 8);
        if (v7 >= v10)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v7)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    *(v9 + 5) = *(v5 + 936);
    v9[7] = v16;
    v11 = *(v5 + 932);
    v12 = *v4;
    if (!*v4)
    {
LABEL_17:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 32);
        if (v11 >= v14)
        {
          break;
        }

        v12 = *v13;
        if (!*v13)
        {
          goto LABEL_17;
        }
      }

      if (v14 >= v11)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    v13[6] = *(this + 63);
    v5 += 968;
  }

  return pthread_mutex_unlock((this + 88));
}

uint64_t webrtc::RtpVideoSender::OnTransportOverheadChanged(webrtc::RtpVideoSender *this, uint64_t a2)
{
  pthread_mutex_lock((this + 88));
  *(this + 68) = a2;
  if ((1500 - a2) >= *(this + 35))
  {
    v4 = *(this + 35);
  }

  else
  {
    v4 = 1500 - a2;
  }

  v5 = *(this + 22);
  v6 = *(this + 23);
  while (v5 != v6)
  {
    v7 = *v5;
    pthread_mutex_lock((*v5 + 184));
    *(v7 + 456) = v4;
    pthread_mutex_unlock((v7 + 184));
    v8 = *(v7 + 64);
    if (v8)
    {
      pthread_mutex_lock((v8 + 1072));
      *(v8 + 1144) = v4;
      pthread_mutex_unlock((v8 + 1072));
    }

    v5 += 3;
  }

  return pthread_mutex_unlock((this + 88));
}

uint64_t webrtc::RtpVideoSender::OnBitrateUpdated(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = pthread_mutex_lock((a1 + 88));
  v7 = *(a1 + 176);
  v8 = *(a1 + 184);
  if (v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v12 = *(*v7 + 64);
      if (v12)
      {
        pthread_mutex_lock((v12 + 1072));
        v13 = *(v12 + 1136);
        v6 = pthread_mutex_unlock((v12 + 1072));
        if (v13 == 1)
        {
          v14 = *(*v7 + 64);
          if (v14)
          {
            pthread_mutex_lock((v14 + 1072));
            v11 = *(v14 + 1176);
            v6 = pthread_mutex_unlock((v14 + 1072));
          }

          else
          {
            v11 = 0;
          }

          v10 += v11;
          ++v9;
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
    if (v9 > 1)
    {
      v10 /= v9;
    }
  }

  v15 = *(a1 + 544);
  v16 = v15 + v10;
  v17 = *(a1 + 280) + v15;
  v18 = *a2;
  if (*(a1 + 73) == 1)
  {
    v19 = 125 * v18;
    if (*(a1 + 72) == 1)
    {
      v20 = 1000;
      if (1000 * a3 > 1000)
      {
        v20 = 1000 * a3;
      }

      v21 = INFINITY;
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = v17;
      }

      if (v17 == 0x8000000000000000)
      {
        v21 = -INFINITY;
      }

      v22 = v20 * vcvtpd_s64_f64((v19 / v20) / v21);
    }

    else
    {
      v22 = v19 / v17;
    }

    v23 = ((v22 + 999) * 0x20C49BA5E353F7CFLL) >> 64;
    v24 = ((8000 * ((v23 >> 7) + (v23 >> 63)) * v16 + 500) * 0xDF3B645A1CAC0831) >> 64;
    v18 = (v24 >> 7) + (v24 >> 63) + v18;
    v25 = (v18 >> 63) | (2 * (v18 > 0xFFFFFFFFLL));
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_101;
      }

      v18 = 0xFFFFFFFFLL;
    }

    else if (v25)
    {
      v18 = 0;
    }
  }

  v26 = *(a1 + 160);
  v27 = *(a2 + 2) * 256.0;
  v28 = (v27 < 0.0) | (2 * (v27 > 255.0));
  if (v28 > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_101;
    }

    v29 = 255;
  }

  else if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  std::vector<BOOL>::vector(__p, a1 + 560);
  v30 = *(a2 + 3);
  v31 = v30 / 0x3E8uLL;
  if (v30 % 0x3E8uLL > 0x1F3)
  {
    ++v31;
  }

  if (-v30 % 0x3E8uLL <= 0x1F4)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 - -v30 / 0x3E8uLL;
  if (v30 < 0)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  *(a1 + 556) = (*(*v26 + 40))(v26, v18, a3, v29, __p, v34);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 556) = v18;
  }

  v35 = *(a1 + 176);
  if (*(a1 + 184) == v35)
  {
    LODWORD(v38) = 0;
  }

  else
  {
    v67 = v17;
    v68 = v16;
    v69 = a3;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = v38;
      v40 = *(*(v35 + v36) + 64);
      if (v40 && (pthread_mutex_lock((v40 + 1072)), v41 = *(v40 + 1136), v6 = pthread_mutex_unlock((v40 + 1072)), v41 == 1))
      {
        v42 = *(a1 + 176);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - v42) >> 3) <= v37)
        {
          __break(1u);
LABEL_101:
          webrtc::webrtc_checks_impl::UnreachableCodeReached(v6);
        }

        v43 = *(v42 + v36 + 8);
        pthread_mutex_lock((v43 + 784));
        v44 = (*(**(v43 + 16) + 16))(*(v43 + 16));
        v45 = v44 / 0x3E8uLL;
        if (v44 % 0x3E8uLL > 0x1F3)
        {
          ++v45;
        }

        if (-v44 % 0x3E8uLL <= 0x1F4)
        {
          v46 = 0;
        }

        else
        {
          v46 = -1;
        }

        v47 = v46 - -v44 / 0x3E8uLL;
        if (v44 < 0)
        {
          v48 = v47;
        }

        else
        {
          v48 = v45;
        }

        v49 = webrtc::RateStatistics::Rate((v43 + 848), v48);
        if (v50)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0;
        }

        pthread_mutex_unlock((v43 + 784));
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        if (v39 != 0x7FFFFFFFFFFFFFFFLL && v51 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v51 == 0x8000000000000000 || v39 == 0x8000000000000000)
          {
            v38 = 0x8000000000000000;
          }

          else
          {
            v38 = v51 + v39;
          }
        }
      }

      else
      {
        v38 = v39;
      }

      ++v37;
      v35 = *(a1 + 176);
      v36 += 24;
    }

    while (v37 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 184) - v35) >> 3));
    LODWORD(a3) = v69;
    v17 = v67;
    v16 = v68;
  }

  v53 = *(a1 + 556);
  if (v53 >> 1 < v38)
  {
    LODWORD(v38) = v53 >> 1;
  }

  v54 = v53 - v38;
  *(a1 + 556) = v54;
  *(a1 + 568) = 0;
  if (*(a1 + 73))
  {
    v55 = v17 - v10;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x8000000000000000)
    {
      v55 = 0x8000000000000000;
    }

    if (v10 == 0x8000000000000000)
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v57 = 125 * v54;
    if (*(a1 + 72) == 1)
    {
      v58 = 1000;
      if (1000 * a3 > 1000)
      {
        v58 = 1000 * a3;
      }

      v59 = INFINITY;
      if (v55 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v59 = v55;
      }

      if (v55 == 0x8000000000000000)
      {
        v59 = -INFINITY;
      }

      v60 = v58 * vcvtpd_s64_f64((v57 / v58) / v59);
    }

    else
    {
      v60 = v57 / v55;
    }

    v63 = ((v60 + 999) * 0x20C49BA5E353F7CFLL) >> 64;
    v64 = ((8000 * ((v63 >> 7) + (v63 >> 63)) * v16 + 500) * 0x20C49BA5E353F7CFLL) >> 64;
    v65 = (v64 >> 7) + (v64 >> 63);
    v62 = *a2;
    v61 = *a2 - v54;
    if (v61 >= v65)
    {
      v61 = v65;
    }
  }

  else
  {
    v61 = 0;
    v62 = *a2;
  }

  *(a1 + 552) = v62 - (v53 + v61);
  return pthread_mutex_unlock((a1 + 88));
}

uint64_t webrtc::RtpVideoSender::GetSentRtpPacketInfos@<X0>(uint64_t result@<X0>, int a2@<W1>, unint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = *(result + 176);
  v6 = *(result + 184);
  if (v5 == v6)
  {
LABEL_4:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    while (1)
    {
      v9 = *v5;
      pthread_mutex_lock((*v5 + 184));
      v10 = *(v9 + 116);
      result = pthread_mutex_unlock((v9 + 184));
      if (v10 == a2)
      {
        break;
      }

      v5 += 3;
      if (v5 == v6)
      {
        goto LABEL_4;
      }
    }

    v11 = *(*v5 + 64) + 448;

    return webrtc::RtpSenderEgress::GetSentRtpPacketInfos(v11, a3, a4);
  }

  return result;
}

uint64_t webrtc::RtpVideoSender::ProtectionRequest(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v6 = *(a1 + 176);
  for (i = *(a1 + 184); v6 != i; *a5 += v18)
  {
    v19 = *(*v6 + 64);
    if (*(v19 + 904) == 1)
    {
      *(v19 + 904) = 0;
    }

    v13 = *a2;
    *(v19 + 888) = *(a2 + 2);
    *(v19 + 880) = v13;
    v14 = *a3;
    *(v19 + 900) = *(a3 + 2);
    *(v19 + 892) = v14;
    *(v19 + 904) = 1;
    v15 = *v6;
    v6 += 3;
    v16 = *(v15 + 64);
    v17.var0 = (*(**(v15 + 32) + 16))(*(v15 + 32));
    webrtc::RtpSenderEgress::GetSendRates((v16 + 448), v17, &v21);
    v18 = v23;
    *a4 += v22;
    *a6 += v24;
  }

  return 0;
}

uint64_t non-virtual thunk towebrtc::RtpVideoSender::ProtectionRequest(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v6 = *(a1 + 160);
  for (i = *(a1 + 168); v6 != i; *a5 += v18)
  {
    v19 = *(*v6 + 64);
    if (*(v19 + 904) == 1)
    {
      *(v19 + 904) = 0;
    }

    v13 = *a2;
    *(v19 + 888) = *(a2 + 2);
    *(v19 + 880) = v13;
    v14 = *a3;
    *(v19 + 900) = *(a3 + 2);
    *(v19 + 892) = v14;
    *(v19 + 904) = 1;
    v15 = *v6;
    v6 += 3;
    v16 = *(v15 + 64);
    v17.var0 = (*(**(v15 + 32) + 16))(*(v15 + 32));
    webrtc::RtpSenderEgress::GetSendRates((v16 + 448), v17, &v21);
    v18 = v23;
    *a4 += v22;
    *a6 += v24;
  }

  return 0;
}

uint64_t webrtc::RtpVideoSender::SetRetransmissionMode(webrtc::RtpVideoSender *this, int a2)
{
  pthread_mutex_lock((this + 88));
  v5 = *(this + 22);
  v4 = *(this + 23);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 24;
    v7 = *(this + 22);
    if (v6 <= 0x17)
    {
      goto LABEL_12;
    }

    v8 = v6 / 0x18 + 1;
    v7 = v5 + 24 * (v8 & 0x1FFFFFFFFFFFFFFELL);
    v9 = (v5 + 32);
    v10 = v8 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v11 = *(v9 - 3);
      v12 = *v9;
      v9 += 6;
      *(v11 + 40) = a2;
      *(v12 + 40) = a2;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_12:
      do
      {
        *(*(v7 + 8) + 40) = a2;
        v7 += 24;
      }

      while (v7 != v4);
    }
  }

  return pthread_mutex_unlock((this + 88));
}

uint64_t non-virtual thunk towebrtc::RtpVideoSender::SetRetransmissionMode(webrtc::RtpVideoSender *this, int a2)
{
  pthread_mutex_lock((this + 72));
  v5 = *(this + 20);
  v4 = *(this + 21);
  if (v5 != v4)
  {
    v6 = v4 - v5 - 24;
    v7 = *(this + 20);
    if (v6 < 0x18)
    {
      goto LABEL_12;
    }

    v8 = v6 / 0x18 + 1;
    v7 = v5 + 24 * (v8 & 0x1FFFFFFFFFFFFFFELL);
    v9 = (v5 + 32);
    v10 = v8 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v11 = *(v9 - 3);
      v12 = *v9;
      v9 += 6;
      *(v11 + 40) = a2;
      *(v12 + 40) = a2;
      v10 -= 2;
    }

    while (v10);
    if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_12:
      do
      {
        *(*(v7 + 8) + 40) = a2;
        v7 += 24;
      }

      while (v7 != v4);
    }
  }

  return pthread_mutex_unlock((this + 72));
}

uint64_t webrtc::RtpVideoSender::SetFecAllowed(webrtc::RtpVideoSender *this, char a2)
{
  pthread_mutex_lock((this + 88));
  *(this + 168) = a2;

  return pthread_mutex_unlock((this + 88));
}

uint64_t non-virtual thunk towebrtc::RtpVideoSender::SetFecAllowed(webrtc::RtpVideoSender *this, char a2)
{
  pthread_mutex_lock((this + 80));
  *(this + 160) = a2;

  return pthread_mutex_unlock((this + 80));
}

void webrtc::RtpVideoSender::OnPacketFeedbackVector(uint64_t a1, char **a2)
{
  if ((*(**(a1 + 160) + 56))(*(a1 + 160)))
  {
    pthread_mutex_lock((a1 + 88));
    v8 = *a2;
    v9 = a2[1];
    if (*a2 != v9)
    {
      do
      {
        while (1)
        {
          v10 = *v8;
          v11 = *(a1 + 568);
          v12 = *(a1 + 576);
          if (v11 == v12 << 6)
          {
            if ((v11 + 1) < 0)
            {
              goto LABEL_56;
            }

            v13 = v12 << 7;
            if (v13 <= (v11 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v13 = (v11 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            if (v11 <= 0x3FFFFFFFFFFFFFFELL)
            {
              v14 = v13;
            }

            else
            {
              v14 = 0x7FFFFFFFFFFFFFFFLL;
            }

            std::vector<BOOL>::reserve(a1 + 560, v14);
            v11 = *(a1 + 568);
          }

          *(a1 + 568) = v11 + 1;
          if (v11 == -1)
          {
LABEL_55:
            __break(1u);
            webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc", 1007, "it != ssrc_to_rtp_module_.end()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, i);
LABEL_56:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v15 = *(a1 + 560);
          v16 = v11 >> 6;
          v17 = 1 << v11;
          if ((v10 & 1) == 0)
          {
            break;
          }

          *(v15 + 8 * v16) &= ~v17;
          v8 += 16;
          if (v8 == v9)
          {
            goto LABEL_16;
          }
        }

        *(v15 + 8 * v16) |= v17;
        v8 += 16;
      }

      while (v8 != v9);
    }

LABEL_16:
    pthread_mutex_unlock((a1 + 88));
  }

  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  v18 = *a2;
  v19 = a2[1];
  if (*a2 == v19)
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    do
    {
      if (*v18 == 1 && v18[8] == 1)
      {
        operator new();
      }

      v18 += 16;
    }

    while (v18 != v19);
    v20 = *a2;
    v21 = a2[1];
    v36 = 0;
    v37 = 0;
    for (i = &v36; v20 != v21; v20 += 16)
    {
      if (*v20 == 1)
      {
        if ((v20[8] & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v20[8] != 1)
        {
          goto LABEL_55;
        }

        if ((v20[14] & 1) == 0)
        {
          operator new();
        }
      }
    }
  }

  v22 = v38;
  if (v38 != v39)
  {
    v23 = *(a1 + 624);
    if (v23)
    {
      v24 = (a1 + 624);
LABEL_35:
      v25 = *(v22 + 8);
      v26 = v24;
      do
      {
        v27 = *(v23 + 32);
        v28 = v27 >= v25;
        v29 = v27 < v25;
        if (v28)
        {
          v26 = v23;
        }

        v23 = *(v23 + 8 * v29);
      }

      while (v23);
      if (v26 != v24 && v25 >= *(v26 + 8))
      {
        v30 = v22[6] - v22[5];
        if (v30)
        {
          v31 = v22[5];
        }

        else
        {
          v31 = 0;
        }

        (*(*v26[5] + 408))(v26[5], v31, v30 >> 1);
      }

      while (1)
      {
        v32 = v22[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = v22[2];
            v34 = *v33 == v22;
            v22 = v33;
          }

          while (!v34);
        }

        if (v33 == v39)
        {
          break;
        }

        v23 = *v24;
        v22 = v33;
        if (*v24)
        {
          goto LABEL_35;
        }
      }
    }
  }

  std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(v36);
  std::__tree<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::__map_value_compare<webrtc::ContentGroup const*,std::__value_type<webrtc::ContentGroup const*,std::vector<int>>,std::less<webrtc::ContentGroup const*>,true>,std::allocator<std::__value_type<webrtc::ContentGroup const*,std::vector<int>>>>::destroy(v39[0]);
}

uint64_t webrtc::anonymous namespace::ShouldDisableRedAndUlpfec(int a1, _DWORD *a2, uint64_t a3)
{
  v6 = a2[45];
  (*(*a3 + 16))(&__p, a3, "WebRTC-DisableUlpFecExperiment", 30);
  v7 = v55;
  if ((v55 & 0x80u) != 0)
  {
    v7 = v54;
  }

  if (v7 >= 7)
  {
    p_p = __p;
    if ((v55 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v10 = *p_p;
    v11 = *(p_p + 3);
    v8 = v10 == 1650552389 && v11 == 1684368482;
    if (v55 < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    if (v55 < 0)
    {
LABEL_15:
      operator delete(__p);
    }
  }

  if (v8 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc");
  }

  if (a1)
  {
    if ((a2[46] & 0x80000000) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc");
    }

    v8 = 1;
  }

  if (v6 >= 1 && (a2[46] & 0x80000000) == 0)
  {
    v27 = *(a2 + 143);
    if ((v27 & 0x8000000000000000) != 0)
    {
      v27 = *(a2 + 16);
      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_66;
      }

      v28 = *(a2 + 15);
      if (v27 <= 0x16)
      {
LABEL_28:
        v55 = v27;
        v29 = (&__p + v27);
        if (&__p > v28 || v29 <= v28)
        {
          if (v27)
          {
            memmove(&__p, v28, v27);
          }

          *v29 = 0;
          v30 = webrtc::PayloadStringToCodecType(&__p);
          v31 = v30;
          if (v55 < 0)
          {
            operator delete(__p);
            if ((v31 - 1) < 2)
            {
              goto LABEL_60;
            }
          }

          else if ((v30 - 1) < 2)
          {
            goto LABEL_60;
          }

          if (v31)
          {
            goto LABEL_57;
          }

          (*(*a3 + 16))(&__p, a3, "WebRTC-GenericPictureId", 23);
          v32 = v55;
          if ((v55 & 0x80u) != 0)
          {
            v32 = v54;
          }

          if (v32 >= 7)
          {
            v34 = __p;
            if ((v55 & 0x80u) == 0)
            {
              v34 = &__p;
            }

            v35 = *v34;
            v36 = *(v34 + 3);
            v33 = v35 == 1650552389 && v36 == 1684368482;
            if ((v55 & 0x80000000) == 0)
            {
LABEL_56:
              if (v33)
              {
                goto LABEL_60;
              }

LABEL_57:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log("\r\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc");
              }

              v8 = 1;
              goto LABEL_60;
            }
          }

          else
          {
            v33 = 0;
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_56;
            }
          }

          operator delete(__p);
          goto LABEL_56;
        }

        __break(1u);
LABEL_66:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else
    {
      v28 = (a2 + 30);
      if (v27 <= 0x16)
      {
        goto LABEL_28;
      }
    }

    operator new();
  }

LABEL_60:
  if ((a2[47] ^ a2[46]) < 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc");
    }

    return 1;
  }

  return v8;
}

uint64_t **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::RtpVideoSender::OnVideoLayersAllocationUpdated(webrtc::VideoLayersAllocation const&)::$_0 &&>(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  v9 = **result;
  v10 = (*result)[2];
  if (v10 != 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 184) - *(v9 + 176)) >> 3))
  {
LABEL_12:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_video_sender.cc", 702, "sending.size() == rtp_streams_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v10);
    return absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RtpVideoSender::OnVideoLayersAllocationUpdated(webrtc::VideoLayersAllocation const&)::$_0>();
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v10 = *(v9 + 176);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v9 + 184) - v10) >> 3) <= v12)
      {
        break;
      }

      v13 = *(v8[1] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v12);
      v14 = *(v10 + v11);
      result = (*(*v14 + 288))(v14);
      if ((v13 != 0) != result)
      {
        (*(*v14 + 264))(v14, v13 != 0);
        (*(*v14 + 280))(v14, v13 != 0);
        v15 = **(v9 + 496);
        if (v13)
        {
          result = (*(v15 + 40))();
        }

        else
        {
          result = (*(v15 + 48))();
        }
      }

      ++v12;
      v11 += 24;
      if (v12 >= v8[2])
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RtpVideoSender::OnVideoLayersAllocationUpdated(webrtc::VideoLayersAllocation const&)::$_0>(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        operator delete(v4);
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

void webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendNack(uint64_t a1, uint64_t a2, char a3)
{
  std::vector<unsigned short>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1 + 56, *(a1 + 64), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  if ((a3 & 1) == 0)
  {

    webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendBufferedRtcpFeedback(a1);
  }
}

void webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendBufferedRtcpFeedback(__n128 *this)
{
  v2 = this[3].n128_u8[0];
  this[3].n128_u8[0] = 0;
  v3 = this[3].n128_u64[1];
  v9 = v3;
  v4 = this[4];
  this[3].n128_u64[1] = 0;
  this[4].n128_u64[0] = 0;
  v10 = v4;
  this[4].n128_u64[1] = 0;
  if (this[5].n128_u8[6])
  {
    v5 = this[5].n128_u16[0];
    v6 = this[5].n128_u16[1];
    this[5].n128_u8[6] = 0;
    if (v3 == v4.n128_u64[0])
    {
      v7 = v2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4;
    (*(*this[2].n128_u64[1] + 16))(this[2].n128_u64[1], v5, v6, this[5].n128_u8[4] & 1, v7);
    v4 = v8;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else if (v2)
  {
LABEL_6:
    (**this[1].n128_u64[1])(this[1].n128_u64[1], v4);
    goto LABEL_10;
  }

  if (v3 != v4.n128_u64[0])
  {
    (**this[2].n128_u64[0])(this[2].n128_u64[0], &v9, 1);
    v3 = v9;
  }

LABEL_10:
  if (v3)
  {
    v10.n128_u64[0] = v3;
    operator delete(v3);
  }
}

void non-virtual thunk towebrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendNack(uint64_t a1, uint64_t a2, char a3)
{
  std::vector<unsigned short>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1 + 48, *(a1 + 56), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  if ((a3 & 1) == 0)
  {

    webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendBufferedRtcpFeedback((a1 - 8));
  }
}

uint64_t webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendLossNotification(uint64_t this, int a2, int a3, int a4)
{
  *(this + 80) = a2 | (a3 << 16);
  *(this + 86) = 1;
  *(this + 84) = a4 != 0;
  return this;
}

uint64_t non-virtual thunk towebrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendLossNotification(uint64_t this, int a2, int a3, int a4)
{
  *(this + 64) = a2 | (a3 << 16);
  *(this + 70) = 1;
  *(this + 68) = a4 != 0;
  return this;
}

void webrtc::RtpVideoStreamReceiver2::RtpVideoStreamReceiver2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_28829E138;
  *(a1 + 8) = &unk_28829E198;
  *(a1 + 16) = &unk_28829E1C0;
  *(a1 + 24) = &unk_28829E1E8;
  *(a1 + 32) = &unk_28829E210;
  *(a1 + 40) = &unk_28829E238;
  *(a1 + 48) = &unk_28829E260;
  *(a1 + 56) = &unk_28829E288;
  v8 = *a2;
  *(a1 + 64) = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  v10 = *(a2 + 1);
  *(a1 + 152) = 0;
  *(a1 + 72) = v10;
  *(a1 + 88) = v9;
  *(a1 + 104) = a3;
  *(a1 + 112) = a7;
  v11 = *(a1 + 80);
  *(a1 + 120) = a6;
  *(a1 + 128) = v11;
  *(a1 + 136) = 1056964608;
  *(a1 + 144) = a1 + 152;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 152;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 7;
  *(a1 + 224) = 0;
  *(a1 + 232) = a1 + 232;
  *(a1 + 240) = a1 + 232;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0x8000000000000000;
  *(a1 + 304) = &unk_288293910;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 359) = 6;
  if (a1 + 336 > "max_ms" || a1 + 342 <= "max_ms")
  {
    strcpy((a1 + 336), "max_ms");
    *(a1 + 360) = 0;
    *(a1 + 304) = &unk_2882938B0;
    *(a1 + 364) = 0;
    *(a1 + 376) = &unk_288293910;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 431) = 6;
    if (a1 + 408 > "min_ms" || a1 + 414 <= "min_ms")
    {
      strcpy((a1 + 408), "min_ms");
      *(a1 + 432) = 0;
      *(a1 + 376) = &unk_2882938B0;
      *(a1 + 436) = 0;
      *(a1 + 448) = a8;
      if (*(a7 + 56) != -1)
      {
        operator new();
      }

      *(a1 + 456) = 0;
      *(a1 + 464) = -1;
      *(a1 + 472) = *(a7 + 72);
      *(a1 + 480) = 0;
      *(a1 + 488) = -1;
      operator new();
    }
  }

  __break(1u);
}

void webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2(webrtc::RtpVideoStreamReceiver2 *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *this = &unk_28829E138;
  *(this + 1) = &unk_28829E198;
  *(this + 2) = &unk_28829E1C0;
  *(this + 3) = &unk_28829E1E8;
  *(this + 4) = &unk_28829E210;
  *(this + 5) = &unk_28829E238;
  *(this + 6) = &unk_28829E260;
  *(this + 7) = &unk_28829E288;
  v9 = *(this + 15);
  if (v9)
  {
    v10 = *(this + 62);
    webrtc::PacketRouter::MaybeRemoveRembModuleCandidate(*(this + 15), v10, 0, a4, a5, a6, a7, a8);
    v12 = *(v9 + 88);
    v11 = *(v9 + 96);
    if (v12 != v11)
    {
      v13 = *(v9 + 88);
      while (*v13 != v10)
      {
        v13 += 8;
        v12 += 8;
        if (v13 == v11)
        {
          v12 = *(v9 + 96);
          break;
        }
      }
    }

    if (v11 == v12)
    {
      __break(1u);
      return;
    }

    v14 = (v11 - (v12 + 8));
    if (v11 != v12 + 8)
    {
      memmove(v12, v12 + 8, v11 - (v12 + 8));
    }

    *(v9 + 96) = &v14[v12];
  }

  v15 = *(this + 57);
  *(this + 57) = 0;
  if (v15)
  {
    webrtc::UlpfecReceiver::~UlpfecReceiver(v15);
    MEMORY[0x2743DA540]();
  }

  v16 = *(this + 172);
  if (v16)
  {
    (*(**(v16 + 16) + 64))(*(v16 + 16), *(v16 + 32));
    v17 = *(v16 + 16);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
  }

  v18 = *(this + 186);
  if (v18)
  {
    v19 = *(this + 187);
    v20 = *(this + 186);
    if (v19 != v18)
    {
      do
      {
        v21 = *(v19 - 8);
        if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v21 + 8))(v21);
        }

        v22 = *(v19 - 56);
        if (v22 && atomic_fetch_add((v22 + 24), 0xFFFFFFFF) == 1)
        {
          v23 = *(v22 + 16);
          *(v22 + 16) = 0;
          if (v23)
          {
            MEMORY[0x2743DA520](v23, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v22, 0x1010C40EE34DA14);
        }

        v24 = *(v19 - 88);
        if (v24)
        {
          *(v19 - 80) = v24;
          operator delete(v24);
        }

        v19 -= 144;
      }

      while (v19 != v18);
      v20 = *(this + 186);
    }

    *(this + 187) = v18;
    operator delete(v20);
  }

  std::__tree<std::__value_type<long long,webrtc::RtpPacketInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::RtpPacketInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::RtpPacketInfo>>>::destroy(*(this + 184));
  std::deque<long long>::~deque[abi:sn200100](this + 173);
  v25 = *(this + 172);
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  pthread_mutex_destroy((this + 1160));
  v26 = *(this + 133);
  *(this + 133) = 0;
  if (v26)
  {
    webrtc::BufferedFrameDecryptor::~BufferedFrameDecryptor(v26);
    MEMORY[0x2743DA540]();
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 984, *(this + 124));
  std::__tree<std::__value_type<unsigned char,std::map<std::string,std::string>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::map<std::string,std::string>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::map<std::string,std::string>>>>::destroy(this + 960, *(this + 121));
  std::__tree<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::unique_ptr<webrtc::VideoRtpDepacketizer>>>>::destroy(this + 936, *(this + 118));
  std::__tree<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>>>::destroy(*(this + 115));
  std::__tree<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::video_coding::H264SpsPpsTracker::SpsInfo>>>::destroy(*(this + 112));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 109));
  v27 = *(this + 105);
  *(this + 105) = 0;
  if (v27)
  {
    v28 = *(v27 + 16);
    *(v27 + 16) = 0;
    if (v28)
    {
      v29 = *(v28 + 77456);
      if (v29 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8sn200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN6webrtc24RtpGenericFrameRefFinderENS7_23RtpFrameIdOnlyRefFinderENS7_22RtpSeqNumOnlyRefFinderENS7_15RtpVp8RefFinderENS7_15RtpVp9RefFinderEEEELNS0_6_TraitE1EE9__destroyB8sn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v29])(&v48, v28);
      }

      *(v28 + 77456) = -1;
      MEMORY[0x2743DA540](v28, 0x10A2C40DA0AA0BBLL);
    }

    MEMORY[0x2743DA540](v27, 0x1020C40EFA1817ALL);
  }

  v30 = *(this + 101);
  *(this + 101) = 0;
  if (v30)
  {
    webrtc::FrameDependencyStructure::~FrameDependencyStructure(v30);
    MEMORY[0x2743DA540]();
  }

  v31 = *(this + 97);
  *(this + 97) = 0;
  if (v31)
  {
    MEMORY[0x2743DA520](v31, 0x1000C8052888210);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 752, *(this + 95));
  std::unique_ptr<webrtc::H26xPacketBuffer>::reset[abi:sn200100](this + 92, 0);
  webrtc::video_coding::PacketBuffer::~PacketBuffer((this + 632));
  v32 = *(this + 78);
  *(this + 78) = 0;
  if (v32)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(v32 + 48, *(v32 + 56));
    MEMORY[0x2743DA540](v32, 0x1060C40498AD98FLL);
  }

  v33 = *(this + 77);
  *(this + 77) = 0;
  if (v33)
  {
    webrtc::NackRequester::~NackRequester(v33);
    MEMORY[0x2743DA540]();
  }

  *(this + 66) = &unk_28829E0B0;
  *(this + 67) = &unk_28829E0E8;
  *(this + 68) = &unk_28829E110;
  v34 = *(this + 73);
  if (v34)
  {
    *(this + 74) = v34;
    operator delete(v34);
  }

  v35 = *(this + 62);
  *(this + 62) = 0;
  if (v35)
  {
    webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(v35);
    MEMORY[0x2743DA540]();
  }

  v36 = *(this + 57);
  *(this + 57) = 0;
  if (v36)
  {
    webrtc::UlpfecReceiver::~UlpfecReceiver(v36);
    MEMORY[0x2743DA540]();
  }

  *(this + 47) = &unk_288293910;
  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  v37 = *(this + 48);
  if (v37)
  {
    *(this + 49) = v37;
    operator delete(v37);
  }

  *(this + 38) = &unk_288293910;
  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  v38 = *(this + 39);
  if (v38)
  {
    *(this + 40) = v38;
    operator delete(v38);
  }

  if (*(this + 31))
  {
    v39 = *(this + 30);
    v40 = *(*(this + 29) + 8);
    v41 = *v39;
    *(v41 + 8) = v40;
    *v40 = v41;
    *(this + 31) = 0;
    if (v39 != (this + 232))
    {
      do
      {
        v42 = *(v39 + 1);
        operator delete(v39);
        v39 = v42;
      }

      while (v42 != (this + 232));
    }
  }

  if (*(this + 25))
  {
    v43 = *(this + 24);
    v44 = *(*(this + 23) + 8);
    v45 = *v43;
    *(v45 + 8) = v44;
    *v44 = v45;
    *(this + 25) = 0;
    if (v43 != (this + 184))
    {
      do
      {
        v46 = *(v43 + 1);
        operator delete(v43);
        v43 = v46;
      }

      while (v46 != (this + 184));
    }
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 144, *(this + 19));
  v47 = *(this + 8);
  if (v47)
  {
    if (atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v47 + 8))(v47);
    }
  }
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2(this, a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

void webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::~RtcpFeedbackBuffer(webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer *this)
{
  *this = &unk_28829E0B0;
  *(this + 1) = &unk_28829E0E8;
  *(this + 2) = &unk_28829E110;
  v1 = *(this + 7);
  if (v1)
  {
    *(this + 8) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_28829E0B0;
  *(this + 1) = &unk_28829E0E8;
  *(this + 2) = &unk_28829E110;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2(webrtc::RtpVideoStreamReceiver2 *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 8), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 16), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 24), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 32), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 40), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 48), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 56), a2, a3, a4, a5, a6, a7, a8);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 8), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 16), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 24), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 32), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 40), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 48), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

{
  webrtc::RtpVideoStreamReceiver2::~RtpVideoStreamReceiver2((this - 56), a2, a3, a4, a5, a6, a7, a8);

  JUMPOUT(0x2743DA540);
}

uint64_t *std::unique_ptr<webrtc::H26xPacketBuffer>::reset[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>>>::destroy(v2 + 16464, *(v2 + 16472));
    std::__tree<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::__map_value_compare<int,std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::H26xPacketBuffer::SpsInfo>>>::destroy(v2 + 16440, *(v2 + 16448));
    v3 = 0x4000;
    while (1)
    {
      v4 = *(v2 + v3);
      *(v2 + v3) = 0;
      if (v4)
      {
        webrtc::RTPVideoHeader::~RTPVideoHeader((v4 + 48));
        v5 = *(v4 + 24);
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

        MEMORY[0x2743DA540](v4, 0x10B2C400C12466BLL);
      }

      v3 -= 8;
      if (!v3)
      {

        JUMPOUT(0x2743DA540);
      }
    }
  }

  return result;
}

void webrtc::RtpVideoStreamReceiver2::NotifyReceiverOfEmptyPacket(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v58[3] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 840);
  v7 = *(v6 + 16);
  if (v7 && v7[4841].i32[0] == 3)
  {
    webrtc::RtpSeqNumOnlyRefFinder::PaddingReceived(v7, a2, &v57);
    v8 = v58;
    if (v57)
    {
      v8 = v58[0];
    }

    if (v57 >= 2)
    {
      v9 = &v8[v57 >> 1];
      v10 = (v6 + 8);
      do
      {
        v11 = *v8;
        *(v11 + 2496) = *v10 + *(*v8 + 2496);
        v12 = *(v11 + 352);
        if (v12)
        {
          if (v12 > 3 && (v11 + 360 < (v6 + 16) ? (v13 = v10 >= v11 + 8 * v12 + 360) : (v13 = 1), v13))
          {
            v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
            v15 = vld1q_dup_f64(v10);
            v16 = (v11 + 376);
            v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v18 = vaddq_s64(*v16, v15);
              v16[-1] = vaddq_s64(v16[-1], v15);
              *v16 = v18;
              v16 += 2;
              v17 -= 4;
            }

            while (v17);
            if (v12 == v14)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v14 = 0;
          }

          v19 = v12 - v14;
          v20 = (v11 + 8 * v14 + 360);
          do
          {
            *v20++ += *v10;
            --v19;
          }

          while (v19);
        }

LABEL_7:
        ++v8;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v57 = 0;
  }

  webrtc::RtpVideoStreamReceiver2::OnCompleteFrames(a1, &v57);
  if (v57)
  {
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(&v57);
  }

  v21 = *(a1 + 736);
  if (v21)
  {
    if ((a3 & 0x100000000) != 0 && a3 == 5)
    {
      v22 = 2049;
      v23 = a2;
      v24 = a2 - 1;
      if (v24 == v21[2049])
      {
        goto LABEL_77;
      }

      goto LABEL_30;
    }

    if ((a3 & 0x100000000) != 0 && a3 == 4)
    {
      (*(**(a1 + 72) + 16))(&__p);
      v25 = HIBYTE(v55);
      if (v55 < 0)
      {
        v25 = v55;
      }

      if (v25 >= 7)
      {
        p_p = __p;
        if (v55 >= 0)
        {
          p_p = &__p;
        }

        v28 = *p_p;
        v29 = *(p_p + 3);
        v26 = v28 == 1650552389 && v29 == 1684368482;
        if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
LABEL_51:
          if (v26)
          {
            v21 = *(a1 + 736);
            v22 = 2049;
            v23 = a2;
            v24 = a2 - 1;
            if (v24 == v21[2049])
            {
              goto LABEL_77;
            }

LABEL_30:
            if (v24 == v21[2050])
            {
              v22 = 2050;
            }

            else if (v24 == v21[2051])
            {
              v22 = 2051;
            }

            else if (v24 == v21[2052])
            {
              v22 = 2052;
            }

            else
            {
              if (v24 != v21[2053])
              {
                v45 = v21[2054];
                if (v45 >= 5 || (v21[v45 + 2049] = v23, v46 = v21[2054], v46 >= 5))
                {
                  __break(1u);
                }

                if (v46 == 4)
                {
                  v47 = 0;
                }

                else
                {
                  v47 = v46 + 1;
                }

                v21[2054] = v47;
LABEL_78:
                memset(v52, 0, sizeof(v52));
                v53 = 0;
                webrtc::RtpVideoStreamReceiver2::OnInsertedPacket(a1, v52);
                v37 = *(a1 + 616);
                if (!v37)
                {
                  goto LABEL_69;
                }

LABEL_68:
                webrtc::NackRequester::OnReceivedPacket(v37, a2, 0);
                goto LABEL_69;
              }

              v22 = 2053;
            }

LABEL_77:
            v21[v22] = v23;
            goto LABEL_78;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v26 = 0;
        if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }
      }

      operator delete(__p);
      goto LABEL_51;
    }
  }

LABEL_54:
  v56 = a2;
  v51 = 0;
  webrtc::video_coding::PacketBuffer::UpdateMissingPackets((a1 + 632), a2);
  std::__tree<unsigned short,webrtc::DescendingSeqNumComp<unsigned short,(unsigned short)0>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1 + 704, &v56);
  webrtc::video_coding::PacketBuffer::FindFrames((a1 + 632), (v56 + 1), &__p);
  v31 = __p;
  v49 = __p;
  v48 = v55;
  v50 = v55;
  webrtc::RtpVideoStreamReceiver2::OnInsertedPacket(a1, &v49);
  if (v31)
  {
    v32 = v48;
    if (v48 != v31)
    {
      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          webrtc::RTPVideoHeader::~RTPVideoHeader((v33 + 48));
          v35 = *(v33 + 24);
          if (v35 && atomic_fetch_add((v35 + 24), 0xFFFFFFFF) == 1)
          {
            v36 = *(v35 + 16);
            *(v35 + 16) = 0;
            if (v36)
            {
              MEMORY[0x2743DA520](v36, 0x1000C8077774924);
            }

            MEMORY[0x2743DA540](v35, 0x1010C40EE34DA14);
          }

          MEMORY[0x2743DA540](v33, 0x10B2C400C12466BLL);
        }
      }

      while (v32 != v31);
      v31 = v49;
    }

    operator delete(v31);
  }

  v37 = *(a1 + 616);
  if (v37)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (*(a1 + 624))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
    }
  }
}

void webrtc::RtpVideoStreamReceiver2::OnInsertedPacket(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v10 = *(a2 + 8);
  if (*a2 != v10)
  {
    v4 = 0;
    v11 = (a1 + 1472);
    while (1)
    {
      v5 = *v3;
      if ((v4 & 1) == 0 || *(v5 + 213) == 1)
      {
        v6 = *v11;
        if (*v11)
        {
          v7 = *(v5 + 8);
          v8 = (a1 + 1472);
          do
          {
            if (v6[4] >= v7)
            {
              v8 = v6;
            }

            v6 = v6[v6[4] < v7];
          }

          while (v6);
          if (v8 != v11 && v7 >= v8[4])
          {
            break;
          }
        }
      }

      v4 = 1;
      if (++v3 == v10)
      {
        goto LABEL_23;
      }
    }

    if (*(v5 + 213) == 1)
    {
      (*(**(a1 + 72) + 16))(v12);
      v9 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v9 = v12[1];
      }

      if (v9 >= 7)
      {
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(v12[0]);
    }

LABEL_14:
    operator new();
  }

LABEL_23:
  if (*(a2 + 24))
  {
    if (*(a1 + 1040) == 1)
    {
      *(a1 + 1040) = 0;
      if (*(a1 + 1056) != 1)
      {
        goto LABEL_26;
      }
    }

    else if (*(a1 + 1056) != 1)
    {
LABEL_26:
      if (*(a1 + 1024) != 1)
      {
LABEL_28:
        std::__tree<std::__value_type<long long,webrtc::RtpPacketInfo>,std::__map_value_compare<long long,std::__value_type<long long,webrtc::RtpPacketInfo>,std::less<long long>,true>,std::allocator<std::__value_type<long long,webrtc::RtpPacketInfo>>>::destroy(*(a1 + 1472));
        *(a1 + 1464) = a1 + 1472;
        *(a1 + 1472) = 0u;
        (*(*a1 + 40))(a1);
        return;
      }

LABEL_27:
      *(a1 + 1024) = 0;
      goto LABEL_28;
    }

    *(a1 + 1056) = 0;
    if (*(a1 + 1024) != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }
}

void webrtc::RtpVideoStreamReceiver2::OnRecoveredPacket(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 464) == *(a2 + 1))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
    }
  }

  else
  {

    webrtc::RtpVideoStreamReceiver2::ReceivePacket(a1, a2);
  }
}

void webrtc::RtpVideoStreamReceiver2::ReceivePacket(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v4 = *(a2 + 1);
    if (*(a1 + 464) == v4)
    {
      v5 = *(a1 + 456);
      if (v5)
      {
        if (v5[1] == *(*(*(a2 + 88) + 16) + *(a2 + 96) + *(a2 + 16)))
        {
          v6 = *(a2 + 4);
          v7 = *(a1 + 992);
          if (v7)
          {
            v8 = a1 + 992;
            do
            {
              v9 = *(v7 + 28);
              v10 = v9 >= v4;
              v11 = v9 < v4;
              if (v10)
              {
                v8 = v7;
              }

              v7 = *(v7 + 8 * v11);
            }

            while (v7);
            if (v8 == a1 + 992 || *(v8 + 28) > v4)
            {
              v12 = 0;
              v13 = 0;
              LODWORD(v7) = 0;
            }

            else
            {
              LODWORD(v7) = *(v8 + 32) & 0xFFFFFF00;
              v13 = *(v8 + 32);
              v12 = 0x100000000;
            }
          }

          else
          {
            v12 = 0;
            v13 = 0;
          }

          webrtc::RtpVideoStreamReceiver2::NotifyReceiverOfEmptyPacket(a1, v6, v12 | v7 | v13);
          v5 = *(a1 + 456);
        }

        if (webrtc::UlpfecReceiver::AddReceivedRedPacket(v5, a2))
        {
          v40 = *(a1 + 456);

          webrtc::UlpfecReceiver::ProcessReceivedFec(v40);
        }
      }
    }

    else
    {
      v22 = *(a1 + 944);
      if (v22)
      {
        v23 = a1 + 944;
        do
        {
          v24 = *(v22 + 32);
          v10 = v24 >= v4;
          v25 = v24 < v4;
          if (v10)
          {
            v23 = v22;
          }

          v22 = *(v22 + 8 * v25);
        }

        while (v22);
        if (v23 != a1 + 944 && v4 >= *(v23 + 32))
        {
          if (webrtc::RtpVideoStreamReceiver2::ReceivePacket(webrtc::RtpPacketReceived const&)::$_1::operator()(a1, *(v23 + 40), a2))
          {
            v26 = *(a1 + 1496);
            v27 = *(a1 + 1488);
            if (v26 - v27 == 14400)
            {
              for (; v26 != v27; v26 -= 144)
              {
                v28 = *(v26 - 8);
                if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v28 + 8))(v28);
                }

                v29 = *(v26 - 56);
                if (v29 && atomic_fetch_add((v29 + 24), 0xFFFFFFFF) == 1)
                {
                  v30 = *(v29 + 16);
                  *(v29 + 16) = 0;
                  if (v30)
                  {
                    MEMORY[0x2743DA520](v30, 0x1000C8077774924);
                  }

                  MEMORY[0x2743DA540](v29, 0x1010C40EE34DA14);
                }

                v31 = *(v26 - 88);
                if (v31)
                {
                  *(v26 - 80) = v31;
                  operator delete(v31);
                }
              }

              *(a1 + 1496) = v27;
            }

            else
            {
              v27 = *(a1 + 1496);
            }

            if (v27 >= *(a1 + 1504))
            {
              std::vector<webrtc::RtpPacketReceived>::__emplace_back_slow_path<webrtc::RtpPacketReceived const&>((a1 + 1488));
            }

            if (v27)
            {
              webrtc::RtpPacketReceived::RtpPacketReceived(v27, a2);
              *(a1 + 1496) = v27 + 144;
              return;
            }
          }

          else
          {
            v32 = *(a1 + 1488);
            if (v32 == *(a1 + 1496))
            {
              return;
            }

            while (1)
            {
              while (webrtc::RtpVideoStreamReceiver2::ReceivePacket(webrtc::RtpPacketReceived const&)::$_1::operator()(a1, *(v23 + 40), v32))
              {
                v32 += 18;
                if (v32 == *(a1 + 1496))
                {
                  return;
                }
              }

              v33 = *(a1 + 1496);
              if (v33 == v32)
              {
                break;
              }

              v34 = v32;
              if (v32 + 18 != v33)
              {
                do
                {
                  v35 = v34;
                  v34 += 9;
                }

                while ((webrtc::RtpPacketReceived::operator=(v35, v34) + 288) != v33);
                v33 = *(a1 + 1496);
              }

              while (v33 != v34)
              {
                v36 = *(v33 - 1);
                if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v36 + 8))(v36);
                }

                v37 = *(v33 - 7);
                if (v37 && atomic_fetch_add((v37 + 24), 0xFFFFFFFF) == 1)
                {
                  v38 = *(v37 + 16);
                  *(v37 + 16) = 0;
                  if (v38)
                  {
                    MEMORY[0x2743DA520](v38, 0x1000C8077774924);
                  }

                  MEMORY[0x2743DA540](v37, 0x1010C40EE34DA14);
                }

                v39 = *(v33 - 11);
                if (v39)
                {
                  *(v33 - 10) = v39;
                  operator delete(v39);
                }

                v33 -= 18;
              }

              *(a1 + 1496) = v34;
              if (v32 == v34)
              {
                return;
              }
            }
          }

          __break(1u);
        }
      }
    }
  }

  else
  {
    v14 = *(a2 + 4);
    v15 = *(a1 + 992);
    if (v15)
    {
      v16 = *(a2 + 1);
      v17 = a1 + 992;
      do
      {
        v18 = *(v15 + 28);
        v10 = v18 >= v16;
        v19 = v18 < v16;
        if (v10)
        {
          v17 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v17 == a1 + 992 || *(v17 + 28) > v16)
      {
        v20 = 0;
        v21 = 0;
        LODWORD(v15) = 0;
      }

      else
      {
        LODWORD(v15) = *(v17 + 32) & 0xFFFFFF00;
        v21 = *(v17 + 32);
        v20 = 0x100000000;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    webrtc::RtpVideoStreamReceiver2::NotifyReceiverOfEmptyPacket(a1, v14, v20 | v15 | v21);
  }
}

void non-virtual thunk towebrtc::RtpVideoStreamReceiver2::OnRecoveredPacket(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 456) == *(a2 + 1))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
    }
  }

  else
  {
    v9 = a1 - 8;

    webrtc::RtpVideoStreamReceiver2::ReceivePacket(v9, a2);
  }
}

_BYTE *webrtc::RtpVideoStreamReceiver2::OnRtpPacket(_BYTE *result, uint64_t a2)
{
  if (result[480] == 1)
  {
    v3 = result;
    webrtc::RtpVideoStreamReceiver2::ReceivePacket(result, a2);
    if ((*(a2 + 128) & 1) == 0)
    {
      (*(*(*(v3 + 56) + 8) + 16))();
    }

    result = *(v3 + 59);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

_BYTE *non-virtual thunk towebrtc::RtpVideoStreamReceiver2::OnRtpPacket(_BYTE *result, uint64_t a2)
{
  if (result[464] == 1)
  {
    v3 = result;
    webrtc::RtpVideoStreamReceiver2::ReceivePacket((result - 16), a2);
    if ((*(a2 + 128) & 1) == 0)
    {
      (*(*(*(v3 + 54) + 8) + 16))();
    }

    result = *(v3 + 57);
    if (result)
    {
      v4 = *(*result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t webrtc::RtpVideoStreamReceiver2::RequestKeyFrame(uint64_t this)
{
  v1 = *(this + 520);
  if (v1 == 1)
  {
    return (*(**(this + 496) + 488))(*(this + 496), 32);
  }

  if (v1 == 2)
  {
    return (*(**(this + 496) + 488))(*(this + 496), 128);
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::RtpVideoStreamReceiver2::RequestKeyFrame(uint64_t this)
{
  v1 = *(this + 496);
  if (v1 == 1)
  {
    return (*(**(this + 472) + 488))(*(this + 472), 32);
  }

  if (v1 == 2)
  {
    return (*(**(this + 472) + 488))(*(this + 472), 128);
  }

  return this;
}

void webrtc::RtpVideoStreamReceiver2::SendNack(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 496);
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v3, v4);
  webrtc::RTCPSender::SendRTCP(v3[1].__opaque, v4, 0x40u, (a2[1] - *a2) >> 1, *a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void non-virtual thunk towebrtc::RtpVideoStreamReceiver2::SendNack(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 464);
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v3, v4);
  webrtc::RTCPSender::SendRTCP(v3[1].__opaque, v4, 0x40u, (a2[1] - *a2) >> 1, *a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void webrtc::RtpVideoStreamReceiver2::SendLossNotification(webrtc::RtpVideoStreamReceiver2 *this, int a2, int a3, char a4, char a5)
{
  v9 = *(this + 62);
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v9, v10);
  webrtc::RTCPSender::SendLossNotification(v9[1].__opaque, v10, a2, a3, a4, a5);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

uint64_t webrtc::RtpVideoStreamReceiver2::OnCompleteFrames(uint64_t result, unint64_t *a2)
{
  v2 = result;
  v4 = a2 + 1;
  v3 = *a2;
  if (*a2)
  {
    v4 = *v4;
  }

  if (v3 >= 2)
  {
    v5 = &v4[v3 >> 1];
    v6 = (result + 872);
    do
    {
      v7 = *v4;
      v8 = *(*v4 + 2496);
      v9 = *v6;
      if (!*v6)
      {
LABEL_13:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = v9[4];
          if (v8 >= v11)
          {
            break;
          }

          v9 = *v10;
          if (!*v10)
          {
            goto LABEL_13;
          }
        }

        if (v11 >= v8)
        {
          break;
        }

        v9 = v10[1];
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      *(v10 + 20) = *(*v4 + 4558);
      v12 = *(v2 + 1368);
      if (v12 <= v8)
      {
        v12 = v8;
      }

      *(v2 + 1368) = v12;
      v13 = *(v2 + 512);
      *v4 = 0;
      v14 = v7;
      (*(*v13 + 16))(v13, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t webrtc::RtpVideoStreamReceiver2::OnDecryptedFrame(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 840);
  v10 = *a2;
  *a2 = 0;
  v12 = v10;
  webrtc::RtpFrameReferenceFinder::ManageFrame(v9, &v12, a5, a6, a7, a8, v13);
  webrtc::RtpVideoStreamReceiver2::OnCompleteFrames(a1, v13);
  if (v13[0])
  {
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v13);
  }

  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::RtpVideoStreamReceiver2::OnDecryptedFrame(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v8 = a1 - 40;
  v9 = *(a1 + 800);
  v10 = *a2;
  *a2 = 0;
  v12 = v10;
  webrtc::RtpFrameReferenceFinder::ManageFrame(v9, &v12, a5, a6, a7, a8, v13);
  webrtc::RtpVideoStreamReceiver2::OnCompleteFrames(v8, v13);
  if (v13[0])
  {
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v13);
  }

  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t webrtc::RtpVideoStreamReceiver2::SetFrameDecryptor(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1064);
  if (!v2)
  {
    operator new();
  }

  v3 = *a2;
  *a2 = 0;
  result = *(v2 + 8);
  *(v2 + 8) = v3;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void webrtc::RtpVideoStreamReceiver2::SetDepacketizerToDecoderFrameTransformer()
{
  {
    {
      operator new();
    }
  }

  pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  operator new();
}

uint64_t webrtc::RtpVideoStreamReceiver2::SetLossNotificationEnabled(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 624);
  if (a2)
  {
    if (!v3)
    {
      operator new();
    }
  }

  else if (v3)
  {
    *(this + 624) = 0;
    std::__tree<sigslot::_signal_base_interface *>::destroy(v3 + 48, *(v3 + 56));
    this = MEMORY[0x2743DA540](v3, 0x1060C40498AD98FLL);
    if (*(v2 + 614) == 1)
    {
      *(v2 + 614) = 0;
    }
  }

  return this;
}

uint64_t webrtc::RtpVideoStreamReceiver2::SetNackHistory(webrtc::RtpVideoStreamReceiver2 *this, TimeDelta a2)
{
  if (a2.var0 % 0x3E8 <= 0x1F3)
  {
    v3 = a2.var0 / 0x3E8;
  }

  else
  {
    v3 = a2.var0 / 0x3E8 + 1;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 - -a2.var0 / 0x3E8uLL;
  if (a2.var0 < 0)
  {
    v3 = v5;
  }

  v6 = *(this + 77);
  if (v3)
  {
    if (!v6)
    {
      operator new();
    }
  }

  else
  {
    *(this + 77) = 0;
    if (v6)
    {
      webrtc::NackRequester::~NackRequester(v6);
      MEMORY[0x2743DA540]();
    }
  }

  v7 = *(**(this + 56) + 32);

  return v7();
}

uint64_t webrtc::RtpVideoStreamReceiver2::ManageFrame(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 840);
  v10 = *a2;
  *a2 = 0;
  v12 = v10;
  webrtc::RtpFrameReferenceFinder::ManageFrame(v9, &v12, a5, a6, a7, a8, v13);
  webrtc::RtpVideoStreamReceiver2::OnCompleteFrames(a1, v13);
  if (v13[0])
  {
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v13);
  }

  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::RtpVideoStreamReceiver2::ManageFrame(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v8 = a1 - 56;
  v9 = *(a1 + 784);
  v10 = *a2;
  *a2 = 0;
  v12 = v10;
  webrtc::RtpFrameReferenceFinder::ManageFrame(v9, &v12, a5, a6, a7, a8, v13);
  webrtc::RtpVideoStreamReceiver2::OnCompleteFrames(v8, v13);
  if (v13[0])
  {
    absl::inlined_vector_internal::Storage<std::unique_ptr<webrtc::RtpFrameObject>,3ul,std::allocator<std::unique_ptr<webrtc::RtpFrameObject>>>::DestroyContents(v13);
  }

  result = v12;
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t webrtc::RtpVideoStreamReceiver2::ReceivePacket(webrtc::RtpPacketReceived const&)::$_1::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3;
  v252 = *MEMORY[0x277D85DE8];
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[11];
  v233[0] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 24), 1u, memory_order_relaxed);
  }

  v233[1] = a3[12] + v9;
  v233[2] = v8;
  (*(*a2 + 16))(v239, a2, v233);
  v11 = v233[0];
  if (v233[0] && atomic_fetch_add((v233[0] + 24), 0xFFFFFFFF) == 1)
  {
    v12 = *(v11 + 16);
    *(v11 + 16) = 0;
    if (v12)
    {
      MEMORY[0x2743DA520](v12, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v11, 0x1010C40EE34DA14);
  }

  if ((v242 & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
    }

    goto LABEL_377;
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    webrtc::NackRequester::OnReceivedPacket(v13, *(v6 + 2), *(v6 + 128));
    v14 = v242;
    if ((v242 & 1) == 0)
    {
      goto LABEL_263;
    }
  }

  else
  {
    v14 = 1;
  }

  v4 = v240;
  v240 = 0;
  v230 = *(&v241 + 1);
  v241 = 0u;
  if (v14)
  {
    v22 = *(v6 + 2);
    v23 = *(v6 + 2);
    if (*(a1 + 1458))
    {
      v24 = *(a1 + 1456);
      v25 = v22 >= v24;
      LODWORD(v26) = v22 - v24;
      v27 = v26 != 0 && v25;
      v28 = (v26 & 0x8000u) == 0;
      if (v26 == 0x8000)
      {
        v28 = v27;
      }

      if (v28)
      {
        v26 = v26;
      }

      else
      {
        v26 |= 0xFFFFFFFFFFFF0000;
      }

      v23 = v26 + *(a1 + 1448);
    }

    *(a1 + 1448) = v23;
    *(a1 + 1456) = v22;
    *(a1 + 1458) = 1;
    operator new();
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_263:
          __break(1u);
          operator delete(*(v3 + 21));
          if ((v3[112] & 1) == 0)
          {
            if ((v3[64] & 1) == 0)
            {
              goto LABEL_146;
            }

LABEL_145:
            operator delete(*(v3 + 9));
            goto LABEL_146;
          }

          operator delete(*(v3 + 15));
          if (v3[64])
          {
            goto LABEL_145;
          }

LABEL_146:
          *(v3 + 14) = 0;
          v107 = (v3 + 112);
          *(v3 + 20) = 0;
          *(v3 + 8) = 0;
          *(v3 + 23) = 0xFFFFFFFFLL;
          v3[192] = 1;
          *(v3 + 6) = v11;
          *(v3 + 7) = *&v243[8];
          v108 = (v246 & 1) != 0 ? *(&v246 + 1) : (&v246 + 8);
          if (v246 < 2)
          {
            break;
          }

          v147 = 4 * (v246 >> 1);
          while (1)
          {
            v148 = (v11 - *v108);
            __p[0] = v148;
            v149 = *v107;
            if (*v107)
            {
              v150 = *(v3 + 15);
              v151 = *(v3 + 16);
            }

            else
            {
              v150 = v3 + 120;
              v151 = 5;
            }

            if (v149 >> 1 == v151)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long>(v107);
            }

            if (!v150)
            {
              break;
            }

            *&v150[8 * (v149 >> 1)] = v148;
            *v107 = v149 + 2;
            v108 = (v108 + 4);
            v147 -= 4;
            if (!v147)
            {
              goto LABEL_150;
            }
          }
        }

LABEL_150:
        if (v243[16])
        {
          v109 = *&v243[24];
        }

        else
        {
          v109 = &v243[24];
        }

        absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v3 + 8, v109, *&v243[16] >> 1);
        if (BYTE8(v249))
        {
          v110 = WORD2(v249);
          *(v3 + 102) = v249;
          *(v3 + 103) = v110;
        }

        v111 = v251;
        v112 = v4;
        if (!v251)
        {
          *(v3 + 50) = 4;
          v11 = 2;
          v4 = v232;
          if ((BYTE8(v247) & 1) == 0)
          {
            goto LABEL_235;
          }

          goto LABEL_260;
        }

        v4 = v232;
        if (*(v232 + 824) != 1 || *(v232 + 816) <= v11)
        {
          break;
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_231;
        }

        if (*(v232 + 824))
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v113, v114, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
LABEL_231:
          v11 = 1;
          goto LABEL_232;
        }
      }

      v251 = 0;
      v152 = *(v232 + 808);
      *(v232 + 808) = v111;
      if (v152)
      {
        webrtc::FrameDependencyStructure::~FrameDependencyStructure(v152);
        MEMORY[0x2743DA540]();
      }

      *(v232 + 816) = v11;
      *(v232 + 824) = 1;
      *(v3 + 50) = 3;
      v11 = 2;
LABEL_232:
      v153 = v251;
      v251 = 0;
      if (v153)
      {
        webrtc::FrameDependencyStructure::~FrameDependencyStructure(v153);
        MEMORY[0x2743DA540]();
      }

      if ((BYTE8(v247) & 1) == 0)
      {
LABEL_235:
        if (v246)
        {
          goto LABEL_261;
        }

        goto LABEL_236;
      }

LABEL_260:
      operator delete(v248);
      if (v246)
      {
LABEL_261:
        operator delete(*(&v246 + 1));
        if ((v243[16] & 1) == 0)
        {
          goto LABEL_237;
        }

        goto LABEL_262;
      }

LABEL_236:
      if ((v243[16] & 1) == 0)
      {
        goto LABEL_237;
      }

LABEL_262:
      operator delete(*&v243[24]);
LABEL_237:
      if (v11 == 1)
      {
        v154 = (*(**(v4 + 80) + 16))(*(v4 + 80));
        v155 = v154;
        v156 = *(v4 + 832);
        v157 = v154 == 0x7FFFFFFFFFFFFFFFLL || v156 == 0x8000000000000000;
        if (v157 || (v154 != 0x8000000000000000 ? (v158 = v156 == 0x7FFFFFFFFFFFFFFFLL) : (v158 = 1), !v158 ? (v159 = v154 - v156 <= 1000000) : (v159 = 1), !v159))
        {
          *(v232 + 832) = v154;
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v160, v161, v162, v163, v164, v165, v166, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
          }
        }

        if (*(v232 + 808) || *(v232 + 1512) >= v155)
        {
          goto LABEL_135;
        }

        (*(*v232 + 40))();
        v167 = v155 + 1000000;
        if (v155 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v167 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *(v232 + 1512) = v167;
        v102 = v228;
        goto LABEL_367;
      }

      if (v3[214] != 1)
      {
        break;
      }

      v243[0] = 0;
      v29 = *(v6 + 51);
      if (*(v6 + 51))
      {
        v30 = v6[7];
        v31 = v6[8];
        if (v30 == v31)
        {
          goto LABEL_40;
        }

        while (*v30 != v29)
        {
          v30 += 4;
          if (v30 == v31)
          {
            goto LABEL_40;
          }
        }

        v32 = v6[11];
        if (v32)
        {
          v32 = *(v32 + 16) + v6[12];
        }

        v33 = v30[1];
        if (!v30[1])
        {
LABEL_40:
          v29 = 0;
        }

        else
        {
          v34 = *(v30 + 1);
          *v243 = 514;
          v243[2] = 2;
          LOBYTE(v246) = 0;
          *&v243[4] = 0;
          *&v243[9] = 0;
          BYTE4(v246) = 1;
          v35 = webrtc::ColorSpaceExtension::Parse((v32 + v34), v33, v243);
          v29 = BYTE4(v246);
          if (!v35 && (BYTE4(v246) & 1) != 0)
          {
            v29 = 0;
          }
        }
      }

      v42 = (v3 + 264);
      if (v3[332] == v29)
      {
        if (v3[332])
        {
          v41 = v245;
          *(v3 + 296) = v244;
          *(v3 + 312) = v41;
          v3[328] = v246;
          v41.f64[1] = *&v243[8];
          v43 = *&v243[16];
          *v42 = *v243;
          *(v3 + 280) = v43;
        }

        if ((v29 & 1) != 0 || *(v3 + 50) == 3)
        {
LABEL_46:
          v44 = v4 + 1076;
          v45 = *(v4 + 1144);
          if (v45 != v29)
          {
            goto LABEL_55;
          }

LABEL_47:
          if (v45)
          {
            v46 = *(v3 + 312);
            *(v44 + 32) = *(v3 + 296);
            *(v44 + 48) = v46;
            *(v44 + 64) = v3[328];
            v41 = *v42;
            v47 = *(v3 + 280);
            *v44 = *v42;
            *(v44 + 16) = v47;
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (!v3[332])
        {
          v41 = v245;
          *(v3 + 296) = v244;
          *(v3 + 312) = v41;
          v3[328] = v246;
          v41.f64[1] = *&v243[8];
          v51 = *&v243[16];
          *v42 = *v243;
          *(v3 + 280) = v51;
          v3[332] = 1;
          v44 = v4 + 1076;
          v45 = *(v4 + 1144);
          if (v45 != 1)
          {
LABEL_55:
            if (v45)
            {
              *(v4 + 1144) = 0;
            }

            else
            {
              v52 = *(v3 + 312);
              *(v44 + 32) = *(v3 + 296);
              *(v44 + 48) = v52;
              *(v44 + 64) = v3[328];
              v41 = *v42;
              v53 = *(v3 + 280);
              *v44 = *v42;
              *(v44 + 16) = v53;
              *(v4 + 1144) = 1;
            }

            goto LABEL_58;
          }

          goto LABEL_47;
        }

        v29 = 0;
        v3[332] = 0;
        if (*(v3 + 50) == 3)
        {
          goto LABEL_46;
        }
      }

      if (*(v4 + 1144) == 1)
      {
        v48 = (v4 + 1076);
        if (v29 == 1)
        {
          v49 = *(v4 + 1124);
          *(v3 + 296) = *(v4 + 1108);
          *(v3 + 312) = v49;
          v3[328] = *(v4 + 1140);
          v41 = *v48;
          v50 = *(v4 + 1092);
          *v42 = *v48;
          *(v3 + 280) = v50;
        }

        else if (v29)
        {
          v3[332] = 0;
        }

        else
        {
          v115 = *(v4 + 1124);
          *(v3 + 296) = *(v4 + 1108);
          *(v3 + 312) = v115;
          v3[328] = *(v4 + 1140);
          v41 = *v48;
          v116 = *(v4 + 1092);
          *v42 = *v48;
          *(v3 + 280) = v116;
          v3[332] = 1;
        }
      }

LABEL_58:
      if (v3[192] == 1)
      {
        v11 = *(v3 + 14);
        if (v11 >= 5)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v54, v55, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
          }

          v56 = 0;
          v243[0] = 0;
          LOBYTE(v251) = 0;
          v57 = *(v6 + 53);
          if (!*(v6 + 53))
          {
            goto LABEL_69;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v11 = 0;
      }

      v56 = 1;
      v243[0] = 0;
      LOBYTE(v251) = 0;
      v57 = *(v6 + 53);
      if (!*(v6 + 53))
      {
        goto LABEL_69;
      }

LABEL_66:
      v58 = v6[7];
      v59 = v6[8];
      if (v58 == v59)
      {
        goto LABEL_69;
      }

      while (*v58 != v57)
      {
        v58 += 4;
        if (v58 == v59)
        {
          goto LABEL_69;
        }
      }

      v93 = v6[11];
      v94 = v93 ? *(v93 + 16) + v6[12] : 0;
      v103 = v58[1];
      if (!v58[1])
      {
        goto LABEL_69;
      }

      v104 = (v94 + *(v58 + 1));
      v105 = 0;
      memset(v243, 0, sizeof(v243));
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0;
      LOBYTE(v251) = 1;
      if (v103 == 1)
      {
        v243[4] = *v104 >> 7;
        *v243 = *v104 & 0x7F;
        v106 = 1;
      }

      else
      {
        if ((v103 - 17) < 0xFFFFFFFFFFFFFFF3)
        {
          LOBYTE(v251) = 0;
          goto LABEL_69;
        }

        v243[4] = *v104 >> 7;
        *v243 = *v104 & 0x7F;
        LOBYTE(v105) = v104[1];
        v41.f64[0] = 255.0;
        *&v243[8] = v105 * 40.0 / 255.0;
        v117 = v104[2];
        *&v243[16] = v117 >> 4;
        *&v243[20] = v117 & 0xF;
        absl::inlined_vector_internal::Storage<double,13ul,std::allocator<double>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<double>,unsigned char const*>>(&v243[24], (v104 + 3), v103 - 3, *&v243[8], v41);
        v106 = v251;
      }

      if ((v56 & v106) != 1)
      {
        goto LABEL_69;
      }

      if (*&v243[24] > 1uLL)
      {
        if (v11 < 5)
        {
          v123 = v4 + 12 * v11;
          v124 = (v123 + 1524);
          if (*(v123 + 1532) == 1 && *(v6 + 2) == *(v123 + 1528))
          {
            goto LABEL_274;
          }

          v125 = v4;
          v126 = v112;
          webrtc::ConvertCorruptionDetectionMessageToFrameInstrumentationData(*v124, v243, v36, v37, v38, v39, v40, __p);
          v127 = v231 + 2024;
          v128 = v237;
          if (v231[2080] != v237)
          {
            if (v231[2080])
            {
              v146 = *(v231 + 518);
              if (v146 != -1)
              {
                (off_28829E2A0[v146])(&v238, v231 + 2024);
              }

              *(v231 + 518) = -1;
              v231[2080] = 0;
            }

            else
            {
              *v127 = *__p;
              *(v231 + 255) = __p[2];
              *(v231 + 128) = *v235;
              *(v231 + 258) = v236;
              v235[0] = 0;
              v235[1] = 0;
              v236 = 0;
              *(v231 + 518) = 1;
              v231[2080] = 1;
            }

            goto LABEL_270;
          }

          if (v231[2080])
          {
            v129 = *(v231 + 518);
            if (v129 != -1)
            {
              if (v129 == 1)
              {
                *v127 = *__p;
                *(v231 + 255) = __p[2];
                v130 = *(v231 + 256);
                if (v130)
                {
                  *(v231 + 257) = v130;
                  operator delete(v130);
                }

                *(v231 + 128) = *v235;
                *(v231 + 258) = v236;
                v235[1] = 0;
                v236 = 0;
                v235[0] = 0;
                goto LABEL_270;
              }

              (off_28829E2A0[v129])(&v238, v231 + 2024);
            }

            *v127 = *__p;
            *(v231 + 255) = __p[2];
            *(v231 + 128) = *v235;
            *(v231 + 258) = v236;
            v235[0] = 0;
            v235[1] = 0;
            v236 = 0;
            *(v231 + 518) = 1;
          }

LABEL_270:
          if (v128 && v235[0])
          {
            operator delete(v235[0]);
          }

          v124[1] = *(v6 + 2);
          *(v124 + 8) = 1;
          v112 = v126;
          v4 = v125;
          goto LABEL_274;
        }
      }

      else if (v11 < 5)
      {
        v118 = *(v4 + 12 * v11 + 1524);
        if ((v118 & 0x80000000) != 0 || v243[4] != 1)
        {
          v122 = 0;
          v119 = 0;
          v121 = 0;
        }

        else
        {
          v119 = 1;
          v121 = ((v120 >> 8) | 0x1000000) << 8;
          v122 = v120;
        }

        v142 = v121 | v122;
        v143 = (v231 + 2024);
        if (v231[2080] == v119)
        {
          if (!v231[2080])
          {
            goto LABEL_274;
          }

          v144 = *(v231 + 518);
          if (v144 != -1)
          {
            if (!v144)
            {
              *v143 = v142;
              goto LABEL_274;
            }

            (off_28829E2A0[v144])(__p, v143);
          }

          *(v231 + 253) = v142;
          *(v231 + 518) = 0;
        }

        else if (v231[2080])
        {
          v145 = *(v231 + 518);
          if (v145 != -1)
          {
            (off_28829E2A0[v145])(__p, v143);
          }

          *(v231 + 518) = -1;
          v231[2080] = 0;
        }

        else
        {
          *(v231 + 253) = v142;
          *(v231 + 518) = 0;
          v231[2080] = 1;
        }

LABEL_274:
        v3 = v231;
        if (v231[2080] == 1)
        {
          v168 = *(v231 + 518);
          if (v168 == 1)
          {
            v169 = v4 + 12 * v11;
            v170 = *(v231 + 506) + ((*(v231 + 257) - *(v231 + 256)) >> 3);
            goto LABEL_279;
          }

          if (!v168)
          {
            v169 = v4 + 12 * v11;
            v170 = *(v231 + 506);
LABEL_279:
            *(v169 + 1524) = v170;
          }
        }

LABEL_69:
        if (v251 == 1 && (v243[24] & 1) != 0)
        {
          operator delete(v244);
        }

        break;
      }
    }

    LODWORD(v60) = *(v6 + 52);
    if (*(v6 + 52))
    {
      v61 = v6[7];
      v62 = v6[8];
      if (v61 != v62)
      {
        while (*v61 != v60)
        {
          v61 += 4;
          if (v61 == v62)
          {
            goto LABEL_82;
          }
        }

        v60 = v6[11];
        if (v60)
        {
          v60 = *(v60 + 16) + v6[12];
        }

        if (v61[1] == 2)
        {
          v64 = (v60 + *(v61 + 1));
          LOWORD(v60) = v64[1];
          v65 = *v64 << 8;
          v63 = 0x10000;
          goto LABEL_84;
        }
      }

LABEL_82:
      v63 = 0;
      LOWORD(v60) = 0;
    }

    else
    {
      v63 = 0;
    }

    v65 = 0;
LABEL_84:
    v3[338] = BYTE2(v63);
    *(v3 + 168) = v60 | v63 | v65;
    v66 = *(v4 + 624);
    if (!v66)
    {
      goto LABEL_89;
    }

    if (*(v6 + 128) == 1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v67, v68, v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
      }

LABEL_89:
      *(v3 + 5) = v229;
      v74 = v230;
      if (!v230)
      {
        goto LABEL_123;
      }

      goto LABEL_90;
    }

    if (v3[213] != 1)
    {
      webrtc::LossNotificationController::OnReceivedPacket(v66, *(v6 + 2), 0);
      *(v3 + 5) = v229;
      v74 = v230;
      if (!v230)
      {
        goto LABEL_123;
      }

      goto LABEL_90;
    }

    v243[0] = *(v3 + 50) == 3;
    if (v3[192])
    {
      v91 = v3 + 120;
      v92 = *(v3 + 14);
      if (v92)
      {
        v91 = *(v3 + 15);
      }

      if (v92 < 2)
      {
        v91 = 0;
      }

      *&v243[8] = *(v3 + 6);
      *&v243[16] = v91;
      *&v243[24] = v92 >> 1;
      webrtc::LossNotificationController::OnReceivedPacket(v66, *(v6 + 2), v243);
      *(v3 + 5) = v229;
      v74 = v230;
      if (!v230)
      {
LABEL_123:
        v95 = *(v4 + 992);
        if (v95)
        {
          v96 = v3[2];
          v97 = v4 + 992;
          do
          {
            v98 = *(v95 + 28);
            v25 = v98 >= v96;
            v99 = v98 < v96;
            if (v25)
            {
              v97 = v95;
            }

            v95 = *(v95 + 8 * v99);
          }

          while (v95);
          if (v97 == v4 + 992 || *(v97 + 28) > v96)
          {
            v100 = 0;
            v101 = 0;
            LODWORD(v95) = 0;
          }

          else
          {
            LODWORD(v95) = *(v97 + 32) & 0xFFFFFF00;
            v101 = *(v97 + 32);
            v100 = 0x100000000;
          }
        }

        else
        {
          v100 = 0;
          v101 = 0;
        }

        webrtc::RtpVideoStreamReceiver2::NotifyReceiverOfEmptyPacket(v4, *(v3 + 4), v100 | v95 | v101);
        webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendBufferedRtcpFeedback((v4 + 528));
        goto LABEL_135;
      }

LABEL_90:
      if (*(v3 + 55) != 4)
      {
        goto LABEL_314;
      }

      v11 = v3[2];
      if (v11 == *(v4 + 1008))
      {
        goto LABEL_298;
      }

      *(v4 + 1008) = v11;
      v75 = *(v4 + 968);
      if (!v75)
      {
        goto LABEL_298;
      }

      v76 = v4 + 968;
      do
      {
        v77 = *(v75 + 32);
        v25 = v77 >= v11;
        v78 = v77 < v11;
        if (v25)
        {
          v76 = v75;
        }

        v75 = *(v75 + 8 * v78);
      }

      while (v75);
      if (v76 == v4 + 968 || *(v76 + 32) > v11)
      {
        goto LABEL_298;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v79, v80, v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/video/rtp_video_stream_receiver2.cc");
      }

      v244 = 0u;
      memset(v243, 0, sizeof(v243));
      HIBYTE(__p[2]) = 20;
      if (__p > "sprop-parameter-sets" || &__p[2] + 4 <= "sprop-parameter-sets")
      {
        strcpy(__p, "sprop-parameter-sets");
        v86 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v76 + 40, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          v87 = v86;
          operator delete(__p[0]);
          v86 = v87;
          v3 = v231;
        }

        if ((v76 + 48) == v86)
        {
          goto LABEL_293;
        }

        v88 = v4;
        v4 = v112;
        v6 = v86 + 7;
        v89 = (v86 + 7);
        if ((*(v86 + 79) & 0x80000000) == 0 || (v89 = *v6) != 0)
        {
          v90 = strlen(v89);
          if (v90 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (v90 > 0x16)
          {
            operator new();
          }

          HIBYTE(__p[2]) = v90;
          v131 = (__p + v90);
          if (__p > v89 || v131 <= v89)
          {
            break;
          }
        }
      }
    }
  }

  if (v90)
  {
    memmove(__p, v89, v90);
  }

  *v131 = 0;
  v133 = webrtc::H264SpropParameterSets::DecodeSprop(v243, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v88;
  if (v133)
  {
    webrtc::video_coding::H264SpsPpsTracker::InsertSpsPpsNalus(v88 + 888, v243, &v243[24]);
    v134 = *(v88 + 736);
    if (v134)
    {
      v135 = *(v88 + 992);
      if (v135)
      {
        v136 = v88 + 992;
        do
        {
          v137 = *(v135 + 28);
          v25 = v137 >= v11;
          v138 = v137 < v11;
          if (v25)
          {
            v136 = v135;
          }

          v135 = *(v135 + 8 * v138);
        }

        while (v135);
        if (v136 != v88 + 992 && *(v136 + 28) <= v11)
        {
          v139 = *(v136 + 32);
          if (v139 == 5)
          {
            goto LABEL_292;
          }

          if (v139 == 4)
          {
            (*(**(v88 + 72) + 16))(__p);
            v140 = HIBYTE(__p[2]);
            if (SHIBYTE(__p[2]) < 0)
            {
              v140 = __p[1];
            }

            if (v140 >= 7)
            {
              v171 = __p[0];
              if (SHIBYTE(__p[2]) >= 0)
              {
                v171 = __p;
              }

              v172 = *v171;
              v173 = *(v171 + 3);
              v174 = v172 == 1650552389 && v173 == 1684368482;
              v141 = v174;
            }

            else
            {
              v141 = 0;
            }

            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            if (v141)
            {
              v134 = *(v88 + 736);
LABEL_292:
              webrtc::H26xPacketBuffer::SetSpropParameterSets(v134, v6);
            }
          }
        }
      }
    }
  }

LABEL_293:
  if (*&v243[24])
  {
    *&v244 = *&v243[24];
    operator delete(*&v243[24]);
  }

  v74 = v230;
  if (*v243)
  {
    *&v243[8] = *v243;
    operator delete(*v243);
  }

  if (*(v3 + 55) != 4)
  {
    goto LABEL_314;
  }

LABEL_298:
  (*(**(v4 + 72) + 16))(v243);
  v179 = v243[23];
  if (v243[23] < 0)
  {
    v179 = *&v243[8];
  }

  if (v179 >= 7)
  {
    v181 = *v243;
    if (v243[23] >= 0)
    {
      v181 = v243;
    }

    v182 = *v181;
    v183 = *(v181 + 3);
    v180 = v182 == 1650552389 && v183 == 1684368482;
    if ((v243[23] & 0x80000000) != 0)
    {
LABEL_312:
      operator delete(*v243);
    }
  }

  else
  {
    v180 = 0;
    if ((v243[23] & 0x80000000) != 0)
    {
      goto LABEL_312;
    }
  }

  if (v180)
  {
LABEL_314:
    v185 = *v226;
    *v226 = v112;
    if (v185 && atomic_fetch_add((v185 + 24), 0xFFFFFFFF) == 1)
    {
      v186 = *(v185 + 16);
      *(v185 + 16) = 0;
      if (v186)
      {
        MEMORY[0x2743DA520](v186, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v185, 0x1010C40EE34DA14);
    }

    v112 = 0;
    *(v3 + 4) = v227;
    *(v3 + 5) = v74;
    goto LABEL_320;
  }

  if (v112)
  {
    v197 = (*(v112 + 16) + v227);
  }

  else
  {
    v197 = 0;
  }

  webrtc::video_coding::H264SpsPpsTracker::CopyAndFixBitstream(v4 + 888, v197, v74, v228, v175, v176, v177, v178, v243);
  if (!*v243)
  {
    webrtc::scoped_refptr<webrtc::FinalRefCountedObject<webrtc::BufferT<unsigned char,false>>>::operator=(v226, &v243[8]);
    *(v3 + 2) = *&v243[16];
    *&v243[16] = 0;
    *&v243[24] = 0;
    goto LABEL_401;
  }

  if (*v243 == 1)
  {
    goto LABEL_395;
  }

  if (*v243 != 2)
  {
LABEL_401:
    v224 = *&v243[8];
    if (*&v243[8] && atomic_fetch_add((*&v243[8] + 24), 0xFFFFFFFF) == 1)
    {
      v225 = *(v224 + 16);
      *(v224 + 16) = 0;
      if (v225)
      {
        MEMORY[0x2743DA520](v225, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v224, 0x1010C40EE34DA14);
    }

LABEL_320:
    webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendBufferedRtcpFeedback((v4 + 528));
    webrtc::UniqueTimestampCounter::Add(v4 + 744, *(v3 + 4));
    v193 = *(v4 + 736);
    if (v193)
    {
      v194 = *(v3 + 55);
      if (v194 == 5)
      {
        goto LABEL_341;
      }

      if (v194 == 4)
      {
        (*(**(v4 + 72) + 16))(v243);
        v195 = v243[23];
        if (v243[23] < 0)
        {
          v195 = *&v243[8];
        }

        if (v195 >= 7)
        {
          v198 = *v243;
          if (v243[23] >= 0)
          {
            v198 = v243;
          }

          v199 = *v198;
          v200 = *(v198 + 3);
          v201 = v199 == 1650552389 && v200 == 1684368482;
          v196 = v201;
        }

        else
        {
          v196 = 0;
        }

        if ((v243[23] & 0x80000000) != 0)
        {
          operator delete(*v243);
        }

        if (v196)
        {
          v193 = *(v4 + 736);
LABEL_341:
          __p[0] = v3;
          webrtc::H26xPacketBuffer::InsertPacket(v193, __p, v187, v188, v189, v190, v191, v192, v243);
          webrtc::RtpVideoStreamReceiver2::OnInsertedPacket(v4, v243);
          v202 = *v243;
          if (*v243)
          {
            v203 = *&v243[8];
            v204 = *v243;
            if (*&v243[8] != *v243)
            {
              do
              {
                v206 = *--v203;
                v205 = v206;
                *v203 = 0;
                if (v206)
                {
                  webrtc::RTPVideoHeader::~RTPVideoHeader((v205 + 48));
                  v207 = *(v205 + 24);
                  if (v207 && atomic_fetch_add((v207 + 24), 0xFFFFFFFF) == 1)
                  {
                    v208 = *(v207 + 16);
                    *(v207 + 16) = 0;
                    if (v208)
                    {
                      MEMORY[0x2743DA520](v208, 0x1000C8077774924);
                    }

                    MEMORY[0x2743DA540](v207, 0x1010C40EE34DA14);
                  }

                  MEMORY[0x2743DA540](v205, v5);
                }
              }

              while (v203 != v202);
              v204 = *v243;
            }

            *&v243[8] = v202;
            operator delete(v204);
          }

          v3 = __p[0];
          __p[0] = 0;
          if (!v3)
          {
            goto LABEL_388;
          }

          goto LABEL_366;
        }
      }
    }

    __p[0] = v3;
    webrtc::video_coding::PacketBuffer::InsertPacket((v4 + 632), __p, v243);
    webrtc::RtpVideoStreamReceiver2::OnInsertedPacket(v4, v243);
    v209 = *v243;
    if (*v243)
    {
      v210 = *&v243[8];
      v211 = *v243;
      if (*&v243[8] != *v243)
      {
        do
        {
          v213 = *--v210;
          v212 = v213;
          *v210 = 0;
          if (v213)
          {
            webrtc::RTPVideoHeader::~RTPVideoHeader((v212 + 48));
            v214 = *(v212 + 24);
            if (v214 && atomic_fetch_add((v214 + 24), 0xFFFFFFFF) == 1)
            {
              v215 = *(v214 + 16);
              *(v214 + 16) = 0;
              if (v215)
              {
                MEMORY[0x2743DA520](v215, 0x1000C8077774924);
              }

              MEMORY[0x2743DA540](v214, 0x1010C40EE34DA14);
            }

            MEMORY[0x2743DA540](v212, v5);
          }
        }

        while (v210 != v209);
        v211 = *v243;
      }

      *&v243[8] = v209;
      operator delete(v211);
    }

    v3 = __p[0];
    __p[0] = 0;
    if (!v3)
    {
LABEL_388:
      if (!v112)
      {
        goto LABEL_377;
      }

      goto LABEL_373;
    }

LABEL_366:
    v102 = (v3 + 48);
    goto LABEL_367;
  }

  *(v4 + 576) = 1;
  webrtc::RtpVideoStreamReceiver2::RtcpFeedbackBuffer::SendBufferedRtcpFeedback((v4 + 528));
LABEL_395:
  v222 = *&v243[8];
  if (*&v243[8] && atomic_fetch_add((*&v243[8] + 24), 0xFFFFFFFF) == 1)
  {
    v223 = *(v222 + 16);
    *(v222 + 16) = 0;
    if (v223)
    {
      MEMORY[0x2743DA520](v223, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v222, 0x1010C40EE34DA14);
  }

LABEL_135:
  v102 = v228;
LABEL_367:
  webrtc::RTPVideoHeader::~RTPVideoHeader(v102);
  v216 = *(v3 + 3);
  if (v216 && atomic_fetch_add((v216 + 24), 0xFFFFFFFF) == 1)
  {
    v217 = *(v216 + 16);
    *(v216 + 16) = 0;
    if (v217)
    {
      MEMORY[0x2743DA520](v217, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v216, 0x1010C40EE34DA14);
  }

  MEMORY[0x2743DA540](v3, v5);
  if (v112)
  {
LABEL_373:
    if (atomic_fetch_add((v112 + 24), 0xFFFFFFFF) == 1)
    {
      v218 = *(v112 + 16);
      *(v112 + 16) = 0;
      if (v218)
      {
        MEMORY[0x2743DA520](v218, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v112, 0x1010C40EE34DA14);
    }
  }

LABEL_377:
  if (v242 == 1)
  {
    v219 = v240;
    if (v240 && atomic_fetch_add((v240 + 24), 0xFFFFFFFF) == 1)
    {
      v220 = *(v219 + 16);
      *(v219 + 16) = 0;
      if (v220)
      {
        MEMORY[0x2743DA520](v220, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v219, 0x1010C40EE34DA14);
    }

    webrtc::RTPVideoHeader::~RTPVideoHeader(v239);
  }

  return 0;
}