BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a1 + 32, (a2 - 32));
        return 1;
      case 4:
        std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a1 + 32, a1 + 64, (a2 - 32));
        return 1;
      case 5:
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a1 + 32, a1 + 64, a1 + 96, (a2 - 32));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 9);
      if (v5 >= 0)
      {
        v6 = (a2 - 32);
      }

      else
      {
        v6 = *(a2 - 32);
      }

      if (v5 >= 0)
      {
        v7 = *(a2 - 9);
      }

      else
      {
        v7 = *(a2 - 24);
      }

      v8 = *(a1 + 23);
      if (v8 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      if (v8 >= 0)
      {
        v10 = *(a1 + 23);
      }

      else
      {
        v10 = *(a1 + 8);
      }

      if (v10 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v10;
      }

      v12 = memcmp(v6, v9, v11);
      if (v12)
      {
        if (v12 < 0)
        {
          goto LABEL_141;
        }
      }

      else
      {
        if (v7 == v10)
        {
          v56 = *(v2 - 4);
          v57 = *(a1 + 28);
          v58 = v56 == v57;
          if (v56 >= v57)
          {
            v59 = 1;
          }

          else
          {
            v59 = -1;
          }

          if (v58)
          {
            v60 = *(v2 - 8);
            v61 = *(a1 + 24);
            v62 = v60 == v61;
            v63 = v60 < v61;
            v59 = -1;
            if (!v63)
            {
              v59 = 1;
            }

            if (v62)
            {
              v59 = 0;
            }
          }

          if ((v59 & 0x80) == 0)
          {
            return 1;
          }

          goto LABEL_141;
        }

        if (v7 < v10)
        {
LABEL_141:
          std::swap[abi:sn200100]<webrtc::RtpExtension>(a1, (v2 - 32));
        }
      }

      return 1;
    }
  }

  v13 = (a1 + 64);
  std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::RtpExtension::DeduplicateHeaderExtensions(std::vector<webrtc::RtpExtension> const&,webrtc::RtpExtension::Filter)::$_0 &,webrtc::RtpExtension*,0>(a1, a1 + 32, (a1 + 64));
  v14 = a1 + 96;
  if (a1 + 96 == v2)
  {
    return 1;
  }

  v15 = 0;
  v65 = 0;
  while (1)
  {
    v18 = v2;
    v19 = *(v14 + 23);
    v20 = *v14;
    v21 = *(v14 + 8);
    if (v19 >= 0)
    {
      v22 = v14;
    }

    else
    {
      v22 = *v14;
    }

    if (v19 >= 0)
    {
      v23 = *(v14 + 23);
    }

    else
    {
      v23 = *(v14 + 8);
    }

    v24 = *(v13 + 23);
    if (v24 >= 0)
    {
      v25 = v13;
    }

    else
    {
      v25 = *v13;
    }

    if (v24 >= 0)
    {
      v26 = *(v13 + 23);
    }

    else
    {
      v26 = v13[1];
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v22, v25, v27);
    if (v28)
    {
      v2 = v18;
      if (v28 < 0)
      {
        goto LABEL_71;
      }

      goto LABEL_38;
    }

    v29 = v23 >= v26;
    if (v23 == v26)
    {
      break;
    }

    v2 = v18;
    if (!v29)
    {
      goto LABEL_71;
    }

LABEL_38:
    v13 = v14;
    v15 += 32;
    v14 += 32;
    if (v14 == v2)
    {
      return 1;
    }
  }

  v30 = *(v14 + 28);
  v31 = *(v13 + 28);
  v32 = v30 == v31;
  if (v30 >= v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  if (v32)
  {
    v34 = *(v14 + 24);
    v35 = *(v13 + 6);
    v36 = v34 == v35;
    v33 = v34 >= v35 ? 1 : -1;
    if (v36)
    {
      v33 = 0;
    }
  }

  v2 = v18;
  if ((v33 & 0x80) == 0)
  {
    goto LABEL_38;
  }

LABEL_71:
  if (v19 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v20, v21);
  }

  else
  {
    __p = *v14;
  }

  v67 = *(v14 + 24);
  v68 = *(v14 + 28);
  v37 = v15;
  while (2)
  {
    v39 = v37;
    v40 = a1 + v37;
    v41 = a1 + v37 + 64;
    v42 = *(v40 + 87);
    if (*(v40 + 119) < 0)
    {
      if (v42 >= 0)
      {
        v43 = v41;
      }

      else
      {
        v43 = *v41;
      }

      if (v42 >= 0)
      {
        v44 = *(v40 + 87);
      }

      else
      {
        v44 = *(v40 + 72);
      }

      std::string::__assign_no_alias<false>((v40 + 96), v43, v44);
    }

    else if ((*(v40 + 87) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v40 + 96), *v41, *(a1 + v39 + 72));
    }

    else
    {
      *(v40 + 96) = *v41;
      *(v40 + 112) = *(v41 + 16);
    }

    v45 = a1 + v39;
    *(v45 + 120) = *(a1 + v39 + 88);
    *(v45 + 124) = *(a1 + v39 + 92);
    if (v39 != -64)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v48 = *(v45 + 55);
      if (v48 >= 0)
      {
        v49 = (v45 + 32);
      }

      else
      {
        v49 = *(v45 + 32);
      }

      if (v48 >= 0)
      {
        v50 = *(v45 + 55);
      }

      else
      {
        v50 = *(v45 + 40);
      }

      if (v50 >= size)
      {
        v51 = size;
      }

      else
      {
        v51 = v50;
      }

      v52 = memcmp(p_p, v49, v51);
      if (v52)
      {
        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (size == v50)
        {
          v53 = *(v45 + 60);
          if (v68 >= v53)
          {
            v38 = 1;
          }

          else
          {
            v38 = -1;
          }

          if (v68 == v53)
          {
            v54 = *(v45 + 56);
            v38 = v67 >= v54 ? 1 : -1;
            if (v67 == v54)
            {
              v38 = 0;
            }
          }

LABEL_79:
          v37 = v39 - 32;
          if ((v38 & 0x80) == 0)
          {
            goto LABEL_120;
          }

          continue;
        }

        if (size >= v50)
        {
LABEL_120:
          v55 = a1 + v39 + 64;
          if (v55 == &__p)
          {
            goto LABEL_36;
          }

          goto LABEL_123;
        }
      }

      v38 = -1;
      goto LABEL_79;
    }

    break;
  }

  v55 = a1;
  if (a1 == &__p)
  {
    goto LABEL_36;
  }

LABEL_123:
  if (*(v55 + 23) < 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(v55, v16, v17);
  }

  else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v55 = __p;
  }

LABEL_36:
  *(v45 + 88) = v67;
  *(v45 + 92) = v68;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (++v65 == 8)
    {
      return v14 + 32 == v2;
    }

    goto LABEL_38;
  }

  if (++v65 != 8)
  {
    goto LABEL_38;
  }

  return v14 + 32 == v2;
}

void std::swap[abi:sn200100]<webrtc::RtpExtension>(uint64_t a1, std::string *__dst)
{
  if (*(a1 + 23) < 0)
  {
    v3 = a1;
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    a1 = v3;
  }

  else
  {
    __p = *a1;
  }

  v4 = a1 + 24;
  v14 = *(a1 + 24);
  v15 = *(a1 + 28);
  if (a1 != __dst)
  {
    v5 = HIBYTE(__dst->__r_.__value_.__r.__words[2]);
    if (*(a1 + 23) < 0)
    {
      if (v5 >= 0)
      {
        v7 = __dst;
      }

      else
      {
        v7 = __dst->__r_.__value_.__r.__words[0];
      }

      if (v5 >= 0)
      {
        size = HIBYTE(__dst->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst->__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(a1, v7, size);
    }

    else if ((*(&__dst->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1, __dst->__r_.__value_.__l.__data_, __dst->__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__dst->__r_.__value_.__l.__data_;
      *(a1 + 16) = *(&__dst->__r_.__value_.__l + 2);
      *a1 = v6;
    }
  }

  v10 = __dst + 1;
  data = __dst[1].__r_.__value_.__l.__data_;
  *(v4 + 4) = __dst[1].__r_.__value_.__s.__data_[4];
  *v4 = data;
  if (&__p == __dst)
  {
LABEL_28:
    LODWORD(v10->__r_.__value_.__l.__data_) = v14;
    __dst[1].__r_.__value_.__s.__data_[4] = v15;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

  if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(__dst, p_p, v12);
    goto LABEL_28;
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    LODWORD(v10->__r_.__value_.__l.__data_) = v14;
    __dst[1].__r_.__value_.__s.__data_[4] = v15;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  *__dst = __p;
  LODWORD(v10->__r_.__value_.__l.__data_) = v14;
  __dst[1].__r_.__value_.__s.__data_[4] = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }
}

void webrtc::ToRtpCapabilities(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  v159 = *MEMORY[0x277D85DE8];
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = *a1;
  v135 = a1[1];
  if (*a1 == v135)
  {
    v134 = 0;
    LOBYTE(v20) = 0;
    goto LABEL_263;
  }

  v5 = 0;
  v6 = 0;
  v134 = 0;
  do
  {
    v7 = (v4 + 16);
    v8 = *(v4 + 39);
    if (*(v4 + 39) < 0)
    {
      v11 = *(v4 + 24);
      if (v11 != 3)
      {
        if (v11 != 6)
        {
          if (v11 == 10 && **v7 == *"flexfec-03" && *(*v7 + 8) == *"03")
          {
            LOBYTE(v134) = 1;
          }

          goto LABEL_44;
        }

        v13 = **v7 == *"ulpfec" && *(*v7 + 4) == *"ec";
LABEL_40:
        v21 = v13;
        BYTE4(v134) |= v21;
        goto LABEL_44;
      }

      v15 = *v7;
      if (**v7 == webrtc::kRedCodecName && *(*v7 + 2) == 100)
      {
LABEL_198:
        v20 = 1;
        v19 = v6;
        if (v5)
        {
          goto LABEL_257;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 != 6)
        {
          if (v8 == 10)
          {
            v9 = *v7 == *"flexfec-03" && *(v4 + 24) == *"03";
            v10 = v9;
            LOBYTE(v134) = v10 | v134;
          }

          goto LABEL_44;
        }

        v13 = *v7 == *"ulpfec" && *(v4 + 20) == *"ec";
        goto LABEL_40;
      }

      v14 = *v7 == webrtc::kRedCodecName && *(v4 + 18) == 100;
      v15 = (v4 + 16);
      if (v14)
      {
        goto LABEL_198;
      }
    }

    v16 = *v15;
    v17 = *(v15 + 2);
    if (v16 == *"rtx" && v17 == webrtc::kRtxCodecName[2])
    {
      v19 = 1;
      v20 = v5;
      if (v6)
      {
        goto LABEL_257;
      }

      goto LABEL_45;
    }

LABEL_44:
    LODWORD(v19) = v6;
    LODWORD(v20) = v5;
LABEL_45:
    v136 = v19;
    v145 = 0;
    LOBYTE(v146) = 0;
    v147 = 0;
    v149 = 0;
    v150 = 0;
    v148 = 0;
    v152 = 0;
    v153 = 0;
    *&v144 = 0;
    v143 = 0uLL;
    *(&v144 + 5) = 0;
    v151 = &v152;
    v142 = &unk_28829C098;
    LOBYTE(v154) = 0;
    BYTE4(v154) = 0;
    v155 = 0;
    if (&v143 != v7)
    {
      if ((v8 & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(&v143, *(v4 + 16), *(v4 + 24));
      }

      else
      {
        v22 = *v7;
        *&v144 = *(v4 + 32);
        v143 = v22;
      }
    }

    v137 = v20;
    v23 = *(v4 + 8);
    v24 = *(v4 + 40);
    DWORD2(v144) = v23 != 0;
    HIDWORD(v144) = v24;
    v145 = 1;
    LODWORD(v154) = *(v4 + 12);
    BYTE4(v154) = 1;
    v25 = *(v4 + 192);
    v26 = *(v4 + 200);
    if (v25 == v26)
    {
      if (!v23)
      {
        goto LABEL_175;
      }

      goto LABEL_51;
    }

    do
    {
      if (*(v25 + 23) < 0)
      {
        v34 = v25[1];
        if (v34 <= 8)
        {
          if (v34 == 3)
          {
            if (**v25 != *"ccm" || *(*v25 + 2) != webrtc::kRtcpFbParamCcm[2])
            {
              goto LABEL_126;
            }

LABEL_115:
            v54 = *(v25 + 47);
            if (v54 < 0)
            {
              if (v25[4] != 3)
              {
                goto LABEL_156;
              }

              v55 = v25[3];
            }

            else
            {
              v55 = (v25 + 3);
              if (v54 != 3)
              {
LABEL_156:
                if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
                {
                  goto LABEL_60;
                }

                goto LABEL_61;
              }
            }

            v70 = *v55;
            v71 = *(v55 + 2);
            if (v70 == *"fir" && v71 == webrtc::kRtcpFbCcmParamFir[2])
            {
              v65 = 0;
              v64 = 1;
              v63 = 2;
              v66 = v149;
              v67 = v150;
              if (v149 >= v150)
              {
                goto LABEL_142;
              }

              goto LABEL_139;
            }

            goto LABEL_156;
          }

          if (v34 != 4 || **v25 != *"nack")
          {
            goto LABEL_126;
          }

LABEL_72:
          v35 = *(v25 + 47);
          v36 = v35;
          if (v35 < 0)
          {
            v35 = v25[4];
          }

          if (!v35)
          {
            v63 = 0;
            v64 = 1;
            v65 = 2;
            v66 = v149;
            v67 = v150;
            if (v149 >= v150)
            {
              goto LABEL_142;
            }

LABEL_139:
            if (!v66)
            {
              goto LABEL_299;
            }

            *v66 = v65;
            v66[1] = v63;
            *(v66 + 8) = v64;
            v3 = a3;
            v149 = v66 + 3;
            goto LABEL_61;
          }

          if (v36 < 0)
          {
            if (v25[4] != 3)
            {
              goto LABEL_166;
            }

            v37 = v25[3];
          }

          else
          {
            v37 = (v25 + 3);
            if (v36 != 3)
            {
LABEL_166:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
LABEL_60:
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_parameters_conversion.cc");
                goto LABEL_61;
              }

              goto LABEL_61;
            }
          }

          v73 = *v37;
          v74 = *(v37 + 2);
          if (v73 == *"pli" && v74 == webrtc::kRtcpFbNackParamPli[2])
          {
            v63 = 1;
            v65 = 2;
            v64 = 1;
            v66 = v149;
            v67 = v150;
            if (v149 >= v150)
            {
LABEL_142:
              v68 = 1 - 0x5555555555555555 * ((v66 - v148) >> 2);
              if (v68 > 0x1555555555555555)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

              v69 = 0xAAAAAAAAAAAAAAABLL * ((v67 - v148) >> 2);
              if (2 * v69 > v68)
              {
                v68 = 2 * v69;
              }

              if (v69 >= 0xAAAAAAAAAAAAAAALL)
              {
                v68 = 0x1555555555555555;
              }

              if (v68)
              {
                if (v68 <= 0x1555555555555555)
                {
                  operator new();
                }

LABEL_300:
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }

LABEL_299:
              __break(1u);
              goto LABEL_300;
            }

            goto LABEL_139;
          }

          goto LABEL_166;
        }

        if (v34 == 9)
        {
          v56 = *v25;
          if (**v25 != *"goog-lntf" || *(*v25 + 8) != webrtc::kRtcpFbParamLntf[8])
          {
            v58 = *v56;
            v59 = *(v56 + 8);
            if (v58 != *"goog-remb" || v59 != webrtc::kRtcpFbParamRemb[8])
            {
LABEL_126:
              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
              {
                goto LABEL_60;
              }

              goto LABEL_61;
            }

            goto LABEL_133;
          }

          goto LABEL_128;
        }

        if (v34 != 12)
        {
          goto LABEL_126;
        }

        v38 = *v25;
      }

      else
      {
        v33 = *(v25 + 23);
        if (v33 <= 8)
        {
          if (v33 == 3)
          {
            if (*v25 != *"ccm" || *(v25 + 2) != webrtc::kRtcpFbParamCcm[2])
            {
              goto LABEL_126;
            }

            goto LABEL_115;
          }

          if (v33 != 4 || *v25 != 1801675118)
          {
            goto LABEL_126;
          }

          goto LABEL_72;
        }

        if (v33 == 9)
        {
          if (*v25 != *"goog-lntf" || *(v25 + 8) != webrtc::kRtcpFbParamLntf[8])
          {
            if (*v25 != *"goog-remb" || *(v25 + 8) != webrtc::kRtcpFbParamRemb[8])
            {
              goto LABEL_126;
            }

LABEL_133:
            v62 = *(v25 + 47);
            if (v62 < 0)
            {
              v62 = v25[4];
            }

            if (!v62)
            {
              v63 = 0;
              v64 = 0;
              v65 = 3;
              v66 = v149;
              v67 = v150;
              if (v149 >= v150)
              {
                goto LABEL_142;
              }

              goto LABEL_139;
            }

            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_61;
          }

LABEL_128:
          v61 = *(v25 + 47);
          if (v61 < 0)
          {
            v61 = v25[4];
          }

          if (!v61)
          {
            v63 = 0;
            v64 = 0;
            v65 = 1;
            v66 = v149;
            v67 = v150;
            if (v149 >= v150)
            {
              goto LABEL_142;
            }

            goto LABEL_139;
          }

          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        v38 = v25;
        if (v33 != 12)
        {
          goto LABEL_126;
        }
      }

      v39 = *v38;
      v40 = v38[2];
      if (v39 != *"transport-cc" || v40 != *"t-cc")
      {
        goto LABEL_126;
      }

      v42 = *(v25 + 47);
      if (v42 < 0)
      {
        v42 = v25[4];
      }

      if (!v42)
      {
        v63 = 0;
        v64 = 0;
        v65 = 4;
        v66 = v149;
        v67 = v150;
        if (v149 >= v150)
        {
          goto LABEL_142;
        }

        goto LABEL_139;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v25 += 6;
    }

    while (v25 != v26);
    v23 = *(v4 + 8);
    if (!v23)
    {
LABEL_175:
      v146 = *(v4 + 48);
      v147 = 1;
      goto LABEL_176;
    }

LABEL_51:
    if (v23 != 1 || &v155 == (v4 + 88))
    {
LABEL_176:
      v76 = *(v4 + 168);
      v77 = (v4 + 176);
      if (v76 != (v4 + 176))
      {
        goto LABEL_224;
      }

      goto LABEL_220;
    }

    v27 = *(v4 + 88);
    if (v27)
    {
      v28 = *(v4 + 96);
    }

    else
    {
      v28 = v4 + 96;
    }

    v29 = v27 >> 1;
    v30 = v155;
    v32 = *(&__p + 1);
    p_p = __p;
    if ((v155 & 1) == 0)
    {
      p_p = &__p;
      v32 = 34;
    }

    if (v32 < v29)
    {
      operator new();
    }

    v78 = v155 >> 1;
    v79 = v29 - (v155 >> 1);
    if (v29 < v155 >> 1)
    {
      v79 = 0;
    }

    if (v78 >= v29)
    {
      v80 = v27 >> 1;
    }

    else
    {
      v80 = v155 >> 1;
    }

    if (!v80)
    {
      v82 = v28;
      if (v78 >= v29)
      {
        goto LABEL_219;
      }

LABEL_201:
      if (!p_p)
      {
        goto LABEL_299;
      }

      v91 = p_p + v78;
      v92 = v79;
      v93 = v82;
      v94 = 0;
      if (v79 < 8 || (v91 - v82) < 0x20)
      {
        v95 = v82;
      }

      else
      {
        if (v79 < 0x20)
        {
          v94 = 0;
          goto LABEL_211;
        }

        v94 = v79 & 0xFFFFFFFFFFFFFFE0;
        v96 = (v82 + 16);
        v97 = v91 + 16;
        v98 = v92 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v99 = *v96;
          *(v97 - 1) = *(v96 - 1);
          *v97 = v99;
          v96 += 2;
          v97 += 2;
          v98 -= 32;
        }

        while (v98);
        if (v92 == v94)
        {
          goto LABEL_218;
        }

        if ((v92 & 0x18) != 0)
        {
LABEL_211:
          v100 = v94;
          v94 = v92 & 0xFFFFFFFFFFFFFFF8;
          v95 = &v93[v92 & 0xFFFFFFFFFFFFFFF8];
          v101 = &v93[v100];
          v102 = &v91[v100];
          v103 = v100 - (v92 & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v104 = *v101++;
            *v102 = v104;
            v102 += 8;
            v103 += 8;
          }

          while (v103);
          if (v92 == v94)
          {
            goto LABEL_218;
          }

          goto LABEL_216;
        }

        v95 = &v93[v94];
      }

LABEL_216:
      v105 = v92 - v94;
      v106 = &v91[v94];
      do
      {
        v107 = *v95++;
        *v106++ = v107;
        --v105;
      }

      while (v105);
LABEL_218:
      v30 = v155;
      goto LABEL_219;
    }

    v81 = 0;
    if (v80 < 0x20)
    {
      goto LABEL_189;
    }

    if (p_p - v28 < 0x20)
    {
      goto LABEL_189;
    }

    v81 = v80 & 0x7FFFFFFFFFFFFFE0;
    v82 = (v28 + (v80 & 0x7FFFFFFFFFFFFFE0));
    v83 = (v28 + 16);
    v84 = p_p + 1;
    v85 = v80 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v86 = *v83;
      *(v84 - 1) = *(v83 - 1);
      *v84 = v86;
      v83 += 2;
      v84 += 2;
      v85 -= 32;
    }

    while (v85);
    v28 += v80 & 0x7FFFFFFFFFFFFFE0;
    if (v80 != v81)
    {
LABEL_189:
      v87 = v80 - v81;
      v88 = p_p + v81;
      v82 = v28;
      do
      {
        v89 = *v82++;
        *v88++ = v89;
        --v87;
      }

      while (v87);
    }

    if (v78 < v29)
    {
      goto LABEL_201;
    }

LABEL_219:
    v155 = v27 & 0xFFFFFFFFFFFFFFFELL | v30 & 1;
    v76 = *(v4 + 168);
    v77 = (v4 + 176);
    if (v76 == (v4 + 176))
    {
      goto LABEL_220;
    }

    do
    {
LABEL_224:
      if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v151, &v152, &v141, &v140, v76 + 4))
      {
        operator new();
      }

      v110 = v76[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v76[2];
          v9 = *v111 == v76;
          v76 = v111;
        }

        while (!v9);
      }

      v76 = v111;
    }

    while (v111 != v77);
LABEL_220:
    v108 = *(v4 + 39);
    if (v108 < 0)
    {
      v20 = v137;
      if (*(v4 + 24) != 3)
      {
        goto LABEL_243;
      }

      v109 = *(v4 + 16);
    }

    else
    {
      v20 = v137;
      v109 = (v4 + 16);
      if (v108 != 3)
      {
        goto LABEL_243;
      }
    }

    if ((*v109 != *"rtx" || *(v109 + 2) != webrtc::kRtxCodecName[2]) && (*v109 != webrtc::kRedCodecName || *(v109 + 2) != 100))
    {
LABEL_243:
      v114 = v3[1];
      if (v114 < v3[2])
      {
        goto LABEL_244;
      }

LABEL_250:
      std::vector<webrtc::RtpCodecCapability>::__emplace_back_slow_path<webrtc::RtpCodecCapability const&>(v3);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v151, v152);
    v152 = 0;
    v153 = 0;
    v151 = &v152;
    v114 = v3[1];
    if (v114 >= v3[2])
    {
      goto LABEL_250;
    }

LABEL_244:
    if (!v114)
    {
      goto LABEL_299;
    }

    v115 = webrtc::RtpCodec::RtpCodec(v114, &v142);
    *v114 = &unk_28829C098;
    *(v114 + 104) = v154;
    *(v115 + 14) = 0;
    v116 = (v115 + 112);
    if (v155 >= 2)
    {
      if ((v155 & 1) == 0)
      {
        *(v114 + 112) = v155;
        v117 = __p;
        v118 = v157;
        *(v114 + 152) = v158;
        *(v114 + 136) = v118;
        *(v114 + 120) = v117;
        v3[1] = v114 + 160;
        v142 = &unk_28829C098;
        if ((v155 & 1) == 0)
        {
          goto LABEL_252;
        }

LABEL_251:
        operator delete(__p);
        goto LABEL_252;
      }

      absl::inlined_vector_internal::Storage<webrtc::ScalabilityMode,34ul,std::allocator<webrtc::ScalabilityMode>>::InitFrom(v116, &v155);
    }

    v3[1] = v114 + 160;
    v142 = &unk_28829C098;
    if (v155)
    {
      goto LABEL_251;
    }

LABEL_252:
    v142 = &unk_28829C078;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v151, v152);
    if (v148)
    {
      v149 = v148;
      operator delete(v148);
    }

    if (SBYTE7(v144) < 0)
    {
      operator delete(v143);
    }

    v19 = v136;
LABEL_257:
    v4 += 216;
    v5 = v20;
    v6 = v19;
  }

  while (v4 != v135);
LABEL_263:
  v138 = v20;
  v119 = *a2;
  v120 = a2[1];
  if (*a2 != v120)
  {
    v121 = v3[4];
    while (1)
    {
      v122 = v3[5];
      if (v121 >= v122)
      {
        break;
      }

      if (!v121)
      {
        goto LABEL_299;
      }

      v123 = *(v119 + 23);
      if (v123 >= 0)
      {
        v124 = v119;
      }

      else
      {
        v124 = *v119;
      }

      if (v123 >= 0)
      {
        v125 = *(v119 + 23);
      }

      else
      {
        v125 = v119[1];
      }

      if (v125 > 0x7FFFFFFFFFFFFFF7)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v126 = *(v119 + 6);
      if (v125 > 0x16)
      {
        operator new();
      }

      *(v121 + 23) = v125;
      v131 = (v121 + v125);
      if (v121 <= v124 && v131 > v124)
      {
        goto LABEL_299;
      }

      if (v125)
      {
        memmove(v121, v124, v125);
      }

      *v131 = 0;
      *(v121 + 24) = v126;
      *(v121 + 28) = 1;
      *(v121 + 32) = 0;
      *(v121 + 36) = 0;
      v121 += 40;
      v3[4] = v121;
      v119 += 4;
      if (v119 == v120)
      {
        goto LABEL_293;
      }
    }

    v127 = v3[3];
    v128 = 1 - 0x3333333333333333 * ((v121 - v127) >> 3);
    if (v128 > 0x666666666666666)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v129 = 0xCCCCCCCCCCCCCCCDLL * ((v122 - v127) >> 3);
    if (2 * v129 > v128)
    {
      v128 = 2 * v129;
    }

    if (v129 >= 0x333333333333333)
    {
      v130 = 0x666666666666666;
    }

    else
    {
      v130 = v128;
    }

    if (v130)
    {
      if (v130 <= 0x666666666666666)
      {
        operator new();
      }

      goto LABEL_300;
    }

    goto LABEL_299;
  }

LABEL_293:
  if (v138)
  {
    LODWORD(v142) = 0;
    std::vector<unsigned int>::push_back[abi:sn200100](v3 + 6, &v142);
    if ((v134 & 0x100000000) != 0)
    {
      LODWORD(v142) = 1;
      std::vector<unsigned int>::push_back[abi:sn200100](v3 + 6, &v142);
    }
  }

  if (v134)
  {
    LODWORD(v142) = 2;
    std::vector<unsigned int>::push_back[abi:sn200100](v3 + 6, &v142);
  }
}

