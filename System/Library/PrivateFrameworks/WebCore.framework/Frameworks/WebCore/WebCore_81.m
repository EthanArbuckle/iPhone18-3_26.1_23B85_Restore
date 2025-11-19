uint64_t webrtc::WebRtcVideoSendChannel::AddSendStream(webrtc::WebRtcVideoSendChannel *this, unsigned int **a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::StreamParams::ToString(a2, &v35), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc"), SBYTE7(v36) < 0))
  {
    operator delete(v35);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }
  }

  v13 = a2[3];
  v14 = a2[4];
  if (v13 == v14)
  {
LABEL_26:
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v40 = 1;
    v41 = 1460;
    v42 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = -1;
    v47 = 0;
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v51 = 0;
    v52 = xmmword_273BA3430;
    v53 = -1;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v57 = 0xFFFFFFFF00000000;
    v60 = 0;
    v58 = 0;
    v59 = 0;
    v61 = 0;
    v62 = 0;
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v66 = 0;
    v67 = 1000;
    v70 = 0;
    v68 = this + 16;
    v69 = 0;
    v72 = 0;
    v71 = 0;
    v73 = 16842753;
    v74 = 0;
    webrtc::SSLStreamAdapter::GetDefaultEphemeralKeyExchangeCipherGroups(0);
  }

  v15 = this + 200;
  if (!*(this + 25))
  {
    do
    {
LABEL_19:
      v30 = *v13;
      v31 = *v15;
      if (!*v15)
      {
LABEL_25:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v32 = v31;
          v33 = *(v31 + 28);
          if (v30 >= v33)
          {
            break;
          }

          v31 = *v32;
          if (!*v32)
          {
            goto LABEL_25;
          }
        }

        if (v33 >= v30)
        {
          break;
        }

        v31 = v32[1];
        if (!v31)
        {
          goto LABEL_25;
        }
      }

      ++v13;
    }

    while (v13 != v14);
    goto LABEL_26;
  }

  v16 = a2[3];
  while (1)
  {
    v17 = *v16;
    v18 = this + 200;
    v19 = *(this + 25);
    do
    {
      v20 = *(v19 + 7);
      v21 = v20 >= v17;
      v22 = v20 < v17;
      if (v21)
      {
        v18 = v19;
      }

      v19 = *&v19[8 * v22];
    }

    while (v19);
    if (v18 != v15 && v17 >= *(v18 + 7))
    {
      break;
    }

    if (++v16 == v14)
    {
      goto LABEL_19;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  return 0;
}

uint64_t webrtc::anonymous namespace::ValidateStreamParams(webrtc::_anonymous_namespace_ *this, const webrtc::StreamParams *a2)
{
  v111 = *MEMORY[0x277D85DE8];
  if (*(this + 3) != *(this + 4))
  {
    v107 = 0;
    v108 = 0;
    v106 = &v107;
    v3 = *(this + 6);
    v4 = *(this + 7);
    if (v3 != v4)
    {
      while (1)
      {
        v5 = *(v3 + 3);
        if (*(v3 + 4) == v5)
        {
          goto LABEL_144;
        }

        if (*(v3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v110, *v3, *(v3 + 1));
        }

        else
        {
          v6 = *v3;
          v110.__r_.__value_.__r.__words[2] = *(v3 + 2);
          *&v110.__r_.__value_.__l.__data_ = v6;
        }

        v104 = 0;
        p_p = 0;
        v103 = &v104;
        if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v103, &v104, &__p, v95, &v110.__r_.__value_.__l.__data_))
        {
          operator new();
        }

        v7 = v107;
        if (!v107)
        {
LABEL_18:
          operator new();
        }

        v8 = *v5;
        while (1)
        {
          while (1)
          {
            v9 = v7;
            v10 = *(v7 + 8);
            if (v8 >= v10)
            {
              break;
            }

            v7 = *v9;
            if (!*v9)
            {
              goto LABEL_18;
            }
          }

          if (v10 >= v8)
          {
            break;
          }

          v7 = v9[1];
          if (!v7)
          {
            goto LABEL_18;
          }
        }

        std::__tree<webrtc::SocketAddress>::destroy(&v103, v104);
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((v9 + 5), v3);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 3;
        if (v3 == v4)
        {
          goto LABEL_24;
        }
      }

      v76 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>();
      if (v76)
      {
LABEL_143:
        v56 = 0;
        goto LABEL_150;
      }

      v103 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
      v104 = 2611;
      p_p = &__p;
      if (*(v3 + 4) != *(v3 + 3))
      {
        webrtc::StreamParams::ToString(this, &v110);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v77, v78, v79, v80, v81, v82, v83, v103);
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        goto LABEL_143;
      }

LABEL_144:
      __break(1u);
LABEL_145:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::StreamParams::ToString(this, &v110);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v84, v85, v86, v87, v88, v89, v90, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }
      }

LABEL_148:
      v56 = 0;
      v75 = v103;
      if (!v103)
      {
        goto LABEL_150;
      }

LABEL_149:
      v104 = v75;
      operator delete(v75);
LABEL_150:
      std::__tree<std::__value_type<unsigned int,std::set<std::string>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<std::string>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<std::string>>>>::destroy(v107);
      return v56;
    }

LABEL_24:
    v103 = 0;
    v104 = 0;
    p_p = 0;
    webrtc::StreamParams::GetPrimarySsrcs(this, &v103);
    v12 = 0;
    v109[0] = "FID";
    v109[1] = "FEC-FR";
    while (1)
    {
      v14 = v109[v12];
      if (!v14)
      {
        goto LABEL_144;
      }

      v15 = strlen(v109[v12]);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_152;
      }

      if (v15 > 0x16)
      {
        operator new();
      }

      *(&v110.__r_.__value_.__s + 23) = v15;
      v16 = (&v110 + v15);
      if (&v110 <= v14 && v16 > v14)
      {
        goto LABEL_144;
      }

      if (v15)
      {
        memmove(&v110, v14, v15);
      }

      v16->__r_.__value_.__s.__data_[0] = 0;
      v18 = *(this + 6);
      v19 = *(this + 7);
      v20 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      if (v18 == v19)
      {
LABEL_59:
        v26 = 0;
        if (v20 < 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v110.__r_.__value_.__l.__size_;
        }

        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v110;
        }

        else
        {
          v22 = v110.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v23 = *(v18 + 23);
          v24 = v23;
          if ((v23 & 0x80u) != 0)
          {
            v23 = *(v18 + 8);
          }

          if (v23 == size)
          {
            v25 = v24 >= 0 ? v18 : *v18;
            if (!memcmp(v25, v22, size) && *(v18 + 32) != *(v18 + 24))
            {
              break;
            }
          }

          v18 += 48;
          if (v18 == v19)
          {
            goto LABEL_59;
          }
        }

        v26 = 1;
        if (v20 < 0)
        {
LABEL_57:
          operator delete(v110.__r_.__value_.__l.__data_);
          if (v26)
          {
            goto LABEL_61;
          }

          goto LABEL_28;
        }
      }

      if (v26)
      {
LABEL_61:
        memset(&v110, 0, sizeof(v110));
        v27 = strlen(v14);
        if (v27 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_152:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (v27 > 0x16)
        {
          operator new();
        }

        HIBYTE(v102) = v27;
        v28 = (&__p + v27);
        if (&__p <= v14 && v28 > v14)
        {
          goto LABEL_144;
        }

        if (v27)
        {
          memmove(&__p, v14, v27);
        }

        v28->__r_.__value_.__s.__data_[0] = 0;
        webrtc::StreamParams::GetSecondarySsrcs(this, &__p, &v103, &v110);
        if (SHIBYTE(v102) < 0)
        {
          operator delete(__p);
          v30 = v110.__r_.__value_.__l.__size_;
          v29 = v110.__r_.__value_.__r.__words[0];
          if (v110.__r_.__value_.__r.__words[0] == v110.__r_.__value_.__l.__size_)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v30 = v110.__r_.__value_.__l.__size_;
          v29 = v110.__r_.__value_.__r.__words[0];
          if (v110.__r_.__value_.__r.__words[0] == v110.__r_.__value_.__l.__size_)
          {
            goto LABEL_25;
          }
        }

        v31 = *(this + 4);
        v32 = v29;
        if (*(this + 3) == v31)
        {
          v33 = *v29;
LABEL_84:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            __p = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
            v101 = v93 & 0xFFFFFFFF00000000 | 0xB03;
            v93 = v101;
            v102 = &v97;
            v98 = "SSRC '";
            v99 = &__p;
            webrtc::StreamParams::ToString(this, v95);
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v42, v43, v44, v45, v46, v47, v48, __p);
            if (v96 < 0)
            {
              operator delete(v95[0]);
            }

            v94 = v94 & 0xFFFFFFFF00000000 | v33;
          }

LABEL_88:
          v13 = 0;
          v29 = v110.__r_.__value_.__r.__words[0];
          if (v110.__r_.__value_.__r.__words[0])
          {
            goto LABEL_26;
          }
        }

        else
        {
          do
          {
            v33 = *v32;
            v34 = *(this + 3);
            while (*v34 != v33)
            {
              if (++v34 == v31)
              {
                goto LABEL_84;
              }
            }

            ++v32;
          }

          while (v32 != v30);
          if (v104 - v103 != v30 - v29)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              webrtc::StreamParams::ToString(this, &__p);
              v92 = v92 & 0xFFFFFFFF00000000 | 0xB43;
              webrtc::webrtc_logging_impl::Log("\r\t\t\n", v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
              if (SHIBYTE(v102) < 0)
              {
                operator delete(__p);
              }
            }

            goto LABEL_88;
          }

LABEL_25:
          v13 = 1;
          if (v29)
          {
LABEL_26:
            v110.__r_.__value_.__l.__size_ = v29;
            operator delete(v29);
          }
        }

        if (!v13)
        {
          goto LABEL_148;
        }
      }

LABEL_28:
      if (++v12 == 2)
      {
        v58 = *(this + 6);
        v57 = *(this + 7);
        if (v58 == v57)
        {
LABEL_137:
          v56 = 1;
          v75 = v103;
          if (!v103)
          {
            goto LABEL_150;
          }

          goto LABEL_149;
        }

        v59 = *(this + 4);
        while (2)
        {
          if (*(v58 + 23) < 0)
          {
            v61 = v58[1];
            if (v61 != 3)
            {
              if (v61 != 6)
              {
                goto LABEL_96;
              }

              v60 = *v58;
              goto LABEL_104;
            }

            v67 = *v58;
            if (**v58 != *"FID" || *(*v58 + 2) != webrtc::kFidSsrcGroupSemantics[2])
            {
              v69 = *v67;
              v70 = *(v67 + 2);
              if (v69 != *"SIM" || v70 != webrtc::kSimSsrcGroupSemantics[2])
              {
LABEL_96:
                v58 += 6;
                if (v58 == v57)
                {
                  goto LABEL_137;
                }

                continue;
              }
            }
          }

          else if (*(v58 + 23) == 3)
          {
            if ((*v58 != *"FID" || *(v58 + 2) != webrtc::kFidSsrcGroupSemantics[2]) && (*v58 != *"SIM" || *(v58 + 2) != webrtc::kSimSsrcGroupSemantics[2]))
            {
              goto LABEL_96;
            }
          }

          else
          {
            v60 = v58;
            if (*(v58 + 23) != 6)
            {
              goto LABEL_96;
            }

LABEL_104:
            v62 = *v60;
            v63 = *(v60 + 2);
            if (v62 != *"FEC-FR" || v63 != *"FR")
            {
              goto LABEL_96;
            }
          }

          break;
        }

        v72 = v58[3];
        v73 = v58[4];
        if (v72 != v73)
        {
          if (*(this + 3) == v59)
          {
            goto LABEL_145;
          }

          do
          {
            v74 = *(this + 3);
            while (*v72 != *v74)
            {
              if (++v74 == v59)
              {
                goto LABEL_145;
              }
            }

            v72 += 2;
          }

          while (v72 != v73);
        }

        goto LABEL_96;
      }
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::StreamParams::ToString(this, &v106);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    if (SHIBYTE(v108) < 0)
    {
      operator delete(v106);
    }
  }

  return 0;
}

uint64_t webrtc::WebRtcVideoSendChannel::RemoveSendStream(webrtc::WebRtcVideoSendChannel *this, unsigned int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v11 = *(this + 19);
  if (!v11)
  {
    return 0;
  }

  v12 = this + 152;
  do
  {
    v13 = *(v11 + 8);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *&v11[8 * v15];
  }

  while (v11);
  if (v12 == this + 152 || *(v12 + 8) > a2)
  {
    return 0;
  }

  v17 = *(v12 + 5);
  v18 = *(v17 + 1);
  v19 = *(v17 + 2);
  if (v18 != v19)
  {
    v21 = (this + 200);
    v20 = *(this + 25);
    if (v20)
    {
LABEL_14:
      v22 = *v18;
      v23 = (this + 200);
      v24 = v20;
      do
      {
        v25 = *(v24 + 7);
        v14 = v25 >= v22;
        v26 = v25 < v22;
        if (v14)
        {
          v23 = v24;
        }

        v24 = v24[v26];
      }

      while (v24);
      if (v23 != v21 && v22 >= *(v23 + 7))
      {
        v27 = v23[1];
        v28 = v23;
        if (v27)
        {
          do
          {
            v29 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v29 = v28[2];
            v30 = *v29 == v28;
            v28 = v29;
          }

          while (!v30);
        }

        if (*(this + 24) == v23)
        {
          *(this + 24) = v29;
        }

        --*(this + 26);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v20, v23);
        operator delete(v23);
      }

      while (++v18 != v19)
      {
        v20 = *v21;
        if (*v21)
        {
          goto LABEL_14;
        }
      }

      v17 = *(v12 + 5);
    }
  }

  v31 = *(v12 + 1);
  if (v31)
  {
    do
    {
      v32 = v31;
      v31 = *v31;
    }

    while (v31);
  }

  else
  {
    v33 = v12;
    do
    {
      v32 = *(v33 + 2);
      v30 = *v32 == v33;
      v33 = v32;
    }

    while (!v30);
  }

  if (*(this + 18) == v12)
  {
    *(this + 18) = v32;
  }

  v34 = *(this + 19);
  --*(this + 20);
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v34, v12);
  operator delete(v12);
  v35 = *(this + 146);
  if (v35)
  {
    v35(this + 1144, this + 192);
  }

  if (v17)
  {
    webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::~WebRtcVideoSendStream(v17);
    MEMORY[0x2743DA540]();
  }

  return 1;
}

uint64_t webrtc::WebRtcVideoSendChannel::GetStats(webrtc::WebRtcVideoSendChannel *this, webrtc::VideoMediaSendInfo *a2)
{
  v4 = a2;
  v271 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v5 != *a2)
  {
    do
    {
      webrtc::VideoSenderInfo::~VideoSenderInfo((v5 - 472));
    }

    while (v5 != v6);
  }

  *(v4 + 8) = v6;
  v8 = *(v4 + 24);
    ;
  }

  v9 = *(v4 + 56);
  *(v4 + 32) = v8;
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(v4 + 48, v9);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = v4 + 56;
  if (*(this + 20))
  {
    v192 = (v4 + 56);
    if (webrtc::g_clock)
    {
      v10 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v10 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v11 = *(this + 101);
    v13 = v11 == -1 || v10 / 1000000 - v11 > 10000;
    v193 = v13;
    if (v13)
    {
      *(this + 101) = v10 / 1000000;
    }

    v191 = v10 / 1000000;
    v15 = *v4;
    v14 = *(v4 + 8);
    if (v14 != *v4)
    {
      do
      {
        webrtc::VideoSenderInfo::~VideoSenderInfo((v14 - 472));
      }

      while (v14 != v15);
    }

    *(v4 + 8) = v15;
    v17 = *(v4 + 24);
      ;
    }

    *(v4 + 32) = v17;
    std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy(v4 + 48, *(v4 + 56));
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 48) = v192;
    v19 = this;
    v20 = *(this + 18);
    if (v20 == (this + 152))
    {
      goto LABEL_348;
    }

    v197 = v4;
    v21 = 0uLL;
    while (1)
    {
      v22 = *(v20 + 5);
      v223 = 0;
      v224 = 0;
      v225 = 0;
      v226 = 0;
      v229 = 0;
      v234 = 0;
      memset(&v221, 0, sizeof(v221));
      LODWORD(v222) = 0;
      v227 = v21;
      *v228 = v21;
      *&v228[9] = v21;
      __src = v21;
      v231 = v21;
      v232 = v21;
      *v233 = v21;
      *&v233[10] = v21;
      LOBYTE(v235) = 0;
      v236 = 0;
      v238[24] = 0;
      v245[0] = 0;
      v245[1] = 0;
      memset(v237, 0, sizeof(v237));
      v238[0] = 0;
      v23 = &v239;
      v241 = 0;
      v239 = 0;
      v240 = 0;
      v242 = v21;
      v243 = v21;
      v244 = v245;
      LOBYTE(v250) = 0;
      v251 = 0;
      v252 = 0;
      v254 = 0;
      v247 = 0;
      v246 = 0uLL;
      v248 = 0uLL;
      v249 = 0;
      memset(v253, 0, 13);
      v255 = 0;
      if (*(v22 + 792) == 1)
      {
        if (v228 != (v22 + 560))
        {
          if (*(v22 + 583) < 0)
          {
            std::string::__assign_no_alias<true>(v228, *(v22 + 560), *(v22 + 568));
            v21 = 0uLL;
            v25 = *(v22 + 792);
            if ((v25 & 1) == 0)
            {
              goto LABEL_372;
            }
          }

          else
          {
            *v228 = *(v22 + 560);
            *&v228[16] = *(v22 + 576);
          }
        }

        *&v228[24] = *(v22 + 556);
        v229 = 1;
      }

      v198 = 0;
      v199 = 0;
      v200 = 0;
      LOBYTE(v209[0]) = 0;
      v211 = 0;
      HIDWORD(v214.__r_.__value_.__r.__words[2]) = 0;
      size = v216;
      memset(v216, 0, 29);
      *v212 = v21;
      *&v212[16] = v21;
      *&v212[32] = v21;
      v213 = v21;
      *&v214.__r_.__value_.__l.__data_ = v21;
      v214.__r_.__value_.__s.__data_[16] = 0;
      v218 = 0;
      v219 = 0;
      v215 = v216;
      v217 = &v218;
      v220[0] = 0;
      *&v220[12] = 0;
      *&v220[4] = 0;
      v26 = *(v22 + 80);
      v196 = v20;
      if (!v26)
      {
        break;
      }

      (*(*v26 + 64))(__p);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v209, __p);
      *&v212[32] = *&__p[2].__r_.__value_.__r.__words[2];
      v213 = *&__p[3].__r_.__value_.__r.__words[1];
      v214 = __p[4];
      *v212 = *&__p[1].__r_.__value_.__r.__words[1];
      *&v212[16] = *&__p[2].__r_.__value_.__l.__data_;
      std::__tree<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__map_value_compare<webrtc::QualityLimitationReason,std::__value_type<webrtc::QualityLimitationReason,long long>,std::less<webrtc::QualityLimitationReason>,true>,std::allocator<std::__value_type<webrtc::QualityLimitationReason,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__tree_node<std::__value_type<webrtc::QualityLimitationReason,long long>,void *> *,long>>(&v215, __p[5].__r_.__value_.__l.__data_, &__p[5].__r_.__value_.__l.__size_);
      v216[2] = __p[6].__r_.__value_.__l.__data_;
      *(&v216[2] + 5) = *(__p[6].__r_.__value_.__r.__words + 5);
      std::__tree<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,std::__tree_node<std::__value_type<unsigned int,webrtc::VideoSendStream::StreamStats>,void *> *,long>>(&v217, __p[6].__r_.__value_.__r.__words[2], __p[7].__r_.__value_.__r.__words);
      *v220 = *(&__p[7].__r_.__value_.__l + 2);
      *&v220[6] = *(&__p[7].__r_.__value_.__r.__words[2] + 6);
      std::__tree<sigslot::_signal_base_interface *>::destroy(&__p[6].__r_.__value_.__r.__words[2], __p[7].__r_.__value_.__l.__data_);
      std::__tree<sigslot::_signal_base_interface *>::destroy(&__p[5], __p[5].__r_.__value_.__l.__size_);
      if (__p[1].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v193 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        if (webrtc::g_clock)
        {
          v27 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
        }

        else
        {
          if (!dword_28100D8E4)
          {
            mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
          }

          v27 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
        }

        webrtc::VideoSendStream::Stats::ToString(v209, v27 / 1000000, __p);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      DWORD2(v243) = HIDWORD(v216[2]);
      DWORD1(v243) = v214.__r_.__value_.__s.__data_[14];
      v249 = BYTE4(v216[3]);
      if (v214.__r_.__value_.__s.__data_[13] == 1)
      {
        DWORD1(v243) = v214.__r_.__value_.__s.__data_[14] | 2;
      }

      HIDWORD(v243) = HIDWORD(v214.__r_.__value_.__r.__words[2]);
      std::__tree<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__map_value_compare<webrtc::QualityLimitationReason,std::__value_type<webrtc::QualityLimitationReason,long long>,std::less<webrtc::QualityLimitationReason>,true>,std::allocator<std::__value_type<webrtc::QualityLimitationReason,long long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<webrtc::QualityLimitationReason,long long>,std::__tree_node<std::__value_type<webrtc::QualityLimitationReason,long long>,void *> *,long>>(&v244, v215, v216);
      LODWORD(v246) = v216[2];
      std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v238, v209);
      if (v237 != (v22 + 32))
      {
        std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>(v237, *(v22 + 32), *(v22 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v22 + 40) - *(v22 + 32)) >> 4));
      }

      size = *&v212[8];
      v241 = *&v212[40];
      LODWORD(v243) = v214.__r_.__value_.__r.__words[1];
      v252 = v220[0];
      *&v242 = *v212;
      *(&v246 + 4) = *&v212[12];
      HIDWORD(v242) = *&v212[8];
      v253[2] = *&v220[8];
      LOWORD(v255) = *&v220[12];
      if (!v219)
      {
        v23 = v22;
        v130 = *(v22 + 88);
        v131 = *(v22 + 96);
        if (v130 != v131)
        {
          v132 = *(&__src + 1);
          while (1)
          {
            v25 = v231;
            if (v132 >= v231)
            {
              break;
            }

            if (!v132)
            {
              goto LABEL_372;
            }

            *v132 = *v130;
            *(v132 + 8) = 0;
            v132 += 16;
            *(&__src + 1) = v132;
            if (++v130 == v131)
            {
              goto LABEL_244;
            }
          }

          v133 = v132 - __src;
          v134 = (v133 >> 4) + 1;
          if (v134 >> 60)
          {
            goto LABEL_395;
          }

          size = (v231 - __src) >> 3;
          if (size <= v134)
          {
            size = (v133 >> 4) + 1;
          }

          v23 = 0x7FFFFFFFFFFFFFF0;
          v25 = 0xFFFFFFFFFFFFFFFLL;
          if (v231 - __src < 0x7FFFFFFFFFFFFFF0uLL)
          {
            v25 = size;
          }

          if (!v25)
          {
            goto LABEL_372;
          }

          if (!(v25 >> 60))
          {
            operator new();
          }

          goto LABEL_394;
        }

LABEL_244:
        if ((v236 & 1) == 0)
        {
          v236 = 1;
        }

        v235 = 0;
        v135 = *(v22 + 1128);
        v136 = *(v22 + 1136);
        if (v135 == v136)
        {
          v138 = 0;
        }

        else
        {
          v137 = v135 + 272;
          do
          {
            v138 = *(v137 - 148);
            if (v138)
            {
              break;
            }

            v68 = v137 == v136;
            v137 += 272;
          }

          while (!v68);
        }

        *&v233[24] = v138 | 0x100;
        DWORD2(v242) = *&v212[8];
        HIDWORD(v246) = *&v212[20];
        v248 = *&v212[24];
        v253[0] = *&v212[20];
        v253[1] = *&v220[8];
        goto LABEL_256;
      }

      v208[0] = 0;
      v208[1] = 0;
      v207 = v208;
      v40 = v217;
      if (v217 == &v218)
      {
        v41 = v22;
        goto LABEL_129;
      }

      do
      {
        if ((*(v40 + 10) - 1) >= 2)
        {
          memcpy(__p[0].__r_.__value_.__r.__words + 4, v40 + 5, 0x158uLL);
          operator new();
        }

        v42 = v40[1];
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
            v43 = v40[2];
            v68 = *v43 == v40;
            v40 = v43;
          }

          while (!v68);
        }

        v40 = v43;
      }

      while (v43 != &v218);
      v44 = v217;
      v41 = v22;
      if (v217 != &v218)
      {
        while (1)
        {
          if (!*(v44 + 10))
          {
            goto LABEL_90;
          }

          if ((v44[6] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:sn200100]();
            goto LABEL_398;
          }

          v45 = *(v44 + 11);
          v46 = v218;
          if (!v218)
          {
            break;
          }

          v47 = &v218;
          do
          {
            v48 = *(v46 + 8);
            v49 = v48 >= v45;
            v50 = v48 < v45;
            if (v49)
            {
              v47 = v46;
            }

            v46 = v46[v50];
          }

          while (v46);
          if (v47 == &v218 || v45 < *(v47 + 8))
          {
            break;
          }

          v60 = v208[0];
          v61 = v208;
LABEL_95:
          v3 = v61;
          if (!v60)
          {
LABEL_99:
            operator new();
          }

          while (1)
          {
            v61 = v60;
            v62 = *(v60 + 8);
            if (v45 < v62)
            {
              v60 = *v61;
              goto LABEL_95;
            }

            if (v62 >= v45)
            {
              break;
            }

            v60 = v61[1];
            if (!v60)
            {
              goto LABEL_99;
            }
          }

          v63 = *(v61 + 7);
          *(v61 + 6) = vaddq_s64(*(v61 + 6), *(v44 + 6));
          *(v61 + 7) = vaddq_s64(v63, *(v44 + 7));
          v64 = v44[16];
          v65 = v61[16];
          v66 = 0x7FFFFFFFFFFFFFFFLL;
          v67 = 0x7FFFFFFFFFFFFFFFLL;
          v68 = v65 == 0x7FFFFFFFFFFFFFFFLL || v64 == 0x7FFFFFFFFFFFFFFFLL;
          if (!v68)
          {
            v67 = 0x8000000000000000;
            v69 = v64 == 0x8000000000000000 || v65 == 0x8000000000000000;
            v70 = v64 + v65;
            if (!v69)
            {
              v67 = v70;
            }
          }

          v61[16] = v67;
          *(v61 + 17) = vaddq_s64(*(v61 + 17), *(v44 + 17));
          *(v61 + 19) = vaddq_s64(*(v61 + 19), *(v44 + 19));
          v71 = v61[21];
          if (v71 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v72 = v44[21];
            if (v72 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v73 = v72 == 0x8000000000000000 || v71 == 0x8000000000000000;
              v66 = v72 + v71;
              if (v73)
              {
                v66 = 0x8000000000000000;
              }
            }
          }

          v61[21] = v66;
          v74 = *(v61 + 12);
          *(v61 + 11) = vaddq_s64(*(v61 + 11), *(v44 + 11));
          *(v61 + 12) = vaddq_s64(v74, *(v44 + 12));
          v75 = v61[26];
          v76 = 0x7FFFFFFFFFFFFFFFLL;
          if (v75 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v77 = v44[26];
            if (v77 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v78 = v77 == 0x8000000000000000 || v75 == 0x8000000000000000;
              v76 = v77 + v75;
              if (v78)
              {
                v76 = 0x8000000000000000;
              }
            }
          }

          v61[26] = v76;
          v79 = v44[11];
          if (v79 < v61[11])
          {
            v61[11] = v79;
          }

          v41 = v22;
          v58 = v44[1];
          if (!v58)
          {
            do
            {
LABEL_126:
              v59 = v44[2];
              v68 = *v59 == v44;
              v44 = v59;
            }

            while (!v68);
            goto LABEL_77;
          }

          do
          {
LABEL_91:
            v59 = v58;
            v58 = *v58;
          }

          while (v58);
LABEL_77:
          v44 = v59;
          if (v59 == &v218)
          {
            goto LABEL_129;
          }
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | 0xE72;
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v51, v52, v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        }

LABEL_90:
        v58 = v44[1];
        if (!v58)
        {
          goto LABEL_126;
        }

        goto LABEL_91;
      }

