void webrtc::anonymous namespace::ProduceCertificateStatsFromSSLCertificateStats(webrtc::_anonymous_namespace_ *this, Timestamp a2, const webrtc::SSLCertificateStats *a3, webrtc::RTCStatsReport *a4)
{
  v5 = (a3 + 24);
  std::operator+<char>();
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3 + 16, __p);
  if (v5 == v6 || !v6[7])
  {
    operator new();
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

std::string *std::optional<std::string>::operator=[abi:sn200100]<char const*,void>(std::string *this, std::string *__s)
{
  if (this[1].__r_.__value_.__s.__data_[0] == 1)
  {
    if (__s)
    {
      std::string::__assign_external(this, __s);
      return this;
    }

    goto LABEL_14;
  }

  if (!__s)
  {
    goto LABEL_14;
  }

  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_15;
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = v5;
  v6 = (this + v5);
  if (this <= __s && v6 > __s)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5)
  {
    memmove(this, __s, v5);
  }

  v6->__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__s.__data_[0] = 1;
  return this;
}

uint64_t webrtc::anonymous namespace::ProduceIceCandidateStats(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  std::operator+<char>();
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a5 + 16, &v10);
  if ((a5 + 24) == v7 || (v8 = v7[7]) == 0)
  {
    if (a3)
    {
      operator new();
    }

    operator new();
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  return v8 + 8;
}

uint64_t webrtc::RTCStatsReport::TryAddStats<webrtc::RTCInboundRtpStreamStats>(uint64_t a1, void ***a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v4[1], v4[2]);
    v6 = *a2;
  }

  else
  {
    v5 = *(v4 + 1);
    v24.__r_.__value_.__r.__words[2] = v4[3];
    *&v24.__r_.__value_.__l.__data_ = v5;
    v6 = v4;
  }

  *__p = *&v24.__r_.__value_.__l.__data_;
  v7 = v24.__r_.__value_.__r.__words[2];
  memset(&v24, 0, sizeof(v24));
  *a2 = 0;
  v26 = v7;
  v27 = v6;
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_30:
    operator new();
  }

  if (v26 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v26 >= 0)
  {
    v10 = HIBYTE(v26);
  }

  else
  {
    v10 = __p[1];
  }

  while (1)
  {
    while (1)
    {
      v11 = v8;
      v14 = v8[4];
      v12 = v8 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      v16 = v15 >= 0 ? v12 : v13;
      v17 = v15 >= 0 ? *(v12 + 23) : v12[1];
      v18 = (v17 >= v10 ? v10 : v17);
      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_25;
      }

LABEL_11:
      v8 = *v11;
      if (!*v11)
      {
        goto LABEL_30;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_11;
    }

LABEL_25:
    v20 = memcmp(v16, v9, v18);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_29;
    }

    if (v17 >= v10)
    {
      break;
    }

LABEL_29:
    v8 = v11[1];
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (v6)
  {
    webrtc::RTCInboundRtpStreamStats::~RTCInboundRtpStreamStats(v6);
    MEMORY[0x2743DA540](v22, 0x1093C406486DF6ELL, v23);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_37:
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

  return 0;
}

void *webrtc::anonymous namespace::CreateRemoteOutboundMediaStreamStats(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = 280;
  if (a6)
  {
    v6 = 264;
  }

  if (*(a2 + v6 + 8))
  {
    v7 = *(a2 + 160);
    if (*(a2 + 168) == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
    }

    __s = __p;
    LOWORD(__p[0]) = 20306;
    if (a3)
    {
      v9 = 86;
    }

    else
    {
      v9 = 65;
    }

    WORD1(__p[0]) = v9;
    v15 = xmmword_273BA32B0;
    webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v8);
    if (__s)
    {
      v10 = strlen(__s);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v10 > 0x16)
      {
        operator new();
      }

      v13 = v10;
      v11 = v12 + v10;
      if (v12 > __s || v11 <= __s)
      {
        if (v10)
        {
          memmove(v12, __s, v10);
        }

        *v11 = 0;
        operator new();
      }
    }

    __break(1u);
  }

  *result = 0;
  return result;
}

uint64_t webrtc::RTCStatsReport::TryAddStats<webrtc::RTCRemoteOutboundRtpStreamStats>(uint64_t a1, void ***a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v4[1], v4[2]);
    v6 = *a2;
  }

  else
  {
    v5 = *(v4 + 1);
    v24.__r_.__value_.__r.__words[2] = v4[3];
    *&v24.__r_.__value_.__l.__data_ = v5;
    v6 = v4;
  }

  *__p = *&v24.__r_.__value_.__l.__data_;
  v7 = v24.__r_.__value_.__r.__words[2];
  memset(&v24, 0, sizeof(v24));
  *a2 = 0;
  v26 = v7;
  v27 = v6;
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_30:
    operator new();
  }

  if (v26 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v26 >= 0)
  {
    v10 = HIBYTE(v26);
  }

  else
  {
    v10 = __p[1];
  }

  while (1)
  {
    while (1)
    {
      v11 = v8;
      v14 = v8[4];
      v12 = v8 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      v16 = v15 >= 0 ? v12 : v13;
      v17 = v15 >= 0 ? *(v12 + 23) : v12[1];
      v18 = (v17 >= v10 ? v10 : v17);
      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_25;
      }

LABEL_11:
      v8 = *v11;
      if (!*v11)
      {
        goto LABEL_30;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_11;
    }

LABEL_25:
    v20 = memcmp(v16, v9, v18);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_29;
    }

    if (v17 >= v10)
    {
      break;
    }

LABEL_29:
    v8 = v11[1];
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (v6)
  {
    webrtc::RTCRemoteOutboundRtpStreamStats::~RTCRemoteOutboundRtpStreamStats(v6);
    MEMORY[0x2743DA540](v22, 0x1093C40151AE7A6, v23);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_37:
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

  return 0;
}

uint64_t webrtc::RTCStatsReport::TryAddStats<webrtc::RTCOutboundRtpStreamStats>(uint64_t a1, webrtc::RTCOutboundRtpStreamStats **a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(v4 + 1), *(v4 + 2));
    v6 = *a2;
  }

  else
  {
    v5 = *(v4 + 8);
    v24.__r_.__value_.__r.__words[2] = *(v4 + 3);
    *&v24.__r_.__value_.__l.__data_ = v5;
    v6 = v4;
  }

  *__p = *&v24.__r_.__value_.__l.__data_;
  v7 = v24.__r_.__value_.__r.__words[2];
  memset(&v24, 0, sizeof(v24));
  *a2 = 0;
  v26 = v7;
  v27 = v6;
  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_30:
    operator new();
  }

  if (v26 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v26 >= 0)
  {
    v10 = HIBYTE(v26);
  }

  else
  {
    v10 = __p[1];
  }

  while (1)
  {
    while (1)
    {
      v11 = v8;
      v14 = v8[4];
      v12 = v8 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      v16 = v15 >= 0 ? v12 : v13;
      v17 = v15 >= 0 ? *(v12 + 23) : v12[1];
      v18 = (v17 >= v10 ? v10 : v17);
      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_25;
      }

LABEL_11:
      v8 = *v11;
      if (!*v11)
      {
        goto LABEL_30;
      }
    }

    if (v19 < 0)
    {
      goto LABEL_11;
    }

LABEL_25:
    v20 = memcmp(v16, v9, v18);
    if (v20)
    {
      if ((v20 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_29;
    }

    if (v17 >= v10)
    {
      break;
    }

LABEL_29:
    v8 = v11[1];
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (v6)
  {
    webrtc::RTCOutboundRtpStreamStats::~RTCOutboundRtpStreamStats(v6);
    MEMORY[0x2743DA540](v22, 0x10B3C4027038C5CLL, v23);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_37:
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

  return 0;
}

void webrtc::anonymous namespace::ProduceRemoteInboundRtpStreamStatsFromReportBlockData(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 4);
  __s = __p;
  LOWORD(__p[0]) = 18770;
  if (a4)
  {
    v5 = 86;
  }

  else
  {
    v5 = 65;
  }

  WORD1(__p[0]) = v5;
  v12 = xmmword_273BA32B0;
  webrtc::SimpleStringBuilder::AppendFormat(&__s, "%u", v4);
  if (__s)
  {
    v6 = strlen(__s);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v10 = v6;
    v7 = v9 + v6;
    if (v9 > __s || v7 <= __s)
    {
      if (v6)
      {
        memmove(v9, __s, v6);
      }

      *v7 = 0;
      operator new();
    }
  }

  __break(1u);
LABEL_17:
  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::RTCStatsCollector::OnSctpDataChannelStateChanged(uint64_t a1, int a2, int a3)
{
  if (a3 == 3)
  {
    v14 = *(a1 + 488);
    v13 = *(a1 + 496);
    if (v13 == v14)
    {
      v14 = *(a1 + 496);
      v20 = v14;
    }

    else
    {
      v15 = (v13 - v14) >> 2;
      do
      {
        v16 = v15 >> 1;
        v17 = &v14[4 * (v15 >> 1)];
        v19 = *v17;
        v18 = v17 + 4;
        v15 += ~(v15 >> 1);
        if (v19 < a2)
        {
          v14 = v18;
        }

        else
        {
          v15 = v16;
        }
      }

      while (v15);
      v20 = v14;
      if (v13 != v14)
      {
        v20 = v14 + 4;
        if (*v14 > a2)
        {
          v20 = v14;
        }
      }
    }

    v21 = v20 >= v14;
    v22 = v20 - v14;
    if (!v21)
    {
      goto LABEL_60;
    }

    if (v22)
    {
      v23 = v13 - &v14[v22];
      if (v13 != &v14[v22])
      {
        memmove(v14, &v14[v22], v13 - &v14[v22]);
      }

      *(a1 + 496) = &v14[v23];
      ++*(a1 + 484);
    }
  }

  else if (a3 == 1)
  {
    v5 = *(a1 + 488);
    v4 = *(a1 + 496);
    v6 = v4 - v5;
    if (v4 == v5)
    {
      v8 = *(a1 + 496);
    }

    else
    {
      v7 = v6 >> 2;
      v8 = *(a1 + 488);
      do
      {
        v9 = v7 >> 1;
        v10 = &v8[4 * (v7 >> 1)];
        v12 = *v10;
        v11 = v10 + 4;
        v7 += ~(v7 >> 1);
        if (v12 < a2)
        {
          v8 = v11;
        }

        else
        {
          v7 = v9;
        }
      }

      while (v7);
      if (v4 != v8 && *v8 <= a2)
      {
        goto LABEL_55;
      }
    }

    v24 = *(a1 + 504);
    if (v4 < v24)
    {
      if (v8 != v4)
      {
        v25 = v8 + 4;
        if (v4 < 4)
        {
          v26 = *(a1 + 496);
        }

        else
        {
          *v4 = *(v4 - 1);
          v26 = v4 + 4;
        }

        *(a1 + 496) = v26;
        if (v4 != v25)
        {
          v39 = a2;
          memmove(v8 + 4, v8, v4 - v25);
          a2 = v39;
        }

        *v8 = a2;
        goto LABEL_55;
      }

      if (v5)
      {
        *v4 = a2;
        *(a1 + 496) = v4 + 4;
LABEL_55:
        ++*(a1 + 480);
        return;
      }

      goto LABEL_60;
    }

    v27 = (v6 >> 2) + 1;
    if (v27 >> 62)
    {
      goto LABEL_61;
    }

    v28 = v24 - v5;
    v29 = (v24 - v5) >> 1;
    if (v29 > v27)
    {
      v27 = v29;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v30 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v27;
    }

    if (v30)
    {
      if (!(v30 >> 62))
      {
        operator new();
      }

      goto LABEL_62;
    }

    v31 = v8 - v5;
    v32 = (v8 - v5) >> 2;
    v33 = (4 * v32);
    if (!v32)
    {
      if (v31 < 1)
      {
        v40 = v31 >> 1;
        if (v8 == v5)
        {
          v40 = 1;
        }

        if (!(v40 >> 62))
        {
          operator new();
        }

LABEL_62:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v33 = (v33 - (((v31 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    if (v33)
    {
      *v33 = a2;
      memcpy(v33 + 1, v8, *(a1 + 496) - v8);
      v34 = *(a1 + 488);
      v35 = v33 + *(a1 + 496) - v8 + 4;
      *(a1 + 496) = v8;
      v36 = v8 - v34;
      v37 = v33 - (v8 - v34);
      memcpy(v37, v34, v36);
      v38 = *(a1 + 488);
      *(a1 + 488) = v37;
      *(a1 + 496) = v35;
      *(a1 + 504) = 0;
      if (v38)
      {
        operator delete(v38);
      }

      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

void *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,void (webrtc::RTCStatsCollector::*)(webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>),webrtc::scoped_refptr<webrtc::RTCStatsCollector>,webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>>::~__tuple_impl(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v6 = *(v3 - 16);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = *(v3 - 24);
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v8 = a1[3];
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v8 + 16, *(v8 + 24));
    MEMORY[0x2743DA540](v8, 0x1020C4043D65406);
  }

  v9 = a1[2];
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

void webrtc::TrackMediaInfoMap::~TrackMediaInfoMap(webrtc::TrackMediaInfoMap *this)
{
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 56));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 53));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 50));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 47));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 44));
  std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(*(this + 41));
  std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(*(this + 38));
  std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(*(this + 35));
  std::__tree<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::__map_value_compare<webrtc::VideoSendStream *,std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>,std::less<webrtc::VideoSendStream *>,true>,std::allocator<std::__value_type<webrtc::VideoSendStream *,webrtc::scoped_refptr<webrtc::Resource>>>>::destroy(*(this + 32));
  if (*(this + 240) != 1)
  {
    if (*(this + 112) != 1)
    {
      return;
    }

LABEL_5:
    webrtc::VoiceMediaInfo::~VoiceMediaInfo(this + 1);
    return;
  }

  webrtc::VideoMediaInfo::~VideoMediaInfo(this + 15);
  if (*(this + 112) == 1)
  {
    goto LABEL_5;
  }
}

size_t webrtc::anonymous namespace::RTCInboundRtpStreamStatsIDFromSSRC(char *a1, void *a2, int a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  __s[0] = v18;
  __s[1] = 1024;
  v18[0] = 73;
  v7 = *(a2 + 23);
  v8 = a2[1];
  if ((v7 & 0x80u) != 0)
  {
    a2 = *a2;
    v7 = v8;
  }

  if (v7 >= 0x3FE)
  {
    v9 = 1022;
  }

  else
  {
    v9 = v7;
  }

  v10 = v7 < 0x3FE;
  if (v7 >= 0x3FE)
  {
    v11 = (v9 + 1);
  }

  else
  {
    v11 = (v9 + 2);
  }

  memcpy(v18 + 1, a2, v9);
  *(v18 + v9 + 1) = 0;
  if (a3)
  {
    v12 = 86;
  }

  else
  {
    v12 = 65;
  }

  __src = v12;
  memcpy(v18 + v9 + 1, &__src, v10);
  __s[2] = v11;
  *(v18 + v11) = 0;
  webrtc::SimpleStringBuilder::AppendFormat(__s, "%u", a4);
  v13 = __s[0];
  if (!__s[0])
  {
    goto LABEL_22;
  }

  result = strlen(__s[0]);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_23;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a1[23] = result;
  v15 = &a1[result];
  if (a1 <= v13 && v15 > v13)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a1, v13, result);
  }

  *v15 = 0;
  return result;
}

double webrtc::anonymous namespace::SetInboundRTPStreamStatsFromMediaReceiverInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  if (*(a1 + 168) == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
  }

  *(a2 + 40) = v3;
  *(a2 + 44) = 1;
  *(a2 + 296) = *(a1 + 16);
  *(a2 + 300) = 1;
  *(a2 + 376) = *a1;
  *(a2 + 384) = 1;
  *(a2 + 392) = *(a1 + 8);
  *(a2 + 400) = 1;
  if (*(a1 + 32) == 1)
  {
    *(a2 + 424) = *(a1 + 24);
    *(a2 + 432) = 1;
  }

  if (*(a1 + 48) == 1)
  {
    *(a2 + 408) = *(a1 + 40);
    *(a2 + 416) = 1;
  }

  *(a2 + 160) = *(a1 + 20);
  *(a2 + 164) = 1;
  *(a2 + 464) = *(a1 + 64);
  *(a2 + 472) = 1;
  *(a2 + 480) = *(a1 + 72);
  *(a2 + 488) = 1;
  *(a2 + 496) = *(a1 + 80);
  *(a2 + 504) = 1;
  *(a2 + 512) = *(a1 + 88);
  *(a2 + 520) = 1;
  if (*(a1 + 60) == 1)
  {
    *(a2 + 968) = *(a1 + 56);
    *(a2 + 972) = 1;
    if (*(a1 + 216) != 1)
    {
LABEL_10:
      if (*(a1 + 232) != 1)
      {
        goto LABEL_11;
      }

LABEL_15:
      *(a2 + 352) = *(a1 + 224);
      *(a2 + 360) = 1;
      if (*(a1 + 248) != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  else if (*(a1 + 216) != 1)
  {
    goto LABEL_10;
  }

  *(a2 + 320) = *(a1 + 208);
  *(a2 + 328) = 1;
  if (*(a1 + 232) == 1)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (*(a1 + 248) != 1)
  {
LABEL_12:
    result = *(a1 + 256);
    *(a2 + 752) = result;
    *(a2 + 760) = 1;
    return result;
  }

LABEL_16:
  *(a2 + 336) = *(a1 + 240);
  *(a2 + 344) = 1;
  result = *(a1 + 256);
  *(a2 + 752) = result;
  *(a2 + 760) = 1;
  return result;
}

uint64_t *webrtc::anonymous namespace::GetCodecIdAndMaybeCreateCodecStats(char *a1, uint64_t a2, unsigned __int8 a3, const void **a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = *(a5 + 104);
  v32 = &v31;
  v33 = 1024;
  v31.__r_.__value_.__s.__data_[0] = 67;
  *(&v31.__r_.__value_.__l.__data_ + 1) = a3;
  v9 = *(a4 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = a4[1];
  }

  if (v9 >= 0x3FD)
  {
    v11 = 1021;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 2;
  v13 = v9 < 0x3FD;
  if (v9 < 0x3FD)
  {
    v14 = v11 + 3;
  }

  else
  {
    v14 = v11 + 2;
  }

  memcpy(&v31.__r_.__value_.__s.__data_[2], v10, v11);
  v31.__r_.__value_.__s.__data_[v12] = 0;
  __src.__r_.__value_.__s.__data_[0] = 95;
  memcpy(&v31 + v12, &__src, v13);
  v34 = v14;
  v31.__r_.__value_.__s.__data_[v14] = 0;
  webrtc::SimpleStringBuilder::AppendFormat(&v32, "%d", v8);
  memset(&__src, 0, sizeof(__src));
  webrtc::WriteFmtpParameters((a5 + 80), &__src);
  if (v15)
  {
    v29.__r_.__value_.__s.__data_[0] = 95;
    v16 = v33;
    v17 = v34 + 1;
    memcpy(v32 + v34, &v29, v33 != v34 + 1);
    v18 = v34;
    if (v16 != v17)
    {
      v18 = v34 + 1;
    }

    v34 = v18;
    v32->__r_.__value_.__s.__data_[v18] = 0;
    v29 = __src;
    memset(&__src, 0, sizeof(__src));
    v19 = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    size = v29.__r_.__value_.__l.__size_;
    v21 = v29.__r_.__value_.__r.__words[0];
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v29;
    }

    else
    {
      v22 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    if (size >= v33 + ~v34)
    {
      v23 = v33 + ~v34;
    }

    else
    {
      v23 = size;
    }

    memcpy(v32 + v34, v22, v23);
    v34 += v23;
    v32->__r_.__value_.__s.__data_[v34] = 0;
    if (v19 < 0)
    {
      operator delete(v21);
    }
  }

  v24 = v32;
  if (!v32)
  {
    goto LABEL_41;
  }

  v25 = strlen(v32);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_42;
  }

  if (v25 > 0x16)
  {
    operator new();
  }

  a1[23] = v25;
  v26 = &a1[v25];
  if (a1 <= v24 && v26 > v24)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v25)
  {
    memmove(a1, v24, v25);
  }

  *v26 = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a6 + 16, a1);
    if ((a6 + 24) == result)
    {
      goto LABEL_39;
    }
  }

  else
  {
    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a6 + 16, a1);
    if ((a6 + 24) == result)
    {
LABEL_39:
      operator new();
    }
  }

  if (!result[7])
  {
    goto LABEL_39;
  }

  return result;
}

size_t webrtc::anonymous namespace::RTCOutboundRtpStreamStatsIDFromSSRC(char *a1, void *a2, int a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  __s[0] = v18;
  __s[1] = 1024;
  v18[0] = 79;
  v7 = *(a2 + 23);
  v8 = a2[1];
  if ((v7 & 0x80u) != 0)
  {
    a2 = *a2;
    v7 = v8;
  }

  if (v7 >= 0x3FE)
  {
    v9 = 1022;
  }

  else
  {
    v9 = v7;
  }

  v10 = v7 < 0x3FE;
  if (v7 >= 0x3FE)
  {
    v11 = (v9 + 1);
  }

  else
  {
    v11 = (v9 + 2);
  }

  memcpy(v18 + 1, a2, v9);
  *(v18 + v9 + 1) = 0;
  if (a3)
  {
    v12 = 86;
  }

  else
  {
    v12 = 65;
  }

  __src = v12;
  memcpy(v18 + v9 + 1, &__src, v10);
  __s[2] = v11;
  *(v18 + v11) = 0;
  webrtc::SimpleStringBuilder::AppendFormat(__s, "%u", a4);
  v13 = __s[0];
  if (!__s[0])
  {
    goto LABEL_22;
  }

  result = strlen(__s[0]);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_23;
  }

  if (result > 0x16)
  {
    operator new();
  }

  a1[23] = result;
  v15 = &a1[result];
  if (a1 <= v13 && v15 > v13)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result)
  {
    result = memmove(a1, v13, result);
  }

  *v15 = 0;
  return result;
}