void std::vector<webrtc::RtpCodecCapability>::__emplace_back_slow_path<webrtc::RtpCodecCapability const&>(void *a1)
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

    v3 = a1;
    if (v2)
    {
      if (v2 <= 0x199999999999999)
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

unint64_t *std::vector<webrtc::RtpCodecCapability>::__swap_out_circular_buffer(unint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] - (v5 - *result);
  if (v5 == *result)
  {
LABEL_13:
    a2[1] = v6;
    *v3 = v6;
    v3[1] = v4;
    a2[1] = v4;
    v15 = v3[1];
    v3[1] = a2[2];
    a2[2] = v15;
    v16 = v3[2];
    v3[2] = a2[3];
    a2[3] = v16;
    *a2 = a2[1];
  }

  else
  {
    v7 = 0;
    while (1)
    {
      result = (v6 + v7 * 8);
      if (!(v6 + v7 * 8))
      {
        break;
      }

      webrtc::RtpCodec::RtpCodec(result, &v4[v7]);
      v8 = (v6 + v7 * 8);
      *v8 = &unk_28829C098;
      v9 = v4[v7 + 13];
      v8[14] = 0;
      result = (v6 + v7 * 8 + 112);
      *(v6 + v7 * 8 + 104) = v9;
      v10 = v4[v7 + 14];
      if (v10 >= 2)
      {
        if (v10)
        {
          result = absl::inlined_vector_internal::Storage<webrtc::ScalabilityMode,34ul,std::allocator<webrtc::ScalabilityMode>>::InitFrom(result, &v4[v7 + 14]);
        }

        else
        {
          *result = v10;
          v11 = v6 + v7 * 8;
          v12 = *&v4[v7 + 15];
          v13 = *&v4[v7 + 17];
          *(v11 + 152) = v4[v7 + 19];
          *(v11 + 136) = v13;
          *(v11 + 120) = v12;
        }
      }

      v7 += 20;
      if (&v4[v7] == v5)
      {
        v14 = v4;
        while (v4)
        {
          result = (**v4)(v4);
          v14 += 20;
          v4 += 20;
          if (v4 == v5)
          {
            v4 = *v3;
            goto LABEL_13;
          }
        }

        break;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t webrtc::RtpPayloadParams::RtpPayloadParams(uint64_t a1, int a2, __int16 *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 232) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 932) = a2;
  *(a1 + 936) = -1;
  *(a1 + 938) = 0;
  *(a1 + 944) = 0u;
  (*(*a4 + 16))(&__p, a4, "WebRTC-GenericPictureId", 23);
  v7 = 0;
  v8 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v8 = v30;
  }

  if (v8 >= 7)
  {
    p_p = __p;
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    v10 = *p_p;
    v11 = *(p_p + 3);
    v7 = v10 == 1650552389 && v11 == 1684368482;
  }

  if (v31 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 960) = v7;
  (*(*a4 + 16))(&__p, a4, "WebRTC-GenericCodecDependencyDescriptor", 39);
  v13 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v13 = v30;
  }

  if (v13 < 7)
  {
    v14 = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = __p;
  if ((v31 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  v16 = *v15;
  v17 = *(v15 + 3);
  v14 = v16 == 1650552389 && v17 == 1684368482;
  if (v31 < 0)
  {
LABEL_28:
    operator delete(__p);
  }

LABEL_29:
  *(a1 + 961) = v14;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  *(a1 + 304) = v19;
  *(a1 + 320) = v19;
  *(a1 + 336) = v19;
  *(a1 + 352) = v19;
  *(a1 + 368) = v19;
  *(a1 + 384) = v19;
  *(a1 + 400) = v19;
  *(a1 + 416) = v19;
  *(a1 + 432) = v19;
  *(a1 + 448) = v19;
  *(a1 + 464) = v19;
  *(a1 + 480) = v19;
  *(a1 + 496) = v19;
  *(a1 + 512) = v19;
  *(a1 + 528) = v19;
  *(a1 + 544) = v19;
  *(a1 + 560) = v19;
  *(a1 + 576) = v19;
  *(a1 + 592) = v19;
  *(a1 + 608) = v19;
  *(a1 + 624) = v19;
  *(a1 + 640) = v19;
  *(a1 + 656) = v19;
  *(a1 + 672) = v19;
  *(a1 + 688) = v19;
  *(a1 + 704) = v19;
  *(a1 + 720) = v19;
  *(a1 + 736) = v19;
  *(a1 + 752) = v19;
  *(a1 + 768) = v19;
  *(a1 + 784) = v19;
  *(a1 + 800) = v19;
  *(a1 + 920) = -1;
  *(a1 + 888) = v19;
  *(a1 + 904) = v19;
  *(a1 + 856) = v19;
  *(a1 + 872) = v19;
  *(a1 + 840) = v19;
  if (!webrtc::g_clock)
  {
    if (!dword_28100D8E4)
    {
      mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
    }

    v20 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    if (a3)
    {
      goto LABEL_31;
    }

LABEL_35:
    v24 = (v20 / 1000) ^ ((v20 / 1000) >> 12) ^ (((v20 / 1000) ^ ((v20 / 1000) >> 12)) << 25);
    v25 = v24 ^ (v24 >> 27);
    v21 = (23837 * v25) & 0x7FFF;
    v26 = v25 ^ (v25 >> 12) ^ ((v25 ^ (v25 >> 12)) << 25);
    v27 = v26 ^ (v26 >> 27);
    v22 = 29 * v27;
    v23 = (-8931 * (((v27 ^ (v27 >> 12) ^ ((v27 ^ (v27 >> 12)) << 25)) >> 27) ^ v27 ^ (v27 >> 12)));
    goto LABEL_36;
  }

  v20 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_31:
  v21 = *a3;
  v22 = *(a3 + 2);
  v23 = *(a3 + 2);
LABEL_36:
  *(a1 + 936) = v21;
  *(a1 + 938) = v22;
  *(a1 + 952) = v23;
  return a1;
}

uint64_t webrtc::RtpPayloadParams::RtpPayloadParams(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  if (*a2 >= 2uLL)
  {
    absl::inlined_vector_internal::Storage<webrtc::FrameDependenciesCalculator::BufferUsage,4ul,std::allocator<webrtc::FrameDependenciesCalculator::BufferUsage>>::InitFrom(a1, a2);
  }

  *(a1 + 232) = 0;
  v4 = *(a2 + 232);
  if (v4 >= 2)
  {
    if (v4)
    {
      absl::inlined_vector_internal::Storage<std::optional<long long>,4ul,std::allocator<std::optional<long long>>>::InitFrom((a1 + 232), (a2 + 232));
    }

    else
    {
      *(a1 + 232) = v4;
      v5 = *(a2 + 240);
      v6 = *(a2 + 256);
      v7 = *(a2 + 288);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 288) = v7;
      *(a1 + 240) = v5;
      *(a1 + 256) = v6;
    }
  }

  memcpy((a1 + 304), (a2 + 304), 0x200uLL);
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  v8 = *(a2 + 816);
  v9 = *(a2 + 824);
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v10 = *(a2 + 840);
  v11 = *(a2 + 856);
  v12 = *(a2 + 888);
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = v12;
  *(a1 + 840) = v10;
  *(a1 + 856) = v11;
  v13 = *(a2 + 904);
  v14 = *(a2 + 920);
  v15 = *(a2 + 936);
  *(a1 + 946) = *(a2 + 946);
  *(a1 + 920) = v14;
  *(a1 + 936) = v15;
  *(a1 + 904) = v13;
  return a1;
}

void webrtc::RtpPayloadParams::GetRtpVideoHeader(unint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a1;
  v228 = *MEMORY[0x277D85DE8];
  v14 = (a9 + 288);
  if ((a5 & 1) == 0)
  {
    a4 = *(a1 + 952);
    *(a1 + 952) = a4 + 1;
  }

  *a9 = 0;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0;
  *(a9 + 159) = 0;
  *(a9 + 167) = 1;
  *(a9 + 172) = 0;
  *(a9 + 176) = 0;
  *(a9 + 192) = 0;
  *(a9 + 200) = 0;
  v16 = (a9 + 200);
  *(a9 + 206) = 0;
  *(a9 + 212) = -1;
  *(a9 + 216) = 0;
  *(a9 + 284) = 0;
  *(a9 + 288) = 0;
  *(a9 + 290) = 0;
  *(a9 + 1936) = 0;
  *(a9 + 1944) = 0;
  *(a9 + 1968) = 0;
  *(a9 + 1976) = 0;
  *(a9 + 2032) = 0;
  if (a3)
  {
    v17 = *(a2 + 184);
    v18 = *a3;
    *(a9 + 172) = *a3;
    *(a9 + 167) = *(a3 + 1632);
    if (*(a3 + 2056))
    {
      v9 = a4;
      *(a9 + 2024) = -1;
      v19 = a3[512];
      if (v19 != -1)
      {
        *&v215 = a9 + 1976;
        a1 = (off_28829C0C8[v19])(&v215, a3 + 500);
        *(a9 + 2024) = v19;
        v18 = *a3;
      }

      *(a9 + 2032) = 1;
      a4 = v9;
    }

    if (v18 != 4)
    {
      if (v18 != 2)
      {
        if (v18 == 1)
        {
          v9 = a9 + 296;
          v20 = *(a9 + 1936);
          if (v20 != -1)
          {
            a1 = (off_28829C0D8[v20])(&v215, a9 + 296);
          }

          *v9 = 0;
          *(a9 + 304) = 0;
          *(a9 + 312) = 0;
          *(a9 + 1936) = 1;
          *(a9 + 298) = -1;
          *(a9 + 296) = *(a3 + 8);
          *(a9 + 302) = *(a3 + 9);
          *(a9 + 304) = *(a3 + 11);
        }

        goto LABEL_45;
      }

      v9 = a9 + 296;
      v21 = *(a9 + 1936);
      if (v21 != -1)
      {
        (off_28829C0D8[v21])(&v215, a9 + 296);
      }

      bzero((a9 + 312), 0x658uLL);
      *(a9 + 1936) = 2;
      *v9 = 0;
      *(a9 + 300) = 0;
      *(a9 + 302) = 0x7FFFFFFF;
      *(a9 + 306) = -1;
      *(a9 + 1928) = 1;
      *(a9 + 296) = *(a3 + 9);
      *(a9 + 301) = *(a3 + 12);
      *(a9 + 308) = *(a3 + 13);
      *(a9 + 310) = *(a3 + 7);
      *(a9 + 312) = *(a3 + 16);
      v22 = *(a3 + 6);
      *(a9 + 328) = v22;
      v23 = *(a3 + 11);
      if ((v17 & 0x100000000) != 0)
      {
        v24 = v17;
      }

      else
      {
        v24 = -1;
      }

      *(a9 + 300) = v23;
      if (v22 <= 1)
      {
        v24 = -1;
      }

      *(a9 + 309) = v24;
      if (v23 != 1)
      {
        goto LABEL_42;
      }

      v25 = *(a3 + 40);
      *(a9 + 344) = v25;
      if (v25 == 1 && v22)
      {
        if (v22 < 8)
        {
          v26 = 0;
LABEL_33:
          v32 = v22 - v26;
          v33 = 2 * v26;
          v34 = (2 * v26 + a9 + 362);
          v35 = (a3 + v33 + 58);
          do
          {
            *(v34 - 8) = *(v35 - 8);
            v36 = *v35++;
            *v34++ = v36;
            --v32;
          }

          while (v32);
          goto LABEL_35;
        }

        v28 = (a9 + 346);
        v29 = (a3 + 58);
        v26 = v22 & 0xFFFFFFFFFFFFFFF8;
        v30 = v22 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v31 = *v29;
          *v28 = *(v29 - 1);
          v28[1] = v31;
          ++v28;
          ++v29;
          v30 -= 8;
        }

        while (v30);
        if (v22 != v26)
        {
          goto LABEL_33;
        }
      }

LABEL_35:
      v37 = *(a3 + 10);
      *(a9 + 384) = v37;
      if (v37)
      {
        v38 = 0;
        v39 = a9 + 902;
        v40 = a3 + 853;
        v41 = a9 + 1157;
        do
        {
          *(a9 + 392 + v38) = *(a3 + v38 + 88);
          *(a9 + 647 + v38) = *(a3 + v38 + 343);
          v42 = *(a3 + v38 + 598);
          *(v39 + v38) = v42;
          if (v42)
          {
            v43 = 0;
            do
            {
              *(v41 + v43) = *(v40 + v43);
              ++v43;
              a1 = *(v39 + v38);
            }

            while (v43 < a1);
          }

          ++v38;
          v41 += 3;
          v40 += 3;
        }

        while (v38 < *(a9 + 384));
      }

LABEL_42:
      v44 = *(a3 + 1624);
      *(a9 + 313) = v44;
      if (v44)
      {
        a1 = memcpy((a9 + 314), a3 + 1625, v44);
      }

      *(a9 + 1928) = *(a3 + 1632);
      goto LABEL_45;
    }

    v9 = a9 + 296;
    v27 = *(a9 + 1936);
    if (v27 != -1)
    {
      a1 = (off_28829C0D8[v27])(&v215, a9 + 296);
    }

    *(a9 + 328) = 0;
    *v9 = 0u;
    *(a9 + 312) = 0u;
    *(a9 + 1936) = 3;
    *(a9 + 328) = a3[2];
  }

LABEL_45:
  v45 = 0;
  v46 = 0;
  v47 = *(a2 + 156);
  if ((v47 & 0x100000000) == 0)
  {
    LOBYTE(v47) = 0;
  }

  *(a9 + 168) = v47;
  v48 = *(a2 + 24);
  *(a9 + 160) = *(a2 + 28);
  *(a9 + 164) = *(a2 + 32);
  *(a9 + 176) = *(a2 + 112);
  *(a9 + 192) = *(a2 + 128);
  v49 = *(a2 + 4);
  *(a9 + 156) = *a2;
  *(a9 + 152) = v48;
  *(a9 + 158) = v49;
  if (*(a2 + 292) == 1)
  {
    v45 = *(a2 + 224);
    v50 = *(a2 + 241);
    v215 = *(a2 + 225);
    *v216 = v50;
    v51 = *(a2 + 273);
    *&v216[16] = *(a2 + 257);
    *&v216[32] = v51;
    v46 = 1;
  }

  if (*(a9 + 284) == v46)
  {
    if (*(a9 + 284))
    {
      *(a9 + 216) = v45;
      v52 = *v216;
      *(a9 + 217) = v215;
      *(a9 + 233) = v52;
      v53 = *&v216[32];
      *(a9 + 249) = *&v216[16];
      *(a9 + 265) = v53;
    }
  }

  else if (*(a9 + 284))
  {
    *(a9 + 284) = 0;
  }

  else
  {
    *(a9 + 216) = v45;
    v54 = *v216;
    *(a9 + 217) = v215;
    *(a9 + 233) = v54;
    v55 = *&v216[32];
    *(a9 + 249) = *&v216[16];
    *(a9 + 265) = v55;
    *(a9 + 284) = 1;
  }

  v56 = *(a2 + 296);
  *v14 = v56;
  *(a9 + 290) = BYTE2(v56);
  v57 = *(a2 + 40);
  v58 = -1;
  if (*(a2 + 40) && v57 != 255)
  {
    v59 = *(a2 + 16);
    v60 = *(a2 + 48) - v59;
    v61 = (v60 >> 63) | (2 * (v60 >= 0x10000));
    if (v61 > 1)
    {
      if (v61 != 2)
      {
        goto LABEL_431;
      }

      LOWORD(v60) = -1;
    }

    else if (v61)
    {
      LOWORD(v60) = 0;
    }

    *v16 = v60;
    v62 = *(a2 + 56) - v59;
    v63 = (v62 >> 63) | (2 * (v62 >= 0x10000));
    if (v63 <= 1)
    {
      if (v63)
      {
        LOWORD(v62) = 0;
      }

      goto LABEL_67;
    }

    if (v63 == 2)
    {
      LOWORD(v62) = -1;
LABEL_67:
      *(a9 + 202) = v62;
      *(a9 + 204) = 0;
      v58 = v57;
      goto LABEL_68;
    }

LABEL_431:
    webrtc::webrtc_checks_impl::UnreachableCodeReached(a1);
  }

LABEL_68:
  *(a9 + 212) = v58;
  if (a3 && *a3 == 2)
  {
    v64 = v48 == 3;
    if (*(a3 + 8) != 1)
    {
      v65 = 0;
      v66 = *(a9 + 172);
      if (v66 == 2)
      {
        goto LABEL_72;
      }

LABEL_83:
      if (v66 == 1)
      {
        if (*(a9 + 1936) != 1)
        {
          goto LABEL_428;
        }

        *(a9 + 298) = *(v12 + 936);
        if (*(a9 + 302))
        {
          if (*(a9 + 302) == 255)
          {
            goto LABEL_93;
          }

          v68 = *(v12 + 938);
        }

        else
        {
          v68 = *(v12 + 938) + 1;
          *(v12 + 938) = v68;
        }

        *(a9 + 300) = v68;
        if (!a3)
        {
          goto LABEL_109;
        }

LABEL_94:
        if (*(a3 + 1848) != 1)
        {
          goto LABEL_109;
        }

        v72 = *(a3 + 218);
        if (v72 < 2)
        {
          goto LABEL_109;
        }

        if (v64)
        {
          v73 = *(a3 + 228);
          if (v73 >> 60)
          {
            goto LABEL_426;
          }

          absl::inlined_vector_internal::Storage<std::optional<long long>,4ul,std::allocator<std::optional<long long>>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<std::optional<long long>>>>((v12 + 232), v73);
          v74 = *(a3 + 228);
          if (v74)
          {
            v75 = 0;
            v76 = *(a3 + 227);
            v77 = 8;
            do
            {
              if ((*(v76 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v75))
              {
                v78 = *(v12 + 232);
                if (v75 >= v78 >> 1)
                {
                  goto LABEL_426;
                }

                v79 = v12 + 240;
                if (v78)
                {
                  v79 = *(v12 + 240);
                }

                if (*(v79 + v77) == 1)
                {
                  *(v79 + v77) = 0;
                }
              }

              ++v75;
              v77 += 16;
            }

            while (v74 != v75);
          }

          if ((a3[462] & 1) == 0)
          {
            goto LABEL_426;
          }

          v106 = a4;
          v72 = *(a3 + 218);
        }

        else
        {
          v106 = a4;
        }

        v223 = 0xFFFFFFFFLL;
        *v216 = 0;
        *&v215 = v106;
        v107 = a3 + 438;
        if (v72)
        {
          v107 = *(a3 + 219);
        }

        if (v72 >= 2)
        {
          v108 = v107;
        }

        else
        {
          v108 = 0;
        }

        webrtc::FrameDependenciesCalculator::FromBuffersUsage(v12, v106, v108, v72 >> 1, a5, a6, a7, a8, &v224);
        v217 = v224;
        *v218 = v225;
        v219 = v226;
        v220 = v227;
        webrtc::ChainDiffCalculator::From((v12 + 232), v106, a3 + 227, &v224);
        v221 = v224;
        *__p = v225;
        *(&v215 + 1) = *(a3 + 205);
        if (v216 != (a3 + 412))
        {
          v109 = *(a3 + 206);
          if (v109)
          {
            v110 = *(a3 + 207);
          }

          else
          {
            v110 = (a3 + 414);
          }

          absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>(v216, v110, v109 >> 1);
        }

        v111 = *(a3 + 230);
        v223 = v111;
        v112 = *(a9 + 144);
        *a9 = v215;
        if (v112 == 1)
        {
          if (&v215 != a9)
          {
            if (v216[0])
            {
              v113 = *&v216[8];
            }

            else
            {
              v113 = &v216[8];
            }

            absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<webrtc::DecodeTargetIndication>,webrtc::DecodeTargetIndication const*>>((a9 + 16), v113, *v216 >> 1);
            if (v217)
            {
              v114 = v218[0];
            }

            else
            {
              v114 = v218;
            }

            absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<long long>,long long const*>>((a9 + 64), v114, v217 >> 1);
            if (v221)
            {
              v115 = __p[0];
            }

            else
            {
              v115 = __p;
            }

            absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((a9 + 112), v115, v221 >> 1);
            v111 = v223;
          }

          *(a9 + 136) = v111;
          if ((v221 & 1) == 0)
          {
LABEL_262:
            if (v217)
            {
              operator delete(v218[0]);
              if ((v216[0] & 1) == 0)
              {
                return;
              }
            }

            else if ((v216[0] & 1) == 0)
            {
              return;
            }

            operator delete(*&v216[8]);
            return;
          }

LABEL_261:
          operator delete(__p[0]);
          goto LABEL_262;
        }

        *(a9 + 16) = 0;
        if (*v216 < 2uLL)
        {
          *(a9 + 64) = 0;
          v116 = (a9 + 64);
          v117 = v217;
          if (v217 < 2)
          {
            goto LABEL_186;
          }

LABEL_256:
          if (v117)
          {
            absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::InitFrom(v116, &v217);
            *(a9 + 112) = 0;
            v118 = (a9 + 112);
            v119 = v221;
            if (v221 < 2)
            {
              goto LABEL_260;
            }
          }

          else
          {
            *(a9 + 64) = v117;
            v149 = v219;
            *(a9 + 72) = *v218;
            *(a9 + 88) = v149;
            *(a9 + 104) = v220;
            *(a9 + 112) = 0;
            v118 = (a9 + 112);
            v119 = v221;
            if (v221 < 2)
            {
              goto LABEL_260;
            }
          }

LABEL_187:
          if (v119)
          {
            absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::InitFrom(v118, &v221);
          }

          else
          {
            *(a9 + 112) = v119;
            *(a9 + 120) = *__p;
          }

LABEL_260:
          *(a9 + 136) = v223;
          *(a9 + 144) = 1;
          if ((v221 & 1) == 0)
          {
            goto LABEL_262;
          }

          goto LABEL_261;
        }

        if (v216[0])
        {
          absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::InitFrom((a9 + 16), v216);
          *(a9 + 64) = 0;
          v116 = (a9 + 64);
          v117 = v217;
          if (v217 >= 2)
          {
            goto LABEL_256;
          }
        }

        else
        {
          *(a9 + 16) = *v216;
          *(a9 + 24) = *&v216[8];
          *(a9 + 40) = *&v216[24];
          v117 = v217;
          *(a9 + 56) = *&v216[40];
          *(a9 + 64) = 0;
          v116 = (a9 + 64);
          if (v117 >= 2)
          {
            goto LABEL_256;
          }
        }

LABEL_186:
        *(a9 + 112) = 0;
        v118 = (a9 + 112);
        v119 = v221;
        if (v221 < 2)
        {
          goto LABEL_260;
        }

        goto LABEL_187;
      }

      if (!v66 && (*(v12 + 960) & 1) != 0)
      {
        v69 = a4;
        v70 = *(v12 + 936);
        v71 = *(a9 + 1936);
        if (v71 != -1)
        {
          (off_28829C0D8[v71])(&v215, a9 + 296);
        }

        *(a9 + 1936) = 4;
        *(a9 + 296) = v70;
        a4 = v69;
      }

LABEL_93:
      if (!a3)
      {
        goto LABEL_109;
      }

      goto LABEL_94;
    }
  }

  else
  {
    v64 = v48 == 3;
  }

  *(v12 + 936) = (*(v12 + 936) + 1) & 0x7FFF;
  v65 = 1;
  v66 = *(a9 + 172);
  if (v66 != 2)
  {
    goto LABEL_83;
  }

LABEL_72:
  if (*(a9 + 1936) != 2)
  {
    goto LABEL_428;
  }

  *(a9 + 302) = *(v12 + 936);
  v67 = *(a9 + 308);
  if (v67 == 255 && *(a9 + 309) == 255)
  {
    goto LABEL_93;
  }

  if (v65 && (v67 == 255 || !*(a9 + 308)))
  {
    ++*(v12 + 938);
  }

  *(a9 + 306) = *(v12 + 938);
  if (a3)
  {
    goto LABEL_94;
  }

LABEL_109:
  v80 = *(a9 + 172);
  if (v80 <= 1)
  {
    if (v80)
    {
      if (v80 != 1 || !a3)
      {
        return;
      }

      if (*(a9 + 1936) == 1)
      {
        v81 = *(a9 + 302);
        if (v81 == 255)
        {
          v82 = 0;
        }

        else
        {
          v82 = *(a9 + 302);
        }

        if (v82 >= 8)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            goto LABEL_128;
          }

          return;
        }

        if (*(a9 + 144) == 1)
        {
          if (*(a9 + 112))
          {
            operator delete(*(a9 + 120));
            if ((*(a9 + 64) & 1) == 0)
            {
LABEL_208:
              if ((*(a9 + 16) & 1) == 0)
              {
                goto LABEL_210;
              }

              goto LABEL_209;
            }
          }

          else if ((*(a9 + 64) & 1) == 0)
          {
            goto LABEL_208;
          }

          operator delete(*(a9 + 72));
          if (*(a9 + 16))
          {
LABEL_209:
            operator delete(*(a9 + 24));
          }
        }

LABEL_210:
        *(a9 + 64) = 0;
        v9 = a9 + 64;
        *(a9 + 112) = 0;
        v211 = (a9 + 112);
        *(a9 + 16) = 0;
        *(a9 + 136) = 0xFFFFFFFFLL;
        *(a9 + 144) = 1;
        v214 = a4;
        *a9 = a4;
        *(a9 + 8) = 0;
        *(a9 + 12) = v82;
        absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<webrtc::DecodeTargetIndication>>>((a9 + 16), 4uLL);
        v128 = *(a9 + 16);
        if (v128)
        {
          v129 = *(a9 + 24);
        }

        else
        {
          v129 = (a9 + 24);
        }

        v212 = v82;
        if (v82)
        {
          v130 = 4 * (v81 - (v81 != 0)) + 4;
          bzero(v129, v130);
          v131 = &v129[v130];
          if (v128)
          {
            v132 = *(a9 + 24);
          }

          else
          {
            v132 = a9 + 24;
          }

          v133 = v132 + 4 * (v128 >> 1) - v131;
          if (v133 < 1)
          {
            goto LABEL_219;
          }
        }

        else
        {
          v131 = v129;
          v133 = 4 * (v128 >> 1);
          if (v133 < 1)
          {
            goto LABEL_219;
          }
        }

        memset_pattern16(v131, &unk_273BA37E0, v133);
LABEL_219:
        v134 = v214;
        v135 = v212;
        if (*(a3 + 12) == 1)
        {
          *(v12 + 928) = 257;
          if (v64)
          {
            v136 = 0;
            *(v12 + 904) = v214;
            *(v12 + 912) = v214;
            *(v12 + 920) = v214;
LABEL_422:
            LODWORD(v215) = v136;
            absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>(v211, &v215, 1uLL);
            if (!v135)
            {
              *(v12 + 840) = v134;
            }

            return;
          }

          v152 = *(a3 + 5);
          if (v152)
          {
            v153 = 0;
            v154 = (a9 + 72);
            do
            {
              v155 = *&a3[2 * v153 + 4];
              if (v155 >= 3)
              {
                goto LABEL_426;
              }

              v156 = *(v12 + 904 + 8 * v155);
              *&v215 = v156;
              v157 = *v9;
              v158 = *v154;
              if (*v9)
              {
                v159 = *v154;
              }

              else
              {
                v159 = (a9 + 72);
              }

              v160 = v157 >> 1;
              if (v157 >= 2)
              {
                v161 = 8 * v160;
                v162 = &v159[v160];
                while (*v159 != v156)
                {
                  ++v159;
                  v161 -= 8;
                  if (!v161)
                  {
                    v159 = v162;
                    break;
                  }
                }
              }

              if (v157)
              {
                if (v159 != &v158[v160])
                {
                  goto LABEL_277;
                }

                v163 = *(a9 + 80);
              }

              else
              {
                if (v159 != &v154[v160])
                {
                  goto LABEL_277;
                }

                v158 = (a9 + 72);
                v163 = 5;
              }

              if (v160 == v163)
              {
                absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>((a9 + 64));
              }

              if (!v158)
              {
                goto LABEL_426;
              }

              v158[v160] = v156;
              *v9 = v157 + 2;
LABEL_277:
              ++v153;
            }

            while (v153 < v152);
          }

          v172 = *(a3 + 9);
          v135 = v212;
          if (v172)
          {
            v173 = (a3 + 12);
            do
            {
              v175 = *v173++;
              v174 = v175;
              if (v175 >= 3)
              {
                goto LABEL_426;
              }

              *(v12 + 904 + 8 * v174) = v214;
            }

            while (--v172);
          }

LABEL_417:
          if (v64)
          {
            v136 = 0;
          }

          else
          {
            v210 = *(v12 + 840);
            if (v210 >= 0)
            {
              v136 = v134 - v210;
            }

            else
            {
              v136 = 0;
            }
          }

          goto LABEL_422;
        }

        v146 = *(a9 + 303);
        *(v12 + 928) = 256;
        if (v64)
        {
          *&v147 = -1;
          *(&v147 + 1) = -1;
          *(v12 + 336) = v147;
          *(v12 + 352) = v147;
          *(v12 + 304) = v147;
          *(v12 + 320) = v147;
          v148 = (v12 + 304 + 8 * v212);
LABEL_416:
          *v148 = v134;
          goto LABEL_417;
        }

        if (v146)
        {
          v164 = *(v12 + 304);
          v165 = *(v12 + 312);
          *&v215 = v164;
          if (v165 < v164)
          {
            *(v12 + 312) = -1;
            if (*(v12 + 320) >= v164)
            {
LABEL_298:
              if (*(v12 + 328) >= v164)
              {
                goto LABEL_299;
              }

              goto LABEL_399;
            }
          }

          else if (*(v12 + 320) >= v164)
          {
            goto LABEL_298;
          }

          *(v12 + 320) = -1;
          if (*(v12 + 328) >= v164)
          {
LABEL_299:
            if (*(v12 + 336) >= v164)
            {
              goto LABEL_300;
            }

            goto LABEL_400;
          }

LABEL_399:
          *(v12 + 328) = -1;
          if (*(v12 + 336) >= v164)
          {
LABEL_300:
            if (*(v12 + 344) >= v164)
            {
              goto LABEL_301;
            }

            goto LABEL_401;
          }

LABEL_400:
          *(v12 + 336) = -1;
          if (*(v12 + 344) >= v164)
          {
LABEL_301:
            if (*(v12 + 352) >= v164)
            {
              goto LABEL_302;
            }

            goto LABEL_402;
          }

LABEL_401:
          *(v12 + 344) = -1;
          if (*(v12 + 352) >= v164)
          {
LABEL_302:
            if (*(v12 + 360) >= v164)
            {
              goto LABEL_304;
            }

            goto LABEL_303;
          }

LABEL_402:
          *(v12 + 352) = -1;
          if (*(v12 + 360) >= v164)
          {
LABEL_304:
            v168 = *(a9 + 72);
            v167 = a9 + 72;
            v166 = v168;
            v169 = *(v167 - 8);
            if ((v169 & 1) == 0)
            {
              v166 = v167;
            }

            v170 = 5;
            if (v169)
            {
              v170 = *(v167 + 8);
            }

            v171 = v169 >> 1;
            if (v169 >> 1 == v170)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
            }

            if (v166)
            {
LABEL_310:
              *(v166 + 8 * v171) = v164;
              *v9 = v169 + 2;
LABEL_415:
              v148 = (v12 + 8 * v135 + 304);
              goto LABEL_416;
            }

            goto LABEL_426;
          }

LABEL_303:
          *(v12 + 360) = -1;
          goto LABEL_304;
        }

        v176 = *(v12 + 304);
        *&v215 = v176;
        if (v176 != -1)
        {
          v177 = *(a9 + 64);
          v178 = *(a9 + 72);
          if ((v177 & 1) == 0)
          {
            v178 = a9 + 72;
          }

          v179 = 5;
          if (v177)
          {
            v179 = *(a9 + 80);
          }

          if (v177 >> 1 == v179)
          {
            absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>((a9 + 64));
          }

          if (!v178)
          {
            goto LABEL_426;
          }

          *(v178 + 8 * (v177 >> 1)) = v176;
          *v9 = v177 + 2;
        }

        if (!v212)
        {
          goto LABEL_415;
        }

        v180 = *(v12 + 312);
        *&v215 = v180;
        if (v180 != -1)
        {
          v181 = *(a9 + 64);
          v182 = *(a9 + 72);
          if ((v181 & 1) == 0)
          {
            v182 = a9 + 72;
          }

          v183 = 5;
          if (v181)
          {
            v183 = *(a9 + 80);
          }

          if (v181 >> 1 == v183)
          {
LABEL_427:
            absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
          }

          if (!v182)
          {
            goto LABEL_426;
          }

          *(v182 + 8 * (v181 >> 1)) = v180;
          *v9 = v181 + 2;
        }

        if (v212 == 1)
        {
          goto LABEL_415;
        }

        v184 = *(v12 + 320);
        *&v215 = v184;
        if (v184 == -1)
        {
LABEL_349:
          if (v212 == 2)
          {
            goto LABEL_415;
          }

          v188 = *(v12 + 328);
          *&v215 = v188;
          if (v188 != -1)
          {
            v189 = *(a9 + 64);
            v190 = *(a9 + 72);
            if ((v189 & 1) == 0)
            {
              v190 = a9 + 72;
            }

            v191 = 5;
            if (v189)
            {
              v191 = *(a9 + 80);
            }

            if (v189 >> 1 == v191)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
            }

            if (!v190)
            {
              goto LABEL_426;
            }

            *(v190 + 8 * (v189 >> 1)) = v188;
            *v9 = v189 + 2;
          }

          if (v212 == 3)
          {
            goto LABEL_415;
          }

          v192 = *(v12 + 336);
          *&v215 = v192;
          if (v192 != -1)
          {
            v193 = *(a9 + 64);
            v194 = *(a9 + 72);
            if ((v193 & 1) == 0)
            {
              v194 = a9 + 72;
            }

            v195 = 5;
            if (v193)
            {
              v195 = *(a9 + 80);
            }

            if (v193 >> 1 == v195)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
            }

            if (!v194)
            {
              goto LABEL_426;
            }

            *(v194 + 8 * (v193 >> 1)) = v192;
            *v9 = v193 + 2;
          }

          if (v212 == 4)
          {
            goto LABEL_415;
          }

          v196 = *(v12 + 344);
          *&v215 = v196;
          if (v196 != -1)
          {
            v197 = *(a9 + 64);
            v198 = *(a9 + 72);
            if ((v197 & 1) == 0)
            {
              v198 = a9 + 72;
            }

            v199 = 5;
            if (v197)
            {
              v199 = *(a9 + 80);
            }

            if (v197 >> 1 == v199)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
            }

            if (!v198)
            {
              goto LABEL_426;
            }

            *(v198 + 8 * (v197 >> 1)) = v196;
            *v9 = v197 + 2;
          }

          if (v212 == 5)
          {
            goto LABEL_415;
          }

          v200 = *(v12 + 352);
          *&v215 = v200;
          if (v200 != -1)
          {
            v201 = *(a9 + 64);
            v202 = *(a9 + 72);
            if ((v201 & 1) == 0)
            {
              v202 = a9 + 72;
            }

            v203 = 5;
            if (v201)
            {
              v203 = *(a9 + 80);
            }

            if (v201 >> 1 == v203)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
            }

            if (!v202)
            {
              goto LABEL_426;
            }

            *(v202 + 8 * (v201 >> 1)) = v200;
            *v9 = v201 + 2;
          }

          if (v212 == 6)
          {
            goto LABEL_415;
          }

          v164 = *(v12 + 360);
          *&v215 = v164;
          if (v164 == -1)
          {
            goto LABEL_415;
          }

          v169 = *(a9 + 64);
          v166 = *(a9 + 72);
          if ((v169 & 1) == 0)
          {
            v166 = a9 + 72;
          }

          v204 = 5;
          if (v169)
          {
            v204 = *(a9 + 80);
          }

          v171 = v169 >> 1;
          if (v169 >> 1 == v204)
          {
            absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
          }

          v134 = v214;
          v135 = v212;
          if (v166)
          {
            goto LABEL_310;
          }