LABEL_129:
      v206[0] = 0;
      v206[1] = 0;
      v205 = v206;
      v81 = v41[11];
      v80 = v41[12];
      if (v80 != v81)
      {
        operator new();
      }

      if (v41[127] != 1)
      {
        v195 = 0;
        v82 = v207;
        if (v207 == v208)
        {
          goto LABEL_253;
        }

LABEL_133:
        webrtc::VideoSenderInfo::VideoSenderInfo(__p, &v221);
        v83 = *(v82 + 8);
        size = __p[5].__r_.__value_.__l.__size_;
        v25 = __p[5].__r_.__value_.__r.__words[0];
        if (__p[5].__r_.__value_.__r.__words[0] >= __p[5].__r_.__value_.__l.__size_)
        {
          v25 = ((__p[5].__r_.__value_.__r.__words[0] - __p[4].__r_.__value_.__r.__words[2]) >> 4) + 1;
          if (!(v25 >> 60))
          {
            v87 = __p[5].__r_.__value_.__l.__size_ - __p[4].__r_.__value_.__r.__words[2];
            if ((__p[5].__r_.__value_.__l.__size_ - __p[4].__r_.__value_.__r.__words[2]) >> 3 > v25)
            {
              v25 = v87 >> 3;
            }

            v23 = 0x7FFFFFFFFFFFFFF0;
            v49 = v87 >= 0x7FFFFFFFFFFFFFF0;
            size = 0xFFFFFFFFFFFFFFFLL;
            if (v49)
            {
              v25 = 0xFFFFFFFFFFFFFFFLL;
            }

            if (v25)
            {
              if (!(v25 >> 60))
              {
                operator new();
              }

              goto LABEL_394;
            }

            goto LABEL_372;
          }

          goto LABEL_395;
        }

        if (!__p[5].__r_.__value_.__r.__words[0])
        {
          goto LABEL_372;
        }

        *__p[5].__r_.__value_.__l.__data_ = v83;
        *(v25 + 8) = 0;
        __p[5].__r_.__value_.__r.__words[0] = v25 + 16;
        v84 = v41[11];
        v85 = v41[12];
        v86 = v84;
        if (v84 != v85)
        {
          while (*v86 != v83)
          {
            if (++v86 == v85)
            {
              v86 = v41[12];
              break;
            }
          }
        }

        if (v85 == v86 || (v88 = v86 - v84, v89 = v41[14], v88 >= 0xAAAAAAAAAAAAAAABLL * ((v41[15] - v89) >> 3)))
        {
          v201[0] = 0;
          v201[24] = 0;
          v92 = v269;
          if (v269)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v90 = (v89 + 24 * v88);
          if (*(v90 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v201, *v90, *(v90 + 1));
            v201[24] = 1;
            v92 = v269;
            if (v269 != 1)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v91 = *v90;
            *&v201[16] = *(v90 + 2);
            *v201 = v91;
            v201[24] = 1;
            v92 = v269;
            if (v269 != 1)
            {
LABEL_153:
              if (v92)
              {
                if (SHIBYTE(v268) < 0)
                {
                  operator delete(v267);
                }

                v269 = 0;
LABEL_163:
                if (v201[24] != 1)
                {
                  goto LABEL_166;
                }

                goto LABEL_164;
              }

              v267 = *v201;
              v268 = *&v201[16];
              memset(v201, 0, 24);
              v269 = 1;
              if (v201[24] != 1)
              {
                goto LABEL_166;
              }

LABEL_164:
              if ((v201[23] & 0x80000000) != 0)
              {
                operator delete(*v201);
              }

              goto LABEL_166;
            }
          }
        }

        if (!v92)
        {
          goto LABEL_163;
        }

        if (SHIBYTE(v268) < 0)
        {
          operator delete(v267);
        }

        v267 = *v201;
        v268 = *&v201[16];
        v201[23] = 0;
        v201[0] = 0;
        if (v201[24] != 1)
        {
LABEL_166:
          v93 = v206[0];
          if (v206[0])
          {
            v94 = v206;
            v95 = v206[0];
            do
            {
              v96 = *(v95 + 8);
              v49 = v96 >= v83;
              v97 = v96 < v83;
              if (v49)
              {
                v94 = v95;
              }

              v95 = v95[v97];
            }

            while (v95);
            if (v94 != v206 && v83 >= *(v94 + 8))
            {
              while (1)
              {
                while (1)
                {
                  v98 = v93;
                  v99 = *(v93 + 8);
                  if (v83 >= v99)
                  {
                    break;
                  }

                  v93 = *v98;
                  if (!*v98)
                  {
                    goto LABEL_184;
                  }
                }

                if (v99 >= v83)
                {
                  break;
                }

                v93 = v98[1];
                if (!v93)
                {
LABEL_184:
                  operator new();
                }
              }

              __p[8].__r_.__value_.__l.__size_ = v98[5];
              __p[8].__r_.__value_.__s.__data_[16] = 1;
            }
          }

          if (v195)
          {
            v100 = 0;
          }

          else
          {
            v3 = v83 >> 8;
            v100 = v83;
          }

          v101 = v41[141];
          v102 = v41[142];
          if (v195)
          {
            if (v101 != v102)
            {
              v103 = v101 + 272;
              do
              {
                v104 = *(v103 - 148);
                if (v104)
                {
                  break;
                }

                v68 = v103 == v102;
                v103 += 272;
              }

              while (!v68);
LABEL_207:
              LOWORD(__p[7].__r_.__value_.__r.__words[2]) = v104 & 1 | 0x100;
              v107 = *(v82 + 13);
              v108 = *(v82 + 60);
              v109 = v82[12];
              v110 = v82[13];
              v112 = v82[14];
              v111 = v82[15];
              v113 = v82[16];
              v114 = v82[18];
              v23 = v82[20];
              v115 = *(v82 + 54);
              v116 = *(v82 + 220);
              v117 = v82[30];
              v118 = *(v82 + 248);
              v203 = *(v82 + 249);
              v204 = *(v82 + 251);
              v119 = *(v82 + 63);
              v120 = *(v82 + 17);
              *v201 = *(v82 + 16);
              *&v201[16] = v120;
              v202 = *(v82 + 18);
              v18 = *(v82 + 304);
              v121 = *(v82 + 39);
              v122 = *(v82 + 80);
              v257[0] = *(v82 + 324);
              *(v257 + 5) = *(v82 + 329);
              v123 = v82[43];
              v124 = v82[44];
              v125 = *(v82 + 90);
              v4 = *(v82 + 182);
              *(v256 + 7) = *(v82 + 373);
              v256[0] = *(v82 + 366);
              __p[0].__r_.__value_.__r.__words[0] = v110;
              __p[0].__r_.__value_.__l.__size_ = v109 + v112;
              LODWORD(__p[1].__r_.__value_.__l.__data_) = v111;
              v126 = 0x7FFFFFFFFFFFFFFFLL;
              if (__p[8].__r_.__value_.__r.__words[0] != 0x7FFFFFFFFFFFFFFFLL && v113 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v126 = 0x8000000000000000;
                v127 = v113 == 0x8000000000000000 || __p[8].__r_.__value_.__r.__words[0] == 0x8000000000000000;
                v128 = v113 + __p[8].__r_.__value_.__r.__words[0];
                if (!v127)
                {
                  v126 = v128;
                }
              }

              __p[8].__r_.__value_.__r.__words[0] = v126;
              v260 = v107;
              LODWORD(__p[12].__r_.__value_.__r.__words[2]) = v121;
              v259 = v122;
              v265 = v122;
              __p[0].__r_.__value_.__r.__words[2] = v114;
              __p[1].__r_.__value_.__l.__size_ = v23;
              LODWORD(__p[1].__r_.__value_.__r.__words[2]) = v115;
              __p[11].__r_.__value_.__r.__words[2] = v108;
              __p[11].__r_.__value_.__l.__size_ = v116;
              if (v18)
              {
                __p[2].__r_.__value_.__r.__words[2] = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_u32(v118, 8uLL)), v119);
                size = __p[7].__r_.__value_.__l.__size_;
                v25 = __p[7].__r_.__value_.__r.__words[0];
                if (__p[7].__r_.__value_.__r.__words[0] >= __p[7].__r_.__value_.__l.__size_)
                {
                  v25 = ((__p[7].__r_.__value_.__r.__words[0] - __p[6].__r_.__value_.__r.__words[2]) >> 6) + 1;
                  if (!(v25 >> 58))
                  {
                    v129 = __p[7].__r_.__value_.__l.__size_ - __p[6].__r_.__value_.__r.__words[2];
                    if ((__p[7].__r_.__value_.__l.__size_ - __p[6].__r_.__value_.__r.__words[2]) >> 5 > v25)
                    {
                      v25 = v129 >> 5;
                    }

                    v23 = 0x7FFFFFFFFFFFFFC0;
                    v49 = v129 >= 0x7FFFFFFFFFFFFFC0;
                    size = 0x3FFFFFFFFFFFFFFLL;
                    if (v49)
                    {
                      v25 = 0x3FFFFFFFFFFFFFFLL;
                    }

                    if (v25)
                    {
                      if (!(v25 >> 58))
                      {
                        operator new();
                      }

                      goto LABEL_394;
                    }

                    goto LABEL_372;
                  }

                  goto LABEL_398;
                }

                if (!__p[7].__r_.__value_.__r.__words[0])
                {
                  goto LABEL_372;
                }

                *__p[7].__r_.__value_.__l.__data_ = v117;
                *(v25 + 8) = v118;
                *(v25 + 9) = v203;
                *(v25 + 11) = v204;
                *(v25 + 12) = v119;
                *(v25 + 16) = *v201;
                *(v25 + 32) = *&v201[16];
                *(v25 + 48) = v202;
                __p[7].__r_.__value_.__r.__words[0] = v25 + 64;
              }

              size = __p;
              v263 = *(v257 + 4);
              v264 = BYTE4(v257[1]);
              v261 = v123;
              v262 = v124;
              v266 = v125;
              v270 = v4;
              v23 = v256;
              __p[2].__r_.__value_.__r.__words[0] = *(v256 + 2);
              __p[2].__r_.__value_.__s.__data_[8] = BYTE2(v256[1]);
              v25 = v200;
              if (!v200)
              {
                std::vector<webrtc::VideoSenderInfo>::__emplace_back_slow_path<webrtc::VideoSenderInfo const&>(&v198);
              }

              v4 = v197;
              goto LABEL_372;
            }
          }

          else
          {
            if (v101 != v102)
            {
              v105 = v100 | (v3 << 8);
              while (*(v101 + 4) != 1 || *v101 != v105)
              {
                v101 += 272;
                if (v101 == v102)
                {
                  goto LABEL_206;
                }
              }
            }

            if (v101 != v102)
            {
              v104 = *(v101 + 124);
              goto LABEL_207;
            }
          }

LABEL_206:
          v104 = 0;
          goto LABEL_207;
        }

        goto LABEL_164;
      }

      v195 = 0xF0F0F0F0F0F0F0F1 * ((v41[142] - v41[141]) >> 4) > 1;
      v82 = v207;
      if (v207 != v208)
      {
        goto LABEL_133;
      }