void *std::map<webrtc::QualityLimitationReason,long long>::map[abi:sn200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(a1, v3, &v11, &v10, v5 + 8))
      {
        operator new();
      }

      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCStatsCollector::CreateReportFilteredBySelector(BOOL,webrtc::scoped_refptr<webrtc::RTCStatsReport const>,webrtc::scoped_refptr<webrtc::RtpSenderInternal>,webrtc::scoped_refptr<webrtc::RtpReceiverInternal>)::$_1>(uint64_t *a1)
{
  result = (*(**a1[1] + 200))(*a1[1]);
  v3 = *a1;
  *v3 = result;
  *(v3 + 4) = BYTE4(result);
  return result;
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    *(a2 + 7) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

BOOL webrtc::RefCountedObject<webrtc::RTCStatsCollector>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 128, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<webrtc::RTCStatsCollector>::~RefCountedObject(webrtc::RTCStatsCollector *a1)
{
  webrtc::RTCStatsCollector::~RTCStatsCollector(a1);

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::destroy(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return;
  }

  std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::destroy(a1, *a2);
  std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::destroy(a1, *(a2 + 1));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  if (v4)
  {
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;
    if (v5)
    {
      std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v4 + 72, v5);
    }

    if (*(v4 + 71) < 0)
    {
      operator delete(*(v4 + 48));
      if ((*(v4 + 47) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(v4 + 23) & 0x80000000) == 0)
        {
LABEL_8:
          MEMORY[0x2743DA540](v4, 0x1032C40C3789C24);
          goto LABEL_9;
        }

LABEL_26:
        operator delete(*v4);
        goto LABEL_8;
      }
    }

    else if ((*(v4 + 47) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(*(v4 + 24));
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_9:
  v6 = *(a2 + 7);
  *(a2 + 7) = 0;
  if (v6)
  {
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
    if (v7)
    {
      std::default_delete<webrtc::SSLCertificateStats>::operator()[abi:sn200100](v6 + 72, v7);
    }

    if (*(v6 + 71) < 0)
    {
      operator delete(*(v6 + 48));
      if ((*(v6 + 47) & 0x80000000) == 0)
      {
LABEL_14:
        if ((*(v6 + 23) & 0x80000000) == 0)
        {
LABEL_15:
          MEMORY[0x2743DA540](v6, 0x1032C40C3789C24);
          goto LABEL_16;
        }

LABEL_29:
        operator delete(*v6);
        goto LABEL_15;
      }
    }

    else if ((*(v6 + 47) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(*(v6 + 24));
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_16:
  if (a2[55] < 0)
  {
    operator delete(*(a2 + 4));
    v8 = a2;
  }

  else
  {
    v8 = a2;
  }

  operator delete(v8);
}

void absl::internal_any_invocable::RemoteInvoker<false,void,std::__bind_front_t<void (webrtc::RTCStatsCollector::*)(webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>),webrtc::scoped_refptr<webrtc::RTCStatsCollector>,webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>> &&>(atomic_uint ***a1)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = ((*a1)[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v16[3] = v1;
  v16[4] = v2;
  v16[0] = v3[3];
  *__p = *(v3 + 2);
  v15 = v3[6];
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  (v4)(v6, v16, __p);
  v7 = __p[0];
  if (__p[0])
  {
    v8 = __p[1];
    v9 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v10 = *(v8 - 1);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v11 = *(v8 - 2);
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = *(v8 - 3);
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v8 -= 32;
      }

      while (v8 != v7);
      v9 = __p[0];
    }

    __p[1] = v7;
    operator delete(v9);
  }

  v13 = v16[0];
  if (v16[0])
  {
    if (atomic_fetch_add(v16[0], 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy((v13 + 4), *(v13 + 3));
      MEMORY[0x2743DA540](v13, 0x1020C4043D65406);
    }
  }
}

void *absl::internal_any_invocable::RemoteManagerNontrivial<std::__bind_front_t<void (webrtc::RTCStatsCollector::*)(webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>),webrtc::scoped_refptr<webrtc::RTCStatsCollector>,webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>>>(char a1, void **a2, void *a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,void (webrtc::RTCStatsCollector::*)(webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>),webrtc::scoped_refptr<webrtc::RTCStatsCollector>,webrtc::scoped_refptr<webrtc::RTCStatsReport const>,std::vector<webrtc::RTCStatsCollector::RequestInfo>>::~__tuple_impl(result);

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::RTCStatsCollector::GetStatsReportInternal(webrtc::RTCStatsCollector::RequestInfo)::$_0 &&>(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 32) == 1)
  {
    v1[2] = 0;
    v1[3] = 0;
    v1[1] = 0;
  }

  {
    {
      operator new();
    }
  }

  *(pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) + 217) = 0;
  operator new();
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::RTCStatsCollector::GetStatsReportInternal(webrtc::RTCStatsCollector::RequestInfo)::$_0>(uint64_t result, void **a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 32) == 1 && *(v3 + 31) < 0)
      {
        operator delete(v3[1]);
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

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::RTCStatsCollector::ProducePartialResultsOnNetworkThread(webrtc::Timestamp,std::optional<std::string>)::$_0>(char a1, uint64_t *a2, uint64_t *a3)
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

uint64_t std::__tree<std::__value_type<std::string,webrtc::RTCOutboundRtpStreamStats *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCOutboundRtpStreamStats *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCOutboundRtpStreamStats *>>>::__emplace_unique_key_args<std::string,std::pair<std::string,webrtc::RTCOutboundRtpStreamStats *>>(uint64_t a1, const void **a2)
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
    result = memcmp(v11, v4, v13);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return result;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

uint64_t std::__tree<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>>::__emplace_unique_key_args<std::string,std::pair<std::string,webrtc::RTCStatsCollector::CertificateStatsPair>>(uint64_t a1, const void **a2)
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
    result = memcmp(v11, v4, v13);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return result;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void std::__tree<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::__map_value_compare<webrtc::VoiceMediaSendChannelInterface *,std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::less<webrtc::VoiceMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>>>::destroy(char **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::__map_value_compare<webrtc::VoiceMediaSendChannelInterface *,std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::less<webrtc::VoiceMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::__map_value_compare<webrtc::VoiceMediaSendChannelInterface *,std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>,std::less<webrtc::VoiceMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaSendChannelInterface *,webrtc::VoiceMediaSendInfo>>>::destroy(a1[1]);
    webrtc::VoiceMediaSendInfo::~VoiceMediaSendInfo(a1 + 5);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::__map_value_compare<webrtc::VideoMediaSendChannelInterface *,std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::less<webrtc::VideoMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>>>::destroy(char **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::__map_value_compare<webrtc::VideoMediaSendChannelInterface *,std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::less<webrtc::VideoMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::__map_value_compare<webrtc::VideoMediaSendChannelInterface *,std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>,std::less<webrtc::VideoMediaSendChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaSendChannelInterface *,webrtc::VideoMediaSendInfo>>>::destroy(a1[1]);
    webrtc::VideoMediaSendInfo::~VideoMediaSendInfo(a1 + 5);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::__map_value_compare<webrtc::VoiceMediaReceiveChannelInterface *,std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::less<webrtc::VoiceMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>>>::destroy(char **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::__map_value_compare<webrtc::VoiceMediaReceiveChannelInterface *,std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::less<webrtc::VoiceMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::__map_value_compare<webrtc::VoiceMediaReceiveChannelInterface *,std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>,std::less<webrtc::VoiceMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VoiceMediaReceiveChannelInterface *,webrtc::VoiceMediaReceiveInfo>>>::destroy(a1[1]);
    webrtc::VoiceMediaReceiveInfo::~VoiceMediaReceiveInfo(a1 + 5);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::__map_value_compare<webrtc::VideoMediaReceiveChannelInterface *,std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::less<webrtc::VideoMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::__map_value_compare<webrtc::VideoMediaReceiveChannelInterface *,std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::less<webrtc::VideoMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::__map_value_compare<webrtc::VideoMediaReceiveChannelInterface *,std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>,std::less<webrtc::VideoMediaReceiveChannelInterface *>,true>,std::allocator<std::__value_type<webrtc::VideoMediaReceiveChannelInterface *,webrtc::VideoMediaReceiveInfo>>>::destroy(a1[1]);
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((a1 + 8), a1[9]);
    v2 = a1[5];
    if (v2)
    {
      v3 = a1[6];
      v4 = a1[5];
      if (v3 != v2)
      {
        do
        {
          webrtc::VideoReceiverInfo::~VideoReceiverInfo((v3 - 792));
        }

        while (v3 != v2);
        v4 = a1[5];
      }

      a1[6] = v2;
      operator delete(v4);
    }

    operator delete(a1);
  }
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCStatsCollector::PrepareTransceiverStatsInfosAndCallStats_s_w_n(void)::$_0>(uint64_t **a1)
{
  v59 = a1[1];
  {
    operator new();
  }

  v2 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v53 = v2[217];
  v54 = v2;
  v2[217] = 0;
  v55 = a1;
  v3 = **a1;
  v56 = (*a1)[1];
  if (v3 != v56)
  {
    do
    {
      v57 = v3;
      v60 = *(*v3 + 16);
      v58 = (*(*v60 + 32))();
      v5 = v59[34];
      v4 = v59[35];
      if (v5 >= v4)
      {
        v7 = v59[33];
        v8 = 1 - 0xED7303B5CC0ED73 * ((v5 - v7) >> 3);
        if (v8 > 0x76B981DAE6076BLL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v9 = 0xF128CFC4A33F128DLL * ((v4 - v7) >> 3);
        if (2 * v9 > v8)
        {
          v8 = 2 * v9;
        }

        if (v9 >= 0x3B5CC0ED7303B5)
        {
          v10 = 0x76B981DAE6076BLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (v10 <= 0x76B981DAE6076BLL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_100:
        __break(1u);
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (!v5)
      {
        goto LABEL_100;
      }

      bzero(v59[34], 0x228uLL);
      v5[41] = v5 + 42;
      *(v5 + 45) = 0u;
      v5[44] = v5 + 45;
      *(v5 + 24) = 0u;
      v5[47] = v5 + 48;
      *(v5 + 51) = 0u;
      v5[50] = v5 + 51;
      *(v5 + 27) = 0u;
      v5[53] = v5 + 54;
      *(v5 + 57) = 0u;
      v5[56] = v5 + 57;
      *(v5 + 30) = 0u;
      v5[59] = v5 + 60;
      *(v5 + 63) = 0u;
      v5[62] = v5 + 63;
      *(v5 + 33) = 0u;
      v5[65] = v5 + 66;
      v6 = v5 + 69;
      *(v5 + 548) = 0;
      v59[34] = v6;
      if (v59[33] == v6)
      {
        goto LABEL_100;
      }

      (**v60)(v60);
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      *v5 = v60;
      *(v5 + 2) = v58;
      v11 = v60[20];
      if (v11)
      {
        v12 = (*(*v11 + 96))(v60[20]);
        v13 = (v6 - 67);
        if (*(v6 - 512) == 1)
        {
          if (v13 != v12)
          {
            v14 = *(v12 + 23);
            if (*(v6 - 513) < 0)
            {
              if (v14 >= 0)
              {
                v51 = v12;
              }

              else
              {
                v51 = *v12;
              }

              if (v14 >= 0)
              {
                v52 = *(v12 + 23);
              }

              else
              {
                v52 = *(v12 + 8);
              }

              std::string::__assign_no_alias<false>(v13, v51, v52);
            }

            else if ((*(v12 + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v13, *v12, *(v12 + 8));
            }

            else
            {
              v15 = *v12;
              *(v6 - 65) = *(v12 + 16);
              *&v13->__r_.__value_.__l.__data_ = v15;
            }
          }
        }

        else
        {
          if (*(v12 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v13, *v12, *(v12 + 8));
          }

          else
          {
            v16 = *v12;
            *(v6 - 65) = *(v12 + 16);
            *&v13->__r_.__value_.__l.__data_ = v16;
          }

          *(v6 - 512) = 1;
        }

        v17 = (*(*v11 + 88))(v11);
        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (v18 > 0x16)
        {
          operator new();
        }

        HIBYTE(v67) = v18;
        v19 = (&v66 + v18);
        if (&v66 <= v17 && v19 > v17)
        {
          goto LABEL_100;
        }

        if (v18)
        {
          memmove(&v66, v17, v18);
        }

        *v19 = 0;
        v21 = (v6 - 63);
        if (*(v6 - 480) == 1)
        {
          if (*(v6 - 481) < 0)
          {
            operator delete(*v21);
          }

          v22 = v66;
          *(v6 - 61) = v67;
          *v21 = v22;
          v23 = v58;
          if (v58 != 1)
          {
LABEL_48:
            if (!v23)
            {
              v25 = (*(*v11 + 56))(v11);
              v26 = v55[2];
              __p[0] = 0;
              __p[1] = 0;
              v63 = 0uLL;
              *&v62 = 0;
              *(&v62 + 1) = &v63;
              v66 = v25;
              v67 = 0;
              v68 = 0;
              std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](v69, &v62 + 1);
              v27 = v26[1];
              if (!v27)
              {
LABEL_64:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v28 = v27;
                  v29 = v27[4];
                  if (v66 >= v29)
                  {
                    break;
                  }

                  v27 = *v28;
                  if (!*v28)
                  {
                    goto LABEL_64;
                  }
                }

                if (v29 >= v66)
                {
                  break;
                }

                v27 = v28[1];
                if (!v27)
                {
                  goto LABEL_64;
                }
              }

              webrtc::VoiceMediaSendInfo::~VoiceMediaSendInfo(&v66 + 1);
              webrtc::VoiceMediaSendInfo::~VoiceMediaSendInfo(__p);
              v35 = (*(*v11 + 80))(v11);
              v36 = v55[3];
              __p[0] = 0;
              __p[1] = 0;
              v63 = 0uLL;
              *&v62 = 0;
              *(&v62 + 1) = &v63;
              LODWORD(v64) = 0;
              v66 = v35;
              v67 = 0;
              v68 = 0;
              std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](v69, &v62 + 1);
              v70 = v64;
              v37 = v36[1];
              if (!v37)
              {
LABEL_89:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v38 = v37;
                  v39 = v37[4];
                  if (v66 >= v39)
                  {
                    break;
                  }

                  v37 = *v38;
                  if (!*v38)
                  {
                    goto LABEL_89;
                  }
                }

                if (v39 >= v66)
                {
                  break;
                }

                v37 = v38[1];
                if (!v37)
                {
                  goto LABEL_89;
                }
              }

              webrtc::VoiceMediaReceiveInfo::~VoiceMediaReceiveInfo(&v66 + 1);
              webrtc::VoiceMediaReceiveInfo::~VoiceMediaReceiveInfo(__p);
            }

            goto LABEL_5;
          }
        }

        else
        {
          v24 = v66;
          *(v6 - 61) = v67;
          *v21 = v24;
          v67 = 0;
          v66 = 0uLL;
          *(v6 - 480) = 1;
          if (SHIBYTE(v67) < 0)
          {
            operator delete(v66);
            v23 = v58;
            if (v58 != 1)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v23 = v58;
            if (v58 != 1)
            {
              goto LABEL_48;
            }
          }
        }

        v30 = (*(*v11 + 48))(v11);
        v31 = v55[4];
        v65[0] = 0;
        v65[1] = 0;
        *__p = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = v65;
        *&v66 = v30;
        webrtc::VideoMediaSendInfo::VideoMediaSendInfo((&v66 + 8), __p);
        v32 = v31[1];
        if (!v32)
        {
LABEL_72:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v33 = v32;
            v34 = v32[4];
            if (v66 >= v34)
            {
              break;
            }

            v32 = *v33;
            if (!*v33)
            {
              goto LABEL_72;
            }
          }

          if (v34 >= v66)
          {
            break;
          }

          v32 = v33[1];
          if (!v32)
          {
            goto LABEL_72;
          }
        }

        webrtc::VideoMediaSendInfo::~VideoMediaSendInfo(&v66 + 1);
        webrtc::VideoMediaSendInfo::~VideoMediaSendInfo(__p);
        v40 = (*(*v11 + 72))(v11);
        v41 = v55[5];
        __p[0] = 0;
        __p[1] = 0;
        v63 = 0uLL;
        *&v62 = 0;
        *(&v62 + 1) = &v63;
        v66 = v40;
        v67 = 0;
        v68 = 0;
        std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](v69, &v62 + 1);
        v42 = v41[1];
        if (!v42)
        {
LABEL_79:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v43 = v42;
            v44 = v42[4];
            if (v44 <= v66)
            {
              break;
            }

            v42 = *v43;
            if (!*v43)
            {
              goto LABEL_79;
            }
          }

          if (v44 >= v66)
          {
            break;
          }

          v42 = v43[1];
          if (!v42)
          {
            goto LABEL_79;
          }
        }

        std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(v69, v69[1]);
        v45 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
          v46 = v67;
          v47 = *(&v66 + 1);
          if (v67 != *(&v66 + 1))
          {
            do
            {
              webrtc::VideoReceiverInfo::~VideoReceiverInfo((v46 - 792));
            }

            while (v46 != v45);
            v47 = *(&v66 + 1);
          }

          v67 = v45;
          operator delete(v47);
        }

        std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(&v62 + 8, v63);
        v48 = __p[0];
        if (__p[0])
        {
          v49 = __p[1];
          v50 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              webrtc::VideoReceiverInfo::~VideoReceiverInfo(v49 - 99);
            }

            while (v49 != v48);
            v50 = __p[0];
          }

          __p[1] = v48;
          operator delete(v50);
        }
      }

LABEL_5:
      v3 = v57 + 8;
    }

    while (v57 + 8 != v56);
  }

  v54[217] = v53;
}

webrtc::VoiceMediaInfo *webrtc::VoiceMediaInfo::VoiceMediaInfo(webrtc::VoiceMediaInfo *this, const webrtc::VoiceMediaInfo *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if ((0x7D6343EB1A1F58D1 * ((v4 - *a2) >> 3)) < 0xA72F05397829CCLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    if (0xF128CFC4A33F128DLL * ((v6 - v5) >> 3) < 0x76B981DAE6076CLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](this + 6, a2 + 6);
  std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](this + 9, a2 + 9);
  *(this + 24) = *(a2 + 24);
  return this;
}

void *std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*std::__tree<std::__value_type<int,webrtc::SdpAudioFormat>,std::__map_value_compare<int,std::__value_type<int,webrtc::SdpAudioFormat>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::SdpAudioFormat>>>::__find_equal<int>(a1, v3, &v11, &v10, v5 + 8))
      {
        operator new();
      }

      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

webrtc::VideoMediaInfo *webrtc::VideoMediaInfo::VideoMediaInfo(webrtc::VideoMediaInfo *this, const webrtc::VideoMediaInfo *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if (0xCBEEA4E1A08AD8F3 * ((v4 - *a2) >> 3) <= 0x8AD8F2FBA93868)
    {
      operator new();
    }

    goto LABEL_11;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  if (v6 != v5)
  {
    if (0xCBEEA4E1A08AD8F3 * ((v6 - v5) >> 3) <= 0x8AD8F2FBA93868)
    {
      operator new();
    }

LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v7)
  {
    if (0xAFD6A052BF5A814BLL * ((v8 - v7) >> 3) < 0x52BF5A814AFD6BLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](this + 9, a2 + 9);
  std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](this + 12, a2 + 12);
  return this;
}

webrtc::VideoMediaSendInfo *webrtc::VideoMediaSendInfo::VideoMediaSendInfo(webrtc::VideoMediaSendInfo *this, const webrtc::VideoMediaSendInfo *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 1);
  if (v3 != *a2)
  {
    if (0xCBEEA4E1A08AD8F3 * ((v3 - *a2) >> 3) <= 0x8AD8F2FBA93868)
    {
      operator new();
    }

    goto LABEL_8;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v4)
  {
    if (0xCBEEA4E1A08AD8F3 * ((v5 - v4) >> 3) <= 0x8AD8F2FBA93868)
    {
      operator new();
    }

LABEL_8:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::map<int,webrtc::RtpCodecParameters>::map[abi:sn200100](this + 6, a2 + 6);
  return this;
}

double webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCStatsCollector::PrepareTransceiverStatsInfosAndCallStats_s_w_n(void)::$_1>(void *a1)
{
  v108 = a1[4];
  {
    operator new();
  }

  v3 = pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88));
  v106 = v3[217];
  v107 = v3;
  v3[217] = 0;
  v111 = a1;
  v4 = *a1;
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      if (((*(*v6[4] + 224))(v6[4], v6 + 5) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x4322;
        webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtc_stats_collector.cc");
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  v18 = v111[1];
  v21 = *v18;
  v19 = v18 + 1;
  v20 = v21;
  if (v21 != v19)
  {
    do
    {
      if (((*(*v20[4] + 216))(v20[4], v20 + 5, 0) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x4352;
        webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtc_stats_collector.cc");
      }

      v29 = v20[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v20[2];
          v17 = *v30 == v20;
          v20 = v30;
        }

        while (!v17);
      }

      v20 = v30;
    }

    while (v30 != v19);
  }

  v31 = v111[2];
  v34 = *v31;
  v32 = v31 + 1;
  v33 = v34;
  if (v34 != v32)
  {
    do
    {
      if (((*(*v33[4] + 216))(v33[4], v33 + 5) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x437A;
        webrtc::webrtc_logging_impl::Log("\r\t", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtc_stats_collector.cc");
      }

      v42 = v33[1];
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
          v43 = v33[2];
          v17 = *v43 == v33;
          v33 = v43;
        }

        while (!v17);
      }

      v33 = v43;
    }

    while (v43 != v32);
  }

  v44 = v111[3];
  v47 = *v44;
  v45 = v44 + 1;
  v46 = v47;
  if (v47 != v45)
  {
    do
    {
      if (((*(*v46[4] + 224))(v46[4], v46 + 5) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        v1 = v1 & 0xFFFFFFFF00000000 | 0x43A2;
        webrtc::webrtc_logging_impl::Log("\r\t", v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtc_stats_collector.cc");
      }

      v55 = v46[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v46[2];
          v17 = *v56 == v46;
          v46 = v56;
        }

        while (!v17);
      }

      v46 = v56;
    }

    while (v56 != v45);
  }

  v57 = *(v108 + 264);
  v109 = *(v108 + 272);
  if (v57 != v109)
  {
    v58 = 0;
    while (1)
    {
      v110 = v58;
      v112 = v57;
      v59 = *v57;
      if (*v57)
      {
        (**v59)(v59);
      }

      LOBYTE(v135[0]) = 0;
      v139 = 0;
      LOBYTE(v129) = 0;
      v134 = 0;
      v60 = v59[20];
      if (!v60)
      {
        goto LABEL_97;
      }

      v61 = (*(*v59 + 32))(v59);
      if (v61 != 1)
      {
        break;
      }

      v76 = (*(*v60 + 48))(v60);
      v77 = (*(*v60 + 72))(v60);
      v78 = *(v111[2] + 8);
      if (!v78)
      {
LABEL_80:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v79 = v78;
          v80 = v78[4];
          if (v76 >= v80)
          {
            break;
          }

          v78 = *v79;
          if (!*v79)
          {
            goto LABEL_80;
          }
        }

        if (v80 >= v76)
        {
          break;
        }

        v78 = v79[1];
        if (!v78)
        {
          goto LABEL_80;
        }
      }

      v81 = *(v111[3] + 8);
      if (!v81)
      {
LABEL_87:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v82 = v81;
          v83 = v81[4];
          if (v77 >= v83)
          {
            break;
          }

          v81 = *v82;
          if (!*v82)
          {
            goto LABEL_87;
          }
        }

        if (v83 >= v77)
        {
          break;
        }

        v81 = v82[1];
        if (!v81)
        {
          goto LABEL_87;
        }
      }

      v84 = v79[5];
      v85 = *(v79 + 3);
      v86 = *(v79 + 4);
      v79[6] = 0;
      v79[7] = 0;
      v79[5] = 0;
      v87 = v79[10];
      v117 = v84;
      v120 = v87;
      v79[8] = 0;
      v79[9] = 0;
      v79[10] = 0;
      v121 = 0uLL;
      v122 = 0;
      v121 = *(v82 + 5);
      v118 = v85;
      v122 = v82[7];
      v82[6] = 0;
      v82[7] = 0;
      v82[5] = 0;
      v88 = v79 + 12;
      v89 = v79[12];
      v119 = v86;
      v123 = v79[11];
      v124 = v89;
      v125 = v79[13];
      if (v125)
      {
        *(v89 + 16) = &v124;
        v79[11] = v88;
        *v88 = 0;
        v79[13] = 0;
      }

      else
      {
        v123 = &v124;
      }

      v95 = v82 + 9;
      v96 = v82[9];
      v126 = v82[8];
      v127 = v96;
      if (v82[10])
      {
        *(v96 + 16) = &v127;
        v82[8] = v95;
        *v95 = 0;
        v82[10] = 0;
        if (v134 != 1)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v126 = &v127;
        if (v134 != 1)
        {
LABEL_119:
          webrtc::VideoMediaInfo::VideoMediaInfo(&v129, &v117);
          v134 = 1;
          webrtc::VideoMediaInfo::~VideoMediaInfo(&v117);
          v99 = v59[4];
          v100 = v59[5];
          v94 = v100 - v99;
          if (v100 != v99)
          {
LABEL_98:
            if ((v94 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          goto LABEL_120;
        }
      }

      std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(&v129, v84, v85, 0xCBEEA4E1A08AD8F3 * ((v85 - v84) >> 3));
      std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(&v130[8], v119, *(&v119 + 1), 0xCBEEA4E1A08AD8F3 * ((*(&v119 + 1) - v119) >> 3));
      std::vector<webrtc::VideoReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoReceiverInfo*,webrtc::VideoReceiverInfo*>(v131, v121, *(&v121 + 1), 0xAFD6A052BF5A814BLL * ((*(&v121 + 1) - v121) >> 3));
      std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(&v132, v123, &v124);
      std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(&v133, v126, &v127);
      webrtc::VideoMediaInfo::~VideoMediaInfo(&v117);
      v97 = v59[4];
      v98 = v59[5];
      v94 = v98 - v97;
      if (v98 != v97)
      {
        goto LABEL_98;
      }

LABEL_120:
      v101 = v59[7];
      v102 = v59[8];
      if (v102 != v101)
      {
        if (((v102 - v101) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      LOBYTE(v115[0]) = 0;
      v116 = 0;
      if (v139 == 1)
      {
        webrtc::VoiceMediaInfo::VoiceMediaInfo(v115, v135);
        v116 = 1;
      }

      LOBYTE(v113[0]) = 0;
      v114 = 0;
      if (v134 == 1)
      {
        webrtc::VideoMediaInfo::VideoMediaInfo(v113, &v129);
        v114 = 1;
      }

      webrtc::TrackMediaInfoMap::Initialize(v112 + 10, v115, v113, 0, 0, 0, 0);
      if (v114 == 1)
      {
        webrtc::VideoMediaInfo::~VideoMediaInfo(v113);
      }

      if (v116 == 1)
      {
        webrtc::VoiceMediaInfo::~VoiceMediaInfo(v115);
      }

      (*(*v59 + 32))(v59);
      if (v134 == 1)
      {
        webrtc::VideoMediaInfo::~VideoMediaInfo(&v129);
      }

      if (v139 == 1)
      {
        webrtc::VoiceMediaInfo::~VoiceMediaInfo(v135);
      }

      v58 = v110;
      (*(*v59 + 8))(v59);
      v57 = v112 + 69;
      if (v112 + 69 == v109)
      {
        goto LABEL_123;
      }
    }

    if (v61)
    {
LABEL_97:
      v92 = v59[4];
      v93 = v59[5];
      v94 = v93 - v92;
      if (v93 != v92)
      {
        goto LABEL_98;
      }

      goto LABEL_120;
    }

    v62 = (*(*v60 + 56))(v60);
    v63 = (*(*v60 + 80))(v60);
    v64 = *(*v111 + 8);
    if (!v64)
    {
LABEL_64:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v65 = v64;
        v66 = v64[4];
        if (v62 >= v66)
        {
          break;
        }

        v64 = *v65;
        if (!*v65)
        {
          goto LABEL_64;
        }
      }

      if (v66 >= v62)
      {
        break;
      }

      v64 = v65[1];
      if (!v64)
      {
        goto LABEL_64;
      }
    }

    v67 = *(v111[1] + 8);
    if (!v67)
    {
LABEL_71:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v68 = v67;
        v69 = v67[4];
        if (v63 >= v69)
        {
          break;
        }

        v67 = *v68;
        if (!*v68)
        {
          goto LABEL_71;
        }
      }

      if (v69 >= v63)
      {
        break;
      }

      v67 = v68[1];
      if (!v67)
      {
        goto LABEL_71;
      }
    }

    v70 = v65[5];
    v71 = *(v65 + 3);
    v118 = v71;
    v65[6] = 0;
    v65[7] = 0;
    v65[5] = 0;
    v120 = 0;
    v119 = 0uLL;
    v72 = *(v68 + 5);
    v73 = v68[7];
    v117 = v70;
    v120 = v73;
    v68[6] = 0;
    v68[7] = 0;
    v68[5] = 0;
    v74 = v65 + 9;
    v75 = v65[9];
    v119 = v72;
    *&v121 = v65[8];
    *(&v121 + 1) = v75;
    v122 = v65[10];
    if (v122)
    {
      *(v75 + 16) = &v121 + 8;
      v65[8] = v74;
      *v74 = 0;
      v65[10] = 0;
    }

    else
    {
      *&v121 = &v121 + 8;
    }

    v90 = v68 + 9;
    v91 = v68[9];
    v123 = v68[8];
    v124 = v91;
    v125 = v68[10];
    if (v125)
    {
      *(v91 + 16) = &v124;
      v68[8] = v90;
      *v90 = 0;
      v68[10] = 0;
      LODWORD(v126) = *(v68 + 22);
      if (v139 == 1)
      {
LABEL_93:
        std::vector<webrtc::VoiceSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceSenderInfo*,webrtc::VoiceSenderInfo*>(v135, v70, v71, 0x7D6343EB1A1F58D1 * ((v71 - v70) >> 3));
        std::vector<webrtc::VoiceReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceReceiverInfo*,webrtc::VoiceReceiverInfo*>(v136, v119, *(&v119 + 1), 0xF128CFC4A33F128DLL * ((*(&v119 + 1) - v119) >> 3));
        std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(&v137, v121, &v121 + 1);
        std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>(v138, v123, &v124);
        v138[6] = v126;
LABEL_96:
        webrtc::VoiceMediaInfo::~VoiceMediaInfo(&v117);
        goto LABEL_97;
      }
    }

    else
    {
      v123 = &v124;
      LODWORD(v126) = *(v68 + 22);
      if (v139 == 1)
      {
        goto LABEL_93;
      }
    }

    webrtc::VoiceMediaInfo::VoiceMediaInfo(v135, &v117);
    v139 = 1;
    goto LABEL_96;
  }

LABEL_123:
  (*(**(v108 + 8) + 600))(&v129);
  v103 = *v130;
  *(v108 + 376) = v129;
  *(v108 + 392) = v103;
  LOBYTE(v129) = 0;
  v130[24] = 0;
  v104 = *v130;
  *(v108 + 408) = v129;
  *(v108 + 424) = v104;
  result = *&v130[9];
  *(v108 + 433) = *&v130[9];
  v107[217] = v106;
  return result;
}

void webrtc::RTCStatsReport::ConstIterator::~ConstIterator(webrtc::RTCStatsReport::ConstIterator *this)
{
  v1 = *this;
  if (*this)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(v1 + 16, *(v1 + 24));
      MEMORY[0x2743DA540](v1, 0x1020C4043D65406);
    }
  }
}

uint64_t webrtc::RTCStatsReport::ConstIterator::operator++(uint64_t result)
{
  v1 = *(result + 8);
  v2 = v1[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    do
    {
      v3 = v1[2];
      v4 = *v3 == v1;
      v1 = v3;
    }

    while (!v4);
  }

  *(result + 8) = v3;
  return result;
}

void webrtc::RTCStatsReport::AddStats(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(v4 + 8), *(v4 + 16));
    v4 = *a2;
  }

  else
  {
    v5 = *(v4 + 8);
    v8.__r_.__value_.__r.__words[2] = *(v4 + 24);
    *&v8.__r_.__value_.__l.__data_ = v5;
  }

  *__p = *&v8.__r_.__value_.__l.__data_;
  v6 = v8.__r_.__value_.__r.__words[2];
  memset(&v8, 0, sizeof(v8));
  *a2 = 0;
  v10 = v6;
  v11 = v4;
  std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unique_ptr<webrtc::RTCStats const>>>(a1 + 16, __p);
  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v8.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void webrtc::RTCStatsReport::Take(void *a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((a1 + 2), a2);
  if (a1 + 3 == v5)
  {
    *a3 = 0;
  }

  else
  {
    v6 = v5;
    v7 = v5[7];
    v5[7] = 0;
    *a3 = v7;
    v8 = v5[1];
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
      v10 = v5;
      do
      {
        v9 = v10[2];
        v11 = *v9 == v10;
        v10 = v9;
      }

      while (!v11);
    }

    if (a1[2] == v5)
    {
      a1[2] = v9;
    }

    v12 = a1[3];
    --a1[4];
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v12, v6);
    v13 = v6[7];
    v6[7] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    if (*(v6 + 55) < 0)
    {
      operator delete(v6[4]);
      v14 = v6;
    }

    else
    {
      v14 = v6;
    }

    operator delete(v14);
  }
}

uint64_t webrtc::RTCStatsReport::begin@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    atomic_fetch_add_explicit(this, 1u, memory_order_relaxed);
  }

  v3 = *(this + 16);
  *a2 = this;
  a2[1] = v3;
  atomic_fetch_add_explicit(this, 1u, memory_order_relaxed);
  if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(this + 16, *(this + 24));

    JUMPOUT(0x2743DA540);
  }

  return this;
}

uint64_t webrtc::RTCStatsReport::end@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    atomic_fetch_add_explicit(this, 1u, memory_order_relaxed);
    *a2 = this;
    a2[1] = this + 24;
    atomic_fetch_add_explicit(this, 1u, memory_order_relaxed);
    if (atomic_fetch_add(this, 0xFFFFFFFF) == 1)
    {
      std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::destroy(this + 16, *(this + 24));

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 24;
  }

  return this;
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<webrtc::RTCStats const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unique_ptr<webrtc::RTCStats const>>>(uint64_t a1, const void **a2)
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

void webrtc::anonymous namespace::TraverseAndTakeVisitedStats(void *a1, uint64_t a2, const void **a3)
{
  webrtc::RTCStatsReport::Take(a1, a3, &v14);
  v6 = v14;
  if (v14)
  {
    webrtc::GetStatsReferencedIds(v14, v5, &v12);
    v11 = v6;
    webrtc::RTCStatsReport::AddStats(a2, &v11);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v7 = v12;
    v8 = v13;
    if (v12 != v13)
    {
      v9 = v12;
      do
      {
        v10 = *v9++;
      }

      while (v9 != v8);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

char *webrtc::GetStatsReferencedIds@<X0>(webrtc *this@<X0>, const webrtc::RTCStats *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = (*(*this + 24))(this, a2);
  if (result == "certificate")
  {
    if (*(this + 160) != 1)
    {
      return result;
    }

    v7 = this + 136;
    goto LABEL_14;
  }

  if (result == "codec")
  {
    goto LABEL_10;
  }

  if (result == "data-channel")
  {
    return result;
  }

  if (result == "candidate-pair")
  {
    if (*(this + 64) == 1)
    {
      v8 = this + 40;
      result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
      if (*(this + 96) != 1)
      {
LABEL_18:
        if (*(this + 128) != 1)
        {
          return result;
        }

LABEL_33:
        v7 = this + 104;
LABEL_14:
        v8 = v7;
        return std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
      }
    }

    else if (*(this + 96) != 1)
    {
      goto LABEL_18;
    }

    v8 = this + 72;
    result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
    if (*(this + 128) != 1)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (result == "local-candidate" || result == "remote-candidate")
  {
LABEL_10:
    if (*(this + 64) != 1)
    {
      return result;
    }

    v7 = this + 40;
    goto LABEL_14;
  }

  if (result == "peer-connection")
  {
    return result;
  }

  if (result == "inbound-rtp")
  {
    if (*(this + 288) == 1)
    {
      v8 = this + 264;
      result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
    }

    goto LABEL_36;
  }

  if (result == "outbound-rtp")
  {
    if (*(this + 232) == 1)
    {
      v8 = this + 208;
      result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
    }

LABEL_45:
    if (*(this + 104) == 1)
    {
      v8 = this + 80;
      result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
      if (*(this + 136) != 1)
      {
LABEL_47:
        if (*(this + 200) != 1)
        {
          return result;
        }

LABEL_51:
        v7 = this + 176;
        goto LABEL_14;
      }
    }

    else if (*(this + 136) != 1)
    {
      goto LABEL_47;
    }

    v8 = this + 112;
    result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
    if (*(this + 200) != 1)
    {
      return result;
    }

    goto LABEL_51;
  }

  if (result == "remote-inbound-rtp")
  {
LABEL_36:
    if (*(this + 104) == 1)
    {
      v8 = this + 80;
      result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
      if (*(this + 136) != 1)
      {
LABEL_38:
        if (*(this + 192) != 1)
        {
          return result;
        }

LABEL_42:
        v7 = this + 168;
        goto LABEL_14;
      }
    }

    else if (*(this + 136) != 1)
    {
      goto LABEL_38;
    }

    v8 = this + 112;
    result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
    if (*(this + 192) != 1)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (result == "remote-outbound-rtp")
  {
    goto LABEL_45;
  }

  if (result != "transport")
  {
    return result;
  }

  if (*(this + 128) == 1)
  {
    v8 = this + 104;
    result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
    if (*(this + 192) != 1)
    {
LABEL_28:
      if (*(this + 224) != 1)
      {
        goto LABEL_29;
      }

      goto LABEL_54;
    }
  }

  else if (*(this + 192) != 1)
  {
    goto LABEL_28;
  }

  v8 = this + 168;
  result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
  if (*(this + 224) != 1)
  {
LABEL_29:
    if (*(this + 256) == 1)
    {
      goto LABEL_55;
    }

    return result;
  }

LABEL_54:
  v8 = this + 200;
  result = std::vector<webrtc::Connection const*>::push_back[abi:sn200100](a3, &v8);
  if (*(this + 256) == 1)
  {
LABEL_55:
    v7 = this + 232;
    goto LABEL_14;
  }

  return result;
}

void webrtc::rtclog::StreamConfig::~StreamConfig(webrtc::rtclog::StreamConfig *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 11);
    v4 = *(this + 10);
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
      v4 = *(this + 10);
    }

    *(this + 11) = v2;
    operator delete(v4);
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    v8 = *(this + 6);
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
      v8 = *(this + 6);
    }

    *(this + 7) = v6;
    operator delete(v8);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void sub_27339EB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = WK_RTCCVPixelBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2733A0698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2733A0960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2733A0E00(_Unwind_Exception *a1)
{
  (*(*v3 + 8))(v3);

  webrtc::EncodedImage::~EncodedImage(v1);
  _Unwind_Resume(a1);
}

void sub_2733A0EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    webrtc::EncodedImage::~EncodedImage(v9);
    _Unwind_Resume(a1);
  }

  webrtc::EncodedImage::~EncodedImage(v9);
  _Unwind_Resume(a1);
}

BOOL webrtc::RefCountedObject<anonymous namespace::ObjCEncodedImageBuffer>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 4, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void webrtc::RefCountedObject<anonymous namespace::ObjCEncodedImageBuffer>::~RefCountedObject(uint64_t a1)
{

  JUMPOUT(0x2743DA540);
}

uint64_t anonymous namespace::ObjCEncodedImageBuffer::data(id *this)
{
  return [this[1] bytes];
}

{
  return [this[1] bytes];
}

void sub_2733A1214(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2733A136C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t webrtc::RTCPReceiver::RTCPReceiver(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  *a1 = *a2;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
  }

  v8 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v8;
  *(a1 + 40) = *(a3 + 1);
  (*(**(a1 + 8) + 16))(&__p);
  v9 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v9 = *__p.__opaque;
  }

  if (v9 < 7)
  {
    v10 = 0;
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sig = __p.__sig;
  if ((v28 & 0x80u) == 0)
  {
    sig = &__p;
  }

  v12 = sig->__sig;
  v13 = *(&sig->__sig + 3);
  v10 = v12 == 1650552389 && v13 == 1684368482;
  if (v28 < 0)
  {
LABEL_17:
    operator delete(__p.__sig);
  }

LABEL_18:
  *(a1 + 64) = *(a3 + 180);
  v15 = a1 + 64;
  *(a1 + 41) = v10;
  v16 = a4 + 8;
  if (!a4)
  {
    v16 = 0;
  }

  *(a1 + 48) = v16;
  *(a1 + 56) = 2;
  v17 = (a1 + 56);
  if (*(a3 + 188) == 1)
  {
    *(a1 + 68) = *(a3 + 184);
    *(a1 + 56) = 4;
  }

  v18 = *(a3 + 112);
  if (v18)
  {
    v19 = (*(*v18 + 24))(v18);
    LODWORD(__p.__sig) = v19;
    BYTE4(__p.__sig) = BYTE4(v19);
    if ((v19 & 0x100000000) != 0)
    {
      v20 = *v17;
      if (*v17)
      {
        v15 = *(a1 + 64);
        v21 = *(a1 + 72);
      }

      else
      {
        v21 = 4;
      }

      if (v20 >> 1 == v21)
      {
        absl::inlined_vector_internal::Storage<unsigned int,3ul,std::allocator<unsigned int>>::EmplaceBackSlow<unsigned int const&>(v17);
      }

      if (!v15)
      {
        __break(1u);
      }

      *(v15 + 4 * (v20 >> 1)) = v19;
      *v17 = v20 + 2;
    }
  }

  *(a1 + 80) = *(a3 + 40);
  *(a1 + 88) = *(a3 + 24);
  *(a1 + 104) = *(a3 + 48);
  *(a1 + 112) = *(a3 + 64);
  v22 = *(a3 + 152);
  v23 = 1000000;
  if (*a3)
  {
    v23 = 5000000;
  }

  if (v22 <= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1000 * v22;
  }

  *(a1 + 120) = v24;
  pthread_mutexattr_init(&__p);
  pthread_mutexattr_setpolicy_np(&__p, 3);
  pthread_mutex_init((a1 + 128), &__p);
  pthread_mutexattr_destroy(&__p);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = a1 + 248;
  *(a1 + 256) = a1 + 248;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = *(a3 + 193);
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  *(a1 + 448) = vnegq_f64(v25);
  *(a1 + 464) = *(a3 + 88);
  *(a1 + 480) = *(a3 + 80);
  *(a1 + 488) = 0u;
  *(a1 + 502) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = (*(**(a1 + 16) + 16))(*(a1 + 16));
  return a1;
}

void webrtc::RTCPReceiver::~RTCPReceiver(webrtc::RTCPReceiver *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    *(this + 54) = v2;
    operator delete(v2);
  }

  v3 = *(this + 50);
  if (v3)
  {
    *(this + 51) = v3;
    operator delete(v3);
  }

  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 41);
  if (v6)
  {
    v7 = *(this + 42);
    v8 = *(this + 41);
    if (v7 != v6)
    {
      do
      {
        std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v7 - 16));
        v9 = *(v7 - 48);
        if (v9)
        {
          *(v7 - 40) = v9;
          operator delete(v9);
        }

        v7 -= 72;
      }

      while (v7 != v6);
      v8 = *(this + 41);
    }

    *(this + 42) = v6;
    operator delete(v8);
  }

  v10 = *(this + 34);
  if (v10)
  {
    *(this + 35) = v10;
    operator delete(v10);
  }

  if (*(this + 33))
  {
    v11 = *(this + 32);
    v12 = *(*(this + 31) + 8);
    v13 = *v11;
    *(v13 + 8) = v12;
    *v12 = v13;
    *(this + 33) = 0;
    if (v11 != (this + 248))
    {
      do
      {
        v14 = *(v11 + 1);
        operator delete(v11);
        v11 = v14;
      }

      while (v14 != (this + 248));
    }
  }

  pthread_mutex_destroy(this + 2);
  if (*(this + 56))
  {
    operator delete(*(this + 8));
  }

  v15 = *this;
  if (*this)
  {
    if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }
}

