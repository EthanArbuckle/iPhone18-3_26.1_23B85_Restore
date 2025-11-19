uint64_t webrtc::anonymous namespace::MediaSectionsInSameOrder(uint64_t result, void *a2, uint64_t *a3, int a4)
{
  v4 = *result;
  v5 = *(result + 8);
  if (v5 - *result > (a3[1] - *a3))
  {
    return 0;
  }

  if (v5 == v4)
  {
    return 1;
  }

  v9 = result;
  v10 = 0;
  for (i = 32; ; i += 40)
  {
    if (a2)
    {
      if (v10 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3))
      {
        v12 = 0;
      }

      else
      {
        v12 = *a2 + i - 32;
      }

      v13 = *a3;
      if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) <= v10)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v12 = 0;
      v13 = *a3;
      if (0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) <= v10)
      {
        goto LABEL_36;
      }
    }

    if (a4 || (*(v13 + i - 28) & 1) != 0 || (!v4 || (*(v4 + i - 28) & 1) == 0) && (!v12 || (*(v12 + 4) & 1) == 0))
    {
      break;
    }

LABEL_34:
    if (++v10 >= 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3))
    {
      return 1;
    }
  }

  v14 = v13 + i;
  v15 = *(v13 + i - 1);
  if (v15 >= 0)
  {
    v16 = *(v13 + i - 1);
  }

  else
  {
    v16 = *(v13 + i - 16);
  }

  v17 = v4 + i;
  v18 = *(v4 + i - 1);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v4 + i - 16);
  }

  if (v16 != v18)
  {
    return 0;
  }

  v22 = *(v14 - 24);
  v20 = v14 - 24;
  v21 = v22;
  v23 = (v15 >= 0 ? v20 : v21);
  v26 = *(v17 - 24);
  v25 = v17 - 24;
  v24 = v26;
  v27 = (v19 >= 0 ? v25 : v24);
  result = memcmp(v23, v27, v16);
  if (result)
  {
    return 0;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) > v10)
  {
    v28 = *(v4 + i);
    v29 = (*(**(v13 + i) + 16))(*(v13 + i));
    result = (*(*v28 + 16))(v28);
    if (v29 != result)
    {
      return 0;
    }

    v4 = *v9;
    v5 = v9[1];
    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
  return result;
}

void webrtc::anonymous namespace::ValidateRtpHeaderExtensionsForSpecSimulcast(webrtc::_anonymous_namespace_ *this, const webrtc::SessionDescription *a2, const webrtc::SessionDescription *a3)
{
  if (a2 == a3)
  {
LABEL_64:
    *this = 0;
    *(this + 38) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 1) = 0;
    *(this + 29) = 0;
    return;
  }

  v4 = a2;
  v28 = this + 8;
  while (1)
  {
    if (!*v4 && (*(v4 + 4) & 1) == 0)
    {
      v5 = *(v4 + 4);
      if (v5[26] != v5[27] || v5[29] != v5[30])
      {
        break;
      }
    }

    v4 = (v4 + 40);
    if (v4 == a3)
    {
      goto LABEL_64;
    }
  }

  v6 = v5[8];
  v7 = v5[9];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_66:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    std::operator+<char>();
    v13 = v29.__r_.__value_.__r.__words[2];
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = 22;
    }

    else
    {
      v14 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    if (v14 - size >= 0x4B)
    {
      v16 = &v29;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v29.__r_.__value_.__r.__words[0];
      }

      v17 = v16 + size;
      if (v16 + size <= "' negotiates simulcast but does not negotiate the RID RTP header extension." && v17 + 75 > "' negotiates simulcast but does not negotiate the RID RTP header extension.")
      {
        goto LABEL_65;
      }

      qmemcpy(v17, "' negotiates simulcast but does not negotiate the RID RTP header extension.", 75);
      v18 = size + 75;
      if ((v13 & 0x8000000000000000) != 0)
      {
        v29.__r_.__value_.__l.__size_ = size + 75;
      }

      else
      {
        *(&v29.__r_.__value_.__s + 23) = v18 & 0x7F;
      }

      v16->__r_.__value_.__s.__data_[v18] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v29, v14, size - v14 + 75, size, size, 0, 0x4BuLL, "' negotiates simulcast but does not negotiate the RID RTP header extension.");
    }

    *__p = *&v29.__r_.__value_.__l.__data_;
    __len = v29.__r_.__value_.__r.__words[2];
    memset(&v29, 0, sizeof(v29));
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v14, v8, size, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    if (SHIBYTE(__len) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_33:
  std::operator+<char>();
  v19 = v29.__r_.__value_.__r.__words[2];
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = 22;
  }

  else
  {
    v20 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v29.__r_.__value_.__l.__size_;
  }

  if (v20 - v21 >= 0x4B)
  {
    v22 = &v29;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v29.__r_.__value_.__r.__words[0];
    }

    v23 = v22 + v21;
    if (v22 + v21 <= "' negotiates simulcast but does not negotiate the RID RTP header extension." && v23 + 75 > "' negotiates simulcast but does not negotiate the RID RTP header extension.")
    {
      goto LABEL_65;
    }

    qmemcpy(v23, "' negotiates simulcast but does not negotiate the RID RTP header extension.", 75);
    v24 = v21 + 75;
    if ((v19 & 0x8000000000000000) != 0)
    {
      v29.__r_.__value_.__l.__size_ = v21 + 75;
    }

    else
    {
      *(&v29.__r_.__value_.__s + 23) = v24 & 0x7F;
    }

    v22->__r_.__value_.__s.__data_[v24] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v29, v20, v21 - v20 + 75, v21, v21, 0, 0x4BuLL, "' negotiates simulcast but does not negotiate the RID RTP header extension.");
  }

  __len = v29.__r_.__value_.__r.__words[2];
  *__p = *&v29.__r_.__value_.__l.__data_;
  memset(&v29, 0, sizeof(v29));
  v25 = SHIBYTE(__len);
  if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
  {
    v26 = __p[0];
    v25 = __p[1];
    *this = 3;
    if (v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    *this = 3;
    v26 = __p;
  }

  if (v25 > 0x16)
  {
    operator new();
  }

  *(this + 31) = v25;
  v27 = &v28[v25];
  if (v28 <= v26 && v27 > v26)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v25)
  {
    memmove(v28, v26, v25);
  }

  *v27 = 0;
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 38) = 0;
  if ((SHIBYTE(__len) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_63:
    operator delete(v29.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_63;
  }
}

void webrtc::SdpOfferAnswerHandler::UpdateTransceiverChannel(uint64_t a1, uint64_t a2, webrtc::RtpTransceiver *this, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(this + 20);
  if (*(a4 + 4) == 1)
  {
    if (v5)
    {
      webrtc::RtpTransceiver::ClearChannel(this);
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    *a1 = 0;
    *(a1 + 38) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    return;
  }

  v8 = *(a4 + 8);
  v6 = a4 + 8;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >= 0)
  {
    v11 = *(v6 + 23);
  }

  else
  {
    v11 = *(v6 + 8);
  }

  v14 = (*(**(a2 + 8) + 240))(*(a2 + 8));
  v15 = (*(**(a2 + 8) + 40))(*(a2 + 8));
  v16 = (*(**(a2 + 8) + 248))(*(a2 + 8));
  (*(**(a2 + 8) + 96))(&v19);
  v17 = *(a2 + 392);
  v22[0] = &unk_28829F7F0;
  v22[1] = a2;
  v23 = v22;
  webrtc::RtpTransceiver::CreateChannel(this, v10, v11, v14, v15 + 124, v16, &v19, a2 + 288, a1, a2 + 368, v17, v22);
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
    v18 = __p;
    if (__p)
    {
LABEL_17:
      v21 = v18;
      operator delete(v18);
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 40))();
    }

    v18 = __p;
    if (__p)
    {
      goto LABEL_17;
    }
  }

  if (!*a1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    goto LABEL_5;
  }
}

void webrtc::SdpOfferAnswerHandler::GenerateMediaDescriptionOptions(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = (*(*a2 + 32))(a2);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    while (1)
    {
      if (v11)
      {
        v13 = *(v11 + 32);
        if (v13)
        {
          if (!(*(*v13 + 16))(v13))
          {
            if (*(a5 + 8) == 1)
            {
              *v50 = 0;
              if (*(v11 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
              }

              else
              {
                v16 = *(v11 + 8);
                v51 = *(v11 + 24);
                *&v50[8] = v16;
              }

              LODWORD(v52[0]) = 3;
              BYTE4(v52[0]) = 1;
              memset(v52 + 5, 0, 96);
              DWORD1(v52[6]) = 0;
              v27 = a8[9];
              if (v27 >= a8[10])
              {
                std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(a8 + 8);
              }

              if (!v27)
              {
                goto LABEL_78;
              }

              *v27 = *v50;
              v28 = *&v50[8];
              *(v27 + 24) = v51;
              *(v27 + 8) = v28;
              *&v50[16] = 0;
              v51 = 0;
              *&v50[8] = 0;
              *(v27 + 32) = *&v52[0];
              *(v27 + 40) = 0;
              *(v27 + 48) = 0;
              *(v27 + 56) = 0;
              *(v27 + 40) = *(v52 + 8);
              *(v52 + 8) = 0uLL;
              *(v27 + 56) = *(&v52[1] + 1);
              *(v27 + 64) = 0;
              *(v27 + 72) = 0;
              *(v27 + 80) = 0;
              *(v27 + 64) = v52[2];
              *(v27 + 80) = *&v52[3];
              *(v27 + 88) = 0;
              memset(&v52[1] + 8, 0, 32);
              *(v27 + 96) = 0;
              *(v27 + 104) = 0;
              *(v27 + 88) = *(&v52[3] + 8);
              *(&v52[3] + 8) = 0uLL;
              *(v27 + 104) = *(&v52[4] + 1);
              *(v27 + 112) = 0;
              *(v27 + 120) = 0;
              *(v27 + 128) = 0;
              *(v27 + 112) = v52[5];
              *(v27 + 128) = *&v52[6];
              memset(&v52[4] + 8, 0, 32);
              a8[9] = v27 + 136;
              webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(v50);
            }

            else
            {
              *v50 = 0;
              if (*(v11 + 31) < 0)
              {
                std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
              }

              else
              {
                v25 = *(v11 + 8);
                v51 = *(v11 + 24);
                *&v50[8] = v25;
              }

              LODWORD(v52[0]) = a3;
              BYTE4(v52[0]) = a3 == 3;
              memset(v52 + 5, 0, 96);
              DWORD1(v52[6]) = 0;
              v29 = a8[9];
              if (v29 >= a8[10])
              {
                std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(a8 + 8);
              }

              if (!v29)
              {
LABEL_78:
                __break(1u);
                return;
              }

              *v29 = *v50;
              v30 = *&v50[8];
              *(v29 + 24) = v51;
              *(v29 + 8) = v30;
              *&v50[16] = 0;
              v51 = 0;
              *&v50[8] = 0;
              *(v29 + 32) = *&v52[0];
              *(v29 + 40) = 0;
              *(v29 + 48) = 0;
              *(v29 + 56) = 0;
              *(v29 + 40) = *(v52 + 8);
              *(v52 + 8) = 0uLL;
              *(v29 + 56) = *(&v52[1] + 1);
              *(v29 + 64) = 0;
              *(v29 + 72) = 0;
              *(v29 + 80) = 0;
              *(v29 + 64) = v52[2];
              *(v29 + 80) = *&v52[3];
              *(v29 + 88) = 0;
              memset(&v52[1] + 8, 0, 32);
              *(v29 + 96) = 0;
              *(v29 + 104) = 0;
              *(v29 + 88) = *(&v52[3] + 8);
              *(&v52[3] + 8) = 0uLL;
              *(v29 + 104) = *(&v52[4] + 1);
              *(v29 + 112) = 0;
              *(v29 + 120) = 0;
              *(v29 + 128) = 0;
              *(v29 + 112) = v52[5];
              *(v29 + 128) = *&v52[6];
              memset(&v52[4] + 8, 0, 32);
              a8[9] = v29 + 136;
              webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(v50);
              *a5 = 0xF0F0F0F0F0F0F0F1 * ((a8[9] - a8[8]) >> 3) - 1;
              *(a5 + 8) = 1;
            }

            v31 = (*(**(*(a1 + 16) + 96) + 24))(*(*(a1 + 16) + 96));
            (*(*v31 + 16))(v50);
            v32 = a8[9];
            if (a8[8] == v32)
            {
              goto LABEL_78;
            }

            v34 = (v32 - 48);
            v33 = *(v32 - 48);
            if (!v33)
            {
              goto LABEL_74;
            }

            v35 = *(v32 - 40);
            v36 = *(v32 - 48);
            if (v35 == v33)
            {
              goto LABEL_73;
            }

            do
            {
              v37 = *(v35 - 17);
              v35 -= 5;
              if (v37 < 0)
              {
                operator delete(*v35);
              }
            }

            while (v35 != v33);
            goto LABEL_72;
          }

          v14 = *(v11 + 32);
          if (v14)
          {
            if ((*(*v14 + 16))(v14) == 1)
            {
              if (*(a6 + 8) == 1)
              {
                *v50 = 1;
                if (*(v11 + 31) < 0)
                {
                  std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
                }

                else
                {
                  v15 = *(v11 + 8);
                  v51 = *(v11 + 24);
                  *&v50[8] = v15;
                }

                LODWORD(v52[0]) = 3;
                BYTE4(v52[0]) = 1;
                memset(v52 + 5, 0, 96);
                DWORD1(v52[6]) = 0;
                v38 = a8[9];
                if (v38 >= a8[10])
                {
                  std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(a8 + 8);
                }

                if (!v38)
                {
                  goto LABEL_78;
                }

                *v38 = *v50;
                v39 = *&v50[8];
                *(v38 + 24) = v51;
                *(v38 + 8) = v39;
                *&v50[16] = 0;
                v51 = 0;
                *&v50[8] = 0;
                *(v38 + 32) = *&v52[0];
                *(v38 + 40) = 0;
                *(v38 + 48) = 0;
                *(v38 + 56) = 0;
                *(v38 + 40) = *(v52 + 8);
                *(v52 + 8) = 0uLL;
                *(v38 + 56) = *(&v52[1] + 1);
                *(v38 + 64) = 0;
                *(v38 + 72) = 0;
                *(v38 + 80) = 0;
                *(v38 + 64) = v52[2];
                *(v38 + 80) = *&v52[3];
                *(v38 + 88) = 0;
                memset(&v52[1] + 8, 0, 32);
                *(v38 + 96) = 0;
                *(v38 + 104) = 0;
                *(v38 + 88) = *(&v52[3] + 8);
                *(&v52[3] + 8) = 0uLL;
                *(v38 + 104) = *(&v52[4] + 1);
                *(v38 + 112) = 0;
                *(v38 + 120) = 0;
                *(v38 + 128) = 0;
                *(v38 + 112) = v52[5];
                *(v38 + 128) = *&v52[6];
                memset(&v52[4] + 8, 0, 32);
                a8[9] = v38 + 136;
                webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(v50);
              }

              else
              {
                *v50 = 1;
                if (*(v11 + 31) < 0)
                {
                  std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
                }

                else
                {
                  v26 = *(v11 + 8);
                  v51 = *(v11 + 24);
                  *&v50[8] = v26;
                }

                LODWORD(v52[0]) = a4;
                BYTE4(v52[0]) = a4 == 3;
                memset(v52 + 5, 0, 96);
                DWORD1(v52[6]) = 0;
                v40 = a8[9];
                if (v40 >= a8[10])
                {
                  std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(a8 + 8);
                }

                if (!v40)
                {
                  goto LABEL_78;
                }

                *v40 = *v50;
                v41 = *&v50[8];
                *(v40 + 24) = v51;
                *(v40 + 8) = v41;
                *&v50[16] = 0;
                v51 = 0;
                *&v50[8] = 0;
                *(v40 + 32) = *&v52[0];
                *(v40 + 40) = 0;
                *(v40 + 48) = 0;
                *(v40 + 56) = 0;
                *(v40 + 40) = *(v52 + 8);
                *(v52 + 8) = 0uLL;
                *(v40 + 56) = *(&v52[1] + 1);
                *(v40 + 64) = 0;
                *(v40 + 72) = 0;
                *(v40 + 80) = 0;
                *(v40 + 64) = v52[2];
                *(v40 + 80) = *&v52[3];
                *(v40 + 88) = 0;
                memset(&v52[1] + 8, 0, 32);
                *(v40 + 96) = 0;
                *(v40 + 104) = 0;
                *(v40 + 88) = *(&v52[3] + 8);
                *(&v52[3] + 8) = 0uLL;
                *(v40 + 104) = *(&v52[4] + 1);
                *(v40 + 112) = 0;
                *(v40 + 120) = 0;
                *(v40 + 128) = 0;
                *(v40 + 112) = v52[5];
                *(v40 + 128) = *&v52[6];
                memset(&v52[4] + 8, 0, 32);
                a8[9] = v40 + 136;
                webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(v50);
                *a6 = 0xF0F0F0F0F0F0F0F1 * ((a8[9] - a8[8]) >> 3) - 1;
                *(a6 + 8) = 1;
              }

              v42 = (*(**(*(a1 + 16) + 96) + 32))(*(*(a1 + 16) + 96));
              (*(*v42 + 16))(v50);
              v32 = a8[9];
              if (a8[8] == v32)
              {
                goto LABEL_78;
              }

              v34 = (v32 - 48);
              v33 = *(v32 - 48);
              if (!v33)
              {
                goto LABEL_74;
              }

              v43 = *(v32 - 40);
              v36 = *(v32 - 48);
              if (v43 == v33)
              {
LABEL_73:
                *(v32 - 40) = v33;
                operator delete(v36);
                *v34 = 0;
                v34[1] = 0;
                v34[2] = 0;
LABEL_74:
                *(v32 - 48) = *v50;
                *(v32 - 32) = *&v50[16];
                goto LABEL_4;
              }

              do
              {
                v44 = *(v43 - 17);
                v43 -= 5;
                if (v44 < 0)
                {
                  operator delete(*v43);
                }
              }

              while (v43 != v33);
LABEL_72:
              v36 = *v34;
              goto LABEL_73;
            }

            v17 = *(v11 + 32);
            if (v17)
            {
              if ((*(*v17 + 16))(v17) == 3)
              {
                break;
              }
            }
          }
        }
      }

      if (*(a7 + 8) == 1)
      {
        *v50 = 2;
        if (*(v11 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
        }

        else
        {
          v19 = *(v11 + 8);
          v51 = *(v11 + 24);
          *&v50[8] = v19;
        }

        LODWORD(v52[0]) = 3;
        BYTE4(v52[0]) = 1;
        memset(v52 + 5, 0, 96);
        DWORD1(v52[6]) = 0;
        v21 = a8[9];
        if (v21 >= a8[10])
        {
LABEL_3:
          std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(a8 + 8);
        }

        if (!v21)
        {
          goto LABEL_78;
        }

        goto LABEL_28;
      }

      *v50 = 2;
      if (*(v11 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
      }

      else
      {
        v20 = *(v11 + 8);
        v51 = *(v11 + 24);
        *&v50[8] = v20;
      }

      memset(v52, 0, 104);
      v23 = a8[9];
      if (v23 >= a8[10])
      {
        std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(a8 + 8);
      }

      if (!v23)
      {
        goto LABEL_78;
      }

      *v23 = *v50;
      v24 = *&v50[8];
      *(v23 + 24) = v51;
      *(v23 + 8) = v24;
      *&v50[16] = 0;
      v51 = 0;
      *&v50[8] = 0;
      *(v23 + 32) = *&v52[0];
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 40) = *(v52 + 8);
      *(v52 + 8) = 0uLL;
      *(v23 + 56) = *(&v52[1] + 1);
      *(v23 + 64) = 0;
      *(v23 + 72) = 0;
      *(v23 + 80) = 0;
      *(v23 + 64) = v52[2];
      *(v23 + 80) = *&v52[3];
      *(v23 + 88) = 0;
      memset(&v52[1] + 8, 0, 32);
      *(v23 + 96) = 0;
      *(v23 + 104) = 0;
      *(v23 + 88) = *(&v52[3] + 8);
      *(&v52[3] + 8) = 0uLL;
      *(v23 + 104) = *(&v52[4] + 1);
      *(v23 + 112) = 0;
      *(v23 + 120) = 0;
      *(v23 + 128) = 0;
      *(v23 + 112) = v52[5];
      *(v23 + 128) = *&v52[6];
      memset(&v52[4] + 8, 0, 32);
      a8[9] = v23 + 136;
      webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(v50);
      *a7 = 0xF0F0F0F0F0F0F0F1 * ((a8[9] - a8[8]) >> 3) - 1;
      *(a7 + 8) = 1;
LABEL_4:
      v11 += 40;
      if (v11 == v12)
      {
        return;
      }
    }

    *v50 = 3;
    if (*(v11 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v50[8], *(v11 + 8), *(v11 + 16));
    }

    else
    {
      v18 = *(v11 + 8);
      v51 = *(v11 + 24);
      *&v50[8] = v18;
    }

    LODWORD(v52[0]) = 3;
    BYTE4(v52[0]) = 1;
    memset(v52 + 5, 0, 96);
    DWORD1(v52[6]) = 0;
    v21 = a8[9];
    if (v21 >= a8[10])
    {
      goto LABEL_3;
    }

    if (!v21)
    {
      goto LABEL_78;
    }

LABEL_28:
    *v21 = *v50;
    v22 = *&v50[8];
    *(v21 + 24) = v51;
    *(v21 + 8) = v22;
    *&v50[16] = 0;
    v51 = 0;
    *&v50[8] = 0;
    *(v21 + 32) = *&v52[0];
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 40) = *(v52 + 8);
    *(v52 + 8) = 0uLL;
    *(v21 + 56) = *(&v52[1] + 1);
    *(v21 + 64) = 0;
    *(v21 + 72) = 0;
    *(v21 + 80) = 0;
    *(v21 + 64) = v52[2];
    *(v21 + 80) = *&v52[3];
    *(v21 + 88) = 0;
    memset(&v52[1] + 8, 0, 32);
    *(v21 + 96) = 0;
    *(v21 + 104) = 0;
    *(v21 + 88) = *(&v52[3] + 8);
    *(&v52[3] + 8) = 0uLL;
    *(v21 + 104) = *(&v52[4] + 1);
    *(v21 + 112) = 0;
    *(v21 + 120) = 0;
    *(v21 + 128) = 0;
    *(v21 + 112) = v52[5];
    *(v21 + 128) = *&v52[6];
    memset(&v52[4] + 8, 0, 32);
    a8[9] = v21 + 136;
    webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(v50);
    goto LABEL_4;
  }
}

