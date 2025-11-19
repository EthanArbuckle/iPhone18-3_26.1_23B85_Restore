const std::string::value_type *webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(const std::string::value_type **this)
{
  result = (*(*this + 14))(this);
  if (!result)
  {
    return result;
  }

  v3 = *(this + 536);
  v4 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if (v3 == 1)
  {
    if ((v4 & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    }
  }

  else if ((v4 & 1) == 0)
  {
    v31[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc";
    v31[1] = 9425;
    v31[2] = &v30;
    v31[3] = "All candidates gathered for ";
    v32 = v31;
    if (*(this + 479) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, this[57], this[58]);
    }

    else
    {
      v29 = *(this + 19);
    }

    (*(*this + 16))(this);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v12, v13, v14, v15, v16, v17, v18, *v32);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }
  }

  v19 = this[81];
  v20 = this[82];
  if (v19 != v20)
  {
    v21 = (this + 30);
    v22 = this[31];
    if (v22 == (this + 30))
    {
      this[33] = v22;
    }

    else
    {
      do
      {
        v23 = this[31];
        for (this[33] = v23; v23 != v21; v23 = this[33])
        {
          v25 = *(v23 + 2);
          v24 = v23 + 16;
          this[33] = *(v24 - 1);
          v25(v24, this, v19);
        }

        v19 += 11;
      }

      while (v19 != v20);
      v20 = this[82];
      v19 = this[81];
    }
  }

  if (v20 != v19)
  {
    do
    {
      if (*(v20 - 1) < 0)
      {
        operator delete(*(v20 - 3));
        if ((*(v20 - 33) & 0x80000000) == 0)
        {
LABEL_26:
          v28 = v20 - 11;
          if (*(v20 - 65) < 0)
          {
            goto LABEL_30;
          }

          goto LABEL_23;
        }
      }

      else if ((*(v20 - 33) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(*(v20 - 7));
      v28 = v20 - 11;
      if (*(v20 - 65) < 0)
      {
LABEL_30:
        operator delete(*v28);
      }

LABEL_23:
      v20 = v28;
    }

    while (v28 != v19);
  }

  this[82] = v19;
  result = this[45];
  for (this[47] = result; result != (this + 44); result = this[47])
  {
    v27 = *(result + 2);
    v26 = result + 16;
    this[47] = *(v26 - 1);
    v27(v26, this);
  }

  return result;
}

void webrtc::anonymous namespace::NetworkFilter::NetworkFilter(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = v4;
      (*(*v3 + 24))(v3, v4);
    }

    else
    {
      v5 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = 0;
  operator new();
}

void webrtc::anonymous namespace::FilterNetworks(std::string::size_type **a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 24);
  if (!v6)
  {
    v27 = 0;
    if (v5 != v4)
    {
      goto LABEL_6;
    }

LABEL_16:
    v4 = v5;
    goto LABEL_17;
  }

  if (v6 != a2)
  {
    v27 = (*(*v6 + 16))(v6);
    if (v5 != v4)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v27 = v26;
  (*(*v6 + 24))(v6, v26);
  if (v5 == v4)
  {
    goto LABEL_16;
  }

  do
  {
    while (1)
    {
LABEL_6:
      __p.__r_.__value_.__r.__words[0] = *v5;
      if (!v27)
      {
        goto LABEL_37;
      }

      if (((*(*v27 + 48))(v27, &__p) & 1) == 0)
      {
        break;
      }

      if (++v5 == v4)
      {
        goto LABEL_17;
      }
    }

    do
    {
      if (--v4 == v5)
      {
        v4 = v5;
        v8 = v27;
        if (v27 == v26)
        {
          goto LABEL_23;
        }

LABEL_18:
        if (v8)
        {
          (*(*v8 + 40))(v8);
        }

        if (v4 == a1[1])
        {
          return;
        }

LABEL_24:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t\n\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
        }

        v16 = a1[1];
        if (v4 != v16)
        {
          v17 = v4;
          do
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              v2 = v2 & 0xFFFFFFFF00000000 | 0x3F9;
              webrtc::Network::ToString(*v17, &__p);
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            ++v17;
            v16 = a1[1];
          }

          while (v17 != v16);
        }

        if (v4 <= v16)
        {
          if (v4 != v16)
          {
            a1[1] = v4;
          }

          return;
        }

        __break(1u);
LABEL_37:
        std::__throw_bad_function_call[abi:sn200100]();
      }

      __p.__r_.__value_.__r.__words[0] = *v4;
      if (!v27)
      {
        goto LABEL_37;
      }
    }

    while (!(*(*v27 + 48))(v27, &__p));
    v7 = *v5;
    *v5++ = *v4;
    *v4 = v7;
  }

  while (v4 != v5);
LABEL_17:
  v8 = v27;
  if (v27 != v26)
  {
    goto LABEL_18;
  }

LABEL_23:
  (*(*v8 + 32))(v8);
  if (v4 != a1[1])
  {
    goto LABEL_24;
  }
}

uint64_t webrtc::BasicPortAllocatorSession::AddAllocatedPort(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = result;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
      goto LABEL_7;
    }

    if (*(v5 + 479) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(v5 + 456), *(v5 + 464));
    }

    else
    {
      v25 = *(v5 + 456);
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((*(v5 + 479) & 0x80000000) == 0)
      {
LABEL_8:
        __src = *(v5 + 456);
        size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
LABEL_7:
      if ((*(v5 + 479) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    std::string::__init_copy_ctor_external(&__src, *(v5 + 456), *(v5 + 464));
    size = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
LABEL_9:
      p_src = &__src;
      if (size <= 0x16)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

LABEL_13:
    size = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    p_src = __src.__r_.__value_.__r.__words[0];
    if (__src.__r_.__value_.__l.__size_ <= 0x16)
    {
LABEL_10:
      *(&v25.__r_.__value_.__s + 23) = size;
      v15 = (&v25 + size);
      if (&v25 <= p_src && v15 > p_src)
      {
        goto LABEL_38;
      }

      if (size)
      {
        memmove(&v25, p_src, size);
      }

      v15->__r_.__value_.__s.__data_[0] = 0;
      v17 = (a2 + 592);
      if (*(a2 + 615) < 0)
      {
        operator delete(*v17);
        *v17 = *&v25.__r_.__value_.__l.__data_;
        *(a2 + 608) = *(&v25.__r_.__value_.__l + 2);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        *v17 = *&v25.__r_.__value_.__l.__data_;
        *(a2 + 608) = *(&v25.__r_.__value_.__l + 2);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }
      }

      operator delete(__src.__r_.__value_.__l.__data_);
LABEL_24:
      *(a2 + 616) = *(v5 + 480);
      v18 = (*(*v5 + 128))(v5);
      (*(*a2 + 232))(a2, v18);
      *(a2 + 572) = (*(v5 + 448) & 0x200) != 0;
      v19 = *(v5 + 632);
      v20 = *(v5 + 640);
      if (v19 >= v20)
      {
        v21 = *(v5 + 624);
        v22 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 3) + 1;
        if (v22 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 3);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      else if (v19)
      {
        *v19 = a2;
        *(v19 + 8) = a3;
        *(v19 + 16) = 0;
        *(v19 + 20) = 0;
        *(v5 + 632) = v19 + 24;
        operator new();
      }

LABEL_38:
      __break(1u);
    }

LABEL_15:
    operator new();
  }

  return result;
}

void webrtc::BasicPortAllocatorSession::OnCandidateReady(webrtc::BasicPortAllocatorSession *this, webrtc::Port *a2, const webrtc::Candidate *a3)
{
  v6 = *(this + 78);
  v7 = *(this + 79);
  if (v6 == v7)
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    while (*v6 != a2)
    {
      v6 += 24;
      if (v6 == v7)
      {
        goto LABEL_4;
      }
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(*a2 + 176))(&__p, a2);
    webrtc::Candidate::ToStringInternal(a3, 1, &v75);
    webrtc::webrtc_logging_impl::Log("\r\n\t\n", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if ((v76[15] & 0x80000000) == 0)
    {
      if ((SBYTE11(v74) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      operator delete(__p);
      if (*(v6 + 20))
      {
LABEL_9:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
        }

        return;
      }

      goto LABEL_13;
    }

    operator delete(v75);
    if (SBYTE11(v74) < 0)
    {
      goto LABEL_12;
    }
  }

LABEL_8:
  if (*(v6 + 20))
  {
    goto LABEL_9;
  }

LABEL_13:
  v22 = *(this + 168);
  v23 = *(a3 + 28);
  if (v23 == 2)
  {
    if (!*(a3 + 29))
    {
      v26 = 0;
      goto LABEL_66;
    }
  }

  else if (v23 == 30)
  {
    v74 = *MEMORY[0x277D85EE8];
    v24 = *(a3 + 116) == v74 && *(a3 + 124) == *(&v74 + 1);
    if (v24 || ((*&v76[4] = webrtc::kV4MappedPrefix, *(a3 + 116) == webrtc::kV4MappedPrefix) ? (v25 = *(a3 + 124) == *(&webrtc::kV4MappedPrefix + 1)) : (v25 = 0), v25))
    {
      v26 = 0;
      goto LABEL_52;
    }
  }

  v27 = *(a3 + 52);
  if (v27)
  {
    if (v27 == 1)
    {
      v26 = (v22 >> 1) & 1;
    }

    else if (v27 == 3)
    {
      v26 = (v22 >> 2) & 1;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_34;
  }

  if ((v22 & 2) == 0)
  {
    goto LABEL_32;
  }

  if (v23 == 2)
  {
    v58 = *(a3 + 29);
    if (v58 == 65193)
    {
      goto LABEL_32;
    }

    if (*(a3 + 29) == 127)
    {
      goto LABEL_32;
    }

    v59 = bswap32(v58);
    if (HIWORD(v59) == 49320 || (v59 & 0xFF000000) == 0xA000000 || (v59 & 0xFFF00000) == 0xAC100000)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v23 == 30)
    {
      v30 = *(a3 + 116);
      if ((v30 & 0xC0FF) != 0x80FE)
      {
        v74 = *MEMORY[0x277D85EF0];
        v31 = *(a3 + 116) == v74 && *(a3 + 124) == *(&v74 + 1);
        v32 = !v31;
        if (v30 != 253 && v32)
        {
          v26 = 1;
          goto LABEL_52;
        }
      }

      goto LABEL_32;
    }

    v58 = *(a3 + 29);
  }

  v26 = 1;
  if (v23 == 2 && (v58 & 0xC0FF) == 0x4064)
  {
LABEL_32:
    v26 = v22 & 1;
  }

LABEL_34:
  if (v23 != 30)
  {
    if (v23 != 2)
    {
      v29 = 0;
      if ((*(*a2 + 64))(a2))
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    }

    v28 = *(a3 + 29) == 0;
    goto LABEL_59;
  }

LABEL_52:
  v74 = *MEMORY[0x277D85EE8];
  if (*(a3 + 116) == v74 && *(a3 + 124) == *(&v74 + 1))
  {
LABEL_66:
    v29 = 1;
    if ((*(*a2 + 64))(a2))
    {
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  *&v76[4] = webrtc::kV4MappedPrefix;
  v28 = *(a3 + 116) == webrtc::kV4MappedPrefix && *(a3 + 124) == *(&webrtc::kV4MappedPrefix + 1);
LABEL_59:
  v29 = v28;
  if ((*(*a2 + 64))(a2))
  {
LABEL_63:
    v34 = 1;
    if (v26 & 1 | ((v29 & 1) == 0))
    {
      goto LABEL_64;
    }

LABEL_81:
    if ((v34 & *(this + 168) & 1) == 0)
    {
LABEL_83:
      v26 = 0;
      goto LABEL_84;
    }

    goto LABEL_82;
  }

LABEL_67:
  v35 = (a3 + 32);
  v36 = *(a3 + 55);
  if (v36 < 0)
  {
    if (*(a3 + 5) != 3)
    {
      goto LABEL_80;
    }

    v35 = *v35;
  }

  else if (v36 != 3)
  {
LABEL_80:
    v34 = 0;
    if (!(v26 & 1 | ((v29 & 1) == 0)))
    {
      goto LABEL_81;
    }

    goto LABEL_64;
  }

  v37 = *v35;
  v38 = *(v35 + 2);
  v34 = v37 == webrtc::TCP_PROTOCOL_NAME && v38 == 112;
  if (!(v26 & 1 | ((v29 & 1) == 0)))
  {
    goto LABEL_81;
  }

LABEL_64:
  if (!v26)
  {
    goto LABEL_84;
  }

LABEL_82:
  if (*(v6 + 16))
  {
    goto LABEL_83;
  }

  *(v6 + 16) = 1;
  if ((*(*a2 + 16))(a2) != 3)
  {
    goto LABEL_103;
  }

  v44 = *(this + 169);
  if (v44 != 1)
  {
    if (v44 == 2)
    {
      v26 = webrtc::BasicPortAllocatorSession::PruneNewlyPairableTurnPort(this, v6);
      if (*(v6 + 20) == 3)
      {
        goto LABEL_84;
      }

      goto LABEL_104;
    }

LABEL_103:
    v26 = 0;
    if (*(v6 + 20) == 3)
    {
      goto LABEL_84;
    }

    goto LABEL_104;
  }

  v26 = webrtc::BasicPortAllocatorSession::PruneTurnPorts(this, a2);
  if (*(v6 + 20) == 3)
  {
    goto LABEL_84;
  }

LABEL_104:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(*a2 + 176))(&__p, a2);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if (SBYTE11(v74) < 0)
    {
      operator delete(__p);
    }
  }

  v52 = *(this + 10);
  for (*(this + 12) = v52; v52 != (this + 72); v52 = *(this + 12))
  {
    v54 = v52[2];
    v53 = v52 + 2;
    *(this + 12) = *(v53 - 1);
    v54(v53, this, a2);
  }

  if (!*(a2 + 187))
  {
    *(a2 + 187) = 1;
  }

LABEL_84:
  if (*(v6 + 16) != 1 || (*(v6 + 20) - 4) > 0xFFFFFFFD)
  {
    goto LABEL_137;
  }

  v40 = *(this + 168);
  v41 = *(a3 + 28);
  if (v41 == 2)
  {
    if (!*(a3 + 29))
    {
      goto LABEL_137;
    }
  }

  else if (v41 == 30)
  {
    v74 = *MEMORY[0x277D85EE8];
    if (*(a3 + 116) == v74 && *(a3 + 124) == *(&v74 + 1))
    {
      goto LABEL_137;
    }

    *&v76[4] = webrtc::kV4MappedPrefix;
    if (*(a3 + 116) == webrtc::kV4MappedPrefix && *(a3 + 124) == *(&webrtc::kV4MappedPrefix + 1))
    {
      goto LABEL_137;
    }
  }

  v55 = *(a3 + 52);
  if (!v55)
  {
    if ((v40 & 2) != 0)
    {
      if (webrtc::SocketAddress::IsPrivateIP((a3 + 80)) && (v40 & 1) == 0)
      {
        goto LABEL_137;
      }

      v67 = *(a3 + 52);
      v75 = 0;
      *v76 = 0;
      *&v76[8] = 0;
      v57 = *(this + 68);
      if ((v67 | 2) != 2)
      {
        v56 = 0;
        if ((~v57[29] & 0xC00) == 0)
        {
          goto LABEL_145;
        }

LABEL_144:
        if (v57[35])
        {
          v68 = (*(*v57 + 72))(v57);
LABEL_147:
          v69 = v57[35];
          v70 = (*(*v57 + 72))(v57);
          v71 = *(a3 + 52);
          if (v71 == 1 && (v68 & 1) != 0 || v71 == 3 && (v69 & 2) == 0)
          {
            v72 = 1;
          }

          else
          {
            v72 = (v71 == 2) & v70;
          }

          webrtc::Candidate::ToSanitizedCopy(a3, v56, v72, 0, &__p);
          std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(&v75);
        }

LABEL_145:
        v68 = 1;
        goto LABEL_147;
      }
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        goto LABEL_137;
      }

      v75 = 0;
      *v76 = 0;
      *&v76[8] = 0;
      v57 = *(this + 68);
    }

    v56 = (*(*v57 + 72))(v57);
    if ((~v57[29] & 0xC00) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  if (v55 != 1)
  {
    if (v55 != 3 || (v40 & 4) == 0)
    {
      goto LABEL_137;
    }

LABEL_118:
    v56 = 0;
    v75 = 0;
    *v76 = 0;
    *&v76[8] = 0;
    v57 = *(this + 68);
    if ((~v57[29] & 0xC00) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

  if ((v40 & 2) != 0)
  {
    goto LABEL_118;
  }

LABEL_137:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
  }

  if (v26)
  {
    webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(this);
  }
}

void webrtc::BasicPortAllocatorSession::OnCandidateError(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a3 + 23);
  v6 = v5;
  v7 = *(a3 + 1);
  if ((v5 & 0x80u) != 0)
  {
    v5 = v7;
  }

  if (!v5)
  {
    v12 = a1[82];
    v13 = a1[83];
    if (v12 >= v13)
    {
      v17 = a1[81];
      v18 = 0x2E8BA2E8BA2E8BA3 * ((v12 - v17) >> 3) + 1;
      if (v18 > 0x2E8BA2E8BA2E8BALL)
      {
        goto LABEL_27;
      }

      v19 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v17) >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= v18)
      {
        v20 = v18;
      }

      if (v19 >= 0x1745D1745D1745DLL)
      {
        v21 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        if (v21 <= 0x2E8BA2E8BA2E8BALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v12)
    {
      if (v6 < 0)
      {
        std::string::__init_copy_ctor_external(a1[82], *a3, v7);
        *(v12 + 24) = *(a3 + 6);
        if ((*(a3 + 55) & 0x80000000) == 0)
        {
LABEL_11:
          v15 = a3[2];
          *(v12 + 48) = *(a3 + 6);
          *(v12 + 32) = v15;
          *(v12 + 56) = *(a3 + 14);
          if ((*(a3 + 87) & 0x80000000) == 0)
          {
LABEL_12:
            v16 = a3[4];
            *(v12 + 80) = *(a3 + 10);
            *(v12 + 64) = v16;
LABEL_25:
            a1[82] = v12 + 88;
            return;
          }

LABEL_24:
          std::string::__init_copy_ctor_external((v12 + 64), *(a3 + 8), *(a3 + 9));
          goto LABEL_25;
        }
      }

      else
      {
        v14 = *a3;
        *(v12 + 16) = *(a3 + 2);
        *v12 = v14;
        *(v12 + 24) = *(a3 + 6);
        if ((*(a3 + 55) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      std::string::__init_copy_ctor_external((v12 + 32), *(a3 + 4), *(a3 + 5));
      *(v12 + 56) = *(a3 + 14);
      if ((*(a3 + 87) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_27:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = a1 + 30;
  v9 = a1[31];
  a1[33] = v9;
  if (v9 != a1 + 30)
  {
    do
    {
      v11 = v9[2];
      v10 = v9 + 2;
      a1[33] = *(v10 - 1);
      v11(v10, a1, a3);
      v9 = a1[33];
    }

    while (v9 != v8);
  }
}

void webrtc::BasicPortAllocatorSession::OnPortComplete(webrtc::BasicPortAllocatorSession *this, webrtc::Port *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(*a2 + 176))(&__p, a2);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v11 = *(this + 78);
  v12 = *(this + 79);
  if (v11 == v12)
  {
LABEL_7:
    v11 = 0;
  }

  else
  {
    while (*v11 != a2)
    {
      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }
  }

  if (!*(v11 + 20))
  {
    *(v11 + 20) = 1;
    webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(this);
  }
}

void webrtc::BasicPortAllocatorSession::OnPortError(webrtc::BasicPortAllocatorSession *this, webrtc::Port *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(*a2 + 176))(&__p, a2);
    webrtc::webrtc_logging_impl::Log("\r\n\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v11 = *(this + 78);
  v12 = *(this + 79);
  if (v11 == v12)
  {
LABEL_7:
    v11 = 0;
  }

  else
  {
    while (*v11 != a2)
    {
      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }
  }

  if (!*(v11 + 20))
  {
    *(v11 + 20) = 2;
    webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(this);
  }
}

uint64_t webrtc::BasicPortAllocatorSession::PruneNewlyPairableTurnPort(uint64_t a1, _DWORD *a2)
{
  v4 = (*(**a2 + 24))();
  v5 = *(a1 + 624);
  v6 = *(a1 + 632);
  if (v5 == v6)
  {
    return 0;
  }

  v7 = v4;
  v8 = (v4 + 128);
  while (1)
  {
    v9 = (*(**v5 + 24))();
    v10 = *(v9 + 151);
    if (v10 >= 0)
    {
      v11 = *(v9 + 151);
    }

    else
    {
      v11 = *(v9 + 136);
    }

    v12 = *(v7 + 151);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v7 + 136);
    }

    if (v11 == v12)
    {
      v16 = *(v9 + 128);
      v14 = (v9 + 128);
      v15 = v16;
      if (v10 < 0)
      {
        v14 = v15;
      }

      v17 = v13 >= 0 ? v8 : *v8;
      if (!memcmp(v14, v17, v11) && (*(**v5 + 16))() == 3 && *(v5 + 16) == 1 && v5 != a2 && (v5[5] & 0xFFFFFFFE) != 2)
      {
        break;
      }
    }

    v5 += 6;
    if (v5 == v6)
    {
      return 0;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    (*(**a2 + 176))(&__p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if (v28 < 0)
    {
      operator delete(__p);
    }
  }

  a2[5] = 3;
  v25 = *a2;
  if (*a2)
  {
    *(v25 + 187) = 2;
    webrtc::Port::PostDestroyIfDead(v25);
  }

  return 1;
}

uint64_t webrtc::BasicPortAllocatorSession::PruneTurnPorts(webrtc::BasicPortAllocatorSession *this, webrtc::Port *a2)
{
  v4 = (*(*a2 + 24))(a2);
  v9 = v4;
  v10 = (v4 + 128);
  v11 = *(v4 + 151);
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = *(v4 + 128);
    v11 = *(v4 + 136);
    v13 = *(this + 78);
    v14 = *(this + 79);
    if (v13 == v14)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = (v4 + 128);
    v13 = *(this + 78);
    v14 = *(this + 79);
    if (v13 == v14)
    {
LABEL_42:
      webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc", 1069, "best_turn_port != nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v5, v6, v7, v8, v34);
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  v15 = 0;
  do
  {
    v16 = (*(**v13 + 24))();
    v17 = *(v16 + 151);
    if (v17 < 0)
    {
      v18 = *(v16 + 128);
      if (v11 != *(v16 + 136))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = (v16 + 128);
      if (v11 != v17)
      {
        goto LABEL_7;
      }
    }

    {
      v15 = *v13;
    }

LABEL_7:
    v13 += 3;
  }

  while (v13 != v14);
  if (!v15)
  {
    goto LABEL_42;
  }

  v20 = *(this + 78);
  for (i = *(this + 79); v20 != i; v20 += 3)
  {
    v22 = (*(**v20 + 24))(*v20, v18);
    v23 = *(v22 + 151);
    if (v23 >= 0)
    {
      v24 = *(v22 + 151);
    }

    else
    {
      v24 = *(v22 + 136);
    }

    v25 = *(v9 + 151);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v9 + 136);
    }

    if (v24 == v25)
    {
      v29 = *(v22 + 128);
      v27 = (v22 + 128);
      v28 = v29;
      if (v23 < 0)
      {
        v27 = v28;
      }

      if (v26 >= 0)
      {
        v30 = v10;
      }

      else
      {
        v30 = *v10;
      }

      {
        v32 = *v20;
        if (*v20 != a2)
        {
          operator new();
        }

        *(v20 + 5) = 3;
        *(v32 + 187) = 2;
        webrtc::Port::PostDestroyIfDead(v32);
      }
    }
  }

  return 0;
}

uint64_t webrtc::anonymous namespace::ComparePort(webrtc::_anonymous_namespace_ *this, const webrtc::Port *a2, const webrtc::Port *a3)
{
  v5 = (*(*this + 128))(this, a2, a3);
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_273B8EDE0[v5];
  }

  v7 = (*(*a2 + 128))(a2);
  if (v7 > 3)
  {
    result = v6;
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v8 = dword_273B8EDF0[v7];
    result = v8 + v6;
    if (v8 + v6)
    {
      return result;
    }
  }

  v10 = (*(*this + 24))(this);
  webrtc::Network::GetBestIP(v10, &v15);
  if (v16 == 30)
  {
    v11 = 2;
  }

  else
  {
    v11 = v16 == 2;
  }

  v12 = (*(*a2 + 24))(a2);
  webrtc::Network::GetBestIP(v12, &v15);
  if (v16 == 2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  if (v16 == 30)
  {
    v14 = -2;
  }

  else
  {
    v14 = v13;
  }

  return (v14 + v11);
}

uint64_t webrtc::BasicPortAllocatorSession::PruneAllPorts(uint64_t this)
{
  v1 = *(this + 624);
  for (i = *(this + 632); v1 != i; v1 += 24)
  {
    *(v1 + 20) = 3;
    this = *v1;
    if (*v1)
    {
      *(this + 748) = 2;
      webrtc::Port::PostDestroyIfDead(this);
    }
  }

  return this;
}

void webrtc::PortConfiguration::StunServers(webrtc::PortConfiguration *this, uint64_t a2)
{
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a2 + 8))
    {
LABEL_5:
      if (!*(a2 + 32) && !*(a2 + 56))
      {
        goto LABEL_18;
      }
    }
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_5;
  }

  v4 = a2 + 80;
  v5 = *(a2 + 80);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = a2 + 80;
  do
  {
    v7 = webrtc::SocketAddress::operator<((v5 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v5;
    }

    v5 = *(v5 + v8);
  }

  while (v5);
  if (v6 == v4 || webrtc::SocketAddress::operator<(a2, (v6 + 32)))
  {
LABEL_17:
    std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>(a2 + 72, a2);
  }

LABEL_18:
  if (*(a2 + 88) && *(a2 + 144) == 1)
  {

    std::set<webrtc::SocketAddress>::set[abi:sn200100](this, (a2 + 72));
  }

  else
  {
    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    v10 = *(a2 + 152);
    v9 = *(a2 + 160);
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        v12 = (v10 + 160 * v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = v13;
        if (v13 != v14)
        {
          while (*(v15 + 18))
          {
            v15 += 10;
            if (v15 == v14)
            {
              goto LABEL_26;
            }
          }

          std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>(&v25, v13);
          v10 = *(a2 + 152);
          v9 = *(a2 + 160);
        }

LABEL_26:
        ++v11;
      }

      while (v11 < 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 5));
      v16 = v25;
      if (v25 != v26)
      {
        v17 = (a2 + 80);
        do
        {
          v18 = *v17;
          if (!*v17)
          {
            goto LABEL_44;
          }

          v19 = a2 + 80;
          do
          {
            v20 = webrtc::SocketAddress::operator<((v18 + 32), v16 + 4);
            if (v20)
            {
              v21 = 8;
            }

            else
            {
              v21 = 0;
            }

            if (!v20)
            {
              v19 = v18;
            }

            v18 = *(v18 + v21);
          }

          while (v18);
          if (v19 == v17 || webrtc::SocketAddress::operator<(v16 + 4, (v19 + 32)))
          {
LABEL_44:
            std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>(a2 + 72, v16 + 4);
          }

          v22 = v16[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v16[2];
              v24 = *v23 == v16;
              v16 = v23;
            }

            while (!v24);
          }

          v16 = v23;
        }

        while (v23 != v26);
      }
    }

    std::set<webrtc::SocketAddress>::set[abi:sn200100](this, (a2 + 72));
    std::__tree<webrtc::SocketAddress>::destroy(&v25, v26[0]);
  }
}

uint64_t webrtc::AllocationSequence::Process(uint64_t this, int a2)
{
  v131 = *MEMORY[0x277D85DE8];
  if (*(this + 176) != a2)
  {
    return this;
  }

  v2 = this;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::Network::ToString(*(v2 + 16), &__p);
    webrtc::webrtc_logging_impl::Log("\r\n\t\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = *(v2 + 136);
  switch(v10)
  {
    case 2:
      if ((*(v2 + 68) & 8) != 0)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v79, v80, v81, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
        }

        *(v2 + 64) = 3;
        break;
      }

      v65 = (*(**v2 + 152))();
      v66 = *(v65 + 296);
      __p.__r_.__value_.__r.__words[0] = v66;
      if (v66)
      {
        atomic_fetch_add_explicit((v66 + 8), 1u, memory_order_relaxed);
      }

      v67 = *(v65 + 320);
      *&__p.__r_.__value_.__r.__words[1] = *(v65 + 304);
      v126 = v67;
      v68 = *v2;
      v127 = *(*v2 + 552);
      v128 = *(v2 + 16);
      v69 = *(v68 + 511);
      if (v69 < 0)
      {
        v100 = *(v68 + 496);
        *&v129 = *(v68 + 488);
        *(&v129 + 1) = v100;
        v70 = *(v68 + 535);
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_95;
        }
      }

      else
      {
        *&v129 = v68 + 488;
        *(&v129 + 1) = v69;
        v70 = *(v68 + 535);
        if ((v70 & 0x8000000000000000) == 0)
        {
LABEL_95:
          v71 = v68 + 512;
          goto LABEL_111;
        }
      }

      v71 = *(v68 + 512);
      v70 = *(v68 + 520);
LABEL_111:
      *v130 = v71;
      *&v130[8] = v70;
      (*(*v68 + 152))(v68);
      (*(**v2 + 152))();
      (*(**v2 + 152))();
      operator new();
    case 1:
      if ((*(v2 + 68) & 4) != 0)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
        {
          goto LABEL_130;
        }

        break;
      }

      v18 = *(v2 + 56);
      if (!v18 || (v20 = *(v18 + 152), v19 = *(v18 + 160), v20 == v19))
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          goto LABEL_130;
        }

        break;
      }

      v120 = -858993459 * ((v19 - v20) >> 5);
      while (1)
      {
        v21 = *v20;
        if (*v20 != *(v20 + 1))
        {
          break;
        }

LABEL_19:
        --v120;
        v20 += 160;
        if (v20 == v19)
        {
          goto LABEL_131;
        }
      }

      while (1)
      {
        if ((*(v2 + 69) & 0x10) != 0 && !v21[18])
        {
          goto LABEL_22;
        }

        v22 = v21[8];
        webrtc::Network::GetBestIP(*(v2 + 16), &__p);
        if (v22)
        {
          v23 = v22 == LODWORD(__p.__r_.__value_.__r.__words[1]);
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v30 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
          if (v30)
          {
            goto LABEL_22;
          }

          webrtc::IPAddress::ToSensitiveString((v21 + 6), &v122);
          webrtc::Network::GetBestIP(*(v2 + 16), &__p);
          webrtc::IPAddress::ToSensitiveString(&__p, &v121);
          v119 = v119 & 0xFFFFFFFF00000000 | 0x3279;
          webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v121.__r_.__value_.__l.__data_);
            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_53:
              operator delete(v122.__r_.__value_.__l.__data_);
              goto LABEL_22;
            }
          }

          else if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_53;
          }

          goto LABEL_22;
        }

        v24 = (*(**v2 + 152))();
        v25 = *(v24 + 296);
        __p.__r_.__value_.__r.__words[0] = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1u, memory_order_relaxed);
        }

        v26 = *(v24 + 320);
        *&__p.__r_.__value_.__r.__words[1] = *(v24 + 304);
        v126 = v26;
        v129 = 0u;
        memset(v130, 0, sizeof(v130));
        v27 = *v2;
        v127 = *(*v2 + 552);
        v128 = *(v2 + 16);
        if (v130 == (v27 + 488))
        {
          goto LABEL_35;
        }

        if ((*(v27 + 511) & 0x80000000) == 0)
        {
          break;
        }

        std::string::__assign_no_alias<true>(v130, *(v27 + 488), *(v27 + 496));
        v27 = *v2;
        v28 = *v2 + 512;
        if (&v130[24] == v28)
        {
          goto LABEL_55;
        }