void webrtc::RTCPReceiver::IncomingPacket(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v303, v304, v305, v306, v307, v308, v309, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc");
    }

    return;
  }

  v401 = 0;
  v402 = 0;
  v403 = 0;
  LOBYTE(v404[0]) = 0;
  v409 = 0;
  v410[0].i8[0] = 0;
  v412 = 0;
  LOBYTE(v413) = 0;
  v422 = 0;
  v423 = 0;
  *v398 = 0u;
  *__dst = 0u;
  memset(v400, 0, 25);
  pthread_mutex_lock((a1 + 128));
  v6 = a2;
  v7 = &a2[a3];
  v8 = (a1 + 64);
  v431 = 0;
  v397 = v7;
  v432 = 0;
  v433 = 0;
  v434 = 0;
  v429 = 0;
  __p = 0;
  v430 = 0;
  v395 = vdupq_n_s64(0x7FF8000000000000uLL);
  v396 = vnegq_f64(0);
  while (1)
  {
LABEL_3:
    if (!webrtc::rtcp::CommonHeader::Parse(&v431, v6, v7 - v6))
    {
      goto LABEL_532;
    }

    if (v431 <= 0xCBu)
    {
      if (v431 <= 0xC9u)
      {
        if (v431 != 200)
        {
          if (v431 == 201)
          {
            LODWORD(v435[0].__r_.__value_.__r.__words[1]) = 0;
            v435[0].__r_.__value_.__r.__words[0] = &unk_28829A3B0;
            memset(&v435[0].__r_.__value_.__r.__words[2], 0, sizeof(std::string));
            v9 = webrtc::rtcp::ReceiverReport::Parse(v435, &v431);
            LOBYTE(v10) = v9;
            if (v9)
            {
              v11 = v435[0].__r_.__value_.__r.__words[1];
              HIDWORD(v398[0]) = v435[0].__r_.__value_.__r.__words[1];
              v13 = *(a1 + 328);
              v12 = *(a1 + 336);
              if (v12 == v13)
              {
                v13 = *(a1 + 336);
                v19 = v13;
              }

              else
              {
                v14 = 0x8E38E38E38E38E39 * ((v12 - v13) >> 3);
                do
                {
                  v15 = v14 >> 1;
                  v16 = &v13[72 * (v14 >> 1)];
                  v18 = *v16;
                  v17 = v16 + 72;
                  v14 += ~(v14 >> 1);
                  if (v18 < LODWORD(v435[0].__r_.__value_.__r.__words[1]))
                  {
                    v13 = v17;
                  }

                  else
                  {
                    v14 = v15;
                  }
                }

                while (v14);
                v19 = v13;
                if (v12 != v13)
                {
                  v19 = v13 + 72;
                  if (*v13 > LODWORD(v435[0].__r_.__value_.__r.__words[1]))
                  {
                    v19 = v13;
                  }
                }
              }

              if (v13 == v19)
              {
                v20 = *(a1 + 336);
              }

              else
              {
                v20 = v13;
              }

              if (v12 != v20)
              {
                *(v20 + 1) = (*(**(a1 + 16) + 16))(*(a1 + 16));
              }

              LODWORD(v398[0]) |= 4u;
              v21 = v435[0].__r_.__value_.__r.__words[2];
              data = v435[1].__r_.__value_.__l.__data_;
              if (v435[0].__r_.__value_.__r.__words[2] == v435[1].__r_.__value_.__r.__words[0])
              {
                goto LABEL_26;
              }

              do
              {
                webrtc::RTCPReceiver::HandleReportBlock(a1, v21, v398, v11);
                v21 += 7;
              }

              while (v21 != data);
            }

            v21 = v435[0].__r_.__value_.__r.__words[2];
LABEL_26:
            v435[0].__r_.__value_.__r.__words[0] = &unk_28829A3B0;
            if (!v21)
            {
              goto LABEL_29;
            }

            v435[1].__r_.__value_.__r.__words[0] = v21;
            v23 = v21;
LABEL_28:
            operator delete(v23);
LABEL_29:
            if ((v10 & 1) == 0)
            {
              goto LABEL_532;
            }

            goto LABEL_500;
          }

          goto LABEL_384;
        }

        LODWORD(v435[0].__r_.__value_.__r.__words[1]) = 0;
        v435[0].__r_.__value_.__r.__words[0] = &unk_28829FA68;
        *v436 = 0uLL;
        v435[1].__r_.__value_.__r.__words[2] = 0;
        memset(&v435[0].__r_.__value_.__r.__words[2], 0, 20);
        v143 = webrtc::rtcp::SenderReport::Parse(v435, &v431);
        if (v143)
        {
          v144 = v435[0].__r_.__value_.__r.__words[1];
          HIDWORD(v398[0]) = v435[0].__r_.__value_.__r.__words[1];
          v146 = *(a1 + 328);
          v145 = *(a1 + 336);
          if (v145 == v146)
          {
            v146 = *(a1 + 336);
            v152 = v146;
          }

          else
          {
            v147 = 0x8E38E38E38E38E39 * ((v145 - v146) >> 3);
            do
            {
              v148 = v147 >> 1;
              v149 = &v146[72 * (v147 >> 1)];
              v151 = *v149;
              v150 = v149 + 72;
              v147 += ~(v147 >> 1);
              if (v151 < LODWORD(v435[0].__r_.__value_.__r.__words[1]))
              {
                v146 = v150;
              }

              else
              {
                v147 = v148;
              }
            }

            while (v147);
            v152 = v146;
            if (v145 != v146)
            {
              v152 = v146 + 72;
              if (*v146 > LODWORD(v435[0].__r_.__value_.__r.__words[1]))
              {
                v152 = v146;
              }
            }
          }

          if (v146 == v152)
          {
            v153 = *(a1 + 336);
          }

          else
          {
            v153 = v146;
          }

          if (v145 != v153)
          {
            *(v153 + 1) = (*(**(a1 + 16) + 16))(*(a1 + 16));
          }

          if (*(a1 + 192) == v144)
          {
            LODWORD(v398[0]) |= 2u;
            *(a1 + 216) = *(&v435[0].__r_.__value_.__l + 2);
            *(a1 + 224) = v435[1].__r_.__value_.__l.__data_;
            *(a1 + 200) = (*(**(a1 + 16) + 16))(*(a1 + 16));
            v154 = *(a1 + 16);
            v155 = (*(*v154 + 16))(v154);
            *(a1 + 208) = (*(*v154 + 24))(v154, v155);
            v156 = LODWORD(v435[1].__r_.__value_.__r.__words[1]);
            *(a1 + 228) = HIDWORD(v435[1].__r_.__value_.__r.__words[0]);
            v157 = *(a1 + 240) + 1;
            *(a1 + 232) = v156;
            *(a1 + 240) = v157;
            v158 = v435[1].__r_.__value_.__r.__words[2];
            v159 = *v436;
            if (v435[1].__r_.__value_.__r.__words[2] == *v436)
            {
LABEL_263:
              v435[0].__r_.__value_.__r.__words[0] = &unk_28829FA68;
              if (v158)
              {
                *v436 = v158;
                operator delete(v158);
              }

              *webrtc::flat_map<unsigned int,webrtc::RTCPReceiver::ParseCompoundPacket(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTCPReceiver::PacketInformation *)::RtcpReceivedBlock,std::less<void>,std::vector<std::pair<unsigned int,webrtc::RTCPReceiver::ParseCompoundPacket(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTCPReceiver::PacketInformation *)::RtcpReceivedBlock>>>::operator[](&__p, v398 + 1) = 1;
              if (!v143)
              {
                goto LABEL_532;
              }

              goto LABEL_500;
            }
          }

          else
          {
            LODWORD(v398[0]) |= 4u;
            v158 = v435[1].__r_.__value_.__r.__words[2];
            v159 = *v436;
            if (v435[1].__r_.__value_.__r.__words[2] == *v436)
            {
              goto LABEL_263;
            }
          }

          do
          {
            webrtc::RTCPReceiver::HandleReportBlock(a1, v158, v398, v144);
            v158 += 28;
          }

          while (v158 != v159);
        }

        v158 = v435[1].__r_.__value_.__r.__words[2];
        goto LABEL_263;
      }

      if (v431 != 202)
      {
        if (v431 == 203)
        {
          LODWORD(v435[0].__r_.__value_.__r.__words[1]) = 0;
          v435[0].__r_.__value_.__r.__words[0] = &unk_288290400;
          memset(&v435[0].__r_.__value_.__r.__words[2], 0, 32);
          *v436 = 0u;
          v37 = webrtc::rtcp::Bye::Parse(v435, &v431);
          if (v37)
          {
            v38 = *(a1 + 352);
            v39 = *(a1 + 360);
            if (v39 == v38)
            {
              v41 = *(a1 + 360);
              v46 = v41;
            }

            else
            {
              v40 = (v39 - v38) >> 5;
              v41 = *(a1 + 352);
              do
              {
                v42 = v40 >> 1;
                v43 = &v41[32 * (v40 >> 1)];
                v45 = *v43;
                v44 = v43 + 32;
                v40 += ~(v40 >> 1);
                if (v45 < LODWORD(v435[0].__r_.__value_.__r.__words[1]))
                {
                  v41 = v44;
                }

                else
                {
                  v40 = v42;
                }
              }

              while (v40);
              v46 = v41;
              if (v39 != v41)
              {
                v46 = v41 + 32;
                if (LODWORD(v435[0].__r_.__value_.__r.__words[1]) < *v41)
                {
                  v46 = v41;
                }
              }
            }

            if (v46 < v41)
            {
              goto LABEL_649;
            }

            if (v46 != v41)
            {
              if (v46 != v39)
              {
                v47 = &v41[v38];
                v48 = v46 + v38;
                do
                {
                  v49 = (v47 - v38);
                  *v49 = *(v48 - v38);
                  v50 = *(v48 - v38 + 8);
                  *(v49 + 3) = *(v48 - v38 + 24);
                  *(v49 + 8) = v50;
                  v47 += 32;
                  v48 += 32;
                }

                while ((v48 - v38) != v39);
                v41 = (v47 - v38);
              }

              *(a1 + 360) = v41;
            }

            v51 = *(a1 + 400);
            v52 = *(a1 + 408);
            if (v51 != v52)
            {
              while (*(v51 + 8) != LODWORD(v435[0].__r_.__value_.__r.__words[1]))
              {
                v51 += 72;
                if (v51 == v52)
                {
                  goto LABEL_392;
                }
              }

              if (v51 != v52)
              {
                v183 = v51 + 72;
                if (v51 + 72 != v52)
                {
                  do
                  {
                    if (*(v183 + 8) != LODWORD(v435[0].__r_.__value_.__r.__words[1]))
                    {
                      *v51 = *v183;
                      v184 = *(v183 + 8);
                      v185 = *(v183 + 24);
                      v186 = *(v183 + 40);
                      *(v51 + 56) = *(v183 + 56);
                      *(v51 + 40) = v186;
                      *(v51 + 24) = v185;
                      *(v51 + 8) = v184;
                      v51 += 72;
                    }

                    v183 += 72;
                  }

                  while (v183 != v52);
                  v52 = *(a1 + 408);
                }
              }
            }

            if (v52 < v51)
            {
              goto LABEL_649;
            }

            if (v51 != v52)
            {
              *(a1 + 408) = v51;
            }

LABEL_392:
            v235 = v435[0].__r_.__value_.__r.__words[1];
            v237 = *(a1 + 328);
            v236 = *(a1 + 336);
            if (v236 == v237)
            {
              v237 = *(a1 + 336);
              v243 = v237;
            }

            else
            {
              v238 = 0x8E38E38E38E38E39 * ((v236 - v237) >> 3);
              do
              {
                v239 = v238 >> 1;
                v240 = &v237[72 * (v238 >> 1)];
                v242 = *v240;
                v241 = (v240 + 18);
                v238 += ~(v238 >> 1);
                if (v242 < LODWORD(v435[0].__r_.__value_.__r.__words[1]))
                {
                  v237 = v241;
                }

                else
                {
                  v238 = v239;
                }
              }

              while (v238);
              v243 = v237;
              if (v236 != v237)
              {
                v243 = v237 + 72;
                if (*v237 > LODWORD(v435[0].__r_.__value_.__r.__words[1]))
                {
                  v243 = v237;
                }
              }
            }

            if (v237 == v243)
            {
              v237 = *(a1 + 336);
            }

            if (v236 != v237)
            {
              v237[16] = 1;
            }

            v244 = *(a1 + 424);
            v245 = *(a1 + 432);
            if (v245 == v244)
            {
              v247 = *(a1 + 432);
              v252 = v247;
            }

            else
            {
              v246 = 0xAAAAAAAAAAAAAAABLL * ((v245 - v244) >> 3);
              v247 = *(a1 + 424);
              do
              {
                v248 = v246 >> 1;
                v249 = &v247[24 * (v246 >> 1)];
                v251 = *v249;
                v250 = v249 + 24;
                v246 += ~(v246 >> 1);
                if (v251 < v235)
                {
                  v247 = v250;
                }

                else
                {
                  v246 = v248;
                }
              }

              while (v246);
              v252 = v247;
              if (v245 != v247)
              {
                v252 = v247 + 24;
                if (v235 < *v247)
                {
                  v252 = v247;
                }
              }
            }

            if (v252 < v247)
            {
              goto LABEL_649;
            }

            if (v252 != v247)
            {
              if (v252 != v245)
              {
                v253 = &v247[v244];
                v254 = v252 + v244;
                do
                {
                  v255 = (v253 - v244);
                  *v255 = *(v254 - v244);
                  v256 = *(v254 - v244 + 8);
                  v255[16] = *(v254 - v244 + 16);
                  *(v255 + 1) = v256;
                  v253 += 24;
                  v254 += 24;
                }

                while ((v254 - v244) != v245);
                v235 = v435[0].__r_.__value_.__r.__words[1];
                v247 = (v253 - v244);
              }

              *(a1 + 432) = v247;
            }

            v258 = *(a1 + 272);
            v257 = *(a1 + 280);
            if (v257 == v258)
            {
              v258 = *(a1 + 280);
              v264 = v258;
            }

            else
            {
              v259 = (v257 - v258) >> 4;
              do
              {
                v260 = v259 >> 1;
                v261 = &v258[16 * (v259 >> 1)];
                v263 = *v261;
                v262 = v261 + 16;
                v259 += ~(v259 >> 1);
                if (v263 < v235)
                {
                  v258 = v262;
                }

                else
                {
                  v259 = v260;
                }
              }

              while (v259);
              v264 = v258;
              if (v257 != v258)
              {
                v264 = v258 + 16;
                if (v235 < *v258)
                {
                  v264 = v258;
                }
              }
            }

            if (v258 == v264)
            {
              v265 = *(a1 + 280);
            }

            else
            {
              v265 = v258;
            }

            if (v257 != v265)
            {
              v266 = *(v265 + 1);
              if (v266 == (a1 + 248))
              {
                goto LABEL_649;
              }

              v268 = *v266;
              v267 = v266[1];
              *(v268 + 8) = v267;
              *v267 = v268;
              --*(a1 + 264);
              operator delete(v266);
              v273 = *(a1 + 280);
              if (v273 == v265)
              {
                webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/rtc_base/containers/flat_tree.h", 885, "position != body_.end()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v269, v270, v271, v272, v389);
                goto LABEL_654;
              }

              v274 = v265 + 16;
              if (v265 + 16 != v273)
              {
                v275 = v273 - v265 - 32;
                if (v275 < 0x10)
                {
                  goto LABEL_657;
                }

                v276 = *(a1 + 272);
                v277 = &v265[-v276];
                v278 = (v275 >> 4) + 1;
                v279 = 16 * (v278 & 0x1FFFFFFFFFFFFFFELL);
                v265 += v279;
                v274 += v279;
                v280 = &v277[v276 + 24];
                v281 = v278 & 0x1FFFFFFFFFFFFFFELL;
                do
                {
                  v282 = *(v280 + 8);
                  *(v280 - 24) = *(v280 - 8);
                  *(v280 - 8) = v282;
                  v283 = *(v280 + 16);
                  *(v280 - 16) = *v280;
                  *v280 = v283;
                  v280 += 32;
                  v281 -= 2;
                }

                while (v281);
                if (v278 != (v278 & 0x1FFFFFFFFFFFFFFELL))
                {
LABEL_657:
                  do
                  {
                    *v265 = *v274;
                    *(v265 + 1) = *(v274 + 1);
                    v274 += 16;
                    v265 += 16;
                  }

                  while (v274 != v273);
                }
              }

              *(a1 + 280) = v265;
            }

            v7 = v397;
            if (*(a1 + 312) == 1)
            {
              *(a1 + 312) = 0;
            }
          }

          v435[0].__r_.__value_.__r.__words[0] = &unk_288290400;
          if ((v436[15] & 0x80000000) != 0)
          {
            operator delete(v435[1].__r_.__value_.__r.__words[2]);
          }

          if (v435[0].__r_.__value_.__r.__words[2])
          {
            v435[1].__r_.__value_.__r.__words[0] = v435[0].__r_.__value_.__r.__words[2];
            operator delete(v435[0].__r_.__value_.__r.__words[2]);
          }

          if ((v37 & 1) == 0)
          {
            goto LABEL_532;
          }

          goto LABEL_500;
        }

        goto LABEL_384;
      }

      LODWORD(v435[0].__r_.__value_.__r.__words[1]) = 0;
      memset(&v435[0].__r_.__value_.__r.__words[2], 0, sizeof(std::string));
      v435[0].__r_.__value_.__r.__words[0] = &unk_28829F090;
      v435[1].__r_.__value_.__r.__words[2] = 4;
      webrtc::rtcp::Sdes::Parse(v435, &v431);
      if (v164)
      {
        v165 = v435[0].__r_.__value_.__r.__words[2];
        v166 = v435[1].__r_.__value_.__l.__data_;
        if (v435[0].__r_.__value_.__r.__words[2] != v435[1].__r_.__value_.__r.__words[0])
        {
          v167 = *(a1 + 464);
          if (v167)
          {
            v168 = v435[0].__r_.__value_.__r.__words[2] + 32;
            while (1)
            {
              v169 = *(v168 - 1);
              if (v169 < 0)
              {
                v170 = *(v168 - 24);
                v169 = *(v168 - 16);
              }

              else
              {
                v170 = v168 - 24;
              }

              (*(*v167 + 16))(v167, *(v168 - 32), v170, v169);
              if (v168 == v166)
              {
                break;
              }

              while (1)
              {
                v167 = *(a1 + 464);
                v168 += 32;
                if (v167)
                {
                  break;
                }

                if (v168 == v166)
                {
                  goto LABEL_245;
                }
              }
            }

LABEL_245:
            v165 = v435[0].__r_.__value_.__r.__words[2];
          }
        }

        LODWORD(v398[0]) |= 8u;
        v435[0].__r_.__value_.__r.__words[0] = &unk_28829F090;
        v7 = v397;
        if (v165)
        {
          v176 = v435[1].__r_.__value_.__l.__data_;
          v177 = v165;
          if (v435[1].__r_.__value_.__r.__words[0] != v165)
          {
            do
            {
              if (*(v176 - 1) < 0)
              {
                operator delete(*(v176 - 3));
              }

              v176 -= 32;
            }

            while (v176 != v165);
            v177 = v435[0].__r_.__value_.__r.__words[2];
          }

          v435[1].__r_.__value_.__r.__words[0] = v165;
          operator delete(v177);
        }

        v6 = v434 + v433 + v432;
        v8 = (a1 + 64);
        if (v6 == v397)
        {
          goto LABEL_518;
        }

        continue;
      }

      v435[0].__r_.__value_.__r.__words[0] = &unk_28829F090;
      v311 = v435[0].__r_.__value_.__r.__words[2];
      if (v435[0].__r_.__value_.__r.__words[2])
      {
        v312 = v435[1].__r_.__value_.__l.__data_;
        v313 = v435[0].__r_.__value_.__r.__words[2];
        if (v435[1].__r_.__value_.__r.__words[0] != v435[0].__r_.__value_.__r.__words[2])
        {
          do
          {
            if (*(v312 - 1) < 0)
            {
              operator delete(*(v312 - 3));
            }

            v312 -= 32;
          }

          while (v312 != v311);
          v313 = v435[0].__r_.__value_.__r.__words[2];
        }

        v435[1].__r_.__value_.__r.__words[0] = v311;
        operator delete(v313);
      }

LABEL_532:
      v310 = 0;
      if (!*(a1 + 520))
      {
        goto LABEL_550;
      }

      goto LABEL_533;
    }

    if (v431 <= 0xCDu)
    {
      if (v431 == 204)
      {
        LODWORD(v441.__r_.__value_.__r.__words[1]) = 0;
        v441.__r_.__value_.__r.__words[0] = &unk_28828CCD8;
        v441.__r_.__value_.__s.__data_[12] = 0;
        LODWORD(v441.__r_.__value_.__r.__words[2]) = 0;
        v443 = 0;
        v442 = 0uLL;
        v160 = webrtc::rtcp::App::Parse(&v441, &v431);
        v25 = v160;
        if (v160 && LODWORD(v441.__r_.__value_.__r.__words[2]) == 1735356263 && v441.__r_.__value_.__s.__data_[12] == 13)
        {
          LODWORD(v435[0].__r_.__value_.__r.__words[1]) = v441.__r_.__value_.__r.__words[1];
          *(&v435[0].__r_.__value_.__r.__words[1] + 4) = *(&v441.__r_.__value_.__r.__words[1] + 4);
          *&v435[1].__r_.__value_.__l.__data_ = v442;
          v161 = v443;
          v443 = 0;
          v435[1].__r_.__value_.__r.__words[2] = v161;
          v442 = 0uLL;
          v435[0].__r_.__value_.__r.__words[0] = &unk_28829A650;
          *v436 = 0x7FF8000000000000;
          *&v436[8] = v396;
          *&v436[24] = v396;
          *&v436[40] = v396;
          *&v436[56] = v396;
          *&v436[72] = v396;
          *&v436[88] = 0x8000000000000000;
          v437 = v395;
          v438 = v396;
          v439 = 0x7FF8000000000000;
          RemoteEstimateSerializer = webrtc::rtcp::GetRemoteEstimateSerializer(v160);
          if ((**RemoteEstimateSerializer)())
          {
            v419 = v437;
            v420 = v438;
            v421 = v439;
            v415 = *&v436[32];
            v416 = *&v436[48];
            v417 = *&v436[64];
            v418 = *&v436[80];
            v413 = *v436;
            v414 = *&v436[16];
            if ((v422 & 1) == 0)
            {
              v422 = 1;
            }
          }

          v162 = v435[1].__r_.__value_.__r.__words[2];
          v435[0].__r_.__value_.__r.__words[0] = &unk_28828CCD8;
          v435[1].__r_.__value_.__r.__words[2] = 0;
          if (v162)
          {
            MEMORY[0x2743DA520](v162, 0x1000C8077774924);
          }
        }

        v163 = v443;
        v441.__r_.__value_.__r.__words[0] = &unk_28828CCD8;
        v443 = 0;
        if (v163)
        {
          MEMORY[0x2743DA520](v163, 0x1000C8077774924);
        }

        goto LABEL_499;
      }

      if (v431 != 205)
      {
        goto LABEL_384;
      }

      if (HIBYTE(v431) <= 4u)
      {
        if (HIBYTE(v431) != 1)
        {
          if (HIBYTE(v431) == 3)
          {
            memset(&v435[0].__r_.__value_.__r.__words[1], 0, 32);
            v435[0].__r_.__value_.__r.__words[0] = &unk_2882A1040;
            v10 = webrtc::rtcp::Tmmbr::Parse(v435, &v431);
            v23 = v435[0].__r_.__value_.__r.__words[2];
            if (v10)
            {
              if (HIDWORD(v435[0].__r_.__value_.__r.__words[1]))
              {
                v225 = HIDWORD(v435[0].__r_.__value_.__r.__words[1]);
              }

              else
              {
                v225 = v435[0].__r_.__value_.__r.__words[1];
              }

              if (v435[0].__r_.__value_.__r.__words[2] != v435[1].__r_.__value_.__r.__words[0])
              {
                v226 = *(a1 + 56);
                if (v226 < 2)
                {
                  goto LABEL_649;
                }

                if (v226)
                {
                  v227 = v435[0].__r_.__value_.__r.__words[2];
                  while (**v8 != *v227 || !*(v227 + 8))
                  {
                    v227 += 24;
                    if (v227 == v435[1].__r_.__value_.__r.__words[0])
                    {
                      goto LABEL_491;
                    }
                  }
                }

                else
                {
                  v227 = v435[0].__r_.__value_.__r.__words[2];
                  while (*v8 != *v227 || !*(v227 + 8))
                  {
                    v227 += 24;
                    if (v227 == v435[1].__r_.__value_.__r.__words[0])
                    {
                      goto LABEL_491;
                    }
                  }
                }

                TmmbrInfo = webrtc::RTCPReceiver::FindOrCreateTmmbrInfo(a1, v435[0].__r_.__value_.__r.__words[1]);
                v296 = TmmbrInfo[6];
                if (!v296)
                {
LABEL_489:
                  operator new();
                }

                while (1)
                {
                  while (1)
                  {
                    v297 = v296;
                    v298 = *(v296 + 8);
                    if (v225 >= v298)
                    {
                      break;
                    }

                    v296 = *v297;
                    if (!*v297)
                    {
                      goto LABEL_489;
                    }
                  }

                  if (v298 >= v225)
                  {
                    break;
                  }

                  v296 = v297[1];
                  if (!v296)
                  {
                    goto LABEL_489;
                  }
                }

                v299 = *(v227 + 8);
                v300 = *(v227 + 16);
                *(v297 + 10) = v225;
                v297[6] = v299;
                *(v297 + 28) = v300;
                v297[8] = *TmmbrInfo;
                LODWORD(v398[0]) |= 0x100u;
                v23 = v435[0].__r_.__value_.__r.__words[2];
                v8 = (a1 + 64);
              }

LABEL_491:
              v7 = v397;
            }

            v435[0].__r_.__value_.__r.__words[0] = &unk_2882A1040;
            if (!v23)
            {
              goto LABEL_29;
            }

            v435[1].__r_.__value_.__r.__words[0] = v23;
            goto LABEL_28;
          }

          if (HIBYTE(v431) != 4)
          {
            goto LABEL_384;
          }

          memset(&v435[0].__r_.__value_.__r.__words[1], 0, 32);
          v435[0].__r_.__value_.__r.__words[0] = &unk_2882A1010;
          v24 = webrtc::rtcp::Tmmbn::Parse(v435, &v431);
          v25 = v24;
          if (v24)
          {
            v26 = webrtc::RTCPReceiver::FindOrCreateTmmbrInfo(a1, v435[0].__r_.__value_.__r.__words[1]);
            LODWORD(v398[0]) |= 0x200u;
            if (v26 != v435)
            {
              v27 = v26;
              v29 = &v26->__r_.__value_.__r.__words[2];
              v28 = v26->__r_.__value_.__r.__words[2];
              v30 = v435[0].__r_.__value_.__r.__words[2];
              v31 = v435[1].__r_.__value_.__l.__data_;
              v32 = v435[1].__r_.__value_.__r.__words[0] - v435[0].__r_.__value_.__r.__words[2];
              v33 = v29[2];
              if (v33 - v28 < v435[1].__r_.__value_.__r.__words[0] - v435[0].__r_.__value_.__r.__words[2])
              {
                if (v28)
                {
                  v27[1].__r_.__value_.__r.__words[0] = v28;
                  operator delete(v28);
                  v33 = 0;
                  *v29 = 0;
                  v29[1] = 0;
                  v29[2] = 0;
                }

                v34 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 3);
                if (v34 <= 0xAAAAAAAAAAAAAAALL)
                {
                  v35 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3);
                  if (2 * v35 > v34)
                  {
                    v34 = 2 * v35;
                  }

                  if (v35 >= 0x555555555555555)
                  {
                    v36 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v36 = v34;
                  }

                  if (v36 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }
                }

LABEL_654:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v291 = v27[1].__r_.__value_.__l.__data_;
              v292 = v291 - v28;
              if (v291 - v28 >= v32)
              {
                if (v435[1].__r_.__value_.__r.__words[0] != v435[0].__r_.__value_.__r.__words[2])
                {
                  v301 = v28;
                  memmove(v28, v435[0].__r_.__value_.__r.__words[2], v32 - 6);
                  v28 = v301;
                }

                v27[1].__r_.__value_.__r.__words[0] = &v28[v32];
                v7 = v397;
              }

              else
              {
                if (v291 != v28)
                {
                  memmove(v28, v435[0].__r_.__value_.__r.__words[2], v292 - 6);
                  v291 = v27[1].__r_.__value_.__l.__data_;
                }

                v7 = v397;
                v293 = (v30 + v292);
                v294 = &v31[-v30 - v292];
                if (v294)
                {
                  memmove(v291, v293, (v294 - 6));
                }

                v27[1].__r_.__value_.__r.__words[0] = &v294[v291];
              }
            }
          }

          v435[0].__r_.__value_.__r.__words[0] = &unk_2882A1010;
          v302 = v435[0].__r_.__value_.__r.__words[2];
          if (v435[0].__r_.__value_.__r.__words[2])
          {
            goto LABEL_498;
          }

          goto LABEL_499;
        }

        memset(&v435[0].__r_.__value_.__r.__words[1], 0, 40);
        v435[0].__r_.__value_.__r.__words[0] = &unk_2882968B0;
        *v436 = 0u;
        v216 = webrtc::rtcp::Nack::Parse(v435, &v431);
        v25 = v216;
        if (!v216 || (*(a1 + 40) & 1) != 0)
        {
          goto LABEL_503;
        }

        v217 = *(a1 + 56);
        if (v217 <= 1)
        {
          goto LABEL_649;
        }

        v218 = v8;
        if (v217)
        {
          v218 = *v8;
        }

        if (*v218 == HIDWORD(v435[0].__r_.__value_.__r.__words[1]))
        {
          std::vector<unsigned short>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&v398[1], __dst[0], v435[1].__r_.__value_.__r.__words[2], *v436, (*v436 - v435[1].__r_.__value_.__r.__words[2]) >> 1);
          v219 = v435[1].__r_.__value_.__r.__words[2];
          v220 = *v436;
          if (v435[1].__r_.__value_.__r.__words[2] != *v436)
          {
            v221 = *(a1 + 512);
            while (1)
            {
              v222 = *v219;
              if (v221)
              {
                v223 = *(a1 + 508);
                if (v222 - v223 == 0x8000)
                {
                  if (v223 >= v222)
                  {
                    goto LABEL_342;
                  }
                }

                else if (v223 == v222 || ((v222 - v223) & 0x8000) != 0)
                {
                  goto LABEL_342;
                }
              }

              *(a1 + 508) = v222;
              ++*(a1 + 516);
LABEL_342:
              ++v221;
              if (++v219 == v220)
              {
                *(a1 + 512) = v221;
                LODWORD(v398[0]) |= 0x40u;
                ++*(a1 + 488);
                *(a1 + 500) = v221;
                *(a1 + 504) = *(a1 + 516);
                goto LABEL_503;
              }
            }
          }
        }

        else
        {
LABEL_503:
          v219 = v435[1].__r_.__value_.__r.__words[2];
        }

        v435[0].__r_.__value_.__r.__words[0] = &unk_2882968B0;
        if (v219)
        {
          *v436 = v219;
          operator delete(v219);
        }

        v302 = v435[0].__r_.__value_.__r.__words[2];
        if (v435[0].__r_.__value_.__r.__words[2])
        {
LABEL_498:
          v435[1].__r_.__value_.__r.__words[0] = v302;
          operator delete(v302);
        }