LABEL_426:
          __break(1u);
          goto LABEL_427;
        }

        v185 = *(a9 + 64);
        v186 = *(a9 + 72);
        if ((v185 & 1) == 0)
        {
          v186 = a9 + 72;
        }

        v187 = 5;
        if (v185)
        {
          v187 = *(a9 + 80);
        }

        if (v185 >> 1 != v187)
        {
          if (!v186)
          {
            goto LABEL_426;
          }

          *(v186 + 8 * (v185 >> 1)) = v184;
          *v9 = v185 + 2;
          goto LABEL_349;
        }

LABEL_429:
        absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v9);
      }

LABEL_428:
      std::__throw_bad_variant_access[abi:sn200100]();
      goto LABEL_429;
    }

    if (*(a9 + 144) != 1)
    {
      goto LABEL_134;
    }

    if (*(a9 + 112))
    {
      operator delete(*(a9 + 120));
      if ((*(a9 + 64) & 1) == 0)
      {
LABEL_132:
        if (*(a9 + 16))
        {
LABEL_133:
          operator delete(*(a9 + 24));
        }

LABEL_134:
        *(a9 + 64) = 0;
        *(a9 + 136) = 0xFFFFFFFFLL;
        *(a9 + 144) = 1;
        *a9 = a4;
        *(a9 + 8) = 0;
        *(a9 + 24) = 2;
        *(a9 + 16) = 2;
        if (v64)
        {
          v92 = 0;
          *(v12 + 360) = -1;
          *&v93 = -1;
          *(&v93 + 1) = -1;
          *(v12 + 328) = v93;
          *(v12 + 344) = v93;
          *(v12 + 312) = v93;
        }

        else
        {
          v98 = *(v12 + 304);
          v92 = a4 - v98;
          *(a9 + 64) = 2;
          *(a9 + 72) = v98;
        }

        *(a9 + 120) = v92;
        *(a9 + 112) = 2;
        *(v12 + 304) = a4;
        return;
      }
    }

    else if ((*(a9 + 64) & 1) == 0)
    {
      goto LABEL_132;
    }

    operator delete(*(a9 + 72));
    if ((*(a9 + 16) & 1) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  if (v80 == 2)
  {
    if (!a3)
    {
      return;
    }

    if (*(a9 + 1936) != 2)
    {
      goto LABEL_428;
    }

    v94 = *(a9 + 328) - 1;
    v95 = *(a9 + 309);
    if (v95 == 255)
    {
      LOBYTE(v95) = 0;
    }

    v96 = v95;
    if (*(a9 + 308) == 255)
    {
      v97 = 0;
    }

    else
    {
      v97 = *(a9 + 308);
    }

    if (v97 > 3 || *(a9 + 336) > v95 || v94 > 2 || v94 < v95)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v99, v100, v101, v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_payload_params.cc");
      }

      return;
    }

    if (*(a9 + 144) == 1)
    {
      if (*(a9 + 112))
      {
        operator delete(*(a9 + 120));
        if ((*(a9 + 64) & 1) == 0)
        {
LABEL_150:
          if ((*(a9 + 16) & 1) == 0)
          {
            goto LABEL_152;
          }

          goto LABEL_151;
        }
      }

      else if ((*(a9 + 64) & 1) == 0)
      {
        goto LABEL_150;
      }

      operator delete(*(a9 + 72));
      if (*(a9 + 16))
      {
LABEL_151:
        operator delete(*(a9 + 24));
      }
    }