void webrtc::anonymous namespace::AddPlanBRtpSenderOptions(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 8)
    {
      if ((*(**i + 64))())
      {
        if (!a4)
        {
          continue;
        }

        (*(**i + 72))(&v52);
        (*(**(*i + 24) + 80))(&v49);
        __p = 0uLL;
        v48 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        webrtc::MediaDescriptionOptions::AddSenderInternal(a4, &v52, &v49, &__p, &v44, a5, v9, v10);
        v11 = v44;
        if (v44)
        {
          v12 = v45;
          v13 = v44;
          if (v45 != v44)
          {
            v14 = v45;
            do
            {
              v17 = *(v14 - 3);
              v14 -= 3;
              v16 = v17;
              if (v17)
              {
                v18 = *(v12 - 2);
                v15 = v16;
                if (v18 != v16)
                {
                  do
                  {
                    v19 = *(v18 - 9);
                    v18 -= 4;
                    if (v19 < 0)
                    {
                      operator delete(*v18);
                    }
                  }

                  while (v18 != v16);
                  v15 = *v14;
                }

                *(v12 - 2) = v16;
                operator delete(v15);
              }

              v12 = v14;
            }

            while (v14 != v11);
            v13 = v44;
          }

          v45 = v11;
          operator delete(v13);
        }

        v26 = __p;
        if (__p)
        {
          v27 = *(&__p + 1);
          v28 = __p;
          if (*(&__p + 1) != __p)
          {
            do
            {
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v27 - 24, *(v27 - 16));
              v29 = *(v27 - 48);
              if (v29)
              {
                v30 = *(v27 - 40);
                v31 = *(v27 - 48);
                if (v30 != v29)
                {
                  v32 = v30 - 27;
                  v33 = v30 - 27;
                  v34 = v30 - 27;
                  do
                  {
                    v35 = *v34;
                    v34 -= 27;
                    (*v35)(v33);
                    v32 -= 27;
                    v36 = v33 == v29;
                    v33 = v34;
                  }

                  while (!v36);
                  v31 = *(v27 - 48);
                }

                *(v27 - 40) = v29;
                operator delete(v31);
              }

              v37 = (v27 - 80);
              if (*(v27 - 57) < 0)
              {
                operator delete(*v37);
              }

              v27 -= 80;
            }

            while (v37 != v26);
            v28 = __p;
          }

          *(&__p + 1) = v26;
          operator delete(v28);
        }

        v38 = v49;
        if (v49)
        {
          v39 = v50;
          v40 = v49;
          if (v50 != v49)
          {
            do
            {
              v41 = *(v39 - 1);
              v39 -= 3;
              if (v41 < 0)
              {
                operator delete(*v39);
              }
            }

            while (v39 != v38);
            v40 = v49;
          }

          v50 = v38;
          operator delete(v40);
        }

        if ((SHIBYTE(v53) & 0x80000000) == 0)
        {
          continue;
        }

        v42 = v52;
      }

      else
      {
        if (!a3)
        {
          continue;
        }

        (*(**i + 72))(&__p);
        (*(**(*i + 24) + 80))(&v44);
        v52 = 0uLL;
        v53 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        webrtc::MediaDescriptionOptions::AddSenderInternal(a3, &__p, &v44, &v52, &v49, 1, v20, v21);
        v22 = v44;
        if (v44)
        {
          v23 = v45;
          v24 = v44;
          if (v45 != v44)
          {
            do
            {
              v25 = *(v23 - 1);
              v23 -= 3;
              if (v25 < 0)
              {
                operator delete(*v23);
              }
            }

            while (v23 != v22);
            v24 = v44;
          }

          v45 = v22;
          operator delete(v24);
        }

        if ((SHIBYTE(v48) & 0x80000000) == 0)
        {
          continue;
        }

        v42 = __p;
      }

      operator delete(v42);
    }
  }
}

void webrtc::anonymous namespace::GetMediaDescriptionOptionsForTransceiver(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = *a2;
  if (a4)
  {
    v8 = (*(v7 + 72))(a2);
  }

  else
  {
    v8 = (*(v7 + 64))(a2);
  }

  v9 = v8;
  v10 = (*(*a2 + 32))(a2);
  v11 = (*(*a2 + 80))(a2);
  *a1 = v10;
  v12 = (a1 + 8);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v12, *a3, *(a3 + 8));
  }

  else
  {
    *&v12->__r_.__value_.__l.__data_ = *a3;
    *(a1 + 24) = *(a3 + 16);
  }

  *(a1 + 32) = v11;
  *(a1 + 36) = v9;
  *(a1 + 37) = 0u;
  *(a1 + 53) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 85) = 0u;
  *(a1 + 101) = 0u;
  *(a1 + 117) = 0u;
  *(a1 + 132) = 0;
  v13 = *(a2 + 21);
  if (v13 > 4)
  {
    v17 = a2[23];
    v18 = a2[24];
    v16 = v18 - v17;
    if (v18 != v17)
    {
LABEL_9:
      if (0xCCCCCCCCCCCCCCCDLL * (v16 >> 5) < 0x19999999999999ALL)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  else
  {
    v14 = (a2 + qword_273BA4130[v13]);
    v15 = v14[1];
    v16 = v15 - *v14;
    if (v15 != *v14)
    {
      goto LABEL_9;
    }
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  (*(*a2 + 160))(&v86, a2);
  v19 = *(a1 + 88);
  if (v19)
  {
    v20 = *(a1 + 96);
    v21 = *(a1 + 88);
    if (v20 != v19)
    {
      do
      {
        v22 = *(v20 - 17);
        v20 -= 5;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = *(a1 + 88);
    }

    *(a1 + 96) = v19;
    operator delete(v21);
  }

  *(a1 + 88) = v86;
  *(a1 + 104) = v87;
  if ((v9 & 1) == 0 && ((*(*a2 + 80))(a2) < 2 || *(a2 + 154) == 1))
  {
    memset(v94, 0, sizeof(v94));
    (*(*a2 + 48))(&v73, a2);
    (*(*v73.__r_.__value_.__l.__data_ + 72))(&v86);
    v90 = v86;
    v91 = v87;
    HIBYTE(v87) = 0;
    LOBYTE(v86) = 0;
    if (v73.__r_.__value_.__r.__words[0])
    {
      (*(*v73.__r_.__value_.__l.__data_ + 8))(v73.__r_.__value_.__r.__words[0]);
    }

    (*(*a2 + 48))(&v73, a2);
    (*(*v73.__r_.__value_.__l.__data_ + 80))(&v86);
    v92 = v86;
    v93 = v87;
    v87 = 0;
    v86 = 0uLL;
    if (v73.__r_.__value_.__r.__words[0])
    {
      (*(*v73.__r_.__value_.__l.__data_ + 8))(v73.__r_.__value_.__r.__words[0]);
    }

    v27 = a2[4];
    if (a2[5] - v27 != 8)
    {
      goto LABEL_122;
    }

    v28 = *(*v27 + 24);
    if (v28)
    {
      (**v28)(v28);
    }

    (*(*v28 + 256))(&v86, v28);
    (*(*v28 + 8))(v28);
    v29 = v88;
    if (v88 == v89)
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v80 = 0;
      v81 = 0;
      v47 = 1;
      v82 = 0;
    }

    else
    {
      v30 = v88 + 272;
      do
      {
        if (*(v30 - 121) >= 0)
        {
          v31 = *(v30 - 121);
        }

        else
        {
          v31 = *(v30 - 136);
        }

        if (v31)
        {
          v32 = 1;
        }

        else
        {
          v32 = v30 == v89;
        }

        v30 += 272;
      }

      while (!v32);
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      do
      {
        v33 = (v29 + 128);
        if (*(v29 + 151) < 0)
        {
          if (*(v29 + 136))
          {
            std::string::__init_copy_ctor_external(&v73, *(v29 + 128), *(v29 + 136));
LABEL_47:
            v74 = 0;
            v76 = 0;
            v77 = 0;
            v75 = 0;
            v79[0] = 0;
            v79[1] = 0;
            v78 = v79;
            if (*(v29 + 264) != 1)
            {
              goto LABEL_68;
            }

            v34 = a2[4];
            if (a2[5] - v34 != 8)
            {
              goto LABEL_122;
            }

            v35 = *(*v34 + 24);
            if (v35)
            {
              (**v35)(v35);
            }

            (*(*v35 + 312))(&__p, v35);
            (*(*v35 + 8))(v35);
            v37 = __p;
            v38 = v70;
            if (__p == v70)
            {
              goto LABEL_61;
            }

            while (1)
            {
              if ((*(v29 + 264) & 1) == 0)
              {
                goto LABEL_121;
              }

              if (webrtc::IsSameRtpCodecIgnoringLevel(v37, (v29 + 160), v36))
              {
                break;
              }

              v37 = (v37 + 216);
              if (v37 == v38)
              {
                goto LABEL_60;
              }
            }

            if (v76 >= v77)
            {
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(&v75);
            }

            if (!v76)
            {
              goto LABEL_121;
            }

            v76 = (webrtc::Codec::Codec(v76, v37) + 216);
LABEL_60:
            v37 = __p;
LABEL_61:
            if (v37)
            {
              v39 = v37;
              if (v70 != v37)
              {
                v40 = v70 - 216;
                v41 = (v70 - 216);
                v42 = (v70 - 216);
                do
                {
                  v43 = *v42;
                  v42 = (v42 - 216);
                  (*v43)(v41);
                  v40 -= 216;
                  v32 = v41 == v37;
                  v41 = v42;
                }

                while (!v32);
                v39 = __p;
              }

              v70 = v37;
              operator delete(v39);
            }

LABEL_68:
            if (v84 >= v85)
            {
              std::vector<webrtc::RidDescription>::__emplace_back_slow_path<webrtc::RidDescription const&>(&v83);
            }

            if (!v84)
            {
              goto LABEL_121;
            }

            v84 = (webrtc::RidDescription::RidDescription(v84, &v73) + 80);
            v44 = *(v29 + 151);
            if ((v44 & 0x8000000000000000) == 0)
            {
              v45 = *(v29 + 124);
              if (v44 <= 0x16)
              {
                goto LABEL_72;
              }

LABEL_77:
              operator new();
            }

            v44 = *(v29 + 136);
            if (v44 < 0x7FFFFFFFFFFFFFF8)
            {
              v33 = *(v29 + 128);
              v45 = *(v29 + 124);
              if (v44 > 0x16)
              {
                goto LABEL_77;
              }

LABEL_72:
              v71 = v44;
              v46 = &__p + v44;
              if (&__p > v33 || v46 <= v33)
              {
                if (v44)
                {
                  memmove(&__p, v33, v44);
                }

                *v46 = 0;
                v72 = (v45 ^ 1) & 1;
                webrtc::SimulcastLayerList::AddLayer(&v80, &__p);
              }

LABEL_121:
              __break(1u);
LABEL_122:
              webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/rtp_transceiver.cc", 460, "1u == senders_.size()", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v23, v24, v25, v26, 1);
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }
        }

        else if (*(v29 + 151))
        {
          *&v73.__r_.__value_.__l.__data_ = *v33;
          v73.__r_.__value_.__r.__words[2] = *(v29 + 144);
          goto LABEL_47;
        }

        v29 += 272;
      }

      while (v29 != v89);
      if (v31)
      {
        std::vector<webrtc::RidDescription>::__assign_with_size[abi:sn200100]<webrtc::RidDescription*,webrtc::RidDescription*>(v94, v83, v84, 0xCCCCCCCCCCCCCCCDLL * ((v84 - v83) >> 4));
        v47 = 0;
      }

      else
      {
        v47 = 1;
      }
    }

    std::vector<std::vector<webrtc::SimulcastLayer>>::__assign_with_size[abi:sn200100]<std::vector<webrtc::SimulcastLayer>*,std::vector<webrtc::SimulcastLayer>*>(&v94[1] + 8, v80, v81, 0xAAAAAAAAAAAAAAABLL * ((v81 - v80) >> 3));
    v95 = v47;
    v48 = *(a1 + 48);
    if (v48 >= *(a1 + 56))
    {
      std::vector<webrtc::SenderOptions>::__emplace_back_slow_path<webrtc::SenderOptions const&>((a1 + 40));
    }

    if (!v48)
    {
      goto LABEL_121;
    }

    *(a1 + 48) = webrtc::SenderOptions::SenderOptions(v48, &v90) + 104;
    v49 = v80;
    if (v80)
    {
      v50 = v81;
      v51 = v80;
      if (v81 != v80)
      {
        v52 = v81;
        do
        {
          v55 = *(v52 - 3);
          v52 -= 3;
          v54 = v55;
          if (v55)
          {
            v56 = *(v50 - 2);
            v53 = v54;
            if (v56 != v54)
            {
              do
              {
                v57 = *(v56 - 9);
                v56 -= 4;
                if (v57 < 0)
                {
                  operator delete(*v56);
                }
              }

              while (v56 != v54);
              v53 = *v52;
            }

            *(v50 - 2) = v54;
            operator delete(v53);
          }

          v50 = v52;
        }

        while (v52 != v49);
        v51 = v80;
      }

      v81 = v49;
      operator delete(v51);
    }

    v58 = v83;
    if (v83)
    {
      v59 = v84;
      v60 = v83;
      if (v84 != v83)
      {
        do
        {
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v59[-1], v59[-1].__r_.__value_.__l.__size_);
          data = v59[-2].__r_.__value_.__l.__data_;
          if (data)
          {
            size = v59[-2].__r_.__value_.__l.__size_;
            v63 = v59[-2].__r_.__value_.__l.__data_;
            if (size != data)
            {
              v64 = size - 216;
              v65 = (size - 216);
              v66 = (size - 216);
              do
              {
                v67 = *v66;
                v66 -= 27;
                (*v67)(v65);
                v64 -= 216;
                v32 = v65 == data;
                v65 = v66;
              }

              while (!v32);
              v63 = v59[-2].__r_.__value_.__l.__data_;
            }

            v59[-2].__r_.__value_.__l.__size_ = data;
            operator delete(v63);
          }

          v68 = &v59[-4].__r_.__value_.__r.__words[2];
          if (v59[-3].__r_.__value_.__s.__data_[15] < 0)
          {
            operator delete(*v68);
          }

          v59 = (v59 - 80);
        }

        while (v68 != v58);
        v60 = v83;
      }

      v84 = v58;
      operator delete(v60);
    }

    webrtc::RtpParameters::~RtpParameters(&v86);
    webrtc::SenderOptions::~SenderOptions(&v90);
  }
}

uint64_t webrtc::MediaDescriptionOptions::operator=(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = (a1 + 40);
  v7 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = v7;
    if (v8 != v7)
    {
      do
      {
        webrtc::SenderOptions::~SenderOptions((v8 - 104));
      }

      while (v8 != v7);
      v9 = *v6;
    }

    *(a1 + 48) = v7;
    operator delete(v9);
    *v6 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v10 = (a1 + 64);
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 64);
    if (v12 != v11)
    {
      v14 = v12 - 20;
      v15 = v12 - 20;
      v16 = v12 - 20;
      do
      {
        v17 = *v16;
        v16 -= 20;
        (*v17)(v15);
        v14 -= 20;
        v18 = v15 == v11;
        v15 = v16;
      }

      while (!v18);
      v13 = *v10;
    }

    *(a1 + 72) = v11;
    operator delete(v13);
    *v10 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v19 = (a1 + 88);
  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = *(a1 + 96);
    v22 = *(a1 + 88);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 17);
        v21 -= 5;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = *v19;
    }

    *(a1 + 96) = v20;
    operator delete(v22);
    *v19 = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v24 = (a1 + 112);
  v25 = *(a1 + 112);
  if (v25)
  {
    v26 = *(a1 + 120);
    v27 = *(a1 + 112);
    if (v26 != v25)
    {
      v28 = v26 - 27;
      v29 = v26 - 27;
      v30 = v26 - 27;
      do
      {
        v31 = *v30;
        v30 -= 27;
        (*v31)(v29);
        v28 -= 27;
        v18 = v29 == v25;
        v29 = v30;
      }

      while (!v18);
      v27 = *v24;
    }

    *(a1 + 120) = v25;
    operator delete(v27);
    *v24 = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  return a1;
}