LABEL_36:
        v29 = *(v27 + 535);
        if ((v130[47] & 0x80000000) != 0)
        {
          v38 = *(v27 + 512);
          v39 = *(v27 + 520);
          if ((v29 & 0x80u) == 0)
          {
            v40 = v28;
          }

          else
          {
            v40 = v38;
          }

          if ((v29 & 0x80u) == 0)
          {
            v41 = v29;
          }

          else
          {
            v41 = v39;
          }

          std::string::__assign_no_alias<false>(&v130[24], v40, v41);
        }

        else if ((v29 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v130[24], *(v27 + 512), *(v27 + 520));
        }

        else
        {
          *&v130[24] = *v28;
          *&v130[40] = *(v28 + 16);
        }

LABEL_55:
        *&v129 = v21;
        *(&v129 + 1) = v20;
        *&v130[48] = *((*(**v2 + 152))() + 264);
        *&v130[56] = v120;
        if ((*(v2 + 69) & 1) != 0 && !v21[18] && *(v2 + 96))
        {
          v54 = (*(**v2 + 152))();
          (*(**(v54 + 368) + 16))(&v122);
          v45 = v122.__r_.__value_.__r.__words[0];
          if (v122.__r_.__value_.__r.__words[0])
          {
            v56 = *(v2 + 120);
            v55 = *(v2 + 128);
            if (v56 >= v55)
            {
              v58 = *(v2 + 112);
              v59 = v56 - v58;
              v60 = (v59 >> 3) + 1;
              if (!(v60 >> 61))
              {
                v61 = v55 - v58;
                v62 = v61 >> 2;
                if (v61 >> 2 <= v60)
                {
                  v62 = (v59 >> 3) + 1;
                }

                v63 = v61 >= 0x7FFFFFFFFFFFFFF8;
                v64 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v63)
                {
                  v64 = v62;
                }

                if (v64)
                {
                  if (!(v64 >> 61))
                  {
                    operator new();
                  }

                  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                }

LABEL_145:
                __break(1u);
              }

LABEL_147:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            if (!v56)
            {
              goto LABEL_145;
            }

            *v56 = v122.__r_.__value_.__r.__words[0];
            *(v2 + 120) = v56 + 1;
            v123[0] = &unk_28828FE68;
            v123[1] = v2;
            v124 = v123;
            (*(*v45 + 160))(v45, v123);
            if (v124 == v123)
            {
              (*(*v124 + 32))(v124);
            }

            else if (v124)
            {
              (*(*v124 + 40))();
            }

LABEL_58:
            v46 = (*(**v2 + 152))();
            (*(*v45 + 48))(v45, *(v46 + 288));
            webrtc::BasicPortAllocatorSession::AddAllocatedPort(*v2, v45, v2);
            goto LABEL_69;
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::SocketAddress::ToSensitiveString(v129, &v122);
            v117 = v117 & 0xFFFFFFFF00000000 | 0x336A;
LABEL_61:
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v122.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          v42 = *((*(**v2 + 152))() + 368);
          v43 = *((*(**v2 + 152))() + 120);
          v44 = (*(**v2 + 152))();
          (*(*v42 + 24))(&v122, v42, &__p, v43, *(v44 + 124));
          v45 = v122.__r_.__value_.__r.__words[0];
          if (v122.__r_.__value_.__r.__words[0])
          {
            goto LABEL_58;
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::SocketAddress::ToSensitiveString(v129, &v122);
            v118 = v118 & 0xFFFFFFFF00000000 | 0x33F2;
            goto LABEL_61;
          }
        }

LABEL_69:
        if ((v130[47] & 0x80000000) != 0)
        {
          operator delete(*&v130[24]);
          if ((v130[23] & 0x80000000) == 0)
          {
LABEL_71:
            v57 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0])
            {
              goto LABEL_75;
            }

            goto LABEL_22;
          }
        }

        else if ((v130[23] & 0x80000000) == 0)
        {
          goto LABEL_71;
        }

        operator delete(*v130);
        v57 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
LABEL_75:
          if (atomic_fetch_add(v57 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v57 + 8))(v57);
          }
        }

LABEL_22:
        v21 += 20;
        if (v21 == *(v20 + 1))
        {
          goto LABEL_19;
        }
      }

      *v130 = *(v27 + 488);
      *&v130[16] = *(v27 + 504);
LABEL_35:
      v28 = v27 + 512;
      if (&v130[24] == (v27 + 512))
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    case 0:
      v11 = *(v2 + 68);
      if ((v11 & 1) == 0)
      {
        if ((v11 & 0x100) != 0 && *(v2 + 96))
        {
          v12 = (*(**v2 + 152))();
          v13 = *(v12 + 296);
          __p.__r_.__value_.__r.__words[0] = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
          }

          v14 = *(v12 + 320);
          *&__p.__r_.__value_.__r.__words[1] = *(v12 + 304);
          v126 = v14;
          v15 = *v2;
          v127 = *(*v2 + 552);
          v128 = *(v2 + 16);
          v16 = *(v15 + 511);
          if (v16 < 0)
          {
            v17 = *(v15 + 488);
            v16 = *(v15 + 496);
          }

          else
          {
            v17 = v15 + 488;
          }

          *&v129 = v17;
          *(&v129 + 1) = v16;
          v102 = *(v15 + 535);
          if (v102 < 0)
          {
            v103 = *(v15 + 512);
            v102 = *(v15 + 520);
          }

          else
          {
            v103 = v15 + 512;
          }

          *v130 = v103;
          *&v130[8] = v102;
          (*(*v15 + 152))(v15);
          operator new();
        }

        v93 = (*(**v2 + 152))();
        v94 = *(v93 + 296);
        __p.__r_.__value_.__r.__words[0] = v94;
        if (v94)
        {
          atomic_fetch_add_explicit((v94 + 8), 1u, memory_order_relaxed);
        }

        v95 = *(v93 + 320);
        *&__p.__r_.__value_.__r.__words[1] = *(v93 + 304);
        v126 = v95;
        v96 = *v2;
        v127 = *(*v2 + 552);
        v128 = *(v2 + 16);
        v97 = *(v96 + 511);
        if (v97 < 0)
        {
          v101 = *(v96 + 496);
          *&v129 = *(v96 + 488);
          *(&v129 + 1) = v101;
          v98 = *(v96 + 535);
          if ((v98 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }
        }

        else
        {
          *&v129 = v96 + 488;
          *(&v129 + 1) = v97;
          v98 = *(v96 + 535);
          if ((v98 & 0x8000000000000000) == 0)
          {
LABEL_106:
            v99 = v96 + 512;
            goto LABEL_115;
          }
        }

        v99 = *(v96 + 512);
        v98 = *(v96 + 520);
LABEL_115:
        *v130 = v99;
        *&v130[8] = v98;
        (*(*v96 + 152))(v96);
        (*(**v2 + 152))();
        (*(**v2 + 152))();
        operator new();
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v86, v87, v88, v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
      }

      v104 = *(v2 + 68);
      if ((v104 & 2) == 0)
      {
        if ((v104 & 0x100) != 0)
        {
          break;
        }

        v105 = *(v2 + 56);
        if (v105)
        {
          webrtc::PortConfiguration::StunServers(&__p, v105);
          v106 = __p.__r_.__value_.__r.__words[2];
          std::__tree<webrtc::SocketAddress>::destroy(&__p, __p.__r_.__value_.__l.__size_);
          if (v106)
          {
            v107 = (*(**v2 + 152))();
            v108 = *(v107 + 296);
            __p.__r_.__value_.__r.__words[0] = v108;
            if (v108)
            {
              atomic_fetch_add_explicit((v108 + 8), 1u, memory_order_relaxed);
            }

            v109 = *(v107 + 320);
            *&__p.__r_.__value_.__r.__words[1] = *(v107 + 304);
            v126 = v109;
            v110 = *v2;
            v127 = *(*v2 + 552);
            v128 = *(v2 + 16);
            v111 = *(v110 + 511);
            if (v111 < 0)
            {
              v112 = *(v110 + 488);
              v111 = *(v110 + 496);
            }

            else
            {
              v112 = v110 + 488;
            }

            *&v129 = v112;
            *(&v129 + 1) = v111;
            v115 = *(v110 + 535);
            if (v115 < 0)
            {
              v116 = *(v110 + 512);
              v115 = *(v110 + 520);
            }

            else
            {
              v116 = v110 + 512;
            }

            *v130 = v116;
            *&v130[8] = v115;
            (*(*v110 + 152))(v110);
            (*(**v2 + 152))();
            webrtc::PortConfiguration::StunServers(v123, *(v2 + 56));
            (*(**v2 + 152))();
            operator new();
          }
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          break;
        }

        goto LABEL_130;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
LABEL_130:
        webrtc::webrtc_logging_impl::Log("\r\t", v72, v73, v74, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
      }

      break;
  }

LABEL_131:
  if (*(v2 + 64) == 1)
  {
    ++*(v2 + 136);
    v113 = *(v2 + 184);
    if (v113)
    {
      atomic_fetch_add_explicit(v113, 1u, memory_order_relaxed);
    }

    operator new();
  }

  ++*(v2 + 176);
  v114 = *(v2 + 168);
  if (!v114)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    goto LABEL_147;
  }

  return (*(*v114 + 48))(v114);
}

void *std::set<webrtc::SocketAddress>::set[abi:sn200100](void *a1, const void ***a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v6 = a1[1];
      if (*a1 == v3)
      {
        v8 = v3;
      }

      else
      {
        v7 = v3;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = v6[1];
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        v10 = webrtc::SocketAddress::operator<(v8 + 4, v5 + 4);
        v6 = *v3;
        if (!v10)
        {
          if (!v6)
          {
            goto LABEL_23;
          }

          v11 = v3;
          while (1)
          {
            while (1)
            {
              v12 = v6;
              if (!webrtc::SocketAddress::operator<(v5 + 4, v6 + 4))
              {
                break;
              }

              v6 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_23;
              }
            }

            if (!webrtc::SocketAddress::operator<(v12 + 4, v5 + 4))
            {
              goto LABEL_20;
            }

            v11 = v12 + 1;
            v6 = v12[1];
            if (!v6)
            {
              goto LABEL_23;
            }
          }
        }
      }

      if (!v6)
      {
        goto LABEL_23;
      }

      v11 = v8 + 1;
LABEL_20:
      if (!*v11)
      {
LABEL_23:
        operator new();
      }

      v13 = v5[1];
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
          v14 = v5[2];
          v9 = *v14 == v5;
          v5 = v14;
        }

        while (!v9);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }

  return a1;
}

void std::vector<webrtc::RelayServerConfig>::__emplace_back_slow_path<webrtc::RelayServerConfig const&>(void *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) + 1;
  if (v1 <= 0x199999999999999)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v1)
    {
      v1 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
    {
      v2 = 0x199999999999999;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x199999999999999)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(void *a1)
{
  v1 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x97B425ED097B42)
  {
    if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
    }

    if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
    {
      v2 = 0x97B425ED097B42;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x97B425ED097B42)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void std::default_delete<webrtc::PortConfiguration>::operator()[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    v3 = *(a1 + 160);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        webrtc::RelayServerConfig::~RelayServerConfig(v3 - 20);
      }

      while (v3 != v2);
      v4 = *(a1 + 152);
    }

    *(a1 + 160) = v2;
    operator delete(v4);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_8:
      std::__tree<webrtc::SocketAddress>::destroy(a1 + 72, *(a1 + 80));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_14:
      operator delete(*a1);
LABEL_9:

      JUMPOUT(0x2743DA540);
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 96));
  std::__tree<webrtc::SocketAddress>::destroy(a1 + 72, *(a1 + 80));
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_14;
}