LABEL_152:
    *(a9 + 64) = 0;
    *(a9 + 112) = 0;
    *(a9 + 16) = 0;
    *(a9 + 136) = 0xFFFFFFFFLL;
    *(a9 + 144) = 1;
    *a9 = a4;
    *(a9 + 8) = v96;
    *(a9 + 12) = v97;
    operator new();
  }

  if (v80 != 4 || !a3)
  {
    return;
  }

  v90 = *(a3 + 12);
  if (v90 == 255)
  {
    v91 = 0;
  }

  else
  {
    v91 = *(a3 + 12);
  }

  if (v91 < 8)
  {
    if (*(a9 + 144) != 1)
    {
      goto LABEL_194;
    }

    if (*(a9 + 112))
    {
      operator delete(*(a9 + 120));
      if ((*(a9 + 64) & 1) == 0)
      {
LABEL_192:
        if ((*(a9 + 16) & 1) == 0)
        {
          goto LABEL_194;
        }

        goto LABEL_193;
      }
    }

    else if ((*(a9 + 64) & 1) == 0)
    {
      goto LABEL_192;
    }

    operator delete(*(a9 + 72));
    if ((*(a9 + 16) & 1) == 0)
    {
LABEL_194:
      *(a9 + 64) = 0;
      v120 = (a9 + 64);
      *(a9 + 112) = 0;
      v9 = a9 + 112;
      *(a9 + 16) = 0;
      *(a9 + 136) = 0xFFFFFFFFLL;
      *(a9 + 144) = 1;
      *a9 = a4;
      *(a9 + 8) = 0;
      v213 = a4;
      *(a9 + 12) = v91;
      absl::inlined_vector_internal::Storage<webrtc::DecodeTargetIndication,10ul,std::allocator<webrtc::DecodeTargetIndication>>::Resize<absl::inlined_vector_internal::DefaultValueAdapter<std::allocator<webrtc::DecodeTargetIndication>>>((a9 + 16), 4uLL);
      v121 = *(a9 + 16);
      if (v121)
      {
        v122 = *(a9 + 24);
      }

      else
      {
        v122 = (a9 + 24);
      }

      if (v91)
      {
        v123 = 4 * (v90 - (v90 != 0)) + 4;
        bzero(v122, v123);
        v124 = &v122[v123];
        if (v121)
        {
          v125 = *(a9 + 24);
        }

        else
        {
          v125 = a9 + 24;
        }

        v126 = v125 + 4 * (v121 >> 1) - v124;
        if (v126 >= 1)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v124 = v122;
        v126 = 4 * (v121 >> 1);
        if (v126 >= 1)
        {
LABEL_202:
          memset_pattern16(v124, &unk_273BA37E0, v126);
        }
      }

      if (v64)
      {
        LODWORD(v215) = 0;
        absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((a9 + 112), &v215, 1uLL);
        *&v127 = -1;
        *(&v127 + 1) = -1;
        *(v12 + 336) = v127;
        *(v12 + 352) = v127;
        *(v12 + 304) = v127;
        *(v12 + 320) = v127;
        *(v12 + 304 + 8 * v91) = v213;
        return;
      }

      v137 = *(v12 + 304);
      if (v137 >= 0)
      {
        v138 = v213 - v137;
      }

      else
      {
        v138 = 0;
      }

      LODWORD(v215) = v138;
      absl::inlined_vector_internal::Storage<int,4ul,std::allocator<int>>::Assign<absl::inlined_vector_internal::IteratorValueAdapter<std::allocator<int>,int const*>>((a9 + 112), &v215, 1uLL);
      if ((*(a3 + 13) & 1) == 0)
      {
        v150 = v91 + 1;
        v9 = 5;
        v151 = (v12 + 304);
        while (1)
        {
          v206 = *v151++;
          v205 = v206;
          *&v215 = v206;
          if (v206 != -1)
          {
            v207 = *(a9 + 64);
            v208 = *(a9 + 72);
            if (v207)
            {
              v209 = *(a9 + 80);
            }

            else
            {
              v208 = a9 + 72;
              v209 = 5;
            }

            if (v207 >> 1 == v209)
            {
              absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>((a9 + 64));
            }

            if (!v208)
            {
              goto LABEL_426;
            }

            *(v208 + 8 * (v207 >> 1)) = v205;
            *v120 = v207 + 2;
          }

          if (!--v150)
          {
            goto LABEL_247;
          }
        }
      }

      v139 = *(v12 + 304);
      v140 = *(v12 + 312);
      *&v215 = v139;
      if (v140 < v139)
      {
        *(v12 + 312) = -1;
        if (*(v12 + 320) >= v139)
        {
LABEL_234:
          if (*(v12 + 328) >= v139)
          {
            goto LABEL_235;
          }

          goto LABEL_318;
        }
      }

      else if (*(v12 + 320) >= v139)
      {
        goto LABEL_234;
      }

      *(v12 + 320) = -1;
      if (*(v12 + 328) >= v139)
      {
LABEL_235:
        if (*(v12 + 336) >= v139)
        {
          goto LABEL_236;
        }

        goto LABEL_319;
      }

LABEL_318:
      *(v12 + 328) = -1;
      if (*(v12 + 336) >= v139)
      {
LABEL_236:
        if (*(v12 + 344) >= v139)
        {
          goto LABEL_237;
        }

        goto LABEL_320;
      }

LABEL_319:
      *(v12 + 336) = -1;
      if (*(v12 + 344) >= v139)
      {
LABEL_237:
        if (*(v12 + 352) >= v139)
        {
          goto LABEL_238;
        }

        goto LABEL_321;
      }

LABEL_320:
      *(v12 + 344) = -1;
      if (*(v12 + 352) >= v139)
      {
LABEL_238:
        if (*(v12 + 360) >= v139)
        {
          goto LABEL_240;
        }

        goto LABEL_239;
      }

LABEL_321:
      *(v12 + 352) = -1;
      if (*(v12 + 360) >= v139)
      {
LABEL_240:
        v143 = *(a9 + 72);
        v142 = a9 + 72;
        v141 = v143;
        v144 = *(v142 - 8);
        if ((v144 & 1) == 0)
        {
          v141 = v142;
        }

        v145 = 5;
        if (v144)
        {
          v145 = *(v142 + 8);
        }

        if (v144 >> 1 == v145)
        {
          absl::inlined_vector_internal::Storage<long long,5ul,std::allocator<long long>>::EmplaceBackSlow<long long const&>(v120);
        }

        if (v141)
        {
          *(v141 + 8 * (v144 >> 1)) = v139;
          *v120 = v144 + 2;
LABEL_247:
          *(v12 + 304 + 8 * v91) = v213;
          return;
        }

        goto LABEL_426;
      }

LABEL_239:
      *(v12 + 360) = -1;
      goto LABEL_240;
    }

LABEL_193:
    operator delete(*(a9 + 24));
    goto LABEL_194;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
LABEL_128:
    webrtc::webrtc_logging_impl::Log("\r\t", v83, v84, v85, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/call/rtp_payload_params.cc");
  }
}

uint64_t webrtc::RtpPayloadParams::GenericStructure@<X0>(uint64_t this@<X0>, const webrtc::CodecSpecificInfo *a2@<X1>, _BYTE *a3@<X8>)
{
  v6[16] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *a2;
    if (*a2 > 2)
    {
      if (v3 != 3 && v3 == 4)
      {
        v5 = 4;
LABEL_14:
      }
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
        }
      }

      if (*(this + 961) == 1)
      {
        v5 = 1;
        goto LABEL_14;
      }
    }
  }

  *a3 = 0;
  a3[128] = 0;
  return this;
}

void webrtc::anonymous namespace::MinimalisticStructure(webrtc::_anonymous_namespace_ *this, int a2, int a3)
{
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *this = 0;
  *(this + 1) = a3 * a2;
  *(this + 2) = a2;
  operator new();
}

char *absl::inlined_vector_internal::Storage<webrtc::FrameDependenciesCalculator::BufferUsage,4ul,std::allocator<webrtc::FrameDependenciesCalculator::BufferUsage>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v2 >> 1;
  if (v2)
  {
    if (v2 < 0x924924924924926)
    {
      operator new();
    }

LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = (a1 + 1);
  v7 = result + 16;
  v8 = a2 + 3;
  do
  {
    *(v7 - 1) = *(v8 - 1);
    *v7 = 0;
    v9 = *v8;
    if (*v8 >= 2uLL)
    {
      if (v9)
      {
        result = absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::InitFrom(v7, v8);
      }

      else
      {
        *v7 = v9;
        v10 = *(v8 + 1);
        *(v7 + 24) = *(v8 + 3);
        *(v7 + 8) = v10;
      }
    }

    v7 += 56;
    v8 += 7;
    --v5;
  }

  while (v5);
  *a1 = *a2;
  return result;
}

void *absl::inlined_vector_internal::Storage<std::optional<long long>,4ul,std::allocator<std::optional<long long>>>::InitFrom(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

LABEL_7:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 16 * (v2 >> 1));
  *a1 = *a2;
  return result;
}

void absl::inlined_vector_internal::Storage<webrtc::FrameDependenciesCalculator::BufferUsage,4ul,std::allocator<webrtc::FrameDependenciesCalculator::BufferUsage>>::DestroyContents(unint64_t *a1)
{
  v3 = a1 + 1;
  v2 = *a1;
  v4 = *a1 & 1;
  v5 = a1 + 1;
  if (*a1)
  {
    v5 = *v3;
  }

  if (v2 >= 2)
  {
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v2 >> 1;
    v7 = &v5[7 * (v2 >> 1) - 5];
    do
    {
      if (*v7)
      {
        operator delete(*(v7 + 8));
      }

      v7 -= 56;
      --v6;
    }

    while (v6);
    v4 = *a1 & 1;
  }

  if (v4)
  {
    v8 = *v3;

    operator delete(v8);
  }
}

void std::vector<webrtc::FrameDependencyTemplate>::__emplace_back_slow_path<webrtc::FrameDependencyTemplate const&>(void *a1)
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

void absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::EmplaceBackSlow<webrtc::RenderResolution const&>(void *a1)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  operator new();
}