LABEL_499:
        if ((v25 & 1) == 0)
        {
          goto LABEL_532;
        }

        goto LABEL_500;
      }

      if (HIBYTE(v431) == 5)
      {
        v435[0].__r_.__value_.__l.__size_ = 0;
        v435[0].__r_.__value_.__r.__words[0] = &unk_28829A058;
        if (v433 == 8)
        {
          LODWORD(v398[0]) |= 0x400u;
          v6 = v434 + v432 + 8;
          if (v6 == v7)
          {
            goto LABEL_518;
          }

          continue;
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v321, v322, v323, v324, v325, v326, v327, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/rapid_resync_request.cc");
        }

        goto LABEL_532;
      }

      if (HIBYTE(v431) != 11)
      {
        if (HIBYTE(v431) == 15)
        {
          operator new();
        }

        goto LABEL_384;
      }

      if (*(a1 + 41) != 1)
      {
LABEL_384:
        ++*(a1 + 520);
        goto LABEL_500;
      }

      memset(&v435[0].__r_.__value_.__r.__words[1], 0, 36);
      v435[0].__r_.__value_.__r.__words[0] = &unk_2882914B0;
      v228 = webrtc::rtcp::CongestionControlFeedback::Parse(v435, &v431);
      v229 = v435[0].__r_.__value_.__r.__words[2];
      if (!v228 || (v230 = v435[1].__r_.__value_.__l.__data_, v435[1].__r_.__value_.__r.__words[0] == v435[0].__r_.__value_.__r.__words[2]))
      {
        v54 = 0;
        v435[0].__r_.__value_.__r.__words[0] = &unk_2882914B0;
        if (v435[0].__r_.__value_.__r.__words[2])
        {
          goto LABEL_469;
        }
      }

      else
      {
        v231 = *(a1 + 56);
        if (v231 <= 1)
        {
          goto LABEL_649;
        }

        v232 = v8;
        if (v231)
        {
          v232 = *v8;
        }

        if (*v435[0].__r_.__value_.__r.__words[2] == *v232)
        {
          goto LABEL_658;
        }

        v233 = *v8;
        if ((v231 & 1) == 0)
        {
          v233 = v8;
        }

        v234 = (2 * v231) & 0xFFFFFFFFFFFFFFFCLL;
        while (*v233 != *v435[0].__r_.__value_.__r.__words[2])
        {
          ++v233;
          v234 -= 4;
          if (!v234)
          {
            goto LABEL_514;
          }
        }

        if (v234)
        {
LABEL_658:
          if (v409 == 1)
          {
            v404[0] = &unk_2882914B0;
            if (v405)
            {
              v406 = v405;
              operator delete(v405);
              v229 = v435[0].__r_.__value_.__r.__words[2];
              v230 = v435[1].__r_.__value_.__l.__data_;
            }
          }

          v404[1] = v435[0].__r_.__value_.__l.__size_;
          v404[0] = &unk_2882914B0;
          v405 = v229;
          v406 = v230;
          size = v435[1].__r_.__value_.__l.__size_;
          v408 = v435[1].__r_.__value_.__r.__words[2];
          v6 = v434 + v433 + v432;
          v409 = 1;
          if (v6 == v7)
          {
            goto LABEL_518;
          }

          continue;
        }

LABEL_514:
        v54 = 1;
        v435[0].__r_.__value_.__r.__words[0] = &unk_2882914B0;
        if (v435[0].__r_.__value_.__r.__words[2])
        {
LABEL_469:
          v435[1].__r_.__value_.__r.__words[0] = v435[0].__r_.__value_.__r.__words[2];
          operator delete(v435[0].__r_.__value_.__r.__words[2]);
          if ((v54 & 1) == 0)
          {
            goto LABEL_532;
          }

          goto LABEL_500;
        }
      }

LABEL_461:
      if ((v54 & 1) == 0)
      {
        goto LABEL_532;
      }

      goto LABEL_500;
    }

    if (v431 != 206)
    {
      if (v431 != 207)
      {
        goto LABEL_384;
      }

      LODWORD(v425[0]) = 0;
      LODWORD(v441.__r_.__value_.__r.__words[1]) = 0;
      v441.__r_.__value_.__r.__words[0] = &unk_288293668;
      v441.__r_.__value_.__s.__data_[16] = 0;
      LOBYTE(v442) = 0;
      v447 = 0;
      v443 = 0;
      v444 = 0;
      *(&v442 + 1) = 0;
      LOBYTE(v445) = 0;
      v53 = webrtc::rtcp::ExtendedReports::Parse(&v441, &v431);
      v54 = v53;
      LODWORD(v55) = 0;
      if (!v53)
      {
        goto LABEL_271;
      }

      v392 = v53;
      v56 = v441.__r_.__value_.__r.__words[1];
      LODWORD(v425[0]) = v441.__r_.__value_.__r.__words[1];
      v57 = *(&v442 + 1);
      v58 = v443;
      v391 = *(&v442 + 1) != v443;
      if (v442 != 1)
      {
        goto LABEL_111;
      }

      v59 = v441.__r_.__value_.__r.__words[2];
      v60 = HIDWORD(v441.__r_.__value_.__r.__words[2]);
      v61 = *(a1 + 16);
      v62 = (*(*v61 + 16))(v61);
      v63 = (*(*v61 + 24))(v61, v62);
      v65 = *(a1 + 272);
      v64 = *(a1 + 280);
      if (v64 == v65)
      {
        v65 = *(a1 + 280);
        v71 = v65;
      }

      else
      {
        v66 = (v64 - v65) >> 4;
        do
        {
          v67 = v66 >> 1;
          v68 = &v65[4 * (v66 >> 1)];
          v70 = *v68;
          v69 = v68 + 4;
          v66 += ~(v66 >> 1);
          if (v70 < v56)
          {
            v65 = v69;
          }

          else
          {
            v66 = v67;
          }
        }

        while (v66);
        v71 = v65;
        if (v64 != v65)
        {
          v71 = v65 + 4;
          if (*v65 > v56)
          {
            v71 = v65;
          }
        }
      }

      if (v65 == v71)
      {
        v65 = *(a1 + 280);
      }

      if (v64 == v65)
      {
        if (*(a1 + 264) <= 0x12BuLL)
        {
          operator new();
        }

        v8 = (a1 + 64);
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v284, v285, v286, v287, v288, v289, v290, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc");
        }
      }

      else
      {
        v72 = *(v65 + 1);
        *(v72 + 20) = __PAIR64__(v60, v59) >> 16;
        *(v72 + 24) = v63 >> 16;
        v8 = (a1 + 64);
      }

      v57 = *(&v442 + 1);
      v58 = v443;
      if (*(&v442 + 1) == v443)
      {
LABEL_92:
        if (v447)
        {
          v54 = v392;
          v55 = v391;
          if (*(a1 + 192) == LODWORD(v441.__r_.__value_.__r.__words[1]))
          {
            v74 = v445;
            v73 = v446;
            LODWORD(v435[0].__r_.__value_.__l.__data_) = 0;
            v435[0].__r_.__value_.__s.__data_[4] = 0;
            v435[0].__r_.__value_.__s.__data_[8] = 0;
            v435[0].__r_.__value_.__s.__data_[12] = 0;
            v435[0].__r_.__value_.__s.__data_[16] = 0;
            v435[0].__r_.__value_.__s.__data_[20] = 0;
            v435[1].__r_.__value_.__s.__data_[0] = 0;
            v435[1].__r_.__value_.__s.__data_[4] = 0;
            v435[1].__r_.__value_.__s.__data_[8] = 0;
            v435[1].__r_.__value_.__s.__data_[12] = 0;
            v435[1].__r_.__value_.__s.__data_[16] = 0;
            v435[1].__r_.__value_.__s.__data_[20] = 0;
            v436[0] = 0;
            v436[4] = 0;
            v436[8] = 0;
            v436[12] = 0;
            v436[16] = 0;
            v436[20] = 0;
            v436[24] = 0;
            v436[28] = 0;
            v436[32] = 0;
            v436[36] = 0;
            v436[40] = 0;
            v436[44] = 0;
            v436[48] = 0;
            v436[52] = 0;
            v436[56] = 0;
            v436[60] = 0;
            v436[64] = 0;
            v436[68] = 0;
            v436[72] = 0;
            v436[76] = 0;
            v436[80] = 0;
            v436[84] = 0;
            v436[88] = 0;
            v436[92] = 0;
            v437.i8[0] = 0;
            v437.i8[4] = 0;
            v437.i8[8] = 0;
            v437.i8[12] = 0;
            LOBYTE(v438.f64[0]) = 0;
            BYTE4(v438.f64[0]) = 0;
            if (v445 != v446)
            {
              v75 = 0;
              do
              {
                v76 = *v74;
                if (v76 <= 4 && (v77 = v74[1], v77 < 4))
                {
                  v85 = &v435[0].__r_.__value_.__r.__words[4 * v76 + v77] + 1;
                  v86 = v75;
                  if (*(v85 + 4) == 1)
                  {
                    v86 = v75 - *v85;
                  }

                  v87 = 1000 * *(v74 + 1);
                  v88 = v86 + v87;
                  if (v88 <= 0xFFFFFFFFLL)
                  {
                    *v85 = v87;
                    *(v85 + 4) = 1;
                    v75 = v88;
                  }
                }

                else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                {
                  v55 = v55 & 0xFFFFFFFF00000000 | 0x1C82;
                  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v78, v79, v80, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc");
                }

                v74 += 8;
              }

              while (v74 != v73);
              LODWORD(v435[0].__r_.__value_.__l.__data_) = v75;
              v54 = v392;
              LODWORD(v55) = v391;
            }

            v410[8] = *&v436[80];
            v410[9] = v437;
            v411 = v438.f64[0];
            v410[4] = *&v436[16];
            v410[5] = *&v436[32];
            v410[6] = *&v436[48];
            v410[7] = *&v436[64];
            v410[0] = *&v435[0].__r_.__value_.__l.__data_;
            v410[1] = *&v435[0].__r_.__value_.__r.__words[2];
            v410[2] = *&v435[1].__r_.__value_.__r.__words[1];
            v410[3] = *v436;
            v412 = 1;
          }

          v7 = v397;
          v441.__r_.__value_.__r.__words[0] = &unk_288293668;
          if (v447 != 1)
          {
            goto LABEL_457;
          }

          goto LABEL_272;
        }

        v7 = v397;
        v54 = v392;
        LODWORD(v55) = v391;
LABEL_271:
        v441.__r_.__value_.__r.__words[0] = &unk_288293668;
        if (v447 != 1)
        {
LABEL_457:
          if (*(&v442 + 1))
          {
            v443 = *(&v442 + 1);
            operator delete(*(&v442 + 1));
          }

          if (v55)
          {
            webrtc::flat_map<unsigned int,webrtc::RTCPReceiver::ParseCompoundPacket(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTCPReceiver::PacketInformation *)::RtcpReceivedBlock,std::less<void>,std::vector<std::pair<unsigned int,webrtc::RTCPReceiver::ParseCompoundPacket(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTCPReceiver::PacketInformation *)::RtcpReceivedBlock>>>::operator[](&__p, v425)[1] = 1;
          }

          goto LABEL_461;
        }

LABEL_272:
        if (v445)
        {
          v446 = v445;
          operator delete(v445);
        }

        goto LABEL_457;
      }

      while (1)
      {
        v91 = v441.__r_.__value_.__r.__words[1];
        v93 = *(a1 + 56);
        v92 = *(a1 + 64);
        if ((v93 & 1) == 0)
        {
          v92 = v8;
        }

        v94 = v93 >> 1;
        if (v93 >= 2)
        {
          v119 = 4 * v94;
          v95 = v92;
          while (*v95 != *v57)
          {
            ++v95;
            v119 -= 4;
            if (!v119)
            {
              goto LABEL_110;
            }
          }
        }

        else
        {
          v95 = v92;
        }

        if (v95 == &v92[v94] || *(a1 + 296) != 1)
        {
          goto LABEL_110;
        }

        v96 = v57[1];
        if (v96)
        {
          v97 = v57[2];
          v98 = *(a1 + 16);
          v99 = (*(*v98 + 16))(v98);
          v100 = (*(*v98 + 24))(v98, v99);
          v101 = (v100 >> 16) - (v97 + v96);
          v102 = v101 | 0x3FFFFFF00000000;
          if (v101 <= 0x80000000)
          {
            v102 = (v100 >> 16) - (v97 + v96);
          }

          v103 = 1000000 * v102;
          v104 = ((v103 >> 15) & 1) + (v103 >> 16);
          v105 = -v103;
          if ((v105 & 0xFFC0) <= 0x8000)
          {
            v106 = 0;
          }

          else
          {
            v106 = -1;
          }

          v107 = v106 - (v105 >> 16);
          if (v101 >= 0x80000001)
          {
            v108 = v107;
          }

          else
          {
            v108 = v104;
          }

          if (v108 <= 1000)
          {
            v109 = 1000;
          }

          else
          {
            v109 = v108;
          }

          if ((*(a1 + 312) & 1) == 0)
          {
            *(a1 + 312) = 1;
          }

          *(a1 + 304) = v109;
          v111 = *(a1 + 376);
          v110 = *(a1 + 384);
          v112 = v110 - v111;
          v8 = (a1 + 64);
          if (v110 == v111)
          {
            v114 = *(a1 + 384);
LABEL_161:
            memset(v435, 0, 32);
            v129 = *(a1 + 392);
            if (v110 >= v129)
            {
              v136 = 1 - 0x3333333333333333 * (v112 >> 3);
              if (v136 > 0x666666666666666)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              if (0x999999999999999ALL * ((v129 - v111) >> 3) > v136)
              {
                v136 = 0x999999999999999ALL * ((v129 - v111) >> 3);
              }

              if (0xCCCCCCCCCCCCCCCDLL * ((v129 - v111) >> 3) >= 0x333333333333333)
              {
                v137 = 0x666666666666666;
              }

              else
              {
                v137 = v136;
              }

              if (v137)
              {
                if (v137 <= 0x666666666666666)
                {
                  operator new();
                }

                goto LABEL_650;
              }

              v128 = 8 * ((v114 - v111) >> 3);
              if (!(0xCCCCCCCCCCCCCCCDLL * ((v114 - v111) >> 3)))
              {
                if (v114 - v111 < 1)
                {
                  operator new();
                }

                v128 = 8 * ((v114 - v111) >> 3) - 40 * ((1 - 0x3333333333333333 * ((8 * ((v114 - v111) >> 3)) >> 3) + ((1 - 0x3333333333333333 * ((8 * ((v114 - v111) >> 3)) >> 3)) >> 63)) >> 1);
              }

              v8 = (a1 + 64);
              if (!v128)
              {
                goto LABEL_649;
              }

              *v128 = v91;
              v138 = *&v435[0].__r_.__value_.__l.__data_;
              *(v128 + 24) = *&v435[0].__r_.__value_.__r.__words[2];
              *(v128 + 8) = v138;
              memcpy((v128 + 40), v114, *(a1 + 384) - v114);
              v139 = *(a1 + 376);
              v140 = v128 + 40 + *(a1 + 384) - v114;
              *(a1 + 384) = v114;
              v141 = (v128 - (v114 - v139));
              memcpy(v141, v139, v114 - v139);
              v142 = *(a1 + 376);
              *(a1 + 376) = v141;
              *(a1 + 384) = v140;
              *(a1 + 392) = 0;
              if (v142)
              {
                operator delete(v142);
              }
            }

            else if (v114 == v110)
            {
              if (!v111)
              {
                goto LABEL_649;
              }

              *v110 = v91;
              *(v110 + 8) = 0uLL;
              *(v110 + 24) = 0uLL;
              *(a1 + 384) = v110 + 40;
              v128 = v114;
            }

            else
            {
              v130 = v110;
              if (v110 >= 0x28)
              {
                v130 = v110 + 40;
                v131 = *(v110 - 40);
                v132 = *(v110 - 24);
                *(v110 + 32) = *(v110 - 8);
                *v110 = v131;
                *(v110 + 16) = v132;
              }

              *(a1 + 384) = v130;
              if (v110 != v114 + 10)
              {
                v133 = 0;
                do
                {
                  v134 = v133 + v110;
                  *(v134 - 10) = *(v133 + v110 - 80);
                  v135 = *(v133 + v110 - 72);
                  *(v134 - 20) = *(v133 + v110 - 60);
                  *(v134 - 2) = v135;
                  v133 -= 10;
                }

                while ((v114 - v110 + 40) != v133);
              }

              *v114 = v91;
              *(v114 + 2) = 0;
              *(v114 + 3) = 0;
              *(v114 + 1) = 0;
              v128 = v114;
              v114[8] = 0;
            }
          }

          else
          {
            v113 = 0xCCCCCCCCCCCCCCCDLL * (v112 >> 3);
            v114 = *(a1 + 376);
            do
            {
              v115 = v113 >> 1;
              v116 = &v114[10 * (v113 >> 1)];
              v118 = *v116;
              v117 = v116 + 10;
              v113 += ~(v113 >> 1);
              if (v118 < v91)
              {
                v114 = v117;
              }

              else
              {
                v113 = v115;
              }
            }

            while (v113);
            if (v110 == v114)
            {
              goto LABEL_161;
            }

            v128 = v114;
            if (*v114 > v91)
            {
              goto LABEL_161;
            }
          }

          if ((*(v128 + 16) & 1) == 0)
          {
            *(v128 + 16) = 1;
          }

          *(v128 + 8) = v109;
          v89 = *(v128 + 24);
          v90 = v89 + v109;
          if (v89 == 0x8000000000000000)
          {
            v90 = 0x8000000000000000;
          }

          if (v89 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v89 = v90;
          }

          *(v128 + 24) = v89;
          ++*(v128 + 32);
          goto LABEL_110;
        }

        v121 = *(a1 + 376);
        v120 = *(a1 + 384);
        if (v120 == v121)
        {
          v121 = *(a1 + 384);
          v127 = v121;
        }

        else
        {
          v122 = 0xCCCCCCCCCCCCCCCDLL * ((v120 - v121) >> 3);
          do
          {
            v123 = v122 >> 1;
            v124 = &v121[40 * (v122 >> 1)];
            v126 = *v124;
            v125 = (v124 + 10);
            v122 += ~(v122 >> 1);
            if (v126 < LODWORD(v441.__r_.__value_.__r.__words[1]))
            {
              v121 = v125;
            }

            else
            {
              v122 = v123;
            }
          }

          while (v122);
          v127 = v121;
          if (v120 != v121)
          {
            v127 = v121 + 40;
            if (*v121 > LODWORD(v441.__r_.__value_.__r.__words[1]))
            {
              v127 = v121;
            }
          }
        }

        if (v121 == v127)
        {
          v121 = *(a1 + 384);
        }

        if (v120 == v121 || v121[16] != 1)
        {
LABEL_110:
          v57 += 3;
LABEL_111:
          if (v57 == v58)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v121[16] = 0;
          v57 += 3;
          if (v57 == v58)
          {
            goto LABEL_92;
          }
        }
      }
    }

    if (HIBYTE(v431) == 15)
    {
      memset(&v435[0].__r_.__value_.__r.__words[1], 0, 40);
      v435[0].__r_.__value_.__r.__words[0] = &unk_28829A490;
      if (!webrtc::rtcp::Remb::Parse(v435, &v431))
      {
        v435[0].__r_.__value_.__r.__words[0] = &unk_28829A490;
        if (v435[1].__r_.__value_.__r.__words[0])
        {
          v435[1].__r_.__value_.__l.__size_ = v435[1].__r_.__value_.__r.__words[0];
          operator delete(v435[1].__r_.__value_.__l.__data_);
        }

        operator new();
      }

      LODWORD(v398[0]) |= 0x10000u;
      v402 = v435[0].__r_.__value_.__r.__words[2];
      v435[0].__r_.__value_.__r.__words[0] = &unk_28829A490;
      if (v435[1].__r_.__value_.__r.__words[0])
      {
        v435[1].__r_.__value_.__l.__size_ = v435[1].__r_.__value_.__r.__words[0];
        operator delete(v435[1].__r_.__value_.__l.__data_);
      }

      goto LABEL_500;
    }

    if (HIBYTE(v431) != 4)
    {
      break;
    }

    memset(&v435[0].__r_.__value_.__r.__words[1], 0, 32);
    v435[0].__r_.__value_.__r.__words[0] = &unk_288293A30;
    v178 = webrtc::rtcp::Fir::Parse(v435, &v431);
    v179 = v435[0].__r_.__value_.__r.__words[2];
    v390 = v178;
    if (!v178)
    {
      goto LABEL_464;
    }

    if (v435[0].__r_.__value_.__r.__words[2] == v435[1].__r_.__value_.__r.__words[0])
    {
      goto LABEL_464;
    }

    v180 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v179 = v435[0].__r_.__value_.__r.__words[2];
    v181 = v435[1].__r_.__value_.__l.__data_;
    if (v435[0].__r_.__value_.__r.__words[2] == v435[1].__r_.__value_.__r.__words[0])
    {
      goto LABEL_464;
    }

    v182 = v180;
    v393 = v435[1].__r_.__value_.__l.__data_;
    v394 = v180;
    do
    {
      v187 = *(a1 + 56);
      if (v187 <= 1)
      {
        goto LABEL_649;
      }

      v188 = v8;
      if (v187)
      {
        v188 = *v8;
      }

      if (*v188 == *v179)
      {
        ++*(a1 + 492);
        v189 = v435[0].__r_.__value_.__r.__words[1];
        v191 = *(a1 + 424);
        v190 = *(a1 + 432);
        v192 = v190 - v191;
        if (v190 == v191)
        {
          v194 = *(a1 + 432);
LABEL_300:
          v199 = *(a1 + 440);
          if (v190 >= v199)
          {
            v206 = 1 - 0x5555555555555555 * (v192 >> 3);
            if (v206 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            if (0x5555555555555556 * ((v199 - v191) >> 3) > v206)
            {
              v206 = 0x5555555555555556 * ((v199 - v191) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v199 - v191) >> 3) >= 0x555555555555555)
            {
              v207 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v207 = v206;
            }

            if (v207)
            {
              if (v207 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              goto LABEL_650;
            }

            v210 = 8 * ((v194 - v191) >> 3);
            if (!(0xAAAAAAAAAAAAAAABLL * ((v194 - v191) >> 3)))
            {
              if (v194 - v191 < 1)
              {
                operator new();
              }

              v210 = 8 * ((v194 - v191) >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * ((v194 - v191) >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * ((v194 - v191) >> 3)) >> 3)) >> 63)) >> 1);
            }

            v182 = v394;
            if (!v210)
            {
              goto LABEL_649;
            }

            *v210 = v435[0].__r_.__value_.__r.__words[1];
            v211 = v179[4];
            *(v210 + 8) = v394;
            *(v210 + 16) = v211;
            memcpy((v210 + 24), v194, *(a1 + 432) - v194);
            v212 = *(a1 + 424);
            v213 = v210 + 24 + *(a1 + 432) - v194;
            *(a1 + 432) = v194;
            v214 = (v210 - (v194 - v212));
            memcpy(v214, v212, v194 - v212);
            v215 = *(a1 + 424);
            *(a1 + 424) = v214;
            *(a1 + 432) = v213;
            *(a1 + 440) = 0;
            v7 = v397;
            v8 = (a1 + 64);
            v181 = v393;
            if (v215)
            {
              operator delete(v215);
            }
          }

          else if (v194 == v190)
          {
            if (!v191)
            {
              goto LABEL_649;
            }

            *v190 = v435[0].__r_.__value_.__r.__words[1];
            v209 = v179[4];
            *(v190 + 8) = v182;
            *(v190 + 16) = v209;
            *(a1 + 432) = v190 + 24;
            v7 = v397;
          }

          else
          {
            v200 = v179[4];
            v201 = *(a1 + 432);
            if (v190 >= 0x18)
            {
              v201 = v190 + 24;
              v202 = *(v190 - 24);
              *(v190 + 16) = *(v190 - 8);
              *v190 = v202;
            }

            *(a1 + 432) = v201;
            v7 = v397;
            if (v190 != v194 + 6)
            {
              v203 = 0;
              do
              {
                v204 = v203 + v190;
                *(v204 - 6) = *(v203 + v190 - 48);
                v205 = *(v203 + v190 - 40);
                *(v204 - 8) = *(v203 + v190 - 32);
                *(v204 - 2) = v205;
                v203 -= 6;
              }

              while ((v194 - v190 + 24) != v203);
            }

            *v194 = v189;
            *(v194 + 1) = v182;
            *(v194 + 16) = v200;
          }