LABEL_253:
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v205, v206[0]);
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v207, v208[0]);
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v217, v218);
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v215, v216[0]);
      if (v211 == 1 && v210 < 0)
      {
        operator delete(v209[0]);
      }

      webrtc::VideoSenderInfo::~VideoSenderInfo(&v221.__r_.__value_.__l.__data_);
      v139 = v198;
      if (!v198)
      {
        v21 = 0uLL;
LABEL_278:
        v145 = *(v20 + 1);
        if (v145)
        {
          goto LABEL_343;
        }

        goto LABEL_345;
      }

      v140 = *(v20 + 5);
      v141 = -v198;
      webrtc::VideoSenderInfo::VideoSenderInfo(&v221, v198);
      if (-v198 != 472)
      {
        if (v236 == 1)
        {
          v236 = 0;
        }

        v4 = __src;
        *(&__src + 1) = __src;
        v142 = *(v140 + 88);
        v143 = *(v140 + 96);
        while (v142 != v143)
        {
          v25 = v231;
          if (v4 >= v231)
          {
            v144 = ((v4 - __src) >> 4) + 1;
            if (!(v144 >> 60))
            {
              size = (v231 - __src) >> 3;
              if (size <= v144)
              {
                size = ((v4 - __src) >> 4) + 1;
              }

              v23 = 0x7FFFFFFFFFFFFFF0;
              v25 = 0xFFFFFFFFFFFFFFFLL;
              if (v231 - __src < 0x7FFFFFFFFFFFFFF0uLL)
              {
                v25 = size;
              }

              if (v25)
              {
                if (!(v25 >> 60))
                {
                  operator new();
                }

                goto LABEL_394;
              }

              goto LABEL_372;
            }

LABEL_395:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (!v4)
          {
            goto LABEL_372;
          }

          *v4 = *v142;
          *(v4 + 8) = 0;
          v4 += 16;
          *(&__src + 1) = v4;
          ++v142;
        }

        DWORD2(v242) = HIDWORD(v242);
        v253[1] = v253[2];
        size = 0xCBEEA4E1A08AD8F3 * (v141 >> 3);
        v4 = v197;
        if (size >= 2)
        {
          v25 = v221.__r_.__value_.__r.__words[0];
          v146 = size - 1;
          v147 = (v139 + 892);
          do
          {
            v247 += *(v147 - 13);
            v25 += *(v147 - 105);
            v221.__r_.__value_.__r.__words[0] = v25;
            v221.__r_.__value_.__l.__size_ += *(v147 - 103);
            LODWORD(v222) = v222 + *(v147 - 99);
            v148 = 0x7FFFFFFFFFFFFFFFLL;
            if (v234 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v149 = *(v147 - 57);
              v18 = 0x7FFFFFFFFFFFFFFFLL;
              if (v149 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v18 = 0x8000000000000000;
                v150 = v149 == 0x8000000000000000 || v234 == 0x8000000000000000;
                v148 = v234 + v149;
                if (v150)
                {
                  v148 = 0x8000000000000000;
                }
              }
            }

            v234 = v148;
            v221.__r_.__value_.__r.__words[2] += *(v147 - 101);
            v223 += *(v147 - 97);
            LODWORD(v227) = v227 + *(v147 - 89);
            if (*(v147 - 35) > v240)
            {
              LODWORD(v240) = *(v147 - 35);
            }

            if (*(v147 - 34) > SHIDWORD(v240))
            {
              HIDWORD(v240) = *(v147 - 34);
            }

            v224 += *(v147 - 95);
            v239 = vadd_s32(v239, *(v147 - 37));
            v23 = *(v147 - 63);
            v151 = *(v147 - 65);
            if (v23 != v151)
            {
              v25 = *&v233[8];
              size = *&v233[16];
              if (*&v233[8] >= *&v233[16])
              {
                v25 = ((*&v233[8] - *v233) >> 6) + 1;
                if (!(v25 >> 58))
                {
                  v155 = *&v233[16] - *v233;
                  if ((*&v233[16] - *v233) >> 5 > v25)
                  {
                    v25 = v155 >> 5;
                  }

                  v23 = 0x7FFFFFFFFFFFFFC0;
                  v49 = v155 >= 0x7FFFFFFFFFFFFFC0;
                  size = 0x3FFFFFFFFFFFFFFLL;
                  if (v49)
                  {
                    v25 = 0x3FFFFFFFFFFFFFFLL;
                  }

                  if (v25)
                  {
                    if (!(v25 >> 58))
                    {
                      operator new();
                    }

                    goto LABEL_394;
                  }

LABEL_372:
                  __break(1u);
LABEL_373:
                  v169 = v23 & 0xFFFFFFFFFFFFFFFELL;
                  v170 = v23 & 0xFFFFFFFFFFFFFFFELL;
                  v171 = size;
                  do
                  {
                    *(v171 + 72) = v25;
                    *(v171 + 544) = v25;
                    v171 += 944;
                    v170 -= 2;
                  }

                  while (v170);
                  if (v18 != v169)
                  {
                    goto LABEL_376;
                  }

                  goto LABEL_378;
                }

LABEL_398:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              if (!*&v233[8])
              {
                goto LABEL_372;
              }

              v152 = *v151;
              v153 = v151[1];
              v154 = v151[3];
              *(*&v233[8] + 32) = v151[2];
              *(v25 + 48) = v154;
              *v25 = v152;
              *(v25 + 16) = v153;
              *&v233[8] = v25 + 64;
              v25 = v221.__r_.__value_.__r.__words[0];
            }

            if (*(v147 - 12) == 1)
            {
              if (v251 == 1)
              {
                size = v250;
              }

              else
              {
                size = 0;
                v251 = 1;
                v250 = 0;
                v23 = *(v147 - 12);
                if ((v23 & 1) == 0)
                {
                  goto LABEL_372;
                }
              }

              v250 = *(v147 - 5) + size;
              v251 = 1;
            }

            HIDWORD(v246) += *(v147 - 14);
            v23 = v253[0];
            size = (v253[0] + *v147);
            v253[0] += *v147;
            v248 = vaddq_s64(v248, *(v147 - 11));
            v147 += 118;
            --v146;
          }

          while (v146);
        }
      }

      v156 = *(v4 + 32);
      v25 = *(v4 + 40);
      if (v156 >= v25)
      {
        v157 = *(v4 + 24);
        v18 = 0xCBEEA4E1A08AD8F3;
        size = 1 - 0x34115B1E5F75270DLL * ((v156 - v157) >> 3);
        if (size <= 0x8AD8F2FBA93868)
        {
          v158 = 0xCBEEA4E1A08AD8F3 * ((v25 - v157) >> 3);
          if (2 * v158 > size)
          {
            size = 2 * v158;
          }

          v23 = 0x456C797DD49C34;
          if (v158 >= 0x456C797DD49C34)
          {
            v25 = 0x8AD8F2FBA93868;
          }

          else
          {
            v25 = size;
          }

          if (v25)
          {
            if (v25 <= 0x8AD8F2FBA93868)
            {
              operator new();
            }

            goto LABEL_394;
          }

          goto LABEL_372;
        }

LABEL_396:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v2 = 0x8AD8F2FBA93868;
      v3 = -1601513229;
      if (!v156)
      {
        goto LABEL_372;
      }

      *(v4 + 32) = webrtc::VideoSenderInfo::VideoSenderInfo(v156, &v221) + 472;
      webrtc::VideoSenderInfo::~VideoSenderInfo(&v221.__r_.__value_.__l.__data_);
      v159 = *(v4 + 8);
      do
      {
        v25 = *(v4 + 16);
        if (v159 >= v25)
        {
          size = 1 - 0x34115B1E5F75270DLL * ((v159 - *v4) >> 3);
          if (size <= 0x8AD8F2FBA93868)
          {
            v160 = 0xCBEEA4E1A08AD8F3 * ((v25 - *v4) >> 3);
            if (2 * v160 > size)
            {
              size = 2 * v160;
            }

            v23 = 0x456C797DD49C34;
            if (v160 >= 0x456C797DD49C34)
            {
              v25 = 0x8AD8F2FBA93868;
            }

            else
            {
              v25 = size;
            }

            if (v25)
            {
              if (v25 <= 0x8AD8F2FBA93868)
              {
                operator new();
              }

              goto LABEL_394;
            }

            goto LABEL_372;
          }

          goto LABEL_396;
        }

        if (!v159)
        {
          goto LABEL_372;
        }

        webrtc::VideoSenderInfo::VideoSenderInfo(v159, v139);
        v159 = (v159 + 472);
        *(v4 + 8) = v159;
        v139 = (v139 + 472);
        v21 = 0uLL;
      }

      while (v139);
      v20 = v196;
      if (!v198)
      {
        goto LABEL_278;
      }

      v161 = v199;
      v162 = v198;
      if (v199 != v198)
      {
        do
        {
          webrtc::VideoSenderInfo::~VideoSenderInfo(v161 - 59);
        }

        while (v161 != v198);
        v162 = v198;
      }

      v199 = v198;
      operator delete(v162);
      v21 = 0uLL;
      v145 = *(v196 + 1);
      if (v145)
      {
        do
        {
LABEL_343:
          v163 = v145;
          v145 = *v145;
        }

        while (v145);
        goto LABEL_25;
      }

      do
      {
LABEL_345:
        v163 = *(v20 + 2);
        v68 = *v163 == v20;
        v20 = v163;
      }

      while (!v68);
LABEL_25:
      v20 = v163;
      v19 = this;
      if (v163 == (this + 152))
      {
LABEL_348:
        if (*(v19 + 488) == 1)
        {
          v164 = v19;
          webrtc::Codec::ToCodecParameters((v19 + 240), __p);
          LODWORD(v221.__r_.__value_.__l.__data_) = *(v164 + 63);
          webrtc::RtpCodec::RtpCodec(&v221.__r_.__value_.__r.__words[1], __p);
          v221.__r_.__value_.__l.__size_ = &unk_28829C0B8;
          LODWORD(__src) = __p[4].__r_.__value_.__r.__words[1];
          v165 = *v192;
          if (!*v192)
          {
LABEL_355:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v166 = v165;
              v167 = *(v165 + 32);
              if (SLODWORD(v221.__r_.__value_.__l.__data_) >= v167)
              {
                break;
              }

              v165 = *v166;
              if (!*v166)
              {
                goto LABEL_355;
              }
            }

            if (v167 >= SLODWORD(v221.__r_.__value_.__l.__data_))
            {
              break;
            }

            v165 = v166[1];
            if (!v165)
            {
              goto LABEL_355;
            }
          }

          v221.__r_.__value_.__l.__size_ = &unk_28829C078;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v228[8], *&v228[16]);
          if (v227)
          {
            *(&v227 + 1) = v227;
            operator delete(v227);
          }

          if (SHIBYTE(v223) < 0)
          {
            operator delete(v221.__r_.__value_.__r.__words[2]);
          }

          __p[0].__r_.__value_.__r.__words[0] = &unk_28829C078;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p[3].__r_.__value_.__l.__size_, __p[3].__r_.__value_.__r.__words[2]);
          if (__p[2].__r_.__value_.__l.__size_)
          {
            __p[2].__r_.__value_.__r.__words[2] = __p[2].__r_.__value_.__l.__size_;
            operator delete(__p[2].__r_.__value_.__l.__size_);
          }

          if (__p[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__size_);
          }

          v19 = this;
        }

        (*(**(v19 + 13) + 128))(&v221);
        v25 = v222;
        if (v222 == -1)
        {
          goto LABEL_389;
        }

        size = *v4;
        v168 = *(v4 + 8) - *v4;
        if (v168)
        {
          v18 = 0xCBEEA4E1A08AD8F3 * (v168 >> 3);
          if (v18 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = 0xCBEEA4E1A08AD8F3 * (v168 >> 3);
          }

          if (v18 > 1)
          {
            goto LABEL_373;
          }

          v169 = 0;
LABEL_376:
          v172 = v23 - v169;
          v173 = (size + 472 * v169 + 72);
          do
          {
            *v173 = v25;
            v173 += 59;
            --v172;
          }

          while (v172);
        }

LABEL_378:
        v174 = *(v4 + 24);
        v175 = *(v4 + 32) - v174;
        if (!v175)
        {
          goto LABEL_389;
        }

        v176 = 0xCBEEA4E1A08AD8F3 * (v175 >> 3);
        if (v176 <= 1)
        {
          v177 = 1;
        }

        else
        {
          v177 = 0xCBEEA4E1A08AD8F3 * (v175 >> 3);
        }

        if (v176 > 1)
        {
          v178 = v177 & 0xFFFFFFFFFFFFFFFELL;
          v179 = v177 & 0xFFFFFFFFFFFFFFFELL;
          v180 = *(v4 + 24);
          do
          {
            *(v180 + 72) = v25;
            *(v180 + 544) = v25;
            v180 += 944;
            v179 -= 2;
          }

          while (v179);
          if (v176 == v178)
          {
LABEL_389:
            if (v193 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
            {
              webrtc::Call::Stats::ToString(&v221, v191, __p);
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v183, v184, v185, v186, v187, v188, v189, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }
            }

            return 1;
          }
        }

        else
        {
          v178 = 0;
        }

        v181 = v177 - v178;
        v182 = (v174 + 472 * v178 + 72);
        do
        {
          *v182 = v25;
          v182 += 59;
          --v181;
        }

        while (v181);
        goto LABEL_389;
      }
    }

    v28 = *(v22 + 88);
    v29 = *(v22 + 96);
    if (v28 != v29)
    {
      v30 = *(&__src + 1);
      while (1)
      {
        v25 = v231;
        if (v30 >= v231)
        {
          break;
        }

        if (!v30)
        {
          goto LABEL_372;
        }

        *v30 = *v28;
        *(v30 + 8) = 0;
        v30 += 16;
        *(&__src + 1) = v30;
        if (++v28 == v29)
        {
          goto LABEL_256;
        }
      }

      v31 = v30 - __src;
      v32 = (v31 >> 4) + 1;
      if (v32 >> 60)
      {
        goto LABEL_395;
      }

      size = (v231 - __src) >> 3;
      if (size <= v32)
      {
        size = (v31 >> 4) + 1;
      }

      v23 = 0x7FFFFFFFFFFFFFF0;
      v25 = 0xFFFFFFFFFFFFFFFLL;
      if (v231 - __src < 0x7FFFFFFFFFFFFFF0uLL)
      {
        v25 = size;
      }

      if (!v25)
      {
        goto LABEL_372;
      }

      if (!(v25 >> 60))
      {
        operator new();
      }

LABEL_394:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_256:
    std::vector<webrtc::VideoSenderInfo>::__emplace_back_slow_path<webrtc::VideoSenderInfo const&>(&v198);
  }

  return 1;
}

void webrtc::WebRtcVideoSendChannel::FillBitrateInfo(uint64_t a1, int32x2_t *a2)
{
  v2 = *(a1 + 144);
  v3 = (a1 + 152);
  if (v2 != (a1 + 152))
  {
    do
    {
      v5 = *(v2[5] + 80);
      if (v5)
      {
        (*(*v5 + 64))(&__p);
        v6 = v19;
        if (v19 != v20)
        {
          v7 = a2[2];
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

            v7 = vadd_s32(vrev64_s32(*(v6 + 68)), v7);
            v6 = v10;
          }

          while (v10 != v20);
          a2[2] = v7;
        }

        a2[1] = vadd_s32(a2[1], v17);
        std::__tree<sigslot::_signal_base_interface *>::destroy(&v19, v20[0]);
        std::__tree<sigslot::_signal_base_interface *>::destroy(v18, v18[1]);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(__p);
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
          v11 = *v13 == v2;
          v2 = v13;
        }

        while (!v11);
      }

      v2 = v13;
    }

    while (v13 != v3);
  }
}

uint64_t webrtc::WebRtcVideoSendChannel::OnReadyToSend(webrtc::WebRtcVideoSendChannel *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v9 = *(**(this + 13) + 136);

  return v9();
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoSendChannel::OnReadyToSend(webrtc::WebRtcVideoSendChannel *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v9 = *(**(this + 5) + 136);

  return v9();
}

void webrtc::WebRtcVideoSendChannel::OnNetworkRouteChanged(uint64_t a1, void **a2, size_t a3, __int128 *a4)
{
  v5 = *(a1 + 88);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);
  }

  if (a3 < 0x7FFFFFFFFFFFFFF8)
  {
    if (a3 > 0x16)
    {
      operator new();
    }

    v9 = a3;
    v6 = (&__p + a3);
    if (&__p > a2 || v6 <= a2)
    {
      if (a3)
      {
        memmove(&__p, a2, a3);
      }

      *v6 = 0;
      v7 = a4[1];
      v10 = *a4;
      v11 = v7;
      v12 = *(a4 + 8);
      operator new();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void webrtc::WebRtcVideoSendChannel::SetInterface(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 24) + 4) = a2 != 0;
  *(a1 + 48) = a2;
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 56);
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (!(*(*a2 + 16))(a2, 0, 5, v3))
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(*v4 + 16))(v4, 1, 5, v3);
    }
  }

LABEL_8:
  v5 = (*(**(a1 + 104) + 224))(*(a1 + 104));
  (*(*v5 + 16))(v16);
  v15 = 0x40000;
  if (v17 < 0)
  {
    if (!v16[1])
    {
      v14 = *(a1 + 48);
      if (!v14)
      {
        goto LABEL_21;
      }

LABEL_20:
      (*(*v14 + 16))(v14, 0, 2);
      goto LABEL_21;
    }

    v6 = v16[0];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    v6 = v16;
  }

  if (sscanf(v6, "%d", &v15) == 1 && v15 > 0)
  {
LABEL_19:
    v14 = *(a1 + 48);
    if (!v14)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v15 = 0x40000;
  v14 = *(a1 + 48);
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }
}

void webrtc::WebRtcVideoSendChannel::SetFrameEncryptor(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = *(a1 + 152);
  v3 = a1 + 152;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v17 = *(v6 + 40);
    v18 = *a3;
    if (*a3)
    {
      (**v18)(*a3);
      (**v18)(v18);
    }

    v19 = *(v17 + 57);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    *(v17 + 57) = v18;
    if (*(v17 + 10))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        if (*(v17 + 12) == *(v17 + 11))
        {
          __break(1u);
          return;
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
      }

      webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(v17, v20, v21, v22, v23, v24, v25, v26);
    }

    if (v18)
    {
      v27 = *(*v18 + 8);

      v27(v18);
    }
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }
}

void webrtc::WebRtcVideoSendChannel::SetEncoderSelector(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a1 + 152);
  v3 = a1 + 152;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v17 = *(v6 + 40);
    *(v17 + 58) = a3;
    if (*(v17 + 10))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        if (*(v17 + 12) == *(v17 + 11))
        {
          __break(1u);
          return;
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
      }

      webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }
}

uint64_t webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::WebRtcVideoSendStream(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, char a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v93 = a2;
  *a1 = (*(*a2 + 240))(a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v18 = *(a3 + 24);
  v17 = *(a3 + 32);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v90 = a5;
  v91 = a7;
  v94 = a8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v20 = *(a3 + 48);
  v19 = *(a3 + 56);
  if (v19 != v20)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4) < 0x555555555555556)
    {
      operator new();
    }

LABEL_131:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 56) = v93;
  *(a1 + 64) = a6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  webrtc::RtpConfig::RtpConfig(v96, a4);
  v21 = *(a4 + 344);
  v99 = *(a4 + 328);
  v100 = v21;
  v22 = *(a4 + 312);
  v97 = *(a4 + 296);
  v98 = v22;
  v101 = *(a4 + 360);
  v23 = *(a4 + 368);
  *(a4 + 368) = 0;
  v102 = v23;
  v103 = *(a4 + 384);
  v104 = *(a4 + 388);
  v24 = *(a4 + 392);
  *(a4 + 392) = 0;
  *(a4 + 400) = 0;
  v25 = *(a4 + 408);
  v26 = *(a4 + 416);
  *(a4 + 408) = 0;
  *(a4 + 416) = 0;
  __p = v24;
  v106 = v25;
  v107 = v26;
  webrtc::RtpConfig::RtpConfig((a1 + 88), v96);
  v31 = v100;
  *(a1 + 416) = v99;
  *(a1 + 432) = v31;
  *(a1 + 448) = v101;
  v32 = v98;
  *(a1 + 384) = v97;
  *(a1 + 400) = v32;
  *(a1 + 456) = v102;
  *(a1 + 472) = v103;
  *(a1 + 476) = v104;
  *(a1 + 480) = __p;
  *&v102 = 0;
  __p = 0uLL;
  v33 = v106;
  v34 = v107;
  v106 = 0;
  v107 = 0;
  *(a1 + 496) = v33;
  *(a1 + 504) = v34;
  v35 = *v90;
  *(a1 + 528) = *(v90 + 4);
  *(a1 + 512) = v35;
  *(a1 + 532) = v91;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 792) = 0;
  if (*(a8 + 248) == 1)
  {
    webrtc::Codec::Codec((a1 + 544), a8);
    v36 = *(a8 + 216);
    *(a1 + 769) = *(a8 + 225);
    *(a1 + 760) = v36;
    *(a1 + 792) = 1;
  }

  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  v37 = *(a9 + 8);
  if (v37 != *a9)
  {
    if (0xEF7BDEF7BDEF7BDFLL * ((v37 - *a9) >> 3) < 0x108421084210843)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(a1 + 824) = 0;
  HIBYTE(v109) = 5;
  if (&__src <= "Unset" && &__src + 5 > "Unset")
  {
    goto LABEL_129;
  }

  LODWORD(__src) = *"Unset";
  WORD2(__src) = str_11_10[4];
  *(a1 + 848) = v109;
  *(a1 + 832) = __src;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 856) = a1 + 864;
  *(a1 + 957) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0x3FF0000000000000;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0;
  *(a1 + 1028) = -1;
  if (v107)
  {
    (*(*v107 + 8))(v107);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v102)
  {
    (*(*v102 + 8))(v102);
  }

  webrtc::RtpConfig::~RtpConfig(v96);
  webrtc::StreamParams::StreamParams(&v95, a3);
  webrtc::CreateRtpParametersWithEncodings(&v95, a1 + 1032);
  webrtc::StreamParams::~StreamParams(&v95);
  *(a1 + 1200) = 0;
  v38 = (*(*v93 + 224))(v93);
  (*(*v38 + 16))(&__src);
  v39 = 0;
  v40 = HIBYTE(v109);
  if (v109 < 0)
  {
    v40 = *(&__src + 1);
  }

  if (v40 >= 7)
  {
    p_src = __src;
    if (v109 >= 0)
    {
      p_src = &__src;
    }

    v42 = *p_src;
    v43 = *(p_src + 3);
    v39 = v42 == 1650552389 && v43 == 1684368482;
  }

  if (SHIBYTE(v109) < 0)
  {
    operator delete(__src);
  }

  *(a1 + 1201) = v39;
  v45 = *(a1 + 168);
  if (v45 >= 0x4B0)
  {
    v45 = 1200;
  }

  *(a1 + 168) = v45;
  *(a1 + 536) = *(a11 + 89);
  webrtc::StreamParams::GetPrimarySsrcs(a3, a1 + 88);
  v46 = *(a1 + 88);
  if (v46 == *(a1 + 96))
  {
    goto LABEL_130;
  }

  v47 = *(a1 + 1128);
  if (*(a1 + 1136) == v47 || (*v47 = *v46, *(v47 + 4) = 1, HIBYTE(v109) = 3, &__src <= "FID") && &__src + 3 > "FID")
  {
LABEL_129:
    __break(1u);
LABEL_130:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc", 1823, "!parameters_.config.rtp.ssrcs.empty()", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v27, v28, v29, v30, v89);
    goto LABEL_131;
  }

  LOWORD(__src) = *"FID";
  WORD1(__src) = webrtc::kFidSsrcGroupSemantics[2];
  webrtc::StreamParams::GetSecondarySsrcs(a3, &__src, (a1 + 88), (a1 + 320));
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__src);
  }

  v48 = (*(**(a1 + 56) + 224))(*(a1 + 56));
  (*(*v48 + 16))(&__src);
  v49 = HIBYTE(v109);
  if (v109 < 0)
  {
    v49 = *(&__src + 1);
  }

  if (v49 < 7)
  {
    v50 = 0;
    if (SHIBYTE(v109) < 0)
    {
      goto LABEL_58;
    }

LABEL_56:
    if (!v50)
    {
      goto LABEL_90;
    }

    goto LABEL_59;
  }

  v51 = __src;
  if (v109 >= 0)
  {
    v51 = &__src;
  }

  v52 = *v51;
  v53 = *(v51 + 3);
  v50 = v52 == 1650552389 && v53 == 1684368482;
  if ((SHIBYTE(v109) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_58:
  operator delete(__src);
  if (!v50)
  {
    goto LABEL_90;
  }

LABEL_59:
  v55 = *(a1 + 88);
  v56 = *(a1 + 96);
  if (v55 != v56)
  {
    if (&__src <= "FEC-FR" && &__src + 6 > "FEC-FR")
    {
      goto LABEL_129;
    }

    if (*(a3 + 48) != *(a3 + 56))
    {
      v57 = 0;
      do
      {
        v58 = *v55;
        v59 = *(a3 + 48);
        v60 = *(a3 + 56);
        HIBYTE(v109) = 6;
        strcpy(&__src, "FEC-FR");
        while (v59 != v60)
        {
          v61 = *(v59 + 23);
          v62 = v61;
          if ((v61 & 0x80u) != 0)
          {
            v61 = *(v59 + 8);
          }

          if (v61 == 6)
          {
            v63 = v62 >= 0 ? v59 : *v59;
            v64 = *v63;
            v65 = *(v63 + 2);
            if (v64 == __src && v65 == WORD2(__src))
            {
              v67 = *(v59 + 24);
              v68 = *(v59 + 32) - v67;
              v69 = v68 && v68 >= 5;
              if (v69 && *v67 == v58)
              {
                if (v57)
                {
                  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
                  {
                    v93 = v93 & 0xFFFFFFFF00000000 | 0x3979;
                    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v70, v71, v72, v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
                  }
                }

                else
                {
                  *(a1 + 292) = v67[1];
                  LODWORD(__src) = v58;
                  std::vector<unsigned int>::__assign_with_size[abi:sn200100]<unsigned int const*,unsigned int const*>((a1 + 296), &__src, &__src + 4, 1uLL);
                }

                v57 = 1;
                break;
              }
            }
          }

          v59 += 48;
        }

        ++v55;
      }

      while (v55 != v56);
    }
  }

LABEL_90:
  v77 = (a1 + 352);
  if (a1 + 352 == a3 + 72)
  {
    goto LABEL_102;
  }

  v78 = *(a3 + 95);
  if (*(a1 + 375) < 0)
  {
    if (v78 >= 0)
    {
      v80 = (a3 + 72);
    }

    else
    {
      v80 = *(a3 + 72);
    }

    if (v78 >= 0)
    {
      v81 = *(a3 + 95);
    }

    else
    {
      v81 = *(a3 + 80);
    }

    std::string::__assign_no_alias<false>(v77, v80, v81);
LABEL_102:
    if (*(a10 + 24) != 1)
    {
      goto LABEL_107;
    }

    goto LABEL_103;
  }

  if ((*(a3 + 95) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v77, *(a3 + 72), *(a3 + 80));
    if (*(a10 + 24) != 1)
    {
      goto LABEL_107;
    }
  }

  else
  {
    v79 = *(a3 + 72);
    *(a1 + 368) = *(a3 + 88);
    *&v77->__r_.__value_.__l.__data_ = v79;
    if (*(a10 + 24) != 1)
    {
      goto LABEL_107;
    }
  }

LABEL_103:
  if (a1 + 184 != a10)
  {
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 184), *a10, *(a10 + 8), (*(a10 + 8) - *a10) >> 5);
    if ((*(a10 + 24) & 1) == 0)
    {
      goto LABEL_129;
    }
  }

  if (a1 + 1104 != a10)
  {
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((a1 + 1104), *a10, *(a10 + 8), (*(a10 + 8) - *a10) >> 5);
  }

LABEL_107:
  if (*(a11 + 81))
  {
    v82 = 2;
  }

  else
  {
    v82 = 1;
  }

  *(a1 + 160) = v82;
  v83 = (a1 + 136);
  if (a1 + 136 != a11 + 8)
  {
    v84 = *(a11 + 31);
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      if ((*(a11 + 31) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v83, *(a11 + 8), *(a11 + 16));
        *(a1 + 1184) = *(a11 + 81);
        if (*(v94 + 248) != 1)
        {
          return a1;
        }
      }

      else
      {
        v85 = *(a11 + 8);
        *(a1 + 152) = *(a11 + 24);
        *&v83->__r_.__value_.__l.__data_ = v85;
        *(a1 + 1184) = *(a11 + 81);
        if (*(v94 + 248) != 1)
        {
          return a1;
        }
      }

      goto LABEL_123;
    }

    if (v84 >= 0)
    {
      v86 = (a11 + 8);
    }

    else
    {
      v86 = *(a11 + 8);
    }

    if (v84 >= 0)
    {
      v87 = *(a11 + 31);
    }

    else
    {
      v87 = *(a11 + 16);
    }

    std::string::__assign_no_alias<false>(v83, v86, v87);
  }

  *(a1 + 1184) = *(a11 + 81);
  if (*(v94 + 248) == 1)
  {
LABEL_123:
    webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetCodec(a1, v94, a9);
  }

  return a1;
}

void webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetCodec(uint64_t a1, uint64_t a2, webrtc::Codec **a3)
{
  v5 = a1;
  v98 = *MEMORY[0x277D85DE8];
  webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::CreateVideoEncoderConfig(v97, v5, a2);
  webrtc::VideoEncoderConfig::operator=(v5 + 824, v97);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig(v97);
  v7 = (v5 + 208);
  if (v5 + 208 != a2 + 16)
  {
    v8 = *(a2 + 39);
    if ((*(v5 + 231) & 0x80000000) == 0)
    {
      if ((*(a2 + 39) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v7, *(a2 + 16), *(a2 + 24));
        *(v5 + 232) = *(a2 + 12);
        if (*(a2 + 80) != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v9 = *(a2 + 16);
        *(v5 + 224) = *(a2 + 32);
        *&v7->__r_.__value_.__l.__data_ = v9;
        *(v5 + 232) = *(a2 + 12);
        if (*(a2 + 80) != 1)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_14;
    }

    if (v8 >= 0)
    {
      v10 = (a2 + 16);
    }

    else
    {
      v10 = *(a2 + 16);
    }

    if (v8 >= 0)
    {
      v11 = *(a2 + 39);
    }

    else
    {
      v11 = *(a2 + 24);
    }

    std::string::__assign_no_alias<false>(v7, v10, v11);
  }

  *(v5 + 232) = *(a2 + 12);
  if (*(a2 + 80) != 1)
  {
    goto LABEL_26;
  }

LABEL_14:
  v12 = (a2 + 56);
  v13 = *(a2 + 79);
  if (v13 < 0)
  {
    if (*(a2 + 64) == 3)
    {
      v12 = *v12;
      goto LABEL_19;
    }

LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  if (v13 != 3)
  {
    goto LABEL_26;
  }

LABEL_19:
  v14 = *v12;
  v15 = *(v12 + 2);
  v17 = v14 == webrtc::kPacketizationParamRaw && v15 == 119;
LABEL_27:
  *(v5 + 236) = v17;
  v19 = (a2 + 216);
  v18 = *(a2 + 216);
  *(v5 + 280) = *(a2 + 224);
  *(v5 + 272) = v18;
  *(v5 + 288) = *(a2 + 228);
  if (*(v5 + 320) != *(v5 + 328))
  {
    v20 = *(a2 + 232);
    if (v20 == -1)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v6, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
      }

      *(v5 + 328) = *(v5 + 320);
    }

    else
    {
      *(v5 + 344) = v20;
    }
  }

  HasLntf = webrtc::HasLntf(a2, v6);
  *(v5 + 264) = HasLntf;
  *(v5 + 416) = HasLntf;
  if (webrtc::HasNack(a2, v28))
  {
    v29 = 1000;
  }

  else
  {
    v29 = 0;
  }

  *(v5 + 268) = v29;
  v30 = (v5 + 760);
  v31 = (v5 + 544);
  if (*(v5 + 792) == 1)
  {
    webrtc::Codec::operator=(v31, a2);
    v32 = *v19;
    *(v5 + 769) = *(a2 + 225);
    *v30 = v32;
  }

  else
  {
    webrtc::Codec::Codec(v31, a2);
    v33 = *v19;
    *(v5 + 769) = *(a2 + 225);
    *v30 = v33;
    *(v5 + 792) = 1;
  }

  v34 = a3[1];
  v35 = 0xEF7BDEF7BDEF7BDFLL;
  if (*a3 == v34)
  {
    v43 = *(v5 + 240);
    for (i = *(v5 + 248); ; i -= 80)
    {
      if (i == v43)
      {
        *(v5 + 248) = v43;
        goto LABEL_124;
      }

      if (*(i - 25) < 0)
      {
        operator delete(*(i - 48));
        if ((*(i - 49) & 0x80000000) == 0)
        {
          continue;
        }
      }

      else if ((*(i - 49) & 0x80000000) == 0)
      {
        continue;
      }

      operator delete(*(i - 72));
    }
  }

  v36 = (*(v5 + 96) - *(v5 + 88)) >> 2;
  if (v36 != 0xEF7BDEF7BDEF7BDFLL * ((v34 - *a3) >> 3))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    goto LABEL_124;
  }

  v37 = *(v5 + 240);
  v38 = *(v5 + 248);
  v39 = 0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 4);
  v40 = v36 - v39;
  if (v36 <= v39)
  {
    if (v36 >= v39)
    {
      goto LABEL_72;
    }

    v52 = v37 + 80 * v36;
    while (1)
    {
      if (v38 == v52)
      {
        *(v5 + 248) = v52;
        v54 = *a3;
        if (a3[1] == *a3)
        {
          goto LABEL_124;
        }

LABEL_75:
        v55 = 0;
        v56 = 0;
        v57 = 72;
        v58 = 232;
        v96 = v5;
        while (2)
        {
          v59 = *(v5 + 240);
          if (0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 248) - v59) >> 4) <= v56)
          {
            goto LABEL_129;
          }

          v60 = *(v5 + 88);
          if (v56 >= (*(v5 + 96) - v60) >> 2)
          {
            goto LABEL_129;
          }

          *(v59 + v57 - 72) = *(v60 + 4 * v56);
          v61 = *(v5 + 112);
          if (v56 < 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 120) - v61) >> 3))
          {
            v62 = (v61 + v55);
            v63 = (v59 + v57 - 64);
            if (v63 != (v61 + v55))
            {
              v64 = *(v62 + 23);
              if (*(v59 + v57 - 41) < 0)
              {
                v66 = (v61 + v55);
                v68 = *v66;
                v67 = v66[1];
                if (v64 >= 0)
                {
                  v69 = v62;
                }

                else
                {
                  v69 = v68;
                }

                if (v64 >= 0)
                {
                  v70 = *(v62 + 23);
                }

                else
                {
                  v70 = v67;
                }

                std::string::__assign_no_alias<false>(v63, v69, v70);
              }

              else if ((*(v62 + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(v63, *(v61 + v55), *(v61 + v55 + 8));
              }

              else
              {
                v65 = *v62;
                *(v59 + v57 - 48) = *(v62 + 2);
                *&v63->__r_.__value_.__l.__data_ = v65;
              }
            }
          }

          v71 = a3;
          v72 = v35;
          v73 = v54 + v58;
          v74 = (v54 + v58 - 216);
          v75 = v59 + v57;
          v76 = (v59 + v57 - 40);
          if (v74 != v76)
          {
            v77 = *(v73 - 193);
            if ((*(v75 - 17) & 0x80000000) == 0)
            {
              if ((*(v73 - 193) & 0x80) == 0)
              {
                v78 = *&v74->__r_.__value_.__l.__data_;
                *(v59 + v57 - 24) = *(v54 + v58 - 200);
                *&v76->__r_.__value_.__l.__data_ = v78;
                *(v75 - 16) = *(v73 - 55);
                if (*(v73 - 152) != 1)
                {
                  goto LABEL_97;
                }

LABEL_107:
                v82 = v73 - 176;
                v83 = *(v54 + v58 - 153);
                if ((v83 & 0x80000000) == 0)
                {
                  v35 = v72;
                  a3 = v71;
                  if (v83 != 3)
                  {
                    v79 = 0;
                    goto LABEL_118;
                  }

LABEL_112:
                  v84 = *v82;
                  v85 = v82[2];
                  v79 = v84 == webrtc::kPacketizationParamRaw && v85 == 119;
                  goto LABEL_118;
                }

                v35 = v72;
                if (*(v54 + v58 - 168) == 3)
                {
                  v82 = *v82;
                  a3 = v71;
                  goto LABEL_112;
                }

                v79 = 0;
LABEL_98:
                a3 = v71;
LABEL_118:
                v5 = v96;
                v87 = (v59 + v57);
                *(v59 + v57 - 12) = v79;
                if (v56 < (*(v5 + 328) - *(v5 + 320)) >> 2)
                {
                  *(v87 - 1) = 0xFFFFFFFF00000000;
                  *v87 = 1;
                  v88 = *(v96 + 320);
                  if (v56 >= (*(v96 + 328) - v88) >> 2)
                  {
                    goto LABEL_129;
                  }

                  *(v87 - 2) = *(v88 + 4 * v56);
                  *(v59 + v57 - 4) = *(v54 + v58);
                }

                ++v56;
                v54 = *a3;
                v55 += 24;
                v57 += 80;
                v58 += 248;
                if (v56 >= ((a3[1] - *a3) >> 3) * v35)
                {
                  goto LABEL_124;
                }

                continue;
              }

              std::string::__assign_no_alias<true>(v76, v74->__r_.__value_.__l.__data_, *(v54 + v58 - 208));
              *(v75 - 16) = *(v73 - 55);
              if (*(v73 - 152) == 1)
              {
                goto LABEL_107;
              }

LABEL_97:
              v79 = 0;
              v35 = v72;
              goto LABEL_98;
            }

            if (v77 >= 0)
            {
              v80 = v54 + v58 - 216;
            }

            else
            {
              v80 = v74->__r_.__value_.__r.__words[0];
            }

            if (v77 >= 0)
            {
              v81 = *(v73 - 193);
            }

            else
            {
              v81 = *(v54 + v58 - 208);
            }

            std::string::__assign_no_alias<false>(v76, v80, v81);
          }

          break;
        }

        *(v75 - 16) = *(v73 - 55);
        if (*(v73 - 152) == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_97;
      }

      if (*(v38 - 25) < 0)
      {
        operator delete(*(v38 - 48));
        if ((*(v38 - 49) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }
      }

      else if ((*(v38 - 49) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      operator delete(*(v38 - 72));
LABEL_63:
      v38 -= 80;
    }
  }

  v41 = *(v5 + 256);
  if (0xCCCCCCCCCCCCCCCDLL * ((v41 - v38) >> 4) < v40)
  {
    if (v36 <= 0x333333333333333)
    {
      v42 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v37) >> 4);
      if (2 * v42 > v36)
      {
        v36 = 2 * v42;
      }

      if (v42 >= 0x199999999999999)
      {
        v36 = 0x333333333333333;
      }

      if (v36 <= 0x333333333333333)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v53 = v38 + 80 * v40;
  do
  {
    if (!v38)
    {
LABEL_129:
      __break(1u);
    }

    *(v38 + 48) = 0uLL;
    *(v38 + 64) = 0uLL;
    *(v38 + 16) = 0uLL;
    *(v38 + 32) = 0uLL;
    *v38 = 0uLL;
    *(v38 + 56) = -1;
    v38 += 80;
  }

  while (v38 != v53);
  *(v5 + 248) = v53;
LABEL_72:
  v54 = *a3;
  if (a3[1] != *a3)
  {
    goto LABEL_75;
  }

LABEL_124:
  if ((v5 + 800) != a3)
  {
    std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>((v5 + 800), *a3, a3[1], ((a3[1] - *a3) >> 3) * v35);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v89, v90, v91, v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(v5, v89, v90, v91, v92, v93, v94, v95);
}

void webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::~WebRtcVideoSendStream(webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream *this)
{
  if (*(this + 10))
  {
    (*(**(this + 7) + 48))(*(this + 7));
  }

  webrtc::RtpParameters::~RtpParameters(this + 129);
  webrtc::VideoEncoderConfig::~VideoEncoderConfig((this + 824));
  v2 = *(this + 100);
  if (v2)
  {
    v3 = *(this + 101);
    v4 = *(this + 100);
    if (v3 != v2)
    {
      do
      {
        webrtc::Codec::~Codec((v3 - 248));
      }

      while (v3 != v2);
      v4 = *(this + 100);
    }

    *(this + 101) = v2;
    operator delete(v4);
  }

  if (*(this + 792) == 1)
  {
    webrtc::Codec::~Codec((this + 544));
  }

  v5 = *(this + 63);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 60);
  if (v6)
  {
    *(this + 61) = v6;
    operator delete(v6);
  }

  v7 = *(this + 57);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  webrtc::RtpConfig::~RtpConfig(this + 11);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 3);
        if (v11)
        {
          *(v9 - 2) = v11;
          operator delete(v11);
        }

        v12 = v9 - 6;
        if (*(v9 - 25) < 0)
        {
          operator delete(*v12);
        }

        v9 -= 6;
      }

      while (v12 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }
}

void webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ReconfigureEncoder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 80))
  {
    v42 = 0;
    v45[14] = 0;
    v44 = 0;
    memset(v45, 0, 13);
    v43 = 0;
    webrtc::InvokeSetParametersCallback(a2, &v42, v46);
    if (v48 < 0)
    {
      operator delete(__p);
      if ((v45[7] & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((v45[7] & 0x80000000) == 0)
    {
      return;
    }

    operator delete(v43);
    return;
  }

  if (*(a1 + 792))
  {
    webrtc::Codec::Codec(v88, (a1 + 544));
    v89[0] = *(a1 + 760);
    *(v89 + 9) = *(a1 + 769);
    webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::CreateVideoEncoderConfig(v85, a1, v88);
    webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ConfigureVideoEncoderSettings(&v66, a1, v88, v10, v11, v12, v13, v14);
    v15 = v86;
    v86 = v66;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    webrtc::VideoEncoderConfig::VideoEncoderConfig(&v66, v85);
    if (v86)
    {
      (*(*v86 + 8))(v86);
    }

    v86 = 0;
    v16 = *(a1 + 1016);
    v17 = v87;
    webrtc::VideoEncoderConfig::operator=(a1 + 824, v85);
    if (v16 == v17)
    {
      v25 = *(a1 + 80);
      v49 = v66;
      v50 = v67;
      v67 = 0uLL;
      v26 = v68;
      v68 = 0;
      v51 = v26;
      v52 = v69;
      v53[0] = v70;
      v53[1] = v71;
      if (v71)
      {
        *(v70 + 16) = v53;
        v69 = &v70;
        v70 = 0;
        v71 = 0;
      }

      else
      {
        v52 = v53;
      }

      v53[2] = v72;
      v54 = v73;
      v55 = v74;
      v56 = v75;
      v27 = v76;
      v72 = 0;
      v76 = 0uLL;
      v57 = v27;
      v58 = v77;
      v77 = 0uLL;
      v60 = v79;
      v59 = v78;
      v28 = v80;
      v80 = 0;
      v62 = v81;
      v63 = v82;
      v61 = v28;
      v64 = v83;
      v82 = 0uLL;
      v83 = 0;
      v65 = v84;
      (*(a2 + 16))(0, a2, v33);
      v34 = *(a2 + 16);
      *(a2 + 16) = absl::internal_any_invocable::EmptyManager;
      *(a2 + 24) = 0;
      (*(*v25 + 56))(v25, &v49, v33);
      (v34)(1, v33, v33);
      webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v49);
      goto LABEL_22;
    }

    webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(a1, v18, v19, v20, v21, v22, v23, v24);
    v35 = 0;
    v38[14] = 0;
    v37 = 0;
    memset(v38, 0, 13);
    v36 = 0;
    webrtc::InvokeSetParametersCallback(a2, &v35, v39);
    if (v41 < 0)
    {
      operator delete(v40);
      if ((v38[7] & 0x80000000) != 0)
      {
LABEL_21:
        operator delete(v36);
      }
    }

    else if ((v38[7] & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_22:
    webrtc::VideoEncoderConfig::~VideoEncoderConfig(&v66);
    webrtc::VideoEncoderConfig::~VideoEncoderConfig(v85);
    webrtc::Codec::~Codec(v88);
    return;
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc", 2377, "parameters_.codec_settings", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v33[0]);
}

void webrtc::anonymous namespace::FallbackToDefaultScalabilityModeIfNotSupported(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a3 != a4)
  {
    v6 = a3;
    v8 = a3;
    while (1)
    {
      if (*(v8 + 104) == 1)
      {
        v9 = *(v8 + 103);
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v8 + 88);
        }

        if (v9)
        {
          break;
        }
      }

      v8 += 272;
      if (v8 == a4)
      {
        return;
      }
    }

    if (*(a2 + 304))
    {
      v11 = &v61 <= "-" && &v61.__r_.__value_.__l.__data_ + 1 > "-";
      v13 = v57 <= "L1T2" && v57 + 4 > "L1T2";
      v54 = v13;
      v15 = &v56 <= "L1T2" && v56.__r_.__value_.__r.__words + 4 > "L1T2";
      v51 = v11;
      v52 = v15;
      v16 = (a1 + 176);
      do
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_38;
        }

        if (*(v6 + 104) == 1)
        {
          if (*(v6 + 103) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, *(v6 + 80), *(v6 + 88));
          }

          else
          {
            v61 = *(v6 + 80);
          }
        }

        else
        {
          *(&v61.__r_.__value_.__s + 23) = 1;
          if (v51)
          {
            goto LABEL_127;
          }

          LOWORD(v61.__r_.__value_.__l.__data_) = 45;
        }

        v4 = v4 & 0xFFFFFFFF00000000 | 0x1091;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
          v24 = *(v6 + 104);
          if (*(v6 + 124) != 1)
          {
LABEL_44:
            if ((v24 & 1) == 0)
            {
              goto LABEL_29;
            }

            v25 = (v6 + 80);
            v26 = *(a2 + 304);
            if ((*(a1 + 39) & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_46;
          }
        }

        else
        {
LABEL_38:
          v24 = *(v6 + 104);
          if (*(v6 + 124) != 1)
          {
            goto LABEL_44;
          }
        }

        v25 = (v6 + 80);
        if ((v24 & 1) == 0)
        {
          goto LABEL_66;
        }

        v26 = *(a2 + 304);
        if ((*(a1 + 39) & 0x80000000) == 0)
        {
LABEL_41:
          v61 = *(a1 + 16);
          v62 = &v63;
          v63 = 0;
          v64 = 0;
          v27 = *(a1 + 168);
          if (v27 == v16)
          {
            goto LABEL_47;
          }

          goto LABEL_50;
        }

LABEL_46:
        std::string::__init_copy_ctor_external(&v61, *(a1 + 16), *(a1 + 24));
        v63 = 0;
        v64 = 0;
        v62 = &v63;
        v27 = *(a1 + 168);
        if (v27 == v16)
        {
          goto LABEL_47;
        }

        do
        {
LABEL_50:
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v62, &v63, v27 + 4);
          v28 = v27[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v27[2];
              v30 = *v29 == v27;
              v27 = v29;
            }

            while (!v30);
          }

          v27 = v29;
        }

        while (v29 != v16);
LABEL_47:
        v65 = 0;
        if (*(v6 + 103) < 0)
        {
          std::string::__init_copy_ctor_external(&v59, *(v6 + 80), *(v6 + 88));
        }

        else
        {
          v59 = *v25;
        }

        v60 = 1;
        v31 = (*(*v26 + 16))(v26, &v61, &v59);
        if (v60 == 1 && SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (v65)
        {
          operator delete(__p);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v62, v63);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_65:
            operator delete(v61.__r_.__value_.__l.__data_);
            if (v31)
            {
              goto LABEL_29;
            }

            goto LABEL_66;
          }
        }

        else
        {
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v62, v63);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_65;
          }
        }

        if (v31)
        {
          goto LABEL_29;
        }

LABEL_66:
        v58 = 4;
        if (v54)
        {
          goto LABEL_127;
        }

        strcpy(v57, "L1T2");
        if (*(v6 + 104) != 1)
        {
          goto LABEL_75;
        }

        v32 = *(v6 + 103);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v6 + 88);
        }

        if (v32 != 4 || ((v34 = v25->__r_.__value_.__r.__words[0], v33 >= 0) ? (v35 = v25) : (v35 = v25->__r_.__value_.__r.__words[0]), LODWORD(v35->__r_.__value_.__l.__data_) != LODWORD(v57[0])))
        {
LABEL_75:
          *(&v56.__r_.__value_.__s + 23) = 4;
          if (v52)
          {
            goto LABEL_127;
          }

          strcpy(&v56, "L1T2");
          v36 = *(a2 + 304);
          if (*(a1 + 39) < 0)
          {
            std::string::__init_copy_ctor_external(&v61, *(a1 + 16), *(a1 + 24));
            v63 = 0;
            v64 = 0;
            v62 = &v63;
            v37 = *(a1 + 168);
            if (v37 == v16)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v61 = *(a1 + 16);
            v62 = &v63;
            v63 = 0;
            v64 = 0;
            v37 = *(a1 + 168);
            if (v37 == v16)
            {
LABEL_80:
              v65 = 0;
              if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v59, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
              }

              else
              {
                v59 = v56;
              }

              v60 = 1;
              v40 = (*(*v36 + 16))(v36, &v61, &v59);
              if (v60 == 1 && SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v59.__r_.__value_.__l.__data_);
              }

              if (v65)
              {
                operator delete(__p);
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v62, v63);
                if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_100;
                }

LABEL_95:
                v41 = *(v6 + 104);
                if (v40)
                {
                  goto LABEL_96;
                }

LABEL_101:
                if (v41)
                {
                  if (*(v6 + 103) < 0)
                  {
                    *(v6 + 88) = 4;
                    strcpy(*(v6 + 80), "L1T1");
                    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    *(v6 + 103) = 4;
                    strcpy(v25, "L1T1");
                    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_119;
                    }
                  }

                  goto LABEL_120;
                }

                *(v6 + 103) = 4;
                if (v6 + 84 > "L1T1" && v25 <= "L1T1")
                {
LABEL_127:
                  __break(1u);
                  return;
                }

                v43 = 827601228;
              }

              else
              {
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v62, v63);
                if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_95;
                }

LABEL_100:
                operator delete(v61.__r_.__value_.__l.__data_);
                v41 = *(v6 + 104);
                if ((v40 & 1) == 0)
                {
                  goto LABEL_101;
                }

LABEL_96:
                if (v41)
                {
                  if (*(v6 + 103) < 0)
                  {
                    *(v6 + 88) = 4;
                    v42 = *(v6 + 80);
                  }

                  else
                  {
                    *(v6 + 103) = 4;
                    v42 = v25;
                  }

                  strcpy(v42, "L1T2");
                  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_119:
                    operator delete(v56.__r_.__value_.__l.__data_);
                  }