unint64_t *absl::inlined_vector_internal::Storage<webrtc::RenderResolution,4ul,std::allocator<webrtc::RenderResolution>>::Resize<absl::inlined_vector_internal::CopyValueAdapter<std::allocator<webrtc::RenderResolution>>>(unint64_t *result, void *a2)
{
  v2 = *result;
  if ((*result & 1) == 0)
  {
    if (v2 <= 5)
    {
      v3 = v2 >> 1;
      v4 = (result + 4 * v2 + 8);
      goto LABEL_9;
    }

LABEL_13:
    *result = v2 & 1 | 6;
    return result;
  }

  if (v2 >= 6)
  {
    goto LABEL_13;
  }

  v5 = result[1];
  v3 = v2 >> 1;
  if (result[2] < 3)
  {
    operator new();
  }

  if (v5)
  {
    v4 = (v5 + 8 * v3);
LABEL_9:
    v6 = v3 - 3;
    do
    {
      *v4++ = *a2;
    }

    while (!__CFADD__(v6++, 1));
    v2 = *result;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *webrtc::RtpReceiverInternal::CreateStreamsFromIds@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v3 = result[1];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v5 = v3 - v4;
  if (v5)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v5 >> 3)) >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::RtpReceiverInterface::stream_ids(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void webrtc::RtpReceiverInterface::streams(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void webrtc::RtpReceiverInterface::GetSources(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void webrtc::ModuleRtpRtcpImpl2::ModuleRtpRtcpImpl2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829C1E8;
  *(a1 + 8) = &unk_28829C450;
  v10 = *a2;
  *(a1 + 16) = *a2;
  v11 = (a1 + 16);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  }

  v12 = *(a2 + 1);
  *(a1 + 40) = *(a2 + 3);
  *(a1 + 24) = v12;
  *(a1 + 64) = 0;
  LOBYTE(v19) = 0;
  BYTE8(v19) = 0;
  LOBYTE(v16) = *a3;
  DWORD1(v16) = *(a3 + 180);
  *(&v16 + 1) = *(a3 + 16);
  v17 = *(a3 + 193);
  v13 = *(a3 + 152);
  if (v13)
  {
    BYTE8(v19) = 1;
    *&v19 = 1000 * v13;
  }

  v14 = *(a3 + 80);
  *&v20 = *(a3 + 8);
  *(&v20 + 1) = v14;
  v15[0] = &unk_28829C490;
  v15[1] = a1;
  v15[3] = v15;
  v18[3] = v18;
  v18[0] = &unk_28829C490;
  v18[1] = a1;
  v21 = v16;
  v22 = v17;
  v23[3] = v23;
  v23[0] = &unk_28829C490;
  v23[1] = a1;
  v24 = v19;
  v25 = v20;
  webrtc::RTCPSender::RTCPSender(a1 + 72, v11, &v21);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetMaxRtpPacketSize(webrtc::ModuleRtpRtcpImpl2 *this, uint64_t a2)
{
  pthread_mutex_lock((this + 184));
  *(this + 57) = a2;
  result = pthread_mutex_unlock((this + 184));
  v5 = *(this + 8);
  if (v5)
  {
    pthread_mutex_lock((v5 + 1072));
    *(v5 + 1144) = a2;

    return pthread_mutex_unlock((v5 + 1072));
  }

  return result;
}

void webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(pthread_mutex_t *this)
{
  v2 = *&this[20].__opaque[48];
  if (v2)
  {
    *(v2 + 4) = 0;
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *&this[20].__opaque[48] = 0;
  }

  v3 = *this[22].__opaque;
  *(v3 + 4) = 0;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  pthread_mutex_destroy(this + 21);
  v4 = *&this[20].__opaque[48];
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  webrtc::RTCPReceiver::~RTCPReceiver(&this[12]);
  webrtc::RTCPSender::~RTCPSender(this[1].__opaque);
  sig = this[1].__sig;
  this[1].__sig = 0;
  if (sig)
  {
    std::__tree<sigslot::_signal_base_interface *>::destroy(sig + 1272, *(sig + 1280));
    if (*(sig + 1247) < 0)
    {
      operator delete(*(sig + 1224));
      if ((*(sig + 1223) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((*(sig + 1223) & 0x80000000) == 0)
    {
LABEL_13:
      pthread_mutex_destroy((sig + 1072));
      *(sig + 968) = &unk_28829D108;
      v6 = *(sig + 1008);
      *(v6 + 4) = 0;
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      webrtc::RtpSenderEgress::~RtpSenderEgress((sig + 448));
      webrtc::RtpPacketHistory::~RtpPacketHistory(sig);
      MEMORY[0x2743DA540]();
      goto LABEL_16;
    }

    operator delete(*(sig + 1200));
    goto LABEL_13;
  }

LABEL_16:
  v7 = *&this->__opaque[8];
  if (v7)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 8))(v7);
    }
  }
}

{
  webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2(webrtc::ModuleRtpRtcpImpl2 *this)
{
  webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2((this - 8));
}

{
  webrtc::ModuleRtpRtcpImpl2::~ModuleRtpRtcpImpl2((this - 8));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetRtxSendStatus(webrtc::ModuleRtpRtcpImpl2 *this, int a2)
{
  v3 = *(this + 8);
  pthread_mutex_lock((v3 + 1072));
  if (!a2 || *(v3 + 1044) == 1 && *(v3 + 1288))
  {
    *(v3 + 1264) = a2;
    goto LABEL_5;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
LABEL_5:
    v4 = (v3 + 1072);

    return pthread_mutex_unlock(v4);
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_sender.cc");
  v4 = (v3 + 1072);

  return pthread_mutex_unlock(v4);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::RtxSendStatus(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 1072));
  v2 = *(v1 + 1264);
  pthread_mutex_unlock((v1 + 1072));
  return v2;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::RtxSsrc(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return *(v1 + 1040) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t webrtc::ModuleRtpRtcpImpl2::FlexfecSsrc(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return *(v1 + 1048) & 0xFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void webrtc::ModuleRtpRtcpImpl2::IncomingRtcpPacket(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    a2 = 0;
  }

  webrtc::RTCPReceiver::IncomingPacket(a1 + 768, a2, a3);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::StartTimestamp(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  pthread_mutex_lock((v1 + 1072));
  v2 = *(v1 + 1192);
  pthread_mutex_unlock((v1 + 1072));
  return v2;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetStartTimestamp(webrtc::ModuleRtpRtcpImpl2 *this, int a2)
{
  pthread_mutex_lock((this + 184));
  *(this + 68) = a2;
  pthread_mutex_unlock((this + 184));
  v4 = *(this + 8);
  pthread_mutex_lock((v4 + 1072));
  *(v4 + 1192) = a2;
  result = pthread_mutex_unlock((v4 + 1072));
  *(*(this + 8) + 596) = a2;
  return result;
}

webrtc::RtpPacketHistory *webrtc::ModuleRtpRtcpImpl2::SetSequenceNumber(webrtc::ModuleRtpRtcpImpl2 *this, int a2)
{
  result = *(this + 8);
  if (*(result + 204) != a2)
  {
    *(result + 204) = a2;
    return webrtc::RtpPacketHistory::Clear(result);
  }

  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetRtpState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  pthread_mutex_lock((v4 + 1072));
  *(v4 + 1192) = *(a2 + 4);
  *(v4 + 1249) = *(a2 + 32);
  webrtc::RTPSender::UpdateHeaderSizes((v4 + 1016));
  pthread_mutex_unlock((v4 + 1072));
  v5 = *(a1 + 64);
  *(v5 + 408) = *a2;
  *(v5 + 416) = *(a2 + 8);
  *(v5 + 424) = *(a2 + 16);
  *(v5 + 432) = *(a2 + 24);
  LODWORD(v4) = *(a2 + 4);
  pthread_mutex_lock((a1 + 184));
  *(a1 + 272) = v4;
  result = pthread_mutex_unlock((a1 + 184));
  *(*(a1 + 64) + 596) = *(a2 + 4);
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetRtxState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  pthread_mutex_lock((v4 + 1072));
  *(v4 + 1250) = *(a2 + 32);
  result = pthread_mutex_unlock((v4 + 1072));
  *(*(a1 + 64) + 410) = *a2;
  return result;
}

__n128 webrtc::ModuleRtpRtcpImpl2::GetRtpState@<Q0>(webrtc::ModuleRtpRtcpImpl2 *this@<X0>, __n128 *a2@<X8>)
{
  v4 = *(this + 8);
  pthread_mutex_lock((v4 + 1072));
  a2->n128_u32[1] = *(v4 + 1192);
  a2[2].n128_u8[0] = *(v4 + 1249);
  pthread_mutex_unlock((v4 + 1072));
  v5 = *(this + 8);
  a2->n128_u16[0] = v5[25].n128_u16[4];
  a2->n128_u32[2] = v5[26].n128_u32[0];
  v5 = (v5 + 424);
  result = *v5;
  a2[1] = *v5;
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::GetRtxState@<X0>(webrtc::ModuleRtpRtcpImpl2 *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 8);
  pthread_mutex_lock((v4 + 1072));
  *(a2 + 16) = vnegq_f64(0);
  *(a2 + 4) = *(v4 + 1192);
  *(a2 + 8) = 0;
  *(a2 + 32) = *(v4 + 1250);
  result = pthread_mutex_unlock((v4 + 1072));
  *a2 = *(*(this + 8) + 410);
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetNonSenderRttMeasurement(webrtc::ModuleRtpRtcpImpl2 *this, char a2)
{
  pthread_mutex_lock((this + 184));
  *(this + 464) = a2;
  pthread_mutex_unlock((this + 184));
  pthread_mutex_lock(this + 14);
  *(this + 1064) = a2;

  return pthread_mutex_unlock(this + 14);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetMid(uint64_t result, __int128 *a2, size_t a3)
{
  v3 = *(result + 64);
  if (v3)
  {
    return webrtc::RTPSender::SetMid(v3 + 1016, a2, a3);
  }

  return result;
}

double webrtc::ModuleRtpRtcpImpl2::GetFeedbackState@<D0>(pthread_mutex_t *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sig = this[1].__sig;
  if (sig)
  {
    v5 = *(sig + 576);
    if (v5)
    {
      (*(*v5 + 16))(&v26);
      v6 = v27;
      LODWORD(v7) = v29;
      if (*(sig + 512) == 1)
      {
        (*(**(sig + 576) + 16))(&v26);
        v8 = v27;
        LODWORD(v9) = v29;
      }

      else
      {
        v8 = 0;
        LODWORD(v9) = 0;
      }
    }

    else
    {
      v6 = *(sig + 616);
      v7 = *(sig + 632);
      v8 = *(sig + 744);
      v9 = *(sig + 760);
    }

    *a2 = v9 + v7;
    *(a2 + 8) = v6 + v8;
    v10 = this[1].__sig;
    v11.var0 = (*(**&this->__opaque[24] + 16))(*&this->__opaque[24]);
    webrtc::RtpSenderEgress::GetSendRates((v10 + 448), v11, &v26);
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v26 != 0x7FFFFFFFFFFFFFFFLL && *(&v26 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(&v26 + 1) == 0x8000000000000000 || v26 == 0x8000000000000000;
      v19 = *(&v26 + 1) + v26;
      if (v18)
      {
        v19 = 0x8000000000000000;
      }

      v12 = 0x7FFFFFFFFFFFFFFFLL;
      if (v19 != 0x7FFFFFFFFFFFFFFFLL && v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v27 == 0x8000000000000000 || v19 == 0x8000000000000000;
        v21 = v27 + v19;
        if (v20)
        {
          v21 = 0x8000000000000000;
        }

        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v21 != 0x7FFFFFFFFFFFFFFFLL && v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = v28 == 0x8000000000000000 || v21 == 0x8000000000000000;
          v23 = v28 + v21;
          if (v22)
          {
            v23 = 0x8000000000000000;
          }

          v12 = 0x7FFFFFFFFFFFFFFFLL;
          if (v23 != 0x7FFFFFFFFFFFFFFFLL && v29 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = 0x8000000000000000;
            v24 = v29 == 0x8000000000000000 || v23 == 0x8000000000000000;
            v25 = v29 + v23;
            if (!v24)
            {
              v12 = v25;
            }
          }
        }
      }
    }

    *(a2 + 16) = v12;
  }

  *(a2 + 64) = this + 12;
  pthread_mutex_lock(this + 14);
  v13 = *&this[15].__opaque[8];
  if (v13)
  {
    v14 = *&this[15].__opaque[20];
    v15 = *&this[15].__opaque[16];
    pthread_mutex_unlock(this + 14);
    *(a2 + 24) = __PAIR64__(v14, v15) >> 16;
    *(a2 + 32) = v13;
  }

  else
  {
    pthread_mutex_unlock(this + 14);
  }

  webrtc::RTCPReceiver::ConsumeReceivedXrReferenceTimeInfo(this + 12, &v26);
  v16 = v27;
  result = *&v26;
  *(a2 + 40) = v26;
  *(a2 + 56) = v16;
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetSendingStatus(webrtc::ModuleRtpRtcpImpl2 *this, int a2)
{
  pthread_mutex_lock((this + 184));
  v4 = *(this + 248);
  pthread_mutex_unlock((this + 184));
  if (v4 != a2)
  {
    webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(this, v6);
    pthread_mutex_lock((this + 184));
    *(this + 248) = a2;
    pthread_mutex_unlock((this + 184));
    if (__p)
    {
      operator delete(__p);
    }
  }

  return 0;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::Sending(webrtc::ModuleRtpRtcpImpl2 *this)
{
  pthread_mutex_lock((this + 184));
  v2 = *(this + 248);
  pthread_mutex_unlock((this + 184));
  return v2;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetSendingMediaStatus(webrtc::ModuleRtpRtcpImpl2 *this, char a2)
{
  v3 = *(this + 8);
  pthread_mutex_lock((v3 + 1072));
  *(v3 + 1136) = a2;

  return pthread_mutex_unlock((v3 + 1072));
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SendingMedia(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 1072));
  v2 = *(v1 + 1136);
  pthread_mutex_unlock((v1 + 1072));
  return v2 & 1;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::IsAudioConfigured(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 1032);
  }

  return v1 & 1;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetAsPartOfAllocation(uint64_t this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 64);
  if (v9)
  {
    *(v9 + 593) = a2;
  }

  else
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_rtcp_impl2.cc", 311, "rtp_sender_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v8);
    return webrtc::ModuleRtpRtcpImpl2::OnSendingRtpFrame(v10, v11, v12, v13, v14);
  }

  return this;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::OnSendingRtpFrame(webrtc::ModuleRtpRtcpImpl2 *this, int a2, uint64_t a3, int a4, int a5)
{
  pthread_mutex_lock((this + 184));
  v10 = *(this + 248);
  pthread_mutex_unlock((this + 184));
  if (v10 != 1)
  {
    return v10;
  }

  v18 = a3 > 0;
  if (a3 <= 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1000 * a3;
  }

  v20 = *(this + 7);
  {
    v21 = *(this + 177);
    if (v21)
    {
      atomic_fetch_add_explicit(v21, 1u, memory_order_relaxed);
    }

    v22 = operator new(0x30uLL);
    *v22 = this;
    v22[2] = a2;
    *(v22 + 2) = v19;
    *(v22 + 3) = v18;
    v22[8] = a4 & ~(a4 >> 31);
    *(v22 + 36) = a4 >= 0;
    *(v22 + 40) = a5;
    operator new();
  }

  pthread_mutex_lock((this + 184));
  if ((a4 & 0x80000000) == 0)
  {
    *(this + 712) = a4;
  }

  *(this + 69) = a2;
  if (a3 <= 0)
  {
    v24 = (*(**(this + 11) + 16))(*(this + 11));
    if ((*(this + 288) & 1) == 0)
    {
      *(this + 288) = 1;
    }

    *(this + 35) = v24;
  }

  else
  {
    if ((*(this + 288) & 1) == 0)
    {
      *(this + 288) = 1;
    }

    *(this + 35) = 1000 * a3;
  }

  pthread_mutex_unlock((this + 184));
  v25 = (*(**(this + 11) + 16))(*(this + 11));
  result = pthread_mutex_lock((this + 184));
  if (!*(this + 32))
  {
    pthread_mutex_unlock((this + 184));
    return v10;
  }

  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = v25 + 100000;
  if (v25 == 0x8000000000000000)
  {
    v27 = 0x8000000000000000;
  }

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = v27;
  }

  if (*(this + 112))
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  if (a5)
  {
    v29 = v28;
  }

  else
  {
    v29 = v25;
  }

  if (*(this + 264))
  {
    v30 = *(this + 32);
    pthread_mutex_unlock((this + 184));
    if (v29 >= v30)
    {
      webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(this, v31);
      webrtc::RTCPSender::SendRTCP(this + 72, v31, 1u, 0, 0);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::CanSendPacket(webrtc::ModuleRtpRtcpImpl2 *this, const webrtc::RtpPacketToSend *a2)
{
  v4 = *(this + 8);
  pthread_mutex_lock((v4 + 1072));
  v5 = *(v4 + 1136);
  pthread_mutex_unlock((v4 + 1072));
  if (v5 != 1)
  {
    return 0;
  }

  result = 1;
  if ((*(a2 + 32) & 1) != 0 && *(a2 + 15) == 4)
  {
    v7 = *(this + 8);
    if (*(a2 + 3) == *(v7 + 1036) && (*(v7 + 412) == 255 || *(v7 + 396) == 1 && (*(v7 + 440) & 1) == 0))
    {
      return 0;
    }
  }

  return result;
}

unint64_t *webrtc::ModuleRtpRtcpImpl2::AssignSequenceNumber(unint64_t *this, webrtc::RtpPacketToSend *a2)
{
  if ((*(a2 + 32) & 1) == 0 || *(a2 + 15) != 3)
  {
    v2 = this[8];
    return webrtc::PacketSequencer::Sequence((v2 + 384), a2);
  }

  v2 = this[8];
  v3 = *(v2 + 1048);
  if ((v3 & 0x100000000) == 0 || *(a2 + 3) != v3)
  {
    return webrtc::PacketSequencer::Sequence((v2 + 384), a2);
  }

  return this;
}

void webrtc::ModuleRtpRtcpImpl2::SendPacket(uint64_t a1, webrtc::RtpPacket **a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *a2;
  *a2 = 0;
  v10 = v4;
  webrtc::RtpSenderEgress::SendPacket(v3 + 448, &v10, a3);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = *(v5 + 22);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v5 + 11);
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

    v9 = *(v5 + 7);
    if (v9)
    {
      *(v5 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x2743DA540](v5, 0x1020C4060F6C936);
  }
}

uint64_t webrtc::ModuleRtpRtcpImpl2::TrySendPacket(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = *(a1 + 64);
  pthread_mutex_lock((v7 + 1072));
  v8 = *(v7 + 1136);
  pthread_mutex_unlock((v7 + 1072));
  if (v8 != 1)
  {
    return 0;
  }

  if ((*(v3 + 128) & 1) != 0 && *(v3 + 120) == 4)
  {
    v9 = *(a1 + 64);
    if (*(v3 + 12) == *(v9 + 1036) && (*(v9 + 412) == 255 || *(v9 + 396) == 1 && *(v9 + 440) != 1))
    {
      return 0;
    }
  }

  v10 = *a2;
  if ((*(*a2 + 128) & 1) != 0 && *(v10 + 120) == 3)
  {
    v11 = *(a1 + 64);
    v12 = *(v11 + 1048);
    if ((v12 & 0x100000000) != 0 && *(v10 + 12) == v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *(a1 + 64);
  }

  webrtc::PacketSequencer::Sequence((v11 + 384), v10);
  v10 = *a2;
  v11 = *(a1 + 64);
LABEL_17:
  *a2 = 0;
  v19 = v10;
  webrtc::RtpSenderEgress::SendPacket(v11 + 448, &v19, a3);
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    v15 = *(v14 + 22);
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = *(v14 + 11);
    if (v16 && atomic_fetch_add((v16 + 24), 0xFFFFFFFF) == 1)
    {
      v17 = *(v16 + 16);
      *(v16 + 16) = 0;
      if (v17)
      {
        MEMORY[0x2743DA520](v17, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v16, 0x1010C40EE34DA14);
    }

    v18 = *(v14 + 7);
    if (v18)
    {
      *(v14 + 8) = v18;
      operator delete(v18);
    }

    MEMORY[0x2743DA540](v14, 0x1020C4060F6C936);
  }

  return 1;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetFecProtectionParams(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 64);
  if (*(v3 + 904) == 1)
  {
    *(v3 + 904) = 0;
  }

  v4 = *a2;
  *(v3 + 888) = *(a2 + 2);
  *(v3 + 880) = v4;
  v5 = *a3;
  *(v3 + 900) = *(a3 + 2);
  *(v3 + 892) = v5;
  *(v3 + 904) = 1;
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::FetchFecPackets@<X0>(webrtc::ModuleRtpRtcpImpl2 *this@<X0>, void *a2@<X8>)
{
  result = *(*(this + 8) + 552);
  if (result)
  {
    return (*(*result + 64))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::OnAbortedRetransmissions(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = *(result + 64);
    v5 = 2 * a3;
    do
    {
      v6 = *v3++;
      result = webrtc::RtpPacketHistory::MarkPacketAsSent(*(v4 + 528), v6);
      v5 -= 2;
    }

    while (v5);
  }

  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::OnPacketsAcknowledged(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  if (!a3)
  {
    a2 = 0;
  }

  return webrtc::RtpPacketHistory::CullAcknowledgedPackets(v3, a2, a3);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SupportsPadding(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  pthread_mutex_lock((v1 + 1072));
  if (*(v1 + 1136) == 1)
  {
    v2 = *(v1 + 1296);
    pthread_mutex_unlock((v1 + 1072));
    return v2 & 1;
  }

  else
  {
    pthread_mutex_unlock((v1 + 1072));
    return 0;
  }
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SupportsRtxPayloadPadding(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  pthread_mutex_lock((v1 + 1072));
  if (*(v1 + 1136) == 1 && *(v1 + 1296) == 1)
  {
    v2 = (*(v1 + 1264) >> 1) & 1;
    pthread_mutex_unlock((v1 + 1072));
    return v2;
  }

  else
  {
    pthread_mutex_unlock((v1 + 1072));
    return 0;
  }
}

void webrtc::ModuleRtpRtcpImpl2::GeneratePadding(webrtc::ModuleRtpRtcpImpl2 *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(this + 8);
  if (v3[412] == 255 || v3[396] == 1 && v3[440] != 1)
  {
    v4 = (v3 + 1016);
  }

  else
  {
    v4 = (v3 + 1016);
  }

  webrtc::RTPSender::GeneratePadding(v4, a2, a3);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::ExpectedPerPacketOverhead(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 1072));
  v2 = *(v1 + 1176);
  pthread_mutex_unlock((v1 + 1072));
  return v2;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::RTCP(webrtc::ModuleRtpRtcpImpl2 *this)
{
  pthread_mutex_lock((this + 184));
  v2 = *(this + 32);
  pthread_mutex_unlock((this + 184));
  return v2;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetRTCPStatus(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 184));
  if (a2)
  {
    if (!*(a1 + 128))
    {
      v4 = *(a1 + 144) / 2;
      v5 = (*(**(a1 + 88) + 16))(*(a1 + 88));
      v6 = v5 + v4;
      if (v5 == 0x8000000000000000)
      {
        v6 = 0x8000000000000000;
      }

      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((*(a1 + 264) & 1) == 0)
      {
        *(a1 + 264) = 1;
      }

      *(a1 + 256) = v6;
      v7 = *(a1 + 176);
      if (v7)
      {
        v9 = v4;
        (*(*v7 + 48))(v7, &v9);
      }
    }
  }

  else if (*(a1 + 264) == 1)
  {
    *(a1 + 264) = 0;
  }

  *(a1 + 128) = a2;
  return pthread_mutex_unlock((a1 + 184));
}

uint64_t webrtc::ModuleRtpRtcpImpl2::LastRtt(pthread_mutex_t *this)
{
  v2 = this + 14;
  pthread_mutex_lock(this + 14);
  v3 = *&this[17].__opaque[24];
  v4 = *&this[17].__opaque[32];
  if (v4 == v3)
  {
    v3 = *&this[17].__opaque[32];
    v10 = v3;
  }

  else
  {
    v5 = (v4 - v3) >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[32 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 8);
      v5 += ~(v5 >> 1);
      if (v9 < LODWORD(this[15].__sig))
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
    v10 = v3;
    if (v4 != v3)
    {
      if (LODWORD(this[15].__sig) >= *v3)
      {
        v10 = v3 + 32;
      }

      else
      {
        v10 = v3;
      }
    }
  }

  if (v3 == v10)
  {
    v3 = *&this[17].__opaque[32];
  }

  if (v4 == v3)
  {
    pthread_mutex_unlock(v2);
    v2 = this + 21;
    pthread_mutex_lock(this + 21);
    sig = this[22].__sig;
    v13 = sig <= 0;
    v14 = 1000 * sig;
    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v11 = *(v3 + 1);
  }

  pthread_mutex_unlock(v2);
  return v11;
}

unint64_t webrtc::ModuleRtpRtcpImpl2::ExpectedRetransmissionTime(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 21);
  sig = this[22].__sig;
  pthread_mutex_unlock(this + 21);
  if (sig >= 1)
  {
    return 1000 * sig;
  }

  pthread_mutex_lock(this + 14);
  v4 = *&this[17].__opaque[24];
  v5 = *&this[17].__opaque[32];
  if (v5 == v4)
  {
    v4 = *&this[17].__opaque[32];
    v11 = v4;
  }

  else
  {
    v6 = (v5 - v4) >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[32 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 32;
      v6 += ~(v6 >> 1);
      if (v10 < LODWORD(this[15].__sig))
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = v4;
    if (v5 != v4)
    {
      if (LODWORD(this[15].__sig) >= *v4)
      {
        v11 = v4 + 32;
      }

      else
      {
        v11 = v4;
      }
    }
  }

  if (v4 == v11)
  {
    v12 = *&this[17].__opaque[32];
  }

  else
  {
    v12 = v4;
  }

  if (v5 == v12)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v13 = *(v12 + 2) / *(v12 + 3);
    v14 = v13 & 0xFFFFFFFFFFFFFF00;
    v15 = v13;
  }

  pthread_mutex_unlock(this + 14);
  if (v5 == v12)
  {
    return 125000;
  }

  else
  {
    return v14 | v15;
  }
}

unint64_t webrtc::ModuleRtpRtcpImpl2::SendRTCP(pthread_mutex_t *a1, unsigned int a2)
{
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(a1, v6);
  result = webrtc::RTCPSender::SendRTCP(a1[1].__opaque, v6, a2, 0, 0);
  if (__p)
  {
    v8 = __p;
    v5 = result;
    operator delete(__p);
    return v5;
  }

  return result;
}

__n128 webrtc::ModuleRtpRtcpImpl2::GetSendStreamDataCounters(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v6 = *(v5 + 576);
  if (v6)
  {
    (*(*v6 + 16))(&v27);
    v7 = v32;
    a2[4] = v31;
    a2[5] = v7;
    v8 = v34;
    a2[6] = v33;
    a2[7] = v8;
    v9 = v28;
    *a2 = v27;
    a2[1] = v9;
    result = v29;
    v11 = v30;
    a2[2] = v29;
    a2[3] = v11;
    if (*(v5 + 512) == 1)
    {
      (*(**(v5 + 576) + 16))(&v27);
      v12 = v32;
      a3[4] = v31;
      a3[5] = v12;
      v13 = v34;
      a3[6] = v33;
      a3[7] = v13;
      v14 = v28;
      *a3 = v27;
      a3[1] = v14;
      result.n128_u64[0] = v29.n128_u64[0];
      v15 = v30;
      a3[2] = v29;
      a3[3] = v15;
    }
  }

  else
  {
    v16 = *(v5 + 600);
    v17 = *(v5 + 616);
    v18 = *(v5 + 648);
    a2[2] = *(v5 + 632);
    a2[3] = v18;
    *a2 = v16;
    a2[1] = v17;
    v19 = *(v5 + 664);
    v20 = *(v5 + 680);
    v21 = *(v5 + 712);
    a2[6] = *(v5 + 696);
    a2[7] = v21;
    a2[4] = v19;
    a2[5] = v20;
    v22 = *(v5 + 840);
    v24 = *(v5 + 792);
    v23 = *(v5 + 808);
    a3[6] = *(v5 + 824);
    a3[7] = v22;
    a3[4] = v24;
    a3[5] = v23;
    result = *(v5 + 728);
    v25 = *(v5 + 744);
    v26 = *(v5 + 776);
    a3[2] = *(v5 + 760);
    a3[3] = v26;
    *a3 = result;
    a3[1] = v25;
  }

  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::GetLatestReportBlockData@<X0>(pthread_mutex_t *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  pthread_mutex_lock(this + 14);
  v4 = *&this[18].__opaque[8];
  for (i = *&this[18].__opaque[16]; v4 != i; v4 += 72)
  {
    std::vector<webrtc::ReportBlockData>::push_back[abi:sn200100](a2, (v4 + 8));
  }

  return pthread_mutex_unlock(this + 14);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::GetSenderReportStats@<X0>(webrtc::ModuleRtpRtcpImpl2 *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock(this + 14);
  if (*(this + 122))
  {
    v4 = *(this + 984);
    *a2 = *(this + 968);
    *(a2 + 16) = v4;
    *(a2 + 32) = *(this + 1000);
    *(a2 + 48) = 1;
    v5 = (this + 896);
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    v5 = (this + 896);
  }

  return pthread_mutex_unlock(v5);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::GetNonSenderRttStats@<X0>(pthread_mutex_t *this@<X0>, uint64_t a2@<X8>)
{
  pthread_mutex_lock(this + 14);
  v4 = *&this[17].__opaque[48];
  sig = this[18].__sig;
  if (sig == v4)
  {
    v4 = this[18].__sig;
    v11 = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((sig - v4) >> 3);
    do
    {
      v7 = v6 >> 1;
      v8 = (v4 + 40 * (v6 >> 1));
      v10 = *v8;
      v9 = v8 + 10;
      v6 += ~(v6 >> 1);
      if (v10 < LODWORD(this[15].__sig))
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = v4;
    if (sig != v4)
    {
      if (LODWORD(this[15].__sig) >= *v4)
      {
        v11 = v4 + 40;
      }

      else
      {
        v11 = v4;
      }
    }
  }

  if (v4 == v11)
  {
    v4 = this[18].__sig;
  }

  if (sig == v4)
  {
    v12 = 0;
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v12 = *(v4 + 8);
    v13 = *(v4 + 24);
    v14 = *(v4 + 32);
    v15 = *(v4 + 16);
  }

  result = pthread_mutex_unlock(this + 14);
  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = 1;
  return result;
}

void webrtc::ModuleRtpRtcpImpl2::SetRemb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *__p = *a3;
  v9 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  webrtc::RTCPSender::SetRemb(a1 + 72, a2, __p, a4, a5, a6, a7, a8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetExtmapAllowMixed(webrtc::ModuleRtpRtcpImpl2 *this, char a2)
{
  v3 = *(this + 8);
  pthread_mutex_lock((v3 + 1072));
  *(v3 + 1174) = a2;

  return pthread_mutex_unlock((v3 + 1072));
}

uint64_t webrtc::ModuleRtpRtcpImpl2::RegisterRtpHeaderExtension(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 64);
  pthread_mutex_lock((v7 + 1072));
  v8 = webrtc::RtpHeaderExtensionMap::RegisterByUri((v7 + 1152), a4, a2, a3);
  if (*(v7 + 1160))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v7 + 1161) == 0;
  }

  v11 = !v9 || *(v7 + 1157) != 0 || *(v7 + 1153) != 0;
  *(v7 + 1296) = v11;
  webrtc::RTPSender::UpdateHeaderSizes((v7 + 1016));
  result = pthread_mutex_unlock((v7 + 1072));
  if ((v8 & 1) == 0)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtp_rtcp_impl2.cc", 569, "registered", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v13, v14, v15, v16, v17);
    return webrtc::ModuleRtpRtcpImpl2::DeregisterSendRtpHeaderExtension();
  }

  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::DeregisterSendRtpHeaderExtension(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  pthread_mutex_lock((v5 + 1072));
  webrtc::RtpHeaderExtensionMap::Deregister(v5 + 1152, a2, a3);
  if (*(v5 + 1160))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 1161) == 0;
  }

  v8 = !v6 || *(v5 + 1157) != 0 || *(v5 + 1153) != 0;
  *(v5 + 1296) = v8;
  webrtc::RTPSender::UpdateHeaderSizes((v5 + 1016));

  return pthread_mutex_unlock((v5 + 1072));
}

void webrtc::ModuleRtpRtcpImpl2::SetTmmbn(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  webrtc::RTCPSender::SetTmmbn(a1 + 72, __p);
  v2 = __p[0];
  if (__p[0])
  {

    operator delete(v2);
  }
}

void non-virtual thunk towebrtc::ModuleRtpRtcpImpl2::SetTmmbn(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v4 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  webrtc::RTCPSender::SetTmmbn(a1 + 64, __p);
  v2 = __p[0];
  if (__p[0])
  {

    operator delete(v2);
  }
}

unint64_t webrtc::ModuleRtpRtcpImpl2::SendNACK(webrtc::ModuleRtpRtcpImpl2 *this, const unsigned __int16 *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = (*(**(this + 4) + 16))(*(this + 4));
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

  v9 = v8 - -v6 / 0x3E8uLL;
  if (v6 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  pthread_mutex_lock(this + 21);
  v11 = *(this + 176);
  pthread_mutex_unlock(this + 21);
  if (!v11)
  {
    pthread_mutex_lock(this + 14);
    v13 = *(this + 140);
    v14 = *(this + 141);
    if (v14 == v13)
    {
      v13 = *(this + 141);
      v20 = v13;
    }

    else
    {
      v15 = (v14 - v13) >> 5;
      do
      {
        v16 = v15 >> 1;
        v17 = &v13[32 * (v15 >> 1)];
        v19 = *v17;
        v18 = (v17 + 8);
        v15 += ~(v15 >> 1);
        if (v19 < *(this + 240))
        {
          v13 = v18;
        }

        else
        {
          v15 = v16;
        }
      }

      while (v15);
      v20 = v13;
      if (v14 != v13)
      {
        if (*(this + 240) >= *v13)
        {
          v20 = v13 + 32;
        }

        else
        {
          v20 = v13;
        }
      }
    }

    if (v13 == v20)
    {
      v13 = *(this + 141);
    }

    if (v14 == v13)
    {
      pthread_mutex_unlock(this + 14);
    }

    else
    {
      v21 = *(v13 + 2) / *(v13 + 3);
      pthread_mutex_unlock(this + 14);
      v22 = v21 / 0x3E8uLL;
      if (v21 % 0x3E8uLL > 0x1F3)
      {
        ++v22;
      }

      if (-v21 % 0x3E8uLL <= 0x1F4)
      {
        v23 = 0;
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 - -v21 / 0x3E8uLL;
      if (v21 < 0)
      {
        v22 = v24;
      }

      if (v22)
      {
        if ((v10 - *(this + 164)) > v22 + (v22 >> 1) + 5)
        {
          goto LABEL_11;
        }

        goto LABEL_38;
      }
    }

    if ((v10 - *(this + 164)) > 100)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

  if ((v10 - *(this + 164)) > v11 + (v11 >> 1) + 5)
  {
LABEL_11:
    v12 = 0;
    *(this + 164) = v10;
    goto LABEL_48;
  }

LABEL_38:
  v25 = *(this + 660);
  if (v25 == a2[v3 - 1])
  {
    return 0;
  }

  if (v3)
  {
    v27 = 0;
    while (v25 != a2[v27])
    {
      if (v3 == ++v27)
      {
        goto LABEL_45;
      }
    }

    v12 = v27 + 1;
  }

  else
  {
LABEL_45:
    v12 = 0;
  }

  LOWORD(v3) = v3 - v12;
LABEL_48:
  if (v3 >= 0xFDu)
  {
    v3 = 253;
  }

  else
  {
    v3 = v3;
  }

  *(this + 660) = a2[v3 - 1 + v12];
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(this, v29);
  result = webrtc::RTCPSender::SendRTCP(this + 72, v29, 0x40u, v3, &a2[v12]);
  if (__p)
  {
    v31 = __p;
    v28 = result;
    operator delete(__p);
    return v28;
  }

  return result;
}

void webrtc::ModuleRtpRtcpImpl2::SendNack(pthread_mutex_t *a1, uint64_t *a2)
{
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(a1, v4);
  webrtc::RTCPSender::SendRTCP(a1[1].__opaque, v4, 0x40u, (a2[1] - *a2) >> 1, *a2);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void webrtc::ModuleRtpRtcpImpl2::SendCombinedRtcpPacket(uint64_t a1, uint64_t a2)
{
  *__p = *a2;
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  webrtc::RTCPSender::SendCombinedRtcpPacket(a1 + 72, __p);
  v2 = __p[0];
  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
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
      v4 = __p[0];
    }

    __p[1] = v2;
    operator delete(v4);
  }
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SendLossNotification(pthread_mutex_t *this, int a2, int a3, char a4, char a5)
{
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(this, v12);
  result = webrtc::RTCPSender::SendLossNotification(this[1].__opaque, v12, a2, a3, a4, a5);
  if (__p)
  {
    v14 = __p;
    v11 = result;
    operator delete(__p);
    return v11;
  }

  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetRemoteSSRC(webrtc::ModuleRtpRtcpImpl2 *this, int a2)
{
  pthread_mutex_lock((this + 184));
  *(this + 74) = a2;
  pthread_mutex_unlock((this + 184));
  pthread_mutex_lock(this + 14);
  *(this + 122) = 0;
  *(this + 240) = a2;

  return pthread_mutex_unlock(this + 14);
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SetLocalSsrc(uint64_t this, int a2)
{
  v3 = *(this + 824);
  if (v3 <= 1)
  {
    __break(1u);
  }

  else
  {
    v5 = this;
    v6 = (this + 832);
    if (v3)
    {
      v6 = *v6;
    }

    *v6 = a2;
    pthread_mutex_lock((this + 184));
    *(v5 + 116) = a2;

    return pthread_mutex_unlock((v5 + 184));
  }

  return this;
}

webrtc::RateStatistics *webrtc::ModuleRtpRtcpImpl2::GetSendRates@<X0>(webrtc::ModuleRtpRtcpImpl2 *this@<X0>, webrtc::RateStatistics **a2@<X8>)
{
  v3 = *(this + 8);
  v4.var0 = (*(**(this + 4) + 16))(*(this + 4));

  return webrtc::RtpSenderEgress::GetSendRates((v3 + 448), v4, a2);
}

void webrtc::ModuleRtpRtcpImpl2::OnRequestSendReport(pthread_mutex_t *this)
{
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(this, v2);
  webrtc::RTCPSender::SendRTCP(this[1].__opaque, v2, 2u, 0, 0);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void non-virtual thunk towebrtc::ModuleRtpRtcpImpl2::OnRequestSendReport(webrtc::ModuleRtpRtcpImpl2 *this)
{
  webrtc::ModuleRtpRtcpImpl2::GetFeedbackState((this - 8), v2);
  webrtc::RTCPSender::SendRTCP(this + 64, v2, 2u, 0, 0);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void webrtc::ModuleRtpRtcpImpl2::OnReceivedNack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    pthread_mutex_lock((v2 + 16));
    v5 = *(v2 + 88);
    pthread_mutex_unlock((v2 + 16));
    if (v5)
    {
      if (*a2 != *(a2 + 8))
      {
        pthread_mutex_lock((a1 + 1344));
        v6 = *(a1 + 1408);
        pthread_mutex_unlock((a1 + 1344));
        if (!v6)
        {
          pthread_mutex_lock((a1 + 896));
          v8 = *(a1 + 1120);
          v9 = *(a1 + 1128);
          if (v9 == v8)
          {
            v8 = *(a1 + 1128);
            v15 = v8;
          }

          else
          {
            v10 = (v9 - v8) >> 5;
            do
            {
              v11 = v10 >> 1;
              v12 = &v8[32 * (v10 >> 1)];
              v14 = *v12;
              v13 = (v12 + 8);
              v10 += ~(v10 >> 1);
              if (v14 < *(a1 + 960))
              {
                v8 = v13;
              }

              else
              {
                v10 = v11;
              }
            }

            while (v10);
            v15 = v8;
            if (v9 != v8)
            {
              if (*(a1 + 960) >= *v8)
              {
                v15 = v8 + 32;
              }

              else
              {
                v15 = v8;
              }
            }
          }

          if (v8 == v15)
          {
            v8 = *(a1 + 1128);
          }

          if (v9 == v8)
          {
            pthread_mutex_unlock((a1 + 896));
            v6 = 0;
          }

          else
          {
            v16 = *(v8 + 2) / *(v8 + 3);
            pthread_mutex_unlock((a1 + 896));
            if ((v16 & 0x8000000000000000) != 0)
            {
              if (-v16 % 0x3E8uLL <= 0x1F4)
              {
                v17 = 0;
              }

              else
              {
                v17 = -1;
              }

              v6 = v17 - -v16 / 0x3E8uLL;
            }

            else if (v16 % 0x3E8 <= 0x1F3)
            {
              v6 = v16 / 0x3E8;
            }

            else
            {
              v6 = v16 / 0x3E8 + 1;
            }
          }
        }

        v7 = (*(a1 + 64) + 1016);

        webrtc::RTPSender::OnReceivedNack(v7, a2, v6);
      }
    }
  }
}

uint64_t webrtc::ModuleRtpRtcpImpl2::OnReceivedRtcpReportBlocks(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 64))
  {
    v5 = result;
    pthread_mutex_lock((result + 184));
    v6 = *(v5 + 116);
    pthread_mutex_unlock((v5 + 184));
    v7 = *(v5 + 64);
    pthread_mutex_lock((v7 + 1072));
    v8 = *(v7 + 1264);
    result = pthread_mutex_unlock((v7 + 1072));
    if (v8)
    {
      if (!a3)
      {
        return result;
      }

      v9 = *(*(v5 + 64) + 1040);
      if ((v9 & 0x100000000) != 0)
      {
        v10 = a3 << 6;
        v11 = (a2 + 4);
        while (1)
        {
          v13 = *v11;
          v11 += 16;
          v12 = v13;
          if (v6 == v13)
          {
            break;
          }

          if (v12 != v9)
          {
            goto LABEL_8;
          }

          v14 = *(v5 + 64);
          v15 = (v14 + 1072);
          pthread_mutex_lock((v14 + 1072));
          v17 = *(v14 + 1250);
          *(v14 + 1250) = 1;
          if ((v17 & 1) == 0)
          {
            goto LABEL_6;
          }

LABEL_7:
          result = pthread_mutex_unlock(v15);
LABEL_8:
          v10 -= 64;
          if (!v10)
          {
            return result;
          }
        }

        v14 = *(v5 + 64);
        v15 = (v14 + 1072);
        pthread_mutex_lock((v14 + 1072));
        v16 = *(v14 + 1249);
        *(v14 + 1249) = 1;
        if (v16)
        {
          goto LABEL_7;
        }

LABEL_6:
        webrtc::RTPSender::UpdateHeaderSizes((v14 + 1016));
        goto LABEL_7;
      }
    }

    else if (!a3)
    {
      return result;
    }

    v18 = a2 + (a3 << 6);
    do
    {
      if (v6 == *(a2 + 4))
      {
        v19 = *(v5 + 64);
        pthread_mutex_lock((v19 + 1072));
        v20 = *(v19 + 1249);
        *(v19 + 1249) = 1;
        if ((v20 & 1) == 0)
        {
          webrtc::RTPSender::UpdateHeaderSizes((v19 + 1016));
        }

        result = pthread_mutex_unlock((v19 + 1072));
      }

      a2 += 64;
    }

    while (a2 != v18);
  }

  return result;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::SSRC(webrtc::ModuleRtpRtcpImpl2 *this)
{
  pthread_mutex_lock((this + 184));
  v2 = *(this + 29);
  pthread_mutex_unlock((this + 184));
  return v2;
}

uint64_t webrtc::ModuleRtpRtcpImpl2::RtpSender(webrtc::ModuleRtpRtcpImpl2 *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return v1 + 1016;
  }

  else
  {
    return 0;
  }
}

{
  v1 = *(this + 8);
  if (v1)
  {
    return v1 + 1016;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<webrtc::ModuleRtpRtcpImpl2::ModuleRtpRtcpImpl2(webrtc::Environment const&,webrtc::RtpRtcpInterface::Configuration const&)::$_0,std::allocator<webrtc::ModuleRtpRtcpImpl2::ModuleRtpRtcpImpl2(webrtc::Environment const&,webrtc::RtpRtcpInterface::Configuration const&)::$_0>,void ()(webrtc::TimeDelta)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829C490;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::ModuleRtpRtcpImpl2::ModuleRtpRtcpImpl2(webrtc::Environment const&,webrtc::RtpRtcpInterface::Configuration const&)::$_0,std::allocator<webrtc::ModuleRtpRtcpImpl2::ModuleRtpRtcpImpl2(webrtc::Environment const&,webrtc::RtpRtcpInterface::Configuration const&)::$_0>,void ()(webrtc::TimeDelta)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    (*(**(v2 + 32) + 16))(*(v2 + 32));
    v3 = *(v2 + 1416);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    }

    operator new();
  }

  v4 = *(v2 + 1416);
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 1u, memory_order_relaxed);
  }

  operator new();
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::ModuleRtpRtcpImpl2::ModuleRtpRtcpImpl2(webrtc::Environment const&,webrtc::RtpRtcpInterface::Configuration const&)::$_1 &>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(*a1 + 32) + 16))(*(*a1 + 32));
  v3 = v2 - 1000000;
  if (v2 == 0x8000000000000000)
  {
    v3 = 0x8000000000000000;
  }

  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = v3;
  }

  pthread_mutex_lock((v1 + 184));
  v5 = *(v1 + 248);
  pthread_mutex_unlock((v1 + 184));
  v6.var0 = v4;
  v7 = webrtc::RTCPReceiver::OnPeriodicRttUpdate((v1 + 768), v6, v5);
  if (v8)
  {
    v9 = *(v1 + 1328);
    v10 = v7 >> 3;
    if (v9)
    {
      v11 = v7 / 0x3E8uLL;
      if (v7 % 0x3E8uLL > 0x1F3)
      {
        ++v11;
      }

      if (-v7 % 0x3E8uLL <= 0x1F4)
      {
        v12 = 0;
      }

      else
      {
        v12 = -1;
      }

      v13 = v12 - -v7 / 0x3E8uLL;
      if (v7 < 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = v7;
      (**v9)(*(v1 + 1328), v14);
      v7 = v15;
    }

    v16 = ((v10 * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
    if (v7 - 1000 * v16 > 0x1F3)
    {
      ++v16;
    }

    if (-v7 % 0x3E8uLL <= 0x1F4)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 - -v7 / 0x3E8uLL;
    if (v7 < 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    pthread_mutex_lock((v1 + 1344));
    *(v1 + 1408) = v19;
    pthread_mutex_unlock((v1 + 1344));
    v20 = *(v1 + 64);
    if (v20)
    {
      pthread_mutex_lock((v20 + 16));
      *(v20 + 96) = 1000 * v19;
      if (*(v20 + 88))
      {
        webrtc::RtpPacketHistory::CullOldPackets(v20);
      }

      pthread_mutex_unlock((v20 + 16));
    }
  }

  return 1000000;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::ModuleRtpRtcpImpl2::OnSendingRtpFrame(unsigned int,long long,int,BOOL)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 36);
  v7 = *(*a1 + 8);
  pthread_mutex_lock((v2 + 184));
  if (v6 == 1)
  {
    *(v2 + 712) = v7;
  }

  *(v2 + 276) = v3;
  if (v5)
  {
    if ((*(v2 + 288) & 1) == 0)
    {
      *(v2 + 288) = 1;
    }

    *(v2 + 280) = v4;
  }

  else
  {
    v8 = (*(**(v2 + 88) + 16))(*(v2 + 88));
    if ((*(v2 + 288) & 1) == 0)
    {
      *(v2 + 288) = 1;
    }

    *(v2 + 280) = v8;
  }

  pthread_mutex_unlock((v2 + 184));
  v9 = *(v1 + 40);
  v10 = (*(**(v2 + 88) + 16))(*(v2 + 88));
  pthread_mutex_lock((v2 + 184));
  if (*(v2 + 128))
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = v10 + 100000;
    if (v10 == 0x8000000000000000)
    {
      v12 = 0x8000000000000000;
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v12;
    }

    if (*(v2 + 112))
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    if (v9)
    {
      v10 = v13;
    }

    if (*(v2 + 264))
    {
      v14 = *(v2 + 256);
      pthread_mutex_unlock((v2 + 184));
      if (v10 >= v14)
      {
        webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v2, v15);
        webrtc::RTCPSender::SendRTCP(v2 + 72, v15, 1u, 0, 0);
        if (__p)
        {
          v17 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    pthread_mutex_unlock((v2 + 184));
  }
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ModuleRtpRtcpImpl2::ScheduleRtcpSendEvaluation(webrtc::TimeDelta)::$_0 &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(**(*a1 + 88) + 16))(*(*a1 + 88));
  pthread_mutex_lock((v1 + 184));
  if (*(v1 + 128))
  {
    if (*(v1 + 264))
    {
      v3 = *(v1 + 256);
      pthread_mutex_unlock((v1 + 184));
      if (v2 >= v3)
      {
        webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v1, v4);
        webrtc::RTCPSender::SendRTCP(v1 + 72, v4, 1u, 0, 0);
        if (__p)
        {
          v6 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    pthread_mutex_unlock((v1 + 184));
  }
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::ModuleRtpRtcpImpl2::ScheduleMaybeSendRtcpAtOrAfterTimestamp(webrtc::Timestamp,webrtc::TimeDelta)::$_0 &&>(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 > (*(**(*a1 + 32) + 16))(*(*a1 + 32)))
  {
    v3 = *(v1 + 1416);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
    }

    operator new();
  }

  v4 = (*(**(v1 + 88) + 16))(*(v1 + 88));
  pthread_mutex_lock((v1 + 184));
  if (*(v1 + 128))
  {
    if (*(v1 + 264))
    {
      v5 = *(v1 + 256);
      pthread_mutex_unlock((v1 + 184));
      if (v4 >= v5)
      {
        webrtc::ModuleRtpRtcpImpl2::GetFeedbackState(v1, v6);
        webrtc::RTCPSender::SendRTCP(v1 + 72, v6, 1u, 0, 0);
        if (__p)
        {
          v8 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    pthread_mutex_unlock((v1 + 184));
  }
}

void webrtc::RtpSenderBase::RtpSenderBase(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *a1 = &unk_28829C4D8;
  *(a1 + 8) = &unk_28829C668;
  v9 = *a2;
  *(a1 + 16) = &unk_28829C690;
  *(a1 + 24) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  v10 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 1);
  *(a1 + 48) = v10;
  v11 = &unk_280905000;
  {
    v11 = &unk_280905000;
    if (v13)
    {
      operator new();
    }
  }

  *(a1 + 64) = pthread_getspecific(*(v11[403] + 88));
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 112) = *(a4 + 2);
    *(a1 + 96) = v12;
  }

  *(a1 + 268) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 256;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 304) = 0;
  *(a1 + 308) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 353) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = a5;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<>((a1 + 240));
}

uint64_t webrtc::RtpSenderBase::SetFrameEncryptor(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 360);
  *(a1 + 360) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 336) && *(a1 + 80) && (*(a1 + 84) & 1) == 0)
  {
    v5 = *(a1 + 72);
    v7 = a1;
    return (*(*v5 + 96))(v5, &v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetFrameEncryptor(webrtc::scoped_refptr<webrtc::FrameEncryptorInterface>)::$_0>, &v6);
  }

  return result;
}

uint64_t webrtc::RtpSenderBase::SetEncoderSelector(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 456);
  *(a1 + 456) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 336) && *(a1 + 80) && (*(a1 + 84) & 1) == 0)
  {
    v5 = *(a1 + 72);
    v7 = a1;
    return (*(*v5 + 96))(v5, &v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetEncoderSelectorOnChannel(void)::$_0>, &v6);
  }

  return result;
}

std::string *webrtc::RtpSenderBase::GetParametersInternal@<X0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  if (this[3].__r_.__value_.__s.__data_[12] == 1)
  {
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
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
  }

  else if (this[14].__r_.__value_.__r.__words[0] && LODWORD(this[3].__r_.__value_.__r.__words[1]))
  {
    v7[2] = v2;
    v7[3] = v3;
    data = this[3].__r_.__value_.__l.__data_;
    v6 = this;
    v7[0] = a2;
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
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
    v7[1] = &v6;
    return (*(*data + 96))(data, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpParameters webrtc::Thread::BlockingCall<webrtc::RtpSenderBase::GetParametersInternal(void)::$_0,webrtc::RtpParameters,void>(webrtc::RtpSenderBase::GetParametersInternal(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v5);
  }

  else
  {

    return webrtc::RtpParameters::RtpParameters(a2, &this[6]);
  }

  return this;
}

std::string *webrtc::RtpSenderBase::GetParametersInternalWithAllLayers@<X0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  if (this[3].__r_.__value_.__s.__data_[12] == 1)
  {
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
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
  }

  else if (this[14].__r_.__value_.__r.__words[0] && LODWORD(this[3].__r_.__value_.__r.__words[1]))
  {
    v7[2] = v2;
    v7[3] = v3;
    data = this[3].__r_.__value_.__l.__data_;
    v6 = this;
    v7[0] = a2;
    *(a2 + 124) = 0;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a2 + 152) = 256;
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
    v7[1] = &v6;
    return (*(*data + 96))(data, v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpParameters webrtc::Thread::BlockingCall<webrtc::RtpSenderBase::GetParametersInternalWithAllLayers(void)::$_0,webrtc::RtpParameters,void>(webrtc::RtpSenderBase::GetParametersInternalWithAllLayers(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v5);
  }

  else
  {

    return webrtc::RtpParameters::RtpParameters(a2, &this[6]);
  }

  return this;
}

void webrtc::RtpSenderBase::SetParametersInternal(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 47);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 32);
  }

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 96);
  v7 = 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 104) - v6) >> 4);
  if (*(a2 + 104) != v6 && v7 >= 2)
  {
    v9 = v7 - 1;
    v10 = (v6 + 288);
    while (*(v10 - 1) == 1.0 && *v10 == 1)
    {
      v10 += 34;
      if (!--v9)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    operator new();
  }

LABEL_18:
  if (!*(a1 + 336) || !*(a1 + 80))
  {
    v15 = *(a1 + 320) - *(a1 + 312);
    if (v15)
    {
      v16 = *(a1 + 312);
    }

    else
    {
      v16 = 0;
    }

    v31[0] = 0;
    v32 = 0;
    webrtc::CheckRtpParametersInvalidModificationAndValues(a1 + 144, a2, v16, (0x84BDA12F684BDA13 * (v15 >> 3)), v31, *(a1 + 32), &v20);
    if (v32 == 1)
    {
      webrtc::Codec::~Codec(v31);
      v19 = v20;
      if (!v20)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = v20;
      if (!v20)
      {
LABEL_27:
        webrtc::RtpParameters::operator=((a1 + 144), a2);
        v24 = v20;
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_28:
          std::string::__init_copy_ctor_external(&v25, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
          goto LABEL_32;
        }

LABEL_31:
        v25 = v21;
LABEL_32:
        v26[0] = v22[0].__r_.__value_.__l.__data_;
        *(v26 + 3) = *(v22[0].__r_.__value_.__r.__words + 3);
        webrtc::InvokeSetParametersCallback(a3, &v24, v27);
        if (v29 < 0)
        {
          operator delete(v28);
          if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_34:
            if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              return;
            }

            goto LABEL_38;
          }
        }

        else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        operator delete(v25.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

LABEL_38:
        operator delete(v21.__r_.__value_.__l.__data_);
        return;
      }
    }

    v24 = v19;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  (*(a3 + 16))(0, a3, &v20);
  *&v21.__r_.__value_.__r.__words[1] = *(a3 + 16);
  *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
  *(a3 + 24) = 0;
  webrtc::RtpParameters::RtpParameters(v22, a2);
  v23 = a1;
  if (!a4)
  {
    operator new();
  }

  (*(**(a1 + 72) + 96))(*(a1 + 72), &v20, _ZN6webrtc12FunctionViewIFvvEE11CallVoidPtrIZNS_13RtpSenderBase21SetParametersInternalERKNS_13RtpParametersEN4absl12AnyInvocableIFvNS_8RTCErrorEOEEEbE3__0EEvNS2_9VoidUnionE, v30);
  webrtc::RtpParameters::~RtpParameters(&v22[0].__r_.__value_.__l.__data_);
  (v21.__r_.__value_.__l.__size_)(1, &v20, &v20);
}

void webrtc::RTCError::~RTCError(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void webrtc::RtpSenderBase::SetParametersInternalWithAllLayers(std::string *this@<X0>, std::string *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  size = HIBYTE(a2[1].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a2[1].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_4;
  }

  data = a2[4].__r_.__value_.__l.__data_;
  v13 = 0xF0F0F0F0F0F0F0F1 * ((a2[4].__r_.__value_.__l.__size_ - data) >> 4);
  if (a2[4].__r_.__value_.__l.__size_ != data && v13 >= 2)
  {
    v15 = v13 - 1;
    v16 = (data + 288);
    while (*(v16 - 1) == 1.0 && *v16 == 1)
    {
      v16 += 34;
      if (!--v15)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v25 = "UNSUPPORTED_PARAMETER";
      v26 = 21;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *a3 = 2;
    operator new();
  }

LABEL_20:
  if (this[14].__r_.__value_.__r.__words[0] && LODWORD(this[3].__r_.__value_.__r.__words[1]))
  {
    v18 = this[3].__r_.__value_.__l.__data_;
    v24[0] = a2;
    v24[1] = this;
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
    v25 = a3;
    v26 = v24;
    (*(*v18 + 96))(v18, &v25, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RTCError webrtc::Thread::BlockingCall<webrtc::RtpSenderBase::SetParametersInternalWithAllLayers(webrtc::RtpParameters const&)::$_0,webrtc::RTCError,void>(webrtc::RtpSenderBase::SetParametersInternalWithAllLayers(webrtc::RtpParameters const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v23);
    return;
  }

  v19 = this[13].__r_.__value_.__l.__size_ - this[13].__r_.__value_.__r.__words[0];
  if (v19)
  {
    v20 = this[13].__r_.__value_.__l.__data_;
  }

  else
  {
    v20 = 0;
  }

  v27[0] = 0;
  v28 = 0;
  webrtc::CheckRtpParametersInvalidModificationAndValues(&this[6], a2, v20, (0x84BDA12F684BDA13 * (v19 >> 3)), v27, this[1].__r_.__value_.__l.__size_, a3);
  if (v28 == 1)
  {
    webrtc::Codec::~Codec(v27);
    if (!*a3)
    {
LABEL_30:
      webrtc::RtpParameters::operator=(this + 6, a2);
    }
  }

  else if (!*a3)
  {
    goto LABEL_30;
  }
}

uint64_t webrtc::RtpSenderBase::CheckSetParameters(webrtc::RtpSenderBase *this, const webrtc::RtpParameters *a2, const void **a3)
{
  if (*(a2 + 85) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *this = 6;
    operator new();
  }

  if (*(a2 + 84) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *this = 6;
    operator new();
  }

  if ((*(a2 + 392) & 1) == 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *this = 6;
    operator new();
  }

  v18 = *(a2 + 391);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 47);
  }

  v20 = *(a3 + 23);
  v21 = v20;
  if (v20 < 0)
  {
    v20 = a3[1];
  }

  if (v18 != v20 || (v19 >= 0 ? (v22 = a2 + 368) : (v22 = *(a2 + 46)), v21 >= 0 ? (v23 = a3) : (v23 = *a3), result = memcmp(v22, v23, v18), result))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v25, v26, v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *this = 7;
    operator new();
  }

  *this = 0;
  *(this + 38) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 29) = 0;
  return result;
}

void webrtc::RtpSenderBase::CheckCodecParameters(webrtc::RtpSenderBase *this@<X0>, const webrtc::RtpParameters *a2@<X1>, _DWORD *a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  (*(**(this + 42) + 40))(&v20);
  v18[0] = 0;
  v19 = 0;
  v7 = v22 == 1 && v21 == 1;
  if (!v7 || (v8 = *(this + 39), v9 = *(this + 40), v8 == v9))
  {
    v11 = 0;
  }

  else
  {
    while (1)
    {
      if ((v22 & 1) == 0)
      {
        __break(1u);
        return;
      }

      webrtc::MatchesWithCodecRules(&v20, v8, v6);
      if (v10)
      {
        break;
      }

      v8 = (v8 + 216);
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }

    v11 = v19;
    if (v8 != *(this + 40))
    {
      webrtc::Codec::Codec(v18, v8);
      v11 = 1;
      v19 = 1;
    }
  }

  v12 = *(this + 39);
  v13 = *(this + 40) - v12;
  v14 = (0x84BDA12F684BDA13 * (v13 >> 3));
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16[0] = 0;
  v17 = 0;
  if (v11)
  {
    webrtc::Codec::Codec(v16, v18);
    v17 = 1;
  }

  webrtc::CheckScalabilityModeValues(a2, v15, v14, v16, a3);
  if (v17 == 1)
  {
    webrtc::Codec::~Codec(v16);
    if (v19 != 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    webrtc::Codec::~Codec(v18);
    if (v22 == 1)
    {
      goto LABEL_22;
    }

    return;
  }

  if (v19 == 1)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v22 == 1)
  {
LABEL_22:
    webrtc::Codec::~Codec(&v20);
  }
}

uint64_t webrtc::RtpSenderBase::SetParameters@<X0>(webrtc::RtpSenderBase *this@<X0>, const void **a2@<X1>, webrtc::RtpSenderBase *a3@<X8>)
{
  result = webrtc::RtpSenderBase::CheckSetParameters(a3, this, a2);
  if (!*a3)
  {
    operator new();
  }

  return result;
}

void webrtc::RtpSenderBase::SetParametersAsync(webrtc::RtpParameters *a1, const void **a2, uint64_t a3)
{
  webrtc::RtpSenderBase::CheckSetParameters(&v12, a1, a2);
  if (!v12)
  {
    (*(a3 + 16))(0, a3, v5);
    v5[1] = *(a3 + 16);
    *(a3 + 16) = absl::internal_any_invocable::EmptyManager;
    *(a3 + 24) = 0;
    operator new();
  }

  v6 = v12;
  v4 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v13;
  }

  v8[0] = v14[0];
  *(v8 + 3) = *(v14 + 3);
  webrtc::InvokeSetParametersCallback(a3, &v6, v9);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_8:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v7.__r_.__value_.__l.__data_);
  if (v4 < 0)
  {
LABEL_9:
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t webrtc::RtpSenderBase::SetObserver(uint64_t result, uint64_t (***a2)(void, uint64_t))
{
  *(result + 432) = a2;
  if (a2 && (*(result + 440) & 1) != 0)
  {
    v3 = (*(*result + 64))(result);
    v4 = **a2;

    return v4(a2, v3);
  }

  return result;
}

void *webrtc::RtpSenderBase::NotifyFirstPacketSent(void *this)
{
  v1 = this;
  v2 = this[54];
  if (v2)
  {
    v3 = (*(*this + 64))(this);
    this = (**v2)(v2, v3);
  }

  *(v1 + 440) = 1;
  return this;
}

void webrtc::RtpSenderBase::set_stream_ids(void *a1, __int128 **a2)
{
  v5 = a1[15];
  v6 = a1[16];
  v4 = (a1 + 15);
  while (v6 != v5)
  {
    v7 = *(v6 - 1);
    v6 -= 3;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  a1[16] = v5;
  v8 = *a2;
  v9 = a2[1];
  while (v8 != v9)
  {
    v10 = *v4;
    if (*v4 == v5)
    {
LABEL_26:
      if (v5 >= a1[17])
      {
        std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v4);
      }

      if (!v5)
      {
        __break(1u);
        return;
      }

      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v5, *v8, *(v8 + 1));
      }

      else
      {
        v17 = *v8;
        v5->__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&v5->__r_.__value_.__l.__data_ = v17;
      }

      a1[16] = ++v5;
    }

    else
    {
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = *(v8 + 1);
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = *v8;
      }

      while (1)
      {
        size = HIBYTE(v10->__r_.__value_.__r.__words[2]);
        v15 = size;
        if ((size & 0x80u) != 0)
        {
          size = v10->__r_.__value_.__l.__size_;
        }

        if (size == v12)
        {
          v16 = v15 >= 0 ? v10 : v10->__r_.__value_.__r.__words[0];
          if (!memcmp(v16, v13, v12))
          {
            break;
          }
        }

        if (++v10 == v5)
        {
          goto LABEL_26;
        }
      }
    }

    v8 = (v8 + 24);
  }
}