void std::vector<webrtc::Network const*>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::Network const**>,std::__wrap_iter<webrtc::Network const**>>(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v5 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 3)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 3);
    if (!(v11 >> 61))
    {
      v12 = v8 - v10;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 61))
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v46 = 8 * ((__dst - v10) >> 3);
      v47 = 8 * a5;
      v48 = v46 + 8 * a5;
      for (i = v46; i; ++i)
      {
        v50 = *v5;
        v5 += 8;
        *i = v50;
        v47 -= 8;
        if (!v47)
        {
          v51 = *(a1 + 8) - __dst;
          memcpy((v46 + 8 * a5), __dst, v51);
          v52 = v48 + v51;
          *(a1 + 8) = __dst;
          v53 = *a1;
          v54 = &__dst[-*a1];
          v55 = v46 - v54;
          memcpy((v46 - v54), *a1, v54);
          *a1 = v55;
          *(a1 + 8) = v52;
          *(a1 + 16) = 0;
          if (v53)
          {

            operator delete(v53);
          }

          return;
        }
      }

      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 3;
  if (v15 >= a5)
  {
    v14 = 8 * a5;
    v33 = &__dst[8 * a5];
    v34 = (v9 - 8 * a5);
    if (v34 >= v9)
    {
      v38 = *(a1 + 8);
    }

    else
    {
      v35 = v34 + 1;
      if (v9 > (v34 + 1))
      {
        v35 = *(a1 + 8);
      }

      v36 = v35 + v14 + ~v9;
      v37 = v36 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v38 = *(a1 + 8);
      if (v37)
      {
        goto LABEL_61;
      }

      v39 = (v36 >> 3) + 1;
      v40 = 8 * (v39 & 0x3FFFFFFFFFFFFFFCLL);
      v34 = (v34 + v40);
      v38 = (v9 + v40);
      v41 = (v9 + 16);
      v42 = (v9 + 16 - v14);
      v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v44 = *v42;
        *(v41 - 1) = *(v42 - 1);
        *v41 = v44;
        v41 += 2;
        v42 += 2;
        v43 -= 4;
      }

      while (v43);
      if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_61:
        do
        {
          v45 = *v34++;
          *v38++ = v45;
        }

        while (v34 < v9);
      }
    }

    *(a1 + 8) = v38;
    if (v9 != v33)
    {
      memmove(&__dst[8 * a5], __dst, v9 - v33);
    }

    goto LABEL_52;
  }

  v16 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v18;
    a5 = v17;
  }

  v19 = (v9 + v16);
  *(a1 + 8) = v9 + v16;
  if (v15 >= 1)
  {
    v20 = 8 * a5;
    v21 = &__dst[8 * a5];
    v22 = &v19[-8 * a5];
    if (v22 >= v9)
    {
      v25 = (v9 + v16);
    }

    else
    {
      v23 = &__dst[a4] - &v5[v20] + 8;
      if (v9 > v23)
      {
        v23 = v9;
      }

      v24 = &v5[v20 + ~a4 + v23] - __dst;
      v25 = (v9 + v16);
      if (v24 < 0x18)
      {
        goto LABEL_62;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_62;
      }

      v26 = (v24 >> 3) + 1;
      v27 = 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
      v22 += v27;
      v25 = &v19[v27];
      v28 = (&__dst[a4] - v5 + 16);
      v29 = (v28 - v20);
      v30 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v31 = *v29;
        *(v28 - 1) = *(v29 - 1);
        *v28 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_62:
        do
        {
          v32 = *v22;
          v22 += 8;
          *v25 = v32;
          v25 += 8;
        }

        while (v22 < v9);
      }
    }

    *(a1 + 8) = v25;
    if (v19 != v21)
    {
      memmove(&__dst[8 * a5], __dst, v19 - v21);
    }

    if (v9 != __dst)
    {
LABEL_52:

      memmove(__dst, v5, v14);
    }
  }
}

void *std::__function::__func<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1},std::allocator<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1}>,BOOL ()(webrtc::Network const*)>::~__func(void *a1)
{
  *a1 = &unk_28828FC70;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1},std::allocator<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1}>,BOOL ()(webrtc::Network const*)>::~__func(void *a1)
{
  *a1 = &unk_28828FC70;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1},std::allocator<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1}>,BOOL ()(webrtc::Network const*)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_28828FC70;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1},std::allocator<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1}>,BOOL ()(webrtc::Network const*)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1},std::allocator<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1}>,BOOL ()(webrtc::Network const*)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void std::__function::__func<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1},std::allocator<webrtc::anonymous namespace::NetworkFilter::NetworkFilter(std::function<BOOL ()(webrtc::Network const*)>,std::string_view)::{lambda(webrtc::Network const*)#1}>,BOOL ()(webrtc::Network const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v6 = *a2;
  if (v2)
  {
    (*(*v2 + 48))(v2, &v6);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:sn200100]();
    std::__tree<webrtc::SocketAddress>::__assign_multi<std::__tree_const_iterator<webrtc::SocketAddress,std::__tree_node<webrtc::SocketAddress,void *> *,long>>(v3, v4, v5);
  }
}

void std::__tree<webrtc::SocketAddress>::__assign_multi<std::__tree_const_iterator<webrtc::SocketAddress,std::__tree_node<webrtc::SocketAddress,void *> *,long>>(uint64_t a1, char *a2, char *a3)
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
        v27 = *(v10 + 1);
        if (!v27)
        {
          break;
        }

        do
        {
          v10 = v27;
          v27 = *v27;
        }

        while (v27);
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
      if (v9 != v14)
      {
        v15 = v14[55];
        if (v9[55] < 0)
        {
          if (v15 >= 0)
          {
            v17 = v14 + 32;
          }

          else
          {
            v17 = *(v14 + 4);
          }

          if (v15 >= 0)
          {
            v18 = v14[55];
          }

          else
          {
            v18 = *(v14 + 5);
          }

          std::string::__assign_no_alias<false>((v9 + 32), v17, v18);
        }

        else if (v14[55] < 0)
        {
          std::string::__assign_no_alias<true>(v9 + 32, *(v14 + 4), *(v14 + 5));
        }

        else
        {
          v16 = *(v14 + 2);
          *(v9 + 6) = *(v14 + 6);
          *(v9 + 2) = v16;
        }
      }

      *(v9 + 16) = *(v14 + 16);
      *(v9 + 68) = *(v14 + 68);
      *(v9 + 44) = *(v14 + 44);
      v9[96] = v14[96];
      *(v9 + 23) = *(v14 + 23);
      v19 = *v8;
      v20 = (a1 + 8);
      v21 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_34:
      *v9 = 0;
      *(v9 + 1) = 0;
      *(v9 + 2) = v20;
      *v21 = v9;
      v22 = **a1;
      if (v22)
      {
        goto LABEL_35;
      }

LABEL_36:
      std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = *(v10 + 2);
        if (v10)
        {
          v25 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v26 = *(v10 + 1);
              if (!v26)
              {
                break;
              }

              do
              {
                v10 = v26;
                v26 = *v26;
              }

              while (v26);
            }
          }

          else
          {
            for (*(v10 + 1) = 0; v25; v25 = *(v10 + 1))
            {
              do
              {
                v10 = v25;
                v25 = *v25;
              }

              while (v25);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v23 = *(v14 + 1);
      if (v23)
      {
        do
        {
          v4 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v4 = *(v14 + 2);
          v24 = *v4 == v14;
          v14 = v4;
        }

        while (!v24);
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
        v20 = v19;
        if (!webrtc::SocketAddress::operator<(v9 + 4, v19 + 4))
        {
          break;
        }

        v19 = *v20;
        v21 = v20;
        if (!*v20)
        {
          goto LABEL_34;
        }
      }

      v19 = v20[1];
    }

    while (v19);
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = v20;
    v20[1] = v9;
    v22 = **a1;
    if (!v22)
    {
      goto LABEL_36;
    }

LABEL_35:
    *a1 = v22;
    goto LABEL_36;
  }

  v12 = v9;
LABEL_13:
  std::__tree<webrtc::SocketAddress>::destroy(a1, v12);
  if (v10)
  {
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    std::__tree<webrtc::SocketAddress>::destroy(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

void std::__tree<webrtc::SocketAddress>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<webrtc::SocketAddress>::destroy(a1, *a2);
    std::__tree<webrtc::SocketAddress>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicPortAllocatorSession>(void *a1)
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

std::string::value_type *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicPortAllocatorSession::ClearGettingPorts(void)::$_0 &&>(std::string::value_type **a1)
{
  result = *a1;
  v2 = *(result + 78);
  v3 = *(result + 79);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      if (!*(v2 + 20))
      {
        *(v2 + 20) = 2;
        v4 = 1;
      }

      v2 += 24;
    }

    while (v2 != v3);
  }

  v5 = *(result + 75);
  v6 = *(result + 76);
  if (v5 != v6 && !v4)
  {
    v7 = v5 + 8;
    do
    {
      v8 = *(*(v7 - 8) + 64);
      v4 = v8 == 2;
      if (v7 == v6)
      {
        break;
      }

      v7 += 8;
    }

    while (v8 != 2);
  }

  if (v4)
  {
    return webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(result);
  }

  return result;
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
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

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicPortAllocatorSession::ConfigReady(std::unique_ptr<webrtc::PortConfiguration>)::$_0 &&>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  a1[1] = 0;
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v1[73];
  v4 = v1[74];
  if (v3 >= v4)
  {
    v5 = v1[72];
    v6 = ((v3 - v5) >> 3) + 1;
    if (v6 >> 61)
    {
      goto LABEL_17;
    }

    v7 = v4 - v5;
    v8 = v7 >> 2;
    if (v7 >> 2 <= v6)
    {
      v8 = v6;
    }

    v9 = v7 >= 0x7FFFFFFFFFFFFFF8;
    v10 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v9)
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else if (v3)
  {
    *v3 = v2;
    v1[73] = v3 + 1;
LABEL_13:
    v11 = v1[86];
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 1u, memory_order_relaxed);
    }

    operator new();
  }

  __break(1u);
LABEL_17:
  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void absl::internal_any_invocable::LocalManagerNontrivial<webrtc::BasicPortAllocatorSession::ConfigReady(std::unique_ptr<webrtc::PortConfiguration>)::$_0>(char a1, __int128 *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = *a2;
    *(a2 + 1) = 0;
    *a3 = v3;
  }

  v4 = *(a2 + 1);
  *(a2 + 1) = 0;
  if (v4)
  {
    std::default_delete<webrtc::PortConfiguration>::operator()[abi:sn200100](v4);
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicPortAllocatorSession::AllocatePorts(void)::$_0 &&>(uint64_t result)
{
  v1 = *result;
  if (*(*result + 684) == *(result + 8))
  {
    if (*(v1 + 569) == 1)
    {
      result = (*(*v1 + 64))(*result);
      if ((result & 1) == 0)
      {
        webrtc::BasicPortAllocatorSession::DoAllocate(v1);
      }
    }

    *(v1 + 568) = 1;
  }

  return result;
}

BOOL std::__function::__func<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_0>,BOOL ()(webrtc::Network const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 184);
  if (v3 == 30)
  {
    return (*(v2 + 188) & 0xC0FFLL) == 33022;
  }

  if (v3 == 2)
  {
    return *(v2 + 188) == -343;
  }

  return 0;
}

uint64_t std::__function::__func<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_1,std::allocator<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_1>,BOOL ()(webrtc::Network const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828FD00;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_1,std::allocator<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_1>,BOOL ()(webrtc::Network const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 544);
  v3 = *(v2 + 172);
  v4 = *(v2 + 352);
  v5 = v4 | 8;
  if (v3 == 1)
  {
    v4 |= 0xFFFFFFF7;
  }

  if (v3 == 2)
  {
    v4 = v5;
  }

  return (*(*a2 + 272) & v4) != 0;
}

__n128 std::__function::__func<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_2,std::allocator<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_2>,BOOL ()(webrtc::Network const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28828FD48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_2,std::allocator<webrtc::BasicPortAllocatorSession::GetNetworks(void)::$_2>,BOOL ()(webrtc::Network const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (*(**(a1 + 16) + 152))(*(a1 + 16));
  return *(a1 + 8) + 10 < webrtc::Network::GetCost(v3, *(v4 + 304));
}

void *std::__function::__func<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0>,void ()(void)>::~__func(void *result)
{
  *result = &unk_28828FD90;
  v1 = result[2];
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28828FD90;
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_28828FD90;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *std::__function::__func<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[2];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
    a1 = v3;
  }

  operator delete(a1);
}

const std::string::value_type *std::__function::__func<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_0>,void ()(void)>::operator()(const std::string::value_type *result)
{
  if (*(*(result + 2) + 4) == 1)
  {
    return webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(*(result + 1));
  }

  return result;
}

const std::string::value_type *absl::internal_any_invocable::LocalInvoker<false,void,webrtc::BasicPortAllocatorSession::DoAllocate(BOOL)::$_1 &&>(uint64_t *a1)
{
  v1 = *a1;
  *(v1 + 570) = 1;
  return webrtc::BasicPortAllocatorSession::MaybeSignalCandidatesAllocationDone(v1);
}

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicPortAllocatorSession,webrtc::Port *,webrtc::Candidate const&>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicPortAllocatorSession,webrtc::Port *,webrtc::IceCandidateErrorEvent const&>(void *a1)
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

uint64_t sigslot::_opaque_connection::emitter<webrtc::BasicPortAllocatorSession,webrtc::Port *>(void *a1)
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