LABEL_284:
          LODWORD(v398[0]) |= 0x80u;
          goto LABEL_285;
        }

        v193 = 0xAAAAAAAAAAAAAAABLL * (v192 >> 3);
        v194 = *(a1 + 424);
        do
        {
          v195 = v193 >> 1;
          v196 = &v194[6 * (v193 >> 1)];
          v198 = *v196;
          v197 = v196 + 6;
          v193 += ~(v193 >> 1);
          if (v198 < LODWORD(v435[0].__r_.__value_.__r.__words[1]))
          {
            v194 = v197;
          }

          else
          {
            v193 = v195;
          }
        }

        while (v193);
        if (v190 == v194 || LODWORD(v435[0].__r_.__value_.__r.__words[1]) < *v194)
        {
          goto LABEL_300;
        }

        v7 = v397;
        if (v179[4] != *(v194 + 16))
        {
          if (v182 == 0x7FFFFFFFFFFFFFFFLL || (v208 = *(v194 + 1), v208 == 0x8000000000000000) || v182 != 0x8000000000000000 && v208 != 0x7FFFFFFFFFFFFFFFLL && v182 - v208 >= 17000)
          {
            *(v194 + 1) = v182;
            *(v194 + 16) = v179[4];
            goto LABEL_284;
          }
        }
      }

LABEL_285:
      v179 += 8;
    }

    while (v179 != v181);
    v179 = v435[0].__r_.__value_.__r.__words[2];
LABEL_464:
    v435[0].__r_.__value_.__r.__words[0] = &unk_288293A30;
    if (v179)
    {
      v435[1].__r_.__value_.__r.__words[0] = v179;
      operator delete(v179);
    }

    if ((v390 & 1) == 0)
    {
      goto LABEL_532;
    }

LABEL_500:
    v6 = v434 + v433 + v432;
    if (v6 == v7)
    {
      goto LABEL_518;
    }
  }

  if (HIBYTE(v431) != 1)
  {
    goto LABEL_384;
  }

  v435[0].__r_.__value_.__l.__size_ = 0;
  v435[0].__r_.__value_.__r.__words[0] = &unk_288299A18;
  v171 = v433;
  if (v433 <= 7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v314, v315, v316, v317, v318, v319, v320, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/pli.cc");
    }

    goto LABEL_532;
  }

  v172 = v434;
  LODWORD(v435[0].__r_.__value_.__r.__words[1]) = bswap32(*v434);
  v173 = bswap32(v434[1]);
  HIDWORD(v435[0].__r_.__value_.__r.__words[1]) = v173;
  v174 = *(a1 + 56);
  if (v174 <= 1)
  {
    goto LABEL_649;
  }

  v175 = v8;
  if (v174)
  {
    v175 = *v8;
  }

  if (*v175 == v173)
  {
    ++*(a1 + 496);
    LODWORD(v398[0]) |= 0x20u;
  }

  v6 = v172 + v171 + v432;
  if (v6 != v7)
  {
    goto LABEL_3;
  }

LABEL_518:
  v310 = 1;
  if (!*(a1 + 520))
  {
    goto LABEL_550;
  }