LABEL_120:
                  if ((v58 & 0x80000000) == 0)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_125;
                }

                *(v6 + 103) = 4;
                if (v6 + 84 > "L1T2" && v25 <= "L1T2")
                {
                  goto LABEL_127;
                }

                v43 = 844378444;
              }

              *(v6 + 80) = v43;
              *(v6 + 84) = 0;
              *(v6 + 104) = 1;
              if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_119;
              }

              goto LABEL_120;
            }
          }

          do
          {
            std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v62, &v63, v37 + 4);
            v38 = v37[1];
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
                v39 = v37[2];
                v30 = *v39 == v37;
                v37 = v39;
              }

              while (!v30);
            }

            v37 = v39;
          }

          while (v39 != v16);
          goto LABEL_80;
        }

        if (v33 < 0)
        {
          *(v6 + 88) = 4;
        }

        else
        {
          *(v6 + 103) = 4;
          v34 = v25;
        }

        strcpy(v34, "L1T1");
        if ((v58 & 0x80000000) == 0)
        {
LABEL_121:
          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
          {
            goto LABEL_29;
          }

          goto LABEL_126;
        }

LABEL_125:
        operator delete(v57[0]);
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
        {
          goto LABEL_29;
        }

LABEL_126:
        if ((*(v6 + 104) & 1) == 0)
        {
          goto LABEL_127;
        }

        v53 = v53 & 0xFFFFFFFF00000000 | 0x1121;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
LABEL_29:
        v6 += 272;
      }

      while (v6 != a4);
    }
  }
}

void webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::CreateVideoEncoderConfig(webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream *this, const webrtc::Codec *a2, uint64_t a3)
{
  v84 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(&v76.__r_.__value_.__s + 23) = 5;
  if (&v76 <= "Unset" && v76.__r_.__value_.__r.__words + 5 > "Unset")
  {
    goto LABEL_139;
  }

  LODWORD(v76.__r_.__value_.__l.__data_) = *"Unset";
  WORD2(v76.__r_.__value_.__r.__words[0]) = str_11_10[4];
  *(this + 3) = *(&v76.__r_.__value_.__l + 2);
  v6 = *&v76.__r_.__value_.__l.__data_;
  *(this + 5) = 0;
  v7 = this + 40;
  *(this + 4) = this + 40;
  v8 = (this + 32);
  *(this + 8) = v6;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 133) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0x3FF0000000000000;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 100) = 0;
  *(this + 51) = -1;
  *this = webrtc::PayloadStringToCodecType((a3 + 16));
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v76 = *(a3 + 16);
  }

  v9 = (this + 8);
  v78 = 0;
  v79 = 0;
  v77 = &v78;
  v10 = *(a3 + 168);
  v75 = (a3 + 176);
  if (v10 != (a3 + 176))
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&v77, &v78, v10 + 4);
      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != v75);
  }

  v80 = 0;
  if (*(this + 31) < 0)
  {
    operator delete(v9->__r_.__value_.__l.__data_);
  }

  *&v9->__r_.__value_.__l.__data_ = *&v76.__r_.__value_.__l.__data_;
  *(this + 3) = *(&v76.__r_.__value_.__l + 2);
  *(&v76.__r_.__value_.__s + 23) = 0;
  v76.__r_.__value_.__s.__data_[0] = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 32, *(this + 5));
  v11 = v78;
  *(this + 4) = v77;
  *(this + 5) = v11;
  v12 = v79;
  *(this + 6) = v79;
  if (v12)
  {
    *(v11 + 16) = v7;
    v77 = &v78;
    v78 = 0;
    v79 = 0;
    if (v9 != &v76)
    {
LABEL_11:
      if (*(this + 56))
      {
        operator delete(*(this + 8));
      }

      *(this + 7) = v80;
      v13 = v82;
      *(this + 4) = *__p;
      *(this + 5) = v13;
      *(this + 12) = v83;
      v80 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    *v8 = v7;
    if (v9 != &v76)
    {
      goto LABEL_11;
    }
  }

  if (v80)
  {
    operator delete(__p[0]);
  }

LABEL_14:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v77, v78);
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
    if (*(a2 + 525) != 1)
    {
      goto LABEL_31;
    }
  }

  else if (*(a2 + 525) != 1)
  {
    goto LABEL_31;
  }

  if (*(a2 + 524) == 1)
  {
    if (*(a2 + 520) == 1)
    {
      v17 = 1000 * *(a2 + 129);
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
    v19 = 1;
    goto LABEL_34;
  }

LABEL_31:
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_34:
  *(this + 38) = v17;
  *(this + 34) = v18;
  *(this + 24) = (*(a2 + 12) - *(a2 + 11)) >> 2;
  v20 = *(a2 + 141);
  v21 = *(a2 + 142);
  if (v20 != v21)
  {
    v22 = *(a2 + 141);
    do
    {
      if (v22[104] == 1 && ((v22[72] & 1) != 0 || (v22[120] & 1) != 0))
      {
        goto LABEL_44;
      }

      v22 += 272;
    }

    while (v22 != v21);
  }

  if ((*this & 0xFFFFFFFE) == 2)
  {
    *(this + 24) = 1;
  }

LABEL_44:
  while (v20 != v21)
  {
    if (*(v20 + 124) == 1 && *(v20 + 24) == 1 && *(v20 + 20) > 0)
    {
      v23 = 1;
      goto LABEL_50;
    }

    v20 += 272;
  }

  v23 = 0;
LABEL_50:
  v24 = *(a2 + 133);
  *(&v76.__r_.__value_.__s + 23) = 20;
  if (&v76 > "x-google-max-bitrate" || &v76.__r_.__value_.__r.__words[2] + 4 <= "x-google-max-bitrate")
  {
    strcpy(&v76, "x-google-max-bitrate");
    v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a3 + 168, &v76.__r_.__value_.__l.__data_);
    if (v75 == v26)
    {
      v29 = 0;
      v30 = 1;
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v27 = *(v26 + 79);
      if ((v27 & 0x8000000000000000) != 0)
      {
        v31 = v26;
        v28 = v26[7];
        v27 = v31[8];
      }

      else
      {
        v28 = (v26 + 7);
      }

      v32 = webrtc::string_to_number_internal::ParseSigned(v28, v27, 0xAuLL);
      v33 = 0;
      v34 = v32 | 0x100000000;
      if ((v35 & ((v32 + 0x80000000) >> 32 == 0)) == 0)
      {
        v34 = 0;
      }

      if (v34 > 0x100000000)
      {
        v33 = v34;
      }

      v29 = 1000 * v33;
      v30 = v24 != -1 || HIDWORD(v34) == 0;
      if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_69:
        if (v23 | v30)
        {
          v36 = v24;
        }

        else
        {
          v36 = v29;
        }

        *(this + 39) = v36;
        v37 = *(a2 + 141);
        v38 = *(a2 + 142) - v37;
        if (!v38)
        {
          goto LABEL_139;
        }

        v39 = 0xF0F0F0F0F0F0F0F1 * (v38 >> 4);
        *(this + 20) = *(v37 + 8);
        v41 = *(this + 21);
        v40 = *(this + 22);
        v42 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 5);
        v74 = v19;
        if (v39 <= v42)
        {
          if (v39 < v42)
          {
            v40 = v41 + 96 * v39;
            *(this + 22) = v40;
          }
        }

        else
        {
          std::vector<webrtc::VideoStream>::__append(this + 21, v39 - v42);
          v41 = *(this + 21);
          v40 = *(this + 22);
        }

        if (v40 != v41)
        {
          v43 = 0;
          do
          {
            v44 = *(a2 + 141);
            if (0xF0F0F0F0F0F0F0F1 * ((*(a2 + 142) - v44) >> 4) <= v43)
            {
              goto LABEL_139;
            }

            v45 = v44 + 272 * v43;
            *(v41 + 96 * v43 + 82) = *(v45 + 124);
            if (*(v45 + 104) == 1)
            {
              if (*(v45 + 103) < 0)
              {
                std::string::__init_copy_ctor_external(&v76, *(v45 + 80), *(v45 + 88));
                v41 = *(this + 21);
                if (0xAAAAAAAAAAAAAAABLL * ((*(this + 22) - v41) >> 5) <= v43)
                {
                  goto LABEL_139;
                }
              }

              else
              {
                v46 = *(v45 + 80);
                v76.__r_.__value_.__r.__words[2] = *(v45 + 96);
                *&v76.__r_.__value_.__l.__data_ = v46;
                if (0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 5) <= v43)
                {
                  goto LABEL_139;
                }
              }
            }

            else
            {
              *(&v76.__r_.__value_.__s + 23) = 0;
              v76.__r_.__value_.__s.__data_[0] = 0;
              if (0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 5) <= v43)
              {
                goto LABEL_139;
              }
            }

            v47 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v76 : v76.__r_.__value_.__r.__words[0];
            v48 = (v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(v76.__r_.__value_.__r.__words[2]) : v76.__r_.__value_.__l.__size_;
            v49 = &qword_279E94B78;
            v50 = 1632;
            do
            {
              if (*v49 == v48 && !memcmp(*(v49 - 1), v47, v48))
              {
                *(v41 + 96 * v43 + 80) = *(v49 - 16) | 0x100;
                if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_101;
                }

                goto LABEL_100;
              }

              v49 += 6;
              v50 -= 48;
            }

            while (v50);
            *(v41 + 96 * v43 + 80) = 0;
            if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_101;
            }

LABEL_100:
            operator delete(v76.__r_.__value_.__l.__data_);
LABEL_101:
            v51 = *(a2 + 141);
            if (0xF0F0F0F0F0F0F0F1 * ((*(a2 + 142) - v51) >> 4) <= v43)
            {
              goto LABEL_139;
            }

            v52 = v51 + 272 * v43;
            v53 = *(this + 21);
            v54 = *(this + 22);
            if (*(v52 + 32) == 1)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 5) <= v43)
              {
                goto LABEL_139;
              }

              *(v53 + 96 * v43 + 20) = *(v52 + 28);
            }

            if (*(v52 + 24) == 1)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 5) <= v43)
              {
                goto LABEL_139;
              }

              *(v53 + 96 * v43 + 28) = *(v52 + 20);
            }

            if (*(v52 + 48) == 1)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 5) <= v43)
              {
                goto LABEL_139;
              }

              *(v53 + 96 * v43 + 16) = *(v52 + 40);
            }

            v55 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 5);
            if (*(v52 + 72) == 1)
            {
              if (v55 <= v43)
              {
                goto LABEL_139;
              }

              *(v53 + 96 * v43 + 32) = *(v52 + 64);
            }

            if (*(v52 + 60) == 1)
            {
              if (v55 <= v43)
              {
                goto LABEL_139;
              }

              v56 = v53 + 96 * v43;
              v57 = *(v52 + 56);
              if ((*(v56 + 56) & 1) == 0)
              {
                *(v56 + 56) = 1;
              }

              *(v56 + 48) = v57;
            }

            if (v55 <= v43)
            {
              goto LABEL_139;
            }

            v58 = v53 + 96 * v43;
            v59 = *(v52 + 112);
            *(v58 + 92) = *(v52 + 120);
            *(v58 + 84) = v59;
            ++v43;
            v41 = *(this + 21);
            v40 = *(this + 22);
          }

          while (v43 < 0xAAAAAAAAAAAAAAABLL * ((v40 - v41) >> 5));
        }

        *(this + 200) = *(a2 + 536);
        if ((v74 | *(a2 + 1201)))
        {
          v60 = 0;
          goto LABEL_138;
        }

        if (*(a2 + 12) - *(a2 + 11) == 4)
        {
          v60 = 1;
          goto LABEL_138;
        }

        v61 = *(a2 + 141);
        v62 = *(a2 + 142) - v61;
        if (!v62)
        {
          v60 = 0;
          goto LABEL_138;
        }

        v63 = v62 >> 4;
        v64 = 0xF0F0F0F0F0F0F0F1 * v63;
        if (0xF0F0F0F0F0F0F0F1 * v63 <= 1)
        {
          v65 = 1;
        }

        else
        {
          v65 = 0xF0F0F0F0F0F0F0F1 * v63;
        }

        if (v64 >= 2)
        {
          v68 = 0;
          v69 = 0;
          v66 = v65 & 0xFFFFFFFFFFFFFFFELL;
          v70 = v65 & 0xFFFFFFFFFFFFFFFELL;
          v71 = *(a2 + 141);
          do
          {
            v68 += *(v71 + 124);
            v69 += *(v71 + 396);
            v71 += 544;
            v70 -= 2;
          }

          while (v70);
          v67 = v69 + v68;
          if (v64 == v66)
          {
            goto LABEL_137;
          }
        }

        else
        {
          v66 = 0;
          v67 = 0;
        }

        v72 = v65 - v66;
        v73 = (v61 + 272 * v66 + 124);
        do
        {
          v67 += *v73;
          v73 += 272;
          --v72;
        }

        while (v72);
LABEL_137:
        v60 = v67 == 1;
LABEL_138:
        *(this + 201) = v60;
        *(this + 140) = 1;
        operator new();
      }
    }

    operator delete(v76.__r_.__value_.__l.__data_);
    goto LABEL_69;
  }

LABEL_139:
  __break(1u);
}

void webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = *MEMORY[0x277D85DE8];
  if ((*(this + 792) & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc", 2632, "parameters_.codec_settings", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v41);
  }

  webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ConfigureVideoEncoderSettings(&v71, this, this + 544, a4, a5, a6, a7, a8);
  v9 = *(this + 121);
  *(this + 121) = v71;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  webrtc::VideoSendStream::Config::Config(&v71, this + 88);
  v10 = v75;
  v11 = v76;
  if (v75 != v76 && v77 == -1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    v10 = v75;
    v76 = v75;
    v11 = v75;
  }

  if (*(this + 127) == 1 && (v72 - v71) >= 5)
  {
    v72 = v71 + 4;
    if ((v11 - v10) >= 5)
    {
      v76 = v10 + 4;
    }
  }

  v20 = v73;
  for (i = v74; v20 != i; v20 += 32)
  {
    v22 = v20[23];
    if (v22 < 0)
    {
      v23 = *v20;
      if (*(v20 + 1) != 65)
      {
        continue;
      }
    }

    else
    {
      v23 = v20;
      if (v22 != 65)
      {
        continue;
      }
    }

    if (!memcmp("http://www.webrtc.org/experiments/rtp-hdrext/corruption-detection", v23, 0x41uLL) && (v20[28] & 1) != 0)
    {
      BYTE1(v80) = 1;
      break;
    }
  }

  v24 = *(this + 10);
  if (v24)
  {
    (*(*v24 + 64))(v66);
    (*(**(this + 7) + 48))(*(this + 7), *(this + 10));
    v25 = *(this + 7);
    webrtc::RtpConfig::RtpConfig(v54, &v71);
    v57 = v80;
    v58 = v81;
    v55 = v78;
    v56 = v79;
    v59 = v82;
    v60 = v83;
    v61 = v84;
    v62 = v85;
    __p = v86;
    *&v83 = 0;
    v86 = 0uLL;
    v26 = v87;
    v27 = v88;
    v87 = 0;
    v88 = 0;
    v64 = v26;
    v65 = v27;
    webrtc::VideoEncoderConfig::VideoEncoderConfig(v90, (this + 824));
    *(this + 10) = (*(*v25 + 32))(v25, v54, v90);
    webrtc::VideoEncoderConfig::~VideoEncoderConfig(v90);
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }

    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v60)
    {
      (*(*v60 + 8))(v60);
    }

    webrtc::RtpConfig::~RtpConfig(v54);
    (*(**(this + 10) + 72))(*(this + 10), v66);
    std::__tree<sigslot::_signal_base_interface *>::destroy(v70, v70[1]);
    std::__tree<sigslot::_signal_base_interface *>::destroy(v69, v69[1]);
    if (v68 == 1 && v67 < 0)
    {
      operator delete(v66[0]);
    }

    v28 = *(this + 121);
    if (v28)
    {
LABEL_37:
      (*(*v28 + 8))(v28);
    }
  }

  else
  {
    v32 = *(this + 7);
    webrtc::RtpConfig::RtpConfig(v42, &v71);
    v45 = v80;
    v46 = v81;
    v43 = v78;
    v44 = v79;
    v47 = v82;
    v48 = v83;
    v49 = v84;
    v50 = v85;
    v51 = v86;
    *&v83 = 0;
    v86 = 0uLL;
    v33 = v87;
    v34 = v88;
    v87 = 0;
    v88 = 0;
    v52 = v33;
    v53 = v34;
    webrtc::VideoEncoderConfig::VideoEncoderConfig(v89, (this + 824));
    *(this + 10) = (*(*v32 + 32))(v32, v42, v89);
    webrtc::VideoEncoderConfig::~VideoEncoderConfig(v89);
    if (v53)
    {
      (*(*v53 + 8))(v53);
    }

    if (v51)
    {
      *(&v51 + 1) = v51;
      operator delete(v51);
    }

    if (v48)
    {
      (*(*v48 + 8))(v48);
    }

    webrtc::RtpConfig::~RtpConfig(v42);
    v28 = *(this + 121);
    if (v28)
    {
      goto LABEL_37;
    }
  }

  *(this + 121) = 0;
  v29 = *(this + 10);
  if (*(this + 1200) == 1)
  {
    (**v29)(v29);
  }

  else if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (*(this + 9))
  {
    v30 = *(this + 10);
    if (*(this + 64) == 1)
    {
      if (*(this + 1196) == 1)
      {
        v31 = *(this + 298);
      }

      else
      {
        v35 = *(this + 132);
        if (v35 != 1)
        {
          v36 = v35 & 0xFFFFFFFE;
          if (*(this + 525) == 1)
          {
            v31 = 2;
            if (v36 == 2 || (*(this + 524) & 1) != 0)
            {
              goto LABEL_55;
            }
          }

          else if (v36 == 2)
          {
            v31 = 2;
            goto LABEL_55;
          }

          v37 = *(this + 10);
          v38 = (*(**(this + 7) + 224))(*(this + 7));
          (*(*v38 + 16))(v66);
          v39 = v67;
          if ((v67 & 0x80u) != 0)
          {
            v39 = v66[1];
          }

          if (v39 >= 7)
          {
            v40 = v66[0];
            if ((v67 & 0x80u) == 0)
            {
              v40 = v66;
            }

            if (*v40 ^ 0x62616E45 | *(v40 + 3) ^ 0x64656C62)
            {
              v31 = 1;
            }

            else
            {
              v31 = 3;
            }
          }

          else
          {
            v31 = 1;
          }

          v30 = v37;
          if (v67 < 0)
          {
            operator delete(v66[0]);
            v30 = v37;
          }

          goto LABEL_55;
        }

        v31 = 1;
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_55:
    LODWORD(v66[0]) = v31;
    (*(*v30 + 40))(v30);
  }

  if (v88)
  {
    (*(*v88 + 8))(v88);
  }

  if (v86)
  {
    *(&v86 + 1) = v86;
    operator delete(v86);
  }

  if (v83)
  {
    (*(*v83 + 8))(v83);
  }

  webrtc::RtpConfig::~RtpConfig(&v71);
}

void webrtc::WebRtcVideoSendChannel::GenerateSendKeyFrame(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 152);
  v2 = a1 + 152;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v16 = *(*(v5 + 40) + 80);
    if (v16)
    {
      v17 = *(*v16 + 80);

      v17();
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }
  }
}

void webrtc::WebRtcVideoSendChannel::SetEncoderToPacketizerFrameTransformer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 152);
  v8 = a1 + 152;
  v9 = v10;
  if (v10)
  {
    v11 = v8;
    do
    {
      v12 = *(v9 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * v14);
    }

    while (v9);
    if (v11 != v8 && *(v11 + 32) <= a2)
    {
      v15 = *(v11 + 40);
      v16 = *a3;
      *a3 = 0;
      v17 = *(v15 + 63);
      *(v15 + 63) = v16;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (*(v15 + 10))
      {

        webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(v15, a2, a3, a4, a5, a6, a7, a8);
      }
    }
  }
}

void non-virtual thunk towebrtc::WebRtcVideoSendChannel::SetEncoderToPacketizerFrameTransformer(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 88);
  v8 = a1 + 88;
  v9 = v10;
  if (v10)
  {
    v11 = v8;
    do
    {
      v12 = *(v9 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * v14);
    }

    while (v9);
    if (v11 != v8 && *(v11 + 32) <= a2)
    {
      v15 = *(v11 + 40);
      v16 = *a3;
      *a3 = 0;
      v17 = *(v15 + 63);
      *(v15 + 63) = v16;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      if (*(v15 + 10))
      {

        webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(v15, a2, a3, a4, a5, a6, a7, a8);
      }
    }
  }
}

void webrtc::WebRtcVideoReceiveChannel::~WebRtcVideoReceiveChannel(webrtc::WebRtcVideoReceiveChannel *this)
{
  *this = &unk_2882A41A8;
  *(this + 8) = &unk_2882A42B8;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      v9 = *(v2 + 5);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      v10 = *(v2 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v2 + 2);
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
  }

  (*(this + 148))(1, this + 1168, this + 1168);
  (*(this + 144))(1, this + 1136, this + 1136);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1112, *(this + 140));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1088, *(this + 137));
  v4 = *(this + 129);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 126);
  if (v5)
  {
    *(this + 127) = v5;
    operator delete(v5);
  }

  webrtc::StreamParams::~StreamParams((this + 856));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 752));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 632));
  v6 = *(this + 74);
  if (v6)
  {
    v7 = *(this + 75);
    v8 = *(this + 74);
    if (v7 != v6)
    {
      do
      {
        v13 = *(v7 - 9);
        v7 -= 4;
        if (v13 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 74);
    }

    *(this + 75) = v6;
    operator delete(v8);
  }

  v14 = *(this + 68);
  if (v14)
  {
    v15 = *(this + 69);
    v16 = *(this + 68);
    if (v15 != v14)
    {
      do
      {
        webrtc::Codec::~Codec((v15 - 248));
      }

      while (v15 != v14);
      v16 = *(this + 68);
    }

    *(this + 69) = v14;
    operator delete(v16);
  }

  v17 = *(this + 64);
  if (v17)
  {
    v18 = *(this + 65);
    v19 = *(this + 64);
    if (v18 != v17)
    {
      do
      {
        v20 = *(v18 - 9);
        v18 -= 4;
        if (v20 < 0)
        {
          operator delete(*v18);
        }
      }

      while (v18 != v17);
      v19 = *(this + 64);
    }

    *(this + 65) = v17;
    operator delete(v19);
  }

  v21 = *(this + 61);
  if (v21)
  {
    v22 = *(this + 62);
    v23 = *(this + 61);
    if (v22 != v21)
    {
      do
      {
        webrtc::Codec::~Codec((v22 - 248));
      }

      while (v22 != v21);
      v23 = *(this + 61);
    }

    *(this + 62) = v21;
    operator delete(v23);
  }

  if (*(this + 480) == 1)
  {
    webrtc::Codec::~Codec((this + 232));
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 208, *(this + 27));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 184, *(this + 24));
  v24 = *(this + 13);
  *(v24 + 4) = 0;
  if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 10));
  *this = &unk_288295EE8;
  *(this + 2) = &unk_288295F60;
  v25 = *(this + 3);
  if (v25)
  {
    if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }
}