void webrtc::SdpOfferAnswerHandler::RemoveRecvDirectionFromReceivingTransceiversOfType(uint64_t a1, int a2)
{
  webrtc::SdpOfferAnswerHandler::GetReceivingTransceiversOfType(&v45, a1);
  v4 = v45;
  v5 = v46;
  if (v45 != v46)
  {
    v7 = __p <= "<not set>" && &__p[1] + 1 > "<not set>";
    v31 = v7;
    v9 = v37 <= "data" && v37 + 4 > "data";
    v30 = v9;
    v11 = v37 <= "video" && v37 + 5 > "video";
    v29 = v11;
    v13 = v37 <= "audio" && v37 + 5 > "audio";
    v28 = v13;
    while (1)
    {
      if ((*(**v4 + 80))() <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 3;
      }

      if (v14 == (*(**v4 + 80))())
      {
        goto LABEL_28;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        break;
      }

LABEL_27:
      *(*(*v4 + 16) + 84) = v14;
LABEL_28:
      v4 += 8;
      if (v4 == v5)
      {
        v4 = v45;
        goto LABEL_57;
      }
    }

    v2 = v2 & 0xFFFFFFFF00000000 | 0x95B9;
    v40[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc";
    v40[1] = v2;
    v40[2] = &v39;
    v41[0] = "Changing ";
    v41[1] = v40;
    if (a2 == 2)
    {
      v38 = 4;
      if (v30)
      {
        goto LABEL_66;
      }

      LODWORD(v37[0]) = 1635017060;
      v16 = (v37 + 4);
      goto LABEL_45;
    }

    if (a2 == 1)
    {
      v38 = 5;
      if (v29)
      {
        goto LABEL_66;
      }

      v15 = "video";
    }

    else
    {
      if (a2)
      {
        v38 = 0;
        v16 = v37;
        goto LABEL_45;
      }

      v38 = 5;
      if (v28)
      {
        goto LABEL_66;
      }

      v15 = "audio";
    }

    LODWORD(v37[0]) = *v15;
    BYTE4(v37[0]) = v15[4];
    v16 = (v37 + 5);
LABEL_45:
    *v16 = 0;
    v42[0] = v37;
    v42[1] = v41;
    v43[0] = " transceiver (MID=";
    v43[1] = v42;
    (*(**v4 + 40))(v32);
    if (v34 == 1)
    {
      *__p = *v32;
      v36 = v33;
      v32[1] = 0;
      v33 = 0;
      v32[0] = 0;
    }

    else
    {
      HIBYTE(v36) = 9;
      if (v31)
      {
LABEL_66:
        __break(1u);
        return;
      }

      strcpy(__p, "<not set>");
    }

    v43[2] = __p;
    v44 = v43;
    (*(**v4 + 80))();
    webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\t\t\t\t", v17, v18, v19, v20, v21, v22, v23, **(*(v44[1] + 8) + 8));
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    if (v34 == 1 && SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    goto LABEL_27;
  }

LABEL_57:
  if (v4)
  {
    v24 = v46;
    v25 = v4;
    if (v46 != v4)
    {
      do
      {
        v27 = *(v24 - 1);
        v24 -= 8;
        v26 = v27;
        if (v27)
        {
          (*(*v26 + 8))(v26);
        }
      }

      while (v24 != v4);
      v25 = v45;
    }

    v46 = v4;
    operator delete(v25);
  }
}

void webrtc::SdpOfferAnswerHandler::AddUpToOneReceivingTransceiverOfType(uint64_t a1, int a2)
{
  webrtc::SdpOfferAnswerHandler::GetReceivingTransceiversOfType(&__p, a1);
  v4 = __p;
  v5 = v31[0];
  if (__p)
  {
    v6 = __p;
    if (__p != v31[0])
    {
      v7 = v31[0];
      do
      {
        v9 = *(v7 - 1);
        v7 -= 8;
        v8 = v9;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v7 != v4);
      v6 = __p;
    }

    v31[0] = v4;
    operator delete(v6);
  }

  if (v4 == v5)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
    {
LABEL_26:
      *v32 = 0u;
      v33 = 0u;
      *v31 = 0u;
      LODWORD(__p) = 2;
      (*(**(a1 + 8) + 208))(v26);
      if (v29 == 1 && v28)
      {
        (*(*v28 + 8))(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26[1]);
      }

      v19 = v32[1];
      if (v32[1])
      {
        v20 = v33;
        v21 = v32[1];
        if (v33 != v32[1])
        {
          do
          {
            webrtc::RtpEncodingParameters::~RtpEncodingParameters((v20 - 272));
          }

          while (v20 != v19);
          v21 = v32[1];
        }

        *&v33 = v19;
        operator delete(v21);
      }

      v22 = v31[0];
      if (v31[0])
      {
        v23 = v31[1];
        v24 = v31[0];
        if (v31[1] != v31[0])
        {
          do
          {
            v25 = *(v23 - 1);
            v23 -= 3;
            if (v25 < 0)
            {
              operator delete(*v23);
            }
          }

          while (v23 != v22);
          v24 = v31[0];
        }

        v31[1] = v22;
        operator delete(v24);
      }

      return;
    }

    switch(a2)
    {
      case 2:
        HIBYTE(v31[1]) = 4;
        p_p = (&__p + 4);
        if (&__p <= "data" && &__p + 4 > "data")
        {
          goto LABEL_44;
        }

        LODWORD(__p) = 1635017060;
        break;
      case 1:
        HIBYTE(v31[1]) = 5;
        p_p = (&__p + 5);
        v18 = "video";
        if (&__p > "video")
        {
LABEL_19:
          LODWORD(__p) = *v18;
          BYTE4(__p) = v18[4];
          break;
        }

        goto LABEL_18;
      case 0:
        HIBYTE(v31[1]) = 5;
        p_p = (&__p + 5);
        v18 = "audio";
        if (&__p > "audio")
        {
          goto LABEL_19;
        }

LABEL_18:
        if (&__p + 5 <= v18)
        {
          goto LABEL_19;
        }

LABEL_44:
        __break(1u);
        return;
      default:
        HIBYTE(v31[1]) = 0;
        p_p = &__p;
        break;
    }

    *p_p = 0;
    webrtc::webrtc_logging_impl::Log("\r\t\n\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    if (SHIBYTE(v31[1]) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_26;
  }
}

uint64_t webrtc::SdpOfferAnswerHandler::GetReceivingTransceiversOfType(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  (*(**(a2 + 8) + 64))(*(a2 + 8));
  v3 = (*(**(a2 + 8) + 64))(*(a2 + 8));
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  result = v5 - v4;
  if (v5 != v4)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::SdpOfferAnswerHandler::FindContentInfo(webrtc::SdpOfferAnswerHandler *this, const webrtc::SessionDescriptionInterface *a2, const webrtc::IceCandidateInterface *a3)
{
  (*(*a3 + 16))(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (((*(*a3 + 24))(a3) & 0x80000000) != 0)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        __p.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
        __p.__r_.__value_.__l.__size_ = 17;
        webrtc::webrtc_logging_impl::Log("\r\t\t\v\t", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
      }

      operator new();
    }

    v18 = (*(*a3 + 24))(a3);
    v19 = (*(*a2 + 32))(a2);
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v19[1] - *v19) >> 3);
    if (v20 > v18)
    {
      v21 = (*(*a2 + 32))(a2);
      v22 = *v21;
      if (0xCCCCCCCCCCCCCCCDLL * ((v21[1] - *v21) >> 3) <= v18)
      {
        goto LABEL_358;
      }

      *this = 0;
      *(this + 38) = 0;
      *(this + 2) = 0;
      *(this + 3) = 0;
      *(this + 1) = 0;
      *(this + 29) = 0;
      *(this + 5) = v22 + 40 * v18;
LABEL_32:
      *(this + 48) = 1;
      return;
    }

    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
LABEL_239:
      v105 = (*(*a3 + 24))(a3);
      v152[1] = 0;
      __len = 0x1600000000000000;
      v152[0] = 0;
      v107 = absl::numbers_internal::FastIntToBuffer(v105, v152, v106);
      v109 = (v107 - v152);
      if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
      {
        if (v152[1] < v109)
        {
          goto LABEL_360;
        }

        v110 = v152[0];
        v152[1] = (v107 - v152);
      }

      else
      {
        if (v109 > SHIBYTE(__len))
        {
          goto LABEL_360;
        }

        HIBYTE(__len) = v107 - v152;
        v110 = v152;
      }

      v109[v110] = 0;
      if ((__len & 0x8000000000000000) == 0)
      {
        v111 = HIBYTE(__len);
      }

      else
      {
        v111 = v152[1];
      }

      if ((__len & 0x8000000000000000) == 0)
      {
        v112 = 22;
      }

      else
      {
        v112 = (__len & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v112 - v111 < 0x12)
      {
        if (0x7FFFFFFFFFFFFFF6 - v112 >= v111 + 18 - v112)
        {
          operator new();
        }

LABEL_359:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if ((__len & 0x8000000000000000) == 0)
      {
        v113 = v152;
      }

      else
      {
        v113 = v152[0];
      }

      v114 = "Media line index (";
      if (v111)
      {
        if ((v111 & 0x8000000000000000) != 0)
        {
          goto LABEL_358;
        }

        v115 = v113 + v111 <= "Media line index (" || v113 > "Media line index (";
        v116 = 18;
        if (v115)
        {
          v116 = 0;
        }

        v114 = &aMediaLineIndex[v116];
        v117 = v152;
        if ((__len & 0x8000000000000000) != 0)
        {
          v117 = v152[0];
        }

        memmove(v117 + 18, v113, v111);
      }

      *v113 = *v114;
      *(v113 + 8) = *(v114 + 8);
      v118 = v111 + 18;
      if (SHIBYTE(__len) < 0)
      {
        v152[1] = (v111 + 18);
      }

      else
      {
        HIBYTE(__len) = v118 & 0x7F;
      }

      *(v113 + v118) = 0;
      v119 = __len;
      v154.__r_.__value_.__r.__words[2] = __len;
      *&v154.__r_.__value_.__l.__data_ = *v152;
      v152[1] = 0;
      __len = 0;
      v152[0] = 0;
      if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = 22;
      }

      else
      {
        v120 = (v154.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v121 = v154.__r_.__value_.__l.__size_;
      }

      if (v120 - v121 >= 0x22)
      {
        v122 = &v154;
        if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v122 = v154.__r_.__value_.__r.__words[0];
        }

        v123 = v122 + v121;
        if (v122 + v121 <= ") out of range (number of mlines: " && v123 + 34 > ") out of range (number of mlines: ")
        {
          goto LABEL_358;
        }

        qmemcpy(v123, ") out of range (number of mlines: ", 34);
        v124 = v121 + 34;
        if ((v119 & 0x8000000000000000) != 0)
        {
          v154.__r_.__value_.__l.__size_ = v121 + 34;
        }

        else
        {
          *(&v154.__r_.__value_.__s + 23) = v124 & 0x7F;
        }

        v122->__r_.__value_.__s.__data_[v124] = 0;
      }

      else
      {
        std::string::__grow_by_and_replace(&v154, v120, v121 - v120 + 34, v121, v121, 0, 0x22uLL, ") out of range (number of mlines: ");
      }

      v155 = v154;
      memset(&v154, 0, sizeof(v154));
      v150 = 0;
      v151 = 0x1600000000000000;
      v149 = 0;
      v125 = absl::numbers_internal::FastIntToBuffer(v20, &v149, v108);
      v126 = v125 - &v149;
      if ((SHIBYTE(v151) & 0x8000000000000000) != 0)
      {
        if (v150 >= v126)
        {
          v150 = v125 - &v149;
          *(v149 + v126) = 0;
          v127 = SHIBYTE(v151);
          if ((SHIBYTE(v151) & 0x8000000000000000) == 0)
          {
            goto LABEL_295;
          }

          goto LABEL_298;
        }
      }

      else if (v126 <= SHIBYTE(v151))
      {
        HIBYTE(v151) = v125 - &v149;
        *v125 = 0;
        v127 = SHIBYTE(v151);
        if ((SHIBYTE(v151) & 0x8000000000000000) == 0)
        {
LABEL_295:
          v128 = v127 == 0;
          v129 = &v149;
          goto LABEL_300;
        }

LABEL_298:
        v129 = v149;
        v127 = v150;
        v128 = v150 == 0;
        if (!v149 && v150)
        {
          goto LABEL_358;
        }

LABEL_300:
        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v130 = 22;
        }

        else
        {
          v130 = (v155.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v131 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v131 = v155.__r_.__value_.__l.__size_;
        }

        if (v130 - v131 >= v127)
        {
          if (!v128)
          {
            if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v132 = &v155;
            }

            else
            {
              v132 = v155.__r_.__value_.__r.__words[0];
            }

            if ((v127 & 0x8000000000000000) != 0)
            {
              goto LABEL_358;
            }

            v133 = v132 + v131;
            if (v132 + v131 <= v129 && &v133[v127] > v129)
            {
              goto LABEL_358;
            }

            v134 = v127;
            memmove(v133, v129, v127);
            v135 = v131 + v134;
            if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
            {
              v155.__r_.__value_.__l.__size_ = v131 + v134;
            }

            else
            {
              *(&v155.__r_.__value_.__s + 23) = v135 & 0x7F;
            }

            v132->__r_.__value_.__s.__data_[v135] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v155, v130, v131 + v127 - v130, v131, v131, 0, v127, v129);
        }

        v136 = v155.__r_.__value_.__r.__words[2];
        v159 = v155;
        memset(&v155, 0, sizeof(v155));
        v137 = HIBYTE(v136);
        v138 = SHIBYTE(v136);
        v139 = (v136 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v138 >= 0)
        {
          v140 = 22;
        }

        else
        {
          v140 = v139;
        }

        if (v138 >= 0)
        {
          v141 = v137;
        }

        else
        {
          v141 = v159.__r_.__value_.__l.__size_;
        }

        if (v140 - v141 >= 2)
        {
          v142 = v138 < 0;
          v143 = &v159;
          if (v142)
          {
            v143 = v159.__r_.__value_.__r.__words[0];
          }

          v144 = (v143 + v141);
          if (v143 + v141 <= ")." && v144 + 1 > ").")
          {
            goto LABEL_358;
          }

          *v144 = 11817;
          v145 = v141 + 2;
          if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
          {
            v159.__r_.__value_.__l.__size_ = v141 + 2;
          }

          else
          {
            *(&v159.__r_.__value_.__s + 23) = v145 & 0x7F;
          }

          v143->__r_.__value_.__s.__data_[v145] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v159, v140, v141 - v140 + 2, v141, v141, 0, 2uLL, ").");
        }

        __src = v159;
        memset(&v159, 0, sizeof(v159));
        v146 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v146 = __src.__r_.__value_.__l.__size_;
          p_src = __src.__r_.__value_.__r.__words[0];
          LODWORD(__p.__r_.__value_.__l.__data_) = 4;
          if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_359;
          }

          if (__src.__r_.__value_.__l.__size_ <= 0x16)
          {
LABEL_337:
            HIBYTE(v157) = v146;
            v148 = (&__p.__r_.__value_.__r.__words[1] + v146);
            if (&__p.__r_.__value_.__r.__words[1] <= p_src && v148 > p_src)
            {
              goto LABEL_358;
            }

            if (v146)
            {
              memmove(&__p.__r_.__value_.__r.__words[1], p_src, v146);
            }

            v148->__r_.__value_.__s.__data_[0] = 0;
            *v158 = 0;
            v158[4] = 0;
            v158[6] = 0;
            *this = __p.__r_.__value_.__l.__data_;
            *(this + 8) = *&__p.__r_.__value_.__r.__words[1];
            *(this + 3) = v157;
            *&__p.__r_.__value_.__r.__words[1] = 0uLL;
            v157 = 0;
            *(this + 8) = 0;
            *(this + 35) = *&v158[3];
            *(this + 40) = 0;
            *(this + 48) = 0;
            if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__src.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_347:
                if ((SHIBYTE(v151) & 0x80000000) == 0)
                {
                  goto LABEL_348;
                }

                goto LABEL_354;
              }
            }

            else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_347;
            }

            operator delete(v159.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v151) & 0x80000000) == 0)
            {
LABEL_348:
              if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_349;
              }

              goto LABEL_355;
            }

LABEL_354:
            operator delete(v149);
            if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_349:
              if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_356;
            }

LABEL_355:
            operator delete(v155.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_350:
              if ((SHIBYTE(__len) & 0x80000000) == 0)
              {
                return;
              }

              goto LABEL_357;
            }

LABEL_356:
            operator delete(v154.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__len) & 0x80000000) == 0)
            {
              return;
            }

LABEL_357:
            operator delete(v152[0]);
            return;
          }
        }

        else
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 4;
          p_src = &__src;
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) <= 0x16)
          {
            goto LABEL_337;
          }
        }

        operator new();
      }

LABEL_360:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v38 = (*(*a3 + 24))(a3);
    v154.__r_.__value_.__r.__words[2] = 0x1600000000000000;
    *&v154.__r_.__value_.__l.__data_ = 0uLL;
    v40 = absl::numbers_internal::FastIntToBuffer(v38, &v154, v39);
    v42 = v40 - &v154;
    if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v154.__r_.__value_.__l.__size_ < v42)
      {
        goto LABEL_360;
      }

      v43 = v154.__r_.__value_.__r.__words[0];
      v154.__r_.__value_.__l.__size_ = v40 - &v154;
    }

    else
    {
      if (v42 > SHIBYTE(v154.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_360;
      }

      *(&v154.__r_.__value_.__s + 23) = v40 - &v154;
      v43 = &v154;
    }

    v43->__r_.__value_.__s.__data_[v42] = 0;
    if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v154.__r_.__value_.__l.__size_;
    }

    if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = 22;
    }

    else
    {
      v50 = (v154.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v50 - v49 < 0x12)
    {
      if (0x7FFFFFFFFFFFFFF6 - v50 >= v49 + 18 - v50)
      {
        operator new();
      }

      goto LABEL_359;
    }

    if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v154;
    }

    else
    {
      v51 = v154.__r_.__value_.__r.__words[0];
    }

    v52 = "Media line index (";
    if (v49)
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_358;
      }

      v53 = v51 + v49 <= "Media line index (" || v51 > "Media line index (";
      v54 = 18;
      if (v53)
      {
        v54 = 0;
      }

      v52 = &aMediaLineIndex[v54];
      v55 = &v154;
      if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = v154.__r_.__value_.__r.__words[0];
      }

      memmove(&v55->__r_.__value_.__r.__words[2] + 2, v51, v49);
    }

    *&v51->__r_.__value_.__l.__data_ = *v52;
    LOWORD(v51->__r_.__value_.__r.__words[2]) = *(v52 + 8);
    v56 = v49 + 18;
    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
    {
      v154.__r_.__value_.__l.__size_ = v49 + 18;
    }

    else
    {
      *(&v154.__r_.__value_.__s + 23) = v56 & 0x7F;
    }

    v51->__r_.__value_.__s.__data_[v56] = 0;
    v80 = v154.__r_.__value_.__r.__words[2];
    v155 = v154;
    memset(&v154, 0, sizeof(v154));
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = 22;
    }

    else
    {
      v81 = (v155.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v82 = v155.__r_.__value_.__l.__size_;
    }

    if (v81 - v82 >= 0x22)
    {
      v83 = &v155;
      if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v83 = v155.__r_.__value_.__r.__words[0];
      }

      v84 = v83 + v82;
      if (v83 + v82 <= ") out of range (number of mlines: " && v84 + 34 > ") out of range (number of mlines: ")
      {
        goto LABEL_358;
      }

      qmemcpy(v84, ") out of range (number of mlines: ", 34);
      v85 = v82 + 34;
      if ((v80 & 0x8000000000000000) != 0)
      {
        v155.__r_.__value_.__l.__size_ = v82 + 34;
      }

      else
      {
        *(&v155.__r_.__value_.__s + 23) = v85 & 0x7F;
      }

      v83->__r_.__value_.__s.__data_[v85] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&v155, v81, v82 - v81 + 34, v82, v82, 0, 0x22uLL, ") out of range (number of mlines: ");
    }

    v159 = v155;
    memset(&v155, 0, sizeof(v155));
    v152[1] = 0;
    __len = 0x1600000000000000;
    v152[0] = 0;
    v86 = absl::numbers_internal::FastIntToBuffer(v20, v152, v41);
    v90 = (v86 - v152);
    if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
    {
      if (v152[1] < v90)
      {
        goto LABEL_360;
      }

      v152[1] = (v86 - v152);
      *(v152[0] + v90) = 0;
      v91 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
      {
        goto LABEL_193;
      }
    }

    else
    {
      if (v90 > SHIBYTE(__len))
      {
        goto LABEL_360;
      }

      HIBYTE(__len) = v86 - v152;
      *v86 = 0;
      v91 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) == 0)
      {
LABEL_193:
        v92 = v91 == 0;
        v93 = v152;
        goto LABEL_198;
      }
    }

    v93 = v152[0];
    v91 = v152[1];
    v92 = v152[1] == 0;
    if (!v152[0] && v152[1])
    {
      goto LABEL_358;
    }