uint64_t std::__function::__func<webrtc::BasicPortAllocatorSession::AddAllocatedPort(webrtc::Port *,webrtc::AllocationSequence *)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::AddAllocatedPort(webrtc::Port *,webrtc::AllocationSequence *)::$_0>,void ()(webrtc::PortInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828FDD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::BasicPortAllocatorSession::AddAllocatedPort(webrtc::Port *,webrtc::AllocationSequence *)::$_0,std::allocator<webrtc::BasicPortAllocatorSession::AddAllocatedPort(webrtc::Port *,webrtc::AllocationSequence *)::$_0>,void ()(webrtc::PortInterface *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 624);
  v4 = *(v2 + 632);
  if (v3 != v4)
  {
    v5 = *a2;
    v6 = v4 - v3 - 24;
    while (*v3 != v5)
    {
      v3 += 24;
      v6 -= 24;
      if (v3 == v4)
      {
        return;
      }
    }

    if (v3 + 24 != v4)
    {
      memmove(v3, v3 + 24, v6);
    }

    *(v2 + 632) = &v3[v6];
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      (*(*v5 + 176))(&__p, v5);
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
      if (v15 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::AllocationSequence::Init(void)::$_0 &,webrtc::AsyncPacketSocket *,webrtc::ReceivedIpPacket const&>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 112);
  v7 = *(*a1 + 120);
  if (v6 == v7)
  {
    result = *(v5 + 104);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  v8 = 0;
  do
  {
    v9 = *v6;
    if ((*(**v6 + 328))(*v6, *(a3 + 32)))
    {
      result = (*(*v9 + 320))(v9, a2, a3);
      if (result)
      {
        return result;
      }

      v8 = 1;
    }

    ++v6;
  }

  while (v6 != v7);
  result = *(v5 + 104);
  if (result)
  {
    if ((v8 & 1) == 0)
    {
LABEL_21:
      v16 = *(*result + 320);

      return v16();
    }

    v11 = *(result + 824);
    if (v11)
    {
      v12 = *(a3 + 32);
      v13 = result + 824;
      v14 = result + 824;
      do
      {
        result = webrtc::SocketAddress::operator<((v11 + 32), v12);
        if (result)
        {
          v15 = 8;
        }

        else
        {
          v15 = 0;
        }

        if (!result)
        {
          v14 = v11;
        }

        v11 = *(v11 + v15);
      }

      while (v11);
      if (v14 != v13)
      {
        result = webrtc::SocketAddress::operator<(v12, (v14 + 32));
        if ((result & 1) == 0)
        {
          result = *(v5 + 104);
          goto LABEL_21;
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<webrtc::AllocationSequence::CreateUDPPorts(void)::$_0,std::allocator<webrtc::AllocationSequence::CreateUDPPorts(void)::$_0>,void ()(webrtc::PortInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828FE20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::AllocationSequence::CreateUDPPorts(void)::$_0,std::allocator<webrtc::AllocationSequence::CreateUDPPorts(void)::$_0>,void ()(webrtc::PortInterface *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2[13] == *a2)
  {
    v2[13] = 0;
  }

  else
  {
    v4 = v2[14];
    v3 = v2[15];
    if (v4 != v3)
    {
      while (*v4 != *a2)
      {
        v4 += 8;
        if (v4 == v3)
        {
          goto LABEL_12;
        }
      }
    }

    if (v4 == v3)
    {
LABEL_12:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
      }
    }

    else
    {
      v5 = v3 - (v4 + 8);
      if (v3 != v4 + 8)
      {
        memmove(v4, v4 + 8, v3 - (v4 + 8));
      }

      v2[15] = &v4[v5];
    }
  }
}

uint64_t std::__function::__func<webrtc::AllocationSequence::CreateTurnPort(webrtc::RelayServerConfig const&,int)::$_0,std::allocator<webrtc::AllocationSequence::CreateTurnPort(webrtc::RelayServerConfig const&,int)::$_0>,void ()(webrtc::PortInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28828FE68;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::AllocationSequence::CreateTurnPort(webrtc::RelayServerConfig const&,int)::$_0,std::allocator<webrtc::AllocationSequence::CreateTurnPort(webrtc::RelayServerConfig const&,int)::$_0>,void ()(webrtc::PortInterface *)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2[13] == *a2)
  {
    v2[13] = 0;
  }

  else
  {
    v4 = v2[14];
    v3 = v2[15];
    if (v4 != v3)
    {
      while (*v4 != *a2)
      {
        v4 += 8;
        if (v4 == v3)
        {
          goto LABEL_12;
        }
      }
    }

    if (v4 == v3)
    {
LABEL_12:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/client/basic_port_allocator.cc");
      }
    }

    else
    {
      v5 = v3 - (v4 + 8);
      if (v3 != v4 + 8)
      {
        memmove(v4, v4 + 8, v3 - (v4 + 8));
      }

      v2[15] = &v4[v5];
    }
  }
}

const void *std::__tree<webrtc::SocketAddress>::__emplace_unique_key_args<webrtc::SocketAddress,webrtc::SocketAddress const&>(uint64_t a1, const void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!webrtc::SocketAddress::operator<(a2, v2 + 4))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!webrtc::SocketAddress::operator<(v5 + 4, a2))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

uint64_t absl::str_format_internal::FormatUntyped(uint64_t a1, void (*a2)(uint64_t, char *, int64_t), void *__s, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = __s;
  v60[0] = *MEMORY[0x277D85DE8];
  v55 = a1;
  v56 = a2;
  v57 = 0;
  v58 = v59;
  if (a4 == -1)
  {
    v29 = __s[2];
    v30 = __s[3];
    if (v29 == v30)
    {
LABEL_88:
      v44 = *v9 ^ 1;
      v45 = v58 - v59;
      if (v58 - v59 < 0)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }

    v31 = 0;
    v32 = __s[1];
    v33 = v32;
    while (1)
    {
      v34 = &v33[v31];
      v31 = &v32[*(v29 + 8)] - &v33[v31];
      if (v31 < 0 || !v33 && v31)
      {
        goto LABEL_101;
      }

      v33 = v34;
      if (*v29 != 1)
      {
        if (v31)
        {
          v57 += v31;
          if (v31 < (v60 - v58))
          {
            memcpy(v58, v34, v31);
            v58 += v31;
          }

          else
          {
            if (v58 - v59 < 0)
            {
              goto LABEL_101;
            }

            v56(v55, v59, v58 - v59);
            v58 = v59;
            v56(v55, v33, v31);
          }
        }

        goto LABEL_57;
      }

      v35 = *(v29 + 16) - 1;
      if (a6 <= v35)
      {
        goto LABEL_86;
      }

      v36 = v6 | 0x90013;
      if (*(v29 + 28))
      {
        break;
      }

      v43 = v36 & 0xFF090013 | 0xFFFFFFFF00000000;
      v41 = 0xFFFFFFFFLL;
LABEL_80:
      v6 = v43 & 0xFFFFFFFFFFFFFF00 | *(v29 + 30);
      if (((*(a5 + 16 * v35 + 8))(*(a5 + 16 * v35), v6, v41, &v55) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_57:
      v29 += 32;
      if (v29 == v30)
      {
        goto LABEL_88;
      }
    }

    v37 = *(v29 + 20);
    v48 = v37;
    if (v37 > -2)
    {
      goto LABEL_69;
    }

    v38 = ~v37;
    if (a6 < v38)
    {
      goto LABEL_86;
    }

    v39 = v38 - 1;
    if (a6 <= v39)
    {
      goto LABEL_101;
    }

    if (!(*(a5 + 16 * v39 + 8))(*(a5 + 16 * v39), 589843, 0, &v48))
    {
LABEL_86:
      v44 = 0;
      v45 = v58 - v59;
      if (v58 - v59 < 0)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }

    v37 = v48;
    if ((v48 & 0x80000000) != 0)
    {
      if (v48 <= 0x80000001)
      {
        LODWORD(v37) = -2147483647;
      }

      v37 = -v37;
      v48 = v37;
      v40 = 1;
      v41 = *(v29 + 24);
      v54 = v41;
      if (v41 <= -2)
      {
LABEL_70:
        if (a6 < (v41 ^ 0xFFFFFFFFuLL))
        {
          goto LABEL_100;
        }

        v42 = (v41 ^ 0xFFFFFFFFLL) - 1;
        if (a6 <= v42)
        {
          goto LABEL_101;
        }

        if (!(*(a5 + 16 * v42 + 8))(*(a5 + 16 * v42), 589843, 0, &v54))
        {
LABEL_100:
          v44 = 0;
          v45 = v58 - v59;
          if (v58 - v59 < 0)
          {
            goto LABEL_101;
          }

          goto LABEL_99;
        }

        v37 = v48;
        v41 = v54;
      }
    }

    else
    {
LABEL_69:
      v40 = 0;
      v41 = *(v29 + 24);
      v54 = v41;
      if (v41 <= -2)
      {
        goto LABEL_70;
      }
    }

    v43 = v36 & 0xFF000013 | (v37 << 32) | ((*(v29 + 28) | v40) << 8) | (*(v29 + 29) << 16);
    goto LABEL_80;
  }

  if (a4 < 0 || !__s && a4)
  {
    goto LABEL_101;
  }

  v52 = 0;
  if (!a4)
  {
    goto LABEL_98;
  }

  v10 = (__s + a4);
  while (1)
  {
    v11 = v10 - v9;
    v12 = memchr(v9, 37, v10 - v9);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v14 = v12 - v9;
    if (v12 - v9 < 0 || !v9)
    {
      goto LABEL_101;
    }

    if (v12 != v9)
    {
      v57 += v14;
      if (v14 >= v60 - v58)
      {
        if (v58 - v59 < 0)
        {
          goto LABEL_101;
        }

        v56(v55, v59, v58 - v59);
        v58 = v59;
        v56(v55, v9, v14);
      }

      else
      {
        memcpy(v58, v9, v14);
        v58 += v14;
      }
    }

    v15 = v13 + 1;
    if (v13 + 1 >= v10)
    {
      goto LABEL_86;
    }

    v16 = *v15;
    v17 = absl::str_format_internal::ConvTagHolder::value[v16];
    if (v17 < 0)
    {
      if (v16 == 37)
      {
        ++v57;
        if ((v60 - v58) <= 1)
        {
          if (v58 - v59 < 0)
          {
            goto LABEL_101;
          }

          v56(v55, v59, v58 - v59);
          v58 = v59;
          v56(v55, "%", 1);
          v9 = v13 + 2;
          if (v13 + 2 == v10)
          {
            goto LABEL_98;
          }
        }

        else
        {
          *v58++ = 37;
          v9 = v13 + 2;
          if (v13 + 2 == v10)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        v49 = -1;
        v50 = 2304;
        v51 = 19;
        v19 = absl::str_format_internal::ConsumeUnboundConversionNoInline((v13 + 1), v10, &v48, &v52);
        if (!v19)
        {
          goto LABEL_86;
        }

        v9 = v19;
        if (v19 - v15 < 0)
        {
          goto LABEL_101;
        }

        v20 = v48 - 1;
        if (a6 <= v20)
        {
          goto LABEL_86;
        }

        if (v50)
        {
          v21 = v49;
          v54 = v49;
          if (v49 > -2)
          {
            v24 = a6;
            v25 = 0;
            v26 = HIDWORD(v49);
            v53 = HIDWORD(v49);
            if (SHIDWORD(v49) > -2)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v22 = ~v49;
            if (a6 < v22)
            {
              goto LABEL_86;
            }

            v23 = v22 - 1;
            if (a6 <= v23)
            {
              goto LABEL_101;
            }

            if (!(*(a5 + 16 * v23 + 8))(*(a5 + 16 * v23), 589843, 0, &v54))
            {
              goto LABEL_86;
            }

            v24 = a6;
            v21 = v54;
            if ((v54 & 0x80000000) != 0)
            {
              if (v54 <= 0x80000001)
              {
                LODWORD(v21) = -2147483647;
              }

              v21 = -v21;
              v25 = 1;
              v26 = HIDWORD(v49);
              v53 = HIDWORD(v49);
              v54 = v21;
              if (SHIDWORD(v49) > -2)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v25 = 0;
              v26 = HIDWORD(v49);
              v53 = HIDWORD(v49);
              if (SHIDWORD(v49) > -2)
              {
LABEL_50:
                v27 = v7 & 0xFF000000 | 0x13 | (v21 << 32) | ((v50 | v25) << 8) | (HIBYTE(v50) << 16);
                goto LABEL_51;
              }
            }
          }

          if (v24 < (v26 ^ 0xFFFFFFFFuLL))
          {
            goto LABEL_86;
          }

          v28 = (v26 ^ 0xFFFFFFFFLL) - 1;
          if (v24 <= v28)
          {
            goto LABEL_101;
          }

          if (!(*(a5 + 16 * v28 + 8))(*(a5 + 16 * v28), 589843, 0, &v53))
          {
            goto LABEL_86;
          }

          v26 = v53;
          v21 = v54;
          goto LABEL_50;
        }

        v24 = a6;
        v27 = v7 & 0xFF000000 | 0xFFFFFFFF00090013;
        v26 = 0xFFFFFFFFLL;
LABEL_51:
        v7 = v27 & 0xFFFFFFFFFFFFFF00 | v51;
        if (((*(a5 + 16 * v20 + 8))(*(a5 + 16 * v20), v7, v26, &v55) & 1) == 0)
        {
          goto LABEL_86;
        }

        a6 = v24;
        if (v9 == v10)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      v18 = v52;
      if ((v52 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      ++v52;
      if (a6 <= v18)
      {
        goto LABEL_86;
      }

      v6 = v6 & 0xFF000000 | v17 | 0xFFFFFFFF00090000;
      if (((*(a5 + 16 * v18 + 8))(*(a5 + 16 * v18), v6, 0xFFFFFFFFLL, &v55) & 1) == 0)
      {
        goto LABEL_86;
      }

      v9 = v13 + 2;
      if (v13 + 2 == v10)
      {
        goto LABEL_98;
      }
    }
  }

  if ((v11 & 0x8000000000000000) != 0 || !v9)
  {
LABEL_101:
    __break(1u);
  }

  if (v10 == v9)
  {
LABEL_98:
    v44 = 1;
    v45 = v58 - v59;
    if (v58 - v59 < 0)
    {
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  v57 += v11;
  if (v11 >= v60 - v58)
  {
    if (v58 - v59 < 0)
    {
      goto LABEL_101;
    }

    v56(v55, v59, v58 - v59);
    v58 = v59;
    v56(v55, v9, v10 - v9);
    goto LABEL_98;
  }

  memcpy(v58, v9, v10 - v9);
  v58 += v11;
  v44 = 1;
  v45 = v58 - v59;
  if (v58 - v59 < 0)
  {
    goto LABEL_101;
  }

LABEL_99:
  v56(v55, v59, v45);
  return v44 & 1;
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v3;
    v5 = this;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v5 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v6 = size - __pos;
      if (size - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = size - __pos;
      }

      if (size - __pos <= __n)
      {
LABEL_7:
        v8 = size - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
LABEL_15:
          v5->__r_.__value_.__s.__data_[v8] = 0;
          return;
        }

LABEL_14:
        this->__r_.__value_.__l.__size_ = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - __pos;
      if (v3 - __pos >= __n)
      {
        v7 = __n;
      }

      else
      {
        v7 = v3 - __pos;
      }

      if (v3 - __pos <= __n)
      {
        goto LABEL_7;
      }
    }

    v9 = this;
    memmove(v5 + __pos, v5 + __pos + v7, v6 - v7);
    this = v9;
    v8 = size - v7;
    if ((*(&v9->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }
}

uint64_t webrtc::BitBufferWriter::WriteBits(webrtc::BitBufferWriter *this, uint64_t a2, unint64_t a3)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (8 * (*(this + 1) - v3) - v4 < a3)
  {
    return 0;
  }

  v6 = a2 << -a3;
  v7 = (*this + v3);
  v8 = 8 - v4;
  if (8 - v4 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 8 - v4;
  }

  *v7 = *v7 & ~((255 << (8 - v9)) >> v4) | (HIBYTE(v6) >> v4);
  v10 = a3 - v8;
  if (a3 <= v8)
  {
    v13 = *(this + 2);
    v14 = *(this + 3);
    if (8 * (*(this + 1) - v13) - v14 < a3)
    {
      return 0;
    }
  }

  else
  {
    v11 = v6 << v8;
    v12 = v7 + 1;
    if (v10 >= 8)
    {
      do
      {
        *v12++ = HIBYTE(v11);
        v11 <<= 8;
        v10 -= 8;
      }

      while (v10 > 7);
    }

    if (v10)
    {
      *v12 = ((-1 << (8 - v10)) & 0x7E ^ 0x7F) & *v12 | HIBYTE(v11);
    }

    v13 = *(this + 2);
    v14 = *(this + 3);
    if (8 * (*(this + 1) - v13) - v14 < a3)
    {
      return 0;
    }
  }

  v15 = v14 + a3;
  *(this + 2) = v13 + (v15 >> 3);
  *(this + 3) = v15 & 7;
  return 1;
}

uint64_t webrtc::BitrateAdjuster::Update(webrtc::BitrateAdjuster *this, uint64_t a2)
{
  pthread_mutex_lock((this + 8));
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

  v5 = v4 / 1000000;
  webrtc::RateStatistics::Update((this + 96), a2, (v4 / 1000000));
  webrtc::BitrateAdjuster::UpdateBitrate(this, v5);

  return pthread_mutex_unlock((this + 8));
}

void webrtc::BitrateAdjuster::UpdateBitrate(webrtc::BitrateAdjuster *this, unsigned int a2)
{
  v2 = a2 - *(this + 48);
  v3 = *(this + 49) + 1;
  *(this + 49) = v3;
  if (v2 >= 0x3E8 && v3 >= 0x1E)
  {
    v7 = *(this + 20);
    v8 = webrtc::RateStatistics::Rate((this + 96), a2);
    v9 = v7;
    if (v10)
    {
      v9 = v8;
    }

    v11 = v7 - v9;
    if (v7 < v9 || v11 > (v7 * 0.1))
    {
      v13 = (v11 * 0.5) + v7;
      v14 = *(this + 20);
      if (v13 < (*(this + 18) * v14))
      {
        v13 = (*(this + 18) * *(this + 20));
      }

      if (v13 <= (*(this + 19) * v14))
      {
        v15 = v13;
      }

      else
      {
        v15 = (*(this + 19) * v14);
      }

      if (v15 != *(this + 21))
      {
        if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
        {
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/common_video/bitrate_adjuster.cc");
        }

        *(this + 21) = v15;
      }
    }

    *(this + 48) = a2;
    *(this + 49) = 0;
    *(this + 22) = *(this + 20);
  }
}

void webrtc::BitrateAdjuster::~BitrateAdjuster(void **this)
{
  *this = &unk_28828FEB0;
  v1 = (this + 1);
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 12);
  pthread_mutex_destroy(v1);
}

{
  *this = &unk_28828FEB0;
  v1 = (this + 1);
  std::deque<webrtc::RateUtilizationTracker::RateUsageUpdate>::~deque[abi:sn200100](this + 12);
  pthread_mutex_destroy(v1);

  JUMPOUT(0x2743DA540);
}

void webrtc::BitrateAllocator::~BitrateAllocator(webrtc::BitrateAllocator *this)
{
  *this = &unk_28828FED0;
  explicit = atomic_load_explicit(&webrtc::BitrateAllocator::~BitrateAllocator()::atomic_histogram_pointer, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v3 = 0, atomic_compare_exchange_strong(&webrtc::BitrateAllocator::~BitrateAllocator()::atomic_histogram_pointer, &v3, explicit), explicit))
  {
    webrtc::metrics::HistogramAdd(explicit, *(this + 18));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_28828FED0;
  explicit = atomic_load_explicit(&webrtc::BitrateAllocator::~BitrateAllocator()::atomic_histogram_pointer, memory_order_acquire);
  if (explicit || (explicit = webrtc::metrics::HistogramFactoryGetCountsLinear(), v3 = 0, atomic_compare_exchange_strong(&webrtc::BitrateAllocator::~BitrateAllocator()::atomic_histogram_pointer, &v3, explicit), explicit))
  {
    webrtc::metrics::HistogramAdd(explicit, *(this + 18));
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BitrateAllocator::OnNetworkEstimateChanged(uint64_t a1, uint64_t a2)
{
  v4 = vmovn_s64(*(a2 + 48));
  *(a1 + 40) = v4;
  v5 = v4.i32[0];
  v6 = v4.i32[0];
  if (!v4.i32[0])
  {
    v6 = *(a1 + 48);
  }

  *(a1 + 48) = v6;
  v7 = (*(a2 + 40) * 255.0);
  if (v7 >= 255)
  {
    v7 = 255;
  }

  *(a1 + 52) = v7 & ~(v7 >> 31);
  v8 = *(a2 + 24);
  v9 = v8 / 0x3E8uLL;
  if (v8 % 0x3E8uLL > 0x1F3)
  {
    ++v9;
  }

  if (-v8 % 0x3E8uLL <= 0x1F4)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 - -v8 / 0x3E8uLL;
  if (v8 < 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  *(a1 + 56) = v12;
  v13 = *(a2 + 32);
  v14 = v13 / 0x3E8uLL;
  if (v13 % 0x3E8uLL > 0x1F3)
  {
    ++v14;
  }

  if (-v13 % 0x3E8uLL <= 0x1F4)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 - -v13 / 0x3E8uLL;
  if (v13 < 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  *(a1 + 64) = v17;
  v18 = *a2;
  v19 = *a2 / 0x3E8uLL;
  if (*a2 % 0x3E8uLL > 0x1F3)
  {
    ++v19;
  }

  if (-v18 % 0x3E8uLL <= 0x1F4)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  if (v18 < 0)
  {
    v21 = v20 - -v18 / 0x3E8uLL;
  }

  else
  {
    v21 = v19;
  }

  if (v21 > *(a1 + 80) + 5000)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/bitrate_allocator.cc");
    }

    *(a1 + 80) = v21;
    v5 = *(a1 + 40);
  }

  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  if (v29 != v30)
  {
    while (1)
    {
      v33 = v75;
      if (!v75)
      {
LABEL_44:
        operator new();
      }

      v34 = *v29;
      while (1)
      {
        while (1)
        {
          v35 = v33;
          v36 = v33[4];
          if (v34 >= v36)
          {
            break;
          }

          v33 = *v35;
          if (!*v35)
          {
            goto LABEL_44;
          }
        }

        if (v36 >= v34)
        {
          break;
        }

        v33 = v35[1];
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      v37 = *(v35 + 10);
      v38 = v73;
      if (!v73)
      {
LABEL_51:
        operator new();
      }

      v39 = *v29;
      while (1)
      {
        while (1)
        {
          v40 = v38;
          v41 = v38[4];
          if (v39 >= v41)
          {
            break;
          }

          v38 = *v40;
          if (!*v40)
          {
            goto LABEL_51;
          }
        }

        if (v41 >= v39)
        {
          break;
        }

        v38 = v40[1];
        if (!v38)
        {
          goto LABEL_51;
        }
      }

      v42 = vcvtd_n_f64_u32(*(a1 + 52), 8uLL);
      v43 = *(v40 + 10);
      v44 = 1000 * *(a1 + 56);
      v45 = 1000 * *(a1 + 64);
      v46 = *(a2 + 64);
      v66 = v37;
      v67 = v43;
      v68 = v42;
      v69 = v44;
      v70 = v45;
      v71 = v46;
      v47 = (**v39)();
      v48 = *(v29 + 56);
      if (!v37 && v48 >= 1)
      {
        if (*(a1 + 40))
        {
          ++*(a1 + 72);
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          v66 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/bitrate_allocator.cc";
          v67 = v64 & 0xFFFFFFFF00000000 | 0x10A1;
          v68 = COERCE_DOUBLE(&v65);
          v64 = v67;
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/bitrate_allocator.cc");
        }

        goto LABEL_37;
      }

      if (v37 && !v48)
      {
        break;
      }

      if (v37)
      {
        goto LABEL_65;
      }

LABEL_37:
      *(v29 + 56) = v37;
      *(v29 + 64) = (*(**v29 + 8))();
      *(v29 + 72) = v32;
      v29 += 88;
      if (v29 == v30)
      {
        goto LABEL_67;
      }
    }

    if (*(a1 + 40))
    {
      ++*(a1 + 72);
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v66 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/bitrate_allocator.cc";
      v67 = v63 & 0xFFFFFFFF00000000 | 0x10E9;
      v68 = COERCE_DOUBLE(&v65);
      v63 = v67;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)12,void const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v56, v57, v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/bitrate_allocator.cc");
    }

LABEL_65:
    if (v47)
    {
      v31 = (v37 - v47) / v37;
    }

    else
    {
      v31 = 1.0;
    }

    *(v29 + 80) = v31;
    goto LABEL_37;
  }

LABEL_67:
  webrtc::BitrateAllocator::UpdateAllocationLimits(a1);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v73);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v75);
}

void webrtc::anonymous namespace::AllocateBitrates(void *a1, int32x2_t **a2, unsigned int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = a1 + 1;
    return;
  }

  if (!a3)
  {
    a1[1] = 0;
    a1[2] = 0;
    *a1 = a1 + 1;
    operator new();
  }

  v5 = v4 - v3 - 88;
  if (v5 <= 0x57)
  {
    v6 = 0;
    v7 = *a2;
    do
    {
LABEL_10:
      v6 = vadd_s32(v7[1], v6);
      v7 += 11;
    }

    while (v7 != v4);
    goto LABEL_11;
  }

  v8 = v5 / 0x58 + 1;
  v7 = &v3[11 * (v8 & 0x7FFFFFFFFFFFFFELL)];
  v9 = 0;
  v10 = v3 + 12;
  v11 = v8 & 0x7FFFFFFFFFFFFFELL;
  v12 = 0;
  do
  {
    v13 = v10[-11];
    v14 = *v10;
    v10 += 22;
    v12 = vadd_s32(v13, v12);
    v9 = vadd_s32(v14, v9);
    v11 -= 2;
  }

  while (v11);
  v6 = vadd_s32(v9, v12);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a3 >= v6.i32[0])
  {
    v34 = *a2;
    while (1)
    {
      v35 = v34[1].u32[0];
      if (*&v34[7] == -1)
      {
        v36 = v34[1].i32[0];
      }

      else
      {
        v36 = v34[7];
      }

      v37 = v34[1].u32[0];
      if (!v36)
      {
        v38 = (v35 * 0.1);
        if (v38 <= 0x4E20)
        {
          v38 = 20000;
        }

        v37 = v38 + v35;
      }

      v39 = v35 + (a3 - v6.i32[0]) / (-1171354717 * ((v4 - v3) >> 3));
      v40 = *&v34[10];
      if (v40 < 1.0 && v40 > 0.0)
      {
        v37 = (v37 + v37 * (1.0 - v40));
      }

      if (v39 < v37)
      {
        break;
      }

      v34 += 11;
      if (v34 == v4)
      {
        if (v6.i32[1] < a3)
        {
          a1[1] = 0;
          a1[2] = 0;
          *a1 = a1 + 1;
          operator new();
        }

        v55[0] = 0;
        v55[1] = 0;
        v54 = v55;
        v52 = 0;
        v53 = 0;
        operator new();
      }
    }
  }

  a1[1] = 0;
  v15 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v16 = a3;
  do
  {
    if (v3[4].i8[0])
    {
      v17 = v3[1].i32[0];
    }

    else
    {
      v17 = 0;
    }

    v18 = *v15;
    if (!*v15)
    {
LABEL_23:
      operator new();
    }

    v19 = *v3;
    while (1)
    {
      while (1)
      {
        v20 = v18;
        v21 = v18[4];
        if (*&v19 >= v21)
        {
          break;
        }

        v18 = *v20;
        if (!*v20)
        {
          goto LABEL_23;
        }
      }

      if (v21 >= *&v19)
      {
        break;
      }

      v18 = v20[1];
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    *(v20 + 10) = v17;
    v16 -= v17;
    v3 += 11;
  }

  while (v3 != v4);
  if (v16 <= 0)
  {
    return;
  }

  v22 = *a2;
  v23 = a2[1];
  if (*a2 == v23)
  {
    goto LABEL_73;
  }

  do
  {
    if (v22[4].i8[0])
    {
      goto LABEL_28;
    }

    v24 = v22[7];
    if (*&v24 == -1)
    {
      if (!v22[1].i32[0])
      {
        goto LABEL_28;
      }
    }

    else if (!v24.i32[0])
    {
      goto LABEL_28;
    }

    v25 = v22[1].u32[0];
    if (*&v24 == -1)
    {
      v24.i32[0] = v22[1].i32[0];
    }

    if (!v24.i32[0])
    {
      v26 = (v25 * 0.1);
      if (v26 <= 0x4E20)
      {
        v26 = 20000;
      }

      v25 += v26;
    }

    v27 = *&v22[10];
    if (v27 >= 1.0 || v27 <= 0.0)
    {
      v29 = v25;
    }

    else
    {
      v29 = (v25 + v25 * (1.0 - v27));
    }

    if (v16 >= v29)
    {
      v30 = *v15;
      if (!*v15)
      {
LABEL_53:
        operator new();
      }

      v31 = *v22;
      while (1)
      {
        while (1)
        {
          v32 = v30;
          v33 = v30[4];
          if (v31 >= v33)
          {
            break;
          }

          v30 = *v32;
          if (!*v32)
          {
            goto LABEL_53;
          }
        }

        if (v33 >= v31)
        {
          break;
        }

        v30 = v32[1];
        if (!v30)
        {
          goto LABEL_53;
        }
      }

      *(v32 + 10) = v29;
      v16 -= v29;
    }

LABEL_28:
    v22 += 11;
  }

  while (v22 != v23);
  if (v16 < 1)
  {
    return;
  }

  v22 = *a2;
  v23 = a2[1];
LABEL_73:
  if (v22 == v23)
  {
    goto LABEL_102;
  }

  while (2)
  {
    v42 = v22[7];
    if (*&v42 == -1)
    {
      if (!v22[1].i32[0])
      {
LABEL_79:
        v43 = v22[1].u32[0];
        if (*&v42 == -1)
        {
          v42.i32[0] = v22[1].i32[0];
        }

        if (!v42.i32[0])
        {
          v44 = (v43 * 0.1);
          if (v44 <= 0x4E20)
          {
            v44 = 20000;
          }

          v43 += v44;
        }

        v45 = *&v22[10];
        if (v45 >= 1.0 || v45 <= 0.0)
        {
          v47 = v43;
        }

        else
        {
          v47 = (v43 + v43 * (1.0 - v45));
        }

        if (v16 >= v47)
        {
          v48 = *v15;
          if (!*v15)
          {
LABEL_98:
            operator new();
          }

          v49 = *v22;
          while (1)
          {
            while (1)
            {
              v50 = v48;
              v51 = v48[4];
              if (v49 >= v51)
              {
                break;
              }

              v48 = *v50;
              if (!*v50)
              {
                goto LABEL_98;
              }
            }

            if (v51 >= v49)
            {
              break;
            }

            v48 = v50[1];
            if (!v48)
            {
              goto LABEL_98;
            }
          }

          *(v50 + 10) = v47;
          v16 -= v47;
        }
      }
    }

    else if (!v42.i32[0])
    {
      goto LABEL_79;
    }

    v22 += 11;
    if (v22 != v23)
    {
      continue;
    }

    break;
  }

  if (v16 >= 1)
  {
    v22 = *a2;
    v23 = a2[1];
LABEL_102:
  }
}

void *webrtc::BitrateAllocator::UpdateAllocationLimits(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = this[3];
  if (v2 == v3)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v9 = *(v2 + 16);
      if (*(v2 + 32) == 1)
      {
        if (v4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v4 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v4 != 0x8000000000000000)
        {
          v4 += *(v2 + 8);
        }
      }

      else if (!*(v2 + 56))
      {
        v10 = *(v2 + 8);
        v11 = (v10 * 0.1);
        if (v11 <= 0x4E20)
        {
          v11 = 20000;
        }

        v12 = v11 + v10;
        v13 = *(v2 + 80);
        if (v13 < 1.0 && v13 > 0.0)
        {
          v12 = (v12 + v12 * (1.0 - v13));
        }

        if (v12 > v9)
        {
          v9 = v12;
        }
      }

      v7 = v6 + v9;
      if (v6 == 0x8000000000000000)
      {
        v7 = 0x8000000000000000;
      }

      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v7;
      }

      v8 = v5 + *(v2 + 12);
      if (v5 == 0x8000000000000000)
      {
        v8 = 0x8000000000000000;
      }

      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = v8;
      }

      v2 += 88;
    }

    while (v2 != v3);
  }

  if (v4 != this[11] || v5 != this[12] || v6 != this[13])
  {
    this[11] = v4;
    this[12] = v5;
    this[13] = v6;
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
LABEL_36:
      v22 = *(v1 + 8);
      v30 = v4;
      v31 = v5;
      v32 = v6;
      return (**v22)();
    }

    v30 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/bitrate_allocator.cc";
    v31 = 5657;
    v32 = &v29;
    webrtc::ToString(v4, &v27);
    webrtc::ToString(v6, &v25);
    webrtc::ToString(v5, &__p);
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v15, v16, v17, v18, v19, v20, v21, v30);
    if (v24 < 0)
    {
      operator delete(__p);
      if ((v26 & 0x80000000) == 0)
      {
LABEL_35:
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_40:
        operator delete(v27);
        goto LABEL_36;
      }
    }

    else if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(v25);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  return this;
}

void *webrtc::BitrateAllocator::AddObserver(uint64_t a1, void (***a2)(void, __int128 *), __int128 *a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = (a1 + 16);
  v7 = v5;
  if (v5 != v4)
  {
    while (*v7 != a2)
    {
      v7 += 88;
      if (v7 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 == v4)
  {
LABEL_8:
    v14 = a3[1];
    v41 = *a3;
    v42 = v14;
    v43 = a3[2];
    v15 = *(a1 + 32);
    if (v4 >= v15)
    {
      v16 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v5) >> 3) + 1;
      if (v16 > 0x2E8BA2E8BA2E8BALL)
      {
        goto LABEL_45;
      }

      v17 = 0x2E8BA2E8BA2E8BA3 * ((v15 - v5) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x1745D1745D1745DLL)
      {
        v16 = 0x2E8BA2E8BA2E8BALL;
      }

      if (v16)
      {
        if (v16 <= 0x2E8BA2E8BA2E8BALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }
    }

    else if (v4)
    {
      *v4 = a2;
      *(v4 + 8) = v41;
      *(v4 + 24) = v42;
      *(v4 + 40) = v43;
      *(v4 + 56) = -1;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0x3FF0000000000000;
      *(a1 + 24) = v4 + 88;
      v10 = *(a1 + 40);
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_45:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v8 = *a3;
  v9 = a3[1];
  *(v7 + 40) = a3[2];
  *(v7 + 24) = v9;
  *(v7 + 8) = v8;
  v10 = *(a1 + 40);
  if (!v10)
  {
LABEL_7:
    v11 = vcvtd_n_f64_u32(*(a1 + 52), 8uLL);
    v12 = 1000 * *(a1 + 56);
    v13 = 1000 * *(a1 + 64);
    v41 = 0uLL;
    *&v42 = v11;
    *(&v42 + 1) = v12;
    v43 = v13;
    (**a2)(a2, &v41);
    return webrtc::BitrateAllocator::UpdateAllocationLimits(a1);
  }

LABEL_20:
  v18 = *(a1 + 16);
  for (i = *(a1 + 24); v18 != i; v18 += 11)
  {
    v21 = v40;
    if (!v40)
    {
LABEL_31:
      operator new();
    }

    v22 = *v18;
    while (1)
    {
      while (1)
      {
        v23 = v21;
        v24 = v21[4];
        if (v22 >= v24)
        {
          break;
        }

        v21 = *v23;
        if (!*v23)
        {
          goto LABEL_31;
        }
      }

      if (v24 >= v22)
      {
        break;
      }

      v21 = v23[1];
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    v25 = *(v23 + 10);
    v26 = v38;
    if (!v38)
    {
LABEL_38:
      operator new();
    }

    v27 = *v18;
    while (1)
    {
      while (1)
      {
        v28 = v26;
        v29 = v26[4];
        if (v27 >= v29)
        {
          break;
        }

        v26 = *v28;
        if (!*v28)
        {
          goto LABEL_38;
        }
      }

      if (v29 >= v27)
      {
        break;
      }

      v26 = v28[1];
      if (!v26)
      {
        goto LABEL_38;
      }
    }

    v30 = *(v28 + 10);
    v31 = vcvtd_n_f64_u32(*(a1 + 52), 8uLL);
    v32 = 1000 * *(a1 + 56);
    v33 = 1000 * *(a1 + 64);
    *&v41 = v25;
    *(&v41 + 1) = v30;
    *&v42 = v31;
    *(&v42 + 1) = v32;
    v43 = v33;
    v34 = (**v27)(v27);
    v18[7] = v25;
    v18[8] = (*(**v18 + 8))(*v18);
    *(v18 + 72) = v35;
    if (v25)
    {
      if (v34)
      {
        v20 = (v25 - v34) / v25;
      }

      else
      {
        v20 = 1.0;
      }

      *(v18 + 10) = v20;
    }
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v38);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v40);
  return webrtc::BitrateAllocator::UpdateAllocationLimits(a1);
}

uint64_t webrtc::BitrateAllocator::RecomputeAllocationIfNeeded(webrtc::BitrateAllocator *this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v4 = *(this + 2);
    v5 = *(this + 3);
    v3 = (this + 16);
    if (v4 == v5)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        if (*(v4 + 52) == 1)
        {
          v9 = *(v4 + 48);
          if ((v9 & 0xFFFFFFFD) == 0)
          {
            v10 = (*(**v4 + 8))();
            v12 = (v11 & 1) != 0 ? v10 : 0;
            if (*(v4 + 72) == 1)
            {
              v13 = *(v4 + 64);
              if (v13)
              {
                v14 = *(v4 + 56);
                if (v14 == -1)
                {
                  LODWORD(v14) = *(v4 + 8);
                }

                v15 = 0x7FFFFFFFFFFFFFFFLL;
                if (v13 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v16 = llround(v14 * 0.2);
                  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v17 = v16 == 0x8000000000000000 || v13 == 0x8000000000000000;
                    v18 = v16 + v13;
                    if (v17)
                    {
                      v15 = 0x8000000000000000;
                    }

                    else
                    {
                      v15 = v18;
                    }
                  }
                }

                v6 |= v12 > v15;
                v7 = 1;
              }
            }
          }

          v8 |= (v9 - 1) < 2;
        }

        v4 += 88;
      }

      while (v4 != v5);
      LOBYTE(v1) = v7 & v8;
      if (v7 & v8 & v6)
      {
        v19 = *(this + 10);
        if (v19)
        {
          v25 = *(this + 2);
          for (i = *(this + 3); v25 != i; v25 += 11)
          {
            v28 = v54;
            if (!v54)
            {
LABEL_37:
              operator new();
            }

            v29 = *v25;
            while (1)
            {
              while (1)
              {
                v30 = v28;
                v31 = v28[4];
                if (v29 >= v31)
                {
                  break;
                }

                v28 = *v30;
                if (!*v30)
                {
                  goto LABEL_37;
                }
              }

              if (v31 >= v29)
              {
                break;
              }

              v28 = v30[1];
              if (!v28)
              {
                goto LABEL_37;
              }
            }

            v32 = *(v30 + 10);
            v33 = v52;
            if (!v52)
            {
LABEL_44:
              operator new();
            }

            v34 = *v25;
            while (1)
            {
              while (1)
              {
                v35 = v33;
                v36 = v33[4];
                if (v34 >= v36)
                {
                  break;
                }

                v33 = *v35;
                if (!*v35)
                {
                  goto LABEL_44;
                }
              }

              if (v36 >= v34)
              {
                break;
              }

              v33 = v35[1];
              if (!v33)
              {
                goto LABEL_44;
              }
            }

            v37 = *(v35 + 10);
            v38 = vcvtd_n_f64_u32(*(this + 52), 8uLL);
            v39 = 1000 * *(this + 7);
            v40 = 1000 * *(this + 8);
            v50[0] = v32;
            v50[1] = v37;
            *&v50[2] = v38;
            v50[3] = v39;
            v50[4] = v40;
            v50[5] = 0;
            v41 = (**v34)(v34, v50, v20, v21, v22, v23, v24);
            v25[7] = v32;
            v25[8] = (*(**v25 + 8))(*v25, v42, v43, v44, v45, v46, v47);
            *(v25 + 72) = v48;
            if (v32 >= 1)
            {
              if (v41)
              {
                v27 = (v32 - v41) / v32;
              }

              else
              {
                v27 = 1.0;
              }

              *(v25 + 10) = v27;
            }
          }

          webrtc::BitrateAllocator::UpdateAllocationLimits(this);
          std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v52);
          std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v54);
        }

        LOBYTE(v1) = 1;
      }
    }
  }

  return v1 & 1;
}

void *webrtc::BitrateAllocator::RemoveObserver(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  if (v3 == v2)
  {
LABEL_5:
  }

  else
  {
    v4 = v2 - v3 - 88;
    while (*v3 != a2)
    {
      v3 += 88;
      v4 -= 88;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    if (v3 + 88 != v2)
    {
      v6 = a1;
      memmove(v3, v3 + 88, v4);
      a1 = v6;
    }

    a1[3] = &v3[v4];
  }

  return webrtc::BitrateAllocator::UpdateAllocationLimits(a1);
}

uint64_t webrtc::BitrateAllocator::GetStartBitrate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  v4 = v3;
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    while (*v4 != a2)
    {
      v4 += 88;
      if (v4 == v2)
      {
        return *(a1 + 48) / (-1171354717 * ((v2 - v3) >> 3) + 1);
      }
    }
  }

  if (v4 == v2)
  {
    return *(a1 + 48) / (-1171354717 * ((v2 - v3) >> 3) + 1);
  }

  v5 = *(v4 + 7);
  if (v5 == -1)
  {
    return *(a1 + 48) / (-1171354717 * ((v2 - v3) >> 3));
  }

  else
  {
    return v5;
  }
}