LABEL_533:
  v328 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  v329 = *(a1 + 528);
  if (v328 != 0x7FFFFFFFFFFFFFFFLL && v329 != 0x8000000000000000)
  {
    v331 = v328 == 0x8000000000000000 || v329 == 0x7FFFFFFFFFFFFFFFLL;
    if (v331 || v328 - v329 < 10000000)
    {
      goto LABEL_550;
    }
  }

  *(a1 + 528) = v328;
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    goto LABEL_550;
  }

  v425[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc";
  v425[1] = 4034;
  v425[2] = &v424;
  v426[0] = *(a1 + 520);
  v426[1] = v425;
  v427[0] = " RTCP blocks were skipped due to being malformed or of unrecognized/unsupported type, during the past ";
  v427[1] = v426;
  if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v435, v441.__r_.__value_.__l.__data_, v441.__r_.__value_.__l.__size_);
    v341 = v427;
    v435[1].__r_.__value_.__r.__words[0] = v427;
    if (SHIBYTE(v441.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v441.__r_.__value_.__l.__data_);
      v341 = v435[1].__r_.__value_.__l.__data_;
    }
  }

  else
  {
    v435[0] = v441;
    v341 = v427;
    v435[1].__r_.__value_.__r.__words[0] = v427;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v334, v335, v336, v337, v338, v339, v340, **(*(v341 + 1) + 8));
  if ((SHIBYTE(v435[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_550:
    if (v310)
    {
      goto LABEL_551;
    }

LABEL_578:
    ++*(a1 + 520);
    v342 = __p;
    goto LABEL_579;
  }

  operator delete(v435[0].__r_.__value_.__l.__data_);
  if ((v310 & 1) == 0)
  {
    goto LABEL_578;
  }

LABEL_551:
  v342 = __p;
  v343 = v429;
  if (__p != v429)
  {
    v344 = __p;
    do
    {
      if (v344[4] == 1 && (v344[5] & 1) == 0)
      {
        v346 = *(a1 + 376);
        v345 = *(a1 + 384);
        if (v345 == v346)
        {
          v346 = *(a1 + 384);
          v352 = v346;
        }

        else
        {
          v347 = 0xCCCCCCCCCCCCCCCDLL * ((v345 - v346) >> 3);
          do
          {
            v348 = v347 >> 1;
            v349 = &v346[40 * (v347 >> 1)];
            v351 = *v349;
            v350 = (v349 + 10);
            v347 += ~(v347 >> 1);
            if (v351 < *v344)
            {
              v346 = v350;
            }

            else
            {
              v347 = v348;
            }
          }

          while (v347);
          v352 = v346;
          if (v345 != v346)
          {
            if (*v344 >= *v346)
            {
              v352 = v346 + 40;
            }

            else
            {
              v352 = v346;
            }
          }
        }

        if (v346 == v352)
        {
          v346 = *(a1 + 384);
        }

        if (v345 != v346 && v346[16] == 1)
        {
          v346[16] = 0;
        }
      }

      v344 += 8;
    }

    while (v344 != v343);
  }

  v353 = *(a1 + 480);
  if (v353)
  {
    v354 = *(a1 + 56);
    if (v354 > 1)
    {
      v355 = v8;
      if (v354)
      {
        v355 = *v8;
      }

      (*(*v353 + 16))(v353, *v355, a1 + 488);
      goto LABEL_579;
    }

LABEL_649:
    __break(1u);
LABEL_650:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_579:
  if (v342)
  {
    operator delete(v342);
  }

  pthread_mutex_unlock((a1 + 128));
  if (v310)
  {
    if (BYTE1(v398[0]))
    {
      webrtc::RTCPReceiver::NotifyTmmbrUpdated(a1);
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      v356 = v398[0];
      if ((v398[0] & 0x400) == 0)
      {
        goto LABEL_588;
      }

      (*(**(a1 + 48) + 8))(*(a1 + 48));
      if ((*(a1 + 40) & 1) == 0)
      {
        v356 = v398[0];
LABEL_588:
        if ((v356 & 0x40) != 0 && v398[1] != __dst[0])
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v357, v358, v359, v360, v361, v362, v363, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc");
          }

          (*(**(a1 + 48) + 16))(*(a1 + 48), &v398[1]);
        }
      }
    }

    if (*(a1 + 88))
    {
      v364 = v398[0];
      if ((v398[0] & 0xA0) != 0)
      {
        v365 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>();
        if ((v364 & 0x20) != 0)
        {
          if ((v365 & 1) == 0)
          {
            goto LABEL_599;
          }
        }

        else if ((v365 & 1) == 0)
        {
LABEL_599:
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v366, v367, v368, v369, v370, v371, v372, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc");
        }

        v373 = *(a1 + 56);
        if (v373 <= 1)
        {
          goto LABEL_649;
        }

        v374 = v8;
        if (v373)
        {
          v374 = *v8;
        }

        (*(**(a1 + 88) + 16))(*(a1 + 88), *v374);
      }
    }

    v375 = *(a1 + 96);
    if (v375 && (BYTE1(v398[0]) & 0x20) != 0)
    {
      v376 = *(a1 + 56);
      if (v376 <= 1)
      {
        goto LABEL_649;
      }

      if (v376)
      {
        v8 = *v8;
      }

      if (*(v423 + 12) == *v8)
      {
        (*(*v375 + 16))(v375);
      }
    }

    v377 = *(a1 + 104);
    if (v377 && v422 == 1)
    {
      *&v436[48] = v419;
      *&v436[64] = v420;
      *&v436[80] = v421;
      *&v435[1].__r_.__value_.__r.__words[1] = v415;
      *v436 = v416;
      *&v436[16] = v417;
      *&v436[32] = v418;
      *&v435[0].__r_.__value_.__l.__data_ = v413;
      *&v435[0].__r_.__value_.__r.__words[2] = v414;
      (**v377)();
    }

    if (*(a1 + 80))
    {
      v378 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (BYTE2(v398[0]))
      {
        (*(**(a1 + 80) + 32))(*(a1 + 80), v378, v402);
      }

      if (*v400 != *&v400[8])
      {
        (*(**(a1 + 80) + 40))(*(a1 + 80), v378);
      }

      if (v401 == 1)
      {
        (*(**(a1 + 80) + 48))(*(a1 + 80), v378, *&v400[24]);
      }

      if (v403)
      {
        (*(**(a1 + 80) + 16))(*(a1 + 80), v378);
      }

      if (v409 == 1)
      {
        (*(**(a1 + 80) + 24))(*(a1 + 80), v378, v404);
      }
    }

    if ((v398[0] & 6) != 0)
    {
      if (*&v400[8] == *v400)
      {
        v379 = 0;
      }

      else
      {
        v379 = *v400;
      }

      (*(**(a1 + 48) + 24))(*(a1 + 48), v379, (*&v400[8] - *v400) >> 6);
    }

    v380 = *(a1 + 112);
    if (v380 && v412 == 1)
    {
      (*(*v380 + 16))(v380, v410);
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      if (*(a1 + 472))
      {
        v381 = *v400;
        for (i = *&v400[8]; v381 != i; v381 += 4)
        {
          v383 = *(a1 + 472);
          v384 = *v381;
          v385 = v381[1];
          v386 = v381[3];
          *&v435[1].__r_.__value_.__r.__words[1] = v381[2];
          *v436 = v386;
          *&v435[0].__r_.__value_.__l.__data_ = v384;
          *&v435[0].__r_.__value_.__r.__words[2] = v385;
          (*(*v383 + 16))(v383, v435);
        }
      }
    }
  }

  v387 = v423;
  v423 = 0;
  if (v387)
  {
    (*(*v387 + 8))(v387);
  }

  if (v409 == 1)
  {
    v404[0] = &unk_2882914B0;
    if (v405)
    {
      v406 = v405;
      operator delete(v405);
    }
  }

  v388 = v403;
  v403 = 0;
  if (v388)
  {
    (*(*v388 + 8))(v388);
  }

  if (*v400)
  {
    *&v400[8] = *v400;
    operator delete(*v400);
  }

  if (v398[1])
  {
    __dst[0] = v398[1];
    operator delete(v398[1]);
  }
}

unint64_t webrtc::RTCPReceiver::OnPeriodicRttUpdate(pthread_mutex_t *this, Timestamp a2, int a3)
{
  pthread_mutex_lock(this + 2);
  if (a3)
  {
    sig = this[7].__sig;
    v7 = (sig - 0x7FFFFFFFFFFFFFFFLL) >= 2 && sig <= a2.var0;
    if (v7 || (v9 = *&this[5].__opaque[24], v8 = *&this[5].__opaque[32], v9 == v8))
    {
      LOBYTE(v13) = 0;
      v14 = 0;
    }

    else
    {
      v10 = &v8[-4] - v9;
      if (v10 > 0x7F)
      {
        v15 = (v10 >> 5) + 1;
        v16 = v15 & 3;
        if ((v15 & 3) == 0)
        {
          v16 = 4;
        }

        v17 = v15 - v16;
        v12 = (v9 + 32 * v17);
        v18 = vnegq_f64(0);
        v19 = (v9 + 72);
        v20 = v18;
        do
        {
          v21 = v19 - 8;
          v22 = vld4q_f64(v21);
          v23 = vld4q_f64(v19);
          v18 = vbslq_s8(vcgtq_s64(v22, v18), v22, v18);
          v20 = vbslq_s8(vcgtq_s64(v23, v20), v23, v20);
          v19 += 16;
          v17 -= 4;
        }

        while (v17);
        v24 = vbslq_s8(vcgtq_s64(v18, v20), v18, v20);
        v25 = vextq_s8(v24, v24, 8uLL).u64[0];
        v11 = vbsl_s8(vcgtd_s64(v24.i64[0], v25), *v24.i8, v25);
      }

      else
      {
        v11 = 0x8000000000000000;
        v12 = *&this[5].__opaque[24];
      }

      do
      {
        if (*&v12[1] > *&v11)
        {
          v11 = v12[1];
        }

        v12 += 4;
      }

      while (v12 != v8);
      if ((*&v11 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
      {
        LOBYTE(v13) = 0;
      }

      else
      {
        LOBYTE(v13) = v11.i8[0];
      }

      if ((*&v11 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v14 = 0;
      }

      else
      {
        v14 = *&v11 & 0xFFFFFFFFFFFFFF00;
      }
    }

    v26 = (*(**&this->__opaque[8] + 16))(*&this->__opaque[8]);
    v27 = this[7].__sig;
    if ((v27 - 0x7FFFFFFFFFFFFFFFLL) < 2 || 3 * *&this[1].__opaque[48] + v27 >= v26)
    {
      v35 = *this[7].__opaque;
      if ((v35 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        goto LABEL_35;
      }

      if (3 * *&this[1].__opaque[48] + v35 >= v26)
      {
        goto LABEL_35;
      }

      *this[7].__opaque = 0x7FFFFFFFFFFFFFFFLL;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_35;
      }
    }

    else
    {
      this[7].__sig = 0x7FFFFFFFFFFFFFFFLL;
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
LABEL_35:
        pthread_mutex_unlock(this + 2);
        return v14 | v13;
      }
    }

    webrtc::webrtc_logging_impl::Log("\r\t\t\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_receiver.cc");
    goto LABEL_35;
  }

  v13 = *&this[4].__opaque[40];
  if (*&this[4].__opaque[48])
  {
    this[4].__opaque[48] = 0;
  }

  pthread_mutex_unlock(this + 2);
  v14 = v13 & 0xFFFFFFFFFFFFFF00;
  return v14 | v13;
}

uint64_t webrtc::RTCPReceiver::ConsumeReceivedXrReferenceTimeInfo@<X0>(pthread_mutex_t *this@<X0>, void *a2@<X8>)
{
  pthread_mutex_lock(this + 2);
  v4 = *this[4].__opaque;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    operator new();
  }

  v5 = *&this->__opaque[8];
  v6 = (*(*v5 + 16))(v5);
  (*(*v5 + 24))(v5, v6);

  return pthread_mutex_unlock(this + 2);
}

void *std::vector<webrtc::ReportBlockData>::push_back[abi:sn200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v7 = ((v2 - *result) >> 6) + 1;
    if (v7 >> 58)
    {
      goto LABEL_13;
    }

    v8 = v3 - *result;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v7 = 0x3FFFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      if (!(v7 >> 58))
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
  v5 = a2[1];
  v6 = a2[3];
  v2[2] = a2[2];
  v2[3] = v6;
  *v2 = v4;
  v2[1] = v5;
  result[1] = v2 + 4;
  return result;
}

char *webrtc::flat_map<unsigned int,webrtc::RTCPReceiver::ParseCompoundPacket(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTCPReceiver::PacketInformation *)::RtcpReceivedBlock,std::less<void>,std::vector<std::pair<unsigned int,webrtc::RTCPReceiver::ParseCompoundPacket(webrtc::ArrayView<unsigned char const,-4711l>,webrtc::RTCPReceiver::PacketInformation *)::RtcpReceivedBlock>>>::operator[](uint64_t a1, unsigned int *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v6 = v3 - *a1;
  if (v3 == *a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v7 = v6 >> 3;
    v8 = *a1;
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[8 * (v7 >> 1)];
      v12 = *v10;
      v11 = v10 + 8;
      v7 += ~(v7 >> 1);
      if (v12 < v5)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
    if (v3 != v8 && v5 >= *v8)
    {
      return v8 + 4;
    }
  }

  v13 = *(a1 + 16);
  if (v3 < v13)
  {
    if (v8 != v3)
    {
      v14 = *(a1 + 8);
      if (v3 >= 8)
      {
        *v3 = *(v3 - 8);
        v14 = v3 + 8;
      }

      *(a1 + 8) = v14;
      if (v3 != v8 + 8)
      {
        v15 = 0;
        do
        {
          v16 = &v15[v3];
          *(v16 - 2) = *&v15[v3 - 16];
          *(v16 - 2) = *&v15[v3 - 12];
          v15 -= 8;
        }

        while (&v8[-v3 + 8] != v15);
      }

      *v8 = v5;
      *(v8 + 2) = 0;
      return v8 + 4;
    }

    if (v4)
    {
      *v3 = v5;
      *(v3 + 4) = 0;
      *(a1 + 8) = v3 + 8;
      return v8 + 4;
    }

    goto LABEL_42;
  }

  v17 = (v6 >> 3) + 1;
  if (v17 >> 61)
  {
    goto LABEL_43;
  }

  if ((v13 - v4) >> 2 > v17)
  {
    v17 = (v13 - v4) >> 2;
  }

  if (v13 - v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    v18 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    if (!(v18 >> 61))
    {
      operator new();
    }

    goto LABEL_44;
  }

  v19 = v8 - v4;
  v20 = (v8 - v4) >> 3;
  v21 = 8 * v20;
  if (!v20)
  {
    if (v19 < 1)
    {
      v27 = v19 >> 2;
      if (v8 == v4)
      {
        v27 = 1;
      }

      if (!(v27 >> 61))
      {
        operator new();
      }

LABEL_44:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v21 -= ((v19 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v21)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v21 = *a2;
  *(v21 + 4) = 0;
  v22 = *(a1 + 8) - v8;
  memcpy((v21 + 8), v8, v22);
  *(a1 + 8) = v8;
  v23 = &v8[-*a1];
  v24 = v21 - v23;
  memcpy((v21 - v23), *a1, v23);
  v25 = *a1;
  *a1 = v24;
  *(a1 + 8) = v21 + 8 + v22;
  *(a1 + 16) = 0;
  if (v25)
  {
    operator delete(v25);
  }

  v8 = v21;
  return v8 + 4;
}

void *webrtc::RTCPReceiver::HandleReportBlock(void *result, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  v6 = result;
  v8 = result + 8;
  v7 = result[8];
  v9 = result[7];
  if ((v9 & 1) == 0)
  {
    v7 = result + 8;
  }

  v10 = v9 >> 1;
  if (v9 >= 2)
  {
    v23 = 4 * v10;
    for (i = v7; *i != *a2; ++i)
    {
      v23 -= 4;
      if (!v23)
      {
        return result;
      }
    }
  }

  else
  {
    i = v7;
  }

  if (i != &v7[v10])
  {
    v12 = (*(*result[2] + 16))(result[2]);
    v6[56] = v12;
    v13 = *a2;
    v15 = v6[50];
    v14 = v6[51];
    v16 = v14 - v15;
    if (v14 == v15)
    {
      v18 = v6[51];
    }

    else
    {
      v17 = 0x8E38E38E38E38E39 * (v16 >> 3);
      v18 = v6[50];
      do
      {
        v19 = v17 >> 1;
        v20 = &v18[18 * (v17 >> 1)];
        v22 = *v20;
        v21 = v20 + 18;
        v17 += ~(v17 >> 1);
        if (v22 < v13)
        {
          v18 = v21;
        }

        else
        {
          v17 = v19;
        }
      }

      while (v17);
      if (v14 != v18)
      {
        v24 = v18;
        if (v13 >= *v18)
        {
          goto LABEL_46;
        }
      }
    }

    v25 = v6[52];
    if (v14 >= v25)
    {
      v35 = 0x8E38E38E38E38E39 * (v16 >> 3) + 1;
      if (v35 > 0x38E38E38E38E38ELL)
      {
        goto LABEL_123;
      }

      v36 = 0x8E38E38E38E38E39 * ((v25 - v15) >> 3);
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x1C71C71C71C71C7)
      {
        v37 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (v37 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        goto LABEL_124;
      }

      v24 = 8 * ((v18 - v15) >> 3);
      if (!(0x8E38E38E38E38E39 * ((v18 - v15) >> 3)))
      {
        if (v18 - v15 < 1)
        {
          operator new();
        }

        v24 = 8 * ((v18 - v15) >> 3) - 72 * ((1 - 0x71C71C71C71C71C7 * ((8 * ((v18 - v15) >> 3)) >> 3) + ((1 - 0x71C71C71C71C71C7 * ((8 * ((v18 - v15) >> 3)) >> 3)) >> 63)) >> 1);
      }

      if (!v24)
      {
LABEL_122:
        __break(1u);
LABEL_123:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      *v24 = v13;
      *(v24 + 56) = 0u;
      *(v24 + 40) = 0u;
      *(v24 + 24) = 0u;
      *(v24 + 8) = 0u;
      memcpy((v24 + 72), v18, v6[51] - v18);
      v38 = v6[50];
      v39 = v24 + 72 + v6[51] - v18;
      v6[51] = v18;
      v40 = v18 - v38;
      v41 = (v24 - (v18 - v38));
      memcpy(v41, v38, v40);
      v42 = v6[50];
      v6[50] = v41;
      v6[51] = v39;
      v6[52] = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else if (v18 == v14)
    {
      if (!v15)
      {
        goto LABEL_122;
      }

      *v14 = v13;
      *(v14 + 8) = 0uLL;
      *(v14 + 24) = 0uLL;
      *(v14 + 40) = 0uLL;
      *(v14 + 56) = 0uLL;
      v6[51] = v14 + 72;
      v24 = v18;
    }

    else
    {
      v26 = v6[51];
      if (v14 >= 0x48)
      {
        v26 = v14 + 72;
        *v14 = *(v14 - 72);
        v27 = *(v14 - 56);
        v28 = *(v14 - 40);
        v29 = *(v14 - 24);
        *(v14 + 64) = *(v14 - 8);
        *(v14 + 32) = v28;
        *(v14 + 48) = v29;
        *(v14 + 16) = v27;
      }

      v6[51] = v26;
      if (v14 != v18 + 18)
      {
        v30 = 0;
        do
        {
          v31 = v30 + v14;
          *(v31 - 18) = *(v30 + v14 - 144);
          v32 = *(v30 + v14 - 136);
          v33 = *(v30 + v14 - 120);
          v34 = *(v30 + v14 - 88);
          *(v31 - 2) = *(v30 + v14 - 104);
          *(v31 - 1) = v34;
          *(v31 - 4) = v32;
          *(v31 - 3) = v33;
          v30 -= 18;
        }

        while ((v18 - v14 + 72) != v30);
      }

      *v18 = v13;
      *(v18 + 2) = 0u;
      *(v18 + 6) = 0u;
      *(v18 + 10) = 0u;
      *(v18 + 14) = 0u;
      v24 = v18;
    }

LABEL_46:
    if (a2[3] > *(v24 + 24))
    {
      v6[57] = v6[56];
    }

    v43 = (*(*v6[2] + 24))(v6[2], v12);
    if (v43)
    {
      v44 = (((1000000 * v43) >> 31) & 1) + ((1000000 * v43) >> 32) + 1000000 * (HIDWORD(v43) + 2085978496);
    }

    else
    {
      v44 = 0x8000000000000000;
    }

    v45 = *a2;
    *(v24 + 8) = a4;
    *(v24 + 12) = v45;
    *(v24 + 16) = *(a2 + 4);
    *(v24 + 20) = *(a2 + 1);
    *(v24 + 28) = a2[4];
    *(v24 + 32) = v44;
    *(v24 + 40) = v12;
    v46 = a2[5];
    if (!v46)
    {
      goto LABEL_119;
    }

    v47 = (v43 >> 16) - (v46 + a2[6]);
    v48 = v47 | 0xFFFFFFFF00000000;
    if (v47 <= 0x80000000)
    {
      v48 = v47;
    }

    v49 = 1000000 * v48;
    v50 = ((v49 >> 15) & 1) + (v49 >> 16);
    v51 = -v49;
    if ((v51 & 0xFFC0) <= 0x8000)
    {
      v52 = 0;
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 - (v51 >> 16);
    if (v47 >= 0x80000001)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50;
    }

    if (v54 <= 1000)
    {
      v55 = 1000;
    }

    else
    {
      v55 = v54;
    }

    v56 = *(v24 + 56);
    v57 = *(v24 + 64);
    v58 = v56 + v55;
    if (v56 == 0x8000000000000000)
    {
      v58 = 0x8000000000000000;
    }

    if (v56 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = v58;
    }

    *(v24 + 48) = v55;
    *(v24 + 56) = v56;
    *(v24 + 64) = v57 + 1;
    v59 = v6[7];
    if (v59 > 1)
    {
      if (v59)
      {
        v8 = *v8;
      }

      if (*a2 != *v8)
      {
        goto LABEL_116;
      }

      v61 = v6[44];
      v60 = v6[45];
      v62 = v60 - v61;
      if (v60 == v61)
      {
        v64 = v6[45];
      }

      else
      {
        v63 = v62 >> 5;
        v64 = v6[44];
        do
        {
          v65 = v63 >> 1;
          v66 = &v64[32 * (v63 >> 1)];
          v68 = *v66;
          v67 = v66 + 32;
          v63 += ~(v63 >> 1);
          if (v68 < a4)
          {
            v64 = v67;
          }

          else
          {
            v63 = v65;
          }
        }

        while (v63);
        if (v60 != v64)
        {
          v69 = v64;
          if (*v64 <= a4)
          {
            goto LABEL_111;
          }
        }
      }

      v70 = v6[46];
      if (v60 < v70)
      {
        if (v64 != v60)
        {
          v71 = v6[45];
          if (v60 >= 0x20)
          {
            v71 = v60 + 32;
            v72 = *(v60 - 16);
            *v60 = *(v60 - 32);
            *(v60 + 16) = v72;
          }

          v6[45] = v71;
          if (v60 != v64 + 32)
          {
            v73 = 0;
            do
            {
              v74 = &v73[v60];
              *(v74 - 8) = *&v73[v60 - 64];
              v75 = *&v73[v60 - 56];
              *(v74 - 1) = *&v73[v60 - 40];
              *(v74 - 24) = v75;
              v73 -= 32;
            }

            while (&v64[-v60 + 32] != v73);
          }

          *v64 = a4;
          *(v64 + 2) = 0;
          *(v64 + 3) = 0;
          v69 = v64;
          *(v64 + 1) = 0;
          goto LABEL_111;
        }

        if (v61)
        {
          *v60 = a4;
          *(v60 + 16) = 0;
          *(v60 + 24) = 0;
          *(v60 + 8) = 0;
          v69 = v64;
          v6[45] = v60 + 32;
LABEL_111:
          v88 = *(v69 + 16);
          v89 = *(v69 + 24);
          v90 = v88 + v55;
          if (v88 == 0x8000000000000000)
          {
            v90 = 0x8000000000000000;
          }

          if (v88 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v88 = v90;
          }

          *(v69 + 8) = v55;
          *(v69 + 16) = v88;
          *(v69 + 24) = v89 + 1;
LABEL_116:
          if ((*(a3 + 64) & 1) == 0)
          {
            *(a3 + 64) = 1;
          }

          *(a3 + 56) = v55;
LABEL_119:

          return std::vector<webrtc::ReportBlockData>::push_back[abi:sn200100]((a3 + 32), (v24 + 8));
        }

        goto LABEL_122;
      }

      v76 = (v62 >> 5) + 1;
      if (v76 >> 59)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v77 = v70 - v61;
      v78 = (v70 - v61) >> 4;
      if (v78 > v76)
      {
        v76 = v78;
      }

      if (v77 >= 0x7FFFFFFFFFFFFFE0)
      {
        v79 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v79 = v76;
      }

      if (v79)
      {
        if (!(v79 >> 59))
        {
          operator new();
        }

        goto LABEL_124;
      }

      v80 = v64 - v61;
      v81 = (v64 - v61) >> 5;
      v69 = 32 * v81;
      if (v81)
      {
        goto LABEL_108;
      }

      if (v80 >= 1)
      {
        v69 -= ((v80 >> 1) + 16) & 0xFFFFFFFFFFFFFFE0;
LABEL_108:
        if (v69)
        {
          *v69 = a4;
          *(v69 + 16) = 0;
          *(v69 + 24) = 0;
          *(v69 + 8) = 0;
          memcpy((v69 + 32), v64, v6[45] - v64);
          v84 = v6[44];
          v85 = v69 + 32 + v6[45] - v64;
          v6[45] = v64;
          v86 = (v69 - (v64 - v84));
          memcpy(v86, v84, v64 - v84);
          v87 = v6[44];
          v6[44] = v86;
          v6[45] = v85;
          v6[46] = 0;
          if (v87)
          {
            operator delete(v87);
          }

          goto LABEL_111;
        }

        goto LABEL_122;
      }

      v82 = v80 >> 4;
      if (v64 == v61)
      {
        v83 = 1;
      }

      else
      {
        v83 = v82;
      }

      if (!(v83 >> 59))
      {
        operator new();
      }

LABEL_124:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_122;
  }

  return result;
}

uint64_t webrtc::RTCPReceiver::FindOrCreateTmmbrInfo(webrtc::RTCPReceiver *this, unsigned int a2)
{
  v4 = *(this + 41);
  v3 = *(this + 42);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v7 = *(this + 42);
    goto LABEL_11;
  }

  v6 = 0x8E38E38E38E38E39 * (v5 >> 3);
  v7 = *(this + 41);
  do
  {
    v8 = v6 >> 1;
    v9 = (v7 + 72 * (v6 >> 1));
    v11 = *v9;
    v10 = v9 + 18;
    v6 += ~(v6 >> 1);
    if (v11 < a2)
    {
      v7 = v10;
    }

    else
    {
      v6 = v8;
    }
  }

  while (v6);
  if (v3 == v7 || (v12 = v7, *v7 > a2))
  {
LABEL_11:
    *&v71 = 0;
    v72 = 0u;
    *(&v71 + 1) = &v72;
    v13 = *(this + 43);
    if (v3 < v13)
    {
      if (v7 != v3)
      {
        v80 = 0;
        v81 = this + 328;
        v73 = a2;
        v74 = 0;
        v75 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v78 = &v79;
        v79 = 0;
        v14 = v7 + 72;
        v15 = v3;
        v77 = 0;
        if (v3 >= 0x48)
        {
          *v3 = *(v3 - 72);
          v16 = *(v3 - 64);
          *(v3 + 16) = *(v3 - 56);
          *(v3 + 8) = v16;
          *(v3 + 32) = 0;
          *(v3 + 40) = 0;
          *(v3 + 24) = 0;
          v17 = (v3 - 16);
          v18 = *(v3 - 16);
          *(v3 + 24) = *(v3 - 48);
          v19 = *(v3 - 24);
          *(v3 + 40) = *(v3 - 32);
          *(v3 - 40) = 0;
          *(v3 - 32) = 0;
          *(v3 - 48) = 0;
          *(v3 + 56) = v18;
          v20 = v3 + 56;
          v15 = v3 + 72;
          *(v3 + 48) = v19;
          v21 = *(v3 - 8);
          *(v3 + 64) = v21;
          if (!v21)
          {
            *(v3 + 48) = v20;
            *(this + 42) = v15;
            if (v3 == v14)
            {
              goto LABEL_24;
            }

            goto LABEL_17;
          }

          *(v18 + 16) = v20;
          *(v3 - 24) = v17;
          *v17 = 0;
          *(v3 - 8) = 0;
        }

        *(this + 42) = v15;
        if (v3 == v14)
        {
          goto LABEL_24;
        }

LABEL_17:
        v22 = 0;
        v23 = v7 - v3 + 72;
        do
        {
          while (1)
          {
            v24 = v3 + v22;
            v26 = (v3 + v22 - 48);
            v25 = *v26;
            *(v26 - 6) = *(v3 + v22 - 144);
            v27 = *(v3 + v22 - 136);
            *(v26 - 8) = *(v3 + v22 - 128);
            *(v26 - 2) = v27;
            if (v25)
            {
              *(v24 - 40) = v25;
              operator delete(v25);
              *v26 = 0;
              *(v3 + v22 - 40) = 0;
              *(v3 + v22 - 32) = 0;
            }

            v28 = (v24 - 120);
            *v26 = *(v24 - 120);
            *(v24 - 32) = *(v24 - 104);
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v29 = v24 - 16;
            std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v24 - 16));
            *(v24 - 24) = *(v24 - 96);
            v30 = (v24 - 88);
            v31 = *(v24 - 88);
            *(v24 - 16) = v31;
            v32 = *(v24 - 80);
            *(v24 - 8) = v32;
            if (!v32)
            {
              break;
            }

            *(v31 + 16) = v29;
            *(v24 - 96) = v30;
            *v30 = 0;
            *(v24 - 80) = 0;
            v22 -= 72;
            if (v23 == v22)
            {
              goto LABEL_23;
            }
          }

          *(v24 - 24) = v29;
          v22 -= 72;
        }

        while (v23 != v22);
LABEL_23:
        a2 = v73;
LABEL_24:
        *v7 = a2;
        v33 = v74;
        *(v7 + 16) = v75;
        *(v7 + 8) = v33;
        v34 = *(v7 + 24);
        if (v34)
        {
          *(v7 + 32) = v34;
          operator delete(v34);
        }

        *(v7 + 24) = *__p;
        *(v7 + 40) = v77;
        __p[0] = 0;
        __p[1] = 0;
        v77 = 0;
        v35 = v7 + 56;
        std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v7 + 56));
        v36 = v80;
        *(v7 + 48) = v78;
        v37 = v79;
        *(v7 + 56) = v79;
        *(v7 + 64) = v36;
        if (v36)
        {
          v37[2] = v35;
          v78 = &v79;
          v79 = 0;
          v80 = 0;
          std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(0);
          v38 = __p[0];
          if (!__p[0])
          {
LABEL_29:
            v12 = v7;
LABEL_50:
            std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v72);
            goto LABEL_51;
          }
        }

        else
        {
          *(v7 + 48) = v35;
          std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v37);
          v38 = __p[0];
          if (!__p[0])
          {
            goto LABEL_29;
          }
        }

        __p[1] = v38;
        operator delete(v38);
        goto LABEL_29;
      }

      if (v4)
      {
        *v3 = a2;
        *(v3 + 16) = 0;
        *(v3 + 8) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = v3 + 56;
        v12 = v7;
        *(this + 42) = v3 + 72;
        goto LABEL_50;
      }

      goto LABEL_79;
    }

    v39 = 0x8E38E38E38E38E39 * (v5 >> 3) + 1;
    if (v39 > 0x38E38E38E38E38ELL)
    {
      goto LABEL_80;
    }

    v40 = 0x8E38E38E38E38E39 * ((v13 - v4) >> 3);
    if (2 * v40 > v39)
    {
      v39 = 2 * v40;
    }

    if (v40 >= 0x1C71C71C71C71C7)
    {
      v41 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      if (v41 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v42 = v7 - v4;
    v12 = 8 * ((v7 - v4) >> 3);
    if (!(0x8E38E38E38E38E39 * ((v7 - v4) >> 3)))
    {
      if (v42 < 1)
      {
        operator new();
      }

      v12 -= 72 * ((1 - 0x71C71C71C71C71C7 * (v42 >> 3)) >> 1);
    }

    if (!v12)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *v12 = a2;
    *(v12 + 16) = 0;
    *(v12 + 8) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    *(v12 + 24) = 0u;
    *(v12 + 40) = v71;
    v43 = v72;
    *(v12 + 56) = v72;
    v44 = v12 + 56;
    if (*(&v43 + 1))
    {
      *(v43 + 16) = v44;
      v72 = 0uLL;
      v45 = *(this + 42);
      v46 = v7;
      if (v45 == v7)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(v12 + 48) = v44;
      v45 = *(this + 42);
      v46 = v7;
      if (v45 == v7)
      {
LABEL_47:
        *(this + 42) = v7;
        v47 = *(this + 41);
        v48 = v12 + v47 - v7;
        if (v47 == v7)
        {
          goto LABEL_48;
        }

        goto LABEL_63;
      }
    }

    v50 = 0;
    do
    {
      while (1)
      {
        v51 = v12 + v50;
        v52 = (v7 + v50);
        *(v51 + 72) = *(v7 + v50);
        v53 = *(v7 + v50 + 8);
        *(v51 + 88) = *(v7 + v50 + 16);
        *(v51 + 80) = v53;
        *(v51 + 104) = 0;
        *(v51 + 112) = 0;
        *(v51 + 96) = 0;
        *(v51 + 96) = *(v7 + v50 + 24);
        v54 = *(v7 + v50 + 48);
        *(v51 + 112) = *(v7 + v50 + 40);
        v52[4] = 0;
        v52[5] = 0;
        v52[3] = 0;
        v55 = (v7 + v50 + 56);
        v56 = *v55;
        *(v51 + 120) = v54;
        *(v12 + v50 + 128) = v56;
        v57 = v12 + v50 + 128;
        v58 = *(v7 + v50 + 64);
        *(v51 + 136) = v58;
        if (!v58)
        {
          break;
        }

        *(v56 + 16) = v57;
        v52[6] = v55;
        *v55 = 0;
        *(v7 + v50 + 64) = 0;
        v50 += 72;
        if (v7 + v50 == v45)
        {
          goto LABEL_57;
        }
      }

      *(v51 + 120) = v57;
      v50 += 72;
    }

    while (v7 + v50 != v45);
LABEL_57:
    v59 = v7;
    do
    {
      if (!v59)
      {
        goto LABEL_79;
      }

      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v59 + 56));
      v60 = *(v59 + 24);
      if (v60)
      {
        *(v59 + 32) = v60;
        operator delete(v60);
      }

      v59 += 72;
    }

    while (v59 != v45);
    v47 = *(this + 41);
    v46 = *(this + 42);
    *(this + 42) = v7;
    v48 = v12 + v47 - v7;
    if (v47 == v7)
    {
LABEL_48:
      *(this + 41) = v48;
      *(this + 42) = v12 + 72 + v46 - v7;
      *(this + 43) = 0;
      if (!v47)
      {
        goto LABEL_50;
      }

LABEL_49:
      operator delete(v47);
      goto LABEL_50;
    }

LABEL_63:
    v61 = 0;
    do
    {
      while (1)
      {
        v62 = v48 + v61;
        v63 = (v47 + v61);
        *v62 = *(v47 + v61);
        v64 = *(v47 + v61 + 8);
        *(v62 + 16) = *(v47 + v61 + 16);
        *(v62 + 8) = v64;
        *(v62 + 32) = 0;
        *(v62 + 40) = 0;
        *(v62 + 24) = 0;
        *(v62 + 24) = *(v47 + v61 + 24);
        v65 = *(v47 + v61 + 48);
        *(v62 + 40) = *(v47 + v61 + 40);
        v63[4] = 0;
        v63[5] = 0;
        v63[3] = 0;
        v66 = (v47 + v61 + 56);
        v67 = *v66;
        *(v62 + 48) = v65;
        *(v48 + v61 + 56) = v67;
        v68 = v48 + v61 + 56;
        v69 = *(v47 + v61 + 64);
        *(v62 + 64) = v69;
        if (!v69)
        {
          break;
        }

        *(v67 + 16) = v68;
        v63[6] = v66;
        *v66 = 0;
        *(v47 + v61 + 64) = 0;
        v61 += 72;
        if (v47 + v61 == v7)
        {
          goto LABEL_69;
        }
      }

      *(v62 + 48) = v68;
      v61 += 72;
    }

    while (v47 + v61 != v7);
    do
    {
LABEL_69:
      if (!v47)
      {
        goto LABEL_79;
      }

      std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(v47 + 56));
      v70 = *(v47 + 24);
      if (v70)
      {
        *(v47 + 32) = v70;
        operator delete(v70);
      }

      v47 += 72;
    }

    while (v47 != v7);
    v47 = *(this + 41);
    *(this + 41) = v48;
    *(this + 42) = v12 + 72 + v46 - v7;
    *(this + 43) = 0;
    if (!v47)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_51:
  *(v12 + 8) = (*(**(this + 2) + 16))(*(this + 2));
  return v12 + 8;
}

uint64_t webrtc::RTCPReceiver::BoundingSet@<X0>(pthread_mutex_t *this@<X0>, BOOL *a2@<X1>, void *a3@<X8>)
{
  pthread_mutex_lock(this + 2);
  sig = this[3].__sig;
  v8 = *this[5].__opaque;
  v7 = *&this[5].__opaque[8];
  if (v7 == v8)
  {
    v8 = *&this[5].__opaque[8];
    v14 = v8;
  }

  else
  {
    v9 = 0x8E38E38E38E38E39 * ((v7 - v8) >> 3);
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[18 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 18;
      v9 += ~(v9 >> 1);
      if (v13 < sig)
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
      v14 = v8 + 18;
      if (*v8 > sig)
      {
        v14 = v8;
      }
    }
  }

  if (v8 == v14)
  {
    v8 = *&this[5].__opaque[8];
  }

  if (v7 == v8)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v15 = *&this->__opaque[48];
    if (v15 <= 1)
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = this + 1;
    if (v15)
    {
      v16 = v16->__sig;
    }

    v18 = *(v8 + 3);
    v17 = *(v8 + 4);
    if (v18 == v17)
    {
      *a2 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
    }

    else
    {
      v19 = v16->__sig;
      v20 = v18 + 24;
      do
      {
        v21 = *(v20 - 24);
        v22 = v21 == v19 || v20 == v17;
        v20 += 24;
      }

      while (!v22);
      *a2 = v21 == v19;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;
      if (v17 != v18)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

LABEL_33:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }
  }

  return pthread_mutex_unlock(this + 2);
}