LABEL_198:
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = 22;
    }

    else
    {
      v94 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v95 = v159.__r_.__value_.__l.__size_;
    }

    if (v94 - v95 >= v91)
    {
      if (!v92)
      {
        if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = &v159;
        }

        else
        {
          v96 = v159.__r_.__value_.__r.__words[0];
        }

        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_358;
        }

        v97 = v96 + v95;
        if (v96 + v95 <= v93 && &v97[v91] > v93)
        {
          goto LABEL_358;
        }

        v98 = v91;
        memmove(v97, v93, v91);
        v99 = v95 + v98;
        if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
        {
          v159.__r_.__value_.__l.__size_ = v95 + v98;
        }

        else
        {
          *(&v159.__r_.__value_.__s + 23) = v99 & 0x7F;
        }

        v96->__r_.__value_.__s.__data_[v99] = 0;
      }
    }

    else
    {
      std::string::__grow_by_and_replace(&v159, v94, v95 + v91 - v94, v95, v95, 0, v91, v93);
    }

    __src = v159;
    memset(&v159, 0, sizeof(v159));
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = 22;
    }

    else
    {
      v100 = (__src.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v101 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v101 = __src.__r_.__value_.__l.__size_;
    }

    if (v100 - v101 >= 2)
    {
      v102 = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v102 = __src.__r_.__value_.__r.__words[0];
      }

      v103 = (v102 + v101);
      if (v102 + v101 <= ")." && v103 + 1 > ").")
      {
        goto LABEL_358;
      }

      *v103 = 11817;
      v104 = v101 + 2;
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        __src.__r_.__value_.__l.__size_ = v101 + 2;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v104 & 0x7F;
      }

      v102->__r_.__value_.__s.__data_[v104] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&__src, v100, v101 - v100 + 2, v101, v101, 0, 2uLL, ").");
    }

    __p = __src;
    memset(&__src, 0, sizeof(__src));
    v149 = "INVALID_RANGE";
    v150 = 13;
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v100, v87, v101, v88, v89, v91, v93, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_235:
        if ((SHIBYTE(__len) & 0x80000000) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_286;
      }
    }

    else if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    operator delete(__src.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__len) & 0x80000000) == 0)
    {
LABEL_236:
      if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_287;
    }

LABEL_286:
    operator delete(v152[0]);
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_237:
      if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_238;
      }

      goto LABEL_288;
    }

LABEL_287:
    operator delete(v159.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_238:
      if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_239;
      }

LABEL_289:
      operator delete(v154.__r_.__value_.__l.__data_);
      goto LABEL_239;
    }

LABEL_288:
    operator delete(v155.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_289;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = (*(*a2 + 32))(a2);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 == v8)
  {
    goto LABEL_25;
  }

  v9 = v6;
  do
  {
    (*(*a3 + 16))(&__p, a3);
    v10 = *(v7 + 31);
    if (v10 >= 0)
    {
      v11 = *(v7 + 31);
    }

    else
    {
      v11 = *(v7 + 16);
    }

    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    if (v11 != v12)
    {
      v16 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_21;
    }

    if (v10 >= 0)
    {
      v14 = (v7 + 8);
    }

    else
    {
      v14 = *(v7 + 8);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v16 = memcmp(v14, p_p, v11) == 0;
    if (v13 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v16)
    {
      goto LABEL_24;
    }

    v7 += 40;
  }

  while (v7 != v8);
  v7 = v8;
LABEL_24:
  v8 = v9[1];
LABEL_25:
  if (v7 != v8)
  {
    *this = 0;
    *(this + 38) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
    *(this + 1) = 0;
    *(this + 29) = 0;
    *(this + 5) = v7;
    goto LABEL_32;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v23 = &v159;
    (*(*a3 + 16))(&v159, a3);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v159.__r_.__value_.__l.__size_;
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = 22;
    }

    else
    {
      v30 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v30 - v29 < 4)
    {
      if (0x7FFFFFFFFFFFFFF6 - v30 >= v29 + 4 - v30)
      {
        operator new();
      }

      goto LABEL_359;
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v159.__r_.__value_.__r.__words[0];
    }

    v44 = "Mid ";
    if (v29)
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        v45 = v23 + v29 <= "Mid " || v23 > "Mid ";
        v46 = 4;
        if (v45)
        {
          v46 = 0;
        }

        v44 = &aMid_6[v46];
        v47 = &v159;
        if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v159.__r_.__value_.__r.__words[0];
        }

        memmove(v47->__r_.__value_.__r.__words + 4, v23, v29);
        goto LABEL_63;
      }

LABEL_358:
      __break(1u);
      goto LABEL_359;
    }

LABEL_63:
    LODWORD(v23->__r_.__value_.__l.__data_) = *v44;
    v48 = v29 + 4;
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      v159.__r_.__value_.__l.__size_ = v29 + 4;
    }

    else
    {
      *(&v159.__r_.__value_.__s + 23) = v48 & 0x7F;
    }

    v23->__r_.__value_.__s.__data_[v48] = 0;
    v57 = v159.__r_.__value_.__r.__words[2];
    __src = v159;
    memset(&v159, 0, sizeof(v159));
    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = 22;
    }

    else
    {
      v58 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v57);
    }

    else
    {
      v59 = __src.__r_.__value_.__l.__size_;
    }

    if (v58 - v59 >= 0x34)
    {
      v60 = &__src;
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v60 = __src.__r_.__value_.__r.__words[0];
      }

      v61 = v60 + v59;
      if (v60 + v59 <= " specified but no media section with that mid found." && v61 + 52 > " specified but no media section with that mid found.")
      {
        goto LABEL_358;
      }

      qmemcpy(v61, " specified but no media section with that mid found.", 52);
      v62 = v59 + 52;
      if ((v57 & 0x8000000000000000) != 0)
      {
        __src.__r_.__value_.__l.__size_ = v59 + 52;
      }

      else
      {
        *(&__src.__r_.__value_.__s + 23) = v62 & 0x7F;
      }

      v60->__r_.__value_.__s.__data_[v62] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(&__src, v58, v59 - v58 + 52, v59, v59, 0, 0x34uLL, " specified but no media section with that mid found.");
    }

    __p = __src;
    memset(&__src, 0, sizeof(__src));
    v155.__r_.__value_.__r.__words[0] = "INVALID_PARAMETER";
    v155.__r_.__value_.__l.__size_ = 17;
    webrtc::webrtc_logging_impl::Log("\r\n\t\v\t", v58, v24, v59, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/sdp_offer_answer.cc");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_152;
      }

LABEL_111:
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_153:
        operator delete(v159.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

LABEL_152:
      operator delete(__src.__r_.__value_.__l.__data_);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_153;
      }
    }
  }

  v63 = &v155;
  (*(*a3 + 16))(&v155, a3);
  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v64 = v155.__r_.__value_.__l.__size_;
  }

  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = 22;
  }

  else
  {
    v65 = (v155.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v65 - v64 < 4)
  {
    if (0x7FFFFFFFFFFFFFF6 - v65 >= v64 + 4 - v65)
    {
      operator new();
    }

    goto LABEL_359;
  }

  if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v63 = v155.__r_.__value_.__r.__words[0];
  }

  v66 = "Mid ";
  if (v64)
  {
    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_358;
    }

    v67 = v63 + v64 <= "Mid " || v63 > "Mid ";
    v68 = 4;
    if (v67)
    {
      v68 = 0;
    }

    v66 = &aMid_6[v68];
    v69 = &v155;
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v69 = v155.__r_.__value_.__r.__words[0];
    }

    memmove(v69->__r_.__value_.__r.__words + 4, v63, v64);
  }

  LODWORD(v63->__r_.__value_.__l.__data_) = *v66;
  v70 = v64 + 4;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    v155.__r_.__value_.__l.__size_ = v64 + 4;
  }

  else
  {
    *(&v155.__r_.__value_.__s + 23) = v70 & 0x7F;
  }

  v63->__r_.__value_.__s.__data_[v70] = 0;
  v71 = v155.__r_.__value_.__r.__words[2];
  v159 = v155;
  memset(&v155, 0, sizeof(v155));
  if (v71 >= 0)
  {
    v72 = 22;
  }

  else
  {
    v72 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v71 >= 0)
  {
    v73 = HIBYTE(v71);
  }

  else
  {
    v73 = v159.__r_.__value_.__l.__size_;
  }

  if (v72 - v73 >= 0x34)
  {
    v74 = &v159;
    if (v71 < 0)
    {
      v74 = v159.__r_.__value_.__r.__words[0];
    }

    v75 = v74 + v73;
    if (v74 + v73 <= " specified but no media section with that mid found." && v75 + 52 > " specified but no media section with that mid found.")
    {
      goto LABEL_358;
    }

    qmemcpy(v75, " specified but no media section with that mid found.", 52);
    v76 = v73 + 52;
    if (v71 < 0)
    {
      v159.__r_.__value_.__l.__size_ = v73 + 52;
    }

    else
    {
      *(&v159.__r_.__value_.__s + 23) = v76 & 0x7F;
    }

    v74->__r_.__value_.__s.__data_[v76] = 0;
  }

  else
  {
    std::string::__grow_by_and_replace(&v159, v72, v73 - v72 + 52, v73, v73, 0, 0x34uLL, " specified but no media section with that mid found.");
  }

  __src = v159;
  memset(&v159, 0, sizeof(v159));
  v77 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 3;
    v78 = &__src;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) <= 0x16)
    {
      goto LABEL_158;
    }

LABEL_162:
    operator new();
  }

  v77 = __src.__r_.__value_.__l.__size_;
  v78 = __src.__r_.__value_.__r.__words[0];
  LODWORD(__p.__r_.__value_.__l.__data_) = 3;
  if (__src.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_359;
  }

  if (__src.__r_.__value_.__l.__size_ > 0x16)
  {
    goto LABEL_162;
  }

LABEL_158:
  HIBYTE(v157) = v77;
  v79 = (&__p.__r_.__value_.__r.__words[1] + v77);
  if (&__p.__r_.__value_.__r.__words[1] <= v78 && v79 > v78)
  {
    goto LABEL_358;
  }

  if (v77)
  {
    memmove(&__p.__r_.__value_.__r.__words[1], v78, v77);
  }

  v79->__r_.__value_.__s.__data_[0] = 0;
  *v158 = 0;
  v158[4] = 0;
  v158[6] = 0;
  *this = __p.__r_.__value_.__l.__data_;
  *(this + 8) = *&__p.__r_.__value_.__r.__words[1];
  *(this + 3) = v157;
  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  v157 = 0;
  *(this + 8) = 0;
  *(this + 35) = *&v158[3];
  *(this + 40) = 0;
  *(this + 48) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_171;
    }

LABEL_168:
    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_172:
      operator delete(v155.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

LABEL_171:
    operator delete(v159.__r_.__value_.__l.__data_);
    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_172;
    }
  }
}

uint64_t webrtc::SdpOfferAnswerHandler::DestroyMediaChannels(webrtc::SdpOfferAnswerHandler *this)
{
  result = (*(**(this + 1) + 64))(*(this + 1));
  if (result)
  {
    (*(**(this + 1) + 64))(*(this + 1));
    (*(**(this + 1) + 64))(*(this + 1));
    v3 = (*(**(this + 1) + 64))(*(this + 1));
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);
    result = v5 - v4;
    if (v5 != v4)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::StreamCollection>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 8, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::StreamCollection>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F190;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::StreamCollection>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F190;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 8);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::StreamCollection::at(webrtc::StreamCollection *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (a2 >= (*(this + 2) - v2) >> 3)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return *(v2 + 8 * a2);
}