uint64_t webrtc::RtpSenderBase::SetStreams(void *a1)
{
  (*(*a1 + 208))(a1);
  result = a1[53];
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

uint64_t webrtc::RtpSenderBase::SetTrack(uint64_t a1, void (***a2)(void, void))
{
  if (*(a1 + 84) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    return 0;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  (*a2)[4](v33, a2);
  (*(*a1 + 328))(__p, a1);
  v11 = v34;
  if ((v34 & 0x80u) == 0)
  {
    v12 = v34;
  }

  else
  {
    v12 = v33[1];
  }

  v13 = v32;
  v14 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v13 = __p[1];
  }

  if (v12 != v13)
  {
    v17 = 1;
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v34 & 0x80u) == 0)
  {
    v15 = v33;
  }

  else
  {
    v15 = v33[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v17 = memcmp(v15, v16, v12) != 0;
  if (v14 < 0)
  {
LABEL_20:
    operator delete(__p[0]);
    v11 = v34;
  }

LABEL_21:
  if ((v11 & 0x80) != 0)
  {
    operator delete(v33[0]);
    if (v17)
    {
LABEL_23:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*a2)[4](v33, a2);
        (*(*a1 + 328))(__p, a1);
        webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (v34 < 0)
        {
          operator delete(v33[0]);
        }
      }

      return 0;
    }
  }

  else if (v17)
  {
    goto LABEL_23;
  }

LABEL_30:
  if (!*(a1 + 344))
  {
    v27 = 0;
    v26 = 0;
    v28 = 1;
    if (!a2)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (*(*a1 + 360))(a1);
  (*(*(*(a1 + 344) + 8) + 8))();
  (*(*a1 + 376))(a1);
  v26 = *(a1 + 344);
  if (!v26)
  {
    v27 = 0;
    v28 = 1;
    if (!a2)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v27 = *(a1 + 80) != 0;
  (**v26)(*(a1 + 344));
  v28 = 0;
  if (a2)
  {
LABEL_33:
    (**a2)(a2);
  }

LABEL_34:
  v29 = *(a1 + 344);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  *(a1 + 344) = a2;
  if (a2 && ((*a2[1])(a2 + 1, a1 + 16), (*(*a1 + 352))(a1), *(a1 + 344)) && *(a1 + 80))
  {
    (*(*a1 + 336))(a1);
    (*(*a1 + 368))(a1);
  }

  else if (v27)
  {
    (*(*a1 + 344))(a1);
  }

  v30 = *(a1 + 344);
  if (v30)
  {
  }

  *(a1 + 88) = v30;
  if ((v28 & 1) == 0)
  {
    (*(*v26 + 8))(v26);
  }

  return 1;
}

uint64_t webrtc::RtpSenderBase::SetSsrc(uint64_t this, int a2)
{
  v12 = a2;
  if (*(this + 84))
  {
    return this;
  }

  v2 = this;
  v3 = *(this + 80);
  if (v3 == a2)
  {
    return this;
  }

  if (!*(this + 344))
  {
    *(this + 80) = a2;
    goto LABEL_11;
  }

  if (v3)
  {
    (*(*this + 344))(this);
    (*(*v2 + 376))(v2);
    v5 = *(v2 + 344);
    *(v2 + 80) = a2;
    if (!a2 || !v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(this + 80) = a2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  (*(*v2 + 336))(v2);
  (*(*v2 + 368))(v2);
LABEL_11:
  if (*(v2 + 240) != *(v2 + 248) || *(v2 + 308) == 1)
  {
    v6 = *(v2 + 72);
    v11[0] = v2;
    v11[1] = &v12;
    (*(*v6 + 96))(v6, v11, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetSsrc::$_0>, &v13);
  }

  v7 = *(v2 + 360);
  if (v7)
  {
    v10 = *(v2 + 360);
    (**v7)(v7);
    (*(*v2 + 144))(v2, &v10);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  this = *(v2 + 448);
  if (this)
  {
    v9 = *(v2 + 448);
    (**this)(this);
    (*(*v2 + 184))(v2, &v9);
    this = v9;
    if (v9)
    {
      this = (*(*v9 + 8))(v9);
    }
  }

  if (*(v2 + 456) && *(v2 + 336) && *(v2 + 80) && (*(v2 + 84) & 1) == 0)
  {
    v8 = *(v2 + 72);
    v11[0] = v2;
    return (*(*v8 + 96))(v8, v11, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetEncoderSelectorOnChannel(void)::$_0>, &v13);
  }

  return this;
}

uint64_t webrtc::RtpSenderBase::Stop(uint64_t this)
{
  if ((*(this + 84) & 1) == 0)
  {
    v1 = this;
    if (*(this + 344))
    {
      (*(*this + 360))(this);
      this = (*(*(*(v1 + 344) + 8) + 8))();
      if (*(v1 + 344))
      {
        if (*(v1 + 80))
        {
          (*(*v1 + 344))(v1);
          this = (*(*v1 + 376))(v1);
        }
      }
    }

    *(v1 + 336) = 0;
    *(v1 + 424) = 0;
    *(v1 + 84) = 1;
  }

  return this;
}

void webrtc::RtpSenderBase::DisableEncodingLayers(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 84) == 1)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v75[0] = "INVALID_STATE";
      v75[1] = 13;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *a3 = 6;
    operator new();
  }

  if (*a2 == a2[1])
  {
    *a3 = 0;
    *(a3 + 38) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *(a3 + 29) = 0;
    return;
  }

  (*(*a1 + 256))(v75);
  v13 = *a2;
  v14 = a2[1];
  if (*a2 == v14)
  {
    goto LABEL_32;
  }

  v15 = v77;
  if (v76 != v77)
  {
    v16 = v76 + 128;
    v17 = *a2;
    do
    {
      if (*(v17 + 23) >= 0)
      {
        v18 = *(v17 + 23);
      }

      else
      {
        v18 = *(v17 + 8);
      }

      v19 = v16;
      if ((*(v17 + 23) & 0x80) != 0)
      {
        v20 = v16;
        while (1)
        {
          v26 = *(v20 + 23);
          v27 = v26;
          if ((v26 & 0x80u) != 0)
          {
            v26 = *(v20 + 8);
          }

          if (v26 == v18)
          {
            v28 = v27 >= 0 ? v20 : *v20;
            if (!memcmp(v28, *v17, v18))
            {
              break;
            }
          }

          v25 = v20 + 144;
          v20 += 272;
          if (v25 == v15)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        while (1)
        {
          v22 = *(v19 + 23);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v19 + 8);
          }

          if (v22 == v18)
          {
            v24 = v23 >= 0 ? v19 : *v19;
            if (!memcmp(v24, v17, v18))
            {
              break;
            }
          }

          v21 = v19 + 144;
          v19 += 272;
          if (v21 == v15)
          {
            goto LABEL_89;
          }
        }
      }

      v17 += 24;
    }

    while (v17 != v14);
LABEL_32:
    if (*(a1 + 336) && *(a1 + 80))
    {
      v29 = v76;
      v30 = v77;
      if (v76 != v77 && v13 != v14)
      {
        do
        {
LABEL_38:
          if (*(v29 + 151) >= 0)
          {
            v31 = *(v29 + 151);
          }

          else
          {
            v31 = *(v29 + 136);
          }

          v32 = v13;
          if ((*(v29 + 151) & 0x80) != 0)
          {
            v33 = v13;
            while (1)
            {
              v37 = *(v33 + 23);
              v38 = v37;
              if ((v37 & 0x80u) != 0)
              {
                v37 = *(v33 + 8);
              }

              if (v31 == v37)
              {
                v39 = v38 >= 0 ? v33 : *v33;
                if (!memcmp(*(v29 + 128), v39, v31))
                {
                  break;
                }
              }

              v33 += 24;
              if (v33 == v14)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            while (1)
            {
              v34 = *(v32 + 23);
              v35 = v34;
              if ((v34 & 0x80u) != 0)
              {
                v34 = *(v32 + 8);
              }

              if (v31 == v34)
              {
                v36 = v35 >= 0 ? v32 : *v32;
                if (!memcmp((v29 + 128), v36, v31))
                {
                  break;
                }
              }

              v32 += 24;
              if (v32 == v14)
              {
LABEL_37:
                *(v29 + 124) &= 1u;
                v29 += 272;
                if (v29 == v30)
                {
                  goto LABEL_61;
                }

                goto LABEL_38;
              }
            }
          }

          *(v29 + 124) = 0;
          v29 += 272;
        }

        while (v29 != v30);
      }

LABEL_61:
      (*(*a1 + 264))(a1, v75);
      if (!*a3)
      {
        v40 = *a2;
        v41 = a2[1];
        if (*a2 != v41)
        {
          v42 = *(a1 + 408);
          do
          {
            v43 = *(a1 + 400);
            if (v43 == v42)
            {
LABEL_84:
              if (v42 >= *(a1 + 416))
              {
                std::vector<std::string>::__emplace_back_slow_path<std::string const&>((a1 + 400));
              }

              if (!v42)
              {
                goto LABEL_153;
              }

              if (*(v40 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(v42, *v40, *(v40 + 8));
              }

              else
              {
                v50 = *v40;
                v42->__r_.__value_.__r.__words[2] = *(v40 + 16);
                *&v42->__r_.__value_.__l.__data_ = v50;
              }

              *(a1 + 408) = ++v42;
            }

            else
            {
              v44 = *(v40 + 23);
              if (v44 >= 0)
              {
                v45 = *(v40 + 23);
              }

              else
              {
                v45 = *(v40 + 8);
              }

              if (v44 >= 0)
              {
                v46 = v40;
              }

              else
              {
                v46 = *v40;
              }

              while (1)
              {
                v47 = *(v43 + 23);
                v48 = v47;
                if ((v47 & 0x80u) != 0)
                {
                  v47 = *(v43 + 8);
                }

                if (v47 == v45)
                {
                  v49 = v48 >= 0 ? v43 : *v43;
                  if (!memcmp(v49, v46, v45))
                  {
                    break;
                  }
                }

                v43 += 24;
                if (v43 == v42)
                {
                  goto LABEL_84;
                }
              }
            }

            v40 += 24;
          }

          while (v40 != v41);
        }

        if (*(a1 + 392) == 1)
        {
          if (*(a1 + 391) < 0)
          {
            operator delete(*(a1 + 368));
          }

          *(a1 + 392) = 0;
        }
      }
    }

    else
    {
      if (*(a1 + 392) == 1)
      {
        if (*(a1 + 391) < 0)
        {
          operator delete(*(a1 + 368));
        }

        *(a1 + 392) = 0;
      }

      *a3 = 0;
      *(a3 + 38) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *(a3 + 29) = 0;
    }

    goto LABEL_148;
  }

LABEL_89:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    std::operator+<char>();
    v56 = v72.__r_.__value_.__r.__words[2];
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = 22;
    }

    else
    {
      v57 = (v72.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v72.__r_.__value_.__l.__size_;
    }

    if (v57 - size >= 0x21)
    {
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v72;
      }

      else
      {
        v59 = v72.__r_.__value_.__r.__words[0];
      }

      v60 = v59 + size;
      if (v59 + size <= " does not refer to a valid layer." && v60 + 33 > " does not refer to a valid layer.")
      {
        goto LABEL_153;
      }

      qmemcpy(v60, " does not refer to a valid layer.", 33);
      v61 = size + 33;
      if ((v56 & 0x8000000000000000) != 0)
      {
        v72.__r_.__value_.__l.__size_ = size + 33;
      }

      else
      {
        *(&v72.__r_.__value_.__s + 23) = v61 & 0x7F;
      }

      v59->__r_.__value_.__s.__data_[v61] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v72, v57, size - v57 + 33, size, size, 0, 0x21uLL, " does not refer to a valid layer.");
    }

    *__p = *&v72.__r_.__value_.__l.__data_;
    __len = v72.__r_.__value_.__r.__words[2];
    memset(&v72, 0, sizeof(v72));
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v57, v51, size, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    if (SHIBYTE(__len) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }
  }

  std::operator+<char>();
  v62 = v72.__r_.__value_.__r.__words[2];
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = 22;
  }

  else
  {
    v63 = (v72.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v72.__r_.__value_.__l.__size_;
  }

  if (v63 - v64 >= 0x21)
  {
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &v72;
    }

    else
    {
      v65 = v72.__r_.__value_.__r.__words[0];
    }

    v66 = v65 + v64;
    if (v65 + v64 <= " does not refer to a valid layer." && v66 + 33 > " does not refer to a valid layer.")
    {
      goto LABEL_153;
    }

    qmemcpy(v66, " does not refer to a valid layer.", 33);
    v67 = v64 + 33;
    if ((v62 & 0x8000000000000000) != 0)
    {
      v72.__r_.__value_.__l.__size_ = v64 + 33;
    }

    else
    {
      *(&v72.__r_.__value_.__s + 23) = v67 & 0x7F;
    }

    v65->__r_.__value_.__s.__data_[v67] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v72, v63, v64 - v63 + 33, v64, v64, 0, 0x21uLL, " does not refer to a valid layer.");
  }

  __len = v72.__r_.__value_.__r.__words[2];
  *__p = *&v72.__r_.__value_.__l.__data_;
  memset(&v72, 0, sizeof(v72));
  v68 = SHIBYTE(__len);
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    v69 = __p[0];
    v70 = __p[1];
    *a3 = 3;
    if (v70 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_154;
    }
  }

  else
  {
    *a3 = 3;
    v69 = __p;
    v70 = v68;
  }

  if (v70 > 0x16)
  {
    operator new();
  }

  *(a3 + 31) = v70;
  v71 = &v70[a3 + 8];
  if (a3 + 8 <= v69 && v71 > v69)
  {
LABEL_153:
    __break(1u);
LABEL_154:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v70)
  {
    memmove((a3 + 8), v69, v70);
  }

  *v71 = 0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 38) = 0;
  if ((v68 & 0x80000000) != 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_147:
      operator delete(v72.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_147;
  }

LABEL_148:
  webrtc::RtpParameters::~RtpParameters(v75);
}