void webrtc::RTCPReceiver::NotifyTmmbrUpdated(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 2);
  v42 = 0;
  v43 = 0;
  __p = 0;
  v2 = (*(**&this->__opaque[8] + 16))(*&this->__opaque[8]);
  v4 = *this[5].__opaque;
  v3 = *&this[5].__opaque[8];
  if (v4 != v3)
  {
    v5 = v2;
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      do
      {
        v6 = v4[6];
        if (v6 != v4 + 7)
        {
          do
          {
            v8 = v6[1];
            v9 = v6;
            if (v8)
            {
              do
              {
                v10 = v8;
                v8 = *v8;
              }

              while (v8);
            }

            else
            {
              do
              {
                v10 = v9[2];
                v11 = *v10 == v9;
                v9 = v10;
              }

              while (!v11);
            }

            if (v4[6] == v6)
            {
              v4[6] = v10;
            }

            v7 = v4[7];
            --v4[8];
            std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v7, v6);
            operator delete(v6);
            v6 = v10;
          }

          while (v10 != v4 + 7);
        }

        v4 += 9;
      }

      while (v4 != v3);
    }

    else
    {
      v39 = *&this[5].__opaque[8];
      do
      {
        v12 = v4[6];
        if (v12 != v4 + 7)
        {
          do
          {
            v14 = v12[8];
            if (v14 != 0x8000000000000000)
            {
              if (v5 == 0x8000000000000000 || (v14 != 0x7FFFFFFFFFFFFFFFLL ? (v15 = v5 - v14 < 25000001) : (v15 = 1), v15))
              {
                operator new();
              }
            }

            v16 = v12[1];
            v17 = v12;
            if (v16)
            {
              do
              {
                v18 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v18 = v17[2];
                v11 = *v18 == v17;
                v17 = v18;
              }

              while (!v11);
            }

            if (v4[6] == v12)
            {
              v4[6] = v18;
            }

            v13 = v4[7];
            --v4[8];
            std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v13, v12);
            operator delete(v12);
            v12 = v18;
          }

          while (v18 != v4 + 7);
        }

        v4 += 9;
      }

      while (v4 != v39);
      v42 = 0;
      v43 = 0;
      __p = 0;
    }
  }

  pthread_mutex_unlock(this + 2);
  webrtc::TMMBRHelp::FindBoundingSet(&__p, v44, v19);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  v20 = v44[0];
  v21 = v44[0];
  if (v44[0] != v44[1])
  {
    v22 = *&this[1].__opaque[8];
    if (v22)
    {
      v23 = v44[1] - v44[0] - 24;
      if (v23 >= 0x60)
      {
        v25 = v23 / 0x18 + 1;
        v26 = v25 & 3;
        if ((v25 & 3) == 0)
        {
          v26 = 4;
        }

        v27 = v25 - v26;
        v28 = v44[0] + 24 * v27;
        v29 = (v44[0] + 56);
        v30.i64[0] = -1;
        v30.i64[1] = -1;
        v31.i64[0] = -1;
        v31.i64[1] = -1;
        do
        {
          v32 = v29 - 6;
          v33 = vld3q_f64(v32);
          v34 = vld3q_f64(v29);
          v30 = vbslq_s8(vcgtq_u64(v30, v33), v33, v30);
          v31 = vbslq_s8(vcgtq_u64(v31, v34), v34, v31);
          v29 += 12;
          v27 -= 4;
        }

        while (v27);
        v35 = vbslq_s8(vcgtq_u64(v31, v30), v30, v31);
        v36 = vextq_s8(v35, v35, 8uLL).u64[0];
        v24 = vbsl_s8(vcgtd_u64(v36, v35.u64[0]), *v35.i8, v36);
        v21 = v28;
      }

      else
      {
        v24 = -1;
      }

      do
      {
        if (v21[1] < *&v24)
        {
          v24 = v21[1];
        }

        v21 += 3;
      }

      while (v21 != v44[1]);
      if (*&v24 <= 0x7FFFFFFFFFFFFFFEuLL)
      {
        v37 = (*(**&this->__opaque[8] + 16))(*&this->__opaque[8]);
        (*(*v22 + 32))(v22, v37, v24);
        v20 = v44[0];
      }
    }
  }

  v38 = *&this->__opaque[40];
  v40 = v20;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  (**v38)();
  if (v40)
  {
    operator delete(v40);
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }
}

char *std::vector<unsigned short>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t a1, char *__dst, __int16 *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 > (v6 - v7) >> 1)
  {
    v8 = *a1;
    v9 = a5 + ((v7 - *a1) >> 1);
    if (v9 >= 0)
    {
      v10 = v6 - v8;
      if (v10 > v9)
      {
        v9 = v10;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v45 = 2 * ((__dst - v8) >> 1);
      v46 = 2 * a5;
      v47 = v45 + 2 * a5;
      v48 = v45;
      do
      {
        if (!v48)
        {
          goto LABEL_57;
        }

        v49 = *__src++;
        *v48++ = v49;
        v46 -= 2;
      }

      while (v46);
      v50 = *(a1 + 8) - __dst;
      memcpy((v45 + 2 * a5), __dst, v50);
      v52 = v47 + v50;
      *(a1 + 8) = v5;
      v53 = *a1;
      v54 = &v5[-*a1];
      v55 = v45 - v54;
      memcpy((v45 - v54), *a1, v54);
      *a1 = v55;
      *(a1 + 8) = v52;
      *(a1 + 16) = 0;
      if (v53)
      {
        operator delete(v53);
      }

      return v45;
    }

LABEL_58:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v12 = v7 - __dst;
  v13 = (v7 - __dst) >> 1;
  if (v13 >= a5)
  {
    v12 = 2 * a5;
    v32 = &__dst[2 * a5];
    v33 = (v7 - 2 * a5);
    if (v33 >= v7)
    {
      v37 = *(a1 + 8);
    }

    else
    {
      v34 = v33 + 1;
      if (v7 > (v33 + 1))
      {
        v34 = *(a1 + 8);
      }

      v35 = v34 + v12 + ~v7;
      v36 = v35 >= 0x1E && a5 > 0xF;
      v37 = *(a1 + 8);
      if (!v36)
      {
        goto LABEL_62;
      }

      v38 = (v35 >> 1) + 1;
      v39 = 2 * (v38 & 0xFFFFFFFFFFFFFFF0);
      v33 = (v33 + v39);
      v37 = (v7 + v39);
      v40 = (v7 + 16);
      v41 = (v7 + 16 - v12);
      v42 = v38 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v43 = *v41;
        *(v40 - 1) = *(v41 - 1);
        *v40 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 16;
      }

      while (v42);
      if (v38 != (v38 & 0xFFFFFFFFFFFFFFF0))
      {
LABEL_62:
        do
        {
          v44 = *v33++;
          *v37++ = v44;
        }

        while (v33 < v7);
      }
    }

    *(a1 + 8) = v37;
    if (v7 != v32)
    {
      v57 = __src;
      memmove(v32, __dst, v7 - v32);
      __src = v57;
    }

    v58 = v5;
    v59 = __src;
    goto LABEL_56;
  }

  v14 = __src + v12;
  v15 = *(a1 + 8);
  v16 = v15;
  if (__src + v12 != a4)
  {
    while (v16)
    {
      v17 = *v14;
      v14 += 2;
      *v16 = v17;
      v16 += 2;
      v15 += 2;
      if (v14 == a4)
      {
        goto LABEL_16;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_16:
  *(a1 + 8) = v15;
  if (v13 < 1)
  {
    return v5;
  }

  v18 = a5;
  v19 = &__dst[2 * a5];
  v20 = (v15 - 2 * a5);
  if (v20 >= v7)
  {
    v23 = __src;
    v24 = v15;
  }

  else
  {
    v21 = v20 + 1;
    if (v7 > (v20 + 1))
    {
      v21 = v7;
    }

    v22 = &v21[v18] + ~v15;
    v23 = __src;
    v24 = v15;
    if (v22 < 0x1E)
    {
      goto LABEL_63;
    }

    if (a5 <= 0xF)
    {
      goto LABEL_63;
    }

    v25 = (v22 >> 1) + 1;
    v26 = 2 * (v25 & 0xFFFFFFFFFFFFFFF0);
    v20 = (v20 + v26);
    v24 = (v15 + v26);
    v27 = (v15 + 16);
    v28 = (v15 + 16 - v18 * 2);
    v29 = v25 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v30 = *v28;
      *(v27 - 1) = *(v28 - 1);
      *v27 = v30;
      v27 += 2;
      v28 += 2;
      v29 -= 16;
    }

    while (v29);
    if (v25 != (v25 & 0xFFFFFFFFFFFFFFF0))
    {
LABEL_63:
      do
      {
        v31 = *v20++;
        *v24++ = v31;
      }

      while (v20 < v7);
    }
  }

  *(a1 + 8) = v24;
  if (v16 != v19)
  {
    memmove(&__dst[2 * a5], __dst, v15 - v19);
  }

  if (v7 == v5)
  {
    return v5;
  }

  v58 = v5;
  v59 = v23;
LABEL_56:
  memmove(v58, v59, v12);
  return v5;
}

void absl::inlined_vector_internal::Storage<unsigned int,3ul,std::allocator<unsigned int>>::EmplaceBackSlow<unsigned int const&>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 61) & 3) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

void webrtc::RTCPSender::RTCPSender(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  v6 = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 8) = v6;
  *(a1 + 40) = *a3;
  *(a1 + 44) = *(a3 + 4);
  *(a1 + 48) = (*(**(a1 + 16) + 16))(*(a1 + 16));
  *(a1 + 56) = 0;
  *(a1 + 64) = *(a3 + 8);
  v7 = 1000000;
  if (*a3)
  {
    v7 = 5000000;
  }

  if (*(a3 + 64) == 1)
  {
    v7 = *(a3 + 56);
  }

  *(a1 + 72) = v7;
  v8 = *(a3 + 48);
  if (v8)
  {
    if (v8 == a3 + 24)
    {
      *(a1 + 104) = a1 + 80;
      (*(**(a3 + 48) + 24))(*(a3 + 48));
    }

    else
    {
      *(a1 + 104) = v8;
      *(a3 + 48) = 0;
    }
  }

  else
  {
    *(a1 + 104) = 0;
  }

  pthread_mutexattr_init(&v10);
  pthread_mutexattr_setpolicy_np(&v10, 3);
  pthread_mutex_init((a1 + 112), &v10);
  pthread_mutexattr_destroy(&v10);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v9 = *(a3 + 72);
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 256) = v9;
  *(a1 + 264) = 0;
  *(a1 + 296) = &unk_288295E68;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1472;
  *(a1 + 392) = *(a3 + 16);
  *(a1 + 400) = *(a3 + 80);
  *(a1 + 448) = 0;
  *(a1 + 452) = 0;
  *(a1 + 456) = 0;
  *(a1 + 460) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 0;
  *(a1 + 472) = 0;
  *(a1 + 476) = 0;
  *(a1 + 480) = 0;
  *(a1 + 484) = 0;
  *(a1 + 488) = 0;
  *(a1 + 492) = 0;
  *(a1 + 496) = 0;
  *(a1 + 500) = 0;
  *(a1 + 504) = 0;
  *(a1 + 508) = 0;
  *(a1 + 512) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0;
  *(a1 + 556) = 0;
  *(a1 + 560) = 0;
  *(a1 + 564) = 0;
  *(a1 + 568) = 0;
  *(a1 + 572) = 0;
  *(a1 + 576) = 0;
  *(a1 + 580) = 0;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0;
  *(a1 + 604) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 422) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 437) = 0;
  *(a1 + 616) = a1 + 624;
  *(a1 + 640) = -1;
  *(a1 + 656) = 0u;
  *(a1 + 648) = a1 + 656;
  *(a1 + 680) = 0u;
  *(a1 + 672) = a1 + 680;
  operator new();
}

void webrtc::RTCPSender::BuildSR(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 624);
  if (!v6)
  {
LABEL_7:
    operator new();
  }

  v7 = *(a1 + 640);
  while (1)
  {
    while (1)
    {
      v8 = v6;
      v9 = *(v6 + 28);
      if (v7 >= v9)
      {
        break;
      }

      v6 = *v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v10 = *(v8 + 8);
  if (v10 <= 0)
  {
    if (*(a1 + 40))
    {
      v10 = 8;
    }

    else
    {
      v10 = 90;
    }
  }

  if (*(a1 + 216))
  {
    v11 = *(a1 + 208);
    v12 = v11 / 0x3E8uLL;
    if (v11 % 0x3E8uLL > 0x1F3)
    {
      LODWORD(v12) = v12 + 1;
    }

    if (-v11 % 0x3E8uLL <= 0x1F4)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 - -v11 / 0x3E8uLL;
    if (v11 >= 0)
    {
      v14 = v12;
    }

    v15 = *(a1 + 204) + *(a1 + 200) + v10 * ((*(a2 + 24) + 500) / 1000 - v14);
    v40 = &unk_28829FA68;
    __p = 0;
    v45 = 0u;
    v43 = 0;
    v42 = 0u;
    v41 = *(a1 + 44);
    *&v42 = (*(**(a1 + 16) + 24))(*(a1 + 16));
    v16 = *a2;
    *(&v42 + 1) = __PAIR64__(**a2, v15);
    v43 = *(v16 + 1);
    v17 = *(a1 + 256);
    if (v17)
    {
      (*(*v17 + 16))(&v46);
      v18 = v46;
      v19 = v47;
      v20 = v47;
      if (v46 != v47)
      {
        if (*(v16 + 4))
        {
          v21 = *(a1 + 16);
          v38 = v47;
          v22 = (*(*v21 + 16))(v21);
          v23 = (*(*v21 + 24))(v21, v22);
          v19 = v38;
          v24 = (v23 >> 16) - *(v16 + 34);
          v25 = v16[6];
          v26 = v20 - v18 - 28;
          v27 = v18;
          if (v26 < 0x1C)
          {
            goto LABEL_44;
          }

          v28 = v26 / 0x1C + 1;
          v27 = &v18[7 * (v28 & 0x1FFFFFFFFFFFFFFELL)];
          v29 = v18 + 13;
          v30 = v28 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            *(v29 - 8) = v25;
            *(v29 - 7) = v24;
            *(v29 - 1) = v25;
            *v29 = v24;
            v29 += 14;
            v30 -= 2;
          }

          while (v30);
          if (v28 != (v28 & 0x1FFFFFFFFFFFFFFELL))
          {
LABEL_44:
            do
            {
              *(v27 + 5) = v25;
              *(v27 + 6) = v24;
              v27 += 28;
            }

            while (v27 != v20);
          }
        }
      }
    }

    else
    {
      v18 = 0;
      v19 = 0uLL;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((v19 - v18) >> 2)) >= 0x20)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/sender_report.cc");
      }

      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      if (__p)
      {
        *&v45 = __p;
        v39 = v19;
        operator delete(__p);
        v19 = v39;
      }

      __p = v18;
      v45 = v19;
    }

    (*(v40 + 3))(&v40, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
    v40 = &unk_28829FA68;
    if (__p)
    {
      *&v45 = __p;
      operator delete(__p);
    }
  }

  else
  {
    __break(1u);
  }
}

void webrtc::RTCPSender::BuildRR(uint64_t a1, uint64_t *a2, void *a3)
{
  v30 = &unk_28829A3B0;
  __p = 0;
  v5 = 0uLL;
  v33 = 0u;
  v31 = *(a1 + 44);
  v6 = *(a1 + 256);
  if (v6)
  {
    v7 = *a2;
    (*(*v6 + 16))(&v34);
    v8 = v34;
    v5 = v35;
    v9 = v35;
    if (v34 != v35)
    {
      if (*(v7 + 32))
      {
        v10 = *(a1 + 16);
        v28 = v35;
        v11 = (*(*v10 + 16))(v10);
        v12 = (*(*v10 + 24))(v10, v11);
        v5 = v28;
        v13 = (v12 >> 16) - *(v7 + 34);
        v14 = *(v7 + 24);
        v15 = v9 - v8 - 28;
        v16 = v8;
        if (v15 < 0x1C)
        {
          goto LABEL_26;
        }

        v17 = v15 / 0x1C + 1;
        v16 = &v8[7 * (v17 & 0x1FFFFFFFFFFFFFFELL)];
        v18 = v8 + 13;
        v19 = v17 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v18 - 8) = v14;
          *(v18 - 7) = v13;
          *(v18 - 1) = v14;
          *v18 = v13;
          v18 += 14;
          v19 -= 2;
        }

        while (v19);
        if (v17 != (v17 & 0x1FFFFFFFFFFFFFFELL))
        {
LABEL_26:
          do
          {
            *(v16 + 5) = v14;
            *(v16 + 6) = v13;
            v16 += 28;
          }

          while (v16 != v9);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v5 - v8) >> 2)) >= 0x20)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/receiver_report.cc");
    }

    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    if (__p)
    {
      *&v33 = __p;
      v29 = v5;
      operator delete(__p);
      v5 = v29;
    }

    __p = v8;
    v33 = v5;
  }

  if (*(a1 + 56) == 1 || (v27 = __p, __p != v33))
  {
    (*(v30 + 3))(&v30, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
    v27 = __p;
  }

  v30 = &unk_28829A3B0;
  if (v27)
  {
    *&v33 = v27;
    operator delete(v27);
  }
}

void webrtc::RTCPSender::BuildSDES(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 255);
  if ((v9 & 0x8000000000000000) != 0 && *(a1 + 240) >= 0x100uLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_sender.cc", 409, "length_cname < 256", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, *(a1 + 240));
    webrtc::RTCPSender::BuildPLI();
  }

  else
  {
    v15 = 0;
    v14 = &unk_28829F090;
    __p = 0;
    v17 = 0;
    v18 = 0;
    v19 = 4;
    if ((v9 & 0x80000000) != 0)
    {
      v10 = *(a1 + 232);
      v9 = *(a1 + 240);
    }

    else
    {
      v10 = (a1 + 232);
    }

    webrtc::rtcp::Sdes::AddCName(&v14, *(a1 + 44), v10, v9);
    (*(v14 + 3))(&v14, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
    v14 = &unk_28829F090;
    v11 = __p;
    if (__p)
    {
      v12 = v17;
      v13 = __p;
      if (v17 != __p)
      {
        do
        {
          if (*(v12 - 1) < 0)
          {
            operator delete(*(v12 - 3));
          }

          v12 -= 4;
        }

        while (v12 != v11);
        v13 = __p;
      }

      v17 = v11;
      operator delete(v13);
    }
  }
}

uint64_t webrtc::RTCPSender::BuildPLI(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = &unk_288299A18;
  v3 = a1[56];
  v6 = a1[11];
  v7 = v3;
  ++a1[104];
  return off_288299A30(&v5, a3 + 32, (a3 + 24), *(a3 + 16), *a3, *(a3 + 8));
}

void webrtc::RTCPSender::BuildFIR(uint64_t a1)
{
  ++*(a1 + 288);
  v1 = &unk_288293A30;
  v5 = 0;
  v6 = 0;
  __p = 0;
  v2 = *(a1 + 44);
  v3 = 0;
  operator new();
}

void webrtc::RTCPSender::BuildREMB(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 44);
  v7 = 0;
  v3 = *(a1 + 328);
  v8 = *(a1 + 320);
  __p = 0;
  v5 = &unk_28829A490;
  v10 = 0;
  v11 = 0;
  v4 = *(a1 + 336);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  (*(v5 + 3))(&v5, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
  v5 = &unk_28829A490;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void webrtc::RTCPSender::BuildBYE(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &unk_288290400;
  *__p = 0u;
  *v9 = 0u;
  v10 = 0u;
  v7 = *(a1 + 44);
  v5 = *(a1 + 264);
  v4 = *(a1 + 272);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v9[0] = 0;
  (*(v6 + 3))(&v6, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
  v6 = &unk_288290400;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t webrtc::RTCPSender::BuildLossNotification(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 304) = *(a1 + 44);
  *(a1 + 308) = *(a1 + 224);
  return (*(*(a1 + 296) + 24))(a1 + 296, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
}

void webrtc::RTCPSender::BuildTMMBR(_DWORD *a1, uint64_t a2, void *a3)
{
  v4 = *(*a2 + 64);
  if (v4)
  {
    v33 = 0;
    webrtc::RTCPReceiver::BoundingSet(v4, &v33, &v30);
    v8 = v30;
    v7 = v31;
    if (v30 != v31)
    {
      v9 = a1[94];
      v10 = v30;
      do
      {
        if (*(v10 + 1) == v9 && a1[95] == *(v10 + 8))
        {
          goto LABEL_35;
        }

        v10 += 6;
      }

      while (v10 != v31);
      if (v33)
      {
        goto LABEL_32;
      }

      v11 = v32;
      if (v31 >= v32)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) + 1;
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          if (0x5555555555555556 * ((v32 - v30) >> 3) > v13)
          {
            v13 = 0x5555555555555556 * ((v32 - v30) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v13)
          {
            if (v13 <= 0xAAAAAAAAAAAAAAALL)
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

      v12 = a1[95];
      *v31 = a1[11];
      *(v7 + 1) = v9;
      *(v7 + 8) = v12;
      __p = v8;
      v28 = v7 + 6;
      v29 = v11;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      webrtc::TMMBRHelp::FindBoundingSet(&__p, &v22, v6);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v22 == v23)
      {
        v17 = 0;
        v33 = 0;
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = a1[11];
        v15 = (v22 + 24);
        do
        {
          v16 = *(v15 - 6);
          v17 = v16 == v14;
          v18 = v16 == v14 || v15 == v23;
          v15 = (v15 + 24);
        }

        while (!v18);
        v33 = v16 == v14;
        if (!v22)
        {
          goto LABEL_30;
        }
      }

      v23 = v22;
      operator delete(v22);
LABEL_30:
      if (!v17)
      {
        return;
      }

      v8 = 0;
    }

LABEL_32:
    v19 = a1[94];
    if (v19)
    {
      v22 = &unk_2882A1040;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v23 = a1[11];
      LODWORD(v20) = a1[56];
      *(&v20 + 1) = v19;
      v21 = a1[95];
      std::vector<webrtc::rtcp::TmmbItem>::push_back[abi:sn200100](&v24, &v20);
      (*(v22 + 3))(&v22, a3 + 4, a3 + 3, a3[2], *a3, a3[1]);
      v22 = &unk_2882A1040;
      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }
    }

LABEL_35:
    if (v8)
    {
      v31 = v8;
      operator delete(v8);
    }
  }
}