uint64_t webrtc::GetElasticRateAllocationFieldTrialParameter(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  __p = 0;
  v10 = 0;
  v11 = 0;
  v13 = 11;
  if (v12 <= "upper_limit" && &v12[1] + 3 > "upper_limit")
  {
    __break(1u);
  }

  strcpy(v12, "upper_limit");
  v14 = 0;
  v8 = &unk_28828FF08;
  v15 = 0;
  (*(*a1 + 16))(v6);
  v16[0] = &v8;
  if ((v7 & 0x80u) == 0)
  {
    v1 = v6;
  }

  else
  {
    v1 = v6[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v2 = v7;
  }

  else
  {
    v2 = v6[1];
  }

  webrtc::ParseFieldTrial(v16, 1, v1, v2);
  v3 = v15;
  if ((v7 & 0x80000000) == 0)
  {
    v8 = &unk_288293910;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    operator delete(v12[0]);
    v4 = __p;
    if (!__p)
    {
      return v3;
    }

    goto LABEL_12;
  }

  operator delete(v6[0]);
  v8 = &unk_288293910;
  if (v13 < 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v4 = __p;
  if (__p)
  {
LABEL_12:
    v10 = v4;
    operator delete(v4);
  }

  return v3;
}

uint64_t webrtc::FieldTrialParameter<webrtc::DataRate>::~FieldTrialParameter(uint64_t a1)
{
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void webrtc::anonymous namespace::DistributeBitrateEvenly(unint64_t *a1, unint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v11 = 0;
  if (a1 != a2)
  {
    v6 = a1;
    if (a4)
    {
      operator new();
    }

    do
    {
      v7 = *(a6 + 8);
      if (!v7)
      {
LABEL_15:
        abort();
      }

      v8 = *v6;
      while (1)
      {
        while (1)
        {
          v9 = v7[4];
          if (v8 >= v9)
          {
            break;
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        if (v9 >= v8)
        {
          break;
        }

        v7 = v7[1];
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      if (*(v7 + 10))
      {
        operator new();
      }

      v6 += 11;
    }

    while (v6 != a2);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v10);
}

void std::__introsort<std::_ClassicAlgPolicy,webrtc::anonymous namespace::DistributeBitrateRelatively(std::vector<webrtc::bitrate_allocator_impl::AllocatableTrack> const&,unsigned int,std::map<webrtc::BitrateAllocatorObserver *,int> const&,std::map<webrtc::BitrateAllocatorObserver *,int>*)::$_0 &,webrtc::anonymous namespace::DistributeBitrateRelatively(std::vector<webrtc::bitrate_allocator_impl::AllocatableTrack> const&,unsigned int,std::map<webrtc::BitrateAllocatorObserver *,int> const&,std::map<webrtc::BitrateAllocatorObserver *,int>*)::PriorityRateObserverConfig *,false>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = (a2 - 3);
  v10 = a2 - 6;
  v11 = a2 - 9;
  for (i = a1; ; *(i - 8) = a5.n128_u64[0])
  {
LABEL_2:
    a1 = i;
    v13 = a2 - i;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 3);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:
          v94 = *(i + 32) / *(i + 40);
          v95 = *(a2 - 4) / *(a2 - 1);
          if (v94 < *(i + 8) / *(i + 16))
          {
            if (v95 >= v94)
            {
              goto LABEL_184;
            }

            v213 = *(i + 16);
            v189 = *i;
            v96 = *v9;
            *(i + 16) = *(a2 - 1);
            *i = v96;
            v97 = v189;
            v98 = v213;
LABEL_186:
            *(a2 - 1) = v98;
            *v9 = v97;
            return;
          }

          if (v95 >= v94)
          {
            return;
          }

          v156 = *(i + 24);
          v157 = *(i + 40);
          v158 = *(a2 - 1);
          *(i + 24) = *v9;
          *(i + 40) = v158;
          *(a2 - 1) = v157;
          *v9 = v156;
LABEL_173:
          if (*(i + 32) / *(i + 40) < *(i + 8) / *(i + 16))
          {
            v216 = *(i + 16);
            v192 = *i;
            *i = *(i + 24);
            *(i + 16) = *(i + 40);
            *(i + 24) = v192;
            *(i + 40) = v216;
          }

          return;
        case 4:

          return;
        case 5:
          if (*(a2 - 4) / *(a2 - 1) >= *(i + 80) / *(i + 88))
          {
            return;
          }

          v99 = *(i + 72);
          v100 = *(i + 88);
          v101 = *(a2 - 1);
          *(i + 72) = *(a2 - 3);
          *(i + 88) = v101;
          *(a2 - 1) = v100;
          *(a2 - 3) = v99;
          if (*(i + 80) / *(i + 88) >= *(i + 56) / *(i + 64))
          {
            return;
          }

          v102 = *(i + 64);
          v103 = *(i + 48);
          *(i + 48) = *(i + 72);
          *(i + 64) = *(i + 88);
          *(i + 72) = v103;
          *(i + 88) = v102;
          if (*(i + 56) / *(i + 64) >= *(i + 32) / *(i + 40))
          {
            return;
          }

          v104 = *(i + 40);
          v105 = *(i + 24);
          *(i + 24) = *(i + 48);
          *(i + 40) = *(i + 64);
          *(i + 48) = v105;
          *(i + 64) = v104;
          goto LABEL_173;
      }
    }

    else
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if (*(a2 - 4) / *(a2 - 1) < *(i + 8) / *(i + 16))
        {
          v214 = *(i + 16);
          v190 = *i;
          v106 = *(a2 - 3);
          *(i + 16) = *(a2 - 1);
          *i = v106;
          *(a2 - 1) = v214;
          *(a2 - 3) = v190;
        }

        return;
      }
    }

    if (v13 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v121 = (v14 - 2) >> 1;
        v122 = v121;
        do
        {
          v123 = v122;
          if (v121 >= v122)
          {
            v124 = (2 * v122) | 1;
            v125 = i + 24 * v124;
            if (2 * v123 + 2 < v14 && *(v125 + 8) / *(v125 + 16) < *(v125 + 32) / *(v125 + 40))
            {
              v125 += 24;
              v124 = 2 * v123 + 2;
            }

            v126 = i + 24 * v123;
            v127 = *(v126 + 8);
            v128 = *(v126 + 16);
            v129 = v127 / v128;
            if (*(v125 + 8) / *(v125 + 16) >= v129)
            {
              v130 = *v126;
              v131 = *(v126 + 12);
              do
              {
                v132 = v126;
                v126 = v125;
                v133 = *v125;
                *(v132 + 16) = *(v125 + 16);
                *v132 = v133;
                if (v121 < v124)
                {
                  break;
                }

                v134 = 2 * v124;
                v124 = (2 * v124) | 1;
                v125 = i + 24 * v124;
                v135 = v134 + 2;
                if (v135 < v14 && *(v125 + 8) / *(v125 + 16) < *(v125 + 32) / *(v125 + 40))
                {
                  v125 += 24;
                  v124 = v135;
                }
              }

              while (*(v125 + 8) / *(v125 + 16) >= v129);
              *v126 = v130;
              *(v126 + 8) = v127;
              *(v126 + 12) = v131;
              *(v126 + 16) = v128;
            }
          }

          v122 = v123 - 1;
        }

        while (v123);
        v136 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v138 = 0;
          v215 = *(i + 16);
          v191 = *i;
          v139 = i;
          do
          {
            v141 = v139;
            v142 = v139 + 24 * v138;
            v139 = v142 + 24;
            v143 = 2 * v138;
            v138 = (2 * v138) | 1;
            v144 = v143 + 2;
            if (v144 < v136 && *(v142 + 32) / *(v142 + 40) < *(v142 + 56) / *(v142 + 64))
            {
              v139 = v142 + 48;
              v138 = v144;
            }

            v140 = *v139;
            v141[1].n128_u64[0] = *(v139 + 16);
            *v141 = v140;
          }

          while (v138 <= ((v136 - 2) >> 1));
          a2 -= 3;
          if (v139 == a2)
          {
            *(v139 + 16) = v215;
            *v139 = v191;
          }

          else
          {
            v145 = *a2;
            *(v139 + 16) = a2[2];
            *v139 = v145;
            a2[2] = v215;
            *a2 = v191;
            v146 = v139 - i + 24;
            if (v146 >= 25)
            {
              v147 = (-2 - 0x5555555555555555 * (v146 >> 3)) >> 1;
              v148 = i + 24 * v147;
              v149 = *(v139 + 8);
              v150 = *(v139 + 16);
              v151 = v149 / v150;
              if (*(v148 + 8) / *(v148 + 16) < v151)
              {
                v152 = *v139;
                v153 = *(v139 + 12);
                do
                {
                  v154 = v139;
                  v139 = v148;
                  v155 = *v148;
                  *(v154 + 16) = *(v148 + 16);
                  *v154 = v155;
                  if (!v147)
                  {
                    break;
                  }

                  v147 = (v147 - 1) >> 1;
                  v148 = i + 24 * v147;
                }

                while (*(v148 + 8) / *(v148 + 16) < v151);
                *v139 = v152;
                *(v139 + 8) = v149;
                *(v139 + 12) = v153;
                *(v139 + 16) = v150;
              }
            }
          }
        }

        while (v136-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (i + 24 * (v14 >> 1));
    v17 = *(a2 - 4) / *(a2 - 1);
    if (v13 < 0xC01)
    {
      v20 = *(i + 8) / *(i + 16);
      if (v20 >= v16->n128_i32[2] / v16[1].n128_f64[0])
      {
        if (v17 < v20)
        {
          v198 = *(i + 16);
          v174 = *i;
          a5 = *v9;
          *(i + 16) = *(a2 - 1);
          *i = a5;
          a5.n128_u64[1] = v174.n128_u64[1];
          *(a2 - 1) = v198;
          *v9 = v174;
          if (*(i + 8) / *(i + 16) < v16->n128_i32[2] / v16[1].n128_f64[0])
          {
            v199 = v16[1].n128_u64[0];
            v175 = *v16;
            a5 = *i;
            v16[1].n128_u64[0] = *(i + 16);
            *v16 = a5;
            a5.n128_u64[1] = v175.n128_u64[1];
            *(i + 16) = v199;
            *i = v175;
            --a3;
            if (a4)
            {
              goto LABEL_38;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          v195 = v16[1].n128_i64[0];
          v171 = *v16;
          v21 = *v9;
          v16[1].n128_u64[0] = *(a2 - 1);
          *v16 = v21;
          goto LABEL_36;
        }

        v202 = v16[1].n128_u64[0];
        v178 = *v16;
        a5 = *i;
        v16[1].n128_u64[0] = *(i + 16);
        *v16 = a5;
        a5.n128_u64[1] = v178.n128_u64[1];
        *(i + 16) = v202;
        *i = v178;
        if (*(a2 - 4) / *(a2 - 1) < *(i + 8) / *(i + 16))
        {
          v195 = *(i + 16);
          v171 = *i;
          v37 = *v9;
          *(i + 16) = *(a2 - 1);
          *i = v37;
LABEL_36:
          a5.n128_u64[1] = v171.n128_u64[1];
          *(a2 - 1) = v195;
          *v9 = v171;
        }
      }

      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

      goto LABEL_61;
    }

    v18 = v16->n128_i32[2] / v16[1].n128_f64[0];
    if (v18 >= *(i + 8) / *(i + 16))
    {
      if (v17 < v18)
      {
        v196 = v16[1].n128_i64[0];
        v172 = *v16;
        v22 = *v9;
        v16[1].n128_u64[0] = *(a2 - 1);
        *v16 = v22;
        *(a2 - 1) = v196;
        *v9 = v172;
        if (v16->n128_i32[2] / v16[1].n128_f64[0] < *(i + 8) / *(i + 16))
        {
          v197 = *(i + 16);
          v173 = *i;
          v23 = *v16;
          *(i + 16) = v16[1].n128_u64[0];
          *i = v23;
          v16[1].n128_u64[0] = v197;
          *v16 = v173;
        }
      }
    }

    else
    {
      if (v17 >= v18)
      {
        v200 = *(i + 16);
        v176 = *i;
        v24 = *v16;
        *(i + 16) = v16[1].n128_u64[0];
        *i = v24;
        v16[1].n128_u64[0] = v200;
        *v16 = v176;
        if (*(a2 - 4) / *(a2 - 1) >= v16->n128_i32[2] / v16[1].n128_f64[0])
        {
          goto LABEL_28;
        }

        v194 = v16[1].n128_i64[0];
        v170 = *v16;
        v25 = *v9;
        v16[1].n128_u64[0] = *(a2 - 1);
        *v16 = v25;
      }

      else
      {
        v194 = *(i + 16);
        v170 = *i;
        v19 = *v9;
        *(i + 16) = *(a2 - 1);
        *i = v19;
      }

      *(a2 - 1) = v194;
      *v9 = v170;
    }

LABEL_28:
    v26 = i + 24 * v15;
    v27 = (v26 - 24);
    v28 = *(v26 - 16) / *(v26 - 8);
    v29 = *(a2 - 10) / *(a2 - 4);
    if (v28 >= *(i + 32) / *(i + 40))
    {
      if (v29 < v28)
      {
        v201 = *(v26 - 8);
        v177 = *v27;
        v33 = *v10;
        *(v26 - 8) = *(a2 - 4);
        *v27 = v33;
        *(a2 - 4) = v201;
        *v10 = v177;
        if (*(v26 - 16) / *(v26 - 8) < *(i + 32) / *(i + 40))
        {
          v34 = *(i + 24);
          v35 = *(i + 40);
          v36 = v27[1].n128_i64[0];
          *(i + 24) = *v27;
          *(i + 40) = v36;
          v27[1].n128_u64[0] = v35;
          *v27 = v34;
        }
      }
    }

    else
    {
      if (v29 >= v28)
      {
        v40 = *(i + 24);
        v41 = *(i + 40);
        v42 = v27[1].n128_i64[0];
        *(i + 24) = *v27;
        *(i + 40) = v42;
        v27[1].n128_u64[0] = v41;
        *v27 = v40;
        if (*(a2 - 10) / *(a2 - 4) >= v27->n128_i32[2] / v27[1].n128_f64[0])
        {
          goto LABEL_42;
        }

        v203 = v27[1].n128_i64[0];
        v179 = *v27;
        v43 = *v10;
        v27[1].n128_u64[0] = *(a2 - 4);
        *v27 = v43;
        v30 = v179;
        v31 = v203;
      }

      else
      {
        v30 = *(i + 24);
        v31 = *(i + 40);
        v32 = *(a2 - 4);
        *(i + 24) = *v10;
        *(i + 40) = v32;
      }

      *(a2 - 4) = v31;
      *v10 = v30;
    }

LABEL_42:
    v44 = i + 24 * v15;
    v45 = (v44 + 24);
    v46 = *(v44 + 32) / *(v44 + 40);
    v47 = *(a2 - 16) / *(a2 - 7);
    if (v46 >= *(i + 56) / *(i + 64))
    {
      if (v47 < v46)
      {
        v204 = *(v44 + 40);
        v180 = *v45;
        v51 = *v11;
        *(v44 + 40) = *(a2 - 7);
        *v45 = v51;
        *(a2 - 7) = v204;
        *v11 = v180;
        if (*(v44 + 32) / *(v44 + 40) < *(i + 56) / *(i + 64))
        {
          v52 = *(i + 48);
          v53 = *(i + 64);
          v54 = v45[1].n128_i64[0];
          *(i + 48) = *v45;
          *(i + 64) = v54;
          v45[1].n128_u64[0] = v53;
          *v45 = v52;
        }
      }
    }

    else
    {
      if (v47 >= v46)
      {
        v55 = *(i + 48);
        v56 = *(i + 64);
        v57 = v45[1].n128_i64[0];
        *(i + 48) = *v45;
        *(i + 64) = v57;
        v45[1].n128_u64[0] = v56;
        *v45 = v55;
        if (*(a2 - 16) / *(a2 - 7) >= v45->n128_i32[2] / v45[1].n128_f64[0])
        {
          goto LABEL_51;
        }

        v205 = v45[1].n128_i64[0];
        v181 = *v45;
        v58 = *v11;
        v45[1].n128_u64[0] = *(a2 - 7);
        *v45 = v58;
        v48 = v181;
        v49 = v205;
      }

      else
      {
        v48 = *(i + 48);
        v49 = *(i + 64);
        v50 = *(a2 - 7);
        *(i + 48) = *v11;
        *(i + 64) = v50;
      }

      *(a2 - 7) = v49;
      *v11 = v48;
    }

LABEL_51:
    v59 = v16->n128_i32[2] / v16[1].n128_f64[0];
    v60 = v45->n128_i32[2] / v45[1].n128_f64[0];
    if (v59 >= v27->n128_i32[2] / v27[1].n128_f64[0])
    {
      if (v60 < v59)
      {
        v207 = v16[1].n128_u64[0];
        v183 = *v16;
        *v16 = *v45;
        v16[1].n128_u64[0] = v45[1].n128_u64[0];
        v45[1].n128_u64[0] = v207;
        *v45 = v183;
        if (v16->n128_i32[2] / v16[1].n128_f64[0] < v27->n128_i32[2] / v27[1].n128_f64[0])
        {
          v208 = v27[1].n128_u64[0];
          v184 = *v27;
          *v27 = *v16;
          v27[1].n128_u64[0] = v16[1].n128_u64[0];
          v16[1].n128_u64[0] = v208;
          *v16 = v184;
        }
      }
    }

    else
    {
      if (v60 >= v59)
      {
        v209 = v27[1].n128_u64[0];
        v185 = *v27;
        *v27 = *v16;
        v27[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v209;
        *v16 = v185;
        if (v45->n128_i32[2] / v45[1].n128_f64[0] >= v16->n128_i32[2] / v16[1].n128_f64[0])
        {
          goto LABEL_60;
        }

        v206 = v16[1].n128_u64[0];
        v182 = *v16;
        *v16 = *v45;
        v16[1].n128_u64[0] = v45[1].n128_u64[0];
      }

      else
      {
        v206 = v27[1].n128_u64[0];
        v182 = *v27;
        *v27 = *v45;
        v27[1].n128_u64[0] = v45[1].n128_u64[0];
      }

      v45[1].n128_u64[0] = v206;
      *v45 = v182;
    }

LABEL_60:
    v210 = *(i + 16);
    v186 = *i;
    a5 = *v16;
    *(i + 16) = v16[1].n128_u64[0];
    *i = a5;
    a5.n128_u64[1] = v186.n128_u64[1];
    v16[1].n128_u64[0] = v210;
    *v16 = v186;
    --a3;
    if (a4)
    {
LABEL_38:
      v38 = *(i + 8);
      a5.n128_u64[0] = *(i + 16);
      v39 = v38 / a5.n128_f64[0];
LABEL_62:
      v61 = 0;
      v62 = *i;
      v63 = *(i + 12);
      do
      {
        v64 = i + v61;
        if ((i + v61 + 24) == a2)
        {
          goto LABEL_183;
        }

        v61 += 24;
      }

      while (*(v64 + 32) / *(v64 + 40) < v39);
      v65 = i + v61;
      v66 = a2;
      if (v61 != 24)
      {
        while (v66 != i)
        {
          v67 = v66 - 3;
          v68 = *(v66 - 4) / *(v66 - 1);
          v66 -= 3;
          if (v68 < v39)
          {
            goto LABEL_72;
          }
        }

LABEL_183:
        __break(1u);
LABEL_184:
        v217 = *(a1 + 16);
        v193 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v193;
        *(a1 + 40) = v217;
        if (*(a2 - 4) / *(a2 - 1) >= *(a1 + 32) / *(a1 + 40))
        {
          return;
        }

        v97 = *(a1 + 24);
        v98 = *(a1 + 40);
        v169 = *(a2 - 1);
        *(a1 + 24) = *v9;
        *(a1 + 40) = v169;
        goto LABEL_186;
      }

      v69 = a2;
      do
      {
        if (v65 >= v69)
        {
          v67 = v69;
          i = v65;
          goto LABEL_83;
        }

        v67 = v69 - 3;
        v70 = *(v69 - 4) / *(v69 - 1);
        v69 -= 3;
      }

      while (v70 >= v39);
LABEL_72:
      i = v65;
      if (v65 < v67)
      {
        v71 = v67;
LABEL_74:
        v211 = *(i + 16);
        v187 = *i;
        v72 = *v71;
        *(i + 16) = v71[1].n128_u64[0];
        *i = v72;
        v71[1].n128_u64[0] = v211;
        *v71 = v187;
        v73 = i + 24;
        while (v73 != a2)
        {
          v74 = *(v73 + 8) / *(v73 + 16);
          v73 += 24;
          if (v74 >= v39)
          {
            i = v73 - 24;
            while (v71 != a1)
            {
              v75 = &v71[-2].n128_u64[1];
              v76 = v71[-1].n128_i32[0] / v71[-1].n128_f64[1];
              v71 = (v71 - 24);
              if (v76 < v39)
              {
                v71 = v75;
                if (i < v75)
                {
                  goto LABEL_74;
                }

                goto LABEL_83;
              }
            }

            goto LABEL_183;
          }
        }

        goto LABEL_183;
      }

LABEL_83:
      if (i - 24 != a1)
      {
        v77 = *(i - 24);
        *(a1 + 16) = *(i - 8);
        *a1 = v77;
      }

      *(i - 24) = v62;
      *(i - 16) = v38;
      *(i - 12) = v63;
      *(i - 8) = a5.n128_u64[0];
      if (v65 < v67)
      {
LABEL_88:
        a4 = 0;
        goto LABEL_2;
      }

      {
        if (v78)
        {
          goto LABEL_2;
        }

        goto LABEL_88;
      }

      a2 = (i - 24);
      if (v78)
      {
        return;
      }

      goto LABEL_1;
    }

LABEL_61:
    v38 = *(i + 8);
    a5.n128_u64[0] = *(i + 16);
    v39 = v38 / a5.n128_f64[0];
    if (*(i - 16) / *(i - 8) < v39)
    {
      goto LABEL_62;
    }

    v80 = *i;
    v81 = *(i + 12);
    v82 = i + 24;
    if (v39 >= *(a2 - 4) / *(a2 - 1))
    {
      do
      {
        i = v82;
        if (v82 >= a2)
        {
          break;
        }

        v84 = *(v82 + 8) / *(v82 + 16);
        v82 += 24;
      }

      while (v39 >= v84);
    }

    else
    {
      do
      {
        if (v82 == a2)
        {
          goto LABEL_183;
        }

        v83 = *(v82 + 8) / *(v82 + 16);
        v82 += 24;
      }

      while (v39 >= v83);
      i = v82 - 24;
    }

    v85 = a2;
    if (i < a2)
    {
      v86 = a2;
      do
      {
        if (v86 == a1)
        {
          goto LABEL_183;
        }

        v85 = v86 - 3;
        v87 = *(v86 - 4) / *(v86 - 1);
        v86 -= 3;
      }

      while (v39 < v87);
    }

    if (i < v85)
    {
      do
      {
        v212 = *(i + 16);
        v188 = *i;
        v88 = *v85;
        *(i + 16) = v85[2];
        *i = v88;
        v85[2] = v212;
        *v85 = v188;
        v89 = i + 24;
        do
        {
          if (v89 == a2)
          {
            goto LABEL_183;
          }

          v90 = *(v89 + 8) / *(v89 + 16);
          v89 += 24;
        }

        while (v39 >= v90);
        i = v89 - 24;
        do
        {
          if (v85 == a1)
          {
            goto LABEL_183;
          }

          v91 = (v85 - 3);
          v92 = *(v85 - 4) / *(v85 - 1);
          v85 -= 3;
        }

        while (v39 < v92);
        v85 = v91;
      }

      while (i < v91);
    }

    if (i - 24 != a1)
    {
      v93 = *(i - 24);
      *(a1 + 16) = *(i - 8);
      *a1 = v93;
    }

    a4 = 0;
    *(i - 24) = v80;
    *(i - 16) = v38;
    *(i - 12) = v81;
  }

  v107 = (i + 24);
  v109 = i == a2 || v107 == a2;
  if (a4)
  {
    if (!v109)
    {
      v110 = 0;
      v111 = i;
      do
      {
        v113 = v107;
        v114 = *(v111 + 8);
        v115 = *(v111 + 5);
        v116 = v114 / v115;
        if (v116 < *(v111 + 2) / *(v111 + 2))
        {
          v117 = *v113;
          v118 = *(v111 + 9);
          v119 = v110;
          do
          {
            v120 = i + v119;
            *(v120 + 24) = *(i + v119);
            *(v120 + 40) = *(i + v119 + 16);
            if (!v119)
            {
              v112 = i;
              goto LABEL_134;
            }

            v119 -= 24;
          }

          while (v116 < *(v120 - 16) / *(v120 - 8));
          v112 = i + v119 + 24;
LABEL_134:
          *v112 = v117;
          *(v112 + 8) = v114;
          *(v112 + 12) = v118;
          *(v112 + 16) = v115;
        }

        v107 = v113 + 3;
        v110 += 24;
        v111 = v113;
      }

      while (v113 + 3 != a2);
    }
  }

  else if (!v109)
  {
    v159 = 24;
    do
    {
      v161 = *(a1 + 32);
      v162 = *(a1 + 40);
      v163 = v161 / v162;
      if (v163 < *(a1 + 8) / *(a1 + 16))
      {
        v164 = 0;
        v165 = *v107;
        v166 = *(a1 + 36);
        do
        {
          v167 = &v107[v164];
          *v167 = *&v107[v164 - 3];
          v167[2] = v107[v164 - 1];
          if (!(v159 + v164 * 8))
          {
            goto LABEL_183;
          }

          v168 = *(a1 + v164 * 8 - 16) / *(a1 + v164 * 8 - 8);
          v164 -= 3;
        }

        while (v163 < v168);
        v107[v164] = v165;
        v160 = a1 + v164 * 8;
        *(v160 + 32) = v161;
        *(v160 + 36) = v166;
        *(v160 + 40) = v162;
      }

      a1 += 24;
      v159 += 24;
      v107 += 3;
    }

    while (v107 != a2);
  }
}

__n128 std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::DistributeBitrateRelatively(std::vector<webrtc::bitrate_allocator_impl::AllocatableTrack> const&,unsigned int,std::map<webrtc::BitrateAllocatorObserver *,int> const&,std::map<webrtc::BitrateAllocatorObserver *,int>*)::$_0 &,webrtc::anonymous namespace::DistributeBitrateRelatively(std::vector<webrtc::bitrate_allocator_impl::AllocatableTrack> const&,unsigned int,std::map<webrtc::BitrateAllocatorObserver *,int> const&,std::map<webrtc::BitrateAllocatorObserver *,int>*)::PriorityRateObserverConfig *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_i32[2] / a2[1].n128_f64[0];
  v6 = a3->n128_i32[2] / a3[1].n128_f64[0];
  if (v5 >= a1->n128_i32[2] / a1[1].n128_f64[0])
  {
    if (v6 < v5)
    {
      v9 = a2[1].n128_u64[0];
      result = *a2;
      v10 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v10;
      *a3 = result;
      a3[1].n128_u64[0] = v9;
      if (a2->n128_i32[2] / a2[1].n128_f64[0] < a1->n128_i32[2] / a1[1].n128_f64[0])
      {
        v11 = a1[1].n128_u64[0];
        result = *a1;
        v12 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v12;
        *a2 = result;
        a2[1].n128_u64[0] = v11;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = a1[1].n128_u64[0];
      result = *a1;
      v8 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v8;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v7;
      goto LABEL_10;
    }

    v13 = a1[1].n128_u64[0];
    result = *a1;
    v14 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v14;
    *a2 = result;
    a2[1].n128_u64[0] = v13;
    if (a3->n128_i32[2] / a3[1].n128_f64[0] < a2->n128_i32[2] / a2[1].n128_f64[0])
    {
      v7 = a2[1].n128_u64[0];
      result = *a2;
      v15 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v15;
      goto LABEL_9;
    }
  }

LABEL_10:
  result.n128_f64[0] = a4->n128_i32[2] / a4[1].n128_f64[0];
  if (result.n128_f64[0] < a3->n128_i32[2] / a3[1].n128_f64[0])
  {
    v16 = a3[1].n128_u64[0];
    result = *a3;
    v17 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v17;
    *a4 = result;
    a4[1].n128_u64[0] = v16;
    result.n128_f64[0] = a3->n128_i32[2] / a3[1].n128_f64[0];
    if (result.n128_f64[0] < a2->n128_i32[2] / a2[1].n128_f64[0])
    {
      v18 = a2[1].n128_u64[0];
      result = *a2;
      v19 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v19;
      *a3 = result;
      a3[1].n128_u64[0] = v18;
      result.n128_f64[0] = a2->n128_i32[2] / a2[1].n128_f64[0];
      if (result.n128_f64[0] < a1->n128_i32[2] / a1[1].n128_f64[0])
      {
        v20 = a1[1].n128_u64[0];
        result = *a1;
        v21 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v21;
        *a2 = result;
        a2[1].n128_u64[0] = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::DistributeBitrateRelatively(std::vector<webrtc::bitrate_allocator_impl::AllocatableTrack> const&,unsigned int,std::map<webrtc::BitrateAllocatorObserver *,int> const&,std::map<webrtc::BitrateAllocatorObserver *,int>*)::$_0 &,webrtc::anonymous namespace::DistributeBitrateRelatively(std::vector<webrtc::bitrate_allocator_impl::AllocatableTrack> const&,unsigned int,std::map<webrtc::BitrateAllocatorObserver *,int> const&,std::map<webrtc::BitrateAllocatorObserver *,int>*)::PriorityRateObserverConfig *>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 4)
      {
        return 1;
      }

      if (v3 == 5)
      {
        if (*(a2 - 4) / *(a2 - 1) < *(a1 + 80) / *(a1 + 88))
        {
          v10 = *(a1 + 88);
          v11 = *(a1 + 72);
          v12 = *(a2 - 1);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = v12;
          *(a2 - 3) = v11;
          *(a2 - 1) = v10;
          if (*(a1 + 80) / *(a1 + 88) < *(a1 + 56) / *(a1 + 64))
          {
            v13 = *(a1 + 64);
            v14 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            *(a1 + 64) = *(a1 + 88);
            *(a1 + 72) = v14;
            *(a1 + 88) = v13;
            if (*(a1 + 56) / *(a1 + 64) < *(a1 + 32) / *(a1 + 40))
            {
              v15 = *(a1 + 40);
              v16 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              *(a1 + 40) = *(a1 + 64);
              *(a1 + 48) = v16;
              *(a1 + 64) = v15;
              if (*(a1 + 32) / *(a1 + 40) < *(a1 + 8) / *(a1 + 16))
              {
                v17 = *(a1 + 16);
                v18 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 16) = *(a1 + 40);
                *(a1 + 24) = v18;
                *(a1 + 40) = v17;
                return 1;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    v19 = (a2 - 3);
    v20 = *(a1 + 32) / *(a1 + 40);
    v21 = *(a2 - 4) / *(a2 - 1);
    if (v20 >= *(a1 + 8) / *(a1 + 16))
    {
      if (v21 < v20)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        v33 = *(a2 - 1);
        *(a1 + 24) = *v19;
        *(a1 + 40) = v33;
        *v19 = v32;
        *(a2 - 1) = v31;
        if (*(a1 + 32) / *(a1 + 40) < *(a1 + 8) / *(a1 + 16))
        {
          v34 = *(a1 + 16);
          v35 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v35;
          *(a1 + 40) = v34;
          return 1;
        }
      }

      return 1;
    }

    if (v21 >= v20)
    {
      v40 = *(a1 + 16);
      v41 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v41;
      *(a1 + 40) = v40;
      if (*(a2 - 4) / *(a2 - 1) >= *(a1 + 32) / *(a1 + 40))
      {
        return 1;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      v42 = *(a2 - 1);
      *(a1 + 24) = *v19;
      *(a1 + 40) = v42;
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      v24 = *(a2 - 1);
      *a1 = *v19;
      *(a1 + 16) = v24;
    }

    *v19 = v23;
    *(a2 - 1) = v22;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 4) / *(a2 - 1) < *(a1 + 8) / *(a1 + 16))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 3) = v5;
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_17:
  v25 = (a1 + 48);
  v26 = *(a1 + 32) / *(a1 + 40);
  v27 = *(a1 + 8) / *(a1 + 16);
  v28 = *(a1 + 56) / *(a1 + 64);
  if (v26 >= v27)
  {
    if (v28 < v26)
    {
      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v25;
      *(a1 + 40) = *(a1 + 64);
      *v25 = v37;
      *(a1 + 64) = v36;
      if (*(a1 + 32) / *(a1 + 40) < v27)
      {
        v38 = *(a1 + 16);
        v39 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v39;
        *(a1 + 40) = v38;
      }
    }
  }

  else
  {
    if (v28 >= v26)
    {
      v43 = *(a1 + 16);
      v44 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v44;
      *(a1 + 40) = v43;
      if (v28 >= *(a1 + 32) / *(a1 + 40))
      {
        goto LABEL_33;
      }

      v29 = *(a1 + 40);
      v30 = *(a1 + 24);
      *(a1 + 24) = *v25;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *v25;
      *(a1 + 16) = *(a1 + 64);
    }

    *v25 = v30;
    *(a1 + 64) = v29;
  }

LABEL_33:
  v45 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *(v45 + 2);
    v49 = *(v45 + 2);
    v50 = v48 / v49;
    if (v50 < *(v25 + 2) / v25[2])
    {
      break;
    }

LABEL_42:
    v25 = v45;
    v46 += 24;
    v45 += 3;
    if (v45 == a2)
    {
      return 1;
    }
  }

  v51 = *v45;
  v52 = *(v45 + 3);
  v53 = v46;
  do
  {
    v54 = a1 + v53;
    *(v54 + 72) = *(a1 + v53 + 48);
    *(v54 + 88) = *(a1 + v53 + 64);
    if (v53 == -48)
    {
      *a1 = v51;
      *(a1 + 8) = v48;
      *(a1 + 12) = v52;
      *(a1 + 16) = v49;
      if (++v47 != 8)
      {
        goto LABEL_42;
      }

      return v45 + 3 == a2;
    }

    v53 -= 24;
  }

  while (v50 < *(v54 + 32) / *(v54 + 40));
  v55 = a1 + v53;
  *(v55 + 72) = v51;
  v55 += 72;
  *(v55 + 8) = v48;
  *(v55 + 12) = v52;
  *(v55 + 16) = v49;
  if (++v47 != 8)
  {
    goto LABEL_42;
  }

  return v45 + 3 == a2;
}

void *std::map<webrtc::BitrateAllocatorObserver *,int>::map[abi:sn200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = v2[4];
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_10;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      if (v5[4] < v3)
      {
LABEL_10:
        if (v4)
        {
          v9 = v5 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_21:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_21;
        }

        while (1)
        {
          while (1)
          {
            v10 = v4;
            v11 = v4[4];
            if (v11 <= v3)
            {
              break;
            }

            v4 = *v10;
            if (!*v10)
            {
              goto LABEL_21;
            }
          }

          if (v11 >= v3)
          {
            break;
          }

          v4 = v10[1];
          if (!v4)
          {
            goto LABEL_21;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v8 = *v13 == v2;
          v2 = v13;
        }

        while (!v8);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void webrtc::FieldTrialParameter<webrtc::DataRate>::~FieldTrialParameter(uint64_t a1)
{
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialParameter<webrtc::DataRate>::Parse(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    return 0;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v3 = webrtc::ParseTypedParameter<webrtc::DataRate>(*a2, *(a2 + 8));
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = webrtc::ParseTypedParameter<webrtc::DataRate>(a2, *(a2 + 23));
    if (v4)
    {
LABEL_4:
      *(a1 + 64) = v3;
      return 1;
    }
  }

  return 0;
}

void webrtc::BitrateConstraint::OnEncoderSettingsUpdated(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 856) == *(a2 + 848))
  {
    if (*(a1 + 856))
    {
      webrtc::VideoEncoder::EncoderInfo::operator=(a1 + 8, a2);
      webrtc::VideoEncoderConfig::VideoEncoderConfig(v5, (a2 + 256));
      webrtc::VideoEncoderConfig::operator=(a1 + 264, v5);
      webrtc::VideoEncoderConfig::~VideoEncoderConfig(v5);
      memcpy((a1 + 472), (a2 + 464), 0x17DuLL);
    }
  }

  else if (*(a1 + 856))
  {
    webrtc::VideoEncoderConfig::~VideoEncoderConfig((a1 + 264));
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo((a1 + 8));
    *(a1 + 856) = 0;
  }

  else
  {
    webrtc::VideoEncoder::EncoderInfo::EncoderInfo((a1 + 8), a2);
    webrtc::VideoEncoderConfig::VideoEncoderConfig((a1 + 264), (a2 + 256));
    memcpy((a1 + 472), (a2 + 464), 0x180uLL);
    *(a1 + 856) = 1;
  }
}

void webrtc::BitrateConstraint::IsAdaptationUpAllowed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if ((*(a3 + 8) & 1) != 0 && ((*(a4 + 8) & 1) == 0 || *a4 > *a3) && *(a1 + 856) == 1 && *(a1 + 868) == 1 && *(a1 + 864))
  {
    v10 = *(a1 + 432);
    v9 = *(a1 + 440);
    if (v10 == v9)
    {
      goto LABEL_31;
    }

    v11 = v10[81];
    if (*(a1 + 504) != 1)
    {
      v11 = 0;
    }

    if (v11 == 1)
    {
      if (v10[80] >= 0x22u)
      {
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v10[80]);
        webrtc::BitrateConstraint::~BitrateConstraint(v24);
        return;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v9 - v10 - 96;
    if (v9 - v10 == 96)
    {
      if (v12 > 1)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        return;
      }

LABEL_31:
      if ((*(a2 + 24) & 0x100000000) != 0)
      {
        webrtc::VideoEncoder::EncoderInfo::GetEncoderBitrateLimitsForResolution((a1 + 8), v25, a9);
      }

      return;
    }

    if (v12 != 1)
    {
      v11 = 0;
    }

    if (v10[82] != 1 || v11)
    {
      if (v13 >= 0x60)
      {
        v17 = 0;
        v18 = 0;
        v19 = v13 / 0x60 + 1;
        v16 = &v10[96 * (v19 & 0x7FFFFFFFFFFFFFELL)];
        v20 = v10 + 178;
        v21 = v19 & 0x7FFFFFFFFFFFFFELL;
        do
        {
          v22 = *(v20 - 96);
          v23 = *v20;
          v20 += 192;
          v17 += v22;
          v18 += v23;
          v21 -= 2;
        }

        while (v21);
        v15 = v18 + v17;
        if (v19 == (v19 & 0x7FFFFFFFFFFFFFELL))
        {
LABEL_30:
          if (v15 > 1)
          {
            return;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v15 = 0;
        v16 = *(a1 + 432);
      }

      do
      {
        v15 += v16[82];
        v16 += 96;
      }

      while (v16 != v9);
      goto LABEL_30;
    }
  }
}

void webrtc::BitrateConstraint::~BitrateConstraint(void **this)
{
  *this = &unk_28828FF38;
  if (*(this + 856) == 1)
  {
    webrtc::VideoEncoderConfig::~VideoEncoderConfig((this + 33));
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(this + 1);
  }
}

{
  *this = &unk_28828FF38;
  if (*(this + 856) == 1)
  {
    webrtc::VideoEncoderConfig::~VideoEncoderConfig((this + 33));
    webrtc::VideoEncoder::EncoderInfo::~EncoderInfo(this + 1);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::BitrateConstraint::Name(char *a1@<X8>)
{
  a1[23] = 17;
  if (a1 <= "BitrateConstraint" && a1 + 17 > "BitrateConstraint")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "BitrateConstraint");
  }
}

uint64_t webrtc::BitrateEstimator::BitrateEstimator(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  *a1 = &unk_28828FF68;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_288293910;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 71) = 17;
  if (a1 + 48 <= "initial_window_ms" && a1 + 65 > "initial_window_ms" || (strcpy((a1 + 48), "initial_window_ms"), *(a1 + 72) = 0, *(a1 + 16) = &unk_288293850, *(a1 + 76) = 500, *(a1 + 80) = xmmword_273B8EF70, *(a1 + 112) = 0, *(a1 + 120) = 0, *(a1 + 104) = 0, *(a1 + 151) = 9, a1 + 128 <= "window_ms") && a1 + 137 > "window_ms" || (strcpy((a1 + 128), "window_ms"), *(a1 + 152) = 0, *(a1 + 96) = &unk_288293850, *(a1 + 156) = 150, *(a1 + 160) = xmmword_273B8EF70, *(a1 + 192) = 0, *(a1 + 200) = 0, *(a1 + 184) = 0, *(a1 + 231) = 5, a1 + 208 <= "scale") && a1 + 213 > "scale" || (*(a1 + 212) = 101, *(a1 + 208) = 1818321779, *(a1 + 213) = 0, *(a1 + 232) = 0, *(a1 + 176) = &unk_2882937C0, *(a1 + 240) = 0x4024000000000000, *(a1 + 264) = 0, *(a1 + 272) = 0, *(a1 + 303) = 9, *(a1 + 256) = 0, a1 + 280 <= "scale_alr") && a1 + 289 > "scale_alr" || (strcpy((a1 + 280), "scale_alr"), *(a1 + 304) = 0, *(a1 + 248) = &unk_2882937C0, *(a1 + 312) = 0x4024000000000000, *(a1 + 336) = 0, *(a1 + 344) = 0, *(a1 + 328) = 0, *(a1 + 375) = 11, a1 + 352 <= "scale_small") && a1 + 363 > "scale_small" || (strcpy((a1 + 352), "scale_small"), *(a1 + 376) = 0, *(a1 + 320) = &unk_2882937C0, *(a1 + 384) = 0x4024000000000000, *(a1 + 408) = 0, *(a1 + 416) = 0, *(a1 + 400) = 0, *(a1 + 447) = 12, a1 + 424 <= "small_thresh") && a1 + 436 > "small_thresh" || (strcpy((a1 + 424), "small_thresh"), *(a1 + 448) = 0, *(a1 + 392) = &unk_28828FFA0, *(a1 + 456) = 0, *(a1 + 480) = 0, *(a1 + 488) = 0, *(a1 + 472) = 0, *(a1 + 519) = 12, a1 + 496 <= "symmetry_cap") && a1 + 508 > "symmetry_cap" || (strcpy((a1 + 496), "symmetry_cap"), *(a1 + 520) = 0, *(a1 + 464) = &unk_28828FF08, *(a1 + 528) = 0, *(a1 + 544) = 0, *(a1 + 560) = 0, *(a1 + 552) = 0, *(a1 + 591) = 5, a1 + 568 <= "floor") && a1 + 573 > "floor")
  {
    __break(1u);
  }

  *(a1 + 572) = 114;
  *(a1 + 568) = 1869573222;
  *(a1 + 573) = 0;
  *(a1 + 592) = 0;
  *(a1 + 536) = &unk_28828FF08;
  *(a1 + 600) = 0u;
  *(a1 + 616) = -1;
  *(a1 + 624) = 0x42480000BF800000;
  v8[0] = a1 + 16;
  v8[1] = a1 + 96;
  v8[2] = a1 + 176;
  v8[3] = a1 + 248;
  v8[4] = a1 + 320;
  v8[5] = a1 + 392;
  v8[6] = a1 + 464;
  v8[7] = a1 + 536;
  (*(*a2 + 16))(__p, a2, "WebRTC-BweThroughputWindowConfig", 32);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  webrtc::ParseFieldTrial(v8, 8, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t webrtc::FieldTrialParameter<webrtc::DataSize>::~FieldTrialParameter(uint64_t a1)
{
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void webrtc::BitrateEstimator::~BitrateEstimator(webrtc::BitrateEstimator *this)
{
  *this = &unk_28828FF68;
  *(this + 67) = &unk_288293910;
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  v2 = *(this + 68);
  if (v2)
  {
    *(this + 69) = v2;
    operator delete(v2);
  }

  *(this + 58) = &unk_288293910;
  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  v3 = *(this + 59);
  if (v3)
  {
    *(this + 60) = v3;
    operator delete(v3);
  }

  *(this + 49) = &unk_288293910;
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  v4 = *(this + 50);
  if (v4)
  {
    *(this + 51) = v4;
    operator delete(v4);
  }

  *(this + 40) = &unk_288293910;
  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  v5 = *(this + 41);
  if (v5)
  {
    *(this + 42) = v5;
    operator delete(v5);
  }

  *(this + 31) = &unk_288293910;
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  *(this + 22) = &unk_288293910;
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  *(this + 12) = &unk_288293910;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  *(this + 2) = &unk_288293910;
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

{
  *this = &unk_28828FF68;
  *(this + 67) = &unk_288293910;
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  v2 = *(this + 68);
  if (v2)
  {
    *(this + 69) = v2;
    operator delete(v2);
  }

  *(this + 58) = &unk_288293910;
  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  v3 = *(this + 59);
  if (v3)
  {
    *(this + 60) = v3;
    operator delete(v3);
  }

  *(this + 49) = &unk_288293910;
  if (*(this + 447) < 0)
  {
    operator delete(*(this + 53));
  }

  v4 = *(this + 50);
  if (v4)
  {
    *(this + 51) = v4;
    operator delete(v4);
  }

  *(this + 40) = &unk_288293910;
  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  v5 = *(this + 41);
  if (v5)
  {
    *(this + 42) = v5;
    operator delete(v5);
  }

  *(this + 31) = &unk_288293910;
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  *(this + 22) = &unk_288293910;
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  v7 = *(this + 23);
  if (v7)
  {
    *(this + 24) = v7;
    operator delete(v7);
  }

  *(this + 12) = &unk_288293910;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  *(this + 2) = &unk_288293910;
  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  JUMPOUT(0x2743DA540);
}

float webrtc::BitrateEstimator::Update(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = *(a1 + 624);
  v5 = 156;
  if (result < 0.0)
  {
    v5 = 76;
  }

  v6 = *(a1 + v5);
  v7 = a2 / 0x3E8uLL;
  if (a2 % 0x3E8uLL > 0x1F3)
  {
    ++v7;
  }

  if (-a2 % 0x3E8uLL <= 0x1F4)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (a2 < 0)
  {
    v7 = v8 - -a2 / 0x3E8uLL;
  }

  v9 = *(a1 + 616);
  v10 = v7 - v9;
  if (v7 < v9)
  {
    *(a1 + 8) = 0;
    *(a1 + 608) = 0;
    *(a1 + 616) = v7;
    v11 = -v6;
    if (v6 <= 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    *(a1 + 8) += a3;
    return result;
  }

  if (v9 < 0)
  {
    v13 = *(a1 + 608);
    *(a1 + 616) = v7;
    v11 = v13 - v6;
    if (v13 >= v6)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v12 = *(a1 + 608) + v10;
  *(a1 + 608) = v12;
  if (v10 > v6)
  {
    *(a1 + 8) = 0;
    v12 %= v6;
    *(a1 + 608) = v12;
  }

  *(a1 + 616) = v7;
  v11 = v12 - v6;
  if (v12 < v6)
  {
    goto LABEL_17;
  }

LABEL_19:
  v14 = *(a1 + 8);
  v15 = *(a1 + 456);
  v16 = (v14 * 8.0) / v6;
  *(a1 + 608) = v11;
  *(a1 + 8) = a3;
  if (v16 < 0.0)
  {
    return result;
  }

  if (result < 0.0)
  {
    *(a1 + 624) = v16;
    return result;
  }

  v17 = v15 > v14;
  v18 = v16 < result;
  v19 = 240;
  if ((v18 & a4) != 0)
  {
    v19 = 312;
  }

  v20 = !v17 || !v18;
  v21 = 384;
  if (v20)
  {
    v21 = v19;
  }

  v22 = *(a1 + v21);
  v23 = vabds_f32(result, v16) * v22;
  v24 = *(a1 + 528);
  v25 = INFINITY;
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v24 * 0.001;
  }

  if (v24 == 0x8000000000000000)
  {
    v25 = -INFINITY;
  }

  if (v25 >= v16)
  {
    v25 = v16;
  }

  v26 = (v23 / (result + v25)) * (v23 / (result + v25));
  v27 = *(a1 + 628) + 5.0;
  v28 = ((v16 * v27) + (v26 * result)) / (v27 + v26);
  v29 = *(a1 + 600);
  if (v29 == 0x8000000000000000)
  {
    v30 = -8388608;
  }

  else
  {
    if (v29 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = v29 * 0.001;
      goto LABEL_39;
    }

    v30 = 2139095040;
  }

  v31 = *&v30;
LABEL_39:
  if (v28 < v31)
  {
    v28 = v31;
  }

  *(a1 + 624) = v28;
  result = (v27 * v26) / (v27 + v26);
  *(a1 + 628) = result;
  return result;
}

uint64_t webrtc::BitrateEstimator::bitrate(webrtc::BitrateEstimator *this)
{
  v1 = *(this + 156);
  if (v1 < 0.0)
  {
    return 0;
  }

  v3 = v1 * 1000.0;
  if (v3 == INFINITY)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 == -INFINITY)
  {
    return 0x8000000000000000;
  }

  return v3;
}

float webrtc::BitrateEstimator::ExpectFastRateChange(webrtc::BitrateEstimator *this)
{
  result = *(this + 157) + 200.0;
  *(this + 157) = result;
  return result;
}

void webrtc::FieldTrialParameter<webrtc::DataSize>::~FieldTrialParameter(uint64_t a1)
{
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialParameter<webrtc::DataSize>::Parse(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (v16 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v16 != 1)
    {
      return 0;
    }
  }

  v7 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v7 = v14;
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  if (v15 < 0)
  {
    if (v14 == 5 && *__p == *"bytes" && *(__p + 4) == str_2_29[4])
    {
      goto LABEL_25;
    }

    operator delete(__p);
    return 0;
  }

  if (v15 != 5)
  {
    return 0;
  }

  if (__p != *"bytes" || BYTE4(__p) != str_2_29[4])
  {
    return 0;
  }

LABEL_25:
  v10 = 0x8000000000000000;
  if (v12 != -INFINITY)
  {
    v10 = v12;
  }

  if (v12 == INFINITY)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 64) = v11;
  return 1;
}

uint64_t webrtc::BitrateProberConfig::BitrateProberConfig(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288293910;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 55) = 15;
  if (a1 + 32 <= "max_probe_delay" && a1 + 47 > "max_probe_delay" || (strcpy((a1 + 32), "max_probe_delay"), *(a1 + 56) = 0, *a1 = &unk_28828FFD0, *(a1 + 64) = 10000, *(a1 + 88) = 0, *(a1 + 96) = 0, *(a1 + 80) = 0, *(a1 + 127) = 15, a1 + 104 <= "min_packet_size") && a1 + 119 > "min_packet_size")
  {
    __break(1u);
  }

  strcpy((a1 + 104), "min_packet_size");
  *(a1 + 128) = 0;
  *(a1 + 72) = &unk_28828FFA0;
  *(a1 + 136) = 200;
  *(a1 + 144) = 0;
  v8[0] = a1;
  v8[1] = a1 + 72;
  (*(*a2 + 16))(__p, a2, "WebRTC-Bwe-ProbingBehavior", 26);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  webrtc::ParseFieldTrial(v8, 2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void webrtc::BitrateProber::CreateProbeCluster(uint64_t a1, int32x2_t *a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 40);
    do
    {
      v7 = *a2;
      if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = *(v5[v6 / 0x49] + 7 * (v6 % 0x49) + 5);
        if (v8 != 0x8000000000000000)
        {
          v9 = *&v7 == 0x8000000000000000 || v8 == 0x7FFFFFFFFFFFFFFFLL;
          v10 = v9 || *&v7 - v8 <= 5000000;
          v11 = !v10;
          if (v4 <= 5 && !v11)
          {
            break;
          }
        }
      }

      --v4;
      *(a1 + 40) = ++v6;
      *(a1 + 48) = v4;
      if (v6 >= 0x92)
      {
        operator delete(*v5);
        v5 = (*(a1 + 16) + 8);
        *(a1 + 16) = v5;
        v4 = *(a1 + 48);
        v6 = *(a1 + 40) - 73;
        *(a1 + 40) = v6;
      }
    }

    while (v4);
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 40);
  }

  v12 = *(a1 + 24);
  v13 = 73 * (v12 - v5) - 1;
  v14 = a2[1];
  *(&v45 + 1) = *a2;
  v46 = 0x8000000000000000;
  v15 = a2[3];
  v44 = ((a2[2].i32[0] * v14.i32[0] + 4000000) / 8000000);
  *&v45 = v15;
  *&v43 = v14;
  *(&v43 + 1) = vrev64_s32(a2[4]);
  if (v12 == v5)
  {
    v13 = 0;
  }

  if (v13 == v4 + v6)
  {
    if (v6 < 0x49)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 8);
      if (v12 - v5 < (v16 - v17))
      {
        operator new();
      }

      if (v16 == v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = (v16 - v17) >> 2;
      }

      if (!(v18 >> 61))
      {
        operator new();
      }

LABEL_50:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 40) = v6 - 73;
    v41.__r_.__value_.__r.__words[0] = *v5;
    *(a1 + 16) = v5 + 1;
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>((a1 + 8), &v41);
    v5 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  if (v12 == v5 || (v19 = *(a1 + 48) + *(a1 + 40), (v20 = v5[v19 / 0x49]) == 0))
  {
    __break(1u);
    goto LABEL_50;
  }

  v21 = &v20[56 * (v19 % 0x49)];
  v22 = v43;
  v23 = v44;
  v24 = v45;
  *(v21 + 6) = v46;
  *(v21 + 1) = v23;
  *(v21 + 2) = v24;
  *v21 = v22;
  v25 = *(a1 + 48);
  *(a1 + 48) = v25 + 1;
  if (v25 != -1 && *a1 == 1)
  {
    if (*(a1 + 208))
    {
      goto LABEL_40;
    }

    v26 = *(a1 + 40);
    v27 = *(*(a1 + 16) + 8 * (v26 / 0x49));
    v28 = ((*(v27 + 56 * (v26 % 0x49)) * *(v27 + 56 * (v26 % 0x49) + 32) + 4000000) * 0x431BDE82D7B634DBLL) >> 64;
    v29 = (v28 >> 21) + (v28 >> 63);
    if (*(a1 + 200) < v29)
    {
      v29 = *(a1 + 200);
    }

    if (v29 <= 0)
    {
LABEL_40:
      *(a1 + 56) = 0x8000000000000000;
      *a1 = 2;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    v39[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/bitrate_prober.cc";
    v39[1] = 1041;
    v39[2] = &v38;
    v40[0] = "Probe cluster (bitrate_bps:min bytes:min packets): (";
    v40[1] = v39;
    webrtc::webrtc_logging_impl::MakeVal<webrtc::DataRate,(void *)0>(&v43, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
      v37 = v40;
      v42 = v40;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
        v37 = v42;
      }
    }

    else
    {
      v41 = v47;
      v37 = v40;
      v42 = v40;
    }

    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v30, v31, v32, v33, v34, v35, v36, *v37[1]);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t webrtc::BitrateProber::ProbeSent(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 48))
  {
    v8 = *(*(result + 16) + 8 * (*(result + 40) / 0x49uLL)) + 56 * (*(result + 40) % 0x49uLL);
    v9 = *(v8 + 24);
    if (!v9)
    {
      *(v8 + 48) = a2;
    }

    v10 = *(v8 + 28) + a3;
    *(v8 + 24) = v9 + 1;
    *(v8 + 28) = v10;
    v11 = *v8;
    if (*v8 > 0)
    {
      v12 = *(v8 + 48);
      if ((v12 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
      {
LABEL_18:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/bitrate_prober.cc", 205, "cluster.started_at.IsFinite()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v18);
        return webrtc::FieldTrialParameter<webrtc::TimeDelta>::~FieldTrialParameter(v17);
      }

      *(result + 56) = 8000000 * v10 / v11 + v12;
      if (*(v8 + 28) < *(v8 + 16) || *(v8 + 24) < *(v8 + 12))
      {
        goto LABEL_12;
      }

      v11 = *(result + 48);
      if (v11)
      {
        v13 = *(result + 16);
        v14 = *(result + 40);
        if (*(v13 + ((((v14 * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8)))
        {
          v15 = v11 - 1;
          *(result + 40) = v14 + 1;
          *(result + 48) = v11 - 1;
          if (v14 + 1 < 0x92)
          {
            goto LABEL_13;
          }

          v16 = result;
          operator delete(*v13);
          result = v16;
          *(v16 + 16) += 8;
          *(v16 + 40) -= 73;
LABEL_12:
          v15 = *(result + 48);
LABEL_13:
          if (!v15)
          {
            *result = 1;
          }

          return result;
        }
      }

      __break(1u);
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/pacing/bitrate_prober.cc", 204, "cluster.pace_info.send_bitrate.bps() > 0", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)3,long long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int> const&)::t, a5, a6, a7, a8, v11);
    goto LABEL_18;
  }

  return result;
}

uint64_t webrtc::FieldTrialParameter<webrtc::TimeDelta>::~FieldTrialParameter(uint64_t a1)
{
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void webrtc::FieldTrialParameter<webrtc::TimeDelta>::~FieldTrialParameter(uint64_t a1)
{
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialParameter<webrtc::TimeDelta>::Parse(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    return 0;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    v3 = webrtc::ParseTypedParameter<webrtc::TimeDelta>(*a2, *(a2 + 8));
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = webrtc::ParseTypedParameter<webrtc::TimeDelta>(a2, *(a2 + 23));
    if (v4)
    {
LABEL_4:
      *(a1 + 64) = v3;
      return 1;
    }
  }

  return 0;
}

void *std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

LABEL_13:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void webrtc::webrtc_logging_impl::MakeVal<webrtc::DataRate,(void *)0>(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v14, 0, sizeof(v14));
  webrtc::ToString(*a1, __p);
  v3 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = __p[1];
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    goto LABEL_49;
  }

  if (v5 <= 0x16)
  {
    if (v5)
    {
      v7 = (&v14.__r_.__value_.__l.__data_ + v5);
      if (&v14 <= v4 && v7 > v4)
      {
        goto LABEL_49;
      }

      memmove(&v14, v4, v5);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        v14.__r_.__value_.__l.__size_ = v5;
        *v7 = 0;
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      *(&v14.__r_.__value_.__s + 23) = v5;
      *v7 = 0;
    }

    if ((v3 & 0x80) != 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v14, 0x16uLL, v5 - 22, 0, 0, 0, v5, v4);
    if ((v16 & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v14;
  }

  else
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = size == 0;
  }

  if (!v11)
  {
    goto LABEL_49;
  }

  if (size >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_50;
  }

  if (size > 0x16)
  {
    operator new();
  }

  *(&a2->__r_.__value_.__s + 23) = size;
  v12 = (a2 + size);
  if (a2 <= v9 && v12 > v9)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (size)
  {
    memmove(a2, v9, size);
  }

  v12->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

unint64_t webrtc::BitrateTracker::Rate(webrtc::BitrateTracker *this, Timestamp a2)
{
  v2 = a2.var0 / 0x3E8;
  if (a2.var0 % 0x3E8 > 0x1F3)
  {
    ++v2;
  }

  if (-a2.var0 % 0x3E8uLL <= 0x1F4)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (a2.var0 < 0)
  {
    v4 = v3 - -a2.var0 / 0x3E8uLL;
  }

  else
  {
    v4 = v2;
  }

  result = webrtc::RateStatistics::Rate(this, v4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t webrtc::BitstreamReader::ReadBits(uint8x16_t *this, int a2)
{
  v3 = &this->u64[1];
  v2 = this->i32[2];
  this->i8[12] = 0;
  if (a2 < 0 || (v4 = v2 - a2, v2 < a2))
  {
    v3->i32[0] = -1;
    return 0;
  }

  v5 = -v2 < 0;
  v6 = -v2 & 7;
  v7 = v2 & 7;
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v6;
  }

  v3->i32[0] = v4;
  if (v8 > a2)
  {
    return (*this->i64[0] >> (v8 - a2)) & ~(-1 << a2);
  }

  if (v8 < 1)
  {
    v9 = 0;
    v11 = a2;
    if (a2 < 8)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v11 = a2 - v8;
    v9 = (*this->i64[0]++ & ~(-1 << v8)) << (a2 - v8);
    if (a2 - v8 < 8)
    {
      goto LABEL_32;
    }
  }

  v12 = this->i64[0];
  v13 = v11;
  v14 = (v8 & (v8 >> 31)) + a2;
  if (v11 >= 15)
  {
    v15 = 15;
  }

  else
  {
    v15 = v11;
  }

  v16 = v14 - (v8 + v15) + 7;
  if (v16 < 0x78)
  {
    goto LABEL_29;
  }

  if (v11 >= 15)
  {
    v11 = 15;
  }

  if (&v12->i8[((v14 - (v8 + v11) + 7) >> 3) + 1] <= this || v12 >= v3)
  {
    v18 = (v16 >> 3) + 1;
    v19 = vdupq_n_s64(v13);
    v20 = vaddq_s64(v19, xmmword_273B8EFC0);
    v21 = vaddq_s64(v19, xmmword_273B8EFD0);
    v22 = vaddq_s64(v19, xmmword_273B8EFE0);
    v23 = vaddq_s64(v19, xmmword_273B8EFF0);
    v24 = vaddq_s64(v19, xmmword_273B8F000);
    v25 = vaddq_s64(v19, xmmword_273B8F010);
    v26 = vaddq_s64(v19, xmmword_273B8F020);
    v27 = vaddq_s64(v19, xmmword_273B8F030);
    v28 = v9;
    v29 = 0uLL;
    v30 = vdupq_n_s64(0xFFFFFFF8uLL);
    v31.i64[0] = 0xFFFFFFFFLL;
    v31.i64[1] = 0xFFFFFFFFLL;
    v32 = vdupq_n_s64(0xFFFFFFFFFFFFFF80);
    v11 = v13 - 8 * (v18 & 0x3FFFFFF0);
    v33 = &v12->i8[v18 & 0x3FFFFFF0];
    v34 = v18 & 0x3FFFFFF0;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    do
    {
      v41 = *v12++;
      v42 = vmovl_u8(*v41.i8);
      v43 = vmovl_high_u8(v41);
      v44 = vmovl_u16(*v43.i8);
      v45 = vmovl_high_u16(v43);
      v46.i64[0] = v45.u32[2];
      v46.i64[1] = v45.u32[3];
      v47 = vshlq_u64(v46, vandq_s8(vaddq_s64(v20, v30), v31));
      v48 = vmovl_u16(*v42.i8);
      v46.i64[0] = v45.u32[0];
      v46.i64[1] = v45.u32[1];
      v49 = vshlq_u64(v46, vandq_s8(vaddq_s64(v21, v30), v31));
      v46.i64[0] = v48.u32[0];
      v46.i64[1] = v48.u32[1];
      v50 = vshlq_u64(v46, vandq_s8(vaddq_s64(v27, v30), v31));
      v46.i64[0] = v44.u32[2];
      v46.i64[1] = v44.u32[3];
      v51 = vshlq_u64(v46, vandq_s8(vaddq_s64(v22, v30), v31));
      v52 = vmovl_high_u16(v42);
      v46.i64[0] = v48.u32[2];
      v46.i64[1] = v48.u32[3];
      v53 = vshlq_u64(v46, vandq_s8(vaddq_s64(v26, v30), v31));
      v46.i64[0] = v52.u32[0];
      v46.i64[1] = v52.u32[1];
      v54 = vshlq_u64(v46, vandq_s8(vaddq_s64(v25, v30), v31));
      v46.i64[0] = v44.u32[0];
      v46.i64[1] = v44.u32[1];
      v55 = vshlq_u64(v46, vandq_s8(vaddq_s64(v23, v30), v31));
      v46.i64[0] = v52.u32[2];
      v46.i64[1] = v52.u32[3];
      v36 = vorrq_s8(vshlq_u64(v46, vandq_s8(vaddq_s64(v24, v30), v31)), v36);
      v37 = vorrq_s8(v55, v37);
      v35 = vorrq_s8(v54, v35);
      v29 = vorrq_s8(v53, v29);
      v38 = vorrq_s8(v51, v38);
      v28 = vorrq_s8(v50, v28);
      v39 = vorrq_s8(v49, v39);
      v40 = vorrq_s8(v47, v40);
      v26 = vaddq_s64(v26, v32);
      v27 = vaddq_s64(v27, v32);
      v25 = vaddq_s64(v25, v32);
      v24 = vaddq_s64(v24, v32);
      v23 = vaddq_s64(v23, v32);
      v22 = vaddq_s64(v22, v32);
      v21 = vaddq_s64(v21, v32);
      v20 = vaddq_s64(v20, v32);
      v34 -= 16;
    }

    while (v34);
    this->i64[0] = v12;
    v56 = vorrq_s8(vorrq_s8(vorrq_s8(v28, v37), vorrq_s8(v35, v39)), vorrq_s8(vorrq_s8(v29, v38), vorrq_s8(v36, v40)));
    v9 = vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    if ((v18 & 0x3FFFFFF0) == v18)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_29:
    v11 = v13;
    v33 = this->i64[0];
  }

  v57 = v11 + 8;
  v58 = (v11 - 8);
  v59 = v33 + 1;
  do
  {
    v11 -= 8;
    v9 |= *(v59 - 1) << v58;
    this->i64[0] = v59;
    v57 -= 8;
    v58 -= 8;
    ++v59;
  }

  while (v57 > 15);
LABEL_32:
  if (v11 < 1)
  {
    return v9;
  }

  return v9 | (*this->i64[0] >> (8 - v11));
}

uint64_t webrtc::BitstreamReader::ReadBit(webrtc::BitstreamReader *this)
{
  *(this + 12) = 0;
  v1 = *(this + 2);
  if (v1 <= 0)
  {
    *(this + 2) = -1;
    return 0;
  }

  else
  {
    v2 = v1 - 1;
    *(this + 2) = v1 - 1;
    v3 = *this;
    v4 = v2 & 7;
    if (v4)
    {
      return (*v3 >> v4) & 1;
    }

    else
    {
      *this = v3 + 1;
      return *v3 & 1;
    }
  }
}

unint64_t webrtc::BitstreamReader::ReadNonSymmetric(webrtc::BitstreamReader *this, unsigned int a2)
{
  v2 = __clz(a2);
  v3 = 1 << -v2;
  v4 = v3 - a2;
  *(this + 12) = 0;
  if (!a2 || (v5 = 31 - v2, v6 = *(this + 2), v7 = v6 - v5, v6 < v5))
  {
    v11 = 0;
    *(this + 2) = -1;
    if (v3 == a2)
    {
LABEL_25:
      *(this + 2) = -1;
      return 2 * v11 - v4;
    }

    return v11;
  }

  v8 = -v6 < 0;
  v9 = -v6 & 7;
  v10 = *(this + 2) & 7;
  if (!v8)
  {
    v10 = -v9;
  }

  *(this + 2) = v7;
  if (v10 > v5)
  {
    v11 = (**this >> (v10 - v5)) & ~(-1 << v5);
    goto LABEL_21;
  }

  if (v10 < 1)
  {
    v11 = 0;
    if (v5 < 8)
    {
      goto LABEL_19;
    }

LABEL_13:
    v13 = v5;
    v14 = *this;
    v15 = v5 - 8;
    v11 |= *(*this)++ << (v5 - 8);
    if (v5 >= 16)
    {
      v16 = v5 - 16;
      v11 |= v14[1] << (v13 - 16);
      *this = v14 + 2;
      if (v15 < 16)
      {
        v15 = v13 - 16;
      }

      else
      {
        v15 = v13 - 24;
        v11 |= v14[2] << (v13 - 24);
        *this = v14 + 3;
        if (v16 >= 16)
        {
          v15 = v13 - 32;
          v11 |= v14[3] << (v13 - 32);
          *this = v14 + 4;
        }
      }
    }

    v5 = v15;
    goto LABEL_19;
  }

  v5 -= v10;
  v11 = (*(*this)++ & ~(-1 << v10)) << v5;
  if (v5 >= 8)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (v5 >= 1)
  {
    v11 |= **this >> (8 - v5);
  }

LABEL_21:
  if (v11 < v4)
  {
    return v11;
  }

  *(this + 12) = 0;
  if (v7 <= 0)
  {
    goto LABEL_25;
  }

  v17 = v7 - 1;
  *(this + 2) = v7 - 1;
  v18 = *this;
  v19 = v17 & 7;
  if (v19)
  {
    return ((*v18 >> v19) & 1) - v4 + 2 * v11;
  }

  *this = v18 + 1;
  return (*v18 & 1) - v4 + 2 * v11;
}

uint64_t webrtc::BitstreamReader::ReadExponentialGolomb(webrtc::BitstreamReader *this)
{
  v1 = 0;
  v2 = *(this + 2);
  v3 = v2 - 1;
  v4 = v2 + 7;
  v5 = 1;
  while (1)
  {
    *(this + 12) = 0;
    if (!((v2 & ~(v2 >> 31)) + v1))
    {
LABEL_10:
      *(this + 2) = -1;
      return 0;
    }

    *(this + 2) = v3 + v1;
    v7 = *this;
    v8 = (v3 + v1) & 7;
    if (!v8)
    {
      *this = v7 + 1;
      if (*v7++ & 1)
      {
        break;
      }

      goto LABEL_3;
    }

    if ((*v7 >> v8))
    {
      break;
    }

LABEL_3:
    --v1;
    v5 += 2;
    v4 += 7;
    if (v1 == -32)
    {
      goto LABEL_10;
    }
  }

  *(this + 12) = 0;
  v9 = -v1;
  if (v2 + v1 <= -v1)
  {
    *(this + 2) = -1;
    return ~(-1 << v9);
  }

  else
  {
    *(this + 2) = v2 - v5;
    if (v8 > v9)
    {
      LODWORD(v10) = (*v7 >> ((v4 & 7) + v1)) & ~(-1 << v9);
      return (v10 + ~(-1 << v9));
    }

    if (v8)
    {
      v12 = -v1 - (v4 & 7);
      v13 = *v7++;
      v10 = (v13 & ~(-1 << v8)) << v12;
      *this = v7;
      if (v12 < 8)
      {
        goto LABEL_22;
      }

LABEL_16:
      v14 = v12 - 8;
      v15 = v7 + 1;
      v10 |= *v7 << (v12 - 8);
      *this = v7 + 1;
      if (v12 >= 16)
      {
        v10 |= v7[1] << (v12 - 16);
        v15 = v7 + 2;
        *this = v7 + 2;
        if (v14 >= 16)
        {
          v14 = v12 - 24;
          v10 |= v7[2] << (v12 - 24);
          v7 += 3;
          *this = v7;
          goto LABEL_21;
        }

        v14 = v12 - 16;
      }

      v7 = v15;
LABEL_21:
      v12 = v14;
    }

    else
    {
      v10 = 0;
      v12 = v9;
      if (v9 >= 8)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    if (v12 < 1)
    {
      return (v10 + ~(-1 << v9));
    }

    else
    {
      return (v10 | (*v7 >> (8 - v12))) + ~(-1 << v9);
    }
  }
}

void std::string::__shrink_or_extend[abi:sn200100](_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    LOBYTE(v4) = __dst[23];
    v5 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new();
  }

  v3 = *(__dst + 1);
  v4 = HIBYTE(*(__dst + 2));
  v5 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *__dst;
  if ((v4 & 0x80) != 0)
  {
    v5 = 1;
    v7 = *(__dst + 1) + 1;
    if (v7 >= 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

  v7 = v4 + 1;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v6 >= __dst && &__dst[v7] > v6)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    memmove(__dst, v6, v7);
  }

  if (v5)
  {
    operator delete(v6);
  }

  __dst[23] = v3 & 0x7F;
}

uint64_t webrtc::BlockBuffer::BlockBuffer(uint64_t this, unint64_t a2, int a3, int a4)
{
  *this = a2;
  if (a4 * a3)
  {
    if (!(((a4 * a3) << 6) >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 32) = 0;
  return this;
}

void *webrtc::BlockDelayBuffer::BlockDelayBuffer(void *this, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  *this = a4;
  this[1] = a5;
  if (a5)
  {
    if (!(a5 >> 62))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3)
  {
    if (a3 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[2] = 0;
  this[3] = 0;
  this[4] = 0;
  if (a2)
  {
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  this[5] = 0;
  return this;
}

uint64_t *webrtc::BlockDelayBuffer::DelaySignal(uint64_t *this, webrtc::AudioBuffer *a2)
{
  v2 = this[1];
  if (v2)
  {
    v3 = this[2];
    v4 = this[3] - v3;
    if (!v4)
    {
LABEL_40:
      __break(1u);
      return this;
    }

    v5 = v3[1] - *v3;
    if (v5)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      v7 = v2 - 1;
      v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v9 = this[5];
      v10 = *(a2 + 11);
      if (v10)
      {
        v11 = 0;
        v12 = *(v10 + 56);
        v13 = *(v10 + 16);
        if (v8 <= 1)
        {
          v8 = 1;
        }

        if (v6 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v6;
        }

LABEL_11:
        v15 = 0;
        v16 = &v3[3 * v11];
        v17 = *v16;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 3);
        while (v15 != v18)
        {
          v19 = *this;
          v20 = v9;
          if (*this)
          {
            v21 = *(v17 + 24 * v15);
            v22 = *(v13 + 8 * v11 * v12 + 8 * v15);
            v20 = v9;
            do
            {
              v23 = *(v21 + 4 * v20);
              *(v21 + 4 * v20) = *v22;
              *v22++ = v23;
              if (v20 < v7)
              {
                ++v20;
              }

              else
              {
                v20 = 0;
              }

              --v19;
            }

            while (v19);
          }

          if (++v15 == v8)
          {
            if (++v11 == v14)
            {
              goto LABEL_22;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
        v24 = 0;
        v25 = *(a2 + 10);
        v26 = *(v25 + 56);
        v27 = *(v25 + 16);
        if (v8 <= 1)
        {
          v8 = 1;
        }

        if (v6 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v6;
        }

LABEL_30:
        v29 = 0;
        v30 = &v3[3 * v24];
        v31 = *v30;
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v30[1] - *v30) >> 3);
        while (v29 != v32)
        {
          v33 = *this;
          v20 = v9;
          if (*this)
          {
            v34 = *(v31 + 24 * v29);
            v35 = *(v27 + 8 * v24 * v26 + 8 * v29);
            v20 = v9;
            do
            {
              v36 = *(v34 + 4 * v20);
              *(v34 + 4 * v20) = *v35;
              *v35++ = v36;
              if (v20 < v7)
              {
                ++v20;
              }

              else
              {
                v20 = 0;
              }

              --v33;
            }

            while (v33);
          }

          if (++v29 == v8)
          {
            if (++v24 == v28)
            {
              goto LABEL_22;
            }

            goto LABEL_30;
          }
        }
      }

      goto LABEL_40;
    }

    v20 = 0;
LABEL_22:
    this[5] = v20;
  }

  return this;
}