{
  webrtc::WebRtcVideoReceiveChannel::~WebRtcVideoReceiveChannel(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::~WebRtcVideoReceiveChannel(webrtc::WebRtcVideoReceiveChannel *this)
{
  webrtc::WebRtcVideoReceiveChannel::~WebRtcVideoReceiveChannel((this - 64));
}

{
  webrtc::WebRtcVideoReceiveChannel::~WebRtcVideoReceiveChannel((this - 64));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebRtcVideoReceiveChannel::SetReceiverFeedbackParameters(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
  v9 = *(result + 72);
  v10 = (result + 80);
  if (v9 != (result + 80))
  {
    if ((a5 & 0x100000000) != 0)
    {
      v11 = a5;
    }

    else
    {
      v11 = 1000;
    }

    if (a3)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    do
    {
      v13 = v9[5];
      if (*(v13 + 220) != a4)
      {
        *(v13 + 220) = a4;
        (*(**(v13 + 160) + 56))(*(v13 + 160), a4);
        *(v13 + 440) = a4;
        v14 = *(v13 + 456);
        if (v14)
        {
          (*(*v14 + 24))(v14, a4);
        }
      }

      *(v13 + 226) = a2;
      (*(**(v13 + 160) + 112))(*(v13 + 160), a2);
      *(v13 + 216) = v12;
      result = (*(**(v13 + 160) + 120))(*(v13 + 160), 1000 * v12);
      v15 = v9[1];
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
          v16 = v9[2];
          v17 = *v16 == v9;
          v9 = v16;
        }

        while (!v17);
      }

      v9 = v16;
    }

    while (v16 != v10);
  }

  *(v8 + 1058) = a2;
  if (a3)
  {
    v18 = 1000;
  }

  else
  {
    v18 = 0;
  }

  *(v8 + 1048) = v18;
  *(v8 + 1052) = a4;
  return result;
}

void webrtc::WebRtcVideoReceiveChannel::GetRtpReceiverParameters(webrtc::WebRtcVideoReceiveChannel *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = 256;
  memset(__dst, 0, sizeof(__dst));
  memset(v42, 0, sizeof(v42));
  v48 = 0;
  v49 = 0;
  v4 = *(this + 10);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 80;
  do
  {
    v6 = *(v4 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 == this + 80 || *(v5 + 8) > a2)
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    *(a3 + 124) = 0;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    *(a3 + 152) = 256;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 105) = 0u;
    *(a3 + 160) = 0;
    *(a3 + 164) = 0;
    goto LABEL_12;
  }

  v17 = *(v5 + 5);
  v34 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 256;
  *v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__p = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v39 = 0;
  v40 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  webrtc::StreamParams::GetPrimarySsrcs((v17 + 16), &v50);
  v18 = v50;
  v19 = v51;
  if (v50 == v51)
  {
LABEL_21:
    LOBYTE(v38) = *(v17 + 220) == 2;
    if (v18)
    {
      v51 = v18;
      operator delete(v18);
    }

    webrtc::RtpParameters::operator=(__dst, v27);
    webrtc::RtpParameters::~RtpParameters(v27);
    v22 = this;
    if (&v42[24] != this + 592)
    {
      std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(&v42[24], *(this + 74), *(this + 75), (*(this + 75) - *(this + 74)) >> 5);
      v22 = this;
    }

    v23 = *(v22 + 98);
    v24 = *(v22 + 99);
    if (v23 == v24)
    {
LABEL_36:
      webrtc::RtpParameters::RtpParameters(a3, __dst);
LABEL_12:
      webrtc::RtpParameters::~RtpParameters(&__dst[0].__r_.__value_.__l.__data_);
      return;
    }

    v25 = *(v22 + 98);
    while (1)
    {
      (*(*v25 + 16))(v27, v25);
      if (*&v42[8] >= *&v42[16])
      {
        std::vector<webrtc::RtpCodecParameters>::__emplace_back_slow_path<webrtc::RtpCodecParameters>(v42);
      }

      if (!*&v42[8])
      {
        break;
      }

      v26 = webrtc::RtpCodec::RtpCodec(*&v42[8], v27);
      *v26 = &unk_28829C0B8;
      *(v26 + 26) = *&v33[8];
      *&v42[8] = v26 + 112;
      v27[0] = &unk_28829C078;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v32, *(&v32 + 1));
      if (__p[1])
      {
        *&v31 = __p[1];
        operator delete(__p[1]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[1]);
      }

      v25 += 216;
      v23 += 216;
      if (v25 == v24)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    while (1)
    {
      v20 = *v18;
      v21 = *&v33[8];
      if (*&v33[8] >= *&v33[16])
      {
        std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<>(v33);
      }

      if (!*&v33[8])
      {
        break;
      }

      **&v33[8] = 0;
      *(v21 + 4) = 0;
      *(v21 + 8) = 0x3FF0000000000000;
      *(v21 + 16) = 1;
      *(v21 + 20) = 0;
      *(v21 + 24) = 0;
      *(v21 + 28) = 0;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 60) = 0;
      *(v21 + 64) = 0;
      *(v21 + 72) = 0;
      *(v21 + 80) = 0;
      *(v21 + 104) = 0;
      *(v21 + 112) = 0;
      *(v21 + 120) = 0;
      *(v21 + 124) = 1;
      *(v21 + 160) = 0;
      *(v21 + 264) = 0;
      *(v21 + 128) = 0;
      *(v21 + 136) = 0;
      *(v21 + 152) = 0;
      *(v21 + 144) = 0;
      *&v33[8] = v21 + 272;
      if (*v33 == v21 + 272)
      {
        break;
      }

      *v21 = v20;
      *(v21 + 4) = 1;
      if (++v18 == v19)
      {
        v18 = v50;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

double webrtc::WebRtcVideoReceiveChannel::GetDefaultRtpReceiveParameters@<D0>(webrtc::WebRtcVideoReceiveChannel *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 124) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 256;
  result = 0.0;
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
  if (*(this + 16))
  {
    std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<>((a2 + 96));
  }

  return result;
}

void webrtc::WebRtcVideoReceiveChannel::SetReceiverParameters(webrtc::WebRtcVideoReceiveChannel *this, const webrtc::VideoReceiverParameters *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0 && (webrtc::MediaChannelParameters::ToString(a2, &v58), webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc"), SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v58.__r_.__value_.__l.__data_);
    if (!v24)
    {
      return;
    }
  }

  else
  {
    if (!v11)
    {
      return;
    }
  }

  v12 = *(a2 + 8) - *(a2 + 7);
  if (v12)
  {
    v13 = *(a2 + 7);
  }

  else
  {
    v13 = 0;
  }

  if (*(this + 75) == *(this + 74))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 74);
  }

  if (webrtc::ValidateRtpExtensions(v13, v12 >> 5, v14))
  {
    if (LODWORD(v58.__r_.__value_.__l.__data_))
    {
      if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
      {
LABEL_71:
        if (v62 == 1)
        {
          v49 = v60;
          if (v60)
          {
            v50 = v61;
            v51 = v60;
            if (v61 != v60)
            {
              do
              {
                webrtc::Codec::~Codec((v50 - 248));
              }

              while (v50 != v49);
              v51 = v60;
            }

            v61 = v49;
            operator delete(v51);
          }
        }

        if (v59 < 0)
        {
          operator delete(v58.__r_.__value_.__l.__size_);
        }

        return;
      }

      v56[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
      v56[1] = 22715;
      v56[2] = &v52;
      v53[0] = "GetChangedReceiverParameters called without valid video codecs, error =";
      v53[1] = v56;
      memset(&__p, 0, sizeof(__p));
      absl::strings_internal::ExtractStringification<webrtc::RTCError>(&__p, &v58);
      if (v15 || !v16)
      {
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (v16 > 0x16)
        {
          operator new();
        }

        *(&v57.__r_.__value_.__s + 23) = v16;
        v23 = (&v57 + v16);
        if (&v57 > v15 || v23 <= v15)
        {
          if (v16)
          {
            memmove(&v57, v15, v16);
          }

          v23->__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
            v25 = v53;
            v55 = v53;
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
              v25 = v55;
            }
          }

          else
          {
            __p = v57;
            v25 = v53;
            v55 = v53;
          }

          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal const&)::t, v16, v17, v18, v19, v20, v21, v22, *v25[1]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_71;
        }
      }

      goto LABEL_82;
    }

    if ((v62 & 1) == 0)
    {
      goto LABEL_82;
    }

    if (v61 == v60)
    {
      if (*(a2 + 80) == 1)
      {
        v26 = *(this + 67);
        v27 = (*(**(this + 15) + 224))(*(this + 15));
        v28 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          v29 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
          {
            v30 = __p.__r_.__value_.__l.__size_ - 216;
            v31 = __p.__r_.__value_.__l.__size_ - 216;
            v32 = (__p.__r_.__value_.__l.__size_ - 216);
            do
            {
              v33 = *v32;
              v32 -= 27;
              (*v33)(v31);
              v30 -= 216;
              v34 = v31 == v28;
              v31 = v32;
            }

            while (!v34);
            v29 = __p.__r_.__value_.__r.__words[0];
          }

          __p.__r_.__value_.__l.__size_ = v28;
          operator delete(v29);
        }
      }

      v35 = *(this + 68);
      v36 = *(this + 69);
      if (v36 == v35)
      {
        v37 = (*(**(this + 15) + 224))(*(this + 15));
        webrtc::FilterRtpExtensions(a2 + 7, webrtc::RtpExtension::IsSupportedForVideo, 0, v37, &__p);
        v38 = *&__p.__r_.__value_.__l.__data_;
        v39 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
        v40 = *(this + 74);
        if (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0] == *(this + 75) - v40)
        {
          if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
          {
            goto LABEL_82;
          }

          v41 = 0;
          while (1)
          {
            v42 = v40 + v41;
            v43 = *(v38 + v41 + 23);
            if (v43 >= 0)
            {
              v44 = *(v38 + v41 + 23);
            }

            else
            {
              v44 = *(v38 + v41 + 8);
            }

            v45 = *(v42 + 23);
            v46 = v45;
            if ((v45 & 0x80u) != 0)
            {
              v45 = *(v42 + 8);
            }

            if (v44 != v45)
            {
              break;
            }

            v47 = v43 >= 0 ? (v38 + v41) : *(v38 + v41);
            v48 = v46 >= 0 ? (v40 + v41) : *v42;
            if (memcmp(v47, v48, v44) || *(v38 + v41 + 24) != *(v40 + v41 + 24) || *(v38 + v41 + 28) != *(v40 + v41 + 28))
            {
              break;
            }

            v41 += 32;
            if (v38 + v41 == *(&v38 + 1))
            {
              goto LABEL_82;
            }
          }
        }

        if (*(&v38 + 1) != v38)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_82:
        __break(1u);
      }

      if (0xEF7BDEF7BDEF7BDFLL * ((v36 - v35) >> 3) <= 0x108421084210842)
      {
        operator new();
      }
    }

    else if (0xEF7BDEF7BDEF7BDFLL * ((v61 - v60) >> 3) <= 0x108421084210842)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }
}

uint64_t webrtc::WebRtcVideoReceiveChannel::ChooseReceiverReportSsrc(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = *(result + 112);
  v4 = a2 + 1;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a2 + 1 || v3 < *(v4 + 7))
  {
LABEL_36:
    if (a2[2])
    {
      v8 = *(*a2 + 28);
      if (*(result + 112) != v8)
      {
        *(result + 112) = v8;
        v9 = *(result + 72);
        v10 = (result + 80);
        if (v9 != (result + 80))
        {
          do
          {
            v11 = v9[5];
            *(v11 + 212) = v8;
            result = (*(**(v11 + 8) + 160))(*(v11 + 8), *(v11 + 160), v8);
            v12 = *(v11 + 456);
            if (v12)
            {
              result = (*(**(v11 + 8) + 168))(*(v11 + 8), v12, v8);
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
      }
    }

    else if (*(result + 112) != 1)
    {
      *(result + 112) = 1;
      v16 = *(result + 72);
      v17 = (result + 80);
      if (v16 != (result + 80))
      {
        do
        {
          v18 = v16[5];
          *(v18 + 212) = 1;
          result = (*(**(v18 + 8) + 160))(*(v18 + 8), *(v18 + 160), 1);
          v19 = *(v18 + 456);
          if (v19)
          {
            result = (*(**(v18 + 8) + 168))(*(v18 + 8), v19, 1);
          }

          v20 = v16[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v16[2];
              v15 = *v21 == v16;
              v16 = v21;
            }

            while (!v15);
          }

          v16 = v21;
        }

        while (v21 != v17);
      }
    }
  }

  return result;
}

void webrtc::WebRtcVideoReceiveChannel::SetReceive(webrtc::WebRtcVideoReceiveChannel *this, char a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v11 = *(this + 9);
  v12 = this + 80;
  if (v11 != this + 80)
  {
    if (a2)
    {
      do
      {
        v17 = *(v11 + 5);
        *(v17 + 552) = 1;
        (*(**(v17 + 160) + 16))(*(v17 + 160));
        v18 = *(v11 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v11 + 2);
            v16 = *v19 == v11;
            v11 = v19;
          }

          while (!v16);
        }

        v11 = v19;
      }

      while (v19 != v12);
    }

    else
    {
      do
      {
        v13 = *(v11 + 5);
        *(v13 + 552) = 0;
        (*(**(v13 + 160) + 24))(*(v13 + 160));
        webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::RecreateReceiveStream(v13);
        v14 = *(v11 + 1);
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = *(v11 + 2);
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v12);
    }
  }

  *(this + 116) = a2;
}

void webrtc::WebRtcVideoReceiveChannel::DeleteReceiveStream(void *a1, void *a2)
{
  v3 = a2[5];
  v4 = a2[6];
  if (v3 == v4 || (v7 = (a1 + 27), (v6 = a1[27]) == 0))
  {
LABEL_22:
    v18 = *(*a2 + 8);

    v18(a2);
    return;
  }

LABEL_3:
  v8 = *v3;
  v9 = v7;
  v10 = v6;
  do
  {
    v11 = *(v10 + 7);
    v12 = v11 >= v8;
    v13 = v11 < v8;
    if (v12)
    {
      v9 = v10;
    }

    v10 = v10[v13];
  }

  while (v10);
  if (v9 != v7 && v8 >= *(v9 + 7))
  {
    v14 = v9[1];
    v15 = v9;
    if (v14)
    {
      do
      {
        v16 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v16 = v15[2];
        v17 = *v16 == v15;
        v15 = v16;
      }

      while (!v17);
    }

    if (a1[26] == v9)
    {
      a1[26] = v16;
    }

    --a1[28];
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v6, v9);
    operator delete(v9);
  }

  while (++v3 != v4)
  {
    v6 = *v7;
    if (*v7)
    {
      goto LABEL_3;
    }
  }

  if (a2)
  {
    goto LABEL_22;
  }
}

uint64_t webrtc::WebRtcVideoReceiveChannel::AddRecvStream(std::string::value_type *this, const webrtc::StreamParams *a2, char a3)
{
  v68 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) != 0 || (webrtc::StreamParams::ToString(a2, __p), webrtc::webrtc_logging_impl::Log("\r\t\t\t\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc"), (SHIBYTE(v50) & 0x80000000) == 0))
  {
    if (*(a2 + 3) != *(a2 + 4))
    {
      goto LABEL_4;
    }

LABEL_28:
    webrtc::StreamParams::operator=(this + 856, a2);
    return 1;
  }

  operator delete(__p[0]);
  if (*(a2 + 3) == *(a2 + 4))
  {
    goto LABEL_28;
  }

LABEL_4:
  if (result)
  {
    v15 = *(a2 + 3);
    v16 = *(a2 + 4);
    if (v15 != v16)
    {
      v18 = this + 80;
      v17 = *(this + 10);
      if (v17)
      {
LABEL_7:
        v19 = *v15;
        v20 = this + 80;
        do
        {
          v21 = *(v17 + 8);
          v22 = v21 >= v19;
          v23 = v21 < v19;
          if (v22)
          {
            v20 = v17;
          }

          v17 = *&v17[8 * v23];
        }

        while (v17);
        if (v20 != v18 && v19 >= *(v20 + 8))
        {
          if ((a3 & 1) == 0)
          {
            v24 = *(v20 + 5);
            if (*(v24 + 168))
            {
              webrtc::WebRtcVideoReceiveChannel::DeleteReceiveStream(this, v24);
              v25 = *(v20 + 1);
              v26 = v20;
              if (v25)
              {
                do
                {
                  v27 = v25;
                  v25 = *v25;
                }

                while (v25);
              }

              else
              {
                do
                {
                  v27 = *(v26 + 2);
                  v28 = *v27 == v26;
                  v26 = v27;
                }

                while (!v28);
              }

              if (*(this + 9) == v20)
              {
                *(this + 9) = v27;
              }

              v29 = *(this + 10);
              --*(this + 11);
              std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v29, v20);
              operator delete(v20);
              goto LABEL_24;
            }
          }

          if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
          {
            return 0;
          }

LABEL_55:
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
          return 0;
        }

LABEL_24:
        while (++v15 != v16)
        {
          v17 = *v18;
          if (*v18)
          {
            goto LABEL_7;
          }
        }

        v15 = *(a2 + 3);
        v16 = *(a2 + 4);
      }
    }

    if (v15 != v16)
    {
      v30 = this + 216;
      if (*(this + 27))
      {
        v31 = v15;
        while (1)
        {
          v32 = *v31;
          v33 = this + 216;
          v34 = *(this + 27);
          do
          {
            v35 = *(v34 + 7);
            v22 = v35 >= v32;
            v36 = v35 < v32;
            if (v22)
            {
              v33 = v34;
            }

            v34 = *&v34[8 * v36];
          }

          while (v34);
          if (v33 != v30 && v32 >= *(v33 + 7))
          {
            break;
          }

          if (++v31 == v16)
          {
            goto LABEL_44;
          }
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          return 0;
        }

        goto LABEL_55;
      }

      do
      {
LABEL_44:
        v44 = *v15;
        v45 = *v30;
        if (!*v30)
        {
LABEL_50:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v46 = v45;
            v47 = *(v45 + 28);
            if (v44 >= v47)
            {
              break;
            }

            v45 = *v46;
            if (!*v46)
            {
              goto LABEL_50;
            }
          }

          if (v47 >= v44)
          {
            break;
          }

          v45 = v46[1];
          if (!v45)
          {
            goto LABEL_50;
          }
        }

        ++v15;
      }

      while (v15 != v16);
    }

    v48 = *(this + 67);
    __p[0] = 0;
    __p[1] = 0;
    v50 = 0;
    v51 = v48;
    v52 = xmmword_273B8E9C0;
    v53 = 256;
    v54 = 0;
    v55 = -1;
    v56 = 0;
    v57 = 0;
    v60[0] = 0;
    v60[1] = 0;
    v58 = 0;
    v59 = v60;
    v60[2] = v61;
    v61[0] = 0;
    v61[1] = 0;
    v61[2] = this + 16;
    v61[3] = 0;
    v62 = 10;
    v63 = 1;
    v65 = 0u;
    v64 = 0u;
    v66 = 16842753;
    v67 = 0;
    webrtc::SSLStreamAdapter::GetDefaultEphemeralKeyExchangeCipherGroups(0);
  }

  return result;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::RemoveRecvStream(webrtc::WebRtcVideoReceiveChannel *this, unsigned int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v11 = *(this + 10);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = this + 80;
  do
  {
    v13 = *(v11 + 8);
    v14 = v13 >= a2;
    v15 = v13 < a2;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *&v11[8 * v15];
  }

  while (v11);
  if (v12 != this + 80 && *(v12 + 8) <= a2)
  {
    webrtc::WebRtcVideoReceiveChannel::DeleteReceiveStream(this, *(v12 + 5));
    v24 = *(v12 + 1);
    if (v24)
    {
      do
      {
        v25 = v24;
        v24 = *v24;
      }

      while (v24);
    }

    else
    {
      v26 = v12;
      do
      {
        v25 = *(v26 + 2);
        v27 = *v25 == v26;
        v26 = v25;
      }

      while (!v27);
    }

    if (*(this + 9) == v12)
    {
      *(this + 9) = v25;
    }

    v28 = *(this + 10);
    --*(this + 11);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v28, v12);
    operator delete(v12);
    return 1;
  }

  else
  {
LABEL_11:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    return 0;
  }
}

void webrtc::WebRtcVideoReceiveChannel::ResetUnsignaledRecvStream(webrtc::WebRtcVideoReceiveChannel *this)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  memset(v20, 0, sizeof(v20));
  webrtc::StreamParams::operator=(this + 856, v20);
  webrtc::StreamParams::~StreamParams(v20);
  if (*(this + 176) == 1)
  {
    *(this + 176) = 0;
  }

  v9 = *(this + 9);
  if (v9 != (this + 80))
  {
    do
    {
      v11 = v9[5];
      if (*(v11 + 168) == 1)
      {
        webrtc::WebRtcVideoReceiveChannel::DeleteReceiveStream(this, v11);
        v12 = v9[1];
        v13 = v12;
        v14 = v9;
        if (v12)
        {
          do
          {
            v15 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = *(v14 + 2);
            v16 = *v15 == v14;
            v14 = v15;
          }

          while (!v16);
        }

        v17 = v9;
        if (v12)
        {
          do
          {
            v18 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v18 = v17[2];
            v16 = *v18 == v17;
            v17 = v18;
          }

          while (!v16);
        }

        if (*(this + 9) == v9)
        {
          *(this + 9) = v18;
        }

        v10 = *(this + 10);
        --*(this + 11);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v10, v9);
        operator delete(v9);
      }

      else
      {
        v19 = v9[1];
        if (v19)
        {
          do
          {
            v15 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v15 = v9[2];
            v16 = *v15 == v9;
            v9 = v15;
          }

          while (!v16);
        }
      }

      v9 = v15;
    }

    while (v15 != (this + 80));
  }
}