void webrtc::anonymous namespace::RemoveEncodingLayers(uint64_t *a1, webrtc::RtpEncodingParameters **a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      v5 = (v5 + 272 * ((v4 - v5 - 272) / 0x110uLL) + 272);
    }

    else
    {
LABEL_5:
      v8 = *(v5 + 151);
      if (v8 >= 0)
      {
        v9 = *(v5 + 151);
      }

      else
      {
        v9 = *(v5 + 17);
      }

      if (v8 >= 0)
      {
        v10 = v5 + 128;
      }

      else
      {
        v10 = *(v5 + 16);
      }

      v11 = v6;
      while (1)
      {
        v12 = *(v11 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v11 + 8);
        }

        if (v12 == v9)
        {
          v14 = v13 >= 0 ? v11 : *v11;
          if (!memcmp(v14, v10, v9))
          {
            break;
          }
        }

        v11 += 24;
        if (v11 == v7)
        {
LABEL_4:
          v5 = (v5 + 272);
          if (v5 == v4)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      if (v11 == v7)
      {
        goto LABEL_4;
      }
    }
  }

  if (v5 != v4)
  {
    v15 = v5 + 272;
    if ((v5 + 272) != v4)
    {
      v16 = v5;
      do
      {
        v17 = v15;
        v18 = *a1;
        v19 = a1[1];
        if (*a1 == v19)
        {
          goto LABEL_24;
        }

        v20 = v5 + 400;
        v21 = *(v5 + 423);
        v22 = *(v5 + 50);
        v23 = v21 >= 0 ? *(v5 + 423) : *(v5 + 51);
        v24 = v21 >= 0 ? v20 : v22;
        while (1)
        {
          v25 = *(v18 + 23);
          v26 = v25;
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(v18 + 8);
          }

          if (v25 == v23)
          {
            v27 = v26 >= 0 ? v18 : *v18;
            if (!memcmp(v27, v24, v23))
            {
              break;
            }
          }

          v18 += 24;
          if (v18 == v19)
          {
            goto LABEL_24;
          }
        }

        if (v18 == v19)
        {
LABEL_24:
          webrtc::RtpEncodingParameters::operator=(v16, v17);
          v16 += 272;
        }

        v15 = v17 + 272;
        v5 = v17;
      }

      while ((v17 + 272) != v4);
      v4 = a2[1];
      v5 = v16;
    }

    if (v5 > v4)
    {
      __break(1u);
    }

    else if (v5 != v4)
    {
      while (v4 != v5)
      {
        v4 = (v4 - 272);
        webrtc::RtpEncodingParameters::~RtpEncodingParameters(v4);
      }

      a2[1] = v5;
    }
  }
}