uint64_t webrtc::StreamCollection::find(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    return 0;
  }

  while (1)
  {
    (*(**v2 + 32))(v14);
    v5 = *(a2 + 23);
    v6 = v15;
    v8 = v14[0];
    v7 = v14[1];
    if (v15 < 0)
    {
      v9 = v14[0];
    }

    else
    {
      v7 = v15;
      v9 = v14;
    }

    if ((v5 & 0x80u) == 0)
    {
      v10 = a2;
    }

    else
    {
      v5 = a2[1];
      v10 = *a2;
    }

    if (v5 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v5;
    }

    v12 = v5 == v7;
    if (memcmp(v9, v10, v11))
    {
      v12 = 0;
    }

    if (v6 < 0)
    {
      operator delete(v8);
    }

    if (v12)
    {
      break;
    }

    v2 += 8;
    if (v2 == *(a1 + 16))
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t webrtc::StreamCollection::FindAudioTrack(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (*(a1 + 16) == v3)
  {
    return 0;
  }

  v8[5] = v1;
  v8[6] = v2;
  v5 = 0;
  while (1)
  {
    (*(**(v3 + 8 * v5) + 56))(v8);
    if (v8[0])
    {
      break;
    }

    ++v5;
    v3 = *(a1 + 8);
    if (v5 >= (*(a1 + 16) - v3) >> 3)
    {
      return 0;
    }
  }

  v7 = v8[0];
  (*(*v8[0] + 8))(v8[0]);
  return v7;
}

uint64_t webrtc::StreamCollection::FindVideoTrack(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (*(a1 + 16) == v3)
  {
    return 0;
  }

  v8[5] = v1;
  v8[6] = v2;
  v5 = 0;
  while (1)
  {
    (*(**(v3 + 8 * v5) + 64))(v8);
    if (v8[0])
    {
      break;
    }

    ++v5;
    v3 = *(a1 + 8);
    if (v5 >= (*(a1 + 16) - v3) >> 3)
    {
      return 0;
    }
  }

  v7 = v8[0];
  (*(*v8[0] + 8))(v8[0]);
  return v7;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::Initialize(webrtc::PeerConnectionInterface::RTCConfiguration const&,std::unique_ptr<webrtc::RTCCertificateGeneratorInterface>,std::unique_ptr<webrtc::VideoBitrateAllocatorFactory>,webrtc::ConnectionContext *,webrtc::CodecLookupHelper *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::Initialize(webrtc::PeerConnectionInterface::RTCConfiguration const&,std::unique_ptr<webrtc::RTCCertificateGeneratorInterface>,std::unique_ptr<webrtc::VideoBitrateAllocatorFactory>,webrtc::ConnectionContext *,webrtc::CodecLookupHelper *)::$_0>,void ()(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F1E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::Initialize(webrtc::PeerConnectionInterface::RTCConfiguration const&,std::unique_ptr<webrtc::RTCCertificateGeneratorInterface>,std::unique_ptr<webrtc::VideoBitrateAllocatorFactory>,webrtc::ConnectionContext *,webrtc::CodecLookupHelper *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::Initialize(webrtc::PeerConnectionInterface::RTCConfiguration const&,std::unique_ptr<webrtc::RTCCertificateGeneratorInterface>,std::unique_ptr<webrtc::VideoBitrateAllocatorFactory>,webrtc::ConnectionContext *,webrtc::CodecLookupHelper *)::$_0>,void ()(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)>::operator()(uint64_t a1, atomic_uint **a2)
{
  v3 = (*(**(*(a1 + 8) + 8) + 104))(*(*(a1 + 8) + 8));

  return webrtc::JsepTransportController::SetLocalCertificate(v3, a2);
}

void webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace::AppendIceCredentialsFromSessionDescription(webrtc::SdpOfferAnswerHandler::LocalIceCredentialsToReplace *this, const webrtc::SessionDescriptionInterface *a2)
{
  v3 = (*(*a2 + 32))(a2);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  while (v4 != v5)
  {
    if (*(v4 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v6, *(v4 + 48), *(v4 + 56));
      if ((*(v4 + 95) & 0x80000000) == 0)
      {
LABEL_6:
        __p = *(v4 + 72);
        std::__tree<std::pair<std::string,std::string>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(this, &v6);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(v4 + 48);
      if ((*(v4 + 95) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    std::string::__init_copy_ctor_external(&__p, *(v4 + 72), *(v4 + 80));
    std::__tree<std::pair<std::string,std::string>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(this, &v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_3;
    }

LABEL_11:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_12:
      operator delete(v6.__r_.__value_.__l.__data_);
    }

LABEL_3:
    v4 += 112;
  }
}

uint64_t std::__tree<std::pair<std::string,std::string>>::__emplace_unique_key_args<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(uint64_t a1, void *a2)
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
      if ((std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(a2, v2 + 4) & 0x80) == 0)
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

    if ((std::operator<=>[abi:sn200100]<std::string,std::string,std::string,std::string>(v5 + 4, a2) & 0x80) == 0)
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

void *std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>::vector[abi:sn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

uint64_t webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::scoped_refptr<webrtc::DtlsTransport> webrtc::Thread::BlockingCall<webrtc::anonymous namespace::LookupDtlsTransportByMid(webrtc::Thread*,webrtc::JsepTransportController *,std::string const&)::$_0,webrtc::scoped_refptr<webrtc::DtlsTransport>,void>(webrtc::anonymous namespace::LookupDtlsTransportByMid(webrtc::Thread*,webrtc::JsepTransportController *,std::string const&)::$_0 &&,webrtc::Location const&)::{lambda(void)#1}>(uint64_t **a1)
{
  v2 = a1[1];
  v3 = *v2;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(*v2 + 408, v2[1]);
  if ((v3 + 416) == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4[7];
    if (!v5)
    {
      result = **a1;
      **a1 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    v6 = *(v5 + 104);
    if (v6)
    {
      (**v6)(v6);
      result = **a1;
      **a1 = v6;
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  result = **a1;
  **a1 = v6;
  if (!result)
  {
    return result;
  }

LABEL_8:
  v8 = *(*result + 8);

  return v8();
}

void **std::vector<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>::~vector[abi:sn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::__tree<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::__map_value_compare<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>,std::less<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>>,true>,std::allocator<std::__value_type<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,webrtc::TransceiverStableState>>>::__emplace_unique_key_args<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>>,std::piecewise_construct_t const&,std::tuple<webrtc::scoped_refptr<webrtc::RtpTransceiverProxyWithInternal<webrtc::RtpTransceiver>> const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SetAsSessionError(webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation *this)
{
  v1 = *this;
  v2 = this + 72;
  if (*(this + 95) < 0)
  {
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_30;
    }
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_31;
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  HIBYTE(v10) = v3;
  v4 = __p + v3;
  if (__p <= v2 && v4 > v2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v3)
  {
    memmove(__p, v2, v3);
  }

  *v4 = 0;
  if (*(v1 + 256) == 1 || (*(v1 + 256) = 1, v6 = (v1 + 264), (v1 + 264) == __p))
  {
LABEL_26:
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (*(v1 + 287) < 0)
  {
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v10 >= 0)
    {
      v8 = HIBYTE(v10);
    }

    else
    {
      v8 = __p[1];
    }

    std::string::__assign_no_alias<false>(v6, v7, v8);
    goto LABEL_26;
  }

  if (v10 < 0)
  {
    std::string::__assign_no_alias<true>(v6, __p[0], __p[1]);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

LABEL_29:
    operator delete(__p[0]);
    return;
  }

  *&v6->__r_.__value_.__l.__data_ = *__p;
  *(v1 + 280) = v10;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_29;
  }
}

double webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SetError(uint64_t a1, int a2, __int128 *__src)
{
  v3 = __src;
  v5 = *(__src + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(__src + 1);
    v9 = a2;
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }

    v3 = *__src;
    if (v5 <= 0x16)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new();
  }

  v9 = a2;
  if (v5 > 0x16)
  {
    goto LABEL_6;
  }

LABEL_3:
  HIBYTE(v11) = v5;
  v6 = (&v10 + v5);
  if (&v10 <= v3 && v6 > v3)
  {
    __break(1u);
LABEL_17:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v5)
  {
    memmove(&v10, v3, v5);
  }

  *v6 = 0;
  *v12 = 0;
  v12[4] = 0;
  v12[6] = 0;
  *(a1 + 64) = v9;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  result = *&v10;
  *(a1 + 72) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = *v12;
  *(a1 + 99) = *&v12[3];
  return result;
}

void std::vector<std::pair<webrtc::Codec,webrtc::Codec>>::__emplace_back_slow_path<std::pair<webrtc::Codec,webrtc::Codec>>(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 <= 0x97B425ED097B42)
  {
    if (0x97B425ED097B426 * ((a1[2] - v1) >> 4) > v2)
    {
      v2 = 0x97B425ED097B426 * ((a1[2] - v1) >> 4);
    }

    if (0x84BDA12F684BDA13 * ((a1[2] - v1) >> 4) >= 0x4BDA12F684BDA1)
    {
      v2 = 0x97B425ED097B42;
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

void *std::vector<std::pair<webrtc::Codec,webrtc::Codec>>::vector[abi:sn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x84BDA12F684BDA13 * ((v2 - *a2) >> 4) < 0x97B425ED097B43)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void webrtc::MediaSessionOptions::~MediaSessionOptions(webrtc::MediaSessionOptions *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = *(this + 11);
    if (v3 == v2)
    {
LABEL_11:
      *(this + 12) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(this + 11);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v6 = *(this + 8);
  if (v6)
  {
    v7 = *(this + 9);
    v8 = *(this + 8);
    if (v7 != v6)
    {
      do
      {
        webrtc::MediaDescriptionOptions::~MediaDescriptionOptions((v7 - 136));
      }

      while (v7 != v6);
      v8 = *(this + 8);
    }

    *(this + 9) = v6;
    operator delete(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    *(this + 6) = v9;
    operator delete(v9);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::~RemoteDescriptionOperation(webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation *this, uint64_t a2, char *a3)
{
  webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::SignalCompletion(this, a2, a3);
  v4 = *(this + 7);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    JUMPOUT(0x2734758F8);
  }

  v5 = this + 32;
  (*(*v4 + 48))(v4);
  std::__tree<webrtc::SocketAddress>::destroy(this + 104, *(this + 14));
  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
    v6 = *(this + 7);
    if (v6 != v5)
    {
LABEL_4:
      if (v6)
      {
        (*(*v6 + 40))(v6);
      }

      v7 = *(this + 3);
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(this + 7);
    if (v6 != v5)
    {
      goto LABEL_4;
    }
  }

  (*(*v6 + 32))(v6);
  v7 = *(this + 3);
  if (v7)
  {
LABEL_7:
    (*(*v7 + 8))(v7);
  }

LABEL_8:
  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_0>,void ()(webrtc::AudioTrackInterface *,webrtc::MediaStreamInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F230;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_0>,void ()(webrtc::AudioTrackInterface *,webrtc::MediaStreamInterface *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  result = (*(**(v3 + 8) + 184))(*(v3 + 8));
  if ((result & 1) == 0)
  {
    v7 = (*(**(v3 + 8) + 64))(*(v3 + 8));
    webrtc::RtpTransmissionManager::AddAudioTrack(v7, v4, v5);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_1>,void ()(webrtc::AudioTrackInterface *,webrtc::MediaStreamInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F278;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_1>,void ()(webrtc::AudioTrackInterface *,webrtc::MediaStreamInterface *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (((*(**(v2 + 1) + 184))(*(v2 + 1)) & 1) == 0)
  {
    v4 = (*(**(v2 + 1) + 64))(*(v2 + 1));
    webrtc::RtpTransmissionManager::RemoveAudioTrack(v4, v3);

    webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v2);
  }
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_2,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_2>,void ()(webrtc::VideoTrackInterface *,webrtc::MediaStreamInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F2C0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_2,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_2>,void ()(webrtc::VideoTrackInterface *,webrtc::MediaStreamInterface *)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  result = (*(**(v3 + 8) + 184))(*(v3 + 8));
  if ((result & 1) == 0)
  {
    v7 = (*(**(v3 + 8) + 64))(*(v3 + 8));
    webrtc::RtpTransmissionManager::AddVideoTrack(v7, v4, v5);
  }

  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_3,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_3>,void ()(webrtc::VideoTrackInterface *,webrtc::MediaStreamInterface *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F308;
  a2[1] = v2;
  return result;
}

void std::__function::__func<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_3,std::allocator<webrtc::SdpOfferAnswerHandler::AddStream(webrtc::MediaStreamInterface *)::$_3>,void ()(webrtc::VideoTrackInterface *,webrtc::MediaStreamInterface *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (((*(**(v2 + 1) + 184))(*(v2 + 1)) & 1) == 0)
  {
    v4 = (*(**(v2 + 1) + 64))(*(v2 + 1));
    webrtc::RtpTransmissionManager::RemoveVideoTrack(v4, v3);

    webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v2);
  }
}

void std::vector<webrtc::scoped_refptr<webrtc::MediaStreamInterface>>::__insert_with_size[abi:sn200100]<std::__wrap_iter<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>,std::__wrap_iter<webrtc::scoped_refptr<webrtc::MediaStreamInterface>*>>(uint64_t *a1, char *a2, void *a3, void (****a4)(void), uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = a3;
  v7 = a2;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 3)
  {
    v15 = v10 - a2;
    v16 = (v10 - a2) >> 3;
    if (v16 < a5)
    {
      v18 = (a3 + v15);
      v96 = (a3 + v15);
      v19 = a1[1];
      v20 = v19;
      if ((a3 + v15) != a4)
      {
        while (v20)
        {
          v27 = *v18;
          *v20 = *v18;
          if (v27)
          {
            (**v27)(v27);
          }

          ++v18;
          v20 += 8;
          v19 += 8;
          if (v18 == a4)
          {
            goto LABEL_14;
          }
        }

LABEL_112:
        __break(1u);
LABEL_113:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_14:
      a1[1] = v19;
      if (v16 < 1)
      {
        return;
      }

      v21 = 8 * a5;
      v22 = (v19 - 8 * a5);
      if (v22 >= v10)
      {
        v26 = v19;
      }

      else
      {
        if (v10 <= (v22 + 1))
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = v10;
        }

        v24 = v21 + ~v19;
        v25 = v23 + v24;
        if (v25 > 0xC7)
        {
          v79 = v19 + 8 - v21;
          if (v10 > v79)
          {
            v79 = v10;
          }

          v80 = v19 + 8 + ((v79 + v24) & 0xFFFFFFFFFFFFFFF8);
          if (v22 >= v80 || (v81 = v80 - v21, v26 = v19, v19 >= v81))
          {
            v82 = (v25 >> 3) + 1;
            v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
            v22 = (v22 + v83);
            v26 = (v19 + v83);
            v84 = (v19 + 16);
            v85 = (v19 + 16 - v21);
            v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v87 = *(v85 - 1);
              v88 = *v85;
              *(v85 - 1) = 0uLL;
              *v85 = 0uLL;
              *(v84 - 1) = v87;
              *v84 = v88;
              v84 += 2;
              v85 += 2;
              v86 -= 4;
            }

            while (v86);
            if (v82 == (v82 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_100;
            }
          }
        }

        else
        {
          v26 = v19;
        }

        do
        {
          v89 = *v22;
          *v22++ = 0;
          *v26++ = v89;
        }

        while (v22 < v10);
      }

LABEL_100:
      a1[1] = v26;
      if (v20 != &v7[8 * a5])
      {
        v90 = (v19 - 8);
        v91 = &v7[v21 - v19];
        v92 = (v19 - 8 - v21);
        do
        {
          v93 = *v92;
          *v92 = 0;
          v94 = *v90;
          *v90 = v93;
          if (v94)
          {
            (*(*v94 + 8))(v94);
          }

          --v90;
          --v92;
          v91 += 8;
        }

        while (v91);
      }

      if (v10 != v7)
      {
        do
        {
          v95 = *v6;
          if (*v6)
          {
            (**v95)(*v6);
          }

          if (*v7)
          {
            (*(**v7 + 8))(*v7);
          }

          *v7 = v95;
          v7 += 8;
          ++v6;
        }

        while (v6 != v96);
      }

      return;
    }

    v28 = 8 * a5;
    v29 = (v10 - 8 * a5);
    if (v29 >= v10)
    {
      v33 = a1[1];
    }

    else
    {
      if (v10 <= (v29 + 1))
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = a1[1];
      }

      v31 = v28 + ~v10;
      v32 = v30 + v31;
      if (v32 > 0xC7)
      {
        v61 = v10 + 8 - v28;
        if (v10 > v61)
        {
          v61 = a1[1];
        }

        v62 = (v61 + v31) & 0xFFFFFFFFFFFFFFF8;
        v63 = v29 >= v10 + 8 + v62 || v10 >= v62 + v10 - v28 + 8;
        v33 = a1[1];
        if (v63)
        {
          v64 = (v32 >> 3) + 1;
          v65 = 8 * (v64 & 0x3FFFFFFFFFFFFFFCLL);
          v29 = (v29 + v65);
          v33 = (v10 + v65);
          v66 = (v10 + 16);
          v67 = (v10 + 16 - v28);
          v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v69 = *(v67 - 1);
            v70 = *v67;
            *(v67 - 1) = 0uLL;
            *v67 = 0uLL;
            *(v66 - 1) = v69;
            *v66 = v70;
            v66 += 2;
            v67 += 2;
            v68 -= 4;
          }

          while (v68);
          if (v64 == (v64 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_81;
          }
        }
      }

      else
      {
        v33 = a1[1];
      }

      do
      {
        v71 = *v29;
        *v29++ = 0;
        *v33++ = v71;
      }

      while (v29 < v10);
    }

LABEL_81:
    a1[1] = v33;
    if (v10 != &a2[8 * a5])
    {
      v72 = (v10 - 8);
      v73 = &a2[v28 - v10];
      v74 = (v10 - 8 - v28);
      do
      {
        v75 = *v74;
        *v74 = 0;
        v76 = *v72;
        *v72 = v75;
        if (v76)
        {
          (*(*v76 + 8))(v76);
        }

        --v72;
        --v74;
        v73 += 8;
      }

      while (v73);
    }

    v77 = &v6[a5];
    do
    {
      v78 = *v6;
      if (*v6)
      {
        (**v78)(*v6);
      }

      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }

      *v7 = v78;
      v7 += 8;
      ++v6;
    }

    while (v6 != v77);
    return;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 3);
  if (v12 >> 61)
  {
    goto LABEL_113;
  }

  v13 = v9 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v34 = a2 - v11;
  v35 = (a2 - v11) >> 3;
  v97 = 8 * v35;
  v36 = 8 * a5;
  v37 = 8 * v35 + 8 * a5;
  v38 = (8 * v35);
  do
  {
    if (!v38)
    {
      goto LABEL_112;
    }

    v39 = *v6;
    *v38 = *v6;
    if (v39)
    {
      (**v39)(v39);
    }

    ++v38;
    ++v6;
    v36 -= 8;
  }

  while (v36);
  v40 = a1[1];
  v41 = v7;
  v42 = v40 - v7;
  if (v40 == v7)
  {
    goto LABEL_54;
  }

  v43 = v42 - 8;
  if ((v42 - 8) < 0xA8)
  {
    v44 = v7;
    v45 = v37;
    do
    {
LABEL_47:
      v54 = *v44;
      *v44 = 0;
      v44 += 8;
      *v45++ = v54;
    }

    while (v44 != v40);
    goto LABEL_48;
  }

  v46 = v7 >= v34 + 8 * a5 + (v43 & 0xFFFFFFFFFFFFFFF8) + 8 || v37 >= &v7[(v43 & 0xFFFFFFFFFFFFFFF8) + 8];
  v44 = v7;
  v45 = v37;
  if (!v46)
  {
    goto LABEL_47;
  }

  v47 = (v43 >> 3) + 1;
  v48 = 8 * (v47 & 0x3FFFFFFFFFFFFFFCLL);
  v44 = &v7[v48];
  v45 = (v37 + v48);
  v49 = (8 * v35 + 8 * a5 + 16);
  v50 = (v7 + 16);
  v51 = v47 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v52 = *(v50 - 1);
    v53 = *v50;
    *(v50 - 1) = 0uLL;
    *v50 = 0uLL;
    *(v49 - 1) = v52;
    *v49 = v53;
    v49 += 2;
    v50 += 2;
    v51 -= 4;
  }

  while (v51);
  if (v47 != (v47 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_47;
  }

LABEL_48:
  v55 = v7;
  do
  {
    if (!v55)
    {
      goto LABEL_112;
    }

    if (*v55)
    {
      (*(**v55 + 8))(*v55);
    }

    v55 += 8;
  }

  while (v55 != v40);
  v41 = a1[1];
LABEL_54:
  a1[1] = v7;
  v56 = *a1;
  v57 = v97 + *a1 - v7;
  if (*a1 != v7)
  {
    v58 = *a1;
    v59 = (v97 + *a1 - v7);
    do
    {
      if (!v59)
      {
        goto LABEL_112;
      }

      v60 = *v58;
      *v58 = 0;
      v58 += 8;
      *v59++ = v60;
    }

    while (v58 != v7);
    do
    {
      if (!v56)
      {
        goto LABEL_112;
      }

      if (*v56)
      {
        (*(**v56 + 8))(*v56);
      }

      v56 += 8;
    }

    while (v56 != v7);
    v56 = *a1;
  }

  *a1 = v57;
  a1[1] = v37 + v41 - v7;
  a1[2] = 0;
  if (v56)
  {

    operator delete(v56);
  }
}

void std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions const&>(void *a1)
{
  v1 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x1E1E1E1E1E1E1E1)
  {
    if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
    }

    if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
    {
      v2 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v2 = v1;
    }

    v3 = a1;
    if (v2)
    {
      if (v2 <= 0x1E1E1E1E1E1E1E1)
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

webrtc::MediaDescriptionOptions *std::vector<webrtc::MediaDescriptionOptions>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 == result)
  {
LABEL_8:
    a2[1] = v7;
    *a1 = v7;
    *(a1 + 8) = result;
    a2[1] = result;
    v13 = *(a1 + 8);
    *(a1 + 8) = a2[2];
    a2[2] = v13;
    v14 = *(a1 + 16);
    *(a1 + 16) = a2[3];
    a2[3] = v14;
    *a2 = a2[1];
  }

  else
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    while (v9)
    {
      *v9 = *v8;
      v10 = *(v8 + 8);
      *(v9 + 3) = *(v8 + 3);
      *(v9 + 8) = v10;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = 0;
      v11 = *(v8 + 4);
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 4) = v11;
      *(v9 + 5) = 0;
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 7) = *(v8 + 7);
      *(v8 + 5) = 0;
      *(v8 + 6) = 0;
      *(v8 + 7) = 0;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 10) = 0;
      *(v9 + 4) = *(v8 + 4);
      *(v9 + 10) = *(v8 + 10);
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 13) = 0;
      *(v9 + 88) = *(v8 + 88);
      *(v9 + 13) = *(v8 + 13);
      *(v8 + 11) = 0;
      *(v8 + 12) = 0;
      *(v8 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      *(v9 + 16) = 0;
      *(v9 + 7) = *(v8 + 7);
      *(v9 + 16) = *(v8 + 16);
      *(v8 + 14) = 0;
      *(v8 + 15) = 0;
      *(v8 + 16) = 0;
      v8 = (v8 + 136);
      v9 += 136;
      if (v8 == v5)
      {
        while (result)
        {
          webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(result);
          result = (v12 + 136);
          if (result == v5)
          {
            result = *a1;
            goto LABEL_8;
          }
        }

        break;
      }
    }

    __break(1u);
  }

  return result;
}

void webrtc::MediaDescriptionOptions::~MediaDescriptionOptions(webrtc::MediaDescriptionOptions *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v3 != v2)
    {
      v5 = v3 - 27;
      v6 = v3 - 27;
      v7 = v3 - 27;
      do
      {
        v8 = *v7;
        v7 -= 27;
        (*v8)(v6);
        v5 -= 27;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  v10 = *(this + 11);
  if (v10)
  {
    v11 = *(this + 12);
    v12 = *(this + 11);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 17);
        v11 -= 5;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = *(this + 11);
    }

    *(this + 12) = v10;
    operator delete(v12);
  }

  v14 = *(this + 8);
  if (v14)
  {
    v15 = *(this + 9);
    v16 = *(this + 8);
    if (v15 != v14)
    {
      v17 = v15 - 20;
      v18 = v15 - 20;
      v19 = v15 - 20;
      do
      {
        v20 = *v19;
        v19 -= 20;
        (*v20)(v18);
        v17 -= 20;
        v9 = v18 == v14;
        v18 = v19;
      }

      while (!v9);
      v16 = *(this + 8);
    }

    *(this + 9) = v14;
    operator delete(v16);
  }

  v21 = *(this + 5);
  if (v21)
  {
    v22 = *(this + 6);
    v23 = *(this + 5);
    if (v22 != v21)
    {
      do
      {
        webrtc::SenderOptions::~SenderOptions((v22 - 104));
      }

      while (v22 != v21);
      v23 = *(this + 5);
    }

    *(this + 6) = v21;
    operator delete(v23);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void std::vector<webrtc::MediaDescriptionOptions>::__emplace_back_slow_path<webrtc::MediaDescriptionOptions>(void *a1)
{
  v1 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x1E1E1E1E1E1E1E1)
  {
    if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
    }

    if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
    {
      v2 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v2 = v1;
    }

    v3 = a1;
    if (v2)
    {
      if (v2 <= 0x1E1E1E1E1E1E1E1)
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

void std::vector<webrtc::RidDescription>::__emplace_back_slow_path<webrtc::RidDescription const&>(void *a1)
{
  v1 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v1 <= 0x333333333333333)
  {
    if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v1)
    {
      v1 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
    {
      v2 = 0x333333333333333;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x333333333333333)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

webrtc::MediaDescriptionOptions *webrtc::MediaDescriptionOptions::MediaDescriptionOptions(webrtc::MediaDescriptionOptions *this, const webrtc::MediaDescriptionOptions *a2)
{
  *this = *a2;
  v4 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 1), *(a2 + 2));
    *(this + 4) = *(a2 + 4);
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 7) = 0;
    v9 = *(a2 + 5);
    v10 = *(a2 + 6);
    v8 = v10 - v9;
    if (v10 == v9)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((0x4EC4EC4EC4EC4EC5 * (v8 >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v5 = *(a2 + 8);
  v4->__r_.__value_.__r.__words[2] = *(a2 + 3);
  *&v4->__r_.__value_.__l.__data_ = v5;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = v7 - v6;
  if (v7 != v6)
  {
    goto LABEL_5;
  }

LABEL_7:
  std::vector<webrtc::RtpCodecCapability>::vector[abi:sn200100](this + 8, a2 + 8);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v11 = *(a2 + 11);
  v12 = *(a2 + 12);
  if (v12 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v13 = *(a2 + 14);
  v14 = *(a2 + 15);
  if (v14 != v13)
  {
    if (0x84BDA12F684BDA13 * ((v14 - v13) >> 3) < 0x12F684BDA12F685)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return this;
}

void std::vector<webrtc::RtpSenderInfo>::__emplace_back_slow_path<webrtc::RtpSenderInfo>(void *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v1 <= 0x492492492492492)
  {
    if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v1)
    {
      v1 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
    {
      v2 = 0x492492492492492;
    }

    else
    {
      v2 = v1;
    }

    if (v2)
    {
      if (v2 <= 0x492492492492492)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    __break(1u);
  }

  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
}

void *std::__function::__func<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0>,void ()(void)>::~__func(void *result)
{
  *result = &unk_28829F350;
  v1 = result[1];
  if (v1)
  {
    if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
      return v2;
    }
  }

  return result;
}

void std::__function::__func<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28829F350;
  v2 = a1[1];
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F350;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
  }

  a2[2] = *(result + 16);
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    if (atomic_fetch_add((result + 4), 0xFFFFFFFF) == 1)
    {
      JUMPOUT(0x2743DA540);
    }
  }

  return result;
}

void std::__function::__func<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2 && atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    v3 = a1;
    MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
    a1 = v3;
  }

  operator delete(a1);
}

void std::__function::__func<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0,std::allocator<webrtc::SdpOfferAnswerHandler::SdpOfferAnswerHandler(webrtc::PeerConnectionSdpMethods *,webrtc::ConnectionContext *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (((*(**(v2 + 8) + 184))(*(v2 + 8)) & 1) == 0 && *(v2 + 240) == 1)
        {
          *(v2 + 240) = 0;
          if ((*(**(v2 + 8) + 192))(*(v2 + 8)))
          {

            webrtc::SdpOfferAnswerHandler::UpdateNegotiationNeeded(v2);
          }
        }
      }
    }
  }
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::CreateOffer(webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 7;
  v3 = a1[10];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
LABEL_5:
    (*(*v4 + 8))(v4);
  }

LABEL_6:
  v5 = a1[1];
  if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::CreateOffer(webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 7;
  v3 = a1[10];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[3];
    if (!v4)
    {
LABEL_6:
      v5 = a1[1];
      if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      JUMPOUT(0x2743DA540);
    }
  }

  (*(*v4 + 8))(v4);
  goto LABEL_6;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::CreateOffer(webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&)::$_1>::Run(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  a1[3] = 0;
  v3 = a1[10];
  if (v3)
  {
    if (v3 == a1 + 7)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
      if (!v1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = a1[10];
      a1[10] = 0;
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  if (*v1 == 1 && v2 != 0)
  {
    operator new();
  }

LABEL_13:
  operator new();
}

uint64_t webrtc::RefCountedObject<webrtc::CreateSessionDescriptionObserverOperationWrapper>::RefCountedObject<webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver> const,std::function<void ()(void)>>(uint64_t a1, void (***a2)(void), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    (**a2)(a2);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    v9 = 0;
    *a1 = &unk_28829F408;
    *(a1 + 8) = a2;
    goto LABEL_10;
  }

  if (v6 != a3)
  {
    v9 = *(a3 + 24);
    *(a3 + 24) = 0;
    *a1 = &unk_28829F408;
    *(a1 + 8) = a2;
    goto LABEL_7;
  }

  v9 = v8;
  (*(*v6 + 24))(v6, v8);
  v6 = v9;
  *a1 = &unk_28829F408;
  *(a1 + 8) = a2;
  if (!v6)
  {
LABEL_10:
    *(a1 + 40) = 0;
    goto LABEL_11;
  }

LABEL_7:
  if (v6 == v8)
  {
    *(a1 + 40) = a1 + 16;
    (*(*v6 + 24))(v6);
    if (v9 == v8)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))();
    }
  }

  else
  {
    *(a1 + 40) = v6;
  }

LABEL_11:
  *a1 = &unk_28829F3C0;
  *(a1 + 48) = 0;
  return a1;
}

BOOL webrtc::RefCountedObject<webrtc::CreateSessionDescriptionObserverOperationWrapper>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::CreateSessionDescriptionObserverOperationWrapper>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F408;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[1];
    if (!v4)
    {
      return a1;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
LABEL_5:
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::CreateSessionDescriptionObserverOperationWrapper>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F408;
  v2 = a1 + 2;
  v3 = a1[5];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[1];
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[1];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::CreateSessionDescriptionObserverOperationWrapper::OnSuccess(webrtc::CreateSessionDescriptionObserverOperationWrapper *this, webrtc::SessionDescriptionInterface *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 48))(v3);
    v4 = *(**(this + 1) + 32);

    return v4();
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::CreateSessionDescriptionObserverOperationWrapper::OnFailure(v6);
  }
}

void webrtc::CreateSessionDescriptionObserverOperationWrapper::OnFailure(uint64_t a1, int *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(*v3 + 48))(v3);
    v5 = *(a1 + 8);
    v7 = *a2;
    *__p = *(a2 + 2);
    v9 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    v10[0] = a2[8];
    *(v10 + 3) = *(a2 + 35);
    (*(*v5 + 40))(v5, &v7);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:sn200100]();
    webrtc::RefCountedObject<webrtc::CreateSessionDescriptionObserverOperationWrapper>::HasOneRef(v6);
  }
}

BOOL webrtc::FinalRefCountedObject<webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter>::Release(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 40), 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    *a1 = &unk_28829F448;
    *(a1 + 8) = &unk_28829F488;
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = a1;
      (*(*v2 + 8))(*(a1 + 32));
      a1 = v3;
    }

    v4 = *(a1 + 16);
    if (v4 && atomic_fetch_add((v4 + 4), 0xFFFFFFFF) == 1)
    {
      v5 = a1;
      MEMORY[0x2743DA540](v4, 0x1000C404A09149ALL);
      a1 = v5;
    }

    MEMORY[0x2743DA540](a1, 0x10E1C406390733ALL);
  }

  return add != 1;
}

void *webrtc::FinalRefCountedObject<webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter>::~FinalRefCountedObject(void *a1)
{
  *a1 = &unk_28829F448;
  a1[1] = &unk_28829F488;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add((v3 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

BOOL non-virtual thunk towebrtc::FinalRefCountedObject<webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter>::Release(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 32), 0xFFFFFFFF);
  if (add == 1)
  {
    v2 = a1 - 8;
    *(a1 - 8) = &unk_28829F448;
    *a1 = &unk_28829F488;
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = a1;
      (*(*v3 + 8))(*(a1 + 24));
      a1 = v4;
    }

    v5 = *(a1 + 8);
    if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    MEMORY[0x2743DA540](v2, 0x10E1C406390733ALL);
  }

  return add != 1;
}

uint64_t non-virtual thunk towebrtc::FinalRefCountedObject<webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter>::~FinalRefCountedObject(void *a1)
{
  *(a1 - 1) = &unk_28829F448;
  *a1 = &unk_28829F488;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = a1[1];
  if (result && atomic_fetch_add((result + 4), 0xFFFFFFFF) == 1)
  {

    JUMPOUT(0x2743DA540);
  }

  return result;
}

void webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter::OnSetLocalDescriptionComplete(void *a1, int *a2)
{
  v2 = *a2;
  LODWORD(v8) = *a2;
  *__p = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v11[0] = a2[8];
  *(v11 + 3) = *(a2 + 35);
  v3 = a1[2];
  if (v3)
  {
    if (*v3 == 1)
    {
      v4 = a1[3];
      if (v4)
      {
        v6 = (*(**(v4 + 8) + 56))(*(v4 + 8));
        v7 = a1[4];
        if (v2)
        {
          webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionFailure(v6, v7, &v8);
        }

        webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionSuccess(v6, v7);
      }
    }
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter::OnSetRemoteDescriptionComplete(void *a1, int *a2)
{
  v2 = *a2;
  LODWORD(v8) = *a2;
  *__p = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v11[0] = a2[8];
  *(v11 + 3) = *(a2 + 35);
  v3 = a1[2];
  if (v3)
  {
    if (*v3 == 1)
    {
      v4 = a1[3];
      if (v4)
      {
        v6 = (*(**(v4 + 8) + 56))(*(v4 + 8));
        v7 = a1[4];
        if (v2)
        {
          webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionFailure(v6, v7, &v8);
        }

        webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionSuccess(v6, v7);
      }
    }
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void non-virtual thunk towebrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter::OnSetRemoteDescriptionComplete(void *a1, int *a2)
{
  v2 = *a2;
  LODWORD(v8) = *a2;
  *__p = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  v11[0] = a2[8];
  *(v11 + 3) = *(a2 + 35);
  v3 = a1[1];
  if (v3)
  {
    if (*v3 == 1)
    {
      v4 = a1[2];
      if (v4)
      {
        v6 = (*(**(v4 + 8) + 56))(*(v4 + 8));
        v7 = a1[3];
        if (v2)
        {
          webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionFailure(v6, v7, &v8);
        }

        webrtc::PeerConnectionMessageHandler::PostSetSessionDescriptionSuccess(v6, v7);
      }
    }
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *)::$_1>::Run(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  v3 = a1[3];
  v4 = a1[4];
  a1[3] = 0;
  a1[4] = 0;
  v5 = a1[8];
  if (v5)
  {
    if (v5 == a1 + 5)
    {
      v9 = v8;
      (*(*v5 + 24))(v5, v8);
      if (!v1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = a1[8];
      a1[8] = 0;
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v9 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  if (*v1 == 1 && v2 != 0)
  {
    operator new();
  }

LABEL_13:
  if (!v9)
  {
    std::__throw_bad_function_call[abi:sn200100]();
  }

  (*(*v9 + 48))(v9);
  result = v9;
  if (v9 == v8)
  {
    result = (*(*v9 + 32))(v9);
    if (v4)
    {
LABEL_19:
      result = (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v9)
    {
      result = (*(*v9 + 40))();
    }

    if (v4)
    {
      goto LABEL_19;
    }
  }

  if (v3)
  {
    result = (*(*v3 + 8))(v3);
  }

  if (v1)
  {
    if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
    {
      return MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
    }
  }

  return result;
}

void webrtc::FinalRefCountedObject<webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter>::~FinalRefCountedObject(void *a1)
{
  *a1 = &unk_28829F448;
  a1[1] = &unk_28829F488;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3 && atomic_fetch_add((v3 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::FinalRefCountedObject<webrtc::SdpOfferAnswerHandler::SetSessionDescriptionObserverAdapter>::~FinalRefCountedObject(void *a1)
{
  *(a1 - 1) = &unk_28829F448;
  *a1 = &unk_28829F488;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3 && atomic_fetch_add((v3 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_1>::Run(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  v3 = a1[3];
  v4 = a1[4];
  a1[3] = 0;
  a1[4] = 0;
  v5 = a1[8];
  if (v5)
  {
    if (v5 == a1 + 5)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
      if (!v1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = a1[8];
      a1[8] = 0;
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  if (*v1 != 1 || v2 == 0)
  {
LABEL_13:
    LODWORD(v10) = 10;
    operator new();
  }

  v9 = v3;
  v10 = v4;
  if (v3)
  {
    (**v3)(v3);
    webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(v2, &v10, &v9);
    (*(*v3 + 8))(v3);
    v7 = v10;
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(v2, &v10, &v9);
  v7 = v10;
  if (v10)
  {
LABEL_16:
    (*(*v7 + 8))(v7);
  }

LABEL_17:
  if (!v12)
  {
    std::__throw_bad_function_call[abi:sn200100]();
  }

  (*(*v12 + 48))(v12);
  result = v12;
  if (v12 == v11)
  {
    result = (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    result = (*(*v12 + 40))();
  }

  if (v3)
  {
    result = (*(*v3 + 8))(v3);
  }

  if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
  {
    return MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
  }

  return result;
}

BOOL webrtc::RefCountedObject<webrtc::SdpOfferAnswerHandler::ImplicitCreateSessionDescriptionObserver>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 18, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::SdpOfferAnswerHandler::ImplicitCreateSessionDescriptionObserver>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F5D0;
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[4];
  if (v4)
  {
LABEL_5:
    (*(*v4 + 8))(v4);
  }

LABEL_6:
  v5 = a1[2];
  if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::RefCountedObject<webrtc::SdpOfferAnswerHandler::ImplicitCreateSessionDescriptionObserver>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F5D0;
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    if (!v4)
    {
LABEL_6:
      v5 = a1[2];
      if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      JUMPOUT(0x2743DA540);
    }
  }

  (*(*v4 + 8))(v4);
  goto LABEL_6;
}

uint64_t webrtc::SdpOfferAnswerHandler::ImplicitCreateSessionDescriptionObserver::OnSuccess(webrtc::SdpOfferAnswerHandler::ImplicitCreateSessionDescriptionObserver *this, webrtc::SessionDescriptionInterface *a2)
{
  *(this + 8) = 1;
  v3 = *(this + 2);
  if (v3)
  {
    if (*v3 == 1)
    {
      v4 = *(this + 3);
      if (v4)
      {
        v14 = a2;
        v5 = *(this + 4);
        *(this + 4) = 0;
        v13 = v5;
        webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(v4, &v14, &v13);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v7 = *(this + 8);
        if (v7)
        {
          v8 = *(*v7 + 48);

          return v8();
        }

LABEL_18:
        v12 = std::__throw_bad_function_call[abi:sn200100]();
        return webrtc::SdpOfferAnswerHandler::ImplicitCreateSessionDescriptionObserver::OnFailure(v12);
      }
    }
  }

  v10 = *(this + 8);
  if (!v10)
  {
    goto LABEL_18;
  }

  result = (*(*v10 + 48))(v10);
  if (a2)
  {
    v11 = *(*a2 + 8);

    return v11(a2);
  }

  return result;
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 4;
  v3 = a1[7];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
LABEL_5:
    (*(*v4 + 8))(v4);
  }

LABEL_6:
  v5 = a1[1];
  if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 4;
  v3 = a1[7];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[3];
    if (!v4)
    {
LABEL_6:
      v5 = a1[1];
      if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      JUMPOUT(0x2743DA540);
    }
  }

  (*(*v4 + 8))(v4);
  goto LABEL_6;
}

uint64_t webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetLocalDescription(webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_1>::Run(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  a1[1] = 0;
  v4 = a1[3];
  a1[3] = 0;
  v5 = a1[7];
  if (!v5)
  {
    v20 = 0;
    v22 = 0;
    v6 = v4 + 40;
    v7 = *(v4 + 64);
    *(v4 + 64) = 0;
    if (v7 == v4 + 40)
    {
      goto LABEL_22;
    }

LABEL_11:
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    v8 = v22;
    if (!v22)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v5 != (a1 + 4))
  {
    v20 = v5;
    a1[7] = 0;
    goto LABEL_7;
  }

  v20 = v19;
  (*(*v5 + 24))(v5, v19);
  v5 = v20;
  if (!v20)
  {
    v22 = 0;
    v6 = v4 + 40;
    v7 = *(v4 + 64);
    *(v4 + 64) = 0;
    if (v7 == v4 + 40)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

LABEL_7:
  if (v5 == v19)
  {
    v22 = v21;
    (*(*v5 + 24))(v5, v21);
    v6 = v4 + 40;
    v7 = *(v4 + 64);
    *(v4 + 64) = 0;
    if (v7 == v4 + 40)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v22 = v5;
  v20 = 0;
  v6 = v4 + 40;
  v7 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v7 != v4 + 40)
  {
    goto LABEL_11;
  }

LABEL_22:
  (*(*v7 + 32))(v7);
  v8 = v22;
  if (!v22)
  {
LABEL_23:
    *(v4 + 64) = 0;
LABEL_24:
    if (!v2)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

LABEL_14:
  if (v8 == v21)
  {
    *(v4 + 64) = v6;
    (*(*v8 + 24))(v8, v6);
    if (v22 == v21)
    {
      (*(*v22 + 32))(v22);
      if (!v2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_24;
      }

      (*(*v22 + 40))(v22);
      if (!v2)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    *(v4 + 64) = v8;
    v22 = 0;
    if (!v2)
    {
      goto LABEL_30;
    }
  }

LABEL_25:
  if (*v2 != 1 || v3 == 0)
  {
LABEL_30:
    v18 = 10;
    operator new();
  }

  v10 = (*(*v3 + 16))(v3);
  if (v10 > 5)
  {
    goto LABEL_42;
  }

  if (((1 << v10) & 0x13) != 0)
  {
    if (!*v2)
    {
      v3 = 0;
    }

    v15 = -1;
    v16 = 65537;
    v17 = 1;
    v14 = v4;
    (**v4)(v4);
    webrtc::SdpOfferAnswerHandler::DoCreateOffer(v3, &v15, &v14);
    v11 = v14;
    if (!v14)
    {
      goto LABEL_42;
    }

LABEL_41:
    (*v11)[1](v11);
    goto LABEL_42;
  }

  if (((1 << v10) & 0xC) == 0)
  {
    operator new();
  }

  if (!*v2)
  {
    v3 = 0;
  }

  v15 = -1;
  v16 = 65537;
  v17 = 1;
  v13 = v4;
  (**v4)(v4);
  webrtc::SdpOfferAnswerHandler::DoCreateAnswer(v3, &v15, &v13);
  v11 = v13;
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    result = (*(*v4 + 8))(v4);
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    result = (*(*v4 + 8))(v4);
  }

  if (atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
  {
    return MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
  }

  return result;
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetRemoteDescription(webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetRemoteDescription(webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

uint64_t *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetRemoteDescription(webrtc::SetSessionDescriptionObserver *,webrtc::SessionDescriptionInterface *)::$_1>::Run(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  v3 = a1[3];
  v4 = a1[4];
  a1[3] = 0;
  a1[4] = 0;
  v5 = a1[8];
  if (v5)
  {
    if (v5 == a1 + 5)
    {
      v14 = v13;
      (*(*v5 + 24))(v5, v13);
      if (!v1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = a1[8];
      a1[8] = 0;
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v14 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  if (*v1 == 1 && v2 != 0)
  {
    operator new();
  }

LABEL_13:
  if (!v14)
  {
    v8 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::RemoteDescriptionOperation(v8, v9, v10, v11, v12);
  }

  (*(*v14 + 48))(v14);
  result = v14;
  if (v14 == v13)
  {
    result = (*(*v14 + 32))(v14);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v14)
    {
      result = (*(*v14 + 40))(v14);
    }

    if (!v4)
    {
      goto LABEL_19;
    }
  }

  result = (*(*v4 + 8))(v4);
LABEL_19:
  if (v3)
  {
    result = (*(*v3 + 8))(v3);
  }

  if (v1)
  {
    if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
    {
      return MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
    }
  }

  return result;
}

uint64_t *webrtc::SdpOfferAnswerHandler::RemoteDescriptionOperation::RemoteDescriptionOperation(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = *a3;
  *a3 = 0;
  *a1 = a2;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = 0;
  a1[3] = v7;
  v8 = *(a5 + 24);
  if (v8)
  {
    if (v8 == a5)
    {
      a1[7] = (a1 + 4);
      (*(**(a5 + 24) + 24))(*(a5 + 24));
      a2 = *a1;
    }

    else
    {
      a1[7] = v8;
      *(a5 + 24) = 0;
    }
  }

  else
  {
    a1[7] = 0;
  }

  a1[14] = 0;
  *(a1 + 16) = 0;
  *(a1 + 102) = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = 0;
  *(a1 + 93) = 0;
  a1[15] = 0;
  a1[13] = (a1 + 14);
  *(a1 + 132) = (*(**(a2 + 8) + 192))(*(a2 + 8));
  v9 = a1[1];
  if (!v9)
  {
    *(a1 + 32) = -1;
    operator new();
  }

  *(a1 + 32) = (*(*v9 + 56))(v9);
  return a1;
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetRemoteDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetRemoteDescriptionObserverInterface>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetRemoteDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetRemoteDescriptionObserverInterface>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 5;
  v3 = a1[8];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
LABEL_5:
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[4];
    a1[4] = 0;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  JUMPOUT(0x2743DA540);
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::SetRemoteDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetRemoteDescriptionObserverInterface>)::$_1>::Run(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  v3 = a1[3];
  v4 = a1[4];
  a1[3] = 0;
  a1[4] = 0;
  v5 = a1[8];
  if (!v5)
  {
    v10 = 0;
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (v5 == a1 + 5)
  {
    v10 = v9;
    (*(*v5 + 24))(v5, v9);
    if (!v3)
    {
      goto LABEL_14;
    }

LABEL_6:
    if (v1)
    {
      if (*v1 == 1 && v2 != 0)
      {
        operator new();
      }
    }

    v11 = 10;
    operator new();
  }

  v10 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (!v10)
  {
    v8 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_0>(v8);
  }

  (*(*v10 + 48))(v10);
  result = v10;
  if (v10 != v9)
  {
    if (v10)
    {
      result = (*(*v10 + 40))(v10);
    }

    if (!v4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  result = (*(*v10 + 32))(v10);
  if (v4)
  {
LABEL_19:
    result = (*(*v4 + 8))(v4);
  }

LABEL_20:
  if (v1)
  {
    if (atomic_fetch_add((v1 + 4), 0xFFFFFFFF) == 1)
    {
      return MEMORY[0x2743DA540](v1, 0x1000C404A09149ALL);
    }
  }

  return result;
}

void *webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::DoSetLocalDescription(std::unique_ptr<webrtc::SessionDescriptionInterface>,webrtc::scoped_refptr<webrtc::SetLocalDescriptionObserverInterface>)::$_0>(uint64_t a1)
{
  result = (*(**(*a1 + 8) + 128))(*(*a1 + 8));
  v2 = result;
  v3 = result[29];
  v4 = result[30];
  while (v4 != v3)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = (*(*result + 8))(result);
    }
  }

  v2[30] = v3;
  return result;
}

BOOL webrtc::RefCountedObject<webrtc::CreateDescriptionObserverWrapperWithCreationCallback>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::CreateDescriptionObserverWrapperWithCreationCallback>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F718;
  v2 = a1[5];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3 == a1 + 1)
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

void webrtc::RefCountedObject<webrtc::CreateDescriptionObserverWrapperWithCreationCallback>::~RefCountedObject(void *a1)
{
  *a1 = &unk_28829F718;
  v2 = a1[5];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3 == a1 + 1)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::CreateDescriptionObserverWrapperWithCreationCallback::OnSuccess(webrtc::CreateDescriptionObserverWrapperWithCreationCallback *this, webrtc::SessionDescriptionInterface *a2)
{
  v7 = a2;
  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v7);
    return (*(**(this + 5) + 32))(*(this + 5), a2);
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:sn200100]();
    return webrtc::CreateDescriptionObserverWrapperWithCreationCallback::OnFailure(v6);
  }
}

void webrtc::CreateDescriptionObserverWrapperWithCreationCallback::OnFailure(uint64_t a1, int *a2)
{
  v11 = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v11);
    v5 = *(a1 + 40);
    v7 = *a2;
    *__p = *(a2 + 2);
    v9 = *(a2 + 3);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    v10[0] = a2[8];
    *(v10 + 3) = *(a2 + 35);
    (*(*v5 + 40))(v5, &v7);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:sn200100]();
    webrtc::RefCountedObject<webrtc::CreateDescriptionObserverWrapperWithCreationCallback>::HasOneRef(v6);
  }
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::DoCreateOffer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::DoCreateOffer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1>,void ()(webrtc::SessionDescriptionInterface const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F6D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::DoCreateOffer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::DoCreateOffer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1>,void ()(webrtc::SessionDescriptionInterface const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    (*(**a2 + 16))(&v6);
    v3 = v6;
    v6 = 0;
    result = *(v2 + 64);
    *(v2 + 64) = v3;
    if (result)
    {
      (*(*result + 8))(result);
      result = v6;
      v6 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    result = *(v2 + 64);
    *(v2 + 64) = 0;
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::CreateAnswer(webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 7;
  v3 = a1[10];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
LABEL_5:
    (*(*v4 + 8))(v4);
  }

LABEL_6:
  v5 = a1[1];
  if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::CreateAnswer(webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 7;
  v3 = a1[10];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[3];
    if (!v4)
    {
LABEL_6:
      v5 = a1[1];
      if (v5 && atomic_fetch_add((v5 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540]();
      }

      JUMPOUT(0x2743DA540);
    }
  }

  (*(*v4 + 8))(v4);
  goto LABEL_6;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::CreateAnswer(webrtc::CreateSessionDescriptionObserver *,webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&)::$_1>::Run(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  a1[1] = 0;
  a1[3] = 0;
  v3 = a1[10];
  if (v3)
  {
    if (v3 == a1 + 7)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
      if (!v1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = a1[10];
      a1[10] = 0;
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  if (*v1 == 1 && v2 != 0)
  {
    operator new();
  }

LABEL_13:
  operator new();
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::DoCreateAnswer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::DoCreateAnswer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1>,void ()(webrtc::SessionDescriptionInterface const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28829F780;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<webrtc::SdpOfferAnswerHandler::DoCreateAnswer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1,std::allocator<webrtc::SdpOfferAnswerHandler::DoCreateAnswer(webrtc::PeerConnectionInterface::RTCOfferAnswerOptions const&,webrtc::scoped_refptr<webrtc::CreateSessionDescriptionObserver>)::$_1>,void ()(webrtc::SessionDescriptionInterface const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    (*(**a2 + 16))(&v6);
    v3 = v6;
    v6 = 0;
    result = *(v2 + 72);
    *(v2 + 72) = v3;
    if (result)
    {
      (*(*result + 8))(result);
      result = v6;
      v6 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    result = *(v2 + 72);
    *(v2 + 72) = 0;
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void *webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::SetRemoteDescriptionPostProcess(BOOL)::$_0>(uint64_t a1)
{
  result = (*(**(*a1 + 8) + 128))(*(*a1 + 8));
  v2 = result;
  v3 = result[29];
  v4 = result[30];
  while (v4 != v3)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = (*(*result + 8))(result);
    }
  }

  v2[30] = v3;
  return result;
}

void *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 8;
  v3 = a1[11];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[7];
    if (v4 != a1 + 4)
    {
      goto LABEL_5;
    }

LABEL_14:
    (*(*v4 + 32))(v4);
    v5 = a1[3];
    a1[3] = 0;
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[7];
  if (v4 == a1 + 4)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
LABEL_8:
    (*(*v5 + 8))(v5);
  }

LABEL_9:
  v6 = a1[1];
  if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  return a1;
}

void webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_1>::~OperationWithFunctor(void *a1)
{
  v2 = a1 + 8;
  v3 = a1[11];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[7];
    if (v4 != a1 + 4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[7];
    if (v4 != a1 + 4)
    {
LABEL_5:
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = a1[3];
      a1[3] = 0;
      if (!v5)
      {
LABEL_9:
        v6 = a1[1];
        if (v6 && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
        {
          MEMORY[0x2743DA540]();
        }

        JUMPOUT(0x2743DA540);
      }

LABEL_8:
      (*(*v5 + 8))(v5);
      goto LABEL_9;
    }
  }

  (*(*v4 + 32))(v4);
  v5 = a1[3];
  a1[3] = 0;
  if (!v5)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

webrtc::SdpOfferAnswerHandler *webrtc::rtc_operations_chain_internal::OperationWithFunctor<webrtc::SdpOfferAnswerHandler::AddIceCandidate(std::unique_ptr<webrtc::IceCandidateInterface>,std::function<void ()(webrtc::RTCError)>)::$_1>::Run(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  *v21 = v1;
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  v22 = v2;
  v3 = *(a1 + 56);
  if (!v3)
  {
    v24 = 0;
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if (v3 == a1 + 32)
  {
    v24 = v23;
    v6 = a1;
    (*(*v3 + 24))(v3, v23);
    a1 = v6;
    v4 = *(v6 + 88);
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_4:
    if (v4 == (a1 + 64))
    {
      v20 = v19;
      (*(*v4 + 24))(v4, v19);
      v5 = v21[0];
      if (!v21[0])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = v4;
      *(a1 + 88) = 0;
      v5 = v21[0];
      if (!v21[0])
      {
        goto LABEL_18;
      }
    }

    goto LABEL_13;
  }

  v24 = *(a1 + 56);
  *(a1 + 56) = 0;
  v4 = *(a1 + 88);
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_8:
  v20 = 0;
  v5 = v21[0];
  if (!v21[0])
  {
    goto LABEL_18;
  }

LABEL_13:
  if (*v5 != 1 || v21[1] == 0)
  {
LABEL_18:
    v8 = 1;
    v9 = v20;
    if (!v20)
    {
      goto LABEL_49;
    }

    goto LABEL_21;
  }

  v10 = webrtc::SdpOfferAnswerHandler::AddIceCandidateInternal(v21[1], v22);
  v8 = v10;
  v9 = v20;
  if (!v20)
  {
LABEL_49:
    std::__throw_bad_function_call[abi:sn200100]();
  }

LABEL_21:
  (*(*v9 + 48))(v9);
  if (v8 > 3)
  {
    if ((v8 - 6) >= 2 && v8 != 4)
    {
      goto LABEL_27;
    }

LABEL_30:
    v15 = 1;
    operator new();
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v15 = 6;
      operator new();
    }

    goto LABEL_30;
  }

  if (v8)
  {
    v15 = 6;
    operator new();
  }

LABEL_27:
  v15 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  if (!v24)
  {
    goto LABEL_49;
  }

  (*(*v24 + 48))(v24, &v15);
  if ((v17[15] & 0x80000000) == 0)
  {
    v11 = v20;
    if (v20 != v19)
    {
      goto LABEL_34;
    }

LABEL_46:
    (*(*v11 + 32))(v11);
    v12 = v24;
    if (v24 != v23)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

  operator delete(v16);
  v11 = v20;
  if (v20 == v19)
  {
    goto LABEL_46;
  }

LABEL_34:
  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  v12 = v24;
  if (v24 != v23)
  {
LABEL_37:
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    v13 = v22;
    v22 = 0;
    if (v13)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

LABEL_47:
  (*(*v12 + 32))(v12);
  v13 = v22;
  v22 = 0;
  if (v13)
  {
LABEL_40:
    (*(*v13 + 8))(v13);
  }

LABEL_41:
  result = v21[0];
  if (v21[0])
  {
    if (atomic_fetch_add(v21[0] + 1, 0xFFFFFFFF) == 1)
    {
      return MEMORY[0x2743DA540]();
    }
  }

  return result;
}

void webrtc::FunctionView<void ()(void)>::CallVoidPtr<webrtc::SdpOfferAnswerHandler::AllocateSctpSids(void)::$_0>(uint64_t a1)
{
  v2 = (*(**(*(a1 + 8) + 8) + 152))(*(*(a1 + 8) + 8));
  LODWORD(v3) = v2;
  if ((v2 & 0x100000000) != 0 || (v4 = *(a1 + 16), v3 = *v4, ((v3 | (*(v4 + 4) << 32)) & 0x100000000) != 0))
  {
    v5 = *a1;

    webrtc::DataChannelController::AllocateSctpSids(v5, v3);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, __n128 *a2, const void **a3, int a4, __n128 result)
{
  v262 = *MEMORY[0x277D85DE8];
LABEL_2:
  v9 = &a2[-2].n128_u64[1];
  i = a1;
LABEL_3:
  v252 = a4;
  while (1)
  {
    a1 = i;
    v11 = a2 - i;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 3);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), v9).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = std::__sort4[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), v9).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 24, a1 + 48, (a1 + 72), v9).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v101 = a2[-2].n128_u64[1];
        a2 = (a2 - 24);
        v100 = v101;
        v102 = a2[1].n128_i8[7];
        if (v102 >= 0)
        {
          v103 = a2;
        }

        else
        {
          v103 = v100;
        }

        if (v102 >= 0)
        {
          a3 = a2[1].n128_u8[7];
        }

        else
        {
          a3 = a2->n128_u64[1];
        }

        v104 = *(a1 + 23);
        if (v104 >= 0)
        {
          v105 = a1;
        }

        else
        {
          v105 = *a1;
        }

        if (v104 >= 0)
        {
          v13 = *(a1 + 23);
        }

        else
        {
          v13 = *(a1 + 8);
        }

        if (v13 >= a3)
        {
          v106 = a3;
        }

        else
        {
          v106 = v13;
        }

        v107 = memcmp(v103, v105, v106);
        if (!v107)
        {
          goto LABEL_534;
        }

        if (v107 < 0)
        {
          goto LABEL_535;
        }

        return result;
      }
    }

    if (v11 <= 575)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return result;
        }

        v108 = (a1 + 24);
        if ((a1 + 24) == a2)
        {
          return result;
        }

        v109 = 0;
        v110 = a1;
        while (1)
        {
          v157 = v110;
          v110 = v108;
          v158 = v157[2].n128_i8[15];
          if (v158 >= 0)
          {
            v159 = v108;
          }

          else
          {
            v159 = v157[1].n128_u64[1];
          }

          if (v158 >= 0)
          {
            v160 = v157[2].n128_u8[15];
          }

          else
          {
            v160 = v157[2].n128_u64[0];
          }

          v161 = v157[1].n128_i8[7];
          if (v161 >= 0)
          {
            v162 = v157;
          }

          else
          {
            v162 = v157->n128_u64[0];
          }

          if (v161 >= 0)
          {
            v163 = v157[1].n128_u8[7];
          }

          else
          {
            v163 = v157->n128_u64[1];
          }

          if (v163 >= v160)
          {
            v164 = v160;
          }

          else
          {
            v164 = v163;
          }

          v165 = memcmp(v159, v162, v164);
          if (v165)
          {
            if ((v165 & 0x80000000) == 0)
            {
              goto LABEL_372;
            }
          }

          else if (v160 >= v163)
          {
            goto LABEL_372;
          }

          v166 = *v110;
          v259 = v110[1].n128_i64[0];
          v258 = v166;
          if (v259 >= 0)
          {
            v167 = &v258;
          }

          else
          {
            v167 = v166.n128_u64[0];
          }

          if (v259 >= 0)
          {
            v168 = HIBYTE(v259);
          }

          else
          {
            v168 = v166.n128_u64[1];
          }

          v110[1].n128_u64[0] = v157[1].n128_u64[0];
          *v110 = *v157;
          v157[1].n128_u8[7] = 0;
          v157->n128_u8[0] = 0;
          v156 = a1;
          if (v157 == a1)
          {
            goto LABEL_371;
          }

          __s2b = v110;
          v169 = v109;
          while (1)
          {
            v170 = a1 + v169;
            v171 = *(a1 + v169 - 1);
            v172 = v171 >= 0 ? (a1 + v169 - 24) : *(a1 + v169 - 24);
            v173 = v171 >= 0 ? *(a1 + v169 - 1) : *(a1 + v169 - 16);
            v174 = v173 >= v168 ? v168 : v173;
            v175 = memcmp(v167, v172, v174);
            if (!v175)
            {
              break;
            }

            if ((v175 & 0x80000000) == 0)
            {
              v156 = (a1 + v169);
              goto LABEL_370;
            }

LABEL_401:
            v157 = (v157 - 24);
            *v170 = *(a1 + v169 - 24);
            *(v170 + 16) = *(a1 + v169 - 8);
            *(v170 - 1) = 0;
            *(v170 - 24) = 0;
            v169 -= 24;
            if (!v169)
            {
              v156 = a1;
              goto LABEL_370;
            }
          }

          if (v168 < v173)
          {
            goto LABEL_401;
          }

          v156 = v157;
LABEL_370:
          v110 = __s2b;
LABEL_371:
          result = v258;
          v156[1].n128_u64[0] = v259;
          *v156 = result;
LABEL_372:
          v108 = (v110 + 24);
          v109 += 24;
          if (&v110[1].n128_i8[8] == a2)
          {
            return result;
          }
        }
      }

      if (a1 == a2)
      {
        return result;
      }

      v221 = (a1 + 24);
      if ((a1 + 24) == a2)
      {
        return result;
      }

      v222 = 0;
      v223 = 24;
      a3 = &v258;
LABEL_493:
      v225 = v222;
      v222 = v223;
      v226 = (a1 + v225);
      v227 = *(a1 + v225 + 47);
      if (v227 >= 0)
      {
        v228 = v221;
      }

      else
      {
        v228 = *v221;
      }

      if (v227 >= 0)
      {
        v229 = *(a1 + v225 + 47);
      }

      else
      {
        v229 = *(a1 + v225 + 32);
      }

      v230 = *(v226 + 23);
      if (v230 >= 0)
      {
        v231 = (a1 + v225);
      }

      else
      {
        v231 = *v226;
      }

      if (v230 >= 0)
      {
        v232 = *(v226 + 23);
      }

      else
      {
        v232 = *(v226 + 1);
      }

      if (v232 >= v229)
      {
        v233 = v229;
      }

      else
      {
        v233 = v232;
      }

      v234 = memcmp(v228, v231, v233);
      if (v234)
      {
        if ((v234 & 0x80000000) == 0)
        {
          goto LABEL_492;
        }
      }

      else if (v229 >= v232)
      {
        goto LABEL_492;
      }

      v235 = *v221;
      v259 = v221[2];
      v258 = v235;
      v221[1] = 0;
      v221[2] = 0;
      *v221 = 0;
      if (v259 >= 0)
      {
        v13 = &v258;
      }

      else
      {
        v13 = v258.n128_u64[0];
      }

      if (v259 >= 0)
      {
        v236 = HIBYTE(v259);
      }

      else
      {
        v236 = v258.n128_u64[1];
      }

      v237 = *v226;
      v221[2] = *(v226 + 2);
      *v221 = v237;
      *(v226 + 23) = 0;
      *v226 = 0;
      while (1)
      {
        v238 = (a1 + v225);
        v239 = (a1 + v225 - 24);
        v240 = *(a1 + v225 - 1);
        if (v240 >= 0)
        {
          v241 = (a1 + v225 - 24);
        }

        else
        {
          v241 = *(a1 + v225 - 24);
        }

        if (v240 >= 0)
        {
          v242 = *(a1 + v225 - 1);
        }

        else
        {
          v242 = *(a1 + v225 - 16);
        }

        if (v242 >= v236)
        {
          v243 = v236;
        }

        else
        {
          v243 = v242;
        }

        v244 = memcmp(v13, v241, v243);
        if (v244)
        {
          if ((v244 & 0x80000000) == 0)
          {
LABEL_491:
            v224 = (a1 + v225);
            result = v258;
            v224[1].n128_u64[0] = v259;
            *v224 = result;
LABEL_492:
            v223 = v222 + 24;
            v221 = (a1 + v222 + 24);
            if (v221 == a2)
            {
              return result;
            }

            goto LABEL_493;
          }
        }

        else if (v236 >= v242)
        {
          goto LABEL_491;
        }

        v225 -= 24;
        result = *v239;
        *v238 = *v239;
        v238[1].n128_u64[0] = v239[1].n128_u64[0];
        v238[-1].n128_u8[15] = 0;
        v238[-2].n128_u8[8] = 0;
        if (v225 == -24)
        {
          goto LABEL_533;
        }
      }
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return result;
      }

      v247 = v12;
      v248 = v11;
      v111 = (v12 - 2) >> 1;
      v112 = v111;
      v253 = v111;
      while (1)
      {
        v114 = v112;
        if (v111 < v112)
        {
          goto LABEL_286;
        }

        v115 = (2 * v112) | 1;
        v116 = a1 + 24 * v115;
        v117 = 2 * v112 + 2;
        if (v117 >= v12)
        {
          goto LABEL_306;
        }

        v118 = (v116 + 24);
        v119 = *(v116 + 23);
        v120 = v119 >= 0 ? (a1 + 24 * v115) : *v116;
        v121 = v119 >= 0 ? *(v116 + 23) : *(v116 + 8);
        v122 = *(v116 + 47);
        v123 = v122 >= 0 ? (v116 + 24) : *(v116 + 24);
        v124 = v122 >= 0 ? *(v116 + 47) : *(v116 + 32);
        v125 = v124 >= v121 ? v121 : v124;
        v126 = memcmp(v120, v123, v125);
        if (v126)
        {
          break;
        }

        v61 = v121 >= v124;
        v111 = v253;
        if (v61)
        {
          goto LABEL_306;
        }

LABEL_307:
        v127 = a1 + 24 * v114;
        v128 = v118[1].n128_i8[7];
        if (v128 >= 0)
        {
          v129 = v118;
        }

        else
        {
          v129 = v118->n128_u64[0];
        }

        if (v128 >= 0)
        {
          v130 = v118[1].n128_u8[7];
        }

        else
        {
          v130 = v118->n128_u64[1];
        }

        v131 = *(v127 + 23);
        if (v131 >= 0)
        {
          v132 = (a1 + 24 * v114);
        }

        else
        {
          v132 = *v127;
        }

        if (v131 >= 0)
        {
          v133 = *(v127 + 23);
        }

        else
        {
          v133 = *(v127 + 8);
        }

        if (v133 >= v130)
        {
          v134 = v130;
        }

        else
        {
          v134 = v133;
        }

        v135 = memcmp(v129, v132, v134);
        if (v135)
        {
          if ((v135 & 0x80000000) == 0)
          {
            goto LABEL_326;
          }
        }

        else if (v130 >= v133)
        {
LABEL_326:
          v250 = v114;
          v136 = *v127;
          v259 = *(v127 + 16);
          v258 = v136;
          *(v127 + 8) = 0;
          *(v127 + 16) = 0;
          *v127 = 0;
          v137 = *v118;
          *(v127 + 16) = v118[1].n128_u64[0];
          *v127 = v137;
          v118[1].n128_u8[7] = 0;
          v118->n128_u8[0] = 0;
          if (v111 < v117)
          {
LABEL_284:
            v113 = v118;
LABEL_285:
            result = v258;
            v113[1].n128_u64[0] = v259;
            *v113 = result;
            v114 = v250;
            goto LABEL_286;
          }

          v138 = &v258;
          if (v259 < 0)
          {
            v138 = v258.n128_u64[0];
          }

          __s2a = v138;
          if (v259 >= 0)
          {
            v139 = HIBYTE(v259);
          }

          else
          {
            v139 = v258.n128_u64[1];
          }

          while (2)
          {
            v141 = (2 * v117) | 1;
            v142 = a1 + 24 * v141;
            v117 = 2 * v117 + 2;
            if (v117 < v12)
            {
              v113 = (v142 + 24);
              v143 = *(v142 + 23);
              if (v143 >= 0)
              {
                v144 = (a1 + 24 * v141);
              }

              else
              {
                v144 = *v142;
              }

              if (v143 >= 0)
              {
                v145 = *(v142 + 23);
              }

              else
              {
                v145 = *(v142 + 8);
              }

              v146 = *(v142 + 47);
              if (v146 >= 0)
              {
                v147 = (v142 + 24);
              }

              else
              {
                v147 = *(v142 + 24);
              }

              if (v146 >= 0)
              {
                v148 = *(v142 + 47);
              }

              else
              {
                v148 = *(v142 + 32);
              }

              if (v148 >= v145)
              {
                v149 = v145;
              }

              else
              {
                v149 = v148;
              }

              v150 = memcmp(v144, v147, v149);
              if (v150)
              {
                v12 = v247;
                v111 = v253;
                if ((v150 & 0x80000000) == 0)
                {
                  break;
                }

LABEL_353:
                v151 = v113[1].n128_i8[7];
                if (v151 >= 0)
                {
                  v152 = v113;
                }

                else
                {
                  v152 = v113->n128_u64[0];
                }

                if (v151 >= 0)
                {
                  v153 = v113[1].n128_u8[7];
                }

                else
                {
                  v153 = v113->n128_u64[1];
                }

                if (v139 >= v153)
                {
                  v154 = v153;
                }

                else
                {
                  v154 = v139;
                }

                v155 = memcmp(v152, __s2a, v154);
                if (v155)
                {
                  if (v155 < 0)
                  {
                    goto LABEL_284;
                  }
                }

                else if (v153 < v139)
                {
                  goto LABEL_284;
                }

                v140 = *v113;
                v118[1].n128_u64[0] = v113[1].n128_u64[0];
                *v118 = v140;
                v113[1].n128_u8[7] = 0;
                v113->n128_u8[0] = 0;
                v118 = v113;
                if (v111 < v117)
                {
                  goto LABEL_285;
                }

                continue;
              }

              v61 = v145 >= v148;
              v12 = v247;
              v111 = v253;
              if (!v61)
              {
                goto LABEL_353;
              }
            }

            break;
          }

          v113 = (a1 + 24 * v141);
          v117 = v141;
          goto LABEL_353;
        }

LABEL_286:
        v112 = v114 - 1;
        if (!v114)
        {
          v176 = 0xAAAAAAAAAAAAAAABLL * (v248 >> 3);
          while (1)
          {
            if (v176 == 1)
            {
              return result;
            }

            v254 = a2;
            v179 = 0;
            v249 = *a1;
            v260.n128_u64[0] = *(a1 + 8);
            *(v260.n128_u64 + 7) = *(a1 + 15);
            v251 = *(a1 + 23);
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v180 = a1;
            do
            {
              v181 = v180;
              v182 = v180 + 24 * v179;
              v180 = v182 + 24;
              v183 = 2 * v179;
              v179 = (2 * v179) | 1;
              v184 = v183 + 2;
              if (v183 + 2 < v176)
              {
                v187 = *(v182 + 48);
                v186 = v182 + 48;
                v185 = v187;
                v188 = *(v186 - 1);
                if (v188 >= 0)
                {
                  v189 = v180;
                }

                else
                {
                  v189 = *(v186 - 24);
                }

                if (v188 >= 0)
                {
                  v190 = *(v186 - 1);
                }

                else
                {
                  v190 = *(v186 - 16);
                }

                v191 = *(v186 + 23);
                if (v191 >= 0)
                {
                  v192 = v186;
                }

                else
                {
                  v192 = v185;
                }

                if (v191 >= 0)
                {
                  v193 = *(v186 + 23);
                }

                else
                {
                  v193 = *(v186 + 8);
                }

                if (v193 >= v190)
                {
                  v194 = v190;
                }

                else
                {
                  v194 = v193;
                }

                v195 = memcmp(v189, v192, v194);
                if (v195)
                {
                  if (v195 < 0)
                  {
                    goto LABEL_421;
                  }
                }

                else if (v190 < v193)
                {
LABEL_421:
                  v180 = v186;
                  v179 = v184;
                }
              }

              result = *v180;
              v181[1].n128_u64[0] = *(v180 + 16);
              *v181 = result;
              *(v180 + 23) = 0;
              *v180 = 0;
            }

            while (v179 <= ((v176 - 2) >> 1));
            a2 = (v254 - 24);
            if (v180 == &v254[-2].n128_i8[8])
            {
              *v180 = v249;
              v177 = *(v260.n128_i64 + 7);
              *(v180 + 8) = v260.n128_u64[0];
              *(v180 + 15) = v177;
              *(v180 + 23) = v251;
            }

            else
            {
              result = *a2;
              *(v180 + 16) = v254[-1].n128_u64[1];
              *v180 = result;
              v254[-2].n128_u64[1] = v249;
              v196 = v260.n128_u64[0];
              *(v254[-1].n128_u64 + 7) = *(v260.n128_u64 + 7);
              v254[-1].n128_u64[0] = v196;
              v254[-1].n128_u8[15] = v251;
              v197 = v180 - a1 + 24;
              if (v197 >= 25)
              {
                v198 = -2 - 0x5555555555555555 * (v197 >> 3);
                v199 = v198 >> 1;
                v200 = a1 + 24 * (v198 >> 1);
                v201 = *(v200 + 23);
                if (v201 >= 0)
                {
                  v202 = (a1 + 24 * (v198 >> 1));
                }

                else
                {
                  v202 = *v200;
                }

                if (v201 >= 0)
                {
                  v203 = *(v200 + 23);
                }

                else
                {
                  v203 = *(v200 + 8);
                }

                v204 = *(v180 + 23);
                if (v204 >= 0)
                {
                  v205 = v180;
                }

                else
                {
                  v205 = *v180;
                }

                if (v204 >= 0)
                {
                  v206 = *(v180 + 23);
                }

                else
                {
                  v206 = *(v180 + 8);
                }

                if (v206 >= v203)
                {
                  v207 = v203;
                }

                else
                {
                  v207 = v206;
                }

                v208 = memcmp(v202, v205, v207);
                if (v208)
                {
                  if (v208 < 0)
                  {
LABEL_465:
                    v209 = *v180;
                    v259 = *(v180 + 16);
                    v258 = v209;
                    *(v180 + 8) = 0;
                    *(v180 + 16) = 0;
                    *v180 = 0;
                    if (v259 >= 0)
                    {
                      v210 = &v258;
                    }

                    else
                    {
                      v210 = v258.n128_u64[0];
                    }

                    if (v259 >= 0)
                    {
                      v211 = HIBYTE(v259);
                    }

                    else
                    {
                      v211 = v258.n128_u64[1];
                    }

                    v212 = *v200;
                    *(v180 + 16) = *(v200 + 16);
                    *v180 = v212;
                    *(v200 + 23) = 0;
                    *v200 = 0;
                    if (v198 >= 2)
                    {
                      while (1)
                      {
                        v214 = v199 - 1;
                        v199 = (v199 - 1) >> 1;
                        v215 = a1 + 24 * v199;
                        v216 = *(v215 + 23);
                        if (v216 >= 0)
                        {
                          v217 = (a1 + 24 * v199);
                        }

                        else
                        {
                          v217 = *v215;
                        }

                        if (v216 >= 0)
                        {
                          v218 = *(v215 + 23);
                        }

                        else
                        {
                          v218 = *(v215 + 8);
                        }

                        if (v211 >= v218)
                        {
                          v219 = v218;
                        }

                        else
                        {
                          v219 = v211;
                        }

                        v220 = memcmp(v217, v210, v219);
                        if (v220)
                        {
                          if ((v220 & 0x80000000) == 0)
                          {
                            break;
                          }
                        }

                        else if (v218 >= v211)
                        {
                          break;
                        }

                        v213 = *v215;
                        *(v200 + 16) = *(v215 + 16);
                        *v200 = v213;
                        *(v215 + 23) = 0;
                        *v215 = 0;
                        v200 = a1 + 24 * v199;
                        if (v214 <= 1)
                        {
                          goto LABEL_487;
                        }
                      }
                    }

                    v215 = v200;
LABEL_487:
                    result = v258;
                    *(v215 + 16) = v259;
                    *v215 = result;
                  }
                }

                else if (v203 < v206)
                {
                  goto LABEL_465;
                }
              }
            }

            if (v176-- <= 2)
            {
              return result;
            }
          }
        }
      }

      v111 = v253;
      if (v126 < 0)
      {
        goto LABEL_307;
      }

LABEL_306:
      v118 = (a1 + 24 * v115);
      v117 = (2 * v114) | 1;
      goto LABEL_307;
    }

    v13 = v12 >> 1;
    v14 = a1 + 24 * (v12 >> 1);
    if (v11 < 0xC01)
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v14, a1, v9);
      a3 = (a3 - 1);
      if (a4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, v14, v9);
      v13 *= 24;
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>((a1 + 24), (v13 + a1 - 24), &a2[-3]);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>((a1 + 48), (a1 + 24 + v13), &a2[-5].n128_u64[1]);
      std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>((v13 + a1 - 24), v14, (a1 + 24 + v13));
      v15 = *a1;
      v259 = *(a1 + 16);
      v258 = v15;
      v16 = *(v14 + 16);
      *a1 = *v14;
      *(a1 + 16) = v16;
      v17 = v258;
      *(v14 + 16) = v259;
      *v14 = v17;
      a3 = (a3 - 1);
      if (a4)
      {
        goto LABEL_36;
      }
    }

    v18 = *(a1 - 1);
    if (v18 >= 0)
    {
      v19 = (a1 - 24);
    }

    else
    {
      v19 = *(a1 - 24);
    }

    if (v18 >= 0)
    {
      v13 = *(a1 - 1);
    }

    else
    {
      v13 = *(a1 - 16);
    }

    v20 = *(a1 + 23);
    if (v20 >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    if (v20 >= 0)
    {
      v22 = *(a1 + 23);
    }

    else
    {
      v22 = *(a1 + 8);
    }

    if (v22 >= v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v19, v21, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_36;
    }

    if (v13 >= v22)
    {
LABEL_140:
      v63 = *a1;
      v261 = *(a1 + 16);
      v260 = v63;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if (v261 >= 0)
      {
        v64 = &v260;
      }

      else
      {
        v64 = v260.n128_u64[0];
      }

      if (v261 >= 0)
      {
        v65 = HIBYTE(v261);
      }

      else
      {
        v65 = v260.n128_u64[1];
      }

      v66 = a2[-1].n128_i8[15];
      if (v66 >= 0)
      {
        v67 = v9;
      }

      else
      {
        v67 = a2[-2].n128_u64[1];
      }

      if (v66 >= 0)
      {
        v13 = a2[-1].n128_u8[15];
      }

      else
      {
        v13 = a2[-1].n128_u64[0];
      }

      if (v13 >= v65)
      {
        v68 = v65;
      }

      else
      {
        v68 = v13;
      }

      v69 = memcmp(v64, v67, v68);
      if (v69)
      {
        if (v69 < 0)
        {
          goto LABEL_174;
        }
      }

      else if (v65 < v13)
      {
LABEL_174:
        for (i = a1 + 24; ; i += 24)
        {
          if (i == a2)
          {
            goto LABEL_533;
          }

          v75 = *(i + 23);
          if (v75 >= 0)
          {
            v76 = i;
          }

          else
          {
            v76 = *i;
          }

          if (v75 >= 0)
          {
            v13 = *(i + 23);
          }

          else
          {
            v13 = *(i + 8);
          }

          if (v13 >= v65)
          {
            v77 = v65;
          }

          else
          {
            v77 = v13;
          }

          v78 = memcmp(v64, v76, v77);
          if (v78)
          {
            if (v78 < 0)
            {
              goto LABEL_189;
            }
          }

          else if (v65 < v13)
          {
            goto LABEL_189;
          }
        }
      }

      for (i = a1 + 24; i < a2; i += 24)
      {
        v70 = *(i + 23);
        if (v70 >= 0)
        {
          v71 = i;
        }

        else
        {
          v71 = *i;
        }

        if (v70 >= 0)
        {
          v72 = *(i + 23);
        }

        else
        {
          v72 = *(i + 8);
        }

        if (v72 >= v65)
        {
          v73 = v65;
        }

        else
        {
          v73 = v72;
        }

        v74 = memcmp(v64, v71, v73);
        if (v74)
        {
          if (v74 < 0)
          {
            break;
          }
        }

        else if (v65 < v72)
        {
          break;
        }
      }

LABEL_189:
      v13 = a2;
      if (i < a2)
      {
        v13 = v9;
        if (a2 == a1)
        {
          goto LABEL_533;
        }

        while (1)
        {
          v79 = *(v13 + 23);
          if (v79 >= 0)
          {
            v80 = v13;
          }

          else
          {
            v80 = *v13;
          }

          if (v79 >= 0)
          {
            v81 = *(v13 + 23);
          }

          else
          {
            v81 = *(v13 + 8);
          }

          if (v81 >= v65)
          {
            v82 = v65;
          }

          else
          {
            v82 = v81;
          }

          v83 = memcmp(v64, v80, v82);
          if (v83)
          {
            if ((v83 & 0x80000000) == 0)
            {
              break;
            }
          }

          else if (v65 >= v81)
          {
            break;
          }

          v13 -= 24;
          if (v13 + 24 == a1)
          {
            goto LABEL_533;
          }
        }
      }

LABEL_241:
      if (i < v13)
      {
        v84 = *i;
        v259 = *(i + 16);
        v258 = v84;
        v85 = *v13;
        *(i + 16) = *(v13 + 16);
        *i = v85;
        i += 24;
        result = v258;
        *(v13 + 16) = v259;
        *v13 = result;
        if (i == a2)
        {
          goto LABEL_533;
        }

        if (v261 >= 0)
        {
          v86 = &v260;
        }

        else
        {
          v86 = v260.n128_u64[0];
        }

        if (v261 >= 0)
        {
          v87 = HIBYTE(v261);
        }

        else
        {
          v87 = v260.n128_u64[1];
        }

        while (1)
        {
          v88 = *(i + 23);
          if (v88 >= 0)
          {
            v89 = i;
          }

          else
          {
            v89 = *i;
          }

          if (v88 >= 0)
          {
            v90 = *(i + 23);
          }

          else
          {
            v90 = *(i + 8);
          }

          if (v90 >= v87)
          {
            v91 = v87;
          }

          else
          {
            v91 = v90;
          }

          v92 = memcmp(v86, v89, v91);
          if (v92)
          {
            if (v92 < 0)
            {
LABEL_226:
              if (v13 == a1)
              {
                goto LABEL_533;
              }

              v13 -= 24;
              while (1)
              {
                v93 = *(v13 + 23);
                if (v93 >= 0)
                {
                  v94 = v13;
                }

                else
                {
                  v94 = *v13;
                }

                if (v93 >= 0)
                {
                  v95 = *(v13 + 23);
                }

                else
                {
                  v95 = *(v13 + 8);
                }

                if (v95 >= v87)
                {
                  v96 = v87;
                }

                else
                {
                  v96 = v95;
                }

                v97 = memcmp(v86, v94, v96);
                if (v97)
                {
                  if ((v97 & 0x80000000) == 0)
                  {
                    goto LABEL_241;
                  }
                }

                else if (v87 >= v95)
                {
                  goto LABEL_241;
                }

                v13 -= 24;
                if (v13 + 24 == a1)
                {
                  goto LABEL_533;
                }
              }
            }
          }

          else if (v87 < v90)
          {
            goto LABEL_226;
          }

          i += 24;
          if (i == a2)
          {
            goto LABEL_533;
          }
        }
      }

      v98 = (i - 24);
      if (i - 24 == a1)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*v98);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v99 = *v98;
        *(a1 + 16) = *(i - 8);
        *a1 = v99;
        *(i - 1) = 0;
        *(i - 24) = 0;
      }

      a4 = 0;
      result = v260;
      *(i - 8) = v261;
      *v98 = result;
      goto LABEL_3;
    }

LABEL_36:
    result = *a1;
    v261 = *(a1 + 16);
    v260 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    if ((a1 + 24) == a2)
    {
      goto LABEL_533;
    }

    v13 = 0;
    v25 = v261 >= 0 ? &v260 : v260.n128_u64[0];
    v26 = v261 >= 0 ? HIBYTE(v261) : v260.n128_u64[1];
    while (1)
    {
      v27 = *(a1 + v13 + 47);
      if (v27 >= 0)
      {
        v28 = (a1 + v13 + 24);
      }

      else
      {
        v28 = *(a1 + v13 + 24);
      }

      if (v27 >= 0)
      {
        v29 = *(a1 + v13 + 47);
      }

      else
      {
        v29 = *(a1 + v13 + 32);
      }

      if (v26 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v26;
      }

      v31 = memcmp(v28, v25, v30);
      if (!v31)
      {
        if (v29 >= v26)
        {
          break;
        }

        goto LABEL_44;
      }

      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

LABEL_44:
      v13 += 24;
      if ((a1 + v13 + 24) == a2)
      {
        goto LABEL_533;
      }
    }

    v32 = a1 + v13 + 24;
    if (v13)
    {
      break;
    }

    v33 = a2;
    if (v32 < a2)
    {
      v38 = v9;
      do
      {
        while (1)
        {
          v33 = v38;
          v39 = *(v38 + 23);
          v40 = v39 >= 0 ? v33 : *v33;
          v41 = v39 >= 0 ? v39 : v33[1];
          v42 = v26 >= v41 ? v41 : v26;
          v43 = memcmp(v40, v25, v42);
          v38 = v33 - 3;
          if (!v43)
          {
            break;
          }

          if (v32 >= v33 || v43 < 0)
          {
            goto LABEL_90;
          }
        }
      }

      while (v32 < v33 && v41 >= v26);
    }

LABEL_90:
    __s2 = a3;
    a3 = v9;
    i = v32;
    if (v32 < v33)
    {
      v13 = v33;
      do
      {
        v44 = *i;
        v259 = *(i + 16);
        v258 = v44;
        v45 = *v13;
        *(i + 16) = *(v13 + 16);
        *i = v45;
        i += 24;
        result = v258;
        *(v13 + 16) = v259;
        *v13 = result;
        if (i == a2)
        {
          goto LABEL_533;
        }

        if (v261 >= 0)
        {
          v46 = &v260;
        }

        else
        {
          v46 = v260.n128_u64[0];
        }

        if (v261 >= 0)
        {
          v47 = HIBYTE(v261);
        }

        else
        {
          v47 = v260.n128_u64[1];
        }

        while (1)
        {
          v48 = *(i + 23);
          v49 = v48 >= 0 ? i : *i;
          v50 = v48 >= 0 ? *(i + 23) : *(i + 8);
          v51 = v47 >= v50 ? v50 : v47;
          v52 = memcmp(v49, v46, v51);
          if (v52)
          {
            break;
          }

          if (v50 >= v47)
          {
            goto LABEL_113;
          }

LABEL_101:
          i += 24;
          if (i == a2)
          {
            goto LABEL_533;
          }
        }

        if (v52 < 0)
        {
          goto LABEL_101;
        }

LABEL_113:
        if (v13 == a1)
        {
          goto LABEL_533;
        }

        v13 -= 24;
LABEL_117:
        v53 = *(v13 + 23);
        if (v53 >= 0)
        {
          v54 = v13;
        }

        else
        {
          v54 = *v13;
        }

        if (v53 >= 0)
        {
          v55 = *(v13 + 23);
        }

        else
        {
          v55 = *(v13 + 8);
        }

        if (v47 >= v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = v47;
        }

        v57 = memcmp(v54, v46, v56);
        if (!v57)
        {
          if (v55 < v47)
          {
            continue;
          }

LABEL_116:
          v13 -= 24;
          if (v13 + 24 == a1)
          {
            goto LABEL_533;
          }

          goto LABEL_117;
        }

        if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_116;
        }
      }

      while (i < v13);
    }

    v58 = (i - 24);
    if (i - 24 == a1)
    {
      v9 = a3;
      a3 = __s2;
      if (*(i - 1) < 0)
      {
        operator delete(*a1);
      }
    }

    else
    {
      v9 = a3;
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v59 = *v58;
      *(a1 + 16) = *(i - 8);
      *a1 = v59;
      *(i - 1) = 0;
      *(i - 24) = 0;
      a3 = __s2;
    }

    v60 = v260;
    *(i - 8) = v261;
    *v58 = v60;
    v61 = v32 >= v33;
    a4 = v252;
    if (!v61)
    {
LABEL_139:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, i - 24, a3, v252 & 1);
      a4 = 0;
      goto LABEL_3;
    }

    v62 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, (i - 24));
    if (std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(i, a2))
    {
      a2 = (i - 24);
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    if (!v62)
    {
      goto LABEL_139;
    }
  }

  v33 = v9;
  if (a2 != a1)
  {
    do
    {
      v34 = *(v33 + 23);
      if (v34 >= 0)
      {
        v35 = v33;
      }

      else
      {
        v35 = *v33;
      }

      if (v34 >= 0)
      {
        v13 = *(v33 + 23);
      }

      else
      {
        v13 = v33[1];
      }

      if (v26 >= v13)
      {
        v36 = v13;
      }

      else
      {
        v36 = v26;
      }

      v37 = memcmp(v35, v25, v36);
      if (v37)
      {
        if (v37 < 0)
        {
          goto LABEL_90;
        }
      }

      else if (v13 < v26)
      {
        goto LABEL_90;
      }

      v33 -= 3;
    }

    while (v33 + 3 != a1);
  }

LABEL_533:
  __break(1u);
LABEL_534:
  if (a3 < v13)
  {
LABEL_535:
    v245 = *a1;
    v259 = *(a1 + 16);
    v258 = v245;
    v246 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = v246;
    result = v258;
    a2[1].n128_u64[0] = v259;
    *a2 = result;
  }

  return result;
}