uint64_t webrtc::WebRtcVideoReceiveChannel::GetUnsignaledSsrc(webrtc::WebRtcVideoReceiveChannel *this)
{
  v1 = *(this + 9);
  if (v1 == (this + 80))
  {
    return 0;
  }

  while (*(*(v1 + 5) + 168) != 1)
  {
    v3 = *(v1 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

    v1 = v4;
    if (v4 == (this + 80))
    {
      return 0;
    }
  }

  return *(v1 + 8) | 0x100000000;
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::GetUnsignaledSsrc(webrtc::WebRtcVideoReceiveChannel *this)
{
  v1 = *(this + 1);
  if (v1 == (this + 16))
  {
    return 0;
  }

  while (*(*(v1 + 5) + 168) != 1)
  {
    v3 = *(v1 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

    v1 = v4;
    if (v4 == (this + 16))
    {
      return 0;
    }
  }

  return *(v1 + 8) | 0x100000000;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::SetSink(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v15 = *(a1 + 80);
  v14 = a1 + 80;
  v13 = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = v14;
  do
  {
    v17 = *(v13 + 32);
    v18 = v17 >= a2;
    v19 = v17 < a2;
    if (v18)
    {
      v16 = v13;
    }

    v13 = *(v13 + 8 * v19);
  }

  while (v13);
  if (v16 == v14 || *(v16 + 32) > a2)
  {
    return 0;
  }

  v21 = *(v16 + 40);
  pthread_mutex_lock((v21 + 464));
  *(v21 + 528) = a3;
  pthread_mutex_unlock((v21 + 464));
  return 1;
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::SetSink(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v15 = *(a1 + 16);
  v14 = a1 + 16;
  v13 = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = v14;
  do
  {
    v17 = *(v13 + 32);
    v18 = v17 >= a2;
    v19 = v17 < a2;
    if (v18)
    {
      v16 = v13;
    }

    v13 = *(v13 + 8 * v19);
  }

  while (v13);
  if (v16 == v14 || *(v16 + 32) > a2)
  {
    return 0;
  }

  v21 = *(v16 + 40);
  pthread_mutex_lock((v21 + 464));
  *(v21 + 528) = a3;
  pthread_mutex_unlock((v21 + 464));
  return 1;
}

void webrtc::WebRtcVideoReceiveChannel::SetDefaultSink(uint64_t a1, uint64_t a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  *(a1 + 128) = a2;
}

void non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::SetDefaultSink(uint64_t a1, uint64_t a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  *(a1 + 64) = a2;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::GetStats(void *a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    do
    {
      webrtc::VideoReceiverInfo::~VideoReceiverInfo((v4 - 792));
    }

    while (v4 != v5);
  }

  v106 = a2;
  v7 = a2[4];
  v6 = a2 + 4;
  *(v6 - 3) = v5;
  std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::destroy((v6 - 1), v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
  v100 = v6;
  v105 = a1;
  if (a1[11])
  {
    if (webrtc::g_clock)
    {
      v8 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      v9 = v106;
      v10 = a1;
    }

    else
    {
      v9 = v106;
      v10 = a1;
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v8 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v11 = v10[105];
    v13 = v11 == -1 || v8 / 1000000 - v11 > 10000;
    v104 = v13;
    if (v13)
    {
      v10[105] = v8 / 1000000;
    }

    v14 = v10[9];
    v103 = v10 + 10;
    if (v14 != v10 + 10)
    {
      do
      {
        v107 = v14;
        v15 = v14[5];
        v112 = 0;
        LOBYTE(v114) = 0;
        v115 = 0;
        LOBYTE(v116) = 0;
        v117 = 0;
        v121 = 0;
        LOBYTE(v122) = 0;
        v123 = 0;
        v126 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        LOBYTE(v134) = 0;
        v135 = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
        v140 = 0;
        LOBYTE(v141) = 0;
        v142 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 0;
        v108 = 0;
        v109 = 0;
        LOBYTE(v111) = 0;
        v110 = 0;
        v118 = 0u;
        v119 = 0u;
        LOBYTE(v120) = 0;
        memset(&v124, 0, sizeof(v124));
        LOBYTE(v125) = 0;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        LOBYTE(v130) = 0;
        v143 = 0;
        v144 = 0uLL;
        v145 = 0;
        v150[24] = 0;
        v151 = 0;
        v153 = 0;
        LOBYTE(v154) = 0;
        v155 = 0;
        LOBYTE(v156) = 0;
        v157 = 0;
        v158 = 0;
        v150[0] = 0;
        memset(v149, 0, sizeof(v149));
        memset(v152, 0, 61);
        v159 = 0uLL;
        v161 = 0;
        v160 = 0;
        v162 = 0uLL;
        v163 = -1;
        *v164 = 0;
        *&v164[8] = 0;
        *&v164[13] = 0;
        v165 = 0;
        memset(v166, 0, 20);
        v167 = -1;
        v168 = -1;
        LOBYTE(v169) = 0;
        v176 = 0;
        if (v149 == (v15 + 64))
        {
          v18 = 0;
          v17 = 0;
          v19 = 1;
          goto LABEL_26;
        }

        std::vector<webrtc::SsrcGroup>::__assign_with_size[abi:sn200100]<webrtc::SsrcGroup*,webrtc::SsrcGroup*>(v149, *(v15 + 64), *(v15 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(v15 + 72) - *(v15 + 64)) >> 4));
        v16 = *(&v127 + 1);
        v17 = v128;
        if (*(&v127 + 1) >= v128)
        {
          v18 = v127;
          v19 = ((*(&v127 + 1) - v127) >> 4) + 1;
          if (v19 >> 60)
          {
            goto LABEL_191;
          }

LABEL_26:
          v20 = v17 - v18;
          if (v20 >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

LABEL_194:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

LABEL_190:
          __break(1u);
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        if (!*(&v127 + 1))
        {
          goto LABEL_190;
        }

        **(&v127 + 1) = *(v15 + 208);
        *(v16 + 8) = 0;
        *(&v127 + 1) = v16 + 16;
        (*(**(v15 + 160) + 64))(v183);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<std::string,false> const&>(v150, &v184);
        v151 = v188;
        if (v211 != -1)
        {
          v125 = v211;
          v126 = 1;
          v21 = *(v15 + 176);
          v22 = *(v15 + 184);
          if (v21 != v22)
          {
            while (LODWORD(v21[4].__r_.__value_.__l.__data_) != v211)
            {
              v21 = (v21 + 104);
              if (v21 == v22)
              {
                goto LABEL_51;
              }
            }
          }

          if (v21 != v22 && &v124 != v21)
          {
            v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v23 >= 0)
              {
                v25 = v21;
              }

              else
              {
                v25 = v21->__r_.__value_.__r.__words[0];
              }

              if (v23 >= 0)
              {
                size = HIBYTE(v21->__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v21->__r_.__value_.__l.__size_;
              }

              std::string::__assign_no_alias<false>(&v124, v25, size);
            }

            else if ((*(&v21->__r_.__value_.__s + 23) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(&v124, v21->__r_.__value_.__l.__data_, v21->__r_.__value_.__l.__size_);
            }

            else
            {
              v24 = *&v21->__r_.__value_.__l.__data_;
              v124.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
              *&v124.__r_.__value_.__l.__data_ = v24;
            }
          }
        }

LABEL_51:
        v108 = v224;
        v109 = (v225 + v223);
        v110 = __PAIR64__(v219, v226);
        *&v164[16] = v220 / 0x5A;
        *&v152[28] = v183[1];
        *&v27 = v212;
        *(&v27 + 1) = v183[0];
        *&v152[12] = v27;
        pthread_mutex_lock((v15 + 464));
        v167 = *(v15 + 544);
        pthread_mutex_unlock((v15 + 464));
        v165 = *&v190[4];
        *&v166[3] = vrev64_s32(*&v190[12]);
        v166[0] = v191;
        if (v192 == 0x8000000000000000)
        {
          *&v118 = 0xFFF0000000000000;
          v28 = v193;
          if (v193 == 0x8000000000000000)
          {
            goto LABEL_59;
          }
        }

        else if (v192 == 0x7FFFFFFFFFFFFFFFLL)
        {
          *&v118 = 0x7FF0000000000000;
          v28 = v193;
          if (v193 == 0x8000000000000000)
          {
            goto LABEL_59;
          }
        }

        else
        {
          *&v118 = v192 * 0.000001;
          v28 = v193;
          if (v193 == 0x8000000000000000)
          {
LABEL_59:
            v29 = 0xFFF0000000000000;
LABEL_60:
            *(&v118 + 1) = v29;
            v30 = v195;
            *(&v119 + 1) = v194;
            if (v195 == 0x8000000000000000)
            {
              goto LABEL_64;
            }

            goto LABEL_61;
          }
        }

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = 0x7FF0000000000000;
          goto LABEL_60;
        }

        *(&v118 + 1) = v28 * 0.000001;
        v30 = v195;
        *(&v119 + 1) = v194;
        if (v195 == 0x8000000000000000)
        {
LABEL_64:
          v31 = 0xFFF0000000000000;
          goto LABEL_65;
        }

LABEL_61:
        if (v30 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = 0x7FF0000000000000;
LABEL_65:
          v32 = *&v31;
          goto LABEL_67;
        }

        v32 = v30 * 0.000001;
LABEL_67:
        *&v152[40] = *v190 + v189;
        *&v166[1] = v196;
        *&v152[44] = v198;
        *&v152[52] = v189;
        *&v152[56] = HIDWORD(v183[1]);
        *&v152[60] = v204;
        v153 = v205;
        v154 = v206;
        v155 = v207;
        v156 = v208;
        v157 = v209;
        v158 = v210;
        v159 = v199;
        v160 = v200;
        v161 = v201;
        v120 = v221;
        v121 = v222;
        v123 = v216;
        v122 = v215;
        v168 = v203;
        v162 = v202;
        v163 = v197;
        *v164 = v213;
        v164[20] = v214;
        *&v119 = v32;
        *&v152[4] = v228;
        v116 = v227;
        v117 = 1;
        v171 = v236;
        v172 = v237;
        v169 = v234;
        v170 = v235;
        v176 = v241;
        v174 = v239;
        v175 = v240;
        v173 = v238;
        if (v233 == 1)
        {
          if ((v115 & 1) == 0)
          {
            v115 = 1;
          }

          v114 = v232;
          if ((v112 & 1) == 0)
          {
            v112 = 1;
          }

          v111 = v230;
          v108 += v230;
          v109 += v231 + v229;
          LODWORD(v110) = v110 + v232;
        }

        v33 = *(v15 + 456);
        if (v33)
        {
          v34 = (*(*v33 + 48))(v33);
          if (v34)
          {
            v35 = (*(*v34 + 24))(v34, *(v15 + 404));
            if (v35)
            {
              (*(*v35 + 16))(v177);
              if ((v131 & 1) == 0)
              {
                v131 = 1;
              }

              v130 = v182;
              if ((v135 & 1) == 0)
              {
                v135 = 1;
              }

              v134 = v180;
              v108 += v180;
              v109 += v181 + v179;
              LODWORD(v110) = v110 + v182;
            }

            else
            {
              if ((v131 & 1) == 0)
              {
                v131 = 1;
              }

              v130 = 0;
            }
          }
        }

        v137 = v242;
        v138 = v243;
        v139 = v244;
        v140 = v245;
        v141 = v246;
        v142 = v247;
        v143 = v248;
        v144 = v249;
        if (v104 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
        {
          if (webrtc::g_clock)
          {
            v36 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
          }

          else
          {
            if (!dword_28100D8E4)
            {
              mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
            }

            v36 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
          }

          webrtc::VideoReceiveStreamInterface::Stats::ToString(v183, v36 / 1000000, v177);
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
          if (v178 < 0)
          {
            operator delete(v177[0]);
            if ((v218 & 0x80000000) == 0)
            {
              goto LABEL_94;
            }

LABEL_93:
            operator delete(__p);
            goto LABEL_94;
          }
        }

        if (v218 < 0)
        {
          goto LABEL_93;
        }

LABEL_94:
        if (v187 == 1 && v186 < 0)
        {
          operator delete(v184);
        }

        v45 = v9[1];
        v44 = v9[2];
        if (v45 < v44)
        {
          std::allocator_traits<std::allocator<webrtc::VideoReceiverInfo>>::construct[abi:sn200100]<webrtc::VideoReceiverInfo,webrtc::VideoReceiverInfo,void,0>(v9[1], &v108);
          v9[1] = v45 + 792;
          webrtc::VideoReceiverInfo::~VideoReceiverInfo(&v108);
          v46 = v107;
          v47 = v107[1];
          if (v47)
          {
            goto LABEL_157;
          }

          goto LABEL_159;
        }

        v48 = 0xAFD6A052BF5A814BLL * ((v45 - *v9) >> 3) + 1;
        if (v48 > 0x52BF5A814AFD6ALL)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v49 = 0xAFD6A052BF5A814BLL * ((v44 - *v9) >> 3);
        if (2 * v49 > v48)
        {
          v48 = 2 * v49;
        }

        if (v49 >= 0x295FAD40A57EB5)
        {
          v50 = 0x52BF5A814AFD6ALL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          if (v50 <= 0x52BF5A814AFD6ALL)
          {
            operator new();
          }

          goto LABEL_194;
        }

        v51 = 8 * ((v45 - *v9) >> 3);
        std::allocator_traits<std::allocator<webrtc::VideoReceiverInfo>>::construct[abi:sn200100]<webrtc::VideoReceiverInfo,webrtc::VideoReceiverInfo,void,0>(v51, &v108);
        v54 = v9;
        v53 = *v9;
        v52 = v54[1];
        v102 = v51;
        v55 = v51 + v53 - v52;
        v101 = v55;
        if (v52 != v53)
        {
          v56 = v53;
          while (1)
          {
            if (!v55)
            {
              goto LABEL_190;
            }

            v57 = *v56;
            v58 = v56[1];
            v59 = v56[3];
            *(v55 + 32) = v56[2];
            *(v55 + 48) = v59;
            *v55 = v57;
            *(v55 + 16) = v58;
            v60 = v56[4];
            v61 = v56[5];
            v62 = v56[6];
            *(v55 + 105) = *(v56 + 105);
            *(v55 + 80) = v61;
            *(v55 + 96) = v62;
            *(v55 + 64) = v60;
            if (*(v56 + 151) < 0)
            {
              std::string::__init_copy_ctor_external((v55 + 128), *(v56 + 16), *(v56 + 17));
              *(v55 + 152) = *(v56 + 19);
              *(v55 + 160) = 0;
              *(v55 + 168) = 0;
              *(v55 + 176) = 0;
              v70 = *(v56 + 20);
              v69 = *(v56 + 21);
              v66 = v69 - v70;
              if (v69 != v70)
              {
LABEL_120:
                if ((v66 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

LABEL_191:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }
            }

            else
            {
              v63 = v56[8];
              *(v55 + 144) = *(v56 + 18);
              *(v55 + 128) = v63;
              *(v55 + 152) = *(v56 + 19);
              *(v55 + 160) = 0;
              *(v55 + 168) = 0;
              *(v55 + 176) = 0;
              v65 = *(v56 + 20);
              v64 = *(v56 + 21);
              v66 = v64 - v65;
              if (v64 != v65)
              {
                goto LABEL_120;
              }
            }

            *(v55 + 184) = 0;
            *(v55 + 192) = 0;
            *(v55 + 200) = 0;
            v68 = *(v56 + 23);
            v67 = *(v56 + 24);
            if (v67 != v68)
            {
              if (((v67 - v68) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v71 = v56[14];
            *(v55 + 208) = v56[13];
            *(v55 + 224) = v71;
            v72 = v56[15];
            v73 = v56[16];
            v74 = v56[18];
            *(v55 + 272) = v56[17];
            *(v55 + 288) = v74;
            *(v55 + 240) = v72;
            *(v55 + 256) = v73;
            v75 = v56[19];
            v76 = v56[20];
            v77 = v56[21];
            *(v55 + 348) = *(v56 + 348);
            *(v55 + 320) = v76;
            *(v55 + 336) = v77;
            *(v55 + 304) = v75;
            *(v55 + 376) = 0;
            *(v55 + 384) = 0;
            *(v55 + 368) = 0;
            v79 = *(v56 + 46);
            v78 = *(v56 + 47);
            if (v78 != v79)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v78 - v79) >> 4) < 0x555555555555556)
              {
                operator new();
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            *(v55 + 392) = 0;
            *(v55 + 416) = 0;
            if (*(v56 + 416) == 1)
            {
              v80 = (v55 + 392);
              if (*(v56 + 415) < 0)
              {
                std::string::__init_copy_ctor_external(v80, *(v56 + 49), *(v56 + 50));
              }

              else
              {
                v81 = *(v56 + 392);
                *(v55 + 408) = *(v56 + 51);
                *&v80->__r_.__value_.__l.__data_ = v81;
              }

              *(v55 + 416) = 1;
            }

            memcpy((v55 + 424), v56 + 424, 0x169uLL);
            v56 = (v56 + 792);
            v55 += 792;
            if (v56 == v52)
            {
              while (1)
              {
                if (!v53)
                {
                  goto LABEL_190;
                }

                if (*(v53 + 416) == 1 && *(v53 + 415) < 0)
                {
                  operator delete(*(v53 + 49));
                  v82 = *(v53 + 46);
                  if (v82)
                  {
LABEL_135:
                    v83 = *(v53 + 47);
                    v84 = v82;
                    if (v83 != v82)
                    {
                      do
                      {
                        v85 = *(v83 - 3);
                        if (v85)
                        {
                          *(v83 - 2) = v85;
                          operator delete(v85);
                        }

                        v86 = v83 - 6;
                        if (*(v83 - 25) < 0)
                        {
                          operator delete(*v86);
                        }

                        v83 -= 6;
                      }

                      while (v86 != v82);
                      v84 = *(v53 + 46);
                    }

                    *(v53 + 47) = v82;
                    operator delete(v84);
                  }
                }

                else
                {
                  v82 = *(v53 + 46);
                  if (v82)
                  {
                    goto LABEL_135;
                  }
                }

                v87 = *(v53 + 23);
                if (v87)
                {
                  *(v53 + 24) = v87;
                  operator delete(v87);
                }

                v88 = *(v53 + 20);
                if (v88)
                {
                  *(v53 + 21) = v88;
                  operator delete(v88);
                }

                if (*(v53 + 151) < 0)
                {
                  operator delete(*(v53 + 16));
                }

                v53 = (v53 + 792);
                if (v53 == v52)
                {
                  v89 = v106;
                  v53 = *v106;
                  goto LABEL_154;
                }
              }
            }
          }
        }

        v89 = v106;
LABEL_154:
        *v89 = v101;
        v89[1] = v102 + 792;
        v89[2] = 0;
        if (v53)
        {
          operator delete(v53);
        }

        v9 = v106;
        v106[1] = v102 + 792;
        webrtc::VideoReceiverInfo::~VideoReceiverInfo(&v108);
        v46 = v107;
        v47 = v107[1];
        if (v47)
        {
          do
          {
LABEL_157:
            v90 = v47;
            v47 = *v47;
          }

          while (v47);
          goto LABEL_19;
        }

        do
        {
LABEL_159:
          v90 = v46[2];
          v91 = *v90 == v46;
          v46 = v90;
        }

        while (!v91);
LABEL_19:
        v14 = v90;
      }

      while (v90 != v103);
    }

    v92 = *v9;
    for (i = v9[1]; v92 != i; v92 += 792)
    {
      v94 = v105[99];
      v95 = v105[98];
      if (v95 != v94)
      {
        if (*(v92 + 156))
        {
          while (*(v92 + 152) != *(v95 + 3))
          {
            v95 += 216;
            if (v95 == v94)
            {
              goto LABEL_166;
            }
          }
        }

        else
        {
          v95 += 216 * ((v94 - v95 - 216) / 0xD8uLL) + 216;
        }
      }

      if (v95 != v94)
      {
        (*(*v95 + 16))(v183, v95);
        LODWORD(v108) = *(v95 + 3);
        webrtc::RtpCodec::RtpCodec(&v109, v183);
        v109 = &unk_28829C0B8;
        LODWORD(v122) = v195;
        v96 = *v100;
        if (!*v100)
        {
LABEL_180:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v97 = v96;
            v98 = *(v96 + 32);
            if (v108 >= v98)
            {
              break;
            }

            v96 = *v97;
            if (!*v97)
            {
              goto LABEL_180;
            }
          }

          if (v98 >= v108)
          {
            break;
          }

          v96 = v97[1];
          if (!v96)
          {
            goto LABEL_180;
          }
        }

        v109 = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v119 + 8, v120);
        if (v118)
        {
          *(&v118 + 1) = v118;
          operator delete(v118);
        }

        if (v113 < 0)
        {
          operator delete(v110);
        }

        v183[0] = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v192, v193);
        if (*v190)
        {
          *&v190[8] = *v190;
          operator delete(*v190);
        }

        if (v185 < 0)
        {
          operator delete(v183[1]);
        }
      }

LABEL_166:
      ;
    }
  }

  return 1;
}

void webrtc::WebRtcVideoReceiveChannel::OnPacketReceived(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = *MEMORY[0x277D85DE8];
  {
    v10 = *(a1 + 104);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
    }

    v11 = a2[1];
    v39 = *a2;
    v40 = v11;
    *v41 = a2[2];
    *&v41[15] = *(a2 + 47);
    v13 = *(a2 + 7);
    v12 = *(a2 + 8);
    if (v12 == v13)
    {
      v25 = *(a2 + 11);
      if (v25)
      {
        atomic_fetch_add_explicit((v25 + 24), 1u, memory_order_relaxed);
      }

      v37 = a2[7];
      v38 = *(a2 + 128);
      v14 = *(a2 + 17);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
      }

      operator new();
    }

    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_33;
  }

  v15 = a2[1];
  v26[0] = *a2;
  v26[1] = v15;
  *v27 = a2[2];
  *&v27[15] = *(a2 + 47);
  v29 = 0;
  v30 = 0;
  __p = 0;
  v17 = *(a2 + 7);
  v16 = *(a2 + 8);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_33:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v18 = *(a2 + 11);
  v31 = *(a2 + 10);
  v32 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 24), 1u, memory_order_relaxed);
  }

  v19 = a2[7];
  v33 = a2[6];
  v34 = v19;
  v35 = *(a2 + 128);
  v20 = *(a2 + 17);
  v36 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1u, memory_order_relaxed);
  }

  webrtc::WebRtcVideoReceiveChannel::ProcessReceivedPacket(a1, v26);
  v21 = v36;
  if (v36 && atomic_fetch_add((v36 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v32;
  if (v32 && atomic_fetch_add((v32 + 24), 0xFFFFFFFF) == 1)
  {
    v23 = *(v22 + 16);
    *(v22 + 16) = 0;
    if (v23)
    {
      MEMORY[0x2743DA520](v23, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v22, 0x1010C40EE34DA14);
  }

  v24 = __p;
  if (__p)
  {

    operator delete(v24);
  }
}

void webrtc::WebRtcVideoReceiveChannel::ProcessReceivedPacket(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 568);
  v5 = *(a1 + 584);
  v6 = *(a1 + 588);
  v8 = (a2 + 112);
  v7 = *(a2 + 112);
  *(a2 + 54) = *(a1 + 590);
  *(a2 + 52) = v6;
  *(a2 + 48) = v5;
  *(a2 + 32) = v4;
  *(a2 + 124) = 90000;
  if ((v7 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (webrtc::g_clock)
    {
      v9 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v9 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    *v8 = v9 / 1000;
  }

  v10 = (*(**(a1 + 120) + 96))(*(a1 + 120));
  v11 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v11;
  *v25 = *(a2 + 32);
  *&v25[15] = *(a2 + 47);
  *__p = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  *(a2 + 72) = 0;
  v27 = v12;
  v28 = v13;
  v29 = *(a2 + 88);
  v14 = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v32 = *(v8 + 16);
  v15 = *v8;
  v30 = v14;
  v31 = v15;
  v16 = *(a2 + 136);
  *(a2 + 136) = 0;
  v33 = v16;
  v17 = operator new(0x18uLL);
  *v17 = webrtc::WebRtcVideoReceiveChannel::MaybeCreateDefaultReceiveStream;
  v17[1] = 0;
  v17[2] = a1;
  v21[0] = v17;
  v21[1] = 24;
  v22 = absl::internal_any_invocable::RemoteManagerTrivial;
  v23 = absl::internal_any_invocable::RemoteInvoker<false,BOOL,std::__bind_front_t<BOOL (webrtc::WebRtcVideoReceiveChannel::*)(webrtc::RtpPacketReceived const&),webrtc::WebRtcVideoReceiveChannel*> &,webrtc::RtpPacketReceived const&>;
  (*(*v10 + 8))(v10, 1, v24, v21);
  v22(1, v21, v21);
  v18 = v33;
  if (v33 && atomic_fetch_add((v33 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = v29;
  if (v29 && atomic_fetch_add((v29 + 24), 0xFFFFFFFF) == 1)
  {
    v20 = *(v19 + 16);
    *(v19 + 16) = 0;
    if (v20)
    {
      MEMORY[0x2743DA520](v20, 0x1000C8077774924);
    }

    MEMORY[0x2743DA540](v19, 0x1010C40EE34DA14);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t webrtc::WebRtcVideoReceiveChannel::MaybeCreateDefaultReceiveStream(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 848))
  {
    return 0;
  }

  v2 = *(a2 + 1);
  if (*(a1 + 616) == v2 || *(a1 + 156) != *(a1 + 160))
  {
    return 0;
  }

  v3 = *(a1 + 544);
  v4 = *(a1 + 552);
  v5 = a1;
  if (v3 != v4)
  {
    while (v3[56] != v2 && v3[54] != v2)
    {
      if (v3[58] == v2)
      {
        v8 = a2;
        v9 = (*(*a1 + 120))(a1);
        if ((v9 & 0x100000000) == 0)
        {
          return 0;
        }

        ReceiveStream = webrtc::WebRtcVideoReceiveChannel::FindReceiveStream(v5, v9);
        (*(**(ReceiveStream + 160) + 152))(*(ReceiveStream + 160), *(v8 + 12));
        return 1;
      }

      v3 += 62;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  if (*(a1 + 176) == 1)
  {
    v6 = a2;
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

    if ((*(v5 + 176) & 1) == 0)
    {
      goto LABEL_53;
    }

    a1 = v5;
    a2 = v6;
    if (v7 / 1000000 - *(v5 + 168) <= 499)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        return 0;
      }

      return 0;
    }
  }

  v12 = *(a2 + 12);
  v13 = (*(*a1 + 120))(a1);
  if ((v13 & 0x100000000) != 0)
  {
    v14 = v13;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    (*(*v5 + 104))(v5, v14);
  }

  webrtc::StreamParams::StreamParams(&v51, (v5 + 856));
  v22 = v53;
  if (v53 >= v54)
  {
    v23 = ((v53 - v52) >> 2) + 1;
    if (v23 >> 62)
    {
      goto LABEL_54;
    }

    v24 = (v54 - v52) >> 1;
    if (v24 <= v23)
    {
      v24 = ((v53 - v52) >> 2) + 1;
    }

    v25 = 0x3FFFFFFFFFFFFFFFLL;
    if (v54 - v52 < 0x7FFFFFFFFFFFFFFCLL)
    {
      v25 = v24;
    }

    if (v25)
    {
      if (!(v25 >> 62))
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_52;
  }

  if (!v53)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    std::__throw_bad_optional_access[abi:sn200100]();
LABEL_54:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *v53 = v12;
  v53 = v22 + 1;
  v26 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
  if ((v26 & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  if ((webrtc::WebRtcVideoReceiveChannel::AddRecvStream(v5, &v51, 1) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v34, v35, v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v41 = (*(*v5 + 184))(v5, 0);
  if ((v41 & 0x100000000) != 0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  (*(*v5 + 176))(v5, v12, v42);
  (*(*v5 + 144))(v5, v12, *(v5 + 128));
  webrtc::StreamParams::~StreamParams(&v51);
  if (webrtc::g_clock)
  {
    v43 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  }

  else
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v43 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
  }

  *(v5 + 168) = v43 / 1000000;
  result = 1;
  *(v5 + 176) = 1;
  return result;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::FindReceiveStream(webrtc::WebRtcVideoReceiveChannel *this, unsigned int a2)
{
  if (a2)
  {
    v4 = *(this + 10);
    v2 = this + 80;
    v3 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v11 = (*(*this + 120))(this);
    if ((v11 & 0x100000000) == 0)
    {
      return 0;
    }

    a2 = v11;
    v2 = this + 80;
    v3 = *(this + 10);
    if (!v3)
    {
      return 0;
    }
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && a2 >= *(v5 + 8))
  {
    return *(v5 + 5);
  }

  return 0;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::SetInterface(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result + 24) + 4) = a2 != 0;
  *(result + 48) = a2;
  if (*(result + 40) == 1)
  {
    v3 = *(result + 56);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return result;
    }
  }

  v4 = (*(*a2 + 16))(a2, 0, 5, v3);
  result = *(v2 + 48);
  if (v4)
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    (*(*result + 16))(result, 1, 5, v3);
    result = *(v2 + 48);
    if (!result)
    {
      return result;
    }
  }

  v5 = *(*result + 16);

  return v5();
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::SetInterface(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(*(result - 40) + 4) = a2 != 0;
  *(result - 16) = a2;
  if (*(result - 24) == 1)
  {
    v3 = *(result - 8);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return result;
    }
  }

  v4 = (*(*a2 + 16))(a2, 0, 5, v3);
  result = *(v2 - 16);
  if (v4)
  {
    if (!result)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    (*(*result + 16))(result, 1, 5, v3);
    result = *(v2 - 16);
    if (!result)
    {
      return result;
    }
  }

  v5 = *(*result + 16);

  return v5();
}

uint64_t webrtc::WebRtcVideoReceiveChannel::SetFrameDecryptor(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v5 = *(a1 + 80);
  result = a1 + 80;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      v11 = *a3;
      v13 = v11;
      if (v11)
      {
        (**v11)(v11);
        webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::SetFrameDecryptor(v10, &v13);
        v12 = *(*v11 + 8);

        return v12(v11);
      }

      else
      {
        return webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::SetFrameDecryptor(v10, &v13);
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::SetFrameDecryptor(uint64_t a1, void *a2)
{
  v4 = *a2;
  if (*a2)
  {
    (**v4)(*a2);
  }

  result = *(a1 + 352);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 352) = v4;
  if (*(a1 + 160))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    v13 = *(a1 + 160);
    v14 = *a2;
    v15 = v14;
    if (v14)
    {
      (**v14)(v14);
    }

    (*(*v13 + 40))(v13, &v15);
    result = v15;
    if (v15)
    {
      return ((*v15)[1])(v15);
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::SetFrameDecryptor(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  result = a1 + 16;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      v11 = *a3;
      v13 = v11;
      if (v11)
      {
        (**v11)(v11);
        webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::SetFrameDecryptor(v10, &v13);
        v12 = *(*v11 + 8);

        return v12(v11);
      }

      else
      {
        return webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::SetFrameDecryptor(v10, &v13);
      }
    }
  }

  return result;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::SetBaseMinimumPlayoutDelayMs(char **this, unsigned int a2, uint64_t a3)
{
  v6 = (*(*this + 15))(this);
  if (a2)
  {
    v9 = this[10];
    v8 = (this + 10);
    v7 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  *(this + 34) = a3;
  if ((v6 & 0x100000000) == 0)
  {
    return 1;
  }

  a2 = v6;
  v16 = this[10];
  v8 = (this + 10);
  v7 = v16;
  if (v16)
  {
LABEL_3:
    v10 = v8;
    do
    {
      v11 = *(v7 + 8);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * v13];
    }

    while (v7);
    if (v10 != v8 && a2 >= *(v10 + 8))
    {
      v14 = *(*(v10 + 5) + 160);
      if (v14)
      {
        (*(*v14 + 72))(v14, a3);
        return 1;
      }

      return 1;
    }
  }

LABEL_15:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  return 0;
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::SetBaseMinimumPlayoutDelayMs(webrtc::WebRtcVideoReceiveChannel *this, unsigned int a2, uint64_t a3)
{
  v6 = (*(*(this - 8) + 120))();
  if (a2)
  {
    v9 = *(this + 2);
    v8 = this + 16;
    v7 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  *(this + 18) = a3;
  if ((v6 & 0x100000000) == 0)
  {
    return 1;
  }

  a2 = v6;
  v16 = *(this + 2);
  v8 = this + 16;
  v7 = v16;
  if (v16)
  {
LABEL_3:
    v10 = v8;
    do
    {
      v11 = *(v7 + 8);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * v13];
    }

    while (v7);
    if (v10 != v8 && a2 >= *(v10 + 8))
    {
      v14 = *(*(v10 + 5) + 160);
      if (v14)
      {
        (*(*v14 + 72))(v14, a3);
        return 1;
      }

      return 1;
    }
  }

LABEL_15:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  return 0;
}

uint64_t webrtc::WebRtcVideoReceiveChannel::GetBaseMinimumPlayoutDelayMs(webrtc::WebRtcVideoReceiveChannel *this, unsigned int a2)
{
  if (!a2)
  {
    return *(this + 34) | 0x100000000;
  }

  v4 = *(this + 10);
  v2 = this + 80;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    v17 = *(*(v5 + 5) + 160);
    if (v17)
    {
      LODWORD(v17) = (*(*v17 + 80))(v17);
    }

    v18 = v17 & 0xFFFFFF00;
    v16 = 0x100000000;
  }

  else
  {
LABEL_10:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    v16 = 0;
    LOBYTE(v17) = 0;
    v18 = 0;
  }

  return v16 | v18 | v17;
}

uint64_t non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::GetBaseMinimumPlayoutDelayMs(webrtc::WebRtcVideoReceiveChannel *this, unsigned int a2)
{
  if (!a2)
  {
    return *(this + 18) | 0x100000000;
  }

  v4 = *(this + 2);
  v2 = this + 16;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 8) <= a2)
  {
    v17 = *(*(v5 + 5) + 160);
    if (v17)
    {
      LODWORD(v17) = (*(*v17 + 80))(v17);
    }

    v18 = v17 & 0xFFFFFF00;
    v16 = 0x100000000;
  }

  else
  {
LABEL_10:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    v16 = 0;
    LOBYTE(v17) = 0;
    v18 = 0;
  }

  return v16 | v18 | v17;
}

void webrtc::WebRtcVideoReceiveChannel::GetSources(webrtc::WebRtcVideoReceiveChannel *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = *(this + 10);
  v4 = this + 80;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= a2)
  {
    v18 = *(**(*(v7 + 5) + 160) + 48);

    v18();
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void non-virtual thunk towebrtc::WebRtcVideoReceiveChannel::GetSources(webrtc::WebRtcVideoReceiveChannel *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6 = *(this + 2);
  v4 = this + 16;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= a2)
  {
    v18 = *(**(*(v7 + 5) + 160) + 48);

    v18();
  }

  else
  {
LABEL_9:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void webrtc::anonymous namespace::ExtractCodecInformation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = a1;
    v7 = a1 + 248 * a2;
    v39 = (a3 + 8);
    v38 = (a4 + 8);
    do
    {
      if (*(v6 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *(v6 + 16), *(v6 + 24));
        v43 = 0;
        v44 = 0;
        v42 = &v43;
        v8 = *(v6 + 168);
        v9 = (v6 + 176);
        if (v8 == (v6 + 176))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v41 = *(v6 + 16);
        v42 = &v43;
        v43 = 0;
        v44 = 0;
        v8 = *(v6 + 168);
        v9 = (v6 + 176);
        if (v8 == (v6 + 176))
        {
          goto LABEL_8;
        }
      }

      do
      {
        if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v42, &v43, &v49, &v40, v8 + 4))
        {
          operator new();
        }

        v13 = v8[1];
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
            v14 = v8[2];
            v33 = *v14 == v8;
            v8 = v14;
          }

          while (!v33);
        }

        v8 = v14;
      }

      while (v14 != v9);
LABEL_8:
      v45 = 0;
      v11 = a5[1];
      v10 = a5[2];
      if (v11 >= v10)
      {
        v15 = 0x4EC4EC4EC4EC4EC5 * ((v11 - *a5) >> 3) + 1;
        if (v15 > 0x276276276276276)
        {
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v16 = 0x4EC4EC4EC4EC4EC5 * ((v10 - *a5) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x13B13B13B13B13BLL)
        {
          v17 = 0x276276276276276;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (v17 <= 0x276276276276276)
          {
            operator new();
          }
        }

        else
        {
LABEL_69:
          __break(1u);
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (!v11)
      {
        goto LABEL_69;
      }

      v49 = *&v41.__r_.__value_.__l.__data_;
      v12 = v41.__r_.__value_.__r.__words[2];
      memset(&v41, 0, sizeof(v41));
      v50 = v12;
      v51 = v42;
      v52 = v43;
      v53 = v44;
      if (v44)
      {
        *(v43 + 16) = &v52;
        v42 = &v43;
        v43 = 0;
        v44 = 0;
      }

      else
      {
        v51 = &v52;
      }

      v54 = 0;
      v55 = __p;
      v56 = v47;
      v57 = v48;
      v45 = 0;
      v18 = *(v6 + 12);
      v19 = v49;
      *(v11 + 16) = v50;
      *v11 = v19;
      v50 = 0;
      v49 = 0uLL;
      *(v11 + 24) = v51;
      v20 = v52;
      *(v11 + 32) = v52;
      v21 = v11 + 32;
      v22 = v53;
      *(v11 + 40) = v53;
      if (v22)
      {
        *(v20 + 16) = v21;
        v20 = 0;
        v51 = &v52;
        v52 = 0;
        v53 = 0;
      }

      else
      {
        *(v11 + 24) = v21;
      }

      *(v11 + 48) = 0;
      *(v11 + 48) = v54;
      v23 = v55;
      v24 = v56;
      *(v11 + 88) = v57;
      *(v11 + 72) = v24;
      *(v11 + 56) = v23;
      v54 = 0;
      *(v11 + 96) = v18;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v51, v20);
      if ((SHIBYTE(v50) & 0x80000000) == 0)
      {
        a5[1] = v11 + 104;
        if ((v45 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_37:
        operator delete(__p);
        goto LABEL_38;
      }

      operator delete(v49);
      a5[1] = v11 + 104;
      if (v45)
      {
        goto LABEL_37;
      }

LABEL_38:
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v42, v43);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
        v25 = *v39;
        if (!*v39)
        {
LABEL_47:
          operator new();
        }
      }

      else
      {
        v25 = *v39;
        if (!*v39)
        {
          goto LABEL_47;
        }
      }

      v26 = *(v6 + 232);
      while (1)
      {
        while (1)
        {
          v27 = v25;
          v28 = *(v25 + 28);
          if (v26 >= v28)
          {
            break;
          }

          v25 = *v27;
          if (!*v27)
          {
            goto LABEL_47;
          }
        }

        if (v28 >= v26)
        {
          break;
        }

        v25 = v27[1];
        if (!v25)
        {
          goto LABEL_47;
        }
      }

      if (*(v6 + 80) == 1)
      {
        v29 = (v6 + 56);
        v30 = *(v6 + 79);
        if (v30 < 0)
        {
          if (*(v6 + 64) == 3)
          {
            v29 = *v29;
LABEL_56:
            v31 = *v29;
            v32 = *(v29 + 2);
            v33 = v31 == webrtc::kPacketizationParamRaw && v32 == 119;
            if (v33)
            {
              v34 = *v38;
              if (!*v38)
              {
LABEL_67:
                operator new();
              }

              v35 = *(v6 + 12);
              while (1)
              {
                while (1)
                {
                  v36 = v34;
                  v37 = *(v34 + 28);
                  if (v35 >= v37)
                  {
                    break;
                  }

                  v34 = *v36;
                  if (!*v36)
                  {
                    goto LABEL_67;
                  }
                }

                if (v37 >= v35)
                {
                  break;
                }

                v34 = v36[1];
                if (!v34)
                {
                  goto LABEL_67;
                }
              }
            }
          }
        }

        else if (v30 == 3)
        {
          goto LABEL_56;
        }
      }

      v6 += 248;
    }

    while (v6 != v7);
  }
}

void webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::CreateReceiveStream(webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream *this)
{
  if ((*(this + 100) & 0x80000000) == 0)
  {
    if (*(this + 101))
    {
      v3 = *(this + 52);
      v2 = *(this + 53);
      if (v2 - v3 == 4)
      {
        v4 = *(this + 1);
        v36 = *(this + 50);
        v37 = *(this + 102);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        if (v2 != v3)
        {
          operator new();
        }

        v41 = *(this + 440);
        *(this + 57) = (*(*v4 + 72))(v4, &v36);
        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }
      }
    }
  }

  webrtc::VideoReceiveStreamInterface::Config::Config(&v22, (this + 176));
  v5 = *(this + 57);
  v25[32] = v5 != 0;
  v26 = v5;
  v6 = *(this + 1);
  v12 = v22;
  v22 = 0uLL;
  v7 = v23;
  v23 = 0;
  v13 = v7;
  v14 = v24;
  webrtc::VideoReceiveStreamInterface::Config::Rtp::Rtp(&v15, v25);
  *v16 = *v27;
  *(&v16[1] + 5) = *&v27[13];
  *&v16[3] = v28;
  v28 = 0uLL;
  v8 = v29;
  v9 = v30;
  v29 = 0;
  v30 = 0;
  v16[5] = v8;
  v16[6] = v9;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v33 = 0uLL;
  v10 = v34;
  v11 = v35;
  v34 = 0;
  v35 = 0;
  v20 = v10;
  v21 = v11;
  *(this + 20) = (*(*v6 + 56))(v6, &v12);
  webrtc::VideoReceiveStreamInterface::Config::~Config(&v12);
  webrtc::VideoReceiveStreamInterface::Config::~Config(&v22);
}

void webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::~WebRtcVideoReceiveStream(webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream *this)
{
  *this = &unk_2882A43C0;
  (*(**(this + 1) + 64))(*(this + 1), *(this + 20));
  if (*(this + 57))
  {
    (*(**(this + 1) + 80))(*(this + 1));
  }

  pthread_mutex_destroy((this + 464));
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  webrtc::VideoReceiveStreamInterface::Config::~Config((this + 176));
  webrtc::StreamParams::~StreamParams((this + 16));
}

{
  *this = &unk_2882A43C0;
  (*(**(this + 1) + 64))(*(this + 1), *(this + 20));
  if (*(this + 57))
  {
    (*(**(this + 1) + 80))(*(this + 1));
  }

  pthread_mutex_destroy((this + 464));
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 53) = v2;
    operator delete(v2);
  }

  webrtc::VideoReceiveStreamInterface::Config::~Config((this + 176));
  webrtc::StreamParams::~StreamParams((this + 16));

  JUMPOUT(0x2743DA540);
}

void webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::RecreateReceiveStream(webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v27 = 0;
  v2 = *(this + 20);
  if (v2)
  {
    v3 = (*(*v2 + 80))(*(this + 20));
    v4 = *(this + 20);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    (*(*v4 + 88))(v21);
    if (v27 != 1)
    {
      if (v22)
      {
        if (v22 == v21)
        {
          v25 = v24;
          (*(*v22 + 24))();
        }

        else
        {
          v25 = v22;
          v22 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v23;
      v27 = 1;
      v7 = v22;
      if (v22 != v21)
      {
LABEL_19:
        if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v8 = *(&v19 + 1);
        if (*(&v19 + 1) != &v18)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }

LABEL_26:
      (*(*v7 + 32))(v7);
      v8 = *(&v19 + 1);
      if (*(&v19 + 1) != &v18)
      {
LABEL_22:
        if (v8)
        {
          (*(*v8 + 40))(v8);
        }

LABEL_28:
        (*(**(this + 1) + 64))(*(this + 1), *(this + 20));
        *(this + 20) = 0;
        if (!*(this + 57))
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_27:
      (*(*v8 + 32))(v8);
      goto LABEL_28;
    }

    v5 = v25;
    v25 = 0;
    if (v5 == v24)
    {
      (*(*v5 + 32))(v5);
      v6 = v22;
      if (v22)
      {
LABEL_7:
        if (v6 == v21)
        {
          v25 = v24;
          (*(*v6 + 24))(v6, v24);
        }

        else
        {
          v25 = v6;
          v22 = 0;
        }

LABEL_18:
        v7 = v22;
        *&v26 = v23;
        BYTE8(v26) = BYTE8(v23);
        if (v22 != v21)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      v6 = v22;
      if (v22)
      {
        goto LABEL_7;
      }
    }

    v25 = 0;
    goto LABEL_18;
  }

  v3 = 0;
  if (*(this + 57))
  {
LABEL_29:
    (*(**(this + 1) + 80))(*(this + 1));
    *(this + 57) = 0;
  }

LABEL_30:
  webrtc::WebRtcVideoReceiveChannel::WebRtcVideoReceiveStream::CreateReceiveStream(this);
  if (v2)
  {
    (*(**(this + 20) + 72))(*(this + 20), v3);
  }

  if (v27 != 1)
  {
LABEL_44:
    v12 = *(this + 552);
    if (v12 != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v9 = *(this + 20);
  if (v25)
  {
    if (v25 == v24)
    {
      v14 = v13;
      v10 = v9;
      (*(*v25 + 24))(v25, v13);
      v9 = v10;
    }

    else
    {
      v14 = v25;
      v25 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v26;
  (*(*v9 + 88))(v16);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    v11 = v14;
    if (v14 != v13)
    {
LABEL_42:
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (v17)
    {
      (*(*v17 + 40))();
    }

    v11 = v14;
    if (v14 != v13)
    {
      goto LABEL_42;
    }
  }

  (*(*v11 + 32))(v11);
  v12 = *(this + 552);
  if (v12 == 1)
  {
LABEL_45:
    *(this + 552) = v12;
    (*(**(this + 20) + 16))(*(this + 20));
  }

LABEL_46:
  if (v27 == 1)
  {
    if (v25 == v24)
    {
      (*(*v25 + 32))(v25);
    }

    else if (v25)
    {
      (*(*v25 + 40))(v25);
    }
  }
}