uint64_t webrtc::RtpSenderBase::SetFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 448);
  *(a1 + 448) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 336) && *(a1 + 80) && (*(a1 + 84) & 1) == 0)
  {
    v5 = *(a1 + 72);
    v7 = a1;
    return (*(*v5 + 96))(v5, &v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetFrameTransformer(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>, &v6);
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::RtpSenderBase::SetFrameTransformer(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 440);
  *(a1 + 440) = v3;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 328) && *(a1 + 72) && (*(a1 + 76) & 1) == 0)
  {
    v5 = *(a1 + 64);
    v7 = a1 - 8;
    return (*(*v5 + 96))(v5, &v7, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::RtpSenderBase::SetFrameTransformer(webrtc::scoped_refptr<webrtc::FrameTransformerInterface>)::$_0>, &v6);
  }

  return result;
}

void webrtc::LocalAudioSinkAdapter::~LocalAudioSinkAdapter(webrtc::LocalAudioSinkAdapter *this)
{
  *this = &unk_28829C6B8;
  *(this + 1) = &unk_28829C6F8;
  pthread_mutex_lock((this + 24));
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  pthread_mutex_unlock((this + 24));
  pthread_mutex_destroy((this + 24));
}

{
  *this = &unk_28829C6B8;
  *(this + 1) = &unk_28829C6F8;
  pthread_mutex_lock((this + 24));
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  pthread_mutex_unlock((this + 24));
  pthread_mutex_destroy((this + 24));

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::LocalAudioSinkAdapter::~LocalAudioSinkAdapter(webrtc::LocalAudioSinkAdapter *this)
{
  *(this - 1) = &unk_28829C6B8;
  *this = &unk_28829C6F8;
  pthread_mutex_lock((this + 16));
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  pthread_mutex_unlock((this + 16));

  pthread_mutex_destroy((this + 16));
}

{
  *(this - 1) = &unk_28829C6B8;
  *this = &unk_28829C6F8;
  pthread_mutex_lock((this + 16));
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  pthread_mutex_unlock((this + 16));
  pthread_mutex_destroy((this + 16));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::LocalAudioSinkAdapter::OnData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  pthread_mutex_lock((a1 + 24));
  v16 = *(a1 + 16);
  if (v16)
  {
    (**v16)(v16, a2, a3, a4, a5, a6, a7, a8);
    *(a1 + 88) = (*(**(a1 + 16) + 16))(*(a1 + 16));
  }

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t webrtc::LocalAudioSinkAdapter::SetSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 24));
  *(a1 + 16) = a2;

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t non-virtual thunk towebrtc::LocalAudioSinkAdapter::SetSink(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 16));
  *(a1 + 8) = a2;

  return pthread_mutex_unlock((a1 + 16));
}

void webrtc::AudioRtpSender::AudioRtpSender(void *a1, uint64_t *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28829CB70;
  webrtc::RtpSenderBase::RtpSenderBase((a1 + 1), a2, a3, a4, a6);
}

void webrtc::AudioRtpSender::~AudioRtpSender(webrtc::AudioRtpSender *this)
{
  *this = &unk_28829C720;
  v2 = (this + 8);
  *(this + 1) = &unk_28829C7A8;
  *(this + 2) = &unk_28829C938;
  *(this + 3) = &unk_28829C960;
  v3 = *(this + 60);
  v4 = *(v3 + 72);
  if (v4)
  {
    *(v4 + 4) = 0;
  }

  *(v3 + 24) = 0;
  if ((*(this + 92) & 1) == 0)
  {
    v5 = *(this + 44);
    if (v5)
    {
      (**v5)(*(this + 44));
      (*(*v5 + 88))(v5, *(this + 63));
      (*(*v5 + 8))(v5);
      (*(*(*(this + 44) + 8) + 8))();
      if (*(this + 44))
      {
        if (*(this + 22))
        {
          (*(*v2 + 344))(v2);
          (*(*v2 + 376))(v2);
        }
      }
    }

    *(this + 43) = 0;
    *(this + 54) = 0;
    *(this + 92) = 1;
  }

  v6 = *(this + 63);
  *(this + 63) = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = *(this + 61);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 60);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  webrtc::RtpSenderBase::~RtpSenderBase(v2);
}

void webrtc::RtpSenderBase::~RtpSenderBase(webrtc::RtpSenderBase *this)
{
  *this = &unk_28829C4D8;
  *(this + 1) = &unk_28829C668;
  *(this + 2) = &unk_28829C690;
  v2 = *(this + 57);
  *(this + 57) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 56);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 50);
  if (v4)
  {
    v5 = *(this + 51);
    v6 = *(this + 50);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 50);
    }

    *(this + 51) = v4;
    operator delete(v6);
  }

  if (*(this + 392) == 1 && *(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  v8 = *(this + 45);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 44);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 43);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 39);
  if (v11)
  {
    v12 = *(this + 40);
    v13 = *(this + 39);
    if (v12 != v11)
    {
      v14 = v12 - 27;
      v15 = v12 - 27;
      v16 = v12 - 27;
      do
      {
        v17 = *v16;
        v16 -= 27;
        (*v17)(v15);
        v14 -= 27;
        v18 = v15 == v11;
        v15 = v16;
      }

      while (!v18);
      v13 = *(this + 39);
    }

    *(this + 40) = v11;
    operator delete(v13);
  }

  webrtc::RtpParameters::~RtpParameters(this + 18);
  v19 = *(this + 15);
  if (v19)
  {
    v20 = *(this + 16);
    v21 = *(this + 15);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = *(this + 15);
    }

    *(this + 16) = v19;
    operator delete(v21);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v23 = *(this + 3);
  if (v23)
  {
    if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v23 + 8))(v23);
    }
  }
}

uint64_t webrtc::AudioRtpSender::CanInsertDtmf(webrtc::AudioRtpSender *this)
{
  if (*(this + 43))
  {
    if (*(this + 22))
    {
      v1 = *(this + 10);
      v11 = this;
      v13 = 0;
      v12[0] = &v13;
      v12[1] = &v11;
      (*(*v1 + 96))(v1, v12, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::CanInsertDtmf(void)::$_0,BOOL,void>(webrtc::AudioRtpSender::CanInsertDtmf(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v10);
      return v13 & 1;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }
  }

  else if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
  {
    return 0;
  }

  webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
  return 0;
}

uint64_t webrtc::AudioRtpSender::InsertDtmf(webrtc::AudioRtpSender *this, int a2, int a3)
{
  v14 = a3;
  v15 = a2;
  if (!*(this + 43))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

LABEL_10:
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    return 0;
  }

  if (!*(this + 22))
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return 0;
    }

    goto LABEL_10;
  }

  v3 = *(this + 10);
  v13[0] = this;
  v13[1] = &v15;
  v13[2] = &v14;
  v17 = 0;
  v16[0] = &v17;
  v16[1] = v13;
  (*(*v3 + 96))(v3, v16, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::InsertDtmf(int,int)::$_0,BOOL,void>(webrtc::AudioRtpSender::InsertDtmf(int,int)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v12);
  if (v17)
  {
    return 1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t webrtc::AudioRtpSender::OnChanged(webrtc::AudioRtpSender *this)
{
  v2 = *(this + 496);
  result = (*(**(this + 44) + 48))(*(this + 44));
  if (v2 != result)
  {
    result = (*(**(this + 44) + 48))(*(this + 44));
    *(this + 496) = result;
    if (*(this + 44))
    {
      if (*(this + 22))
      {
        v4 = *(*this + 72);

        return v4(this);
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::AudioRtpSender::OnChanged(webrtc::AudioRtpSender *this)
{
  v2 = *(this + 472);
  result = (*(**(this + 41) + 48))(*(this + 41));
  if (v2 != result)
  {
    result = (*(**(this + 41) + 48))(*(this + 41));
    *(this + 472) = result;
    if (*(this + 41))
    {
      if (*(this + 16))
      {
        v4 = *(*(this - 3) + 72);

        return v4();
      }
    }
  }

  return result;
}

uint64_t webrtc::AudioRtpSender::DetachTrack(webrtc::AudioRtpSender *this)
{
  v2 = *(this + 44);
  if (v2)
  {
    (**v2)(*(this + 44));
  }

  (*(*v2 + 88))(v2, *(this + 63));
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t non-virtual thunk towebrtc::AudioRtpSender::DetachTrack(webrtc::AudioRtpSender *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (**v2)(*(this + 43));
  }

  (*(*v2 + 88))(v2, *(this + 62));
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t webrtc::AudioRtpSender::AttachTrack(webrtc::AudioRtpSender *this)
{
  *(this + 496) = (*(**(this + 44) + 48))(*(this + 44));
  v2 = *(this + 44);
  if (v2)
  {
    (**v2)(*(this + 44));
  }

  (*(*v2 + 80))(v2, *(this + 63));
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t non-virtual thunk towebrtc::AudioRtpSender::AttachTrack(webrtc::AudioRtpSender *this)
{
  *(this + 488) = (*(**(this + 43) + 48))(*(this + 43));
  v2 = *(this + 43);
  if (v2)
  {
    (**v2)(*(this + 43));
  }

  (*(*v2 + 80))(v2, *(this + 62));
  v3 = *(*v2 + 8);

  return v3(v2);
}

uint64_t webrtc::AudioRtpSender::AddTrackToStats(uint64_t this)
{
  v1 = *(this + 352);
  if (v1)
  {
    if (*(this + 88))
    {
      v2 = *(this + 472);
      if (v2)
      {
        v3 = this;
        (**v1)(*(this + 352));
        (*(*v2 + 16))(v2, v1, *(v3 + 88));
        v4 = *(*v1 + 8);

        return v4(v1);
      }
    }
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::AudioRtpSender::AddTrackToStats(uint64_t this)
{
  v1 = *(this + 344);
  if (v1)
  {
    if (*(this + 80))
    {
      v2 = *(this + 464);
      if (v2)
      {
        v3 = this;
        (**v1)(*(this + 344));
        (*(*v2 + 16))(v2, v1, *(v3 + 80));
        v4 = *(*v1 + 8);

        return v4(v1);
      }
    }
  }

  return this;
}

uint64_t webrtc::AudioRtpSender::RemoveTrackFromStats(uint64_t this)
{
  v1 = *(this + 352);
  if (v1)
  {
    if (*(this + 88))
    {
      v2 = *(this + 472);
      if (v2)
      {
        v3 = this;
        (**v1)(*(this + 352));
        (*(*v2 + 24))(v2, v1, *(v3 + 88));
        v4 = *(*v1 + 8);

        return v4(v1);
      }
    }
  }

  return this;
}

uint64_t non-virtual thunk towebrtc::AudioRtpSender::RemoveTrackFromStats(uint64_t this)
{
  v1 = *(this + 344);
  if (v1)
  {
    if (*(this + 80))
    {
      v2 = *(this + 464);
      if (v2)
      {
        v3 = this;
        (**v1)(*(this + 344));
        (*(*v2 + 24))(v2, v1, *(v3 + 80));
        v4 = *(*v1 + 8);

        return v4(v1);
      }
    }
  }

  return this;
}

uint64_t (***webrtc::AudioRtpSender::GetDtmfSender@<X0>(webrtc::AudioRtpSender *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 61);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t (***non-virtual thunk towebrtc::AudioRtpSender::GetDtmfSender@<X0>(webrtc::AudioRtpSender *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 60);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::AudioRtpSender::SetSend(webrtc::AudioRtpSender *this)
{
  if (*(this + 43))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LOBYTE(__p) = 0;
    v28 = 0;
    v29 = 0;
    v20[0] = 0;
    *(v20 + 5) = 0;
    v19 = (*(**(this + 44) + 48))(*(this + 44));
    v2 = *(this + 10);
    v18[0] = this;
    v18[1] = &v19;
    v18[2] = v20;
    v31 = 0;
    v30[0] = &v31;
    v30[1] = v18;
    (*(*v2 + 96))(v2, v30, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::SetSend(void)::$_0,BOOL,void>(webrtc::AudioRtpSender::SetSend(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v17);
    if ((v31 & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
  }
}

void webrtc::AudioRtpSender::ClearSend(webrtc::AudioRtpSender *this)
{
  if (*(this + 43))
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    LOBYTE(__p) = 0;
    v27 = 0;
    v28 = 0;
    v19[0] = 0;
    *(v19 + 5) = 0;
    v2 = *(this + 10);
    v18[0] = this;
    v18[1] = v19;
    v30 = 0;
    v29[0] = &v30;
    v29[1] = v18;
    (*(*v2 + 96))(v2, v29, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::AudioRtpSender::ClearSend(void)::$_0,BOOL,void>(webrtc::AudioRtpSender::ClearSend(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v17);
    if ((v30 & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    if (v27 == 1 && v26 < 0)
    {
      operator delete(__p);
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
  }
}

uint64_t webrtc::VideoRtpSender::OnChanged(webrtc::VideoRtpSender *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (**v2)(*(this + 43));
  }

  v3 = (*(*v2 + 96))(v2);
  result = (*(*v2 + 8))(v2);
  if (*(this + 116) != v3)
  {
    *(this + 116) = v3;
    if (*(this + 43))
    {
      if (*(this + 20))
      {
        v5 = *(*this + 336);

        return v5(this);
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk towebrtc::VideoRtpSender::OnChanged(webrtc::VideoRtpSender *this)
{
  v2 = *(this + 41);
  if (v2)
  {
    (**v2)(*(this + 41));
  }

  v3 = (*(*v2 + 96))(v2);
  result = (*(*v2 + 8))(v2);
  if (*(this + 112) != v3)
  {
    *(this + 112) = v3;
    if (*(this + 41))
    {
      if (*(this + 16))
      {
        v5 = *(*(this - 2) + 336);

        return v5();
      }
    }
  }

  return result;
}

uint64_t webrtc::VideoRtpSender::AttachTrack(webrtc::VideoRtpSender *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (**v2)(*(this + 43));
  }

  *(this + 116) = (*(*v2 + 96))(v2);
  v3 = *(*v2 + 8);

  return v3(v2);
}

void webrtc::VideoRtpSender::GenerateKeyFrame(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(**(a1 + 336) + 16))(*(a1 + 336)) && *(a1 + 80) && (*(a1 + 84) & 1) == 0)
  {
    (*(*a1 + 240))(v45, a1);
    v13 = *a2;
    v14 = a2[1];
    if (*a2 == v14)
    {
      operator new();
    }

    v15 = v47;
    if (v46 != v47)
    {
      v16 = v46 + 128;
      v17 = *a2;
      while (1)
      {
        v18 = *(v17 + 23);
        if (v18 < 0)
        {
          v25 = *(v17 + 8);
          if (!v25)
          {
            goto LABEL_43;
          }

          v26 = v16;
          while (1)
          {
            v28 = *(v26 + 23);
            v29 = v28;
            if ((v28 & 0x80u) != 0)
            {
              v28 = *(v26 + 8);
            }

            if (v28 == v25)
            {
              v30 = v29 >= 0 ? v26 : *v26;
              if (!memcmp(v30, *v17, v25))
              {
                break;
              }
            }

            v27 = v26 + 144;
            v26 += 272;
            if (v27 == v15)
            {
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (!v18)
          {
            goto LABEL_43;
          }

          v19 = v18;
          v20 = v16;
          while (1)
          {
            v22 = *(v20 + 23);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v20 + 8);
            }

            if (v22 == v19)
            {
              v24 = v23 >= 0 ? v20 : *v20;
              if (!memcmp(v24, v17, v19))
              {
                break;
              }
            }

            v21 = v20 + 144;
            v20 += 272;
            if (v21 == v15)
            {
              goto LABEL_40;
            }
          }
        }

        v17 += 24;
        if (v17 == v14)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }
    }

    if ((*(v13 + 23) & 0x80) != 0)
    {
      if (!*(v13 + 8))
      {
        goto LABEL_43;
      }
    }

    else if (!*(v13 + 23))
    {
LABEL_43:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        v48 = "INVALID_PARAMETER";
        v49 = 17;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v38, v39, v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
      }

      *a3 = 3;
      operator new();
    }

LABEL_40:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v48 = "INVALID_PARAMETER";
      v49 = 17;
      webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
    }

    *a3 = 3;
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
  }

  *a3 = 0;
  *(a3 + 38) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 29) = 0;
}

void webrtc::VideoRtpSender::SetSend(webrtc::VideoRtpSender *this)
{
  if (*(this + 42))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v2 = *(this + 43);
    if (v2)
    {
      (**v2)(*(this + 43));
    }

    v10 = (*(*v2 + 88))(v2);
    (*(*v2 + 8))(v2);
    if (v10)
    {
      v17 = (*(*v10 + 48))(v10) | 0x100;
      v14 = (*(*v10 + 56))(v10);
    }

    v18 = *(this + 116);
    if ((v18 - 1) <= 2)
    {
      v17 = 0x10101010100uLL >> (16 * (v18 - 1));
    }

    v11 = *(this + 9);
    v13[0] = this;
    v13[1] = &v14;
    v20 = 0;
    v19[0] = &v20;
    v19[1] = v13;
    (*(*v11 + 96))(v11, v19, webrtc::FunctionView<void ()(void)>::CallVoidPtr<BOOL webrtc::Thread::BlockingCall<webrtc::VideoRtpSender::SetSend(void)::$_0,BOOL,void>(webrtc::VideoRtpSender::SetSend(void)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>, &v12);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
  }
}

void webrtc::VideoRtpSender::ClearSend(webrtc::VideoRtpSender *this)
{
  if (*(this + 42))
  {
    v1 = *(this + 9);
    v10 = this;
    (*(*v1 + 96))(v1, &v10, webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::VideoRtpSender::ClearSend(void)::$_0>, &v9);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_sender.cc");
  }
}

uint64_t (***webrtc::RtpSenderBase::track@<X0>(webrtc::RtpSenderBase *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 43);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t (***webrtc::RtpSenderBase::dtls_transport@<X0>(webrtc::RtpSenderBase *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 44);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::RtpSenderBase::id(webrtc::RtpSenderBase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 12), *(this + 13));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 6);
    a2->__r_.__value_.__r.__words[2] = *(this + 14);
  }
}

uint64_t webrtc::RtpSenderBase::stream_ids@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 120);
  v3 = *(this + 128);
  if (v3 != v2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t webrtc::RtpSenderBase::init_send_encodings@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 240);
  v3 = *(this + 248);
  if (v3 != v2)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v3 - v2) >> 4) < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

uint64_t (***webrtc::RtpSenderBase::GetFrameEncryptor@<X0>(webrtc::RtpSenderBase *this@<X0>, void *a2@<X8>))(void)
{
  result = *(this + 45);
  *a2 = result;
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

void webrtc::RtpSenderBase::set_init_send_encodings(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 240);
  if (v2 != a2)
  {
    std::vector<webrtc::RtpEncodingParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpEncodingParameters*,webrtc::RtpEncodingParameters*>(v2, *a2, a2[1], 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4));
  }
}

uint64_t webrtc::RtpSenderBase::set_transport(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    (**v3)(*a2);
  }

  result = *(a1 + 352);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 352) = v3;
  return result;
}

void webrtc::RtpSenderBase::SetSendCodecs(uint64_t a1, webrtc::Codec **a2)
{
  v2 = (a1 + 312);
  if (v2 != a2)
  {
    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(v2, *a2, a2[1], 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3));
  }
}

uint64_t webrtc::RtpSenderBase::GetSendCodecs@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 312);
  v3 = *(this + 320);
  if (v3 != v2)
  {
    if (0x84BDA12F684BDA13 * ((v3 - v2) >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void webrtc::AudioRtpSender::track_kind(unint64_t a1@<X8>)
{
  *(a1 + 23) = 5;
  if (a1 <= "audio" && a1 + 5 > "audio")
  {
    __break(1u);
  }

  else
  {
    *a1 = *"audio";
    *(a1 + 4) = webrtc::kMediaTypeAudio[4];
  }
}

void non-virtual thunk towebrtc::AudioRtpSender::track_kind(unint64_t a1@<X8>)
{
  *(a1 + 23) = 5;
  if (a1 <= "audio" && a1 + 5 > "audio")
  {
    __break(1u);
  }

  else
  {
    *a1 = *"audio";
    *(a1 + 4) = webrtc::kMediaTypeAudio[4];
  }
}

void webrtc::VideoRtpSender::track_kind(unint64_t a1@<X8>)
{
  *(a1 + 23) = 5;
  if (a1 <= "video" && a1 + 5 > "video")
  {
    __break(1u);
  }

  else
  {
    *a1 = *"video";
    *(a1 + 4) = webrtc::kMediaTypeVideo[4];
  }
}

void std::vector<webrtc::RtpEncodingParameters>::__emplace_back_slow_path<>(void *a1)
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

uint64_t webrtc::anonymous namespace::SignalingThreadCallback::Resolve(webrtc::_anonymous_namespace_::SignalingThreadCallback *this, const webrtc::RTCError *a2)
{
  v4 = *this;
  {
    operator new();
  }

  if (pthread_getspecific(*(webrtc::ThreadManager::Instance(void)::thread_manager + 88)) != v4)
  {
    (*(this + 3))(0, this + 8, v14);
    v5 = *(this + 24);
    *(this + 4) = 0;
    v15 = v5;
    *(this + 3) = absl::internal_any_invocable::EmptyManager;
    v16 = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      __p = *(a2 + 8);
    }

    v18[0] = *(a2 + 8);
    *(v18 + 3) = *(a2 + 35);
    operator new();
  }

  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10[0] = *(a2 + 8);
  *(v10 + 3) = *(a2 + 35);
  v6 = webrtc::InvokeSetParametersCallback(this + 8, &v8, v11);
  if (v13 < 0)
  {
    operator delete(v12);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    operator delete(v9.__r_.__value_.__l.__data_);
    goto LABEL_12;
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  result = (*(this + 3))(1, this + 8, this + 8, v6);
  *(this + 3) = absl::internal_any_invocable::EmptyManager;
  *(this + 4) = 0;
  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::anonymous namespace::SignalingThreadCallback::Resolve(webrtc::RTCError const&)::{lambda(void)#1} &&>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (*(v1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(v1 + 40), *(v1 + 48));
  }

  else
  {
    v3 = *(v1 + 40);
  }

  v4[0] = *(v1 + 64);
  *(v4 + 3) = *(v1 + 67);
  webrtc::InvokeSetParametersCallback(v1, &v2, v5);
  if ((v7 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v3.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(v